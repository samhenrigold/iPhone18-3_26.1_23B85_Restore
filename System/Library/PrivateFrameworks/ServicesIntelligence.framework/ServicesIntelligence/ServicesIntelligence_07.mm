uint64_t sub_230D95B84(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_230D4515C(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_230E69880();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[6 * i + 7];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          v16 = v13[5];
          v17 = *(v13 - 1);
          *(v13 + 3) = *(v13 - 3);
          v18 = *(v13 + 7);
          *(v13 + 5) = v17;
          *(v13 + 7) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v16;
          *v13 = v11;
          *(v13 + 1) = v18;
          v13 -= 6;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 6;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B368, &qword_230E6F6E8);
      v7 = sub_230E69270();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_230D938CC(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_230D95D04(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_230D45170(v2);
  }

  v3 = v2[2];
  v28[0] = (v2 + 4);
  v28[1] = v3;
  result = sub_230E69880();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 12);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 5) >= v12[3])
          {
            break;
          }

          v13 = v12 - 8;
          v14 = *v12;
          v15 = *(v12 + 1);
          v16 = *(v12 + 3);
          v26 = *(v12 + 2);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 3);
          *v12 = *(v12 - 4);
          *(v12 + 1) = v17;
          v18 = *(v12 - 1);
          *(v12 + 2) = *(v12 - 2);
          *(v12 + 3) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v19;
          *v13 = v20;
          *(v13 + 1) = v21;
          v12 -= 8;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 8;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B350, &qword_230E6F6D0);
      v7 = sub_230E69270();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_230D93EB0(&v24, v23, v28, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_230D95E7C(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  if ((a1[8] & 1) == 0)
  {
    v11 = *a1;
    v12 = *(*a1 + 16);

    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      v3 = MEMORY[0x277D84F90];
      do
      {
        v15 = (v14 + 168 * v13);
        v16 = v13;
        while (1)
        {
          if (v16 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          v17 = *v15;
          v18 = v15[2];
          v58 = v15[1];
          v59 = v18;
          v57 = v17;
          v19 = v15[3];
          v20 = v15[4];
          v21 = v15[6];
          v62 = v15[5];
          v63 = v21;
          v60 = v19;
          v61 = v20;
          v22 = v15[7];
          v23 = v15[8];
          v24 = v15[9];
          v67 = *(v15 + 20);
          v65 = v23;
          v66 = v24;
          v64 = v22;
          if (v59 > 1u && v59 != 3)
          {
            break;
          }

          v25 = sub_230E698C0();
          sub_230D93514(&v57, v56);

          if (v25)
          {
            goto LABEL_15;
          }

          ++v16;
          sub_230D93570(&v57);
          v15 = (v15 + 168);
          if (v12 == v16)
          {
            goto LABEL_32;
          }
        }

        sub_230D93514(&v57, v56);

LABEL_15:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_230D48F00(0, *(v3 + 16) + 1, 1);
          v3 = v68;
        }

        v28 = *(v3 + 16);
        v27 = *(v3 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_230D48F00((v27 > 1), v28 + 1, 1);
          v3 = v68;
        }

        v13 = v16 + 1;
        *(v3 + 16) = v28 + 1;
        v29 = v3 + 168 * v28;
        v30 = v57;
        v31 = v59;
        *(v29 + 48) = v58;
        *(v29 + 64) = v31;
        *(v29 + 32) = v30;
        v32 = v60;
        v33 = v61;
        v34 = v63;
        *(v29 + 112) = v62;
        *(v29 + 128) = v34;
        *(v29 + 80) = v32;
        *(v29 + 96) = v33;
        v35 = v64;
        v36 = v65;
        v37 = v66;
        *(v29 + 192) = v67;
        *(v29 + 160) = v36;
        *(v29 + 176) = v37;
        *(v29 + 144) = v35;
        v14 = v11 + 32;
      }

      while (v12 - 1 != v16);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

LABEL_32:

    v2 = a2;
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_33:

    v52 = sub_230E68D60();
    v53 = sub_230E693F0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_230D02000, v52, v53, "[VideoAggregator][generateVideoInsights] No video sessions found", v54, 2u);
      MEMORY[0x23191EAE0](v54, -1, -1);
    }

    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    return;
  }

  v3 = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D84F90] + 16);
  if (!v4)
  {
    goto LABEL_33;
  }

LABEL_3:

  v5 = sub_230E68D60();
  v6 = sub_230E693E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v3 + 16);

    _os_log_impl(&dword_230D02000, v5, v6, "[VideoAggregator][generateVideoInsights] Processing %ld video sessions", v7, 0xCu);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  else
  {
  }

  v38 = *(v3 + 16);
  if (v38 > v4 - 1)
  {
    if (v4 == 1)
    {
      v39 = 0;
      v40 = 0.0;
    }

    else
    {
      v39 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v41 = (v3 + 240);
      v40 = 0.0;
      v42 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v8.n128_f64[0] = *v41;
        v40 = v40 + *(v41 - 21) + *v41;
        v41 += 42;
        v42 -= 2;
      }

      while (v42);
      if (v4 == v39)
      {
        goto LABEL_30;
      }
    }

    v43 = v4 - v39;
    v44 = (v3 + 168 * v39 + 72);
    do
    {
      v45 = *v44;
      v44 += 21;
      v40 = v40 + v45;
      --v43;
    }

    while (v43);
LABEL_30:
    v46 = round(v40 * 100.0) / 100.0;
    v47 = round(v46 / v38 * 100.0);
    v48 = v47 / 100.0;
    sub_230DA1E8C(v3, v47, 100.0, v8, v9, v10);
    v50 = v49;
    v51 = sub_230D9632C(v3);

    *v2 = v38;
    *(v2 + 8) = v46;
    *(v2 + 16) = v48;
    *(v2 + 24) = v50;
    *(v2 + 32) = v51;
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_230D9632C(uint64_t a1)
{
  v2 = sub_230D0E4B4(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 72);
    do
    {
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      v9 = *v4;
      v10 = v2[2];

      if (v10)
      {
        v11 = sub_230DA41A0(v8, v7);
        if (v12)
        {
          v13 = v2[7] + 16 * v11;
          v14 = *v13 + 1;
          if (__OFADD__(*v13, 1))
          {
            goto LABEL_49;
          }

          v15 = *(v13 + 8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v2;
          v17 = sub_230DA41A0(v8, v7);
          v19 = v2[2];
          v20 = (v18 & 1) == 0;
          v21 = __OFADD__(v19, v20);
          v22 = v19 + v20;
          if (v21)
          {
            goto LABEL_50;
          }

          v23 = v18;
          if (v2[3] < v22)
          {
            sub_230DB732C(v22, isUniquelyReferenced_nonNull_native);
            v17 = sub_230DA41A0(v8, v7);
            if ((v23 & 1) != (v24 & 1))
            {
              goto LABEL_52;
            }

            goto LABEL_23;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_23:
            v9 = v9 + v15;
            if ((v23 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v39 = v17;
            sub_230DBA320();
            v17 = v39;
            v9 = v9 + v15;
            if ((v23 & 1) == 0)
            {
LABEL_28:
              v2 = v59;
              v59[(v17 >> 6) + 8] |= 1 << v17;
              v40 = (v2[6] + 16 * v17);
              *v40 = v8;
              v40[1] = v7;
              v41 = v2[7] + 16 * v17;
              *v41 = v14;
              *(v41 + 8) = v9;
              v42 = v2[2];
              v21 = __OFADD__(v42, 1);
              v36 = v42 + 1;
              if (v21)
              {
                goto LABEL_51;
              }

              goto LABEL_29;
            }
          }

          v37 = v17;

          v2 = v59;
          v6 = v59[7] + 16 * v37;
          *v6 = v14;
          goto LABEL_4;
        }
      }

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v2;
      v26 = sub_230DA41A0(v8, v7);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v21 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v21)
      {
        goto LABEL_47;
      }

      v31 = v27;
      if (v2[3] >= v30)
      {
        if ((v25 & 1) == 0)
        {
          v38 = v26;
          sub_230DBA320();
          v26 = v38;
          if ((v31 & 1) == 0)
          {
LABEL_19:
            v2 = v59;
            v59[(v26 >> 6) + 8] |= 1 << v26;
            v33 = (v2[6] + 16 * v26);
            *v33 = v8;
            v33[1] = v7;
            v34 = v2[7] + 16 * v26;
            *v34 = 1;
            *(v34 + 8) = v9;
            v35 = v2[2];
            v21 = __OFADD__(v35, 1);
            v36 = v35 + 1;
            if (v21)
            {
              goto LABEL_48;
            }

LABEL_29:
            v2[2] = v36;
            goto LABEL_5;
          }

          goto LABEL_3;
        }
      }

      else
      {
        sub_230DB732C(v30, v25);
        v26 = sub_230DA41A0(v8, v7);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_52;
        }
      }

      if ((v31 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_3:
      v5 = v26;

      v2 = v59;
      v6 = v59[7] + 16 * v5;
      *v6 = 1;
LABEL_4:
      *(v6 + 8) = v9;
LABEL_5:
      v4 += 21;
      --v3;
    }

    while (v3);
  }

  v43 = v2[2];
  v44 = MEMORY[0x277D84F90];
  if (v43)
  {
    v45 = sub_230E4B198(v2[2], 0);
    v46 = sub_230E67174(&v59, v45 + 4, v43, v2);
    v47 = v59;

    sub_230D912FC(v47);
    if (v46 == v43)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v45 = v44;
LABEL_34:
  v59 = v45;
  sub_230D90560(&v59);
  v7 = v59;
  v48 = v59[2];
  if (v48 >= 5)
  {
    v49 = 5;
  }

  else
  {
    v49 = v59[2];
  }

  if (v48)
  {
    v59 = v44;
    sub_230D49058(0, v49, 0);
    v50 = v59;
    v51 = (v7 + 56);
    while (v49)
    {
      v53 = *(v51 - 3);
      v52 = *(v51 - 2);
      v54 = *(v51 - 1);
      v55 = *v51;
      v59 = v50;
      v7 = *(v50 + 16);
      v56 = *(v50 + 24);

      if (v7 >= v56 >> 1)
      {
        sub_230D49058((v56 > 1), v7 + 1, 1);
        v50 = v59;
      }

      *(v50 + 16) = v7 + 1;
      v57 = v50 + 32 * v7;
      *(v57 + 32) = v53;
      *(v57 + 40) = v52;
      *(v57 + 48) = v54;
      *(v57 + 56) = round(v55 * 100.0) / 100.0;
      v51 += 4;
      if (!--v49)
      {

        return v50;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](v7);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

ServicesIntelligence::AppsInsights __swiftcall AppsInsights.init(totalSessions:totalUsageTime:averageSessionLength:appDistribution:)(Swift::Int totalSessions, Swift::Double totalUsageTime, Swift::Double averageSessionLength, Swift::OpaquePointer appDistribution)
{
  *v4 = totalSessions;
  *(v4 + 8) = totalUsageTime;
  *(v4 + 16) = averageSessionLength;
  *(v4 + 24) = appDistribution;
  result.averageSessionLength = averageSessionLength;
  result.totalUsageTime = totalUsageTime;
  result.appDistribution = appDistribution;
  result.totalSessions = totalSessions;
  return result;
}

ServicesIntelligence::AppsInsights::AppInsight __swiftcall AppsInsights.AppInsight.init(bundleID:sessionCount:totalSeconds:)(Swift::String bundleID, Swift::Int sessionCount, Swift::Double totalSeconds)
{
  *v3 = bundleID;
  *(v3 + 16) = sessionCount;
  *(v3 + 24) = totalSeconds;
  result.bundleID = bundleID;
  result.totalSeconds = totalSeconds;
  result.sessionCount = sessionCount;
  return result;
}

void __swiftcall MusicInsights.init(totalSessions:totalListeningTime:averageSessionLength:completionRate:artistDistribution:songDistribution:albumDistribution:genreDistribution:)(ServicesIntelligence::MusicInsights *__return_ptr retstr, Swift::Int totalSessions, Swift::Double totalListeningTime, Swift::Double averageSessionLength, Swift::Double completionRate, Swift::OpaquePointer artistDistribution, Swift::OpaquePointer songDistribution, Swift::OpaquePointer albumDistribution, Swift::OpaquePointer genreDistribution)
{
  retstr->totalSessions = totalSessions;
  retstr->totalListeningTime = totalListeningTime;
  retstr->averageSessionLength = averageSessionLength;
  retstr->completionRate = completionRate;
  retstr->artistDistribution = artistDistribution;
  retstr->songDistribution = songDistribution;
  retstr->albumDistribution = albumDistribution;
  retstr->genreDistribution = genreDistribution;
}

void __swiftcall MusicInsights.ArtistInsight.init(name:artistID:sessionCount:totalSeconds:)(ServicesIntelligence::MusicInsights::ArtistInsight *__return_ptr retstr, Swift::String name, Swift::String_optional artistID, Swift::Int sessionCount, Swift::Double totalSeconds)
{
  retstr->name = name;
  retstr->artistID = artistID;
  retstr->sessionCount = sessionCount;
  retstr->totalSeconds = totalSeconds;
}

void __swiftcall MusicInsights.GenreInsight.init(name:percentage:sessionCount:totalSeconds:)(ServicesIntelligence::MusicInsights::GenreInsight *__return_ptr retstr, Swift::String name, Swift::Double percentage, Swift::Int sessionCount, Swift::Double totalSeconds)
{
  retstr->name = name;
  retstr->percentage = percentage;
  retstr->sessionCount = sessionCount;
  retstr->totalSeconds = totalSeconds;
}

void __swiftcall PodcastInsights.init(totalSessions:totalListeningTime:averageSessionLength:completionRate:channelDistribution:episodeDistribution:)(ServicesIntelligence::PodcastInsights *__return_ptr retstr, Swift::Int totalSessions, Swift::Double totalListeningTime, Swift::Double averageSessionLength, Swift::Double completionRate, Swift::OpaquePointer channelDistribution, Swift::OpaquePointer episodeDistribution)
{
  retstr->totalSessions = totalSessions;
  retstr->totalListeningTime = totalListeningTime;
  retstr->averageSessionLength = averageSessionLength;
  retstr->completionRate = completionRate;
  retstr->channelDistribution = channelDistribution;
  retstr->episodeDistribution = episodeDistribution;
}

uint64_t _s20ServicesIntelligence13MusicInsightsV11SongInsightV5title6songID6artist12sessionCount12totalSecondsAESS_SSSgSSSiSdtcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = a9;
  return result;
}

void __swiftcall VideoInsights.init(totalSessions:totalWatchingTime:averageSessionLength:completionRate:contentDistribution:)(ServicesIntelligence::VideoInsights *__return_ptr retstr, Swift::Int totalSessions, Swift::Double totalWatchingTime, Swift::Double averageSessionLength, Swift::Double completionRate, Swift::OpaquePointer contentDistribution)
{
  retstr->totalSessions = totalSessions;
  retstr->totalWatchingTime = totalWatchingTime;
  retstr->averageSessionLength = averageSessionLength;
  retstr->completionRate = completionRate;
  retstr->contentDistribution = contentDistribution;
}

uint64_t AggregatedInsights.context.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
}

uint64_t AggregatedInsights.mediaDistribution.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_230D968B8(v2, v3);
}

uint64_t sub_230D968B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t AggregatedInsights.musicInsights.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v7[0] = v1[4];
  v7[1] = v2;
  v4 = v1[7];
  v8 = v1[6];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_230D96938(v7, &v6);
}

uint64_t sub_230D96938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD60, &qword_230E73530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void AggregatedInsights.podcastInsights.getter(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[21];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_230D969C4(v2, v3, v4, v5, v6, v7);
}

void sub_230D969C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }
}

uint64_t AggregatedInsights.videoInsights.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 192);
  *a1 = *(v1 + 176);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t AggregatedInsights.appsInsights.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 232);
  v2 = *(v1 + 240);
  *a1 = *(v1 + 216);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 AggregatedInsights.init(context:mediaDistribution:musicInsights:podcastInsights:videoInsights:appsInsights:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a5 + 32);
  *a7 = *a1;
  *(a7 + 16) = v7;
  *(a7 + 32) = v8;
  *(a7 + 40) = v9;
  v12 = a3[2];
  v11 = a3[3];
  v13 = *a3;
  *(a7 + 80) = a3[1];
  *(a7 + 96) = v12;
  *(a7 + 48) = *a2;
  *(a7 + 64) = v13;
  v14 = *a4;
  v15 = a4[1];
  *(a7 + 112) = v11;
  *(a7 + 128) = v14;
  v16 = a4[2];
  *(a7 + 144) = v15;
  *(a7 + 160) = v16;
  v17 = *(a5 + 16);
  *(a7 + 176) = *a5;
  *(a7 + 192) = v17;
  *(a7 + 208) = v10;
  result = *a6;
  v19 = *(a6 + 16);
  *(a7 + 216) = *a6;
  *(a7 + 232) = v19;
  return result;
}

