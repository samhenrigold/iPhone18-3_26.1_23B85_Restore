unint64_t sub_1D8FDA6DC()
{
  result = qword_1ECAB87B8;
  if (!qword_1ECAB87B8)
  {
    sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB87B8);
  }

  return result;
}

id MTPodcast.showType.getter()
{
  v1 = objc_opt_self();
  v2 = [v0 showTypeInFeed];
  v3 = [v1 showTypeFromString_];

  return v3;
}

id MTPodcast.applyDefaultFollowedShowSettings(for:)(uint64_t a1)
{
  [v1 setNotifications_];
  [v1 setShowTypeSetting_];
  [v1 setHidesPlayedEpisodes_];
  [v1 setEpisodeLimit_];
  [v1 setDeletePlayedEpisodes_];

  return [v1 setAdvancedPlaybackSettings_];
}

Swift::Void __swiftcall MTPodcast.applyDefaultUnfollowedShowSettings()()
{
  v1 = objc_opt_self();
  v2 = [v0 showTypeInFeed];
  v3 = [v1 showTypeFromString_];

  [v0 applyDefaultFollowedShowSettingsFor_];
  [v0 setEpisodeLimit_];

  [v0 setNotifications_];
}

uint64_t sub_1D8FDA958(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FDA9B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

id static MTPodcast.sortDescriptor(newestToOldest:)(char a1)
{
  sub_1D917820C();
  v2 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v2 initWithKey:v3 ascending:(a1 & 1) == 0];

  return v4;
}

id sub_1D8FDAB8C(void *a1)
{
  sub_1D917820C();
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = [v1 initWithKey:v2 ascending:0];

  return v3;
}

id MTPodcast.syncType.getter()
{
  result = [v0 displayType];
  if (result)
  {
    v2 = result;
    v3 = MTDisplayTypeFromPersistentString(result);

    return (v3 == 1);
  }

  return result;
}

Swift::Int64_optional __swiftcall MTPodcast.seasonToShow(episodeToPlay:)(MTEpisode_optional *episodeToPlay)
{
  if ([v1 showTypeInFeedResolvedValue] != 2)
  {
    goto LABEL_25;
  }

  if (!episodeToPlay || (v3 = [(MTEpisode_optional *)episodeToPlay seasonNumber]) == 0)
  {
    v3 = [v1 seasonNumbers];
    if (!v3)
    {
LABEL_26:
      v4 = 1;
      goto LABEL_33;
    }

    v5 = v3;
    sub_1D8E93CA4();
    v6 = sub_1D91785FC();

    v7 = [v1 showTypeUserSetting];
    v8 = v6 >> 62;
    if (v7 == 4)
    {
      if (v8)
      {
        v3 = sub_1D917935C();
        if (v3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
LABEL_9:
          if ((v6 & 0xC000000000000001) == 0)
          {
            if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v9 = *(v6 + 32);
LABEL_19:
              v12 = v9;
LABEL_20:
              v13 = v12;

              v14 = [v13 longLongValue];

              v3 = v14;
              v4 = 0;
              goto LABEL_33;
            }

            goto LABEL_30;
          }

          v3 = 0;
          goto LABEL_28;
        }
      }

      goto LABEL_24;
    }

    if (v8)
    {
      v10 = sub_1D917935C();
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_14:
        v11 = __OFSUB__(v10, 1);
        v3 = v10 - 1;
        if (v11)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if ((v6 & 0xC000000000000001) == 0)
        {
          if ((v3 & 0x8000000000000000) == 0)
          {
            if (v3 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v9 = *(v6 + 8 * v3 + 32);
              goto LABEL_19;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_28:
        v12 = MEMORY[0x1DA72AA90](v3, v6);
        goto LABEL_20;
      }
    }

LABEL_24:

LABEL_25:
    v3 = 0;
    goto LABEL_26;
  }

  v4 = 0;
LABEL_33:
  result.value = v3;
  result.is_nil = v4;
  return result;
}

BOOL MTPodcast.shouldBeHiddenFromUpNext.getter()
{
  [v0 lastRemovedFromUpNextDate];
  result = 0;
  if (v1 != 0.0)
  {
    if (![v0 subscribed])
    {
      return 1;
    }

    [v0 latestEpisodeAvailabilityTime];
    v4 = v3;
    [v0 lastRemovedFromUpNextDate];
    if (v5 >= v4)
    {
      [v0 addedDate];
      v7 = v6;
      [v0 lastRemovedFromUpNextDate];
      if (v8 >= v7)
      {
        return 1;
      }
    }
  }

  return result;
}

unint64_t sub_1D8FDAF80()
{
  result = qword_1ECAB8860;
  if (!qword_1ECAB8860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8868, &qword_1D91A3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8860);
  }

  return result;
}

uint64_t PodcastIdentifier.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = 0x2864697575;
    }

    else
    {
      v3 = 0x284C525564656566;
    }

    v6 = v3;
    MEMORY[0x1DA7298F0](a1, a2);
  }

  else
  {
    v6 = 0x28444965726F7473;
    v4 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v4);
  }

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return v6;
}

uint64_t PodcastIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    MEMORY[0x1DA72B390](v5);

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0, a2, a3);
    return MEMORY[0x1DA72B3C0](a2);
  }
}

uint64_t PodcastIdentifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D9179DBC();
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    MEMORY[0x1DA72B390](v5);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8FDB1E8()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D9179DBC();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    MEMORY[0x1DA72B390](v3);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8FDB280(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    MEMORY[0x1DA72B390](v3);

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](v2);
  }
}

uint64_t sub_1D8FDB314(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x1DA72B390](v4);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v2);
  }

  return sub_1D9179E1C();
}

char *RemoteNonFollowedShow.prioritizedIDs.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if ([objc_opt_self() isNotEmpty_])
  {
    v4 = sub_1D8ECD37C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1D8ECD37C((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[24 * v6];
    *(v7 + 4) = v2;
    *(v7 + 5) = 0;
    v7[48] = 0;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1D8ECD37C(0, *(v4 + 2) + 1, 1, v4);
    }

    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    if (v10 >= v9 >> 1)
    {
      v4 = sub_1D8ECD37C((v9 > 1), v10 + 1, 1, v4);
    }

    *(v4 + 2) = v10 + 1;
    v11 = &v4[24 * v10];
    *(v11 + 4) = v1;
    *(v11 + 5) = v3;
    v11[48] = 2;
  }

  else if (!*(v4 + 2))
  {
    v12 = qword_1EDCD0F80;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1EDCD0F88);

    v14 = sub_1D917741C();
    v15 = sub_1D9178D0C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v16 = 134218498;
      *(v16 + 4) = v2;

      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D8CFA924(v1, v3, &v22);
      *(v16 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
      v17 = sub_1D917826C();
      v19 = sub_1D8CFA924(v17, v18, &v22);

      *(v16 + 24) = v19;

      _os_log_impl(&dword_1D8CEC000, v14, v15, "We shouldn't be here: RemoteNonFollowedShow must at least have a non empty feedURL. AdamID %lld, feedURL %s, lastDatePlayed %s.", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    else
    {
    }
  }

  return v4;
}

uint64_t _s18PodcastsFoundation17PodcastIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1D9179ACC();
      }
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1D9179ACC();
    }

    return 0;
  }

  return !a6 && a1 == a4;
}

unint64_t sub_1D8FDB788()
{
  result = qword_1ECAB8870;
  if (!qword_1ECAB8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8870);
  }

  return result;
}

void sub_1D8FDB7EC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEAC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1D9179A2C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1D8E59848(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

id PodcastUpdateAverageCalculator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PodcastUpdateAverageCalculator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastUpdateAverageCalculator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PodcastUpdateAverageCalculator.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PodcastUpdateAverageCalculator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D8FDBA74(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = result;

    sub_1D8FDB7EC(&v2);
    v1 = *(v2 + 2);
    if ((v1 & 1) != 0 || v1 >= 2)
    {
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }

  return result;
}

id sub_1D8FDBB24(void *a1, void *a2)
{
  result = [a1 uuid];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v34 = a1;
  v6 = objc_opt_self();
  v7 = @"MTEpisode";
  v8 = [v6 predicateForAllEpisodesOnPodcastUuid_];

  v9 = [v6 sortDescriptorsForPubDateAscending_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v10 = sub_1D91785FC();

  sub_1D8F61018(v10);

  v11 = sub_1D91785DC();

  v12 = [a2 objectsInEntity:v7 predicate:v8 sortDescriptors:v11 returnsObjectsAsFaults:0 limit:10];

  if (!v12 || (sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620), v13 = sub_1D91785FC(), v12, v14 = sub_1D8FBF084(v13), , !v14))
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v14 >> 62)
  {
LABEL_41:
    v15 = sub_1D917935C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_35:

    sub_1D8FDBA74(v18);
    v32 = v31;

    return [v34 setUpdateAvg_];
  }

  v16 = 0;
  v17 = v14 & 0xC000000000000001;
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v16;
    while (1)
    {
      if (v17)
      {
        v20 = MEMORY[0x1DA72AA90](v19, v14);
      }

      else
      {
        if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v20 = *(v14 + 8 * v19 + 32);
      }

      v21 = v20;
      v16 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v14 >> 62)
      {
        v22 = sub_1D917935C();
      }

      else
      {
        v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v22, 1))
      {
        goto LABEL_40;
      }

      if (v19 < v22 - 1)
      {
        break;
      }

      ++v19;
      if (v16 == v15)
      {
        goto LABEL_35;
      }
    }

    result = [v21 pubDate];
    v24 = v23;
    if (v17)
    {
      v25 = MEMORY[0x1DA72AA90](v19 + 1, v14);
      goto LABEL_27;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v25 = *(v14 + 32 + 8 * v16);
LABEL_27:
    v26 = v25;
    [v25 pubDate];
    v28 = v27;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D8CF69F0(0, *(v18 + 2) + 1, 1, v18);
    }

    v30 = *(v18 + 2);
    v29 = *(v18 + 3);
    v33 = v18;
    if (v30 >= v29 >> 1)
    {
      v33 = sub_1D8CF69F0((v29 > 1), v30 + 1, 1, v18);
    }

    *(v33 + 2) = v30 + 1;
    v18 = v33;
    *&v33[8 * v30 + 32] = vabdd_f64(v24, v28);
    if (v16 == v15)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t RemoteNonFollowedShowError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FDBFF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  *(v0 + 32) = sub_1D917820C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1D917820C();
  *(v0 + 56) = v2;
  result = sub_1D917820C();
  *(v0 + 64) = result;
  *(v0 + 72) = v4;
  off_1ECAB8878 = v0;
  return result;
}

uint64_t sub_1D8FDC0AC()
{
  result = sub_1D917820C();
  qword_1ECAB8880 = result;
  *algn_1ECAB8888 = v1;
  return result;
}

uint64_t static RemoteNonFollowedShow.unknownSyncKey.getter()
{
  if (qword_1ECAB36A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAB8880;

  return v0;
}

void sub_1D8FDC144()
{
  if (qword_1ECAB3698 != -1)
  {
    swift_once();
  }

  v0 = off_1ECAB8878;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  v2 = qword_1ECAB36A0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_1ECAB8888;
  *(inited + 32) = qword_1ECAB8880;
  *(inited + 40) = v3;

  sub_1D8E2FE30(inited);
  qword_1ECAB8890 = v0;
}

uint64_t RemoteNonFollowedShow.feedURL.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void RemoteNonFollowedShow.init(dictionary:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D917820C();
  if (!*(a1 + 16))
  {

LABEL_13:

    sub_1D8FDC640();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v6 = sub_1D8D33C70(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1D8CFAD1C(*(a1 + 56) + 32 * v6, v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = sub_1D917820C();
  if (!*(a1 + 16))
  {

    goto LABEL_13;
  }

  v11 = sub_1D8D33C70(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1D8CFAD1C(*(a1 + 56) + 32 * v11, v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = sub_1D917820C();
  if (*(a1 + 16))
  {
    v16 = sub_1D8D33C70(v14, v15);
    v18 = v17;

    if (v18)
    {
      sub_1D8CFAD1C(*(a1 + 56) + 32 * v16, v35);
      v19 = swift_dynamicCast();
      v20 = v33;
      if (!v19)
      {
        v20 = 0;
      }

      v32 = v20;
      v21 = v19 ^ 1;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v32 = 0;
  v21 = 1;
LABEL_17:
  v36 = v21;
  if (qword_1ECAB3698 != -1)
  {
    swift_once();
  }

  v22 = *(off_1ECAB8878 + 2);
  if (v22)
  {
    v23 = (off_1ECAB8878 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;

      v26 = sub_1D8D33C70(v24, v25);
      v28 = v27;

      if (v28)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D8F86F90();
        }

        sub_1D8D65618((*(a1 + 56) + 32 * v26), v35);
        sub_1D8F80C60(v26, a1);
      }

      else
      {
        memset(v35, 0, sizeof(v35));
      }

      sub_1D8D64450(v35);
      v23 += 2;
      --v22;
    }

    while (v22);
  }

  sub_1D8FD5948(a1);
  v30 = v29;

  v31 = v36;
  *a2 = v33;
  *(a2 + 8) = v33;
  *(a2 + 16) = v34;
  *(a2 + 24) = v32;
  *(a2 + 32) = v31;
  *(a2 + 40) = v30;
}

uint64_t sub_1D8FDC5D8()
{
  if (qword_1ECAB36A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAB8880;

  return v0;
}

unint64_t sub_1D8FDC640()
{
  result = qword_1ECAB8898;
  if (!qword_1ECAB8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8898);
  }

  return result;
}

unint64_t sub_1D8FDC698()
{
  result = qword_1ECAB88A0;
  if (!qword_1ECAB88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB88A0);
  }

  return result;
}

uint64_t sub_1D8FDC6FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8FDC744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8FDC7A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000019;
  v3 = "L01";
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = "ExcessiveDownloads";
    if (a1 != 2)
    {
      v13 = "DeletedSecureKeyWithAsset";
    }

    v14 = "DuplicateDownloads";
    if (!a1)
    {
      v14 = "L01";
    }

    if (a1 <= 1u)
    {
      v11 = 0xD000000000000012;
    }

    else
    {
      v11 = 0xD000000000000019;
    }

    if (v4 <= 1)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = "DownloadediPodLibraryFile";
    v6 = 0xD000000000000015;
    v7 = "PotentialSyncDataLoss";
    v8 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v8 = 0xD000000000000017;
      v7 = "ReadOnlyDeviceMakingSyncChanges";
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = "MissingFairPlayOfflineKey";
    v10 = 0xD000000000000011;
    if (a1 != 4)
    {
      v10 = 0xD000000000000019;
      v9 = "KeyIntegrityError";
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "DownloadediPodLibraryFile";
        v2 = 0xD000000000000015;
      }

      else if (a2 == 7)
      {
        v3 = "PotentialSyncDataLoss";
        v2 = 0xD00000000000001FLL;
      }

      else
      {
        v3 = "ReadOnlyDeviceMakingSyncChanges";
        v2 = 0xD000000000000017;
      }

      goto LABEL_42;
    }

    if (a2 == 4)
    {
      v3 = "MissingFairPlayOfflineKey";
      v2 = 0xD000000000000011;
      goto LABEL_42;
    }

    v15 = "DownloadediPodLibraryFile";
LABEL_41:
    v3 = (v15 - 32);
    goto LABEL_42;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = "DeletedSecureKeyWithAsset";
    }

    else
    {
      v15 = "MissingFairPlayOfflineKey";
    }

    goto LABEL_41;
  }

  if (a2)
  {
    v3 = "DuplicateDownloads";
  }

  v2 = 0xD000000000000012;
LABEL_42:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1D9179ACC();
  }

  return v16 & 1;
}