uint64_t sub_230D96A8C()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  v3 = 0x4974736163646F70;
  v4 = 0x736E496F65646976;
  if (v1 != 4)
  {
    v4 = 0x69736E4973707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x736E49636973756DLL;
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

uint64_t sub_230D96B78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D9F820(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D96BA0(uint64_t a1)
{
  v2 = sub_230D97058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D96BDC(uint64_t a1)
{
  v2 = sub_230D97058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AggregatedInsights.encode(to:)(void *a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD68, &qword_230E73538);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v3);
  v5 = &v25 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v39 = v1[2];
  v40 = v6;
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[7];
  v37 = v1[6];
  v38 = v9;
  v12 = *(v1 + 5);
  v55 = *(v1 + 4);
  v56 = v12;
  v13 = *(v1 + 7);
  v57 = *(v1 + 6);
  v58 = v13;
  v14 = v1[17];
  v35 = v1[16];
  v36 = v11;
  v15 = v1[19];
  v33 = v1[18];
  v34 = v14;
  v16 = v1[21];
  v31 = v1[20];
  v32 = v15;
  v30 = v16;
  v17 = *(v1 + 11);
  v28 = *(v1 + 12);
  v29 = v17;
  v27 = v1[26];
  v18 = *(v1 + 29);
  v25 = *(v1 + 27);
  v26 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D97058();

  sub_230E69A50();
  *&v51 = v40;
  *(&v51 + 1) = v7;
  *&v52 = v39;
  *(&v52 + 1) = v8;
  v19 = v41;
  *&v53 = v38;
  *(&v53 + 1) = v10;
  LOBYTE(v49[0]) = 0;
  sub_230D970AC();
  v20 = v42;
  sub_230E69850();
  if (v20)
  {

    return (*(v43 + 8))(v5, v19);
  }

  else
  {
    v22 = v34;
    v23 = v35;
    v24 = v43;

    *&v51 = v37;
    *(&v51 + 1) = v36;
    LOBYTE(v49[0]) = 1;
    sub_230D968B8(v37, v36);
    sub_230D97100();
    sub_230E697F0();
    sub_230D97154(v51, *(&v51 + 1));
    v51 = v55;
    v52 = v56;
    v53 = v57;
    v54 = v58;
    v50 = 2;
    sub_230D96938(&v55, v49);
    sub_230D97194();
    sub_230E697F0();
    v49[0] = v51;
    v49[1] = v52;
    v49[2] = v53;
    v49[3] = v54;
    sub_230D971E8(v49);
    *&v45 = v23;
    *(&v45 + 1) = v22;
    *&v46 = v33;
    *(&v46 + 1) = v32;
    v47 = v31;
    v48 = v30;
    v44 = 3;
    sub_230D969C4(v23, v22, v33, v32, v31, v30);
    sub_230D97250();
    sub_230E697F0();
    sub_230D972A4(v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48);
    v45 = v29;
    v46 = v28;
    v47 = v27;
    v44 = 4;
    sub_230D972E8();

    sub_230E697F0();

    v45 = v25;
    v46 = v26;
    v44 = 5;
    sub_230D9733C();

    sub_230E697F0();

    return (*(v24 + 8))(v5, v19);
  }
}

unint64_t sub_230D97058()
{
  result = qword_27DB5BD70;
  if (!qword_27DB5BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD70);
  }

  return result;
}

unint64_t sub_230D970AC()
{
  result = qword_27DB5BD78;
  if (!qword_27DB5BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD78);
  }

  return result;
}

unint64_t sub_230D97100()
{
  result = qword_27DB5BD80;
  if (!qword_27DB5BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD80);
  }

  return result;
}

uint64_t sub_230D97154(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_230D97194()
{
  result = qword_27DB5BD88;
  if (!qword_27DB5BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD88);
  }

  return result;
}

uint64_t sub_230D971E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD60, &qword_230E73530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230D97250()
{
  result = qword_27DB5BD90;
  if (!qword_27DB5BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD90);
  }

  return result;
}

void sub_230D972A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }
}

unint64_t sub_230D972E8()
{
  result = qword_27DB5BD98;
  if (!qword_27DB5BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD98);
  }

  return result;
}

unint64_t sub_230D9733C()
{
  result = qword_27DB5BDA0;
  if (!qword_27DB5BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDA0);
  }

  return result;
}

void AggregatedInsights.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BDA8, &qword_230E73540);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v6);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D97058();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v50 = a2;
    v51 = v5;
    LOBYTE(v53) = 0;
    sub_230D97A24();
    sub_230E69760();
    v9 = v69;
    v10 = v70;
    v48 = v71;
    v49 = *(&v69 + 1);
    v11 = v72;
    v12 = v73;
    LOBYTE(v53) = 1;
    sub_230D97A78();
    sub_230E69700();
    v39 = v11;
    v40 = v10;
    v41 = v9;
    v47 = v69;
    v98 = 2;
    sub_230D97ACC();
    sub_230E69700();
    v100 = v99[0];
    v101 = v99[1];
    v102 = v99[2];
    v103 = v99[3];
    LOBYTE(v53) = 3;
    sub_230D97B20();
    sub_230E69700();
    v46 = v69;
    v44 = v72;
    v45 = v71;
    v42 = v70;
    v43 = v73;
    LOBYTE(v53) = 4;
    sub_230D97B74();
    sub_230E69700();
    v13 = v69;
    v37 = v70;
    v38 = *(&v69 + 1);
    v36 = v71;
    v14 = v72;
    v94 = 5;
    sub_230D97BC8();
    sub_230E69700();
    v35 = v13;
    (*(v51 + 8))(v8, v52);
    v51 = v96;
    v52 = v95;
    v34 = *(&v96 + 1);
    *&v53 = v41;
    *(&v53 + 1) = v49;
    v15 = *(&v47 + 1);
    *&v54 = v40;
    *(&v54 + 1) = v48;
    *&v55 = v39;
    *(&v55 + 1) = v12;
    v16 = v47;
    v56 = v47;
    v57 = v100;
    v58 = v101;
    v59 = v102;
    v60 = v103;
    v61 = v46;
    v17 = v42;
    *&v62 = v42;
    *(&v62 + 1) = v45;
    *&v63 = v44;
    *(&v63 + 1) = v43;
    *&v64 = v13;
    *(&v64 + 1) = v38;
    *&v65 = v37;
    *(&v65 + 1) = v36;
    *&v66 = v14;
    *(&v66 + 1) = v95;
    v67 = v96;
    v18 = v97;
    v68 = v97;
    v19 = v53;
    v20 = v54;
    v21 = v47;
    v33 = v14;
    v22 = v50;
    *(v50 + 32) = v55;
    *(v22 + 48) = v21;
    *v22 = v19;
    *(v22 + 16) = v20;
    v23 = v57;
    v24 = v58;
    v25 = v60;
    *(v22 + 96) = v59;
    *(v22 + 112) = v25;
    *(v22 + 64) = v23;
    *(v22 + 80) = v24;
    v26 = v61;
    v27 = v62;
    v28 = v64;
    *(v22 + 160) = v63;
    *(v22 + 176) = v28;
    *(v22 + 128) = v26;
    *(v22 + 144) = v27;
    v29 = v65;
    v30 = v66;
    v31 = v67;
    *(v22 + 240) = v18;
    *(v22 + 208) = v30;
    *(v22 + 224) = v31;
    *(v22 + 192) = v29;
    sub_230D97C1C(&v53, &v69);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v69 = v41;
    *(&v69 + 1) = v49;
    v70 = v40;
    v71 = v48;
    v72 = v39;
    v73 = v12;
    v74 = v16;
    v75 = v15;
    v76 = v100;
    v77 = v101;
    v78 = v102;
    v79 = v103;
    v80 = v46;
    v81 = v17;
    v82 = v45;
    v83 = v44;
    v84 = v43;
    v85 = v35;
    v86 = v38;
    v87 = v37;
    v88 = v36;
    v89 = v33;
    v90 = v52;
    v91 = v51;
    v92 = v34;
    v93 = v18;
    sub_230D97C54(&v69);
  }
}

unint64_t sub_230D97A24()
{
  result = qword_27DB5BDB0;
  if (!qword_27DB5BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDB0);
  }

  return result;
}

unint64_t sub_230D97A78()
{
  result = qword_27DB5BDB8;
  if (!qword_27DB5BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDB8);
  }

  return result;
}

unint64_t sub_230D97ACC()
{
  result = qword_27DB5BDC0;
  if (!qword_27DB5BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDC0);
  }

  return result;
}

unint64_t sub_230D97B20()
{
  result = qword_27DB5BDC8;
  if (!qword_27DB5BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDC8);
  }

  return result;
}

unint64_t sub_230D97B74()
{
  result = qword_27DB5BDD0;
  if (!qword_27DB5BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDD0);
  }

  return result;
}

unint64_t sub_230D97BC8()
{
  result = qword_27DB5BDD8;
  if (!qword_27DB5BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDD8);
  }

  return result;
}

uint64_t ContextSummary.timeFrame.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall ContextSummary.init(type:timeFrame:totalSessions:totalEngagementTime:)(ServicesIntelligence::ContextSummary *__return_ptr retstr, Swift::String type, Swift::String timeFrame, Swift::Int totalSessions, Swift::Double totalEngagementTime)
{
  retstr->type = type;
  retstr->timeFrame = timeFrame;
  retstr->totalSessions = totalSessions;
  retstr->totalEngagementTime = totalEngagementTime;
}

unint64_t sub_230D97CF8()
{
  v1 = 1701869940;
  v2 = 0x7365536C61746F74;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x6D617246656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230D97D80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D9FA40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D97DA8(uint64_t a1)
{
  v2 = sub_230D9800C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D97DE4(uint64_t a1)
{
  v2 = sub_230D9800C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextSummary.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BDE0, &qword_230E73548);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = v1[2];
  v11[2] = v1[3];
  v11[3] = v8;
  v11[1] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9800C();
  sub_230E69A50();
  v15 = 0;
  v9 = v11[4];
  sub_230E69810();
  if (!v9)
  {
    v14 = 1;
    sub_230E69810();
    v13 = 2;
    sub_230E69840();
    v12 = 3;
    sub_230E69830();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230D9800C()
{
  result = qword_27DB5BDE8;
  if (!qword_27DB5BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDE8);
  }

  return result;
}

uint64_t ContextSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BDF0, &qword_230E73550);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9800C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v10 = sub_230E69720();
  v23 = v11;
  v26 = 1;
  v21 = sub_230E69720();
  v22 = v12;
  v25 = 2;
  v20 = sub_230E69750();
  v24 = 3;
  sub_230E69740();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  v17 = v22;
  v16 = v23;
  *a2 = v10;
  a2[1] = v16;
  v18 = v20;
  a2[2] = v21;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

ServicesIntelligence::MediaDistribution __swiftcall MediaDistribution.init(byTime:bySessions:)(Swift::OpaquePointer byTime, Swift::OpaquePointer bySessions)
{
  v2->_rawValue = byTime._rawValue;
  v2[1]._rawValue = bySessions._rawValue;
  result.bySessions = bySessions;
  result.byTime = byTime;
  return result;
}

uint64_t sub_230D9833C()
{
  if (*v0)
  {
    return 0x6F69737365537962;
  }

  else
  {
    return 0x656D69547962;
  }
}

uint64_t sub_230D98378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D69547962 && a2 == 0xE600000000000000;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69737365537962 && a2 == 0xEA0000000000736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230D98458(uint64_t a1)
{
  v2 = sub_230D986BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D98494(uint64_t a1)
{
  v2 = sub_230D986BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaDistribution.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BDF8, &qword_230E73558);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D986BC();

  sub_230E69A50();
  v13 = v9;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  sub_230D6C1DC(&unk_281565FA0, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
  sub_230E69850();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_230D986BC()
{
  result = qword_27DB5BE00;
  if (!qword_27DB5BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE00);
  }

  return result;
}

uint64_t MediaDistribution.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE08, &qword_230E73568);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D986BC();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  v15 = 0;
  sub_230D6C1DC(&qword_27DB5D980, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
  sub_230E69760();
  v10 = v16;
  v15 = 1;
  sub_230E69760();
  (*(v6 + 8))(v9, v5);
  v11 = v16;
  v12 = v14;
  *v14 = v10;
  v12[1] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicInsights.SongInsight.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicInsights.SongInsight.songID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MusicInsights.SongInsight.artist.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_230D98A6C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x747369747261;
  v4 = 0x436E6F6973736573;
  if (v1 != 3)
  {
    v4 = 0x6365536C61746F74;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449676E6F73;
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

uint64_t sub_230D98B0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D9FBBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D98B34(uint64_t a1)
{
  v2 = sub_230D98BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D98B70(uint64_t a1)
{
  v2 = sub_230D98BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_230D98BF0()
{
  result = qword_27DB5BE18;
  if (!qword_27DB5BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE18);
  }

  return result;
}

uint64_t MusicInsights.SongInsight.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE20, &qword_230E73578);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D98BF0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v10 = sub_230E69720();
  v30 = v11;
  LOBYTE(v35[0]) = 1;
  v12 = sub_230E696B0();
  v29 = v13;
  v27 = v12;
  LOBYTE(v35[0]) = 2;
  v26 = sub_230E69720();
  v28 = v14;
  LOBYTE(v35[0]) = 3;
  v25 = sub_230E69750();
  v36[0] = 4;
  sub_230E69740();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  v18 = v29;
  v17 = v30;
  *&v31 = v10;
  *(&v31 + 1) = v30;
  v20 = v27;
  v19 = v28;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  v21 = v26;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  *&v34 = v25;
  *(&v34 + 1) = v16;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  v23 = v34;
  a2[2] = v33;
  a2[3] = v23;
  sub_230D98F78(&v31, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v10;
  v35[1] = v17;
  v35[2] = v20;
  v35[3] = v18;
  v35[4] = v21;
  v35[5] = v19;
  v35[6] = v25;
  v35[7] = v16;
  return sub_230D98FB0(v35);
}

uint64_t MusicInsights.ArtistInsight.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicInsights.ArtistInsight.artistID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_230D99080()
{
  v1 = 1701667182;
  v2 = 0x436E6F6973736573;
  if (*v0 != 2)
  {
    v2 = 0x6365536C61746F74;
  }

  if (*v0)
  {
    v1 = 0x4449747369747261;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230D99104@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D9FD68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D9912C(uint64_t a1)
{
  v2 = sub_230D993C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D99168(uint64_t a1)
{
  v2 = sub_230D993C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D991E8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v19 - v10;
  v12 = v5[2];
  v19[1] = v5[3];
  v19[2] = v12;
  v19[0] = v5[4];
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  v20();
  sub_230E69A50();
  v25 = 0;
  v17 = v21;
  sub_230E69810();
  if (!v17)
  {
    v24 = 1;
    sub_230E697B0();
    v23 = 2;
    sub_230E69840();
    v22 = 3;
    sub_230E69830();
  }

  return (*(v8 + 8))(v11, v16);
}

unint64_t sub_230D993C8()
{
  result = qword_27DB5BE30;
  if (!qword_27DB5BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE30);
  }

  return result;
}

uint64_t sub_230D99490()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x747369747261;
  v4 = 0x436E6F6973736573;
  if (v1 != 3)
  {
    v4 = 0x6365536C61746F74;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x44496D75626C61;
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

uint64_t sub_230D99530@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D9FED4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D99558(uint64_t a1)
{
  v2 = sub_230D99614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D99594(uint64_t a1)
{
  v2 = sub_230D99614();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_230D99614()
{
  result = qword_27DB5BE48;
  if (!qword_27DB5BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE48);
  }

  return result;
}

uint64_t MusicInsights.AlbumInsight.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE50, &qword_230E73598);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D99614();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v10 = sub_230E69720();
  v30 = v11;
  LOBYTE(v35[0]) = 1;
  v12 = sub_230E696B0();
  v29 = v13;
  v27 = v12;
  LOBYTE(v35[0]) = 2;
  v26 = sub_230E69720();
  v28 = v14;
  LOBYTE(v35[0]) = 3;
  v25 = sub_230E69750();
  v36[0] = 4;
  sub_230E69740();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  v18 = v29;
  v17 = v30;
  *&v31 = v10;
  *(&v31 + 1) = v30;
  v20 = v27;
  v19 = v28;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  v21 = v26;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  *&v34 = v25;
  *(&v34 + 1) = v16;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  v23 = v34;
  a2[2] = v33;
  a2[3] = v23;
  sub_230D9999C(&v31, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v10;
  v35[1] = v17;
  v35[2] = v20;
  v35[3] = v18;
  v35[4] = v21;
  v35[5] = v19;
  v35[6] = v25;
  v35[7] = v16;
  return sub_230D999D4(v35);
}

uint64_t MusicInsights.GenreInsight.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_230D99A7C()
{
  v1 = 1701667182;
  v2 = 0x436E6F6973736573;
  if (*v0 != 2)
  {
    v2 = 0x6365536C61746F74;
  }

  if (*v0)
  {
    v1 = 0x61746E6563726570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230D99B04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DA0088(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D99B2C(uint64_t a1)
{
  v2 = sub_230D99D8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D99B68(uint64_t a1)
{
  v2 = sub_230D99D8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicInsights.GenreInsight.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE58, &qword_230E735A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v10[0] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D99D8C();
  sub_230E69A50();
  v14 = 0;
  v8 = v10[1];
  sub_230E69810();
  if (!v8)
  {
    v13 = 1;
    sub_230E69830();
    v12 = 2;
    sub_230E69840();
    v11 = 3;
    sub_230E69830();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230D99D8C()
{
  result = qword_27DB5BE60;
  if (!qword_27DB5BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE60);
  }

  return result;
}

uint64_t MusicInsights.GenreInsight.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE68, &qword_230E735A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D99D8C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v13 = v10;
  v23 = 1;
  sub_230E69740();
  v15 = v14;
  v22 = 2;
  v20 = sub_230E69750();
  v21 = 3;
  sub_230E69740();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v15;
  a2[3] = v20;
  a2[4] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D9A054()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    v2 = 0x7365536C61746F74;
    v3 = 0xD000000000000014;
    if (v1 != 2)
    {
      v3 = 0x6974656C706D6F63;
    }

    if (*v0)
    {
      v2 = 0xD000000000000012;
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
}

uint64_t sub_230D9A170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DA01FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D9A198(uint64_t a1)
{
  v2 = sub_230D9A5B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9A1D4(uint64_t a1)
{
  v2 = sub_230D9A5B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicInsights.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE70, &qword_230E735B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - v6;
  v8 = v1[4];
  v17 = v1[5];
  v18 = v8;
  v9 = v1[7];
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9A5B0();
  v10 = v3;
  sub_230E69A50();
  LOBYTE(v21) = 0;
  v11 = v19;
  sub_230E69840();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v12 = v17;
  v13 = v18;
  v14 = v16;
  LOBYTE(v21) = 1;
  sub_230E69830();
  LOBYTE(v21) = 2;
  sub_230E69830();
  LOBYTE(v21) = 3;
  sub_230E69830();
  v21 = v13;
  v20 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE80, &qword_230E735B8);
  sub_230D9A604();
  sub_230E69850();
  v21 = v12;
  v20 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE98, &qword_230E735C0);
  sub_230D9A6DC();
  sub_230E69850();
  v21 = v14;
  v20 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BEB0, &qword_230E735C8);
  sub_230D9A7B4();
  sub_230E69850();
  v21 = v9;
  v20 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BEC8, &qword_230E735D0);
  sub_230D9A88C();
  sub_230E69850();
  return MEMORY[8](v7, v10);
}

unint64_t sub_230D9A5B0()
{
  result = qword_27DB5BE78;
  if (!qword_27DB5BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE78);
  }

  return result;
}

unint64_t sub_230D9A604()
{
  result = qword_27DB5BE88;
  if (!qword_27DB5BE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BE80, &qword_230E735B8);
    sub_230D9A688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE88);
  }

  return result;
}

unint64_t sub_230D9A688()
{
  result = qword_27DB5BE90;
  if (!qword_27DB5BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE90);
  }

  return result;
}

unint64_t sub_230D9A6DC()
{
  result = qword_27DB5BEA0;
  if (!qword_27DB5BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BE98, &qword_230E735C0);
    sub_230D9A760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEA0);
  }

  return result;
}

unint64_t sub_230D9A760()
{
  result = qword_27DB5BEA8;
  if (!qword_27DB5BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEA8);
  }

  return result;
}

unint64_t sub_230D9A7B4()
{
  result = qword_27DB5BEB8;
  if (!qword_27DB5BEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BEB0, &qword_230E735C8);
    sub_230D9A838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEB8);
  }

  return result;
}

unint64_t sub_230D9A838()
{
  result = qword_27DB5BEC0;
  if (!qword_27DB5BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEC0);
  }

  return result;
}

unint64_t sub_230D9A88C()
{
  result = qword_27DB5BED0;
  if (!qword_27DB5BED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BEC8, &qword_230E735D0);
    sub_230D9A910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BED0);
  }

  return result;
}

unint64_t sub_230D9A910()
{
  result = qword_27DB5BED8;
  if (!qword_27DB5BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BED8);
  }

  return result;
}

uint64_t MusicInsights.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BEE0, &qword_230E735D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9A5B0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31[0]) = 0;
  v10 = sub_230E69750();
  LOBYTE(v31[0]) = 1;
  sub_230E69740();
  v12 = v11;
  LOBYTE(v31[0]) = 2;
  sub_230E69740();
  v14 = v13;
  LOBYTE(v31[0]) = 3;
  sub_230E69740();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE80, &qword_230E735B8);
  LOBYTE(v27) = 4;
  sub_230D9ADB0();
  sub_230E69760();
  v26 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE98, &qword_230E735C0);
  LOBYTE(v27) = 5;
  sub_230D9AE88();
  sub_230E69760();
  v25 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BEB0, &qword_230E735C8);
  LOBYTE(v27) = 6;
  sub_230D9AF60();
  sub_230E69760();
  v17 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BEC8, &qword_230E735D0);
  v32 = 7;
  sub_230D9B038();
  sub_230E69760();
  (*(v6 + 8))(v9, v5);
  v18 = v33;
  *&v27 = v10;
  *(&v27 + 1) = v12;
  *&v28 = v14;
  *(&v28 + 1) = v16;
  v19 = v26;
  v20 = v25;
  *&v29 = v26;
  *(&v29 + 1) = v25;
  *&v30 = v17;
  *(&v30 + 1) = v33;
  v21 = v28;
  *a2 = v27;
  a2[1] = v21;
  v22 = v30;
  a2[2] = v29;
  a2[3] = v22;
  sub_230D9B110(&v27, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v10;
  v31[1] = v12;
  v31[2] = v14;
  v31[3] = v16;
  v31[4] = v19;
  v31[5] = v20;
  v31[6] = v17;
  v31[7] = v18;
  return sub_230D9B148(v31);
}

unint64_t sub_230D9ADB0()
{
  result = qword_27DB5BEE8;
  if (!qword_27DB5BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BE80, &qword_230E735B8);
    sub_230D9AE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEE8);
  }

  return result;
}

unint64_t sub_230D9AE34()
{
  result = qword_27DB5BEF0;
  if (!qword_27DB5BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEF0);
  }

  return result;
}

unint64_t sub_230D9AE88()
{
  result = qword_27DB5BEF8;
  if (!qword_27DB5BEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BE98, &qword_230E735C0);
    sub_230D9AF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEF8);
  }

  return result;
}

unint64_t sub_230D9AF0C()
{
  result = qword_27DB5BF00;
  if (!qword_27DB5BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF00);
  }

  return result;
}

unint64_t sub_230D9AF60()
{
  result = qword_27DB5BF08;
  if (!qword_27DB5BF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BEB0, &qword_230E735C8);
    sub_230D9AFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF08);
  }

  return result;
}

unint64_t sub_230D9AFE4()
{
  result = qword_27DB5BF10;
  if (!qword_27DB5BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF10);
  }

  return result;
}

unint64_t sub_230D9B038()
{
  result = qword_27DB5BF18;
  if (!qword_27DB5BF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BEC8, &qword_230E735D0);
    sub_230D9B0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF18);
  }

  return result;
}

unint64_t sub_230D9B0BC()
{
  result = qword_27DB5BF20;
  if (!qword_27DB5BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF20);
  }

  return result;
}

uint64_t sub_230D9B1D8()
{
  v1 = 1701667182;
  v2 = 0x436E6F6973736573;
  if (*v0 != 2)
  {
    v2 = 0x6365536C61746F74;
  }

  if (*v0)
  {
    v1 = 0x496C656E6E616863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230D9B260@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DA04A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D9B288(uint64_t a1)
{
  v2 = sub_230D9B344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9B2C4(uint64_t a1)
{
  v2 = sub_230D9B344();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_230D9B344()
{
  result = qword_27DB5BF30;
  if (!qword_27DB5BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF30);
  }

  return result;
}

uint64_t sub_230D9B3DC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v27 = a6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_230E69A30();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v27;
  v32 = 0;
  v14 = sub_230E69720();
  v26 = v15;
  v31 = 1;
  v16 = v9;
  v25 = sub_230E696B0();
  v18 = v17;
  v30 = 2;
  v24 = sub_230E69750();
  v29 = 3;
  sub_230E69740();
  v21 = v20;
  (*(v16 + 8))(v12, v28);
  v22 = v25;
  v23 = v26;
  *v13 = v14;
  v13[1] = v23;
  v13[2] = v22;
  v13[3] = v18;
  v13[4] = v24;
  v13[5] = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D9B6AC()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 2003789939;
  v4 = 0x436E6F6973736573;
  if (v1 != 3)
  {
    v4 = 0x6365536C61746F74;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4965646F73697065;
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

uint64_t sub_230D9B750@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DA0618(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D9B778(uint64_t a1)
{
  v2 = sub_230D9BA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9B7B4(uint64_t a1)
{
  v2 = sub_230D9BA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D9B834(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v17 - v10;
  v12 = *v5;
  v13 = v5[3];
  v17[5] = v5[2];
  v17[6] = v12;
  v14 = v5[5];
  v17[3] = v5[4];
  v17[4] = v13;
  v17[1] = v5[6];
  v17[2] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();
  sub_230E69A50();
  v24 = 0;
  v15 = v19;
  sub_230E69810();
  if (!v15)
  {
    v23 = 1;
    sub_230E697B0();
    v22 = 2;
    sub_230E69810();
    v21 = 3;
    sub_230E69840();
    v20 = 4;
    sub_230E69830();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_230D9BA40()
{
  result = qword_27DB5BF48;
  if (!qword_27DB5BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF48);
  }

  return result;
}

uint64_t PodcastInsights.EpisodeInsight.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF50, &qword_230E735F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9BA40();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v10 = sub_230E69720();
  v30 = v11;
  LOBYTE(v35[0]) = 1;
  v12 = sub_230E696B0();
  v29 = v13;
  v27 = v12;
  LOBYTE(v35[0]) = 2;
  v26 = sub_230E69720();
  v28 = v14;
  LOBYTE(v35[0]) = 3;
  v25 = sub_230E69750();
  v36[0] = 4;
  sub_230E69740();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  v18 = v29;
  v17 = v30;
  *&v31 = v10;
  *(&v31 + 1) = v30;
  v20 = v27;
  v19 = v28;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  v21 = v26;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  *&v34 = v25;
  *(&v34 + 1) = v16;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  v23 = v34;
  a2[2] = v33;
  a2[3] = v23;
  sub_230D9BDC8(&v31, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v10;
  v35[1] = v17;
  v35[2] = v20;
  v35[3] = v18;
  v35[4] = v21;
  v35[5] = v19;
  v35[6] = v25;
  v35[7] = v16;
  return sub_230D9BE00(v35);
}

unint64_t sub_230D9BE60()
{
  v1 = *v0;
  v2 = 0x7365536C61746F74;
  v3 = 0x6974656C706D6F63;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_230D9BF38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DA07D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D9BF60(uint64_t a1)
{
  v2 = sub_230D9C288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9BF9C(uint64_t a1)
{
  v2 = sub_230D9C288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PodcastInsights.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF58, &qword_230E73600);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - v7;
  v9 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9C288();
  v10 = v4;
  sub_230E69A50();
  LOBYTE(v17) = 0;
  sub_230E69840();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = v14;
  v11 = v15;
  LOBYTE(v17) = 1;
  sub_230E69830();
  LOBYTE(v17) = 2;
  sub_230E69830();
  LOBYTE(v17) = 3;
  sub_230E69830();
  v17 = v11;
  v16 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF68, &qword_230E73608);
  sub_230D9C2DC();
  sub_230E69850();
  v17 = v12;
  v16 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF80, &qword_230E73610);
  sub_230D9C3B4();
  sub_230E69850();
  return (*(v5 + 8))(v8, v10);
}

unint64_t sub_230D9C288()
{
  result = qword_27DB5BF60;
  if (!qword_27DB5BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF60);
  }

  return result;
}

unint64_t sub_230D9C2DC()
{
  result = qword_27DB5BF70;
  if (!qword_27DB5BF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BF68, &qword_230E73608);
    sub_230D9C360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF70);
  }

  return result;
}

unint64_t sub_230D9C360()
{
  result = qword_27DB5BF78;
  if (!qword_27DB5BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF78);
  }

  return result;
}

unint64_t sub_230D9C3B4()
{
  result = qword_27DB5BF88;
  if (!qword_27DB5BF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BF80, &qword_230E73610);
    sub_230D9C438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF88);
  }

  return result;
}

unint64_t sub_230D9C438()
{
  result = qword_27DB5BF90;
  if (!qword_27DB5BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF90);
  }

  return result;
}

uint64_t PodcastInsights.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF98, &qword_230E73618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9C288();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v10 = sub_230E69750();
  LOBYTE(v21) = 1;
  sub_230E69740();
  v12 = v11;
  LOBYTE(v21) = 2;
  sub_230E69740();
  v14 = v13;
  LOBYTE(v21) = 3;
  sub_230E69740();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF68, &qword_230E73608);
  HIBYTE(v20) = 4;
  sub_230D9C768();
  sub_230E69760();
  v17 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF80, &qword_230E73610);
  HIBYTE(v20) = 5;
  sub_230D9C840();
  sub_230E69760();
  (*(v6 + 8))(v9, v5);
  v18 = v21;
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D9C768()
{
  result = qword_27DB5BFA0;
  if (!qword_27DB5BFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BF68, &qword_230E73608);
    sub_230D9C7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFA0);
  }

  return result;
}

unint64_t sub_230D9C7EC()
{
  result = qword_27DB5BFA8;
  if (!qword_27DB5BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFA8);
  }

  return result;
}

unint64_t sub_230D9C840()
{
  result = qword_27DB5BFB0;
  if (!qword_27DB5BFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BF80, &qword_230E73610);
    sub_230D9C8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFB0);
  }

  return result;
}

unint64_t sub_230D9C8C4()
{
  result = qword_27DB5BFB8;
  if (!qword_27DB5BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFB8);
  }

  return result;
}

uint64_t sub_230D9C968()
{
  v1 = 0x436E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x6365536C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_230D9C9D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DA09E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D9C9F8(uint64_t a1)
{
  v2 = sub_230D9CAB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9CA34(uint64_t a1)
{
  v2 = sub_230D9CAB4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_230D9CAB4()
{
  result = qword_27DB5BFC8;
  if (!qword_27DB5BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFC8);
  }

  return result;
}

unint64_t sub_230D9CB7C()
{
  v1 = *v0;
  v2 = 0x7365536C61746F74;
  v3 = 0xD000000000000013;
  if (v1 == 3)
  {
    v3 = 0x6974656C706D6F63;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_230D9CC3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DA0B04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D9CC64(uint64_t a1)
{
  v2 = sub_230D9CF38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9CCA0(uint64_t a1)
{
  v2 = sub_230D9CF38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoInsights.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BFD8, &qword_230E73630);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9CF38();
  sub_230E69A50();
  v17 = 0;
  sub_230E69840();
  if (!v2)
  {
    v9 = v11;
    v16 = 1;
    sub_230E69830();
    v15 = 2;
    sub_230E69830();
    v14 = 3;
    sub_230E69830();
    v13 = v9;
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BFE8, &qword_230E73638);
    sub_230D9CF8C();
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_230D9CF38()
{
  result = qword_27DB5BFE0;
  if (!qword_27DB5BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFE0);
  }

  return result;
}

unint64_t sub_230D9CF8C()
{
  result = qword_27DB5BFF0;
  if (!qword_27DB5BFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BFE8, &qword_230E73638);
    sub_230D9D010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFF0);
  }

  return result;
}

unint64_t sub_230D9D010()
{
  result = qword_27DB5BFF8;
  if (!qword_27DB5BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFF8);
  }

  return result;
}

uint64_t VideoInsights.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C000, &qword_230E73640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9CF38();
  sub_230E69A30();
  if (!v2)
  {
    v24 = 0;
    v10 = sub_230E69750();
    v23 = 1;
    sub_230E69740();
    v12 = v11;
    v22 = 2;
    sub_230E69740();
    v14 = v13;
    v21 = 3;
    sub_230E69740();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BFE8, &qword_230E73638);
    v19[15] = 4;
    sub_230D9D2C8();
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    v18 = v20;
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v17;
    a2[4] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D9D2C8()
{
  result = qword_27DB5C008;
  if (!qword_27DB5C008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BFE8, &qword_230E73638);
    sub_230D9D34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C008);
  }

  return result;
}

unint64_t sub_230D9D34C()
{
  result = qword_27DB5C010;
  if (!qword_27DB5C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C010);
  }

  return result;
}

uint64_t AppsInsights.AppInsight.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_230D9D430()
{
  v1 = 0x436E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x6365536C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_230D9D49C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DA0CCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D9D4C4(uint64_t a1)
{
  v2 = sub_230D9D740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9D500(uint64_t a1)
{
  v2 = sub_230D9D740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D9D580(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v15 - v10;
  v12 = *(v5 + 8);
  v15[1] = *(v5 + 16);
  v15[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16();
  sub_230E69A50();
  v20 = 0;
  v13 = v17;
  sub_230E69810();
  if (!v13)
  {
    v19 = 1;
    sub_230E69840();
    v18 = 2;
    sub_230E69830();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_230D9D740()
{
  result = qword_27DB5C020;
  if (!qword_27DB5C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C020);
  }

  return result;
}

uint64_t sub_230D9D7D8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v22 = a6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v10);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_230E69A30();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v22;
  v26 = 0;
  v14 = sub_230E69720();
  v16 = v15;
  v21 = v14;
  v25 = 1;
  v17 = sub_230E69750();
  v24 = 2;
  sub_230E69740();
  v20 = v19;
  (*(v9 + 8))(v12, v23);
  *v13 = v21;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v20;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D9DA34()
{
  v1 = 0x7365536C61746F74;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x7274736944707061;
  }

  if (*v0)
  {
    v1 = 0x6173556C61746F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230D9DAD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DA0DEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D9DB00(uint64_t a1)
{
  v2 = sub_230D9DDA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9DB3C(uint64_t a1)
{
  v2 = sub_230D9DDA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppsInsights.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C030, &qword_230E73658);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v11[0] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9DDA8();
  sub_230E69A50();
  v15 = 0;
  sub_230E69840();
  if (!v2)
  {
    v9 = v11[0];
    v14 = 1;
    sub_230E69830();
    v13 = 2;
    sub_230E69830();
    v11[1] = v9;
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C040, &qword_230E73660);
    sub_230D9DDFC();
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_230D9DDA8()
{
  result = qword_27DB5C038;
  if (!qword_27DB5C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C038);
  }

  return result;
}

unint64_t sub_230D9DDFC()
{
  result = qword_27DB5C048;
  if (!qword_27DB5C048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C040, &qword_230E73660);
    sub_230D9DE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C048);
  }

  return result;
}

unint64_t sub_230D9DE80()
{
  result = qword_27DB5C050;
  if (!qword_27DB5C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C050);
  }

  return result;
}

uint64_t AppsInsights.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C058, &qword_230E73668);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9DDA8();
  sub_230E69A30();
  if (!v2)
  {
    v21 = 0;
    v10 = sub_230E69750();
    v20 = 1;
    sub_230E69740();
    v12 = v11;
    v19 = 2;
    sub_230E69740();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C040, &qword_230E73660);
    v18 = 3;
    sub_230D9E104();
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    v16 = v17[1];
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v15;
    a2[3] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D9E104()
{
  result = qword_27DB5C060;
  if (!qword_27DB5C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C040, &qword_230E73660);
    sub_230D9E188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C060);
  }

  return result;
}