uint64_t sub_1D8FDC9C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE300000000000000;
  v6 = 6515555;
  v7 = 0x6974617269707865;
  v8 = 0xEF656D69742D6E6FLL;
  if (a1 != 4)
  {
    v7 = 0x762D776F6C2D7369;
    v8 = 0xEC00000065756C61;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x737574617473;
  if (a1 != 1)
  {
    v10 = 0x66612D77656E6572;
    v9 = 0xEB00000000726574;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE300000000000000;
      if (v11 != 6515555)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEF656D69742D6E6FLL;
      if (v11 != 0x6974617269707865)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xEC00000065756C61;
      if (v11 != 0x762D776F6C2D7369)
      {
LABEL_33:
        v14 = sub_1D9179ACC();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x737574617473)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xEB00000000726574;
      if (v11 != 0x66612D77656E6572)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_33;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_1D8FDCBC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000737365;
  v3 = 0x4C74736567677573;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x657469726F766166;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C61727475656ELL;
    }

    else
    {
      v5 = 0x4C74736567677573;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB00000000737365;
    }
  }

  v7 = 0x657469726F766166;
  v8 = 0xE900000000000064;
  if (a2 != 2)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8FDCD10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000737470;
  v5 = 0x7372657470616863;
  if (a1 == 2)
  {
    v5 = 0x697263736E617274;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v6 = 0x74736163646F70;
  }

  else
  {
    v3 = 0x80000001D91C8050;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x697263736E617274;
    }

    else
    {
      v11 = 0x7372657470616863;
    }

    if (a2 == 2)
    {
      v10 = 0xEB00000000737470;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x74736163646F70;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (a2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0x80000001D91C8050;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1D9179ACC();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1D8FDCE68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x80000001D91C87D0;
    v13 = 0xD000000000000016;
    if (a1 != 2)
    {
      v13 = 0x6143656E696C6E69;
      v12 = 0xEE0079726F676574;
    }

    v14 = 0xD000000000000014;
    if (a1)
    {
      v11 = 0x80000001D91C87B0;
    }

    else
    {
      v14 = 0x6C656E6E616863;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 2003789939;
    v5 = 0x4865646F73697065;
    v6 = 0xEB000000006F7265;
    if (a1 != 7)
    {
      v5 = 0x6F726548776F6873;
      v6 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x6F77537265776F70;
    v8 = 0xEB0000000068736FLL;
    if (a1 != 4)
    {
      v7 = 0x6867696C68676968;
      v8 = 0xEF6D657449646574;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0x80000001D91C87D0;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v17 = 0xEE0079726F676574;
        if (v9 != 0x6143656E696C6E69)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v17 = 0x80000001D91C87B0;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      if (v9 != 0x6C656E6E616863)
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v17 = 0xE400000000000000;
        if (v9 != 2003789939)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      if (a2 != 7)
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x6F726548776F6873)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x4865646F73697065;
      v16 = 7303781;
      goto LABEL_39;
    }

    if (a2 == 4)
    {
      v15 = 0x6F77537265776F70;
      v16 = 6845295;
LABEL_39:
      v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v9 != v15)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v17 = 0xEF6D657449646574;
    if (v9 != 0x6867696C68676968)
    {
LABEL_52:
      v18 = sub_1D9179ACC();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v17)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_1D8FDD174(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6F65646976;
    }

    else
    {
      v3 = 0x6F69647561;
    }

    v2 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x6567616D69;
  }

  else
  {
    v2 = 0xE800000000000000;
    if (a1 == 3)
    {
      v3 = 0x746E656D75636F64;
    }

    else
    {
      v3 = 0x6C616E7265747865;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6F65646976;
    }

    else
    {
      v7 = 0x6F69647561;
    }

    v6 = 0xE500000000000000;
    if (v3 != v7)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x746E656D75636F64;
    if (a2 != 3)
    {
      v4 = 0x6C616E7265747865;
    }

    if (a2 == 2)
    {
      v5 = 0x6567616D69;
    }

    else
    {
      v5 = v4;
    }

    if (a2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v6)
  {
LABEL_28:
    v8 = sub_1D9179ACC();
    goto LABEL_29;
  }

  v8 = 1;
LABEL_29:

  return v8 & 1;
}

uint64_t sub_1D8FDD2E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006465696E65;
  v3 = 0x645F737365636361;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0x80000001D91C8720;
    v14 = 0xD000000000000016;
    v15 = 0x80000001D91C8740;
    v16 = 0xD000000000000019;
    if (a1 != 8)
    {
      v16 = 0x5F64696C61766E69;
      v15 = 0xED000065706F6373;
    }

    if (a1 != 7)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = 0x80000001D91C86E0;
    v18 = 0xD000000000000017;
    if (a1 != 5)
    {
      v18 = 0xD000000000000013;
      v17 = 0x80000001D91C8700;
    }

    if (a1 <= 6u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 6)
    {
      v12 = v17;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x5F64696C61766E69;
    v6 = 0xEE00746E65696C63;
    v7 = 0x5F64696C61766E69;
    v8 = 0xED0000746E617267;
    if (a1 != 3)
    {
      v7 = 0x655F726576726573;
      v8 = 0xEC000000726F7272;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x5F64696C61766E69;
    v10 = 0xEF74736575716572;
    if (!a1)
    {
      v9 = 0x645F737365636361;
      v10 = 0xED00006465696E65;
    }

    if (a1 <= 1u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001D91C86E0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0x80000001D91C8700;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v2 = 0x80000001D91C8720;
      if (v11 != 0xD000000000000016)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v2 = 0x80000001D91C8740;
      if (v11 != 0xD000000000000019)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v3 = 0x5F64696C61766E69;
    v2 = 0xED000065706F6373;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEE00746E65696C63;
        if (v11 != 0x5F64696C61766E69)
        {
          goto LABEL_54;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xED0000746E617267;
        if (v11 != 0x5F64696C61766E69)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xEC000000726F7272;
        if (v11 != 0x655F726576726573)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2)
    {
      v2 = 0xEF74736575716572;
      if (v11 != 0x5F64696C61766E69)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  if (v11 != v3)
  {
LABEL_54:
    v19 = sub_1D9179ACC();
    goto LABEL_55;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v19 = 1;
LABEL_55:

  return v19 & 1;
}

uint64_t sub_1D8FDD680(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x644972657375;
    }

    else
    {
      v3 = 0x6449746E65696C63;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001D91C8650;
    v3 = 0xD000000000000019;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001D91C8670;
  }

  else
  {
    v3 = 0x6E55734972657375;
    v4 = 0xED00003331726564;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x644972657375;
    }

    else
    {
      v6 = 0x6449746E65696C63;
    }

    if (a2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001D91C8650;
    if (v3 != 0xD000000000000019)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001D91C8670;
    if (v3 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00003331726564;
    if (v3 != 0x6E55734972657375)
    {
LABEL_31:
      v7 = sub_1D9179ACC();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1D8FDD844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6D617473656D6974;
    }

    else
    {
      v5 = 0x64496D616461;
    }

    if (v2)
    {
      v3 = 0xE900000000000070;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x656C706D6F437369;
    v3 = 0xEA00000000006574;
  }

  else
  {
    v3 = 0xE800000000000000;
    if (a1 == 3)
    {
      v4 = 1634891108;
    }

    else
    {
      v4 = 1769172848;
    }

    v5 = v4 | 0x6E6F697400000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D617473656D6974;
    }

    else
    {
      v9 = 0x64496D616461;
    }

    if (a2)
    {
      v8 = 0xE900000000000070;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v5 != v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x6E6F697461727564;
    if (a2 != 3)
    {
      v6 = 0x6E6F697469736F70;
    }

    if (a2 == 2)
    {
      v7 = 0x656C706D6F437369;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEA00000000006574;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v5 != v7)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v8)
  {
LABEL_34:
    v10 = sub_1D9179ACC();
    goto LABEL_35;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_1D8FDD9D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6778480;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 1734701162;
    if (a1 != 2)
    {
      v12 = 1667851624;
    }

    v13 = 6778986;
    if (!a1)
    {
      v13 = 6778480;
    }

    if (a1 <= 1u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }

    if (v3 <= 1)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    v4 = 0x69736D617A616873;
    v5 = 0xEF65727574616E67;
    v6 = 0xE400000000000000;
    v7 = 1819112564;
    if (a1 != 7)
    {
      v7 = 7105912;
      v6 = 0xE300000000000000;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0xE300000000000000;
    v9 = 7633012;
    if (a1 != 4)
    {
      v9 = 0x7473696C70;
      v8 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v14 = 0xE400000000000000;
      if (a2 == 2)
      {
        if (v10 != 1734701162)
        {
          goto LABEL_50;
        }
      }

      else if (v10 != 1667851624)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (a2)
      {
        v2 = 6778986;
      }

      v14 = 0xE300000000000000;
      if (v10 != v2)
      {
        goto LABEL_50;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE300000000000000;
      if (v10 != 7633012)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v10 != 0x7473696C70)
      {
LABEL_50:
        v15 = sub_1D9179ACC();
        goto LABEL_51;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xEF65727574616E67;
    if (v10 != 0x69736D617A616873)
    {
      goto LABEL_50;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE400000000000000;
    if (v10 != 1819112564)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v14 = 0xE300000000000000;
    if (v10 != 7105912)
    {
      goto LABEL_50;
    }
  }

  if (v11 != v14)
  {
    goto LABEL_50;
  }

  v15 = 1;
LABEL_51:

  return v15 & 1;
}

uint64_t sub_1D8FDDC1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073747361;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xEB00000000747361;
    }

    else
    {
      v5 = 0xEC00000073747361;
    }

    v4 = 0x63646F5079616C70;
  }

  else if (a1 == 2)
  {
    v4 = 0x7461745379616C70;
    v5 = 0xEB000000006E6F69;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x6269726373627573;
    }

    else
    {
      v4 = 0x6D65744979616C70;
    }

    if (v3 == 3)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0x7461745379616C70;
  v7 = 0xEB000000006E6F69;
  v8 = 0x6269726373627573;
  v9 = 0xE900000000000065;
  if (a2 != 3)
  {
    v8 = 0x6D65744979616C70;
    v9 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  if (a2)
  {
    v2 = 0xEB00000000747361;
  }

  if (a2 <= 1u)
  {
    v10 = 0x63646F5079616C70;
  }

  else
  {
    v10 = v6;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D9179ACC();
  }

  return v12 & 1;
}

uint64_t sub_1D8FDDDA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x636973756DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 30324;
    }

    else
    {
      v4 = 0x6C616E7265747865;
    }

    if (v3 == 2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1937204590;
    }

    else
    {
      v4 = 0x636973756DLL;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (a2 != 2)
  {
    v8 = 0x6C616E7265747865;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 1937204590;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8FDDEC0(char a1, char a2)
{
  if (*&aStdq_8[8 * a1] == *&aStdq_8[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D9179ACC();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1D8FDDF28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x5379616C70736964;
    v13 = 0xEC000000656C6163;
    if (a1 != 2)
    {
      v12 = 0xD000000000000011;
      v13 = 0x80000001D91C8270;
    }

    v14 = 0x6953746567726174;
    if (a1)
    {
      v11 = 0xEA0000000000657ALL;
    }

    else
    {
      v14 = 0x6C65646F6DLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x73746365666665;
    v5 = 0x6C706D6173627573;
    v6 = 0xEF726F7463614665;
    if (a1 != 7)
    {
      v5 = 0x797469726F697270;
      v6 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xD000000000000010;
    v8 = 0x80000001D91C8290;
    if (a1 != 4)
    {
      v7 = 0x74616E6974736564;
      v8 = 0xEB000000006E6F69;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xEC000000656C6163;
        if (v9 != 0x5379616C70736964)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0x80000001D91C8270;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xEA0000000000657ALL;
      if (v9 != 0x6953746567726174)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x6C65646F6DLL)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0x80000001D91C8290;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEB000000006E6F69;
      if (v9 != 0x74616E6974736564)
      {
LABEL_52:
        v16 = sub_1D9179ACC();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x73746365666665)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEF726F7463614665;
    if (v9 != 0x6C706D6173627573)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x797469726F697270)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_1D8FDE23C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x63646F507377656ELL;
  v3 = 0xEC00000073747361;
  v4 = a1;
  v5 = 0x69726F6765746163;
  v6 = 0xEA00000000007365;
  if (a1 != 5)
  {
    v5 = 0x7372657470616863;
    v6 = 0xE800000000000000;
  }

  v7 = 0x697263736E617274;
  v8 = 0xEB00000000737470;
  if (a1 != 3)
  {
    v7 = 0x6E79536E61656C63;
    v8 = 0xE900000000000063;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6D656C7469746E65;
  if (a1 == 1)
  {
    v10 = 0xEC00000073746E65;
  }

  else
  {
    v9 = 0x726566664F707061;
    v10 = 0xE900000000000073;
  }

  if (!a1)
  {
    v9 = 0x63646F507377656ELL;
    v10 = 0xEC00000073747361;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 0xEC00000073746E65;
        if (v11 != 0x6D656C7469746E65)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = 0xE900000000000073;
        if (v11 != 0x726566664F707061)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v3 = 0xEA00000000007365;
        if (v11 != 0x69726F6765746163)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = 0xE800000000000000;
        if (v11 != 0x7372657470616863)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v3 = 0xEB00000000737470;
      if (v11 != 0x697263736E617274)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0x6E79536E61656C63;
    v3 = 0xE900000000000063;
  }

  if (v11 != v2)
  {
LABEL_37:
    v13 = sub_1D9179ACC();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v3)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_1D8FDE488(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x656C75646F6DLL;
    }

    if (v2)
    {
      v4 = 0x80000001D91C81C0;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x6C725564656566;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6449636E7973;
    }

    else
    {
      v3 = 0x4B79616C70736964;
    }

    if (v2 == 3)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xEC00000073646E69;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0x656C75646F6DLL;
    }

    if (a2)
    {
      v5 = 0x80000001D91C81C0;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6C725564656566)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x6449636E7973)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000073646E69;
    if (v3 != 0x4B79616C70736964)
    {
LABEL_34:
      v7 = sub_1D9179ACC();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1D8FDE630(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x7365646F73697065;
    }

    if (v2)
    {
      v4 = 0x80000001D91C7F20;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x2D74736163646F70;
    v4 = 0xEF736E6F73616573;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x697263736E617274;
    }

    else
    {
      v3 = 0x7372657470616863;
    }

    if (v2 == 3)
    {
      v4 = 0xEB00000000737470;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x7365646F73697065;
    }

    if (a2)
    {
      v5 = 0x80000001D91C7F20;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEF736E6F73616573;
    if (v3 != 0x2D74736163646F70)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000737470;
    if (v3 != 0x697263736E617274)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x7372657470616863)
    {
LABEL_34:
      v7 = sub_1D9179ACC();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1D8FDE7FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "e";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000053;
    }

    else
    {
      v5 = 0xD000000000000040;
    }

    if (v3)
    {
      v4 = "m.apple.podcasts";
    }

    else
    {
      v4 = "e";
    }
  }

  else if (a1 == 2)
  {
    v4 = "/CELLULAR_DOWNLOADS";
    v5 = 0xD000000000000048;
  }

  else if (a1 == 3)
  {
    v4 = "m.apple.podcasts/FORWARD";
    v5 = 0xD000000000000049;
  }

  else
  {
    v4 = "m.apple.podcasts/BACKWARD";
    v5 = 0xD000000000000055;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000053;
    }

    else
    {
      v6 = 0xD000000000000040;
    }

    if (a2)
    {
      v2 = "m.apple.podcasts";
    }
  }

  else if (a2 == 2)
  {
    v2 = "/CELLULAR_DOWNLOADS";
    v6 = 0xD000000000000048;
  }

  else
  {
    v2 = "m.apple.podcasts/FORWARD";
    if (a2 == 3)
    {
      v6 = 0xD000000000000049;
    }

    else
    {
      v6 = 0xD000000000000055;
    }

    if (a2 != 3)
    {
      v2 = "m.apple.podcasts/BACKWARD";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

uint64_t sub_1D8FDE964(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368801;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746567646977;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0x80000001D91C7E50;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1769105779;
    }

    else
    {
      v4 = 7368801;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x746567646977;
  v8 = 0x80000001D91C7E50;
  if (a2 == 2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 1769105779;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8FDEA88(char a1, char a2)
{
  v12 = a1;
  v11 = a2;
  Podcasts.rawValue.getter(&v10);
  Podcasts.rawValue.getter(&v9);
  v2 = sub_1D917949C();
  v4 = v3;
  if (v2 == sub_1D917949C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

uint64_t sub_1D8FDEB50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEE00676E69646E65;
  v5 = 0x6C61756E616DLL;
  if (a1 == 5)
  {
    v5 = 0x6373416465646461;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  v6 = 0xD000000000000010;
  v7 = 0x80000001D91C7900;
  if (a1 != 3)
  {
    v6 = 0x6465646461;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
  }

  else
  {
    v6 = v5;
  }

  v8 = 0x637341656C746974;
  v9 = 0xEE00676E69646E65;
  if (a1 != 1)
  {
    v8 = 0x64657461647075;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x656C746974;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656C746974)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (a2 != 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64657461647075)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    v13 = 0x41656C746974;
    goto LABEL_30;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000001D91C7900;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6465646461)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_39;
  }

  if (a2 == 5)
  {
    v13 = 0x416465646461;
LABEL_30:
    v12 = 0xEE00676E69646E65;
    if (v10 != (v13 & 0xFFFFFFFFFFFFLL | 0x6373000000000000))
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v12 = 0xE600000000000000;
  if (v10 != 0x6C61756E616DLL)
  {
LABEL_41:
    v14 = sub_1D9179ACC();
    goto LABEL_42;
  }

LABEL_39:
  if (v11 != v12)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t ShowsSortType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C746974;
  v2 = 0x6373416465646461;
  if (a1 != 5)
  {
    v2 = 0x6C61756E616DLL;
  }

  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0x6465646461;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x637341656C746974;
  if (a1 != 1)
  {
    v4 = 0x64657461647075;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ShowsSortType.ascendingType.getter(unsigned int a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 2)
  {
    v1 = 3;
  }

  else
  {
    v1 = a1;
  }

  if (a1 == 4)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t ShowsSortType.baseSortType.getter(int a1)
{
  if (a1 == 5)
  {
    v1 = 4;
  }

  else
  {
    v1 = a1;
  }

  if (a1 == 3)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

Swift::Bool __swiftcall ShowsSortType.baseSortTypeMatches(otherSort:)(PodcastsFoundation::ShowsSortType otherSort)
{
  if (v1 == 5)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if (v1 == 3)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  if (otherSort == PodcastsFoundation_ShowsSortType_addedAscending)
  {
    v5 = PodcastsFoundation_ShowsSortType_added;
  }

  else
  {
    v5 = otherSort;
  }

  if (otherSort == PodcastsFoundation_ShowsSortType_updatedAscending)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  if (otherSort == PodcastsFoundation_ShowsSortType_titleAscending)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return sub_1D8FDEB50(v4, v7);
}

uint64_t sub_1D8FDEF3C()
{
  v1 = *v0;
  sub_1D9179DBC();
  ShowsSortType.rawValue.getter(v1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FDEFA0(uint64_t a1)
{
  ShowsSortType.rawValue.getter(*v1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FDEFF4(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  ShowsSortType.rawValue.getter(v2);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8FDF054@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s18PodcastsFoundation13ShowsSortTypeO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D8FDF084@<X0>(uint64_t *a1@<X8>)
{
  result = ShowsSortType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8FDF0B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ShowsSortType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ShowsSortType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

unint64_t _s18PodcastsFoundation13ShowsSortTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8FDF188()
{
  result = qword_1ECAB88A8;
  if (!qword_1ECAB88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB88A8);
  }

  return result;
}

unint64_t sub_1D8FDF21C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8FDF360(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PodcastsStateChangeOrigin.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0xD000000000000011;
    }

    if (a1 == 1)
    {
      return 0x6B72616D6B6F6F62;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0xD000000000000014;
      case 3:
        return 0x536D6F7246746F6ELL;
      case 4:
        return 0x6E776F6E6B6E75;
    }
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

unint64_t sub_1D8FDF360(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D8FDF374()
{
  result = qword_1ECAB88B0;
  if (!qword_1ECAB88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB88B0);
  }

  return result;
}

unint64_t sub_1D8FDF3CC()
{
  result = qword_1ECAB88B8;
  if (!qword_1ECAB88B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB88C0, &qword_1D91A42D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB88B8);
  }

  return result;
}

uint64_t PodcastPlayerItem.feedURL.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PodcastPlayerItem.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PodcastPlayerItem.displayType.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PodcastPlayerItem.init(adamID:feedURL:title:displayType:isSubscribeable:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t EpisodePlayerItem.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t EpisodePlayerItem.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EpisodePlayerItem.guid.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EpisodePlayerItem.init(adamID:title:subtitle:guid:pubDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  return result;
}

uint64_t PlayerItem.podcast.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1D8FDF608(v7, &v6);
}

uint64_t PlayerItem.episode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v9 = *(v1 + 96);
  v10 = v2;
  v11 = *(v1 + 128);
  v3 = v11;
  v4 = *(v1 + 80);
  v8[0] = *(v1 + 64);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D8FDF68C(v8, v7);
}

__n128 PlayerItem.init(podcast:episode:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = a1[2];
  *(a3 + 41) = *(a1 + 41);
  v4 = *(a2 + 48);
  *(a3 + 96) = *(a2 + 32);
  *(a3 + 112) = v4;
  *(a3 + 128) = *(a2 + 64);
  result = *(a2 + 16);
  *(a3 + 64) = *a2;
  *(a3 + 80) = result;
  return result;
}

uint64_t PodcastsStateCoordinatorPersistentStore.__allocating_init(syncKeysRepository:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(type metadata accessor for FeedURLComposer()) init];
  *(v2 + 24) = a1;
  return v2;
}

uint64_t PodcastsStateCoordinatorPersistentStore.insertPodcastInStoreState(in:for:)(uint64_t a1, uint64_t *a2)
{
  v59 = a1;
  v4 = sub_1D9176C2C();
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v51 - v11;
  v13 = *a2;
  v51[0] = a2[1];
  v14 = a2[3];
  v53 = a2[2];
  v51[1] = v14;
  v15 = a2[4];
  v51[2] = a2[5];
  v16 = a2[6];
  v56 = v15;
  v57 = v16;
  v54 = v2;
  v17 = *(v2 + 24);
  v18 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  v19 = swift_beginAccess();
  if (isRunningUnitTests(v19, v20) & 1) == 0 && ([objc_opt_self() isRunningOnHomepod] & 1) != 0 && (v61 = &type metadata for Podcasts, v62 = sub_1D8CF0F2C(), LOBYTE(v60[0]) = 13, v21 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v60), (v21))
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    sub_1D8CFD9D8(v17 + v18, v60);
    v23 = v61;
    v24 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    LOBYTE(v22) = (*(v24 + 80))(0, v23, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  v58 = v13;
  v25 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v29 = *(v25 + 2);
    v28 = *(v25 + 3);
    if (v29 >= v28 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D8ECD4B4((v28 > 1), v29 + 1, 1, v25);
      v25 = isUniquelyReferenced_nonNull_native;
    }

    *(v25 + 2) = v29 + 1;
    v30 = &v25[16 * v29];
    *(v30 + 4) = 0;
    v30[40] = v22 & 1;
    if (isRunningUnitTests(isUniquelyReferenced_nonNull_native, v27) & 1) == 0 && [objc_opt_self() isRunningOnHomepod] && (v61 = &type metadata for Podcasts, v62 = sub_1D8CF0F2C(), LOBYTE(v60[0]) = 13, v31 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v60), (v31))
    {
      v32 = 0;
    }

    else
    {
      sub_1D8CFD9D8(v17 + v18, v60);
      v34 = v61;
      v33 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v32 = (*(v33 + 80))(1, v34, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
    }

    v18 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D8ECD4B4(0, *(v25 + 2) + 1, 1, v25);
    }

    v36 = *(v25 + 2);
    v35 = *(v25 + 3);
    if (v36 >= v35 >> 1)
    {
      v25 = sub_1D8ECD4B4((v35 > 1), v36 + 1, 1, v25);
    }

    *(v25 + 2) = v36 + 1;
    v37 = &v25[16 * v36];
    *(v37 + 4) = 1;
    v37[40] = v32 & 1;
    v38 = v55;
    (*(v55 + 56))(v12, 1, 1, v4);
    if (v53)
    {
      sub_1D9176BFC();
      sub_1D8E677CC(v12);
      sub_1D8D5DE80(v9, v12);
    }

    v39 = v58;
    sub_1D8FD830C(v12, v58, v6);
    sub_1D9176ACC();
    (*(v38 + 8))(v6, v4);
    v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v40 = objc_opt_self();
    v41 = [v40 defaultShowType];
    v6 = v56 ? _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0() : 0;
    v52 = v12;
    v42 = v57 ? _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0() : 0;
    v43 = [v40 insertNewPodcastInManagedObjectContext:v18 subscribed:0 feedUrl:v22 showType:v41 showTypeInFeed:0 title:v6 author:0 provider:0 imageUrl:0 description:0 adamId:v39 displayType:v42 showSpecificUpsellCopy:0];

    [v43 setHidden_];
    v59 = v43;
    [v43 setImporting_];
    v4 = *(v25 + 2);
    v12 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
    v44 = swift_beginAccess();
    if (!v4)
    {
      break;
    }

    v46 = 0;
    v9 = (v25 + 40);
    while (v46 < *(v25 + 2))
    {
      v22 = *(v9 - 1);
      v6 = *v9;
      if ((isRunningUnitTests(v44, v45) & 1) != 0 || ([objc_opt_self() isRunningOnHomepod] & 1) == 0 || (v61 = &type metadata for Podcasts, v62 = sub_1D8CF0F2C(), LOBYTE(v60[0]) = 13, v18 = sub_1D917710C(), v44 = __swift_destroy_boxed_opaque_existential_1Tm(v60), (v18 & 1) == 0))
      {
        sub_1D8CFD9D8(&v12[v17], v60);
        v18 = v61;
        v47 = v62;
        v48 = __swift_project_boxed_opaque_existential_1(v60, v61);
        v49 = v22;
        LOBYTE(v22) = v48;
        (*(v47 + 88))(v6, v49, v18, v47);
        v44 = __swift_destroy_boxed_opaque_existential_1Tm(v60);
      }

      ++v46;
      v9 += 16;
      if (v4 == v46)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    isUniquelyReferenced_nonNull_native = sub_1D8ECD4B4(0, *(v25 + 2) + 1, 1, v25);
    v25 = isUniquelyReferenced_nonNull_native;
  }

LABEL_35:

  sub_1D8E677CC(v52);
  return v59;
}

id PodcastsStateCoordinatorPersistentStore.insertPodcastInStoreState(in:for:)(unint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + 24);
  v6 = &qword_1ECABA000;
  v7 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  v8 = swift_beginAccess();
  if (isRunningUnitTests(v8, v9) & 1) == 0 && ([objc_opt_self() isRunningOnHomepod] & 1) != 0 && (v41 = &type metadata for Podcasts, v42 = sub_1D8CF0F2C(), LOBYTE(v40[0]) = 13, v10 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v40), (v10))
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    sub_1D8CFD9D8(v5 + v7, v40);
    v12 = v41;
    v13 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    LOBYTE(v11) = (*(v13 + 80))(0, v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  v14 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v18 = *(v14 + 2);
    v17 = *(v14 + 3);
    if (v18 >= v17 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D8ECD4B4((v17 > 1), v18 + 1, 1, v14);
      v14 = isUniquelyReferenced_nonNull_native;
    }

    *(v14 + 2) = v18 + 1;
    v19 = &v14[16 * v18];
    *(v19 + 4) = 0;
    v19[40] = v11 & 1;
    if (isRunningUnitTests(isUniquelyReferenced_nonNull_native, v16) & 1) == 0 && [objc_opt_self() isRunningOnHomepod] && (v41 = &type metadata for Podcasts, v42 = sub_1D8CF0F2C(), LOBYTE(v40[0]) = 13, v20 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v40), (v20))
    {
      v21 = 0;
    }

    else
    {
      sub_1D8CFD9D8(v5 + v7, v40);
      v22 = v41;
      v23 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v21 = (*(v23 + 80))(1, v22, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    v24 = a1;
    v25 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1D8ECD4B4(0, *(v14 + 2) + 1, 1, v14);
    }

    v27 = *(v14 + 2);
    v26 = *(v14 + 3);
    if (v27 >= v26 >> 1)
    {
      v14 = sub_1D8ECD4B4((v26 > 1), v27 + 1, 1, v14);
    }

    *(v14 + 2) = v27 + 1;
    v28 = &v14[16 * v27];
    *(v28 + 4) = 1;
    v28[40] = v21 & 1;
    v29 = objc_opt_self();
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v11 = [v29 insertNewPodcastInManagedObjectContext:v24 subscribed:0 feedUrl:v4 showType:objc_msgSend(v29 showTypeInFeed:sel_defaultShowType) title:0 author:0 provider:0 imageUrl:0 description:0 adamId:0 displayType:v25 showSpecificUpsellCopy:{0, 0}];

    [v11 setHidden_];
    v39 = v11;
    [v11 setImporting_];
    v7 = *(v14 + 2);
    v30 = v6[415];
    v31 = swift_beginAccess();
    if (!v7)
    {
      break;
    }

    a1 = 0;
    v6 = (v14 + 40);
    while (a1 < *(v14 + 2))
    {
      v11 = *(v6 - 1);
      v4 = *v6;
      if ((isRunningUnitTests(v31, v32) & 1) != 0 || ([objc_opt_self() isRunningOnHomepod] & 1) == 0 || (v41 = &type metadata for Podcasts, v42 = sub_1D8CF0F2C(), LOBYTE(v40[0]) = 13, v37 = sub_1D917710C(), v31 = __swift_destroy_boxed_opaque_existential_1Tm(v40), (v37 & 1) == 0))
      {
        sub_1D8CFD9D8(v5 + v30, v40);
        v33 = v41;
        v34 = v42;
        v35 = __swift_project_boxed_opaque_existential_1(v40, v41);
        v36 = v11;
        LOBYTE(v11) = v35;
        (*(v34 + 88))(v4, v36, v33, v34);
        v31 = __swift_destroy_boxed_opaque_existential_1Tm(v40);
      }

      ++a1;
      v6 += 2;
      if (v7 == a1)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    isUniquelyReferenced_nonNull_native = sub_1D8ECD4B4(0, *(v14 + 2) + 1, 1, v14);
    v14 = isUniquelyReferenced_nonNull_native;
  }

LABEL_27:

  return v39;
}

uint64_t PodcastsStateCoordinatorPersistentStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id _s18PodcastsFoundation0A31StateCoordinatorPersistentStoreC13insertEpisode2in3for8asPartOfSo9MTEpisodeCSo22NSManagedObjectContextC_AA0H10PlayerItemVSo9MTPodcastCSgtF_0(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  v8 = *(a2 + 6);
  v9 = a2[7];
  v16 = *(a2 + 64);
  v10 = objc_opt_self();
  v11 = [v10 insertNewEpisodeInManagedObjectContext:a1 canSendNotifications:_s18PodcastsFoundation20NotificationSettingsC07canSendC0SbyFZ_0() & 1];
  [v11 setPodcast_];
  [v11 setStoreTrackId_];
  if (v6)
  {
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v12 = 0;
  }

  [v11 setTitle_];

  if (v7)
  {
    v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v13 = 0;
  }

  [v11 setItunesSubtitle_];

  if (v8)
  {
    v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v14 = 0;
  }

  [v11 setGuid_];

  if ((v16 & 1) == 0)
  {
    [v11 setPubDate_];
  }

  return v11;
}

uint64_t sub_1D8FE0494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FE04F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8FE0564(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FE05C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D8FE066C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FE06C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of PodcastsStateCoordinatorPersistentStoreProtocol.insertPodcastInStoreState(in:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))(a1, a2, a3);
}

{
  return (*(a4 + 16))(a1, a2, a3);
}

uint64_t dispatch thunk of PodcastsStateCoordinatorProtocol.downloadEpisodes(with:isFromSaving:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 96) + **(a6 + 96));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D8D58924;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t static MTEpisode.listenNowWidgetEpisodes<A>(fetchLimit:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_1D9177FFC();
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a1;
  v10[4] = v9;
  v10[5] = &v17;
  v10[6] = a2;
  v10[7] = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D8FE10E8;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_58;
  v12 = _Block_copy(aBlock);
  v13 = v9;

  [v13 performBlockAndWait_];

  _Block_release(v12);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = v17;

    return v15;
  }

  return result;
}

double sub_1D8FE0C80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v26 = a3;
  v7 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v8 = objc_opt_self();
  v9 = [v8 predicateForListenNow];
  [v7 setPredicate_];

  v10 = [v8 sortDescriptorsForListenNow];
  if (!v10)
  {
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    sub_1D91785FC();
    v10 = sub_1D91785DC();
  }

  [v7 setSortDescriptors_];

  [v7 setFetchLimit_];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v11 = sub_1D917908C();
  v12 = v11;
  if (v11 >> 62)
  {
    v13 = sub_1D917935C();
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v20 = [v8 predicateForListenNowLatestEpisodes];
  [v19 setPredicate_];

  v21 = [v8 sortDescriptorsForListenNowLatestEpisodes];
  if (!v21)
  {
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    sub_1D91785FC();
    v21 = sub_1D91785DC();
  }

  [v19 setSortDescriptors_];

  [v19 setFetchLimit_];
  v12 = sub_1D917908C();

LABEL_5:
  v27 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v22[2] = v25;
  v22[3] = v23;
  v22[4] = v24;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D0, &qword_1D91B62F0);
  v15 = sub_1D8FE1194();
  v17 = sub_1D8D175AC(sub_1D8FE1160, v22, v14, v25, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);

  *v26 = v17;

  return result;
}

unint64_t sub_1D8FE10F8()
{
  result = qword_1ECAB88C8;
  if (!qword_1ECAB88C8)
  {
    sub_1D8CF2154(255, &qword_1ECAAFC88, 0x1E696ABC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB88C8);
  }

  return result;
}

unint64_t sub_1D8FE1194()
{
  result = qword_1ECAAFEC8;
  if (!qword_1ECAAFEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB44D0, &qword_1D91B62F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFEC8);
  }

  return result;
}

id WidgetNowPlayingInfo.currentEpisodeID.getter()
{
  v1 = *v0;
  sub_1D8FE1240(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

id sub_1D8FE1240(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D8D5055C(result, a2, a3);
  }

  return result;
}

void WidgetNowPlayingInfo.currentEpisodeID.setter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D8FE1298(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

void sub_1D8FE1298(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1D8DA8564(a1, a2, a3);
  }
}

uint64_t WidgetNowPlayingInfo.predictedStartDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetNowPlayingInfo(0) + 24);

  return sub_1D8CF6C70(a1, v3);
}

uint64_t WidgetNowPlayingInfo.predictedCompletionDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetNowPlayingInfo(0) + 28);

  return sub_1D8CF6C70(a1, v3);
}

uint64_t WidgetNowPlayingInfo.timeRemaining.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for WidgetNowPlayingInfo(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t WidgetNowPlayingInfo.duration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for WidgetNowPlayingInfo(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t WidgetNowPlayingInfo.showPlayerArtworkUntilDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetNowPlayingInfo(0) + 40);

  return sub_1D8CF6C70(a1, v3);
}

uint64_t WidgetNowPlayingInfo.init(currentEpisodeID:isPlaying:predictedStartDate:predictedCompletionDate:timeRemaining:duration:showPlayerArtworkUntilDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v14 = type metadata accessor for WidgetNowPlayingInfo(0);
  v15 = v14[6];
  v16 = sub_1D9176E3C();
  v17 = *(*(v16 - 8) + 56);
  v17(a9 + v15, 1, 1, v16);
  v18 = v14[7];
  v17(a9 + v18, 1, 1, v16);
  v19 = a9 + v14[8];
  v20 = a9 + v14[9];
  v21 = v14[10];
  v17(a9 + v21, 1, 1, v16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_1D8CF6C70(a5, a9 + v15);
  sub_1D8CF6C70(a6, a9 + v18);
  *v19 = a7;
  *(v19 + 8) = a8 & 1;
  *v20 = a10;
  *(v20 + 8) = a11 & 1;

  return sub_1D8CF6C70(a12, a9 + v21);
}

uint64_t WidgetNowPlayingInfo.shouldTriggerWidgetUpdateFrom(oldInfo:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D0, &qword_1D91A45C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v90 - v4;
  v6 = type metadata accessor for WidgetNowPlayingInfo(0);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v90 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v90 - v16;
  sub_1D8D088B4(a1, v5, &qword_1ECAB88D0, &qword_1D91A45C8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D8D08A50(v5, &qword_1ECAB88D0, &qword_1D91A45C8);
    return 1;
  }

  sub_1D8FE4F98(v5, v17);
  v18 = *(v1 + 16);
  v19 = v17[16];
  if (v18 == 255)
  {
    if (v19 == 255)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v33 = sub_1D917744C();
    __swift_project_value_buffer(v33, qword_1EDCD5E48);
    sub_1D8FE4FFC(v1, v14);
    v22 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    if (!os_log_type_enabled(v22, v34))
    {

      sub_1D8FE5060(v14);
      goto LABEL_19;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v95 = v36;
    *v35 = 136446210;
    v37 = *(v14 + 1);
    v38 = v14[16];
    v92 = *v14;
    v93 = v37;
    v94 = v38;
    sub_1D8FE1240(v92, v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
    v39 = sub_1D917826C();
    v41 = v40;
    sub_1D8FE5060(v14);
    v42 = sub_1D8CFA924(v39, v41, &v95);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_1D8CEC000, v22, v34, "WidgetNowPlayingInfo: currentEpisodeID has changed %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1DA72CB90](v36, -1, -1);
    v32 = v35;
    goto LABEL_16;
  }

  if (v19 == 255)
  {
    goto LABEL_12;
  }

  v45 = *v1;
  v47 = *v17;
  v46 = *(v17 + 1);
  if (*(v1 + 16))
  {
    v48 = *(v1 + 8);
    if (v18 == 1)
    {
      if (v19 != 1)
      {
        goto LABEL_12;
      }

      sub_1D8D6F530();
      sub_1D8FE1240(v47, v46, 1);
      sub_1D8FE1240(v45, v48, 1);
      v90 = v1;
      v49 = sub_1D917914C();
      v1 = v90;
      v50 = v49;
      sub_1D8FE1298(v47, v46, 1);
      sub_1D8FE1298(v45, v48, 1);
      if ((v50 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_12;
      }

      v56 = v45 == v47 && v48 == v46;
      if (!v56 && (sub_1D9179ACC() & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    if (v17[16])
    {
      goto LABEL_12;
    }

    if (v45 != v47)
    {
      sub_1D8FE1240(*v17, *(v17 + 1), 0);
      goto LABEL_12;
    }

    sub_1D8FE1240(*v1, *(v17 + 1), 0);
  }

LABEL_5:
  v20 = *(v1 + 17);
  if (v20 != v17[17])
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD5E48);
    sub_1D8FE4FFC(v1, v11);
    v22 = sub_1D917741C();
    v23 = sub_1D9178D1C();
    if (!os_log_type_enabled(v22, v23))
    {
      sub_1D8FE5060(v11);
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 67109120;
    v25 = v17;
    v26 = v11[17];
    sub_1D8FE5060(v11);
    *(v24 + 4) = v26;
    v17 = v25;
    v27 = "WidgetNowPlayingInfo: isPlaying has changed %{BOOL}d";
    v28 = v23;
    v29 = v22;
    v30 = v24;
    v31 = 8;
    goto LABEL_10;
  }

  if (*(v1 + 17) && (sub_1D8FE2240(0xD000000000000017, 0x80000001D91D1D40, v1 + v6[7], &v17[v6[7]]) & 1) != 0 || (sub_1D8FE2240(0xD00000000000001ALL, 0x80000001D91D1D20, v1 + v6[10], &v17[v6[10]]) & 1) != 0)
  {
    goto LABEL_19;
  }

  v51 = v6[8];
  v52 = (v1 + v51);
  v53 = *(v1 + v51 + 8);
  v54 = &v17[v51];
  if ((v53 & 1) == 0)
  {
    v55 = v91;
    if (v54[8])
    {
      goto LABEL_45;
    }

    v66 = *v54;
    v67 = *v52;
    v68 = v6[9];
    v69 = 0x20000;
    if (*v52 >= 0.0)
    {
      v70 = (v1 + v68);
      if ((*(v1 + v68 + 8) & 1) == 0)
      {
        v71 = *v70;
        if (*v70 > 0.0)
        {
          v72 = v17;
          v73 = v71 >= 240.0;
          v74 = sub_1D916F0C0(v71 < 240.0, v67);
          v69 = v74 | (sub_1D916F1C4(v74, v67) << 8) | (v73 << 16);
          v17 = v72;
          v68 = v6[9];
        }
      }
    }

    v75 = 0x20000;
    if (v66 >= 0.0)
    {
      v76 = &v17[v68];
      if ((v76[8] & 1) == 0)
      {
        v77 = *v76;
        if (*v76 > 0.0)
        {
          v78 = v17;
          v79 = v77 >= 240.0;
          v80 = sub_1D916F0C0(v77 < 240.0, v66);
          v75 = v80 | (sub_1D916F1C4(v80, v66) << 8) | (v79 << 16);
          v17 = v78;
        }
      }
    }

    v81 = v69 & 0x30000;
    v82 = v75 & 0x30000;
    if ((v75 & 0x30000) == 0x20000)
    {
      v83 = 3;
    }

    else
    {
      v83 = v75;
    }

    if (v81 == 0x20000 || v69 == 3)
    {
      if (v83 != 3)
      {
LABEL_74:
        if (qword_1EDCD5E40 != -1)
        {
          swift_once();
        }

        v85 = sub_1D917744C();
        __swift_project_value_buffer(v85, qword_1EDCD5E48);
        v22 = sub_1D917741C();
        v86 = sub_1D9178D1C();
        if (!os_log_type_enabled(v22, v86))
        {
          goto LABEL_17;
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        v27 = "WidgetNowPlayingInfo: format is changing";
        v28 = v86;
        v29 = v22;
        v30 = v24;
        v31 = 2;
        goto LABEL_10;
      }
    }

    else if (v83 != v69)
    {
      goto LABEL_74;
    }

    v84 = v75 >> 8;
    if (v82 == 0x20000)
    {
      LOBYTE(v84) = 6;
    }

    if (v81 == 0x20000 || BYTE1(v69) == 6)
    {
      if (v84 != 6)
      {
        goto LABEL_74;
      }
    }

    else if (v84 != BYTE1(v69))
    {
      goto LABEL_74;
    }

    if (v20)
    {
      goto LABEL_32;
    }

    v87 = vabdd_f64(v67, v66);
    if (v87 <= 1.0)
    {
      goto LABEL_32;
    }

    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v88 = sub_1D917744C();
    __swift_project_value_buffer(v88, qword_1EDCD5E48);
    v22 = sub_1D917741C();
    v89 = sub_1D9178D1C();
    if (!os_log_type_enabled(v22, v89))
    {
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = v87;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v67;
    v27 = "WidgetNowPlayingInfo: timeRemaining has changed by %f seconds %f";
    v28 = v89;
    v29 = v22;
    v30 = v24;
    v31 = 22;
LABEL_10:
    _os_log_impl(&dword_1D8CEC000, v29, v28, v27, v30, v31);
    v32 = v24;
LABEL_16:
    MEMORY[0x1DA72CB90](v32, -1, -1);
LABEL_17:

    goto LABEL_19;
  }

  v55 = v91;
  if ((v54[8] & 1) == 0)
  {
LABEL_45:
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v57 = sub_1D917744C();
    __swift_project_value_buffer(v57, qword_1EDCD5E48);
    sub_1D8FE4FFC(v1, v55);
    v58 = sub_1D917741C();
    v59 = sub_1D9178D1C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      v61 = v55 + v6[8];
      v62 = *v61;
      v63 = v17;
      v64 = *(v61 + 8);
      sub_1D8FE5060(v55);
      v65 = 0.0;
      if (!v64)
      {
        v65 = v62;
      }

      *(v60 + 4) = v65;
      _os_log_impl(&dword_1D8CEC000, v58, v59, "WidgetNowPlayingInfo: timeRemaining has changed %f", v60, 0xCu);
      MEMORY[0x1DA72CB90](v60, -1, -1);

      v43 = v63;
      goto LABEL_20;
    }

    sub_1D8FE5060(v55);
LABEL_19:
    v43 = v17;
LABEL_20:
    sub_1D8FE5060(v43);
    return 1;
  }

LABEL_32:
  sub_1D8FE5060(v17);
  return 0;
}

uint64_t sub_1D8FE2240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a1;
  v61 = a2;
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v55 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v57);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75B8, &qword_1D9197C80);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v55 - v19;
  v22 = *(v21 + 56);
  sub_1D8D088B4(a3, &v55 - v19, &qword_1ECAB75C0, &unk_1D9188A50);
  sub_1D8D088B4(a4, &v20[v22], &qword_1ECAB75C0, &unk_1D9188A50);
  v23 = *(v7 + 48);
  LODWORD(a4) = v23(v20, 1, v6);
  v24 = v23(&v20[v22], 1, v6);
  if (a4 == 1)
  {
    if (v24 != 1)
    {
      sub_1D8D08A50(&v20[v22], &qword_1ECAB75C0, &unk_1D9188A50);
LABEL_6:
      v25 = v61;
      if (qword_1EDCD5E40 != -1)
      {
        swift_once();
      }

      v26 = sub_1D917744C();
      __swift_project_value_buffer(v26, qword_1EDCD5E48);
      sub_1D8D088B4(a3, v17, &qword_1ECAB75C0, &unk_1D9188A50);

      v27 = sub_1D917741C();
      v28 = sub_1D9178D1C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v62 = v30;
        *v29 = 136446466;
        *(v29 + 4) = sub_1D8CFA924(v60, v25, &v62);
        *(v29 + 12) = 2082;
        sub_1D8D088B4(v17, v14, &qword_1ECAB75C0, &unk_1D9188A50);
        v31 = sub_1D917826C();
        v33 = v32;
        sub_1D8D08A50(v17, &qword_1ECAB75C0, &unk_1D9188A50);
        v34 = sub_1D8CFA924(v31, v33, &v62);

        *(v29 + 14) = v34;
        _os_log_impl(&dword_1D8CEC000, v27, v28, "WidgetNowPlayingInfo: %{public}s has changed %{public}s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v30, -1, -1);
        MEMORY[0x1DA72CB90](v29, -1, -1);
      }

      else
      {

        sub_1D8D08A50(v17, &qword_1ECAB75C0, &unk_1D9188A50);
      }

      return 1;
    }

    return 0;
  }

  if (v24 == 1)
  {
    (*(v7 + 8))(v20, v6);
    goto LABEL_6;
  }

  v36 = *(v7 + 32);
  v37 = v58;
  v36(v58, v20, v6);
  v38 = v59;
  v36(v59, &v20[v22], v6);
  sub_1D9176E1C();
  v40 = fabs(v39);
  if (v40 <= 1.0)
  {
    v53 = *(v7 + 8);
    v53(v38, v6);
    v53(v37, v6);
    return 0;
  }

  if (qword_1EDCD5E40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D917744C();
  __swift_project_value_buffer(v41, qword_1EDCD5E48);
  v42 = v56;
  (*(v7 + 16))(v56, v37, v6);
  v43 = v61;

  v44 = sub_1D917741C();
  v45 = sub_1D9178D1C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v62 = v57;
    *v46 = 136446722;
    *(v46 + 4) = sub_1D8CFA924(v60, v43, &v62);
    *(v46 + 12) = 2048;
    *(v46 + 14) = v40;
    *(v46 + 22) = 2082;
    sub_1D8FE5E2C(&qword_1EDCD5930, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v47 = sub_1D9179A4C();
    v49 = v48;
    v50 = *(v7 + 8);
    v50(v42, v6);
    v51 = sub_1D8CFA924(v47, v49, &v62);

    *(v46 + 24) = v51;
    _os_log_impl(&dword_1D8CEC000, v44, v45, "WidgetNowPlayingInfo: %{public}s has changed by %f seconds %{public}s", v46, 0x20u);
    v52 = v57;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v52, -1, -1);
    MEMORY[0x1DA72CB90](v46, -1, -1);

    v50(v59, v6);
    v50(v37, v6);
  }

  else
  {

    v54 = *(v7 + 8);
    v54(v42, v6);
    v54(v38, v6);
    v54(v37, v6);
  }

  return 1;
}

uint64_t sub_1D8FE29C8@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v2 dataForKey_];

  if (v4)
  {
    v5 = sub_1D9176C8C();
    v7 = v6;

    sub_1D917656C();
    swift_allocObject();
    sub_1D8D752C4(v5, v7);
    sub_1D917655C();
    type metadata accessor for WidgetNowPlayingInfo(0);
    sub_1D8FE5E2C(&unk_1EDCD6230, type metadata accessor for WidgetNowPlayingInfo, &protocol conformance descriptor for WidgetNowPlayingInfo);
    sub_1D917654C();

    sub_1D8D7567C(v5, v7);

    return sub_1D8D7567C(v5, v7);
  }

  else
  {
    if (qword_1EDCD6240 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for WidgetNowPlayingInfo(0);
    v10 = __swift_project_value_buffer(v9, qword_1EDCD6248);
    sub_1D8FE4FFC(v10, a1);

    return sub_1D8D75668(0, 0xF000000000000000);
  }
}

Swift::Void __swiftcall WidgetNowPlayingInfo.logInfo()()
{
  v1 = sub_1D9176D6C();
  v66 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v65 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v56 - v6;
  v7 = type metadata accessor for WidgetNowPlayingInfo(0);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  if (*(v0 + *(v18 + 36) + 8))
  {
    v19 = 0xE300000000000000;
    v62 = 7104878;
  }

  else
  {
    v62 = sub_1D9178A4C();
    v19 = v20;
  }

  if (*(v0 + v7[8] + 8))
  {
    v21 = 0xE300000000000000;
    v61 = 7104878;
  }

  else
  {
    v61 = sub_1D9178A4C();
    v21 = v22;
  }

  if (qword_1EDCD5E40 != -1)
  {
    swift_once();
  }

  v23 = sub_1D917744C();
  __swift_project_value_buffer(v23, qword_1EDCD5E48);
  sub_1D8FE4FFC(v0, v17);
  sub_1D8FE4FFC(v0, v14);
  sub_1D8FE4FFC(v0, v11);
  v24 = v67;
  sub_1D8FE4FFC(v0, v67);

  v25 = sub_1D917741C();
  v26 = sub_1D9178D1C();

  if (os_log_type_enabled(v25, v26))
  {
    v58 = v26;
    v59 = v25;
    v60 = v1;
    v27 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v71 = v57;
    *v27 = 136447490;
    v28 = *(v17 + 1);
    v29 = v17[16];
    v68 = *v17;
    v69 = v28;
    v70 = v29;
    sub_1D8FE1240(v68, v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
    v30 = sub_1D917826C();
    v32 = v31;
    sub_1D8FE5060(v17);
    v33 = sub_1D8CFA924(v30, v32, &v71);

    *(v27 + 4) = v33;
    *(v27 + 12) = 1024;
    LODWORD(v33) = v14[17];
    sub_1D8FE5060(v14);
    *(v27 + 14) = v33;
    *(v27 + 18) = 2082;
    v34 = sub_1D8CFA924(v62, v19, &v71);

    *(v27 + 20) = v34;
    *(v27 + 28) = 2082;
    v35 = sub_1D8CFA924(v61, v21, &v71);

    *(v27 + 30) = v35;
    *(v27 + 38) = 2082;
    v36 = v7[6];
    v62 = v11;
    v37 = &v11[v36];
    v38 = v63;
    sub_1D8D088B4(v37, v63, &qword_1ECAB75C0, &unk_1D9188A50);
    v39 = sub_1D9176E3C();
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    if (v41(v38, 1, v39) == 1)
    {
      sub_1D8D08A50(v38, &qword_1ECAB75C0, &unk_1D9188A50);
      v42 = 0xE300000000000000;
      v43 = 7104878;
    }

    else
    {
      v44 = v65;
      sub_1D8FE4B10(v65);
      v43 = sub_1D9176CFC();
      v42 = v45;
      (*(v66 + 8))(v44, v60);
      (*(v40 + 8))(v38, v39);
    }

    sub_1D8FE5060(v62);
    v46 = sub_1D8CFA924(v43, v42, &v71);

    *(v27 + 40) = v46;
    *(v27 + 48) = 2082;
    v47 = v67;
    v48 = v64;
    sub_1D8D088B4(v67 + v7[7], v64, &qword_1ECAB75C0, &unk_1D9188A50);
    if (v41(v48, 1, v39) == 1)
    {
      sub_1D8D08A50(v48, &qword_1ECAB75C0, &unk_1D9188A50);
      v49 = 0xE300000000000000;
      v50 = 7104878;
    }

    else
    {
      v51 = v65;
      sub_1D8FE4B10(v65);
      v50 = sub_1D9176CFC();
      v49 = v52;
      (*(v66 + 8))(v51, v60);
      (*(v40 + 8))(v48, v39);
    }

    sub_1D8FE5060(v47);
    v53 = sub_1D8CFA924(v50, v49, &v71);

    *(v27 + 50) = v53;
    v54 = v59;
    _os_log_impl(&dword_1D8CEC000, v59, v58, "WidgetNowPlayingInfo: %{public}s, isPlaying: %{BOOL}d, duration %{public}s, timeRemaining %{public}s, start %{public}s, end %{public}s", v27, 0x3Au);
    v55 = v57;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v55, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  else
  {
    sub_1D8FE5060(v14);

    sub_1D8FE5060(v24);
    sub_1D8FE5060(v11);
    sub_1D8FE5060(v17);
  }
}

uint64_t sub_1D8FE33F8()
{
  v0 = type metadata accessor for WidgetNowPlayingInfo(0);
  __swift_allocate_value_buffer(v0, qword_1EDCD6248);
  v1 = __swift_project_value_buffer(v0, qword_1EDCD6248);
  return sub_1D8FE3444(v1);
}

uint64_t sub_1D8FE3444@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v20 = &v20 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = sub_1D9176E3C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(v7, 1, 1, v11);
  v12(v4, 1, 1, v11);
  v13 = type metadata accessor for WidgetNowPlayingInfo(0);
  v14 = v13[6];
  v12((a1 + v14), 1, 1, v11);
  v15 = v13[7];
  v12((a1 + v15), 1, 1, v11);
  v16 = a1 + v13[8];
  v17 = a1 + v13[9];
  v18 = v13[10];
  v12((a1 + v18), 1, 1, v11);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 255;
  sub_1D8CF6C70(v10, a1 + v14);
  sub_1D8CF6C70(v20, a1 + v15);
  *v16 = 0;
  *(v16 + 8) = 1;
  *v17 = 0;
  *(v17 + 8) = 1;
  return sub_1D8CF6C70(v21, a1 + v18);
}

uint64_t static WidgetNowPlayingInfo.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCD6240 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for WidgetNowPlayingInfo(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDCD6248);

  return sub_1D8FE4FFC(v3, a1);
}

uint64_t static WidgetNowPlayingInfo.saveToDefaults(info:)(uint64_t a1)
{
  v1 = type metadata accessor for WidgetNowPlayingInfo(0);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1D91765CC();
  swift_allocObject();
  sub_1D91765BC();
  sub_1D8FE5E2C(&qword_1ECAB1D68, type metadata accessor for WidgetNowPlayingInfo, &protocol conformance descriptor for WidgetNowPlayingInfo);
  v3 = sub_1D91765AC();
  v5 = v4;

  v6 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v7 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v6 setValue:v7 forKey:v8];

  return sub_1D8D7567C(v3, v5);
}

unint64_t sub_1D8FE3A84()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6E6979616C507369;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0x6E6F697461727564;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000017;
    if (v1 != 3)
    {
      v3 = 0x616D6552656D6974;
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

uint64_t sub_1D8FE3B80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FE5BCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8FE3BB4(uint64_t a1)
{
  v2 = sub_1D8FE59F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FE3BF0(uint64_t a1)
{
  v2 = sub_1D8FE59F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetNowPlayingInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88E0, &qword_1D91A45E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FE59F0();
  sub_1D9179F1C();
  v9 = *(v3 + 16);
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  sub_1D8D93C80();
  sub_1D917999C();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1D91799CC();
    type metadata accessor for WidgetNowPlayingInfo(0);
    LOBYTE(v11) = 2;
    sub_1D9176E3C();
    sub_1D8FE5E2C(&qword_1ECAB2C80, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D917999C();
    LOBYTE(v11) = 3;
    sub_1D917999C();
    LOBYTE(v11) = 4;
    sub_1D917996C();
    LOBYTE(v11) = 5;
    sub_1D917996C();
    LOBYTE(v11) = 6;
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WidgetNowPlayingInfo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = *(v1 + 16);
  v38 = v4;
  if (v14 == 255)
  {
    sub_1D9179DDC();
  }

  else
  {
    v15 = *v1;
    sub_1D9179DDC();
    if (v14)
    {
      if (v14 == 1)
      {
        MEMORY[0x1DA72B390](1);
        sub_1D917915C();
      }

      else
      {
        MEMORY[0x1DA72B390](2);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }
    }

    else
    {
      MEMORY[0x1DA72B390](0);
      MEMORY[0x1DA72B3C0](v15);
    }

    v4 = v38;
  }

  sub_1D9179DDC();
  v16 = type metadata accessor for WidgetNowPlayingInfo(0);
  sub_1D8D088B4(v1 + v16[6], v13, &qword_1ECAB75C0, &unk_1D9188A50);
  v17 = *(v4 + 48);
  if (v17(v13, 1, v3) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v18 = *(v4 + 32);
    v35 = v17;
    v19 = v37;
    v18(v37, v13, v3);
    sub_1D9179DDC();
    sub_1D8FE5E2C(&qword_1ECAB88E8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D917814C();
    v20 = v19;
    v17 = v35;
    (*(v4 + 8))(v20, v3);
  }

  sub_1D8D088B4(v1 + v16[7], v10, &qword_1ECAB75C0, &unk_1D9188A50);
  if (v17(v10, 1, v3) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v21 = v38;
    v22 = v17;
    v23 = v37;
    (*(v38 + 32))(v37, v10, v3);
    sub_1D9179DDC();
    sub_1D8FE5E2C(&qword_1ECAB88E8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D917814C();
    v24 = v23;
    v17 = v22;
    (*(v21 + 8))(v24, v3);
  }

  v25 = (v1 + v16[8]);
  if (*(v25 + 8) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v26 = *v25;
    sub_1D9179DDC();
    if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x1DA72B3C0](v27);
  }

  v28 = (v1 + v16[9]);
  if (*(v28 + 8) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v29 = *v28;
    sub_1D9179DDC();
    if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    MEMORY[0x1DA72B3C0](v30);
  }

  v31 = v36;
  sub_1D8D088B4(v2 + v16[10], v36, &qword_1ECAB75C0, &unk_1D9188A50);
  if (v17(v31, 1, v3) == 1)
  {
    return sub_1D9179DDC();
  }

  v33 = v37;
  v34 = v38;
  (*(v38 + 32))(v37, v31, v3);
  sub_1D9179DDC();
  sub_1D8FE5E2C(&qword_1ECAB88E8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D917814C();
  return (*(v34 + 8))(v33, v3);
}

uint64_t WidgetNowPlayingInfo.hashValue.getter()
{
  sub_1D9179DBC();
  WidgetNowPlayingInfo.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t WidgetNowPlayingInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v40 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v44 = v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88F0, &qword_1D91A45E8);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v40 - v10;
  v12 = type metadata accessor for WidgetNowPlayingInfo(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v17 = sub_1D9176E3C();
  v18 = *(*(v17 - 8) + 56);
  v49 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = v12[7];
  v18(&v14[v19], 1, 1, v17);
  v50 = v12[10];
  v18(&v14[v50], 1, 1, v17);
  v20 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D8FE59F0();
  v47 = v11;
  v21 = v48;
  sub_1D9179EEC();
  if (v21)
  {
    v22 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    sub_1D8FE1298(0, 0, 255);
    sub_1D8D08A50(&v14[v22], &qword_1ECAB75C0, &unk_1D9188A50);
    sub_1D8D08A50(&v14[v19], &qword_1ECAB75C0, &unk_1D9188A50);
    return sub_1D8D08A50(&v14[v50], &qword_1ECAB75C0, &unk_1D9188A50);
  }

  else
  {
    v55 = 0;
    sub_1D8D93BD8();
    sub_1D917989C();
    v23 = v19;
    v24 = v53;
    v25 = v54;
    v40[2] = v53;
    v40[3] = v52;
    *v14 = v52;
    *(v14 + 1) = v24;
    LODWORD(v48) = v25;
    v14[16] = v25;
    LOBYTE(v52) = 1;
    v26 = sub_1D91798CC();
    v27 = v49;
    v14[17] = v26 & 1;
    LOBYTE(v52) = 2;
    v28 = sub_1D8FE5E2C(&unk_1EDCD7610, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v29 = v44;
    v40[1] = v28;
    sub_1D917989C();
    sub_1D8CF6C70(v29, &v14[v27]);
    LOBYTE(v52) = 3;
    sub_1D917989C();
    sub_1D8CF6C70(v43, &v14[v23]);
    LOBYTE(v52) = 4;
    v30 = sub_1D917986C();
    v31 = &v14[v12[8]];
    *v31 = v30;
    v31[8] = v32 & 1;
    LOBYTE(v52) = 5;
    v33 = sub_1D917986C();
    v35 = &v14[v12[9]];
    *v35 = v33;
    v35[8] = v36 & 1;
    LOBYTE(v52) = 6;
    v37 = v42;
    v39 = v46;
    v38 = v47;
    sub_1D917989C();
    (*(v45 + 8))(v38, v39);
    sub_1D8CF6C70(v37, &v14[v50]);
    sub_1D8FE4FFC(v14, v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    return sub_1D8FE5060(v14);
  }
}

uint64_t sub_1D8FE4A8C()
{
  sub_1D9179DBC();
  WidgetNowPlayingInfo.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FE4AD0(uint64_t a1)
{
  sub_1D9179DBC();
  WidgetNowPlayingInfo.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FE4B10@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8908, &unk_1D91A4830);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = &v25 - v2;
  v29 = sub_1D917701C();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D9176D5C();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9176D3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9176D1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9176D2C();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 104))(&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360], v17);
  v20 = v12;
  v21 = v29;
  (*(v13 + 104))(v15, *MEMORY[0x1E6969358], v20);
  v22 = v7;
  v23 = v30;
  (*(v9 + 104))(v11, *MEMORY[0x1E6969370], v8);
  (*(v5 + 104))(v22, *MEMORY[0x1E6969380], v28);
  sub_1D9176FEC();
  result = (*(v3 + 48))(v23, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v26, v23, v21);
    return sub_1D9176D4C();
  }

  return result;
}

uint64_t sub_1D8FE4F68@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D8FE4F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetNowPlayingInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8FE4FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetNowPlayingInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8FE5060(uint64_t a1)
{
  v2 = type metadata accessor for WidgetNowPlayingInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s18PodcastsFoundation20WidgetNowPlayingInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75B8, &qword_1D9197C80);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v79 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v79 - v24;
  v26 = *(a1 + 16);
  v27 = *(a2 + 16);
  if (v26 == 255)
  {
    v87 = v10;
    v88 = v13;
    if (v27 != 255)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v27 == 255)
  {
    return 0;
  }

  v87 = v10;
  v88 = v13;
  v37 = *a1;
  v38 = *a2;
  if (v26)
  {
    v39 = *(a2 + 8);
    if (v26 == 1)
    {
      if (v27 != 1)
      {
        return 0;
      }

      v83 = v22;
      v85 = v23;
      v86 = v39;
      v84 = sub_1D8D6F530();
      v40 = v38;
      v41 = sub_1D917914C();
      sub_1D8FE1298(v38, v86, 1);
      v23 = v85;
      v22 = v83;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v27 != 2)
      {
        return 0;
      }

      if (v37 != v38 || *(a1 + 8) != v39)
      {
        v44 = v22;
        v45 = v23;
        v46 = sub_1D9179ACC();
        v23 = v45;
        v22 = v44;
        if ((v46 & 1) == 0)
        {
          return 0;
        }
      }
    }

LABEL_3:
    if (*(a1 + 17) == *(a2 + 17))
    {
      v83 = v22;
      v81 = v7;
      v28 = v23;
      v29 = type metadata accessor for WidgetNowPlayingInfo(0);
      v85 = v28;
      v86 = v4;
      v30 = v5;
      v82 = v29;
      v31 = *(v29 + 24);
      v32 = *(v28 + 48);
      sub_1D8D088B4(a1 + v31, v25, &qword_1ECAB75C0, &unk_1D9188A50);
      v33 = a2 + v31;
      v34 = v86;
      sub_1D8D088B4(v33, &v25[v32], &qword_1ECAB75C0, &unk_1D9188A50);
      v84 = v30;
      v35 = *(v30 + 48);
      if (v35(v25, 1, v34) == 1)
      {
        if (v35(&v25[v32], 1, v34) == 1)
        {
          v80 = v35;
          sub_1D8D08A50(v25, &qword_1ECAB75C0, &unk_1D9188A50);
          v36 = v81;
LABEL_25:
          v49 = v82[7];
          v50 = *(v85 + 48);
          sub_1D8D088B4(a1 + v49, v20, &qword_1ECAB75C0, &unk_1D9188A50);
          sub_1D8D088B4(a2 + v49, &v20[v50], &qword_1ECAB75C0, &unk_1D9188A50);
          v51 = v80;
          if (v80(v20, 1, v34) == 1)
          {
            if (v51(&v20[v50], 1, v34) == 1)
            {
              sub_1D8D08A50(v20, &qword_1ECAB75C0, &unk_1D9188A50);
LABEL_35:
              v56 = v82[8];
              v57 = (a1 + v56);
              v58 = *(a1 + v56 + 8);
              v59 = (a2 + v56);
              v60 = *(a2 + v56 + 8);
              if (v58)
              {
                v61 = v83;
                v62 = v85;
                if (!v60)
                {
                  return 0;
                }
              }

              else
              {
                if (*v57 != *v59)
                {
                  LOBYTE(v60) = 1;
                }

                v61 = v83;
                v62 = v85;
                if (v60)
                {
                  return 0;
                }
              }

              v63 = v82[9];
              v64 = (a1 + v63);
              v65 = *(a1 + v63 + 8);
              v66 = (a2 + v63);
              v67 = *(a2 + v63 + 8);
              if (v65)
              {
                if (!v67)
                {
                  return 0;
                }
              }

              else
              {
                if (*v64 != *v66)
                {
                  LOBYTE(v67) = 1;
                }

                if (v67)
                {
                  return 0;
                }
              }

              v68 = v82[10];
              v69 = *(v62 + 48);
              v70 = a1 + v68;
              v71 = v61;
              sub_1D8D088B4(v70, v61, &qword_1ECAB75C0, &unk_1D9188A50);
              sub_1D8D088B4(a2 + v68, v71 + v69, &qword_1ECAB75C0, &unk_1D9188A50);
              v72 = v80;
              if (v80(v71, 1, v34) == 1)
              {
                if (v72(v71 + v69, 1, v34) == 1)
                {
                  sub_1D8D08A50(v71, &qword_1ECAB75C0, &unk_1D9188A50);
                  return 1;
                }
              }

              else
              {
                v73 = v72;
                v74 = v87;
                sub_1D8D088B4(v71, v87, &qword_1ECAB75C0, &unk_1D9188A50);
                if (v73(v71 + v69, 1, v34) != 1)
                {
                  v75 = v84;
                  (*(v84 + 32))(v36, v71 + v69, v34);
                  sub_1D8FE5E2C(&qword_1ECAB75C8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
                  v76 = v74;
                  v77 = sub_1D91781BC();
                  v78 = *(v75 + 8);
                  v78(v36, v34);
                  v78(v76, v34);
                  sub_1D8D08A50(v71, &qword_1ECAB75C0, &unk_1D9188A50);
                  return (v77 & 1) != 0;
                }

                (*(v84 + 8))(v74, v34);
              }

              v42 = v71;
              goto LABEL_31;
            }
          }

          else
          {
            v52 = v88;
            sub_1D8D088B4(v20, v88, &qword_1ECAB75C0, &unk_1D9188A50);
            if (v51(&v20[v50], 1, v34) != 1)
            {
              v53 = v84;
              (*(v84 + 32))(v36, &v20[v50], v34);
              sub_1D8FE5E2C(&qword_1ECAB75C8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
              v54 = sub_1D91781BC();
              v55 = *(v53 + 8);
              v55(v36, v34);
              v55(v52, v34);
              sub_1D8D08A50(v20, &qword_1ECAB75C0, &unk_1D9188A50);
              if ((v54 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_35;
            }

            (*(v84 + 8))(v52, v34);
          }

          v42 = v20;
LABEL_31:
          sub_1D8D08A50(v42, &qword_1ECAB75B8, &qword_1D9197C80);
          return 0;
        }

LABEL_15:
        v42 = v25;
        goto LABEL_31;
      }

      sub_1D8D088B4(v25, v16, &qword_1ECAB75C0, &unk_1D9188A50);
      if (v35(&v25[v32], 1, v34) == 1)
      {
        (*(v84 + 8))(v16, v34);
        goto LABEL_15;
      }

      v80 = v35;
      v36 = v81;
      (*(v84 + 32))(v81, &v25[v32], v34);
      sub_1D8FE5E2C(&qword_1ECAB75C8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v47 = sub_1D91781BC();
      v48 = *(v84 + 8);
      v48(v36, v86);
      v48(v16, v86);
      v34 = v86;
      sub_1D8D08A50(v25, &qword_1ECAB75C0, &unk_1D9188A50);
      if (v47)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  result = 0;
  if (!v27 && v37 == v38)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t sub_1D8FE59F0()
{
  result = qword_1EDCD6270;
  if (!qword_1EDCD6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6270);
  }

  return result;
}

unint64_t sub_1D8FE5AC8()
{
  result = qword_1ECAB8900;
  if (!qword_1ECAB8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8900);
  }

  return result;
}

unint64_t sub_1D8FE5B20()
{
  result = qword_1EDCD6260;
  if (!qword_1EDCD6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6260);
  }

  return result;
}

unint64_t sub_1D8FE5B78()
{
  result = qword_1EDCD6268;
  if (!qword_1EDCD6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6268);
  }

  return result;
}

uint64_t sub_1D8FE5BCC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D91D1D60 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D1D80 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D91D1D40 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616D6552656D6974 && a2 == 0xED0000676E696E69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D91D1D20 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D9179ACC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D8FE5E2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AdamID.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8FE6EA0(a1);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

unsigned __int8 *AdamID.init(value:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D8FE6808(a1, a2);

  return v2;
}

uint64_t AdamID.longValue.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

id AdamID.numberValue.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedLongLong_];
}

unsigned __int8 *AdamID.init(_:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D8FE6808(a1, a2);

  return v2;
}

unint64_t AdamID.debugDescription.getter()
{
  sub_1D917946C();

  v0 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v0);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return 0xD000000000000011;
}

unint64_t AdamID.ParseError.description.getter()
{
  result = 0xD000000000000026;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000027;
    }

    else
    {
      v3 = *v0;
      sub_1D917946C();
      MEMORY[0x1DA7298F0](0xD000000000000030, 0x80000001D91D1DA0);
      MEMORY[0x1DA7298F0](v3, v2);
      MEMORY[0x1DA7298F0](34, 0xE100000000000000);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8FE61E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8918, &qword_1D91A4B18);
  __swift_allocate_value_buffer(v0, qword_1EDCD5F30);
  __swift_project_value_buffer(v0, qword_1EDCD5F30);
  return sub_1D917715C();
}

void *sub_1D8FE631C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8FE6F88(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AdamID.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  v4[6] = a2;
  sub_1D8E40D20();
  sub_1D917927C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1D8FE6410(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  v4[6] = v2;
  sub_1D8E40D20();
  sub_1D917927C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unsigned __int8 *AdamID.init(metricsFieldValue:)(void *a1)
{
  sub_1D8CFAD1C(a1, v6);
  if (swift_dynamicCast())
  {
    v2 = sub_1D8FE6808(v4, v5);

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v2;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return 0;
  }
}

uint64_t AdamID.metricsFieldRepresentation()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8E40D20();
  result = sub_1D917927C();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8FE6628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v9);
  if (swift_dynamicCast())
  {
    v4 = sub_1D8FE6808(v7, v8);

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v6 = 0;
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v4 = 0;
    v6 = 1;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1D8FE66E4@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8E40D20();
  result = sub_1D917927C();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v3;
  return result;
}

id AdamID.init(value:)(void *a1)
{
  v2 = [a1 unsignedLongLongValue];

  return v2;
}

unsigned __int8 *_sSS18PodcastsFoundationE6adamIDAA04AdamD0VSgvg_0(uint64_t a1, unint64_t a2)
{

  v4 = sub_1D8FE6808(a1, a2);

  return v4;
}

unsigned __int8 *sub_1D8FE6808(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8918, &qword_1D91A4B18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8920, &qword_1D91A4B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v43 - v10;
  v12 = HIBYTE(a2) & 0xF;
  v13 = v9 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    sub_1D8FE71C4();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    goto LABEL_17;
  }

  if (v9 == 48 && a2 == 0xE100000000000000 || (v44 = v9, (sub_1D9179ACC() & 1) != 0))
  {
    sub_1D8FE71C4();
    swift_allocError();
    *v15 = xmmword_1D918F800;
LABEL_17:
    swift_willThrow();
    return v11;
  }

  v43 = a2;
  if (qword_1EDCD5F28 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EDCD5F30);
  sub_1D8FE70F8();
  sub_1D917714C();
  sub_1D91783EC();
  sub_1D917716C();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8928, &qword_1D91A4B28);
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
LABEL_15:
    sub_1D8FE715C(v11);
    sub_1D8FE71C4();
    swift_allocError();
    *v19 = v44;
LABEL_16:
    v19[1] = v43;

    goto LABEL_17;
  }

  (*(v5 + 8))(v7, v4);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8928, &qword_1D91A4B28);
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
  {
    goto LABEL_15;
  }

  result = sub_1D8FE715C(v11);
  v21 = v43;
  if ((v43 & 0x1000000000000000) != 0)
  {

    v38 = v44;
    sub_1D8FF6C8C(v44, v21, 10);
    v11 = v39;
    v41 = v40;

    v22 = v38;
    if ((v41 & 1) == 0)
    {
      return v11;
    }

LABEL_79:
    v37 = v22;
    sub_1D8FE71C4();
    swift_allocError();
    *v19 = v37;
    goto LABEL_16;
  }

  v22 = v44;
  if ((v43 & 0x2000000000000000) == 0)
  {
    if ((v44 & 0x1000000000000000) != 0)
    {
      result = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1D917957C();
      v22 = v44;
      v13 = v42;
    }

    v23 = *result;
    if (v23 == 43)
    {
      if (v13 >= 1)
      {
        v24 = v13 - 1;
        if (v13 != 1)
        {
          v11 = 0;
          if (result)
          {
            v30 = result + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                goto LABEL_77;
              }

              if (!is_mul_ok(v11, 0xAuLL))
              {
                goto LABEL_77;
              }

              v27 = __CFADD__(10 * v11, v31);
              v11 = 10 * v11 + v31;
              if (v27)
              {
                goto LABEL_77;
              }

              ++v30;
              if (!--v24)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_76;
        }

        goto LABEL_77;
      }

      goto LABEL_85;
    }

    if (v23 != 45)
    {
      if (v13)
      {
        v11 = 0;
        if (result)
        {
          while (1)
          {
            v34 = *result - 48;
            if (v34 > 9)
            {
              goto LABEL_77;
            }

            if (!is_mul_ok(v11, 0xAuLL))
            {
              goto LABEL_77;
            }

            v27 = __CFADD__(10 * v11, v34);
            v11 = 10 * v11 + v34;
            if (v27)
            {
              goto LABEL_77;
            }

            ++result;
            if (!--v13)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_77:
      v11 = 0;
      LOBYTE(v24) = 1;
LABEL_78:
      v46 = v24;
      if ((v24 & 1) == 0)
      {
        return v11;
      }

      goto LABEL_79;
    }

    if (v13 >= 1)
    {
      v24 = v13 - 1;
      if (v13 != 1)
      {
        v11 = 0;
        if (result)
        {
          v25 = result + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_77;
            }

            if (!is_mul_ok(v11, 0xAuLL))
            {
              goto LABEL_77;
            }

            v27 = 10 * v11 >= v26;
            v11 = 10 * v11 - v26;
            if (!v27)
            {
              goto LABEL_77;
            }

            ++v25;
            if (!--v24)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_76:
        LOBYTE(v24) = 0;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v45[0] = v44;
  v45[1] = v43 & 0xFFFFFFFFFFFFFFLL;
  if (v44 != 43)
  {
    if (v44 != 45)
    {
      if (v12)
      {
        v11 = 0;
        v35 = v45;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          if (!is_mul_ok(v11, 0xAuLL))
          {
            break;
          }

          v27 = __CFADD__(10 * v11, v36);
          v11 = 10 * v11 + v36;
          if (v27)
          {
            break;
          }

          ++v35;
          if (!--v12)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_77;
    }

    if (v12)
    {
      v24 = v12 - 1;
      if (v12 != 1)
      {
        v11 = 0;
        v28 = v45 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          if (!is_mul_ok(v11, 0xAuLL))
          {
            break;
          }

          v27 = 10 * v11 >= v29;
          v11 = 10 * v11 - v29;
          if (!v27)
          {
            break;
          }

          ++v28;
          if (!--v24)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_84;
  }

  if (v12)
  {
    v24 = v12 - 1;
    if (v12 != 1)
    {
      v11 = 0;
      v32 = v45 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        if (!is_mul_ok(v11, 0xAuLL))
        {
          break;
        }

        v27 = __CFADD__(10 * v11, v33);
        v11 = 10 * v11 + v33;
        if (v27)
        {
          break;
        }

        ++v32;
        if (!--v24)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_77;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1D8FE6EA0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_1D8FE70A4();
  sub_1D917968C();
  return v5[1];
}

void *sub_1D8FE6F88(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v4 = sub_1D9179ADC();
    v3 = sub_1D8FE6808(v4, v5);

    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation6AdamIDV10ParseErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D8FE70A4()
{
  result = qword_1ECAB8910;
  if (!qword_1ECAB8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8910);
  }

  return result;
}

unint64_t sub_1D8FE70F8()
{
  result = qword_1EDCD7600;
  if (!qword_1EDCD7600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8918, &qword_1D91A4B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7600);
  }

  return result;
}

uint64_t sub_1D8FE715C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8920, &qword_1D91A4B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8FE71C4()
{
  result = qword_1ECAB1150;
  if (!qword_1ECAB1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1150);
  }

  return result;
}

uint64_t PodcastsURLEpisodeParameters.podcastUuid.getter()
{
  v1 = *v0;

  return v1;
}

void PodcastsURLEpisodeParameters.podcastUuid.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t PodcastsURLEpisodeParameters.episodeUuid.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void PodcastsURLEpisodeParameters.episodeUuid.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t PodcastsURLEpisodeParameters.storeCollectionId.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t PodcastsURLEpisodeParameters.storeTrackId.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t PodcastsURLEpisodeParameters.init(podcastUuid:episodeUuid:storeCollectionId:storeTrackId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

uint64_t PodcastsURLEpisodeCommand.episodeParameters.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 57);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1D8FE7470(v7, &v6);
}

double sub_1D8FE74D8()
{

  return result;
}

__n128 PodcastsURLPlayCommand.__allocating_init(params:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v2 + 57) = result;
  return result;
}

_OWORD *PodcastsURLPlayCommand.init(params:)(_OWORD *a1)
{
  v2 = a1[1];
  v1[1] = *a1;
  v1[2] = v2;
  v1[3] = a1[2];
  *(v1 + 57) = *(a1 + 41);
  return v1;
}

uint64_t sub_1D8FE7580()
{

  return v0;
}

uint64_t sub_1D8FE75B8()
{

  return swift_deallocClassInstance();
}

double static PodcastsURLScheme.commandType(for:)(uint64_t a1)
{
  v1 = sub_1D9176BAC();
  if (v2)
  {
    v4 = v1;
    v5 = v2;
    if (v1 == 0x6979616C50776F6ELL && v2 == 0xEA0000000000676ELL || (sub_1D9179ACC() & 1) != 0)
    {

      type metadata accessor for PodcastsURLNowPlayingCommand();
LABEL_6:
      swift_allocObject();
      return result;
    }

    if (v4 == 1852141679 && v5 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
    {

      type metadata accessor for PodcastsURLOpenCommand();
      goto LABEL_6;
    }

    if (v4 == 2003789939 && v5 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
    {

      sub_1D8FE7830(&v11);
      v6 = *(&v11 + 1);
      v7 = v11;
      v14 = v12;
      v15[0] = v13[0];
      result = *(v13 + 9);
      *(v15 + 9) = *(v13 + 9);
      if (*(&v11 + 1) == 1)
      {
        return result;
      }

      type metadata accessor for PodcastsURLShowCommand();
LABEL_17:
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v6;
      v9 = v15[0];
      *(v8 + 32) = v14;
      *(v8 + 48) = v9;
      result = *(v15 + 9);
      *(v8 + 57) = *(v15 + 9);
      return result;
    }

    if (v4 == 2036427888 && v5 == 0xE400000000000000)
    {
    }

    else
    {
      v10 = sub_1D9179ACC();

      if ((v10 & 1) == 0)
      {
        return result;
      }
    }

    sub_1D8FE7830(&v11);
    v6 = *(&v11 + 1);
    v7 = v11;
    v14 = v12;
    v15[0] = v13[0];
    result = *(v13 + 9);
    *(v15 + 9) = *(v13 + 9);
    if (*(&v11 + 1) != 1)
    {
      type metadata accessor for PodcastsURLPlayCommand();
      goto LABEL_17;
    }
  }

  return result;
}

double sub_1D8FE7830@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_1D9176B1C();
  v3 = [v2 pf_queryAsDictionary];

  if (v3)
  {
    v4 = sub_1D917805C();

    *&v33 = 0x5574736163646F70;
    *(&v33 + 1) = 0xEB00000000646975;
    sub_1D91793EC();
    if (*(v4 + 16) && (v5 = sub_1D8D6550C(&v36), (v6 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v4 + 56) + 32 * v5, &v33);
      sub_1D8D9A308(&v36);
      v7 = swift_dynamicCast();
      if (v7)
      {
        v8 = v31;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        v9 = v32;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      sub_1D8D9A308(&v36);
      v8 = 0;
      v9 = 0;
    }

    *&v33 = 0x4974736163646F70;
    *(&v33 + 1) = 0xE900000000000064;

    sub_1D91793EC();
    if (*(v4 + 16) && (v10 = sub_1D8D6550C(&v36), (v11 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v4 + 56) + 32 * v10, &v33);
      sub_1D8D9A308(&v36);
    }

    else
    {
      sub_1D8D9A308(&v36);
      v33 = 0u;
      v34 = 0u;
    }

    v12 = sub_1D8FE827C(&v33);
    v14 = v13;
    sub_1D8D64450(&v33);
    v47 = v14 & 1;
    *&v33 = 0x5565646F73697065;
    *(&v33 + 1) = 0xEB00000000646975;
    sub_1D91793EC();
    if (*(v4 + 16) && (v15 = sub_1D8D6550C(&v36), (v16 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v4 + 56) + 32 * v15, &v33);
      sub_1D8D9A308(&v36);
      v17 = swift_dynamicCast();
      if (v17)
      {
        v18 = v31;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = v32;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      sub_1D8D9A308(&v36);
      v18 = 0;
      v19 = 0;
    }

    *&v33 = 0x4965646F73697065;
    *(&v33 + 1) = 0xE900000000000064;
    sub_1D91793EC();
    if (*(v4 + 16) && (v20 = sub_1D8D6550C(&v36), (v21 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v4 + 56) + 32 * v20, &v33);
      sub_1D8D9A308(&v36);
    }

    else
    {

      sub_1D8D9A308(&v36);
      v33 = 0u;
      v34 = 0u;
    }

    v22 = sub_1D8FE827C(&v33);
    v24 = v23;
    sub_1D8D64450(&v33);
    v45 = v24 & 1;
    if (v9)
    {
    }

    else if (v14 & 1) != 0 && !v19 && (v24)
    {
      *a1 = xmmword_1D918F800;
      a1[1] = 0u;
      a1[2] = 0u;
      *(a1 + 41) = 0u;
      v36 = v8;
      v37 = 0;
      v38 = v18;
      v39 = 0;
      v40 = v12;
      v41 = v47;
      *v42 = *v46;
      *&v42[3] = *&v46[3];
      v43 = v22;
      v44 = v45;
      goto LABEL_31;
    }

    *&v33 = v8;
    *(&v33 + 1) = v9;
    *&v34 = v18;
    *(&v34 + 1) = v19;
    *v35 = v12;
    v35[8] = v47;
    v25 = v47;
    *&v35[12] = *&v46[3];
    *&v35[9] = *v46;
    *&v35[16] = v22;
    v35[24] = v45;
    v26 = v45;
    v27 = v33;
    v28 = v34;
    v29 = *v35;
    *(a1 + 41) = *&v35[9];
    a1[1] = v28;
    a1[2] = v29;
    *a1 = v27;
    v36 = v8;
    v37 = v9;
    v38 = v18;
    v39 = v19;
    v40 = v12;
    v41 = v25;
    *&v42[3] = *&v46[3];
    *v42 = *v46;
    v43 = v22;
    v44 = v26;
    sub_1D8FE7470(&v33, &v31);
LABEL_31:
    sub_1D8FE89C4(&v36);
    return result;
  }

  result = 0.0;
  *a1 = xmmword_1D918F800;
  a1[1] = 0u;
  a1[2] = 0u;
  *(a1 + 41) = 0u;
  return result;
}

uint64_t static PodcastsURLScheme.buildURL(for:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1D91767FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastsURLNowPlayingCommand();
  if (swift_dynamicCastClass())
  {
    sub_1D91767EC();
    sub_1D91767AC();
    v8 = 0x6979616C50776F6ELL;
    v9 = 0xEA0000000000676ELL;
LABEL_5:
    MEMORY[0x1DA727D30](v8, v9);
    sub_1D917674C();
    return (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for PodcastsURLOpenCommand();
  if (swift_dynamicCastClass())
  {
    sub_1D91767EC();
    sub_1D91767AC();
    v8 = 1852141679;
    v9 = 0xE400000000000000;
    goto LABEL_5;
  }

  type metadata accessor for PodcastsURLShowCommand();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v13 = 2003789939;
    return sub_1D8FE7F04(v11, v13, v12);
  }

  type metadata accessor for PodcastsURLPlayCommand();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v13 = 2036427888;
    return sub_1D8FE7F04(v11, v13, v12);
  }

  v14 = sub_1D9176C2C();
  v15 = *(*(v14 - 8) + 56);

  return v15(a2, 1, 1, v14);
}

uint64_t sub_1D8FE7F04(_OWORD *a1, uint64_t a2, double a3)
{
  v5 = sub_1D91767FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91767EC();
  sub_1D91767AC();
  MEMORY[0x1DA727D30](a2, 0xE400000000000000);
  v9 = a1[2];
  v16[0] = a1[1];
  v16[1] = v9;
  v11 = a1[1];
  v10 = a1[2];
  v17[0] = a1[3];
  *(v17 + 9) = *(a1 + 57);
  v13 = v11;
  v14 = v10;
  v15[0] = a1[3];
  *(v15 + 9) = *(a1 + 57);
  sub_1D8FE7470(v16, v18);
  sub_1D8FE85CC(&v13);
  v18[0] = v13;
  v18[1] = v14;
  v19[0] = v15[0];
  *(v19 + 9) = *(v15 + 9);
  sub_1D8FE89C4(v18);
  sub_1D917671C();
  sub_1D917674C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D8FE8088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FE80E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D8FE827C(uint64_t a1)
{
  sub_1D8FE89F4(a1, v31);
  if (!v31[3])
  {
    sub_1D8D64450(v31);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v30;
  v2 = HIBYTE(v30) & 0xF;
  v3 = v29 & 0xFFFFFFFFFFFFLL;
  if ((v30 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v30) & 0xF;
  }

  else
  {
    v4 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((v30 & 0x1000000000000000) == 0)
  {
    if ((v30 & 0x2000000000000000) != 0)
    {
      v31[0] = v29;
      v31[1] = v30 & 0xFFFFFFFFFFFFFFLL;
      if (v29 == 43)
      {
        if (v2)
        {
          v5 = (v2 - 1);
          if (v2 != 1)
          {
            v8 = 0;
            v19 = v31 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v5)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_76:
        __break(1u);
        return result;
      }

      if (v29 != 45)
      {
        if (v2)
        {
          v8 = 0;
          v24 = v31;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v2)
            {
LABEL_64:
              LOBYTE(v5) = 0;
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v2)
      {
        v5 = (v2 - 1);
        if (v2 != 1)
        {
          v8 = 0;
          v12 = v31 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v5)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v29 & 0x1000000000000000) != 0)
      {
        v5 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_1D917957C();
        result = v30;
      }

      v6 = *v5;
      if (v6 == 43)
      {
        if (v3 >= 1)
        {
          v15 = v3 - 1;
          if (v3 != 1)
          {
            v8 = 0;
            if (v5)
            {
              v16 = v5 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  goto LABEL_65;
                }

                v18 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_65;
                }

                v8 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  goto LABEL_65;
                }

                ++v16;
                if (!--v15)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_66;
          }

          goto LABEL_65;
        }

        goto LABEL_75;
      }

      if (v6 != 45)
      {
        if (v3)
        {
          v8 = 0;
          if (v5)
          {
            while (1)
            {
              v22 = *v5 - 48;
              if (v22 > 9)
              {
                goto LABEL_65;
              }

              v23 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_65;
              }

              v8 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_65;
              }

              ++v5;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_66;
        }

LABEL_65:
        v8 = 0;
        LOBYTE(v5) = 1;
        goto LABEL_66;
      }

      if (v3 >= 1)
      {
        v7 = v3 - 1;
        if (v3 != 1)
        {
          v8 = 0;
          if (v5)
          {
            v9 = v5 + 1;
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_65;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_65;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_65;
              }

              ++v9;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_66:
          v27 = v5;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v8 = sub_1D8FF7E64();
  v27 = v28;
LABEL_67:

  if (v27)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

char *sub_1D8FE85CC(uint64_t a1)
{
  v2 = sub_1D91766EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (*(a1 + 8))
  {
    v15 = *(a1 + 24);
    v40 = *(a1 + 16);
    sub_1D91766BC();
    v16 = sub_1D8D8EDF4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1D8D8EDF4((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v21 = *(v3 + 32);
    v20 = v3 + 32;
    v19 = v21;
    v22 = (*(v20 + 48) + 32) & ~*(v20 + 48);
    v23 = *(v20 + 40);
    v21(&v16[v22 + v23 * v18], v14, v2);
    if (v15)
    {
      sub_1D91766BC();
      v25 = *(v16 + 2);
      v24 = *(v16 + 3);
      if (v25 >= v24 >> 1)
      {
        v16 = sub_1D8D8EDF4((v24 > 1), v25 + 1, 1, v16);
      }

      *(v16 + 2) = v25 + 1;
      v26 = &v16[v22 + v25 * v23];
      v27 = v11;
LABEL_8:
      v19(v26, v27, v2);
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      return MEMORY[0x1E69E7CC0];
    }

    v28 = *(a1 + 32);
    v39 = *(a1 + 48);
    LODWORD(v40) = *(a1 + 56);
    v41 = v28;
    sub_1D9179A4C();
    sub_1D91766BC();

    v16 = sub_1D8D8EDF4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v30 = *(v16 + 2);
    v29 = *(v16 + 3);
    if (v30 >= v29 >> 1)
    {
      v16 = sub_1D8D8EDF4((v29 > 1), v30 + 1, 1, v16);
    }

    *(v16 + 2) = v30 + 1;
    v32 = *(v3 + 32);
    v31 = v3 + 32;
    v19 = v32;
    v33 = (*(v31 + 48) + 32) & ~*(v31 + 48);
    v34 = *(v31 + 40);
    v32(&v16[v33 + v34 * v30], v8, v2);
    if ((v40 & 1) == 0)
    {
      v41 = v39;
      sub_1D9179A4C();
      sub_1D91766BC();

      v37 = *(v16 + 2);
      v36 = *(v16 + 3);
      if (v37 >= v36 >> 1)
      {
        v16 = sub_1D8D8EDF4((v36 > 1), v37 + 1, 1, v16);
      }

      *(v16 + 2) = v37 + 1;
      v26 = &v16[v33 + v37 * v34];
      v27 = v5;
      goto LABEL_8;
    }
  }

  return v16;
}

uint64_t sub_1D8FE89F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D8FE8AB0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 adamID];
  if (v9)
  {
    v10 = v9 == 1000000000000;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  else
  {
    v11 = v9;
    v12 = [a1 lastUpdatedDate];
    sub_1D9176DFC();

    sub_1D9176DDC();
    v14 = v13;
    (*(v5 + 8))(v8, v4);

    *a2 = v11;
    *(a2 + 8) = floor(v14 * 1000.0);
    *(a2 + 16) = 0;
  }
}

uint64_t RecommendationsMetadata.Analytics.clientID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecommendationsMetadata.Analytics.userID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall RecommendationsMetadata.Analytics.init(clientID:userID:userAllowsPersonalization:userIsManagedAccount:userIsUnder13:)(PodcastsFoundation::RecommendationsMetadata::Analytics *__return_ptr retstr, Swift::String_optional clientID, Swift::String_optional userID, Swift::Bool userAllowsPersonalization, Swift::Bool userIsManagedAccount, Swift::Bool userIsUnder13)
{
  retstr->clientID = clientID;
  retstr->userID = userID;
  retstr->userAllowsPersonalization = userAllowsPersonalization;
  retstr->userIsManagedAccount = userIsManagedAccount;
  retstr->userIsUnder13 = userIsUnder13;
}

__n128 RecommendationsMetadata.Analytics.init(from:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *&a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId + 8];
  v5 = a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization];
  v6 = a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount];
  v7 = *&a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId + 8];
  v8 = a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld];
  v12 = *&a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  v11 = *&a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];

  *&v9 = v11;
  result.n128_u64[0] = v12;
  *(&v9 + 1) = v4;
  result.n128_u64[1] = v7;
  *a2 = v9;
  *(a2 + 16) = result;
  *(a2 + 32) = v5;
  *(a2 + 33) = v6;
  *(a2 + 34) = v8;
  return result;
}

PodcastsFoundation::RecommendationsMetadata::Categories __swiftcall RecommendationsMetadata.Categories.init(liked:disliked:)(Swift::OpaquePointer liked, Swift::OpaquePointer disliked)
{
  v2->_rawValue = liked._rawValue;
  v2[1]._rawValue = disliked._rawValue;
  result.disliked = disliked;
  result.liked = liked;
  return result;
}

PodcastsFoundation::RecommendationsMetadata::Categories __swiftcall RecommendationsMetadata.Categories.init(from:dislikedInterests:)(Swift::OpaquePointer from, Swift::OpaquePointer dislikedInterests)
{
  v47 = v2;
  v49 = type metadata accessor for InterestModel(0);
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](from._rawValue);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v45 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = *(v15 + 16);
  rawValue = dislikedInterests._rawValue;
  if (v18)
  {
    v19 = *(v5 + 80);
    v45 = v15;
    v46 = v5;
    v20 = v15 + ((v19 + 32) & ~v19);
    v21 = *(v5 + 72);
    v50 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8FEE37C(v20, v17);
      sub_1D8FEE37C(v17, v10);
      v22 = *v10;
      if (*v10 == 1000000000000 || v22 == 0)
      {
        sub_1D8E28498(v10);
        sub_1D8E28498(v17);
      }

      else
      {
        sub_1D9176DDC();
        v25 = v24;
        sub_1D8E28498(v10);
        sub_1D8E28498(v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1D8ECD5B4(0, *(v50 + 2) + 1, 1, v50);
        }

        v27 = *(v50 + 2);
        v26 = *(v50 + 3);
        if (v27 >= v26 >> 1)
        {
          v50 = sub_1D8ECD5B4((v26 > 1), v27 + 1, 1, v50);
        }

        v28 = v50;
        *(v50 + 2) = v27 + 1;
        v29 = &v28[16 * v27];
        *(v29 + 4) = v22;
        *(v29 + 5) = floor(v25 * 1000.0);
      }

      v20 += v21;
      --v18;
    }

    while (v18);

    dislikedInterests._rawValue = rawValue;
    v5 = v46;
    v30 = rawValue[2];
    if (v30)
    {
      goto LABEL_15;
    }

LABEL_29:

    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v50 = MEMORY[0x1E69E7CC0];
  v30 = *(dislikedInterests._rawValue + 2);
  if (!v30)
  {
    goto LABEL_29;
  }

LABEL_15:
  v31 = dislikedInterests._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v32 = *(v5 + 72);
  v33 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D8FEE37C(v31, v13);
    sub_1D8FEE37C(v13, v7);
    v34 = *v7;
    if (*v7 == 1000000000000 || v34 == 0)
    {
      sub_1D8E28498(v7);
      sub_1D8E28498(v13);
    }

    else
    {
      sub_1D9176DDC();
      v37 = v36;
      sub_1D8E28498(v7);
      sub_1D8E28498(v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1D8ECD5B4(0, *(v33 + 2) + 1, 1, v33);
      }

      v39 = *(v33 + 2);
      v38 = *(v33 + 3);
      if (v39 >= v38 >> 1)
      {
        v33 = sub_1D8ECD5B4((v38 > 1), v39 + 1, 1, v33);
      }

      *(v33 + 2) = v39 + 1;
      v40 = &v33[16 * v39];
      *(v40 + 4) = v34;
      *(v40 + 5) = floor(v37 * 1000.0);
    }

    v31 += v32;
    --v30;
  }

  while (v30);

LABEL_30:
  v43 = v47;
  *v47 = v50;
  v43[1] = v33;
  result.disliked._rawValue = v42;
  result.liked._rawValue = v41;
  return result;
}

{
  v53 = v2;
  v52 = sub_1D9176E3C();
  v5 = *(v52 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v52);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = from._rawValue & 0xFFFFFFFFFFFFFF8;
  if (from._rawValue >> 62)
  {
LABEL_55:
    v10 = sub_1D917935C();
  }

  else
  {
    v10 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = (v5 + 8);
  if (!v10)
  {
    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v11 = 0;
  v5 = from._rawValue & 0xC000000000000001;
  v54 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = v11;
    while (1)
    {
      if (v5)
      {
        v14 = MEMORY[0x1DA72AA90](v12, from._rawValue, v6);
      }

      else
      {
        if (v12 >= *(v9 + 16))
        {
          goto LABEL_52;
        }

        v14 = *(from._rawValue + v12 + 4);
      }

      v15 = v14;
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v16 = [v14 category];
      if (v16)
      {
        break;
      }

      v13 = v15;
LABEL_7:

      ++v12;
      if (v11 == v10)
      {
        goto LABEL_27;
      }
    }

    v13 = v16;
    v17 = [v16 adamID];
    if (v17 == 1000000000000 || v17 == 0)
    {

      goto LABEL_7;
    }

    v50 = v17;
    v19 = [v15 lastUpdatedDate];
    sub_1D9176DFC();

    sub_1D9176DDC();
    v21 = v20;
    (*v51)(v8, v52);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v54 = sub_1D8ECD5B4(0, *(v54 + 2) + 1, 1, v54);
    }

    v24 = *(v54 + 2);
    v23 = *(v54 + 3);
    v25 = v50;
    if (v24 >= v23 >> 1)
    {
      v54 = sub_1D8ECD5B4((v23 > 1), v24 + 1, 1, v54);
      v25 = v50;
    }

    v6.n128_f64[0] = floor(v21 * 1000.0);
    v26 = v54;
    *(v54 + 2) = v24 + 1;
    v27 = &v26[16 * v24];
    *(v27 + 4) = v25;
    *(v27 + 5) = v6.n128_u64[0];
  }

  while (v11 != v10);
LABEL_27:

  v9 = dislikedInterests._rawValue & 0xFFFFFFFFFFFFFF8;
  if (dislikedInterests._rawValue >> 62)
  {
    from._rawValue = sub_1D917935C();
    if (from._rawValue)
    {
      goto LABEL_29;
    }
  }

  else
  {
    from._rawValue = *((dislikedInterests._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (from._rawValue)
    {
LABEL_29:
      v28 = 0;
      v5 = MEMORY[0x1E69E7CC0];
LABEL_30:
      v29 = v28;
      while (1)
      {
        if ((dislikedInterests._rawValue & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1DA72AA90](v29, dislikedInterests._rawValue);
        }

        else
        {
          if (v29 >= *((dislikedInterests._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v31 = *(dislikedInterests._rawValue + v29 + 4);
        }

        v32 = v31;
        v28 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v33 = [v31 category];
        if (v33)
        {
          v30 = v33;
          v34 = [v33 adamID];
          if (v34 != 1000000000000 && v34 != 0)
          {
            v50 = v34;
            v36 = [v32 lastUpdatedDate];
            sub_1D9176DFC();

            sub_1D9176DDC();
            v38 = v37;
            (*v51)(v8, v52);

            v39 = v5;
            v40 = swift_isUniquelyReferenced_nonNull_native();
            if ((v40 & 1) == 0)
            {
              v39 = sub_1D8ECD5B4(0, *(v5 + 16) + 1, 1, v5);
            }

            v42 = *(v39 + 2);
            v41 = *(v39 + 3);
            v43 = v50;
            if (v42 >= v41 >> 1)
            {
              v39 = sub_1D8ECD5B4((v41 > 1), v42 + 1, 1, v39);
              v43 = v50;
            }

            v5 = v39;
            *(v39 + 2) = v42 + 1;
            v44 = &v39[16 * v42];
            *(v44 + 4) = v43;
            *(v44 + 5) = floor(v38 * 1000.0);
            if (v28 != from._rawValue)
            {
              goto LABEL_30;
            }

            goto LABEL_58;
          }
        }

        else
        {
          v30 = v32;
        }

        ++v29;
        if (v28 == from._rawValue)
        {
          goto LABEL_58;
        }
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_58:

  v47 = v53;
  *v53 = v54;
  v47[1] = v5;
  result.disliked._rawValue = v46;
  result.liked._rawValue = v45;
  return result;
}

uint64_t RecommendationsMetadata.Categories.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = v3 == 1000000000000;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    result = sub_1D8E28498(a1);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  else
  {
    type metadata accessor for InterestModel(0);
    sub_1D9176DDC();
    v7 = floor(v6 * 1000.0);
    result = sub_1D8E28498(a1);
    *a2 = v3;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t static RecommendationsMetadata.Categories.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  if (v4)
  {
    v6 = v2 == v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return sub_1D8E89BF4();
  }

  v7 = (v2 + 40);
  v8 = (v3 + 40);
  while (v4)
  {
    if (*(v7 - 1) != *(v8 - 1) || *v7 != *v8)
    {
      return 0;
    }

    v7 += 2;
    v8 += 2;
    if (!--v4)
    {
      return sub_1D8E89BF4();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8FE9784()
{
  if (*v0)
  {
    return 0x64656B696C736964;
  }

  else
  {
    return 0x64656B696CLL;
  }
}

void sub_1D8FE97BC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656B696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x64656B696C736964 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

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

uint64_t sub_1D8FE9894(uint64_t a1)
{
  v2 = sub_1D8FEE77C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FE98D0(uint64_t a1)
{
  v2 = sub_1D8FEE77C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FE990C()
{
  if ((sub_1D8E89BF4() & 1) == 0)
  {
    return 0;
  }

  return sub_1D8E89BF4();
}

PodcastsFoundation::RecommendationsMetadata::Channels __swiftcall RecommendationsMetadata.Channels.init(subscribed:liked:disliked:)(Swift::OpaquePointer subscribed, Swift::OpaquePointer liked, Swift::OpaquePointer disliked)
{
  v3[1]._rawValue = liked._rawValue;
  v3[2]._rawValue = disliked._rawValue;
  v3->_rawValue = subscribed._rawValue;
  result.disliked = disliked;
  result.liked = liked;
  result.subscribed = subscribed;
  return result;
}

PodcastsFoundation::RecommendationsMetadata::Channels __swiftcall RecommendationsMetadata.Channels.init(from:favoritedChannels:dislikedChannels:)(Swift::OpaquePointer from, Swift::OpaquePointer favoritedChannels, Swift::OpaquePointer dislikedChannels)
{
  v35 = v3;
  rawValue = favoritedChannels._rawValue;
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(from._rawValue >> 62))
  {
    v12 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_27:
    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

LABEL_26:
  v24 = isUniquelyReferenced_nonNull_native;
  v12 = sub_1D917935C();
  isUniquelyReferenced_nonNull_native = v24;
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_3:
  v13 = 0;
  v32 = (v7 + 8);
  v33 = isUniquelyReferenced_nonNull_native;
  v37 = MEMORY[0x1E69E7CC0];
  v7 = 1000000000000;
  v34 = dislikedChannels._rawValue;
  do
  {
    dislikedChannels._rawValue = v13;
    while (1)
    {
      if ((from._rawValue & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x1DA72AA90](dislikedChannels._rawValue, from._rawValue, v9);
      }

      else
      {
        if (dislikedChannels._rawValue >= *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        isUniquelyReferenced_nonNull_native = *(from._rawValue + dislikedChannels._rawValue + 4);
      }

      v14 = isUniquelyReferenced_nonNull_native;
      v13 = dislikedChannels._rawValue + 1;
      if (__OFADD__(dislikedChannels._rawValue, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 = [isUniquelyReferenced_nonNull_native storeId];
      if ((v15 & 0x8000000000000000) == 0 && v15 != 1000000000000 && v15 != 0)
      {
        break;
      }

      ++dislikedChannels._rawValue;
      if (v13 == v12)
      {
        dislikedChannels._rawValue = v34;
        goto LABEL_28;
      }
    }

    v31 = v15;
    [v14 subscriptionEnabledDate];
    sub_1D9176CBC();
    sub_1D9176DDC();
    v18 = v17;
    (*v32)(v11, v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1D8ECD5C8(0, *(v37 + 2) + 1, 1, v37);
      v37 = isUniquelyReferenced_nonNull_native;
    }

    v20 = *(v37 + 2);
    v19 = *(v37 + 3);
    v21 = v31;
    if (v20 >= v19 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D8ECD5C8((v19 > 1), v20 + 1, 1, v37);
      v37 = isUniquelyReferenced_nonNull_native;
      v21 = v31;
    }

    v9.n128_f64[0] = floor(v18 * 1000.0);
    v22 = v37;
    *(v37 + 2) = v20 + 1;
    v23 = &v22[16 * v20];
    *(v23 + 4) = v21;
    *(v23 + 5) = v9.n128_u64[0];
    dislikedChannels._rawValue = v34;
  }

  while (v13 != v12);
LABEL_28:

  v28 = v35;
  v29 = rawValue;
  v35->_rawValue = v37;
  v28[1]._rawValue = v29;
  v28[2]._rawValue = dislikedChannels._rawValue;
  result.disliked._rawValue = v27;
  result.liked._rawValue = v26;
  result.subscribed._rawValue = v25;
  return result;
}

uint64_t sub_1D8FE9C3C()
{
  v1 = 0x64656B696CLL;
  if (*v0 != 1)
  {
    v1 = 0x64656B696C736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t sub_1D8FE9C98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FF00E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8FE9CC0(uint64_t a1)
{
  v2 = sub_1D8FEE980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FE9CFC(uint64_t a1)
{
  v2 = sub_1D8FEE980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

PodcastsFoundation::RecommendationsMetadata::Episodes __swiftcall RecommendationsMetadata.Episodes.init(from:)(Swift::OpaquePointer from)
{
  v3 = v1;
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(from._rawValue >> 62))
  {
    v10 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_27:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

LABEL_26:
  v28 = isUniquelyReferenced_nonNull_native;
  v10 = sub_1D917935C();
  isUniquelyReferenced_nonNull_native = v28;
  if (!v10)
  {
    goto LABEL_27;
  }

LABEL_3:
  v11 = 0;
  v32 = (v5 + 1);
  v33 = isUniquelyReferenced_nonNull_native;
  v12 = MEMORY[0x1E69E7CC0];
  v5 = &selRef_redirectURLForStoreCollectionId_;
  v34 = v3;
  do
  {
    v35 = v12;
    v13 = v11;
    while (1)
    {
      if ((from._rawValue & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x1DA72AA90](v13, from._rawValue, v7);
      }

      else
      {
        if (v13 >= *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        isUniquelyReferenced_nonNull_native = *(from._rawValue + v13 + 4);
      }

      v3 = isUniquelyReferenced_nonNull_native;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = [isUniquelyReferenced_nonNull_native storeTrackId];
      if ((v14 & 0x8000000000000000) == 0 && v14 != 1000000000000 && v14 != 0)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        v3 = v34;
        v12 = v35;
        goto LABEL_28;
      }
    }

    v31 = v14;
    [v3 lastDatePlayed];
    sub_1D9176CBC();
    sub_1D9176DDC();
    v17 = v16;
    (*v32)(v9, v33);
    HIDWORD(v30) = [v3 playState] == 0;
    [v3 duration];
    v19 = v18;
    [v3 playhead];
    v21 = v20;

    v22 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1D8ECD5DC(0, *(v22 + 16) + 1, 1, v22);
      v22 = isUniquelyReferenced_nonNull_native;
    }

    v24 = *(v22 + 16);
    v23 = *(v22 + 24);
    v25 = v22;
    v26 = v31;
    if (v24 >= v23 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D8ECD5DC((v23 > 1), v24 + 1, 1, v22);
      v25 = isUniquelyReferenced_nonNull_native;
      v26 = v31;
    }

    *(v25 + 16) = v24 + 1;
    v27 = v25 + 56 * v24;
    v12 = v25;
    *(v27 + 32) = v26;
    *(v27 + 40) = floor(v17 * 1000.0);
    *(v27 + 48) = BYTE4(v30);
    *(v27 + 56) = floor(v19 * 1000.0);
    v7.n128_f64[0] = floorf(v21 * 1000.0);
    *(v27 + 64) = 0;
    *(v27 + 72) = v7.n128_f64[0];
    *(v27 + 80) = 0;
    v3 = v34;
  }

  while (v11 != v10);
LABEL_28:

  *v3 = v12;
  return result;
}

void sub_1D8FEA0E8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x796C746E65636572 && a2 == 0xEE00646579616C50)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D8FEA178(uint64_t a1)
{
  v2 = sub_1D8FEEB84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEA1B4(uint64_t a1)
{
  v2 = sub_1D8FEEB84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

PodcastsFoundation::RecommendationsMetadata::Shows __swiftcall RecommendationsMetadata.Shows.init(followed:unfollowed:disliked:)(Swift::OpaquePointer followed, Swift::OpaquePointer unfollowed, Swift::OpaquePointer disliked)
{
  v3->_rawValue = followed._rawValue;
  v3[1]._rawValue = unfollowed._rawValue;
  v3[2]._rawValue = disliked._rawValue;
  result.disliked = disliked;
  result.unfollowed = unfollowed;
  result.followed = followed;
  return result;
}

PodcastsFoundation::RecommendationsMetadata::Shows __swiftcall RecommendationsMetadata.Shows.init(from:dislikedPodcasts:)(Swift::OpaquePointer from, Swift::OpaquePointer dislikedPodcasts)
{
  v5 = v2;
  v36 = sub_1D9176E3C();
  v6 = *(v36 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (from._rawValue >> 62)
  {
    v7 = sub_1D917935C();
    v13 = v7;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_27:

    v15 = MEMORY[0x1E69E7CC0];
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v13 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v33 = v5;
  rawValue = dislikedPodcasts._rawValue;
  v14 = 0;
  v35 = (v6 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = &selRef_redirectURLForStoreCollectionId_;
  v37 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((from._rawValue & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1DA72AA90](v14, from._rawValue, v10);
    }

    else
    {
      v17 = *(from._rawValue + v14 + 4);
    }

    v18 = v17;
    v19 = [v17 v16[445]];
    if ((v19 & 0x8000000000000000) != 0 || (v20 = v19, v19 == 1000000000000) || !v19)
    {
    }

    else
    {
      [v18 addedDate];
      sub_1D9176CBC();
      sub_1D9176DDC();
      v22 = v21;
      (*v35)(v12, v36);
      v23 = floor(v22 * 1000.0);
      if ([v18 subscribed])
      {
        v24 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D8ECD6F4(0, *(v24 + 2) + 1, 1, v24);
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        v37 = v24;
        if (v26 >= v25 >> 1)
        {
          v37 = sub_1D8ECD6F4((v25 > 1), v26 + 1, 1, v37);
        }

        v27 = v37;
        *(v37 + 2) = v26 + 1;
        v28 = &v27[16 * v26];
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D8ECD6F4(0, *(v15 + 2) + 1, 1, v15);
        }

        v30 = *(v15 + 2);
        v29 = *(v15 + 3);
        if (v30 >= v29 >> 1)
        {
          v15 = sub_1D8ECD6F4((v29 > 1), v30 + 1, 1, v15);
        }

        *(v15 + 2) = v30 + 1;
        v28 = &v15[16 * v30];
      }

      *(v28 + 4) = v20;
      *(v28 + 5) = v23;
      v16 = &selRef_redirectURLForStoreCollectionId_;
    }

    ++v14;
  }

  while (v13 != v14);

  v5 = v33;
  dislikedPodcasts._rawValue = rawValue;
  v31 = v37;
LABEL_28:
  v5->_rawValue = v31;
  v5[1]._rawValue = v15;
  v5[2]._rawValue = dislikedPodcasts._rawValue;
LABEL_30:
  result.disliked._rawValue = v9;
  result.unfollowed._rawValue = v8;
  result.followed._rawValue = v7;
  return result;
}

uint64_t sub_1D8FEA550(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(*a1 + 16);
  if (v5 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v8 = a1[2];
  v10 = a2[1];
  v11 = a2[2];
  if (v5)
  {
    v12 = v3 == v4;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_14:
    if (a3(result, v10))
    {

      return a3(v8, v11);
    }

    return 0;
  }

  v13 = (v3 + 40);
  v14 = (v4 + 40);
  while (v5)
  {
    if (*(v13 - 1) != *(v14 - 1) || *v13 != *v14)
    {
      return 0;
    }

    v13 += 2;
    v14 += 2;
    if (!--v5)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8FEA630()
{
  v1 = 0x776F6C6C6F666E75;
  if (*v0 != 1)
  {
    v1 = 0x64656B696C736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465776F6C6C6F66;
  }
}

uint64_t sub_1D8FEA690@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FF0200(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8FEA6B8(uint64_t a1)
{
  v2 = sub_1D8FEED88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEA6F4(uint64_t a1)
{
  v2 = sub_1D8FEED88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FEA730(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a2[1];
  v8 = a2[2];
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0 || (a5(v5, v7) & 1) == 0)
  {
    return 0;
  }

  return a5(v6, v8);
}

double RecommendationsMetadata.analytics.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v5 = *(v1 + 34);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 33) = v4;
  *(a1 + 34) = v5;

  return result;
}

double RecommendationsMetadata.categories.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;

  return result;
}

double RecommendationsMetadata.channels.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;

  return result;
}

double RecommendationsMetadata.episodes.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 80);

  return result;
}

double RecommendationsMetadata.shows.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;

  return result;
}

void __swiftcall RecommendationsMetadata.init(analytics:categories:channels:episodes:shows:)(PodcastsFoundation::RecommendationsMetadata *__return_ptr retstr, PodcastsFoundation::RecommendationsMetadata::Analytics *analytics, PodcastsFoundation::RecommendationsMetadata::Categories categories, PodcastsFoundation::RecommendationsMetadata::Channels channels, PodcastsFoundation::RecommendationsMetadata::Episodes episodes, PodcastsFoundation::RecommendationsMetadata::Shows shows)
{
  userAllowsPersonalization = analytics->userAllowsPersonalization;
  userIsManagedAccount = analytics->userIsManagedAccount;
  userIsUnder13 = analytics->userIsUnder13;
  v9 = *(categories.disliked._rawValue + 2);
  v10 = *channels.subscribed._rawValue;
  v11 = *(channels.liked._rawValue + 2);
  userID = analytics->userID;
  retstr->analytics.clientID = analytics->clientID;
  retstr->analytics.userID = userID;
  retstr->analytics.userAllowsPersonalization = userAllowsPersonalization;
  retstr->analytics.userIsManagedAccount = userIsManagedAccount;
  retstr->analytics.userIsUnder13 = userIsUnder13;
  retstr->categories = *categories.liked._rawValue;
  *&retstr->channels.subscribed._rawValue = *categories.disliked._rawValue;
  retstr->channels.disliked._rawValue = v9;
  retstr->episodes.recentlyPlayed._rawValue = v10;
  *&retstr->shows.followed._rawValue = *channels.liked._rawValue;
  retstr->shows.disliked._rawValue = v11;
}

uint64_t sub_1D8FEA970()
{
  v1 = *v0;
  v2 = 0x636974796C616E61;
  v3 = 0x736C656E6E616863;
  v4 = 0x7365646F73697065;
  if (v1 != 3)
  {
    v4 = 0x73776F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69726F6765746163;
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