unint64_t sub_230D9E188()
{
  result = qword_27DB5C068;
  if (!qword_27DB5C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C068);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence17MediaDistributionVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_230D9E270(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_230D9E2B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230D9E378(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_230D9E3C0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230D9E464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_230D9E4AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_230D9E504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_230D9E54C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_230D9E5B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_230D9E600(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_230D9E660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_230D9E6A8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_230D9E710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230D9E758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230D9E8AC()
{
  result = qword_27DB5C070;
  if (!qword_27DB5C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C070);
  }

  return result;
}

unint64_t sub_230D9E904()
{
  result = qword_27DB5C078;
  if (!qword_27DB5C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C078);
  }

  return result;
}

unint64_t sub_230D9E95C()
{
  result = qword_27DB5C080;
  if (!qword_27DB5C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C080);
  }

  return result;
}

unint64_t sub_230D9E9B4()
{
  result = qword_27DB5C088;
  if (!qword_27DB5C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C088);
  }

  return result;
}

unint64_t sub_230D9EA0C()
{
  result = qword_27DB5C090;
  if (!qword_27DB5C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C090);
  }

  return result;
}

unint64_t sub_230D9EA64()
{
  result = qword_27DB5C098;
  if (!qword_27DB5C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C098);
  }

  return result;
}

unint64_t sub_230D9EABC()
{
  result = qword_27DB5C0A0;
  if (!qword_27DB5C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0A0);
  }

  return result;
}

unint64_t sub_230D9EB14()
{
  result = qword_27DB5C0A8;
  if (!qword_27DB5C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0A8);
  }

  return result;
}

unint64_t sub_230D9EB6C()
{
  result = qword_27DB5C0B0;
  if (!qword_27DB5C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0B0);
  }

  return result;
}

unint64_t sub_230D9EBC4()
{
  result = qword_27DB5C0B8;
  if (!qword_27DB5C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0B8);
  }

  return result;
}

unint64_t sub_230D9EC1C()
{
  result = qword_27DB5C0C0;
  if (!qword_27DB5C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0C0);
  }

  return result;
}

unint64_t sub_230D9EC74()
{
  result = qword_27DB5C0C8;
  if (!qword_27DB5C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0C8);
  }

  return result;
}

unint64_t sub_230D9ECCC()
{
  result = qword_27DB5C0D0;
  if (!qword_27DB5C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0D0);
  }

  return result;
}

unint64_t sub_230D9ED24()
{
  result = qword_27DB5C0D8;
  if (!qword_27DB5C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0D8);
  }

  return result;
}

unint64_t sub_230D9ED7C()
{
  result = qword_27DB5C0E0;
  if (!qword_27DB5C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0E0);
  }

  return result;
}

unint64_t sub_230D9EDD4()
{
  result = qword_27DB5C0E8;
  if (!qword_27DB5C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0E8);
  }

  return result;
}

unint64_t sub_230D9EE2C()
{
  result = qword_27DB5C0F0;
  if (!qword_27DB5C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0F0);
  }

  return result;
}

unint64_t sub_230D9EE84()
{
  result = qword_27DB5C0F8;
  if (!qword_27DB5C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0F8);
  }

  return result;
}

unint64_t sub_230D9EEDC()
{
  result = qword_27DB5C100;
  if (!qword_27DB5C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C100);
  }

  return result;
}

unint64_t sub_230D9EF34()
{
  result = qword_27DB5C108;
  if (!qword_27DB5C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C108);
  }

  return result;
}

unint64_t sub_230D9EF8C()
{
  result = qword_27DB5C110;
  if (!qword_27DB5C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C110);
  }

  return result;
}

unint64_t sub_230D9EFE4()
{
  result = qword_27DB5C118;
  if (!qword_27DB5C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C118);
  }

  return result;
}

unint64_t sub_230D9F03C()
{
  result = qword_27DB5C120;
  if (!qword_27DB5C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C120);
  }

  return result;
}

unint64_t sub_230D9F094()
{
  result = qword_27DB5C128;
  if (!qword_27DB5C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C128);
  }

  return result;
}

unint64_t sub_230D9F0EC()
{
  result = qword_27DB5C130;
  if (!qword_27DB5C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C130);
  }

  return result;
}

unint64_t sub_230D9F144()
{
  result = qword_27DB5C138;
  if (!qword_27DB5C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C138);
  }

  return result;
}

unint64_t sub_230D9F19C()
{
  result = qword_27DB5C140;
  if (!qword_27DB5C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C140);
  }

  return result;
}

unint64_t sub_230D9F1F4()
{
  result = qword_27DB5C148;
  if (!qword_27DB5C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C148);
  }

  return result;
}

unint64_t sub_230D9F24C()
{
  result = qword_27DB5C150;
  if (!qword_27DB5C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C150);
  }

  return result;
}

unint64_t sub_230D9F2A4()
{
  result = qword_27DB5C158;
  if (!qword_27DB5C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C158);
  }

  return result;
}

unint64_t sub_230D9F2FC()
{
  result = qword_27DB5C160;
  if (!qword_27DB5C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C160);
  }

  return result;
}

unint64_t sub_230D9F354()
{
  result = qword_27DB5C168;
  if (!qword_27DB5C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C168);
  }

  return result;
}

unint64_t sub_230D9F3AC()
{
  result = qword_27DB5C170;
  if (!qword_27DB5C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C170);
  }

  return result;
}

unint64_t sub_230D9F404()
{
  result = qword_27DB5C178;
  if (!qword_27DB5C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C178);
  }

  return result;
}

unint64_t sub_230D9F45C()
{
  result = qword_27DB5C180;
  if (!qword_27DB5C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C180);
  }

  return result;
}

unint64_t sub_230D9F4B4()
{
  result = qword_27DB5C188;
  if (!qword_27DB5C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C188);
  }

  return result;
}

unint64_t sub_230D9F50C()
{
  result = qword_27DB5C190;
  if (!qword_27DB5C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C190);
  }

  return result;
}

unint64_t sub_230D9F564()
{
  result = qword_27DB5C198;
  if (!qword_27DB5C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C198);
  }

  return result;
}

unint64_t sub_230D9F5BC()
{
  result = qword_27DB5C1A0;
  if (!qword_27DB5C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1A0);
  }

  return result;
}

unint64_t sub_230D9F614()
{
  result = qword_27DB5C1A8;
  if (!qword_27DB5C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1A8);
  }

  return result;
}

unint64_t sub_230D9F66C()
{
  result = qword_27DB5C1B0;
  if (!qword_27DB5C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1B0);
  }

  return result;
}

unint64_t sub_230D9F6C4()
{
  result = qword_27DB5C1B8;
  if (!qword_27DB5C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1B8);
  }

  return result;
}

unint64_t sub_230D9F71C()
{
  result = qword_27DB5C1C0;
  if (!qword_27DB5C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1C0);
  }

  return result;
}

unint64_t sub_230D9F774()
{
  result = qword_27DB5C1C8;
  if (!qword_27DB5C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1C8);
  }

  return result;
}

unint64_t sub_230D9F7CC()
{
  result = qword_27DB5C1D0;
  if (!qword_27DB5C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1D0);
  }

  return result;
}

uint64_t sub_230D9F820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E82880 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E49636973756DLL && a2 == 0xED00007374686769 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4974736163646F70 && a2 == 0xEF7374686769736ELL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E496F65646976 && a2 == 0xED00007374686769 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69736E4973707061 && a2 == 0xEC00000073746867)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_230D9FA40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617246656D6974 && a2 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365536C61746F74 && a2 == 0xED0000736E6F6973 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E828A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D9FBBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449676E6F73 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D9FD68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449747369747261 && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D9FED4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D75626C61 && a2 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DA0088(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DA01FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365536C61746F74 && a2 == 0xED0000736E6F6973;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E828C0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E828E0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461526E6FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E82900 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E82920 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E82940 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E82960 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_230DA04A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DA0618(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965646F73697065 && a2 == 0xE900000000000044 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DA07D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365536C61746F74 && a2 == 0xED0000736E6F6973;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E828C0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E828E0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461526E6FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E82980 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E829A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_230DA09E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_230DA0B04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365536C61746F74 && a2 == 0xED0000736E6F6973;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E829C0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E828E0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461526E6FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E829E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DA0CCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_230DA0DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365536C61746F74 && a2 == 0xED0000736E6F6973;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6173556C61746F74 && a2 == 0xEE00656D69546567 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E828E0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7274736944707061 && a2 == 0xEF6E6F6974756269)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t ContextualContentRetrieval.generateAggregatedInsights(content:context:timeFrame:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  *(v5 + 64) = a1;
  *(v5 + 72) = a4;
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  *(v5 + 80) = v4;
  *(v5 + 88) = v8;
  *(v5 + 96) = v9;
  v10 = *(a3 + 16);
  *(v5 + 33) = v10;
  *(v5 + 56) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v10;
  v11 = swift_task_alloc();
  *(v5 + 104) = v11;
  *v11 = v5;
  v11[1] = sub_230DA10F0;

  return sub_230DAECF0(v5 + 40, (v5 + 56), v5 + 16, a4);
}

uint64_t sub_230DA10F0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_230DA1404;
  }

  else
  {
    v2 = sub_230DA1204;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230DA1204()
{
  v41 = v0;
  v1 = *(v0 + 33);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  *&v32 = *(v0 + 40);
  BYTE8(v32) = v6;
  sub_230DA2190(&v32, &v36);
  v7 = v36;
  v8 = BYTE8(v36);
  *&v32 = v3;
  *(&v32 + 1) = v2;
  LOBYTE(v33) = v1;
  v9 = sub_230DA23B0(&v32);
  v30 = v10;
  v31 = v9;
  v11 = sub_230DA24CC(v4);
  v28 = v12;
  v29 = v11;
  v27 = *(v7 + 16);
  *&v32 = v7;
  BYTE8(v32) = v8;
  v13 = sub_230DA2890(&v32);
  *&v36 = v7;
  BYTE8(v36) = v8;
  sub_230DA1644(&v36, &v32);
  v14 = v32;
  *&v36 = v7;
  BYTE8(v36) = v8;
  sub_230D91304(&v36, &v32);
  v39 = v7;
  v40 = v8;
  sub_230D948AC(&v39, &v36);
  v24 = v37;
  v25 = v38;
  v26 = v36;
  v39 = v7;
  v40 = v8;
  sub_230D95E7C(&v39, &v36);
  v15 = v38;
  v22 = v36;
  v23 = v37;
  v39 = v7;
  v40 = v8;
  sub_230D902E8(&v39, &v36);

  v16 = v36;
  v17 = v37;
  *v5 = v31;
  *(v5 + 8) = v30;
  *(v5 + 16) = v29;
  *(v5 + 24) = v28;
  *(v5 + 32) = v27;
  *(v5 + 40) = v13;
  *(v5 + 48) = v14;
  v18 = v33;
  *(v5 + 64) = v32;
  *(v5 + 80) = v18;
  v19 = v35;
  *(v5 + 96) = v34;
  *(v5 + 112) = v19;
  *(v5 + 128) = v26;
  *(v5 + 144) = v24;
  *(v5 + 160) = v25;
  *(v5 + 176) = v22;
  *(v5 + 192) = v23;
  *(v5 + 208) = v15;
  *(v5 + 216) = v16;
  *(v5 + 232) = v17;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t ContextualContentRetrieval.processAggregatedInsights(from:content:context:timeFrame:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a5;
  v7 = *a2;
  *(v6 + 32) = v5;
  *(v6 + 40) = v7;
  *(v6 + 64) = *(a2 + 8);
  *(v6 + 48) = *a4;
  *(v6 + 65) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_230DA145C, 0, 0);
}

uint64_t sub_230DA145C()
{
  v40 = v0;
  v1 = *(v0 + 65);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  *&v31 = *(v0 + 40);
  BYTE8(v31) = v4;
  sub_230DA2190(&v31, &v35);
  v7 = v35;
  v8 = BYTE8(v35);
  *&v31 = v3;
  *(&v31 + 1) = v2;
  LOBYTE(v32) = v1;
  v9 = sub_230DA23B0(&v31);
  v29 = v10;
  v30 = v9;
  v11 = sub_230DA24CC(v5);
  v13 = v12;
  v28 = *(v7 + 16);
  *&v31 = v7;
  BYTE8(v31) = v8;
  v14 = sub_230DA2890(&v31);
  *&v35 = v7;
  BYTE8(v35) = v8;
  sub_230DA1644(&v35, &v31);
  v15 = v31;
  *&v35 = v7;
  BYTE8(v35) = v8;
  sub_230D91304(&v35, &v31);
  v38 = v7;
  v39 = v8;
  sub_230D948AC(&v38, &v35);
  v25 = v36;
  v26 = v37;
  v27 = v35;
  v38 = v7;
  v39 = v8;
  sub_230D95E7C(&v38, &v35);
  v23 = v35;
  v24 = v36;
  v16 = v37;
  v38 = v7;
  v39 = v8;
  sub_230D902E8(&v38, &v35);

  v17 = v35;
  v18 = v36;
  *v6 = v30;
  *(v6 + 8) = v29;
  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v28;
  *(v6 + 40) = v14;
  *(v6 + 48) = v15;
  v19 = v32;
  *(v6 + 64) = v31;
  *(v6 + 80) = v19;
  v20 = v34;
  *(v6 + 96) = v33;
  *(v6 + 112) = v20;
  *(v6 + 128) = v27;
  *(v6 + 144) = v25;
  *(v6 + 160) = v26;
  *(v6 + 176) = v23;
  *(v6 + 192) = v24;
  *(v6 + 208) = v16;
  *(v6 + 216) = v17;
  *(v6 + 232) = v18;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t *sub_230DA1644@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  if (result[1])
  {
    goto LABEL_57;
  }

  v109 = a2;
  v2 = *result;

  v3 = sub_230D0E4B4(MEMORY[0x277D84F90]);
  v113 = *(v2 + 16);
  if (!v113)
  {
LABEL_45:

    if (*(v3 + 16) >= 2uLL)
    {
      v48 = 0;
      v49 = v3 + 64;
      v50 = 1 << *(v3 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v3 + 64);
      v53 = (v50 + 63) >> 6;
      v54 = 0.0;
      if (v52)
      {
        while (1)
        {
          v55 = v48;
LABEL_54:
          v56 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          v54 = v54 + *(*(v3 + 56) + ((v55 << 10) | (16 * v56)) + 8);
          if (!v52)
          {
            goto LABEL_50;
          }
        }
      }

      while (1)
      {
LABEL_50:
        v55 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_106;
        }

        if (v55 >= v53)
        {
          break;
        }

        v52 = *(v49 + 8 * v55);
        ++v48;
        if (v52)
        {
          v48 = v55;
          goto LABEL_54;
        }
      }

      v57 = 0;
      v58 = 0;
      v59 = 1 << *(v3 + 32);
      v60 = -1;
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      v61 = v60 & *(v3 + 64);
      v62 = (v59 + 63) >> 6;
      do
      {
        if (v61)
        {
          v63 = v57;
        }

        else
        {
          do
          {
            v63 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_107;
            }

            if (v63 >= v62)
            {
              goto LABEL_70;
            }

            v61 = *(v49 + 8 * v63);
            ++v57;
          }

          while (!v61);
          v57 = v63;
        }

        v64 = __clz(__rbit64(v61));
        v61 &= v61 - 1;
        v65 = *(*(v3 + 56) + ((v63 << 10) | (16 * v64)));
        v26 = __OFADD__(v58, v65);
        v58 += v65;
      }

      while (!v26);
      __break(1u);
LABEL_70:
      v66 = MEMORY[0x277D84F90];
      v114 = sub_230D0EAD0(MEMORY[0x277D84F90]);
      v67 = sub_230D0EAD0(v66);
      v68 = 1 << *(v3 + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & *(v3 + 64);
      v71 = (v68 + 63) >> 6;
      v72 = v58;

      v73 = 0;
      v110 = v71;
      for (i = v58; ; v58 = i)
      {
        if (!v70)
        {
          while (1)
          {
            v75 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              break;
            }

            if (v75 >= v71)
            {

              *v109 = v114;
              v109[1] = v67;
              return result;
            }

            v70 = *(v49 + 8 * v75);
            ++v73;
            if (v70)
            {
              goto LABEL_80;
            }
          }

LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v75 = v73;
LABEL_80:
        v76 = (v75 << 10) | (16 * __clz(__rbit64(v70)));
        v77 = *(v3 + 56) + v76;
        if (v54 <= 0.0)
        {
          v78 = 0.0;
          v79 = 0.0;
          if (v58 <= 0)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v78 = *(v77 + 8) / v54;
          if (v58 < 1)
          {
            v79 = 0.0;
            goto LABEL_85;
          }
        }

        v79 = *v77 / v72 * 100.0;
LABEL_85:
        v80 = (*(v3 + 48) + v76);
        v82 = *v80;
        v81 = v80[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = sub_230DA41A0(v82, v81);
        v86 = v114[2];
        v87 = (v85 & 1) == 0;
        v26 = __OFADD__(v86, v87);
        v88 = v86 + v87;
        if (v26)
        {
          goto LABEL_114;
        }

        v89 = v85;
        if (v114[3] >= v88)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v107 = v84;
            sub_230DBAB18();
            v84 = v107;
          }
        }

        else
        {
          sub_230DB8198(v88, isUniquelyReferenced_nonNull_native);
          v84 = sub_230DA41A0(v82, v81);
          if ((v89 & 1) != (v90 & 1))
          {
            goto LABEL_118;
          }
        }

        v91 = round(v78 * 100.0) / 100.0;
        if (v89)
        {
          *(v114[7] + 8 * v84) = v91;
        }

        else
        {
          v114[(v84 >> 6) + 8] |= 1 << v84;
          v92 = (v114[6] + 16 * v84);
          *v92 = v82;
          v92[1] = v81;
          *(v114[7] + 8 * v84) = v91;
          v93 = v114[2];
          v26 = __OFADD__(v93, 1);
          v94 = v93 + 1;
          if (v26)
          {
            goto LABEL_116;
          }

          v114[2] = v94;
        }

        v95 = swift_isUniquelyReferenced_nonNull_native();
        v116 = v67;
        v96 = sub_230DA41A0(v82, v81);
        v98 = *(v67 + 16);
        v99 = (v97 & 1) == 0;
        v26 = __OFADD__(v98, v99);
        v100 = v98 + v99;
        if (v26)
        {
          goto LABEL_115;
        }

        v101 = v97;
        if (*(v67 + 24) >= v100)
        {
          if ((v95 & 1) == 0)
          {
            v108 = v96;
            sub_230DBAB18();
            v96 = v108;
          }
        }

        else
        {
          sub_230DB8198(v100, v95);
          v96 = sub_230DA41A0(v82, v81);
          if ((v101 & 1) != (v102 & 1))
          {
            goto LABEL_118;
          }
        }

        v70 &= v70 - 1;
        v103 = round(v79) / 100.0;
        if (v101)
        {
          v74 = v96;

          v67 = v116;
          *(v116[7] + 8 * v74) = v103;
        }

        else
        {
          v67 = v116;
          v116[(v96 >> 6) + 8] |= 1 << v96;
          v104 = (v116[6] + 16 * v96);
          *v104 = v82;
          v104[1] = v81;
          *(v116[7] + 8 * v96) = v103;
          v105 = v116[2];
          v26 = __OFADD__(v105, 1);
          v106 = v105 + 1;
          if (v26)
          {
            goto LABEL_117;
          }

          v116[2] = v106;
        }

        v73 = v75;
        v71 = v110;
      }
    }

    a2 = v109;
LABEL_57:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  v4 = 0;
  v5 = (v2 + 72);
  v111 = v2;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    ++v4;
    v8 = *(v5 - 8);
    v9 = 0x6F65646976;
    if (v8 != 2)
    {
      v9 = 0x6E776F6E6B6E75;
    }

    v10 = 0xE500000000000000;
    if (v8 == 2)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = 0x636973756DLL;
    if (*(v5 - 8))
    {
      v12 = 0x74736163646F70;
      v10 = 0xE700000000000000;
    }

    v13 = *(v5 - 8) <= 1u ? v12 : v9;
    v14 = *(v5 - 8) <= 1u ? v10 : v11;
    v15 = round(*v5 * 100.0) / 100.0;
    if (*(v3 + 16))
    {
      v16 = sub_230DA41A0(v13, v14);
      if (v17)
      {
        break;
      }
    }

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_230DA41A0(v13, v14);
    v33 = *(v3 + 16);
    v34 = (v32 & 1) == 0;
    v26 = __OFADD__(v33, v34);
    v35 = v33 + v34;
    if (v26)
    {
      goto LABEL_109;
    }

    v36 = v32;
    if (*(v3 + 24) < v35)
    {
      sub_230DB732C(v35, v30);
      v31 = sub_230DA41A0(v13, v14);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_118;
      }

LABEL_33:
      if ((v36 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
    }

    if (v30)
    {
      goto LABEL_33;
    }

    v43 = v31;
    sub_230DBA320();
    v31 = v43;
    if ((v36 & 1) == 0)
    {
LABEL_34:
      *(v3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v38 = (*(v3 + 48) + 16 * v31);
      *v38 = v13;
      v38[1] = v14;
      v39 = *(v3 + 56) + 16 * v31;
      *v39 = 1;
      *(v39 + 8) = v15;
      v40 = *(v3 + 16);
      v26 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v26)
      {
        goto LABEL_110;
      }

LABEL_44:
      *(v3 + 16) = v41;
      goto LABEL_6;
    }

LABEL_4:
    v6 = v31;

    v7 = *(v3 + 56) + 16 * v6;
    *v7 = 1;
LABEL_5:
    *(v7 + 8) = v15;
LABEL_6:
    v2 = v111;
    v5 += 21;
    if (v113 == v4)
    {
      goto LABEL_45;
    }
  }

  v18 = *(v3 + 56) + 16 * v16;
  v19 = *v18 + 1;
  if (__OFADD__(*v18, 1))
  {
    goto LABEL_111;
  }

  v20 = *(v18 + 8);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v115 = v3;
  v22 = sub_230DA41A0(v13, v14);
  v24 = *(v3 + 16);
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (!v26)
  {
    v28 = v23;
    if (*(v3 + 24) < v27)
    {
      sub_230DB732C(v27, v21);
      v22 = sub_230DA41A0(v13, v14);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_118;
      }

      goto LABEL_38;
    }

    if (v21)
    {
LABEL_38:
      v15 = v15 + v20;
      if ((v28 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v44 = v22;
      sub_230DBA320();
      v22 = v44;
      v15 = v15 + v20;
      if ((v28 & 1) == 0)
      {
LABEL_43:
        v3 = v115;
        v115[(v22 >> 6) + 8] |= 1 << v22;
        v45 = (v115[6] + 16 * v22);
        *v45 = v13;
        v45[1] = v14;
        v46 = v115[7] + 16 * v22;
        *v46 = v19;
        *(v46 + 8) = v15;
        v47 = v115[2];
        v26 = __OFADD__(v47, 1);
        v41 = v47 + 1;
        if (v26)
        {
          goto LABEL_113;
        }

        goto LABEL_44;
      }
    }

    v42 = v22;

    v3 = v115;
    v7 = v115[7] + 16 * v42;
    *v7 = v19;
    goto LABEL_5;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  result = sub_230E69950();
  __break(1u);
  return result;
}

void sub_230DA1E8C(uint64_t a1, double a2, double a3, __n128 a4, __n128 a5, double a6)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
    while (2)
    {
      v10 = (v8 + 168 * v7);
      v11 = v7;
      while (1)
      {
        if (v11 >= v6)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

        v12 = v10[9];
        v50 = v10[8];
        v51 = v12;
        v52 = *(v10 + 20);
        v13 = v10[5];
        v46 = v10[4];
        v47 = v13;
        v14 = v10[7];
        v48 = v10[6];
        v49 = v14;
        v15 = v10[1];
        v42 = *v10;
        v43 = v15;
        v16 = v10[3];
        v44 = v10[2];
        v45 = v16;
        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_34;
        }

        if (v45)
        {
          break;
        }

        ++v11;
        v10 = (v10 + 168);
        if (v7 == v6)
        {
          goto LABEL_14;
        }
      }

      sub_230D93514(&v42, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_230D48F00(0, *(v9 + 16) + 1, 1);
        v9 = v53;
      }

      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_230D48F00((v18 > 1), v19 + 1, 1);
        v9 = v53;
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 168 * v19;
      v21 = v42;
      v22 = v44;
      *(v20 + 48) = v43;
      *(v20 + 64) = v22;
      *(v20 + 32) = v21;
      v23 = v45;
      v24 = v46;
      a5 = v48;
      *(v20 + 112) = v47;
      *(v20 + 128) = a5;
      *(v20 + 80) = v23;
      *(v20 + 96) = v24;
      v25 = v49;
      v26 = v50;
      a4 = v51;
      *(v20 + 192) = v52;
      *(v20 + 160) = v26;
      *(v20 + 176) = a4;
      *(v20 + 144) = v25;
      if (v7 != v6)
      {
        continue;
      }

      break;
    }

LABEL_14:
    v27 = *(v9 + 16);
    if (v27)
    {
      if (v27 == 1)
      {
        v28 = 0;
        v29 = 0.0;
        goto LABEL_27;
      }

      v28 = v27 & 0x7FFFFFFFFFFFFFFELL;
      v33 = (v9 + 248);
      v29 = 0.0;
      v34 = v27 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        a5.n128_u32[0] = *(v33 - 42);
        a5.n128_f64[0] = a5.n128_u64[0];
        LODWORD(a6) = *v33;
        a6 = *&a6;
        v35 = *(v33 - 22) / a5.n128_f64[0];
        a4.n128_f64[0] = *(v33 - 1) / a6;
        if (v35 > 1.0)
        {
          v35 = 1.0;
        }

        if (a4.n128_f64[0] > 1.0)
        {
          a4.n128_f64[0] = 1.0;
        }

        v29 = v29 + v35 + a4.n128_f64[0];
        v33 += 42;
        v34 -= 2;
      }

      while (v34);
      if (v27 != v28)
      {
LABEL_27:
        v36 = v27 - v28;
        v37 = (v9 + 168 * v28 + 80);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          v37 += 21;
          a4.n128_u32[0] = v39;
          a4.n128_f64[0] = a4.n128_u64[0];
          v40 = v38 / a4.n128_f64[0];
          if (v40 > 1.0)
          {
            v40 = 1.0;
          }

          v29 = v29 + v40;
          --v36;
        }

        while (v36);
      }

      return;
    }

    v30 = sub_230E68D60();
    v31 = sub_230E69400();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_230D02000, v30, v31, "[AggregationUtilities][calculateCompletionRate] No sessions with valid content length", v32, 2u);
      MEMORY[0x23191EAE0](v32, -1, -1);
    }
  }
}

uint64_t sub_230DA2190@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {
    *a2 = v3;
    *(a2 + 8) = 1;
  }

  else
  {
    v5 = *(v3 + 16);

    if (v5)
    {
      v6 = 0;
      v7 = v3 + 32;
      v8 = MEMORY[0x277D84F90];
      do
      {
        v9 = *(v3 + 16);
        v10 = (v7 + 168 * v6);
        v11 = v6;
        while (1)
        {
          if (v11 >= v9)
          {
            __break(1u);
            return result;
          }

          v12 = *v10;
          v13 = v10[2];
          v34 = v10[1];
          v35 = v13;
          v33 = v12;
          v14 = v10[3];
          v15 = v10[4];
          v16 = v10[6];
          v38 = v10[5];
          v39 = v16;
          v36 = v14;
          v37 = v15;
          v17 = v10[7];
          v18 = v10[8];
          v19 = v10[9];
          v43 = *(v10 + 20);
          v41 = v18;
          v42 = v19;
          v40 = v17;
          v6 = v11 + 1;
          if (*(&v35 + 1) >= 15.0)
          {
            break;
          }

          v10 = (v10 + 168);
          ++v11;
          if (v5 == v6)
          {
            goto LABEL_19;
          }
        }

        v31 = v7;
        sub_230D93514(&v33, v32);
        result = swift_isUniquelyReferenced_nonNull_native();
        v44 = v8;
        if ((result & 1) == 0)
        {
          result = sub_230D48F00(0, *(v8 + 16) + 1, 1);
          v8 = v44;
        }

        v21 = *(v8 + 16);
        v20 = *(v8 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_230D48F00((v20 > 1), v21 + 1, 1);
          v8 = v44;
        }

        *(v8 + 16) = v21 + 1;
        v22 = v8 + 168 * v21;
        v23 = v33;
        v24 = v35;
        *(v22 + 48) = v34;
        *(v22 + 64) = v24;
        *(v22 + 32) = v23;
        v25 = v36;
        v26 = v37;
        v27 = v39;
        *(v22 + 112) = v38;
        *(v22 + 128) = v27;
        *(v22 + 80) = v25;
        *(v22 + 96) = v26;
        v28 = v40;
        v29 = v41;
        v30 = v42;
        *(v22 + 192) = v43;
        *(v22 + 160) = v29;
        *(v22 + 176) = v30;
        *(v22 + 144) = v28;
        v7 = v31;
      }

      while (v5 - 1 != v11);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

LABEL_19:

    *a2 = v8;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_230DA23B0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      return 0xD000000000000012;
    }

    else if (v2 | v3)
    {
      return 0x20746E6572727563;
    }

    else
    {
      return 0x74756F6B726F77;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 0x6E6F697461636F6CLL;
LABEL_8:
      v7 = v5;
      MEMORY[0x23191DA00](v2, v3);
      MEMORY[0x23191DA00](41, 0xE100000000000000);
      return v7;
    }

    if (v3)
    {
      v5 = 0x206574756D6D6F63;
      goto LABEL_8;
    }

    return 0x6574756D6D6F63;
  }
}

uint64_t sub_230DA24CC(uint64_t a1)
{
  v2 = sub_230E68910();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for TimeFrame(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_230DA29A0(a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0) + 48);
      v25 = *(v3 + 32);
      v25(v10, v14, v2);
      v25(v7, (v14 + v24), v2);
      v26 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v26 setDateStyle_];
      v41 = 0x206D6F7266;
      v42 = 0xE500000000000000;
      v27 = sub_230E688B0();
      v28 = [v26 stringFromDate_];

      v29 = sub_230E69060();
      v31 = v30;

      MEMORY[0x23191DA00](v29, v31);

      MEMORY[0x23191DA00](544175136, 0xE400000000000000);
      v32 = sub_230E688B0();
      v33 = [v26 stringFromDate_];

      v34 = sub_230E69060();
      v36 = v35;

      MEMORY[0x23191DA00](v34, v36);

      v37 = v41;
      v38 = *(v3 + 8);
      v38(v7, v2);
      v38(v10, v2);
      return v37;
    }

    v16 = *v14;
    v41 = 0x2074736170;
    v42 = 0xE500000000000000;
    v40 = v16;
    v17 = sub_230E69890();
    MEMORY[0x23191DA00](v17);

    v18 = 0x6B65657720;
    v19 = 0xE500000000000000;
  }

  else
  {
    v16 = *v14;
    v41 = 0x2074736170;
    v42 = 0xE500000000000000;
    v40 = v16;
    v20 = sub_230E69890();
    MEMORY[0x23191DA00](v20);

    v18 = 2036425760;
    v19 = 0xE400000000000000;
  }

  MEMORY[0x23191DA00](v18, v19);
  if (v16 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = 115;
  }

  if (v16 == 1)
  {
    v22 = 0xE000000000000000;
  }

  else
  {
    v22 = 0xE100000000000000;
  }

  MEMORY[0x23191DA00](v21, v22);

  return v41;
}

double sub_230DA2890(_BYTE *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (a1[8])
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = 0;
        v4 = 0.0;
      }

      else
      {
        v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
        v7 = (v1 + 104);
        v4 = 0.0;
        v8 = v2 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v9 = *(v7 - 5);
          v10 = *v7;
          v7 += 10;
          v4 = v4 + v9 + v10;
          v8 -= 2;
        }

        while (v8);
        if (v2 == v3)
        {
          goto LABEL_20;
        }
      }

      v11 = v2 - v3;
      v12 = (v1 + 40 * v3 + 64);
      do
      {
        v13 = *v12;
        v12 += 5;
        v4 = v4 + v13;
        --v11;
      }

      while (v11);
LABEL_20:
      v6 = v4 * 100.0;
      return round(v6) / 100.0;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0;
      v4 = 0.0;
    }

    else
    {
      v5 = v2 & 0x7FFFFFFFFFFFFFFELL;
      v14 = (v1 + 240);
      v4 = 0.0;
      v15 = v2 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v4 = v4 + *(v14 - 21) + *v14;
        v14 += 42;
        v15 -= 2;
      }

      while (v15);
      if (v2 == v5)
      {
        goto LABEL_20;
      }
    }

    v16 = v2 - v5;
    v17 = (v1 + 168 * v5 + 72);
    do
    {
      v18 = *v17;
      v17 += 21;
      v4 = v4 + v18;
      --v16;
    }

    while (v16);
    goto LABEL_20;
  }

  v6 = 0.0;
  return round(v6) / 100.0;
}

uint64_t sub_230DA29A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeFrame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppUsage.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall AppUsage.init(startTime:endTime:bundleID:foregroundDuration:)(ServicesIntelligence::AppUsage *__return_ptr retstr, Swift::Double startTime, Swift::Double endTime, Swift::String bundleID, Swift::Double foregroundDuration)
{
  retstr->startTime = startTime;
  retstr->endTime = endTime;
  retstr->bundleID = bundleID;
  retstr->foregroundDuration = foregroundDuration;
}

uint64_t sub_230DA2A5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230DA2AA4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_230DA2B00()
{
  v0 = sub_230E68D80();
  __swift_allocate_value_buffer(v0, qword_27DB5C1E0);
  __swift_project_value_buffer(v0, qword_27DB5C1E0);
  return sub_230E68D70();
}

uint64_t sub_230DA2B80(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v77 = sub_230D0E9B4(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = v2;
LABEL_55:
    v69 = v5[2];
    if (v69)
    {
      *&v79 = MEMORY[0x277D84F90];
      sub_230D49090(0, v69, 0);
      v70 = 4;
      v71 = v79;
      do
      {
        v72 = v5[v70];
        *&v79 = v71;
        v73 = *(v71 + 16);
        v74 = *(v71 + 24);

        if (v73 >= v74 >> 1)
        {
          sub_230D49090((v74 > 1), v73 + 1, 1);
          v71 = v79;
        }

        *(v71 + 16) = v73 + 1;
        *(v71 + 8 * v73 + 32) = v72;
        ++v70;
        --v69;
      }

      while (v69);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v71;
  }

  v4 = (a1 + 32);
  v5 = MEMORY[0x277D84F90];
  v76 = "time-based context";
  while (1)
  {
    v6 = *v4;
    if (*(*v4 + 16))
    {

      v7 = sub_230DA41A0(0x6D6954746E657665, 0xEE00706D61747365);
      if (v8)
      {
        sub_230D82664(*(v6 + 56) + 32 * v7, &v79);
      }

      else
      {
        v79 = 0u;
        v80 = 0u;
      }
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v9 = *v78;
    if (*(v6 + 16) && (v10 = sub_230DA41A0(0x676E697472617473, 0xE800000000000000), (v11 & 1) != 0))
    {
      sub_230D82664(*(v6 + 56) + 32 * v10, &v79);
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v12 = *&v78[0];
    if (*(v6 + 16) && (v13 = sub_230DA41A0(0x4449656C646E7562, 0xE800000000000000), (v14 & 1) != 0))
    {
      sub_230D82664(*(v6 + 56) + 32 * v13, &v79);
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
    }

    if ((swift_dynamicCast() & 1) == 0 || (v15 = *(&v78[0] + 1)) == 0)
    {
LABEL_26:
      if (qword_27DB5A440 != -1)
      {
        swift_once();
      }

      v26 = sub_230E68D80();
      __swift_project_value_buffer(v26, qword_27DB5C1E0);

      v27 = sub_230E68D60();
      v28 = sub_230E69400();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v79 = v30;
        *v29 = 136315138;
        v31 = sub_230E68F60();
        v33 = v32;

        v34 = sub_230D7E620(v31, v33, &v79);

        *(v29 + 4) = v34;
        v35 = v28;
        v36 = v27;
        v37 = "[AppUsageConsolidator][consolidateAppUsageRows] Skipping row with invalid data: %s";
        goto LABEL_30;
      }

      goto LABEL_47;
    }

    v16 = *&v78[0];
    if (v12 != 1)
    {

      v38 = v77;
      v39 = sub_230DA41A0(v16, v15);
      v41 = v40;

      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v79 = v77;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_230DBA998();
          v38 = v79;
        }

        v43 = *(v38 + 56) + 16 * v39;
        v44 = *v43;
        v45 = *(v43 + 8);
        v77 = v38;
        sub_230E1B1F4(v39, v38);
        if (v9 - v45 > 0.0)
        {
          v46 = MEMORY[0x277D839F8];
          *(&v80 + 1) = MEMORY[0x277D839F8];
          *&v79 = v45;
          sub_230D0E394(&v79, v78);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          sub_230E1BE84(v78, 0x6D69547472617473, 0xE900000000000065, v47);
          *(&v80 + 1) = v46;
          *&v79 = v9;
          sub_230D0E394(&v79, v78);
          v48 = swift_isUniquelyReferenced_nonNull_native();
          sub_230E1BE84(v78, 0x656D6954646E65, 0xE700000000000000, v48);
          *(&v80 + 1) = v46;
          *&v79 = v9 - v45;
          sub_230D0E394(&v79, v78);
          v49 = swift_isUniquelyReferenced_nonNull_native();
          sub_230E1BE84(v78, 0xD000000000000012, v76 | 0x8000000000000000, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_230E4A5F8(0, v5[2] + 1, 1, v5, v50, v51, v52, v53, v76);
          }

          v55 = v5[2];
          v54 = v5[3];
          if (v55 >= v54 >> 1)
          {
            v5 = sub_230E4A5F8((v54 > 1), v55 + 1, 1, v5, v50, v51, v52, v53, v76);
          }

          v5[2] = v55 + 1;
          v5[v55 + 4] = v44;
          goto LABEL_49;
        }

        if (qword_27DB5A440 != -1)
        {
          swift_once();
        }

        v57 = sub_230E68D80();
        __swift_project_value_buffer(v57, qword_27DB5C1E0);

        v27 = sub_230E68D60();
        v58 = sub_230E69400();

        if (os_log_type_enabled(v27, v58))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *&v79 = v30;
          *v29 = 136315138;
          v59 = sub_230E68F60();
          v61 = v60;

          v62 = sub_230D7E620(v59, v61, &v79);

          *(v29 + 4) = v62;
          v35 = v58;
          v36 = v27;
          v37 = "[AppUsageConsolidator][consolidateAppUsageRows] negative duration for session, skipping: %s";
LABEL_30:
          _os_log_impl(&dword_230D02000, v36, v35, v37, v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          MEMORY[0x23191EAE0](v30, -1, -1);
          MEMORY[0x23191EAE0](v29, -1, -1);
LABEL_48:

          goto LABEL_49;
        }

LABEL_47:

        goto LABEL_48;
      }

      goto LABEL_49;
    }

    v17 = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v77;
    v19 = sub_230DA41A0(v16, v15);
    v20 = *(v77 + 16);
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (*(v77 + 24) >= v22)
    {
      if (v17)
      {
        if (v18)
        {
          goto LABEL_42;
        }
      }

      else
      {
        sub_230DBA998();
        if (v23)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      sub_230DB7ED0(v22, v17);
      v24 = sub_230DA41A0(v16, v15);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_65;
      }

      v19 = v24;
      if (v23)
      {
LABEL_42:

        v77 = v79;
        v56 = *(v79 + 56) + 16 * v19;
        *v56 = v6;
        *(v56 + 8) = v9;

        goto LABEL_49;
      }
    }

    v63 = v79;
    *(v79 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v64 = (v63[6] + 16 * v19);
    *v64 = v16;
    v64[1] = v15;
    v65 = v63[7] + 16 * v19;
    *v65 = v6;
    *(v65 + 8) = v9;
    v66 = v63[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_64;
    }

    v77 = v63;
    v63[2] = v68;
LABEL_49:
    ++v4;
    if (!--v3)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_230E69950();
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_230DA3484()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_230E69060();
    v4 = v3;

    if (v2 == 0xD00000000000001FLL && 0x8000000230E80090 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_230E698C0();
    }
  }

  return v1 & 1;
}

uint64_t sub_230DA3554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_230DA3574, 0, 0);
}

uint64_t sub_230DA3574()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_230DA3654;
  v4 = v0[2];
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A8](v4, v5, 0, 0, &unk_230E74FB0, v2, v6);
}

uint64_t sub_230DA3654()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230DA3790, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_230DA3790()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DA37F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DA389C, 0, 0);
}

uint64_t sub_230DA389C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v21 = **(v0 + 72);
    v3 = (v1 + 32);
    v4 = sub_230E69310();
    v5 = *(v4 - 8);
    v20 = *(v5 + 56);
    v19 = (v5 + 48);
    v18 = (v5 + 8);
    do
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v22 = *v3;
      v20(v8, 1, 1, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = (v10 + 16);
      *(v10 + 24) = 0;
      *(v10 + 32) = v22;
      sub_230DA3F6C(v8, v9);
      LODWORD(v9) = (*v19)(v9, 1, v4);
      swift_retain_n();
      v12 = *(v0 + 88);
      if (v9 == 1)
      {
        sub_230D2D9F8(*(v0 + 88), &qword_27DB5B010, &unk_230E733F0);
        if (*v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_230E69300();
        (*v18)(v12, v4);
        if (*v11)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v13 = sub_230E692D0();
          v14 = v15;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v13 = 0;
      v14 = 0;
LABEL_10:

      if (v14 | v13)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v13;
        *(v0 + 40) = v14;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v21;
      swift_task_create();

      sub_230D2D9F8(v7, &qword_27DB5B010, &unk_230E733F0);
      ++v3;
      --v2;
    }

    while (v2);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_230DA3B70(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_230D1BF00;

  return sub_230DA37F4(a1, a2, v6);
}

uint64_t sub_230DA3C20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 48) = v4;
  *v4 = v3;
  v4[1] = sub_230DA3D10;

  return v6(v3 + 16);
}

uint64_t sub_230DA3D10()
{
  v2 = *v1;

  if (v0)
  {
    MEMORY[0x23191E910](v0);
    v3 = sub_230DA3E40;
  }

  else
  {
    sub_230D2D9F8(v2 + 16, &unk_27DB5D8D0, &qword_230E756A0);
    v3 = sub_230D63F54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DA3E40()
{
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_230D2D9F8(v0 + 16, &unk_27DB5D8D0, &qword_230E756A0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DA3EC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_230D1D2F8;

  return sub_230DA3C20(v2, v3, v4);
}

uint64_t sub_230DA3F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_230DA3FDC()
{
  v1 = sub_230E689F0();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_230E68A10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_230E69030();
  v9 = [v0 containerURLForSecurityApplicationGroupIdentifier_];

  if (v9)
  {
    sub_230E68810();
  }

  else
  {
    sub_230E689E0();
    sub_230DA42D0(MEMORY[0x277D84F90]);
    sub_230DA43E0();
    sub_230E687D0();
    sub_230E68A00();
    (*(v4 + 8))(v7, v3);
    swift_willThrow();
  }
}

unint64_t sub_230DA41A0(uint64_t a1, uint64_t a2)
{
  sub_230E699B0();
  sub_230E69100();
  v4 = sub_230E699D0();

  return sub_230DA4218(a1, a2, v4);
}

unint64_t sub_230DA4218(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_230E698C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_230DA42D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A928, &unk_230E75CC0);
    v3 = sub_230E69640();
    v4 = a1 + 32;

    while (1)
    {
      sub_230DA4438(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_230DA41A0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_230D0E394(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_230DA43E0()
{
  result = qword_27DB5C1F8;
  if (!qword_27DB5C1F8)
  {
    sub_230E68A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1F8);
  }

  return result;
}

uint64_t sub_230DA4438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A930, &unk_230E6B9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContentResult.appUsage.getter()
{
  if (*(v0 + 8) == 1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t ContentResult.mediaPlayback.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
  }
}

uint64_t MediaPlaybackType.rawValue.getter()
{
  v1 = 0x636973756DLL;
  v2 = 0x6F65646976;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x74736163646F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

ServicesIntelligence::MediaPlaybackType_optional __swiftcall MediaPlaybackType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_230DA4608()
{
  result = qword_27DB5C200;
  if (!qword_27DB5C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C200);
  }

  return result;
}

uint64_t sub_230DA465C()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DA4714(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230DA47B8(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DA4878(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x636973756DLL;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x74736163646F70;
    v2 = 0xE700000000000000;
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_230DA490C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_230DA4954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t MediaPlayback.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MediaPlayback.bundleID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t MediaPlayback.artist.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t MediaPlayback.album.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t MediaPlayback.genre.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t MediaPlayback.iTunesStoreIdentifier.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t MediaPlayback.iTunesArtistIdentifier.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t MediaPlayback.iTunesAlbumIdentifier.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t MediaPlayback.firstParty.getter()
{
  v1 = *(v0 + 32);
  if (v1 <= 1 && !*(v0 + 32))
  {
    v2 = 1;
LABEL_12:

    return v2 & 1;
  }

  v3 = sub_230E698C0();

  if ((v3 & 1) == 0)
  {
    if (v1 == 1)
    {
      v2 = 1;
      goto LABEL_12;
    }

    v4 = sub_230E698C0();

    if ((v4 & 1) == 0)
    {
      if (v1 == 2)
      {
        v2 = 1;
      }

      else
      {
        v2 = sub_230E698C0();
      }

      goto LABEL_12;
    }
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t MediaPlayback.songTitle.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32) > 1u || *(v0 + 32))
  {
    v2 = sub_230E698C0();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return v1;
}

uint64_t MediaPlayback.musicArtist.getter()
{
  v1 = *(v0 + 72);
  if (*(v0 + 32) > 1u || *(v0 + 32))
  {
    v2 = sub_230E698C0();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return v1;
}

uint64_t MediaPlayback.songID.getter()
{
  v1 = *(v0 + 120);
  if (*(v0 + 32) > 1u || *(v0 + 32))
  {
    v2 = sub_230E698C0();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return v1;
}

uint64_t MediaPlayback.artistID.getter()
{
  v1 = *(v0 + 136);
  if (*(v0 + 32) > 1u || *(v0 + 32))
  {
    v2 = sub_230E698C0();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return v1;
}

uint64_t MediaPlayback.albumID.getter()
{
  v1 = *(v0 + 152);
  if (*(v0 + 32) > 1u || *(v0 + 32))
  {
    v2 = sub_230E698C0();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return v1;
}

uint64_t MediaPlayback.episodeTitle.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32) <= 1u && *(v0 + 32))
  {

    goto LABEL_6;
  }

  v2 = sub_230E698C0();

  if (v2)
  {
LABEL_6:

    return v1;
  }

  return 0;
}

uint64_t MediaPlayback.podcastName.getter()
{
  v1 = *(v0 + 72);
  if (*(v0 + 32) <= 1u && *(v0 + 32))
  {

    goto LABEL_6;
  }

  v2 = sub_230E698C0();

  if (v2)
  {
LABEL_6:

    return v1;
  }

  return 0;
}

uint64_t MediaPlayback.episodeID.getter()
{
  v1 = *(v0 + 120);
  if (*(v0 + 32) <= 1u && *(v0 + 32))
  {

    goto LABEL_6;
  }

  v2 = sub_230E698C0();

  if (v2)
  {
LABEL_6:

    return v1;
  }

  return 0;
}

uint64_t MediaPlayback.podcastID.getter()
{
  v1 = *(v0 + 152);
  if (*(v0 + 32) <= 1u && *(v0 + 32))
  {

    goto LABEL_6;
  }

  v2 = sub_230E698C0();

  if (v2)
  {
LABEL_6:

    return v1;
  }

  return 0;
}

uint64_t MediaPlayback.videoTitle.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32) == 2)
  {
  }

  else
  {
    v2 = sub_230E698C0();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  return v1;
}

double MediaPlayback.playProgress.getter()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return fmin(*(v0 + 40) / v1 * 100.0, 100.0);
  }

  else
  {
    return 0.0;
  }
}

uint64_t MediaPlayback.formattedDuration.getter()
{
  v1 = *(v0 + 48) % 0x3Cu;
  v2 = MEMORY[0x277D83B88];
  v7 = sub_230E69890();
  MEMORY[0x23191DA00](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C208, &qword_230E75180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_230E6B3B0;
  v4 = MEMORY[0x277D83C10];
  *(v3 + 56) = v2;
  *(v3 + 64) = v4;
  *(v3 + 32) = v1;
  v5 = sub_230E69090();
  MEMORY[0x23191DA00](v5);

  return v7;
}

void MediaPlayback.formattedPlayDuration.getter()
{
  v1 = *(v0 + 40);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    sub_230E69890();
    MEMORY[0x23191DA00](8301, 0xE200000000000000);
    v2 = sub_230E69890();
    MEMORY[0x23191DA00](v2);

    MEMORY[0x23191DA00](115, 0xE100000000000000);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t MediaPlayback.init(startTime:endTime:title:type:playDuration:contentLength:bundleID:artist:album:genre:iTunesStoreIdentifier:iTunesArtistIdentifier:iTunesAlbumIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  v18 = *a3;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = v18;
  *(a9 + 40) = a12;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 120) = a15;
  *(a9 + 136) = a16;
  *(a9 + 152) = a17;
  *(a9 + 160) = a18;
  return result;
}

uint64_t sub_230DA57C4()
{
  v0 = sub_230E68D80();
  __swift_allocate_value_buffer(v0, qword_27DB5C210);
  __swift_project_value_buffer(v0, qword_27DB5C210);
  return sub_230E68D70();
}

uint64_t sub_230DA5844(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_230D0E890(MEMORY[0x277D84F90]);
  v235 = v3;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D839F8];
  if (!v4)
  {
    v151 = v3;
    goto LABEL_152;
  }

  v229 = 0;
  v6 = (a1 + 32);
  v225 = 0;
  do
  {
    v7 = *v6;
    if (*(*v6 + 16))
    {

      v8 = sub_230DA41A0(0x6D6954746E657665, 0xEE00706D61747365);
      if (v9)
      {
        sub_230D82664(*(v7 + 56) + 32 * v8, &v233);
      }

      else
      {
        v233 = 0u;
        v234 = 0u;
      }
    }

    else
    {
      v233 = 0u;
      v234 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v10 = *v232;
    if (*(v7 + 16) && (v11 = sub_230DA41A0(0x6B63616279616C70, 0xED00006574617453), (v12 & 1) != 0))
    {
      sub_230D82664(*(v7 + 56) + 32 * v11, &v233);
    }

    else
    {
      v233 = 0u;
      v234 = 0u;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v13 = *&v232[0];
    if (*(v7 + 16) && (v14 = sub_230DA41A0(0x4449656C646E7562, 0xE800000000000000), (v15 & 1) != 0))
    {
      sub_230D82664(*(v7 + 56) + 32 * v14, &v233);
    }

    else
    {
      v233 = 0u;
      v234 = 0u;
    }

    if ((swift_dynamicCast() & 1) == 0 || !*(&v232[0] + 1))
    {
LABEL_23:
      if (qword_27DB5A448 != -1)
      {
        swift_once();
      }

      v18 = sub_230E68D80();
      __swift_project_value_buffer(v18, qword_27DB5C210);

      v19 = sub_230E68D60();
      v20 = sub_230E69400();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = v2;
        v23 = swift_slowAlloc();
        *&v233 = v23;
        *v21 = 136315138;
        v24 = sub_230E68F60();
        v26 = v25;

        v27 = sub_230D7E620(v24, v26, &v233);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_230D02000, v19, v20, "[MediaPlaybackConsolidator][consolidatePlaybackRows] Skipping row with invalid data: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v28 = v23;
        v2 = v22;
        MEMORY[0x23191EAE0](v28, -1, -1);
        v29 = v21;
        v5 = MEMORY[0x277D839F8];
        MEMORY[0x23191EAE0](v29, -1, -1);
      }

      else
      {
      }

      goto LABEL_29;
    }

    if (*(v7 + 16) && (v16 = sub_230DA41A0(0xD000000000000015, 0x8000000230E82A90), (v17 & 1) != 0))
    {
      sub_230D82664(*(v7 + 56) + 32 * v16, &v233);
    }

    else
    {
      v233 = 0u;
      v234 = 0u;
    }

    if ((swift_dynamicCast() & 1) != 0 && (v30 = *(&v232[0] + 1)) != 0)
    {
      v31 = *&v232[0];
    }

    else
    {
      if (*(v7 + 16) && (v32 = sub_230DA41A0(0x656C746974, 0xE500000000000000), (v33 & 1) != 0))
      {
        sub_230D82664(*(v7 + 56) + 32 * v32, &v233);
      }

      else
      {
        v233 = 0u;
        v234 = 0u;
      }

      v34 = swift_dynamicCast();
      v36 = *(&v232[0] + 1);
      v35 = *&v232[0];
      if (!v34)
      {
        v36 = 0;
        v35 = 0;
      }

      if (v36)
      {
        v37 = v35;
      }

      else
      {
        v37 = 0x6E776F6E6B6E75;
      }

      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0xE700000000000000;
      }

      v226 = v2;
      if (*(v7 + 16) && (v39 = sub_230DA41A0(0x4449656C646E7562, 0xE800000000000000), (v40 & 1) != 0))
      {
        sub_230D82664(*(v7 + 56) + 32 * v39, &v233);
      }

      else
      {
        v233 = 0u;
        v234 = 0u;
      }

      v41 = swift_dynamicCast();
      v43 = *(&v232[0] + 1);
      v42 = *&v232[0];
      if (!v41)
      {
        v43 = 0;
        v42 = 0;
      }

      if (v43)
      {
        v44 = v42;
      }

      else
      {
        v44 = 0x6E776F6E6B6E75;
      }

      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0xE700000000000000;
      }

      *&v233 = v37;
      *(&v233 + 1) = v38;
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      MEMORY[0x23191DA00](v44, v45);

      v30 = *(&v233 + 1);
      v31 = v233;
      v2 = v226;
      v5 = MEMORY[0x277D839F8];
    }

    v46 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v46 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {
LABEL_113:

      goto LABEL_29;
    }

    v228 = v31;
    if (v13 > 2)
    {
      if (v13 != 5 && v13 != 4 && v13 != 3)
      {
LABEL_80:
        v47 = 0;
        LODWORD(v13) = 0;
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    if (!v13)
    {
      goto LABEL_72;
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_80;
      }

LABEL_72:
      v47 = 0;
      goto LABEL_73;
    }

    if (!v229 || v225 == v31 && v229 == v30)
    {
      v47 = 1;
      LODWORD(v13) = 1;
    }

    else
    {
      if (sub_230E698C0())
      {
        goto LABEL_146;
      }

      v118 = v235;
      if (!v235[2])
      {
        goto LABEL_146;
      }

      v119 = v2;

      v224 = sub_230DA41A0(v225, v229);
      v121 = v120;

      if (v121)
      {
        v122 = (v118[7] + 24 * v224);
        v123 = *v122;
        v124 = v122[1];
        v125 = v122[2];
        v231 = *v122;
        swift_bridgeObjectRetain_n();
        v126 = sub_230DB3F8C(0x6D6954746E657665, 0xEE00706D61747365, v123);
        if (v127)
        {
          sub_230E1A960(0x6D69547472617473, 0xE900000000000065, &v233);
          sub_230DA6F50(&v233);
          v128 = v231;
        }

        else
        {
          *(&v234 + 1) = v5;
          *&v233 = v126;
          sub_230D0E394(&v233, v232);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_230E1BE84(v232, 0x6D69547472617473, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
          v128 = v123;
        }

        *(&v234 + 1) = v5;
        *&v233 = v125;
        sub_230D0E394(&v233, v232);
        v136 = swift_isUniquelyReferenced_nonNull_native();
        sub_230E1BE84(v232, 0x656D6954646E65, 0xE700000000000000, v136);
        *(&v234 + 1) = v5;
        *&v233 = v124;
        sub_230D0E394(&v233, v232);
        v137 = swift_isUniquelyReferenced_nonNull_native();
        sub_230E1BE84(v232, 0x6172754479616C70, 0xEC0000006E6F6974, v137);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_230E4A5F8(0, v119[2] + 1, 1, v119, v138, v139, v140, v141, v223);
        }

        v143 = v119[2];
        v142 = v119[3];
        v144 = v119;
        if (v143 >= v142 >> 1)
        {
          v144 = sub_230E4A5F8((v142 > 1), v143 + 1, 1, v119, v138, v139, v140, v141, v223);
        }

        v144[2] = v143 + 1;
        v2 = v144;
        v144[v143 + 4] = v128;

        sub_230E1AA04(v225, v229, &v233);

LABEL_146:
        v47 = 1;
        LODWORD(v13) = 1;
        v31 = v228;
        goto LABEL_73;
      }

      v47 = 1;
      LODWORD(v13) = 1;
      v2 = v119;
      v31 = v228;
    }

LABEL_73:
    v48 = v235;
    if (v235[2])
    {
      v227 = v47;
      v49 = sub_230DA41A0(v31, v30);
      if ((v50 & 1) != 0 && (v51 = v48[7] + 24 * v49, v52 = *(v51 + 16), v10 - v52 > 3600.0))
      {
        v53 = v2;
        v54 = *v51;
        v55 = *(v51 + 8);
        v230 = *v51;
        if (*(*v51 + 16))
        {
          swift_bridgeObjectRetain_n();
          v56 = sub_230DA41A0(0x6D6954746E657665, 0xEE00706D61747365);
          if (v57)
          {
            sub_230D82664(*(v54 + 56) + 32 * v56, &v233);
          }

          else
          {
            v233 = 0u;
            v234 = 0u;
          }
        }

        else
        {
          v233 = 0u;
          v234 = 0u;
          swift_bridgeObjectRetain_n();
        }

        v58 = MEMORY[0x277D839F8];
        if (swift_dynamicCast())
        {
          *(&v234 + 1) = v58;
          *&v233 = *&v232[0];
          sub_230D0E394(&v233, v232);
          v59 = swift_isUniquelyReferenced_nonNull_native();
          sub_230E1BE84(v232, 0x6D69547472617473, 0xE900000000000065, v59);
          v60 = v54;
        }

        else
        {
          sub_230E1A960(0x6D69547472617473, 0xE900000000000065, &v233);
          sub_230DA6F50(&v233);
          v60 = v230;
        }

        *(&v234 + 1) = v58;
        *&v233 = v52;
        sub_230D0E394(&v233, v232);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        sub_230E1BE84(v232, 0x656D6954646E65, 0xE700000000000000, v61);

        *(&v234 + 1) = v58;
        *&v233 = v55;
        sub_230D0E394(&v233, v232);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        sub_230E1BE84(v232, 0x6172754479616C70, 0xEC0000006E6F6974, v62);
        v2 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_230E4A5F8(0, v53[2] + 1, 1, v53, v63, v64, v65, v66, v223);
        }

        v68 = v2[2];
        v67 = v2[3];
        v69 = v228;
        if (v68 >= v67 >> 1)
        {
          v2 = sub_230E4A5F8((v67 > 1), v68 + 1, 1, v2, v63, v64, v65, v66, v223);
          v69 = v228;
        }

        v2[2] = v68 + 1;
        v2[v68 + 4] = v60;
        sub_230E1AA04(v69, v30, &v233);

        v31 = v228;
        v5 = MEMORY[0x277D839F8];
      }

      else
      {
        v31 = v228;
      }

      v47 = v227;
    }

    if (v47)
    {

      v31 = v228;
      v225 = v228;
      v229 = v30;
    }

    if ((v13 - 2) < 2)
    {

      v70 = v235;
      if (!v235[2] || (v71 = sub_230DA41A0(v228, v30), (v72 & 1) == 0))
      {

        goto LABEL_29;
      }

      v73 = v2;
      v74 = v70[7] + 24 * v71;
      v75 = *v74;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);

      v78 = swift_isUniquelyReferenced_nonNull_native();
      *&v233 = v70;
      v79 = sub_230DA41A0(v228, v30);
      v81 = v70[2];
      v82 = (v80 & 1) == 0;
      v83 = __OFADD__(v81, v82);
      v84 = v81 + v82;
      if (v83)
      {
        goto LABEL_223;
      }

      v85 = v80;
      if (v70[3] >= v84)
      {
        if ((v78 & 1) == 0)
        {
          v149 = v79;
          sub_230DBA810();
          v79 = v149;
        }
      }

      else
      {
        sub_230DB7C08(v84, v78);
        v79 = sub_230DA41A0(v228, v30);
        if ((v85 & 1) != (v86 & 1))
        {
          goto LABEL_228;
        }
      }

      v2 = v73;
      v111 = v76 + v10 - v77;
      if ((v85 & 1) == 0)
      {
        v113 = v233;
        *(v233 + 8 * (v79 >> 6) + 64) |= 1 << v79;
        v114 = (v113[6] + 16 * v79);
        *v114 = v228;
        v114[1] = v30;
        v115 = v113[7] + 24 * v79;
        *v115 = v75;
        *(v115 + 8) = v111;
        *(v115 + 16) = v10;
        v116 = v113[2];
        v83 = __OFADD__(v116, 1);
        v117 = v116 + 1;
        if (v83)
        {
          goto LABEL_226;
        }

        goto LABEL_149;
      }

      v112 = v79;

      v109 = v233;
      v110 = *(v233 + 56) + 24 * v112;
      *v110 = v75;
      *(v110 + 8) = v111;
      goto LABEL_125;
    }

    if (v13 != 1)
    {
      goto LABEL_113;
    }

    v87 = v2;
    v88 = v235;
    v89 = v31;
    if (!v235[2] || (sub_230DA41A0(v31, v30), (v90 & 1) == 0))
    {

      v100 = swift_isUniquelyReferenced_nonNull_native();
      *&v233 = v88;
      v101 = sub_230DA41A0(v89, v30);
      v103 = v88[2];
      v104 = (v102 & 1) == 0;
      v83 = __OFADD__(v103, v104);
      v105 = v103 + v104;
      if (v83)
      {
        goto LABEL_222;
      }

      v106 = v102;
      if (v88[3] < v105)
      {
        sub_230DB7C08(v105, v100);
        v101 = sub_230DA41A0(v228, v30);
        if ((v106 & 1) != (v107 & 1))
        {
          goto LABEL_228;
        }

LABEL_119:
        v2 = v87;
        if (v106)
        {
          goto LABEL_120;
        }

LABEL_148:
        v113 = v233;
        *(v233 + 8 * (v101 >> 6) + 64) |= 1 << v101;
        v146 = (v113[6] + 16 * v101);
        *v146 = v228;
        v146[1] = v30;
        v147 = v113[7] + 24 * v101;
        *v147 = v7;
        *(v147 + 8) = 0;
        *(v147 + 16) = v10;
        v148 = v113[2];
        v83 = __OFADD__(v148, 1);
        v117 = v148 + 1;
        if (v83)
        {
          goto LABEL_224;
        }

LABEL_149:
        v113[2] = v117;
        v235 = v113;
LABEL_150:
        v5 = MEMORY[0x277D839F8];
        goto LABEL_29;
      }

      if (v100)
      {
        goto LABEL_119;
      }

      v145 = v101;
      sub_230DBA810();
      v101 = v145;
      v2 = v87;
      if ((v106 & 1) == 0)
      {
        goto LABEL_148;
      }

LABEL_120:
      v108 = v101;

      v109 = v233;
      v110 = *(v233 + 56) + 24 * v108;
      *v110 = v7;
      *(v110 + 8) = 0;
LABEL_125:
      *(v110 + 16) = v10;

      v235 = v109;
      goto LABEL_150;
    }

    v91 = swift_isUniquelyReferenced_nonNull_native();
    *&v233 = v88;
    v93 = sub_230DA41A0(v89, v30);
    v94 = v88[2];
    v95 = (v92 & 1) == 0;
    v96 = v94 + v95;
    if (__OFADD__(v94, v95))
    {
      goto LABEL_225;
    }

    v97 = v92;
    if (v88[3] >= v96)
    {
      if ((v91 & 1) == 0)
      {
        v150 = v93;
        sub_230DBA810();
        v93 = v150;
      }
    }

    else
    {
      sub_230DB7C08(v96, v91);
      v98 = sub_230DA41A0(v228, v30);
      if ((v97 & 1) != (v99 & 1))
      {
        goto LABEL_228;
      }

      v93 = v98;
    }

    v2 = v87;
    if ((v97 & 1) == 0)
    {
      goto LABEL_227;
    }

    v129 = v233;
    v130 = (*(v233 + 56) + 24 * v93);
    v131 = *v130;
    if (!*v130)
    {
      goto LABEL_227;
    }

    v132 = v130[1];
    v133 = v93;

    v134 = v129[7] + 24 * v133;
    *v134 = v131;
    *(v134 + 8) = v132;
    *(v134 + 16) = v10;

    v235 = v129;
LABEL_29:
    ++v6;
    --v4;
  }

  while (v4);
  v151 = v235;
LABEL_152:
  v152 = 1 << *(v151 + 32);
  v153 = -1;
  if (v152 < 64)
  {
    v153 = ~(-1 << v152);
  }

  v154 = v153 & *(v151 + 64);
  v155 = (v152 + 63) >> 6;

  v156 = 0;
  if (!v154)
  {
    while (1)
    {
LABEL_155:
      v157 = v156 + 1;
      if (__OFADD__(v156, 1))
      {
        __break(1u);
        goto LABEL_216;
      }

      if (v157 >= v155)
      {
        break;
      }

      v154 = *(v151 + 64 + 8 * v157);
      ++v156;
      if (v154)
      {
        v156 = v157;
        goto LABEL_159;
      }
    }

    v216 = v2[2];
    if (v216)
    {
      *&v233 = MEMORY[0x277D84F90];
      sub_230D49090(0, v216, 0);
      v217 = 4;
      v218 = v233;
      do
      {
        v219 = v2[v217];
        *&v233 = v218;
        v220 = *(v218 + 16);
        v221 = *(v218 + 24);

        if (v220 >= v221 >> 1)
        {
          sub_230D49090((v221 > 1), v220 + 1, 1);
          v218 = v233;
        }

        *(v218 + 16) = v220 + 1;
        *(v218 + 8 * v220 + 32) = v219;
        ++v217;
        --v216;
      }

      while (v216);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v218;
  }

LABEL_159:
  while (2)
  {
    v158 = (*(v151 + 56) + 24 * (__clz(__rbit64(v154)) | (v156 << 6)));
    v159 = *v158;
    v160 = v158[1];
    v161 = v158[2];
    if (*(*v158 + 16))
    {
      swift_bridgeObjectRetain_n();
      v162 = sub_230DA41A0(0x6D6954746E657665, 0xEE00706D61747365);
      if (v163)
      {
        sub_230D82664(v159[7] + 32 * v162, &v233);
      }

      else
      {
        v233 = 0u;
        v234 = 0u;
      }
    }

    else
    {
      v233 = 0u;
      v234 = 0u;
      swift_bridgeObjectRetain_n();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
    if (swift_dynamicCast())
    {
      v164 = v2;
      *(&v234 + 1) = v5;
      *&v233 = *&v232[0];
      sub_230D0E394(&v233, v232);
      v165 = swift_isUniquelyReferenced_nonNull_native();
      v166 = sub_230DA41A0(0x6D69547472617473, 0xE900000000000065);
      v168 = v159[2];
      v169 = (v167 & 1) == 0;
      v83 = __OFADD__(v168, v169);
      v170 = v168 + v169;
      if (v83)
      {
        goto LABEL_218;
      }

      v171 = v167;
      if (v159[3] >= v170)
      {
        if (v165)
        {
          goto LABEL_176;
        }

        v179 = v166;
        sub_230DBA17C();
        v166 = v179;
        v177 = v159;
        if ((v171 & 1) == 0)
        {
          goto LABEL_179;
        }

LABEL_177:
        v178 = (v177[7] + 32 * v166);
        __swift_destroy_boxed_opaque_existential_1(v178);
        sub_230D0E394(v232, v178);
      }

      else
      {
        sub_230DB7074(v170, v165);
        v166 = sub_230DA41A0(0x6D69547472617473, 0xE900000000000065);
        if ((v171 & 1) != (v172 & 1))
        {
          goto LABEL_228;
        }

LABEL_176:
        v177 = v159;
        if (v171)
        {
          goto LABEL_177;
        }

LABEL_179:
        v177[(v166 >> 6) + 8] |= 1 << v166;
        v180 = (v177[6] + 16 * v166);
        *v180 = 0x6D69547472617473;
        v180[1] = 0xE900000000000065;
        sub_230D0E394(v232, (v177[7] + 32 * v166));
        v181 = v177[2];
        v83 = __OFADD__(v181, 1);
        v182 = v181 + 1;
        if (v83)
        {
          goto LABEL_221;
        }

        v177[2] = v182;
      }
    }

    else
    {
      v173 = sub_230DA41A0(0x6D69547472617473, 0xE900000000000065);
      if (v174)
      {
        v175 = v173;
        v176 = swift_isUniquelyReferenced_nonNull_native();
        *&v232[0] = v159;
        v177 = v159;
        if ((v176 & 1) == 0)
        {
          sub_230DBA17C();
          v177 = *&v232[0];
        }

        sub_230D0E394((v177[7] + 32 * v175), &v233);
        sub_230E1AE88(v175, v177);
      }

      else
      {
        v233 = 0u;
        v234 = 0u;
        v177 = v159;
      }

      v164 = v2;
      sub_230DA6F50(&v233);
    }

    *(&v234 + 1) = MEMORY[0x277D839F8];
    *&v233 = v161;
    sub_230D0E394(&v233, v232);
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v184 = sub_230DA41A0(0x656D6954646E65, 0xE700000000000000);
    v186 = v177[2];
    v187 = (v185 & 1) == 0;
    v83 = __OFADD__(v186, v187);
    v188 = v186 + v187;
    if (!v83)
    {
      v189 = v185;
      if (v177[3] >= v188)
      {
        if ((v183 & 1) == 0)
        {
          v205 = v184;
          sub_230DBA17C();
          v184 = v205;
        }
      }

      else
      {
        sub_230DB7074(v188, v183);
        v184 = sub_230DA41A0(0x656D6954646E65, 0xE700000000000000);
        if ((v189 & 1) != (v190 & 1))
        {
          goto LABEL_228;
        }
      }

      v2 = v164;
      if (v189)
      {
        v191 = (v177[7] + 32 * v184);
        __swift_destroy_boxed_opaque_existential_1(v191);
        sub_230D0E394(v232, v191);
      }

      else
      {
        v177[(v184 >> 6) + 8] |= 1 << v184;
        v192 = (v177[6] + 16 * v184);
        *v192 = 0x656D6954646E65;
        v192[1] = 0xE700000000000000;
        sub_230D0E394(v232, (v177[7] + 32 * v184));
        v193 = v177[2];
        v83 = __OFADD__(v193, 1);
        v194 = v193 + 1;
        if (v83)
        {
          goto LABEL_219;
        }

        v177[2] = v194;
      }

      *(&v234 + 1) = MEMORY[0x277D839F8];
      *&v233 = v160;
      sub_230D0E394(&v233, v232);
      v195 = swift_isUniquelyReferenced_nonNull_native();
      v196 = sub_230DA41A0(0x6172754479616C70, 0xEC0000006E6F6974);
      v198 = v177[2];
      v199 = (v197 & 1) == 0;
      v83 = __OFADD__(v198, v199);
      v200 = v198 + v199;
      if (v83)
      {
        goto LABEL_217;
      }

      v201 = v197;
      if (v177[3] >= v200)
      {
        if (v195)
        {
          goto LABEL_196;
        }

        v206 = v196;
        sub_230DBA17C();
        v196 = v206;
        v203 = v177;
        if ((v201 & 1) == 0)
        {
          goto LABEL_199;
        }

LABEL_197:
        v204 = (v203[7] + 32 * v196);
        __swift_destroy_boxed_opaque_existential_1(v204);
        sub_230D0E394(v232, v204);
      }

      else
      {
        sub_230DB7074(v200, v195);
        v196 = sub_230DA41A0(0x6172754479616C70, 0xEC0000006E6F6974);
        if ((v201 & 1) != (v202 & 1))
        {
          goto LABEL_228;
        }

LABEL_196:
        v203 = v177;
        if (v201)
        {
          goto LABEL_197;
        }

LABEL_199:
        v203[(v196 >> 6) + 8] |= 1 << v196;
        v207 = v203[6] + 16 * v196;
        strcpy(v207, "playDuration");
        *(v207 + 13) = 0;
        *(v207 + 14) = -5120;
        sub_230D0E394(v232, (v203[7] + 32 * v196));
        v208 = v203[2];
        v83 = __OFADD__(v208, 1);
        v209 = v208 + 1;
        if (v83)
        {
          goto LABEL_220;
        }

        v203[2] = v209;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_230E4A5F8(0, v2[2] + 1, 1, v2, v210, v211, v212, v213, v223);
      }

      v215 = v2[2];
      v214 = v2[3];
      if (v215 >= v214 >> 1)
      {
        v2 = sub_230E4A5F8((v214 > 1), v215 + 1, 1, v2, v210, v211, v212, v213, v223);
      }

      v154 &= v154 - 1;
      v2[2] = v215 + 1;
      v2[v215 + 4] = v203;
      v5 = MEMORY[0x277D839F8];
      if (!v154)
      {
        goto LABEL_155;
      }

      continue;
    }

    break;
  }

LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  result = sub_230E69950();
  __break(1u);
  return result;
}

uint64_t sub_230DA6F50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230DA6FB8(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v2[31] = type metadata accessor for TimeFrame(0);
  v2[32] = swift_task_alloc();
  v3 = sub_230E68910();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DA70B4, 0, 0);
}

void sub_230DA70B4()
{
  v39 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 232);
  sub_230DA8CE0(v1);
  sub_230E688D0();
  v6 = *(v3 + 8);
  v6(v1, v2);
  sub_230DA29A0(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 280);
  if (EnumCaseMultiPayload >= 2)
  {
    v9 = *(v0 + 264);
    v10 = *(v0 + 272);
    v11 = *(v0 + 256);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0);
    (*(v10 + 32))(v8, v11 + *(v12 + 48), v9);
    v6(v11, v9);
  }

  else
  {
    sub_230E68900();
  }

  v13 = *(v0 + 280);
  v14 = *(v0 + 264);
  sub_230E688D0();
  v6(v13, v14);
  *&v35 = 0;
  *(&v35 + 1) = 0xE000000000000000;
  sub_230E69540();
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000055, 0x8000000230E82AE0);
  sub_230E69320();
  MEMORY[0x23191DA00](0xD000000000000017, 0x8000000230E82B40);
  sub_230E69320();
  MEMORY[0x23191DA00](0xD00000000000001CLL, 0x8000000230E82B60);
  v15 = sub_230DB38E4(*(v0 + 216), *(v0 + 224));

  v16 = sub_230E68D60();
  v17 = sub_230E693E0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(v15 + 2);

    _os_log_impl(&dword_230D02000, v16, v17, "[AppUsageProvider][getContents] Got %ld raw app focus events, consolidating usage sessions", v18, 0xCu);
    MEMORY[0x23191EAE0](v18, -1, -1);
  }

  else
  {
  }

  v19 = sub_230DA2B80(v15);

  v20 = sub_230E68D60();
  v21 = sub_230E693E0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(v19 + 16);

    _os_log_impl(&dword_230D02000, v20, v21, "[AppUsageProvider][getContents] Consolidated into %ld app usage sessions", v22, 0xCu);
    MEMORY[0x23191EAE0](v22, -1, -1);
  }

  else
  {
  }

  v23 = *(v19 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = MEMORY[0x277D84F90];
    while (v24 < *(v19 + 16))
    {
      v34 = *(v19 + 32 + 8 * v24);

      sub_230DA7674(&v34, &v35);
      v26 = v37;
      if (v37)
      {
        *(v0 + 200) = &type metadata for AppUsage;
        *(v0 + 208) = &off_2845AC928;
        v27 = swift_allocObject();
        *(v0 + 176) = v27;
        v28 = v36;
        v29 = v38;
        *(v27 + 16) = v35;
        *(v27 + 32) = v28;
        *(v27 + 40) = v26;
        *(v27 + 48) = v29;
        sub_230D1D080((v0 + 176), v0 + 96);
      }

      else
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }

      v30 = *(v0 + 112);
      *(v0 + 56) = *(v0 + 96);
      *(v0 + 72) = v30;
      *(v0 + 88) = *(v0 + 128);

      if (*(v0 + 80))
      {
        sub_230D1D080((v0 + 56), v0 + 16);
        sub_230D1D080((v0 + 16), v0 + 136);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_230E4A87C(0, v25[2] + 1, 1, v25);
        }

        v32 = v25[2];
        v31 = v25[3];
        if (v32 >= v31 >> 1)
        {
          v25 = sub_230E4A87C((v31 > 1), v32 + 1, 1, v25);
        }

        v25[2] = v32 + 1;
        sub_230D1D080((v0 + 136), &v25[5 * v32 + 4]);
      }

      else
      {
        sub_230DA7A24(v0 + 56);
      }

      if (v23 == ++v24)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
LABEL_25:

    v33 = *(v0 + 8);

    v33(v25);
  }
}

void sub_230DA7674(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_230DB3F8C(0x6D69547472617473, 0xE900000000000065, *a1);
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    v7 = sub_230DB3F8C(0x656D6954646E65, 0xE700000000000000, v3);
    if ((v8 & 1) == 0)
    {
      v9 = v7;
      v10 = sub_230DB403C(0x4449656C646E7562, 0xE800000000000000, v3);
      if (v11)
      {
        v12 = v10;
        v13 = v11;
        v14 = sub_230DB3F8C(0xD000000000000012, 0x8000000230E82A20, v3);
        if ((v15 & 1) == 0)
        {
          *a2 = v6;
          a2[1] = v9;
          a2[2] = v12;
          a2[3] = v13;
          a2[4] = v14;
          return;
        }
      }
    }
  }

  v16 = sub_230E68D60();
  v17 = sub_230E69400();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;

    v20 = sub_230E68F60();
    v22 = v21;

    v23 = sub_230D7E620(v20, v22, &v24);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_230D02000, v16, v17, "[AppUsageProvider][getContents] Warning: Skipping app usage row with invalid data: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x23191EAE0](v19, -1, -1);
    MEMORY[0x23191EAE0](v18, -1, -1);
  }

  a2[4] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
}

uint64_t sub_230DA788C()
{

  v1 = OBJC_IVAR____TtC20ServicesIntelligence16AppUsageProvider_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppUsageProvider(uint64_t a1)
{
  result = qword_27DB5C230;
  if (!qword_27DB5C230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DA7984(uint64_t a1)
{
  result = sub_230E68D80();
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

uint64_t sub_230DA7A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C240, &qword_230E752A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230DA7A8C(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  v3[50] = type metadata accessor for TimeFrame(0);
  v3[51] = swift_task_alloc();
  v4 = sub_230E68910();
  v3[52] = v4;
  v3[53] = *(v4 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DA7B8C, 0, 0);
}

void sub_230DA7B8C()
{
  v99 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 384);
  sub_230DA8CE0(v1);
  sub_230E688D0();
  v6 = *(v3 + 8);
  v6(v1, v2);
  sub_230DA29A0(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 432);
  if (EnumCaseMultiPayload >= 2)
  {
    v9 = *(v0 + 416);
    v10 = *(v0 + 424);
    v11 = *(v0 + 408);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0);
    (*(v10 + 32))(v8, v11 + *(v12 + 48), v9);
    v6(v11, v9);
  }

  else
  {
    sub_230E68900();
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 416);
  v15 = *(v0 + 376);
  sub_230E688D0();
  v6(v13, v14);
  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;
  sub_230E69540();
  *(v0 + 352) = 0;
  *(v0 + 360) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD0000000000000D4, 0x8000000230E82BC0);
  sub_230E69320();
  MEMORY[0x23191DA00](0xD000000000000017, 0x8000000230E82B40);
  sub_230E69320();
  v74 = *(v0 + 352);
  v75 = *(v0 + 360);
  v16 = *(v15 + 16);
  v73 = v0;
  if (v16)
  {
    v17 = *(v0 + 376);
    v76 = MEMORY[0x277D84F90];
    sub_230D48880(0, v16, 0);
    v18 = v76;
    v19 = (v17 + 32);
    do
    {
      v21 = *v19++;
      v20 = v21;
      *&v88 = 39;
      *(&v88 + 1) = 0xE100000000000000;
      v22 = v21 == 2;
      if (v21 == 2)
      {
        v23 = 0x6C7070612E6D6F63;
      }

      else
      {
        v23 = 0;
      }

      v24 = 0xE000000000000000;
      if (v22)
      {
        v24 = 0xEC00000076742E65;
      }

      if (v20)
      {
        v25 = 0xD000000000000012;
      }

      else
      {
        v25 = 0x6C7070612E6D6F63;
      }

      v26 = 0xEF636973754D2E65;
      if (v20)
      {
        v26 = 0x8000000230E82CE0;
      }

      if (v20 <= 1)
      {
        v27 = v25;
      }

      else
      {
        v27 = v23;
      }

      if (v20 <= 1)
      {
        v28 = v26;
      }

      else
      {
        v28 = v24;
      }

      MEMORY[0x23191DA00](v27, v28);

      MEMORY[0x23191DA00](39, 0xE100000000000000);
      v29 = v88;
      v76 = v18;
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_230D48880((v30 > 1), v31 + 1, 1);
        v18 = v76;
      }

      *(v18 + 16) = v31 + 1;
      *(v18 + 16 * v31 + 32) = v29;
      --v16;
    }

    while (v16);
    v0 = v73;
    *(v73 + 368) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D443B8();
    v32 = sub_230E68FF0();
    v34 = v33;

    sub_230E69540();

    *&v88 = 0xD000000000000012;
    *(&v88 + 1) = 0x8000000230E82CA0;
    MEMORY[0x23191DA00](v32, v34);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E82CA0);
  }

  MEMORY[0x23191DA00](0xD00000000000001CLL, 0x8000000230E82CC0);

  v35 = sub_230E68D60();
  v36 = sub_230E693E0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v88 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_230D7E620(v74, v75, &v88);
    _os_log_impl(&dword_230D02000, v35, v36, "[MediaProvider][getContents] Music query: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x23191EAE0](v38, -1, -1);
    MEMORY[0x23191EAE0](v37, -1, -1);
  }

  v39 = sub_230DB38E4(v74, v75);

  v40 = sub_230E68D60();
  v41 = sub_230E693E0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    *(v42 + 4) = *(v39 + 2);

    _os_log_impl(&dword_230D02000, v40, v41, "[MediaProvider][getContents] Got %ld media results, consolidating playback sessions", v42, 0xCu);
    MEMORY[0x23191EAE0](v42, -1, -1);
  }

  else
  {
  }

  v43 = sub_230DA5844(v39);

  v44 = sub_230E68D60();
  v45 = sub_230E693E0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = *(v43 + 16);

    _os_log_impl(&dword_230D02000, v44, v45, "[MediaProvider][getContents] Consolidated into %ld playback sessions", v46, 0xCu);
    MEMORY[0x23191EAE0](v46, -1, -1);
  }

  else
  {
  }

  v47 = *(v43 + 16);
  if (v47)
  {
    v48 = 0;
    v49 = v0 + 184;
    v50 = MEMORY[0x277D84F90];
    while (v48 < *(v43 + 16))
    {
      v76 = *(v43 + 32 + 8 * v48);

      sub_230DA84C0(&v76, &v77);

      v56 = v84;
      v57 = v86;
      *(v0 + 144) = v85;
      *(v0 + 160) = v57;
      *(v0 + 176) = v87;
      v58 = v82;
      *(v0 + 80) = v81;
      *(v0 + 96) = v58;
      *(v0 + 112) = v83;
      *(v0 + 128) = v56;
      v59 = v78;
      *(v0 + 16) = v77;
      *(v0 + 32) = v59;
      v60 = v80;
      *(v0 + 48) = v79;
      *(v0 + 64) = v60;
      if (sub_230DA8AA0(v0 + 16) == 1)
      {
        v51 = v84;
        v52 = v86;
        *(v49 + 128) = v85;
        *(v49 + 144) = v52;
        *(v49 + 160) = v87;
        v53 = v82;
        *(v49 + 64) = v81;
        *(v49 + 80) = v53;
        *(v49 + 96) = v83;
        *(v49 + 112) = v51;
        v54 = v78;
        *v49 = v77;
        *(v49 + 16) = v54;
        v55 = v80;
        *(v49 + 32) = v79;
        *(v49 + 48) = v55;
        sub_230DA8AB8(v49);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_230E4A750(0, *(v50 + 2) + 1, 1, v50);
        }

        v62 = *(v50 + 2);
        v61 = *(v50 + 3);
        if (v62 >= v61 >> 1)
        {
          v50 = sub_230E4A750((v61 > 1), v62 + 1, 1, v50);
        }

        v92 = v81;
        v93 = v82;
        v90 = v79;
        v91 = v80;
        v98 = v87;
        v96 = v85;
        v97 = v86;
        v94 = v83;
        v95 = v84;
        v88 = v77;
        v89 = v78;
        *(v50 + 2) = v62 + 1;
        v63 = &v50[168 * v62];
        v64 = v88;
        v65 = v90;
        *(v63 + 3) = v89;
        *(v63 + 4) = v65;
        *(v63 + 2) = v64;
        v66 = v91;
        v67 = v92;
        v68 = v94;
        *(v63 + 7) = v93;
        *(v63 + 8) = v68;
        *(v63 + 5) = v66;
        *(v63 + 6) = v67;
        v69 = v95;
        v70 = v96;
        v71 = v97;
        *(v63 + 24) = v98;
        *(v63 + 10) = v70;
        *(v63 + 11) = v71;
        *(v63 + 9) = v69;
        v0 = v73;
      }

      if (v47 == ++v48)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
LABEL_46:

    v72 = *(v0 + 8);

    v72(v50);
  }
}