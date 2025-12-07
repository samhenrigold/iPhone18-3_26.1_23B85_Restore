unint64_t sub_26642AF98()
{
  result = qword_280073818;
  if (!qword_280073818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073818);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResolutionResultType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolutionResultType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Bool __swiftcall INPlayMediaIntent.getAppInferred()()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 appInferred];

    if (v3)
    {
      v4 = [v3 BOOLValue];

      LOBYTE(v1) = v4;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1;
}

id INPlayMediaIntent.firstMediaItemType()()
{
  v1 = [v0 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2663D9B50();
  v3 = sub_2664E04A8();

  if (v3 >> 62)
  {
    result = sub_2664E0A68();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266783B70](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_7:
    v6 = v5;

    v7 = [v6 type];

    return v7;
  }

  __break(1u);
  return result;
}

id sub_26642B2B8()
{
  result = [*v0 privatePlayMediaIntentData];
  if (result)
  {
    v2 = result;
    v3 = [result appInferred];

    if (v3)
    {
      v4 = [v3 BOOLValue];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26642B35C()
{
  v23 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v0 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v1 = qword_280F8F808;
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v39 = v2;
  v40 = &protocol witness table for MultiUserConnectionProvider;
  *&v38 = v1;
  v3 = type metadata accessor for AccountProvider();
  v4 = swift_allocObject();
  swift_retain_n();
  v22 = sub_266360778(v0, &v38, v4);

  v5 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v38);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v35 = qword_280F905C8;
  *(&v35 + 5) = *(&qword_280F905C8 + 5);
  v36 = &type metadata for FeatureFlagProvider;
  v37 = &protocol witness table for FeatureFlagProvider;
  v34 = &protocol witness table for SharedContextProvider;
  v33 = type metadata accessor for SharedContextProvider();
  v31 = &protocol witness table for SubscriptionProvider;
  *&v32 = swift_initStaticObject();
  v30 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v7 = qword_280F91470;
  v27 = type metadata accessor for SiriKitTaskLoggingProvider();
  v28 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v26 = v7;
  v25[3] = &type metadata for WatchOSSupportProvider;
  v25[4] = &off_2877EC0A0;
  v8 = type metadata accessor for MediaPlaybackProvider();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for WatchOSSupportProvider);
  v9[28] = &type metadata for WatchOSSupportProvider;
  v9[29] = &off_2877EC0A0;
  v9[5] = v3;
  v9[6] = &protocol witness table for AccountProvider;
  v9[2] = v22;
  v9[17] = v23;
  v9[18] = v5;
  v9[19] = v6;
  sub_2662A8618(&v38, (v9 + 20));
  sub_2662A8618(&v35, (v9 + 30));
  sub_2662A8618(&v32, (v9 + 35));
  sub_2662A8618(&v29, (v9 + 7));
  sub_2662A8618(&v26, (v9 + 12));

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v39 = v8;
  v40 = &off_2877F3740;
  *&v38 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v36 = v2;
  v37 = &protocol witness table for MultiUserConnectionProvider;
  *&v35 = v1;
  v11 = swift_allocObject();

  v12 = sub_266360778(v10, &v35, v11);

  v36 = v3;
  v37 = &protocol witness table for AccountProvider;
  *&v35 = v12;
  v33 = &type metadata for PlaybackStarter;
  v34 = &off_2877EE098;
  v13 = swift_allocObject();
  *&v32 = v13;
  sub_2663FB4EC(v13 + 2);
  v14 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v30 = v2;
  v31 = &protocol witness table for MultiUserConnectionProvider;
  *&v29 = v1;
  v15 = swift_allocObject();
  v16 = sub_266360778(v14, &v29, v15);

  v13[10] = v3;
  v13[11] = &protocol witness table for AccountProvider;
  v13[7] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v30 = v2;
  v31 = &protocol witness table for MultiUserConnectionProvider;
  *&v29 = v1;
  v18 = swift_allocObject();
  v19 = sub_266360778(v17, &v29, v18);

  v30 = &type metadata for PlaybackQueueLocationProvider;
  v31 = &off_2877E8100;
  v20 = swift_allocObject();
  *&v29 = v20;
  v20[5] = v3;
  v20[6] = &protocol witness table for AccountProvider;
  v20[2] = v19;
  sub_266401880(v20 + 7);
  return (*(v24 + 128))(&v38, &v35, &v32, &v29);
}

uint64_t sub_26642B830(void *a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a5;
  v37 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[1];
  v42 = *a2;
  v43 = v14;
  *v44 = a2[2];
  *&v44[15] = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v15, v10);
  sub_2662D2A64(&v42, v40);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  sub_2662D2B88(&v42);
  if (os_log_type_enabled(v16, v17))
  {
    v34 = a3;
    v35 = a1;
    v36 = v6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v40[0] = v19;
    *v18 = 136315138;
    v20 = 0xE300000000000000;
    v21 = 7827310;
    v22 = 0xE500000000000000;
    v23 = 0x726574616CLL;
    v24 = 0xE700000000000000;
    v25 = 0x6E776F6E6B6E75;
    if (v44[16] != 3)
    {
      v25 = 0x726F707075736E75;
      v24 = 0xEB00000000646574;
    }

    if (v44[16] != 2)
    {
      v23 = v25;
      v22 = v24;
    }

    if (v44[16])
    {
      v21 = 1954047342;
      v20 = 0xE400000000000000;
    }

    if (v44[16] <= 1u)
    {
      v26 = v21;
    }

    else
    {
      v26 = v23;
    }

    if (v44[16] <= 1u)
    {
      v27 = v20;
    }

    else
    {
      v27 = v22;
    }

    v28 = sub_2662A320C(v26, v27, v40);

    *(v18 + 4) = v28;
    _os_log_impl(&dword_26629C000, v16, v17, "LocalPlaybackHandler#handlePlaybackQueueLocation attempting to set queue location for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v11 + 8))(v13, v10);
    v6 = v36;
    a1 = v35;
    a3 = v34;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v40[0] = v42;
  v40[1] = v43;
  *v41 = *v44;
  *&v41[15] = *&v44[15];
  v29 = swift_allocObject();
  v30 = v38;
  *(v29 + 16) = v37;
  *(v29 + 24) = v30;
  v31 = v43;
  *(v29 + 32) = v42;
  *(v29 + 48) = v31;
  *(v29 + 64) = *v44;
  *(v29 + 79) = *&v44[15];
  *(v29 + 88) = v6;
  *(v29 + 96) = a1;
  *(v29 + 104) = a3;
  sub_2662D2A64(&v42, v39);

  v32 = a3;
  sub_2664C604C((v6 + 56), a1, v40, 2, sub_2664306B4, v29);
}

uint64_t sub_26642BC20(void *a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a5;
  v37 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[1];
  v42 = *a2;
  v43 = v14;
  v44[0] = a2[2];
  *(v44 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "LocalPlaybackHandler#preLoadQueue Local playback", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  if (sub_2664C8564(a1))
  {
    v40[0] = v42;
    v40[1] = v43;
    *v41 = v44[0];
    *&v41[15] = *(v44 + 15);
    v19 = swift_allocObject();
    *(v19 + 16) = v6;
    v20 = v43;
    *(v19 + 24) = v42;
    *(v19 + 40) = v20;
    *(v19 + 56) = v44[0];
    *(v19 + 71) = *(v44 + 15);
    *(v19 + 80) = a3;
    *(v19 + 88) = a1;
    v21 = v38;
    *(v19 + 96) = v37;
    *(v19 + 104) = v21;
    sub_2662D2A64(&v42, v39);

    v22 = a3;
    sub_2664C604C(v6 + 7, a1, v40, 2, sub_26643068C, v19);
  }

  else
  {
    v23 = v6[10];
    v24 = v6[11];
    v36 = __swift_project_boxed_opaque_existential_1(v6 + 7, v23);
    v35 = *(&v42 + 1);
    v34 = v43;
    v25 = a1[12];
    v33 = a1[13];
    v26 = swift_allocObject();
    v27 = v43;
    *(v26 + 16) = v42;
    *(v26 + 32) = v27;
    *(v26 + 48) = v44[0];
    *(v26 + 63) = *(v44 + 15);
    *(v26 + 72) = v6;
    *(v26 + 80) = a1;
    v28 = v38;
    *(v26 + 88) = v37;
    *(v26 + 96) = v28;
    *(v26 + 104) = a3;
    v29 = *(v24 + 8);
    sub_2662D2A64(&v42, v40);

    v30 = a3;
    v29(v35, v34, v25, v33, sub_266430678, v26, v23, v24);
  }
}

id sub_26642BFEC(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v77 = &v70 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v70 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - v11;
  v13 = sub_26637C354(a1);
  if (v14)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_2664DFE18();
    v17 = sub_2664E06D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26629C000, v16, v17, "LocalPlaybackHandler#albumQuery Failed to get grouping for scheme", v18, 2u);
      MEMORY[0x266784AD0](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v19 = v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v21 = *(v3 + 16);
  v75 = v3 + 16;
  v76 = v20;
  v74 = v21;
  v21(v12, v20, v2);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();

  v24 = os_log_type_enabled(v22, v23);
  v73 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = v3;
    v80[0] = v71;
    *v25 = 136315394;
    v79 = v19;
    v26 = sub_2664E0D48();
    v28 = sub_2662A320C(v26, v27, v80);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    LOBYTE(v79) = *(a1 + 48);
    v29 = PlaybackItem.Scheme.rawValue.getter();
    v31 = sub_2662A320C(v29, v30, v80);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_26629C000, v22, v23, "LocalPlaybackHandler#albumQuery Got grouping: %s for scheme: %s", v25, 0x16u);
    v32 = v71;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);

    v33 = v72;
  }

  else
  {

    v33 = v3;
  }

  v34 = *(v33 + 8);
  v34(v12, v2);
  v35 = [objc_opt_self() persistentIDPropertyForGroupingType_];
  if (!v35)
  {
    sub_2664E02C8();
    v35 = sub_2664E02A8();
  }

  v36 = sub_2664E02C8();
  v38 = v37;
  v39 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    goto LABEL_21;
  }

  v40 = v36;
  if (v36 == sub_2664E02C8() && v38 == v41)
  {

LABEL_22:
    v74(v78, v76, v2);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06E8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_26629C000, v43, v44, "LocalPlaybackHandler#albumQuery Either we have an unknown collection type, or each collection is a single track. Returning nil", v45, 2u);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    v34(v78, v2);
    return 0;
  }

  v42 = sub_2664E0D88();

  if (v42)
  {
LABEL_21:

    goto LABEL_22;
  }

  v74(v77, v76, v2);
  v47 = v73;

  v48 = sub_2664DFE18();
  v49 = sub_2664E06E8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v80[0] = v78;
    *v50 = 136315394;
    *(v50 + 4) = sub_2662A320C(*(v47 + 56), *(v47 + 64), v80);
    *(v50 + 12) = 2080;
    v51 = sub_2662A320C(v40, v38, v80);
    v52 = v47;
    v53 = v51;

    *(v50 + 14) = v53;
    v47 = v52;
    _os_log_impl(&dword_26629C000, v48, v49, "LocalPlaybackHandler#albumQuery building MPMediaQuery for %s with property: %s", v50, 0x16u);
    v54 = v78;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v50, -1, -1);
  }

  else
  {
  }

  v34(v77, v2);
  v55 = *(v47 + 64);
  v80[0] = *(v47 + 56);
  v80[1] = v55;

  v56 = sub_2664E0DB8();
  v57 = objc_opt_self();
  v58 = [v57 predicateWithValue:v56 forProperty:v35];
  swift_unknownObjectRelease();

  v59 = *MEMORY[0x277CD57A0];
  LOBYTE(v80[0]) = 1;
  v60 = v59;
  v61 = [v57 predicateWithValue:sub_2664E0DB8() forProperty:v60];
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EB980;
  *(inited + 32) = v58;
  *(inited + 40) = v61;
  v63 = v58;
  v64 = v61;
  sub_2662C40E8(inited);
  v66 = v65;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_26645FE84(v66);

  v67 = objc_allocWithZone(MEMORY[0x277CD5E38]);
  sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28);
  sub_26637F50C();
  v68 = sub_2664E05F8();

  v69 = [v67 initWithFilterPredicates_];

  [v69 setGroupingType_];
  return v69;
}

uint64_t sub_26642CA64(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *(a2 + 48);
  v16 = *(a2 + 49);
  if (*(a2 + 48))
  {
    v17 = v15 == 3;
  }

  else
  {
    v17 = 1;
  }

  v19 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v19;
  v22[2] = *(a2 + 32);
  v23 = v15;
  v24 = v16;
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    sub_26642BC20(a1, v22, a3, a11, v18);
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    sub_26642B830(a1, v22, a3, a9, v20);
  }
}

void *sub_26642CB78(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v56 = a1;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v11;
  v22 = type metadata accessor for MediaPlaybackProvider();
  v65[3] = v22;
  v65[4] = &off_2877F3740;
  v65[0] = v21;
  v64[3] = &type metadata for PlaybackStarter;
  v64[4] = &off_2877EE098;
  v23 = swift_allocObject();
  v64[0] = v23;
  v24 = v15[3];
  v23[3] = v15[2];
  v23[4] = v24;
  v23[5] = v15[4];
  v25 = v15[1];
  v23[1] = *v15;
  v23[2] = v25;
  v8[21] = &type metadata for PlaybackQueueLocationProvider;
  v8[22] = &off_2877E8100;
  v26 = swift_allocObject();
  v8[18] = v26;
  v27 = v19[3];
  v26[3] = v19[2];
  v26[4] = v27;
  v26[5] = v19[4];
  v28 = v19[1];
  v26[1] = *v19;
  v26[2] = v28;
  sub_2662A5550(v65, (v8 + 2));
  sub_2662A5550(a2, (v8 + 7));
  sub_2662A5550(v64, (v8 + 13));
  sub_2662A5550(v65, v63);
  sub_2662A5550(a2, v62);
  sub_2662A5550(v64, v61);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v63, v63[3]);
  MEMORY[0x28223BE20](v29);
  v31 = (&v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v61, v61[3]);
  MEMORY[0x28223BE20](v33);
  v35 = (&v55 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v31;
  v60[3] = v22;
  v60[4] = &off_2877F3740;
  v60[0] = v37;
  v58 = &type metadata for PlaybackStarter;
  v59 = &off_2877EE098;
  v38 = swift_allocObject();
  v57[0] = v38;
  v39 = v35[3];
  v38[3] = v35[2];
  v38[4] = v39;
  v38[5] = v35[4];
  v40 = v35[1];
  v38[1] = *v35;
  v38[2] = v40;
  type metadata accessor for LocalPlaybackHelper();
  v41 = swift_allocObject();
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v60, v22);
  MEMORY[0x28223BE20](v42);
  v44 = (&v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  MEMORY[0x28223BE20](v46);
  v48 = (&v55 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v44;
  v41[5] = v22;
  v41[6] = &off_2877F3740;
  v41[2] = v50;
  v41[15] = &type metadata for PlaybackStarter;
  v41[16] = &off_2877EE098;
  v51 = swift_allocObject();
  v41[12] = v51;
  v52 = v48[3];
  v51[3] = v48[2];
  v51[4] = v52;
  v51[5] = v48[4];
  v53 = v48[1];
  v51[1] = *v48;
  v51[2] = v53;
  sub_2662A8618(v62, (v41 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  v8[12] = v41;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  return v8;
}

uint64_t sub_26642D238(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, const char *a4)
{
  v26 = a4;
  v27 = a3;
  v29 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v13, v5);
  sub_2663CB97C(v10, v9, v11, v12);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  sub_2662D2F30(v10, v9, v11, v12);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v9;
    v28 = v11;
    v17 = v16;
    v24 = swift_slowAlloc();
    v31 = v24;
    v32 = v10;
    *v17 = 136315138;
    v33 = v30;
    v34 = v28;
    v35 = v12;
    sub_2663CB97C(v10, v30, v28, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073360, &qword_2664EA5F8);
    v18 = sub_2664E0318();
    v25 = v10;
    v20 = sub_2662A320C(v18, v19, &v31);

    *(v17 + 4) = v20;
    _os_log_impl(&dword_26629C000, v14, v15, v26, v17, 0xCu);
    v21 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x266784AD0](v21, -1, -1);
    v11 = v28;
    v9 = v30;
    MEMORY[0x266784AD0](v17, -1, -1);

    (*(v6 + 8))(v8, v5);
    v10 = v25;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v32 = v10;
  v33 = v9;
  v34 = v11;
  v35 = v12;
  return v29(&v32);
}

void sub_26642D51C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v54 = a7;
  v56 = a2;
  v57 = a3;
  v11 = sub_2664DFE38();
  v55 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v20 = *a1;
  v21 = *(a1 + 16);
  if (v21 && (*(a1 + 36) & 1) == 0 && (v22 = *(a1 + 24)) != 0)
  {
    v23 = *(a1 + 32);
    v24 = qword_280F914E8;
    v25 = v21;
    v26 = v22;
    if (v24 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v28 = v55;
    (*(v55 + 16))(v19, v27, v11);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "LocalPlaybackHandler#handlePlaybackQueueLocation setting queue location with x scheme", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v28 + 8))(v19, v11);
    v32 = objc_allocWithZone(MEMORY[0x277D27828]);
    v33 = [v32 init];
    sub_266386350(MEMORY[0x277D84F90]);
    v34 = sub_2664E01A8();

    v35 = swift_allocObject();
    v36 = v57;
    *(v35 + 16) = v56;
    *(v35 + 24) = v36;
    *v60 = sub_2664306C8;
    *&v60[8] = v35;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v59 = sub_2663A0C48;
    *(&v59 + 1) = &block_descriptor_41;
    v37 = _Block_copy(&aBlock);

    [v33 insertPlaybackQueueWithResult:v25 atPosition:v23 onDestination:v26 withOptions:v34 completion:v37];
    _Block_release(v37);
  }

  else if (v20 >= 2)
  {
    v49 = __swift_project_boxed_opaque_existential_1((a5 + 144), *(a5 + 168));
    v50 = *(a4 + 16);
    aBlock = *a4;
    v59 = v50;
    *v60 = *(a4 + 32);
    *&v60[15] = *(a4 + 47);
    v51 = v20;
    v52 = sub_26642E274(a4, a5, a6, v51);
    v53 = v57;

    sub_2662F0EBC(a6, &aBlock, v52, v54, v49, v56, v53);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v39 = v55;
    v40 = *(v55 + 16);
    v40(v17, v38, v11);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "UserIdentity nil for setQueueLocation", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v44 = *(v39 + 8);
    v44(v17, v11);
    v40(v14, v38, v11);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06B8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&aBlock = v48;
      *v47 = 134218498;
      *(v47 + 4) = 2;
      *(v47 + 12) = 2048;
      *(v47 + 14) = 21;
      *(v47 + 22) = 2080;
      *(v47 + 24) = sub_2662A320C(0xD00000000000001FLL, 0x80000002664F8D70, &aBlock);
      _os_log_impl(&dword_26629C000, v45, v46, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v47, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266784AD0](v48, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v44(v14, v11);
    aBlock = xmmword_2664EC9B0;
    *&v59 = 0x80000002664F8D70;
    BYTE8(v59) = 1;
    (v56)(&aBlock);
    sub_2662D2F30(aBlock, *(&aBlock + 1), v59, SBYTE8(v59));
  }
}

uint64_t sub_26642DB6C(id a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v69 = a3;
  v5 = sub_2664DFE38();
  v71 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v68 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v60 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = sub_2664DFD68();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  if (a1)
  {
    v20 = [a1 commandResult];
    a1 = [a1 error];
  }

  else
  {
    v20 = 0;
  }

  sub_2664DFD98();

  v21 = sub_2664DFD48();
  v23 = v22;

  v24 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v23) & 0xF;
  }

  if (v24)
  {
    v70 = v19;
    v67 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    v26 = v71;
    v62 = *(v71 + 16);
    v63 = v25;
    v62(v10, v25, v5);
    (*(v14 + 16))(v17, v70, v13);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06D8();
    v29 = os_log_type_enabled(v27, v28);
    v65 = v14;
    v66 = v13;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v61 = v5;
      v31 = v30;
      v32 = swift_slowAlloc();
      v72 = v32;
      *v31 = 136315138;
      v33 = sub_2664DFD48();
      v60 = v10;
      v35 = v34;
      v64 = *(v14 + 8);
      v64(v17, v13);
      v36 = sub_2662A320C(v33, v35, &v72);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_26629C000, v27, v28, "LocalPlaybackHandler#handlePlaybackQueueLocation error onion: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      v37 = v32;
      v38 = v71;
      MEMORY[0x266784AD0](v37, -1, -1);
      v39 = v31;
      v5 = v61;
      MEMORY[0x266784AD0](v39, -1, -1);

      v40 = *(v38 + 8);
      v40(v60, v5);
    }

    else
    {

      v64 = *(v14 + 8);
      v64(v17, v13);
      v40 = *(v26 + 8);
      v40(v10, v5);
    }

    v49 = sub_2664DFD48();
    v51 = v50;
    v52 = v68;
    v62(v68, v63, v5);

    v53 = sub_2664DFE18();
    v54 = v5;
    v55 = sub_2664E06B8();
    if (os_log_type_enabled(v53, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v57;
      *v56 = 134218498;
      *(v56 + 4) = 2;
      *(v56 + 12) = 2048;
      *(v56 + 14) = 7;
      *(v56 + 22) = 2080;
      v58 = sub_2662A320C(v49, v51, &v72);

      *(v56 + 24) = v58;
      _os_log_impl(&dword_26629C000, v53, v55, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v56, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x266784AD0](v57, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);

      v59 = v68;
    }

    else
    {

      v59 = v52;
    }

    v40(v59, v54);
    v72 = 519;
    v73 = v49;
    v74 = v51;
    v75 = 1;
    v67(&v72);
    sub_2662D2F30(v72, v73, v74, v75);
    return (v64)(v70, v66);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v71 + 16))(v12, v41, v5);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06C8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v19;
      v45 = v5;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "LocalPlaybackHandler#handlePlaybackQueueLocation performed queue insertion using x scheme", v46, 2u);
      v47 = v46;
      v5 = v45;
      v19 = v44;
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    (*(v71 + 8))(v12, v5);
    v72 = 0;
    v73 = 0;
    v75 = 0;
    v74 = 0;
    a2(&v72);
    return (*(v14 + 8))(v19, v13);
  }
}

id sub_26642E274(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v60 = a2;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v58 = &v56 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v61 = *(*(a1 + 24) + 16);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v17 = v8;
  v59 = *(v8 + 16);
  (v59)(v15, v16, v7);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v57 = a4;
    v21 = a3;
    v22 = v16;
    v23 = v7;
    v24 = v11;
    v25 = v20;
    *v20 = 134217984;
    *(v20 + 4) = v61;
    _os_log_impl(&dword_26629C000, v18, v19, "LocalPlaybackHandler#handlePlaybackQueueLocation, routeCount: %ld", v20, 0xCu);
    v26 = v25;
    v11 = v24;
    v7 = v23;
    v16 = v22;
    a3 = v21;
    a4 = v57;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v27 = *(v17 + 8);
  v27(v15, v7);
  v28 = sub_266376F50(a3, a4, 1, 1u, v61 != 0);
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = v28;
  v30 = [v28 collections];

  if (!v30)
  {
    goto LABEL_19;
  }

  sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
  v31 = sub_2664E04A8();

  if (!(v31 >> 62))
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  result = sub_2664E0A68();
  if (!result)
  {
LABEL_18:

LABEL_19:
    (v59)(v11, v16, v7);

    v47 = v11;
    v48 = sub_2664DFE18();
    v49 = sub_2664E06D8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v62 = v51;
      *v50 = 136315138;

      v52 = sub_2664C8950();
      v61 = v27;
      v54 = v53;

      v55 = sub_2662A320C(v52, v54, &v62);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_26629C000, v48, v49, "[SetPlaybackQueueLocation] Collection %s does not exist", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);

      v61(v47, v7);
    }

    else
    {

      v27(v47, v7);
    }

    return 0;
  }

LABEL_9:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v33 = v27;
    v34 = MEMORY[0x266783B70](0, v31);
    goto LABEL_12;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = v27;
    v34 = *(v31 + 32);
LABEL_12:
    v35 = v34;

    v36 = [v35 items];
    sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
    v37 = sub_2664E04A8();

    sub_26645FB50(v37);

    v38 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v39 = sub_2664E0488();

    v40 = [v38 initWithEntities:v39 entityType:0];

    if (v40)
    {
      v41 = [objc_allocWithZone(MEMORY[0x277D27868]) initWithContextID:0 query:v40];
      v42 = [v41 createRemotePlaybackQueue];

      return v42;
    }

    v43 = v58;
    v59();
    v44 = sub_2664DFE18();
    v45 = sub_2664E06D8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26629C000, v44, v45, "[SetPlaybackQueueLocation] Unable to build MPMediaQuery", v46, 2u);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    v33(v43, v7);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26642E8B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(__int128 *), uint64_t a7)
{
  v106 = a6;
  v104 = a4;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v96 = &v91 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v91 - v20;
  MEMORY[0x28223BE20](v19);
  v26 = &v91 - v25;
  v27 = *(a1 + 16);
  if (v27)
  {
    v93 = v24;
    v94 = v23;
    v92 = v22;
    v100 = a7;
    v99 = *(a1 + 24);
    v28 = qword_280F914E8;
    v29 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v31 = *(v13 + 16);
    v103 = v30;
    v105 = v12;
    v102 = v13 + 16;
    v101 = v31;
    v31(v21, v30, v12);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v32, v33, "LocalPlaybackHandler#preLoadQueue with x scheme", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    v35 = *(v13 + 8);
    v36 = v105;
    v95 = v13 + 8;
    v35(v21, v105);
    v37 = __swift_project_boxed_opaque_existential_1((a2 + 104), *(a2 + 128));
    v38 = *(a3 + 50);
    *&v39 = *(a3 + 8);
    v98 = v39;
    v40 = *(a3 + 16);
    v41 = *(a5 + 104);
    *&v39 = *(a5 + 96);
    v97 = v39;
    v113[3] = &type metadata for PlaybackAttributes;
    v113[4] = &off_2877E7D78;
    v42 = swift_allocObject();
    v113[0] = v42;
    v43 = *(a3 + 16);
    *(v42 + 16) = *a3;
    *(v42 + 32) = v43;
    *(v42 + 48) = *(a3 + 32);
    *(v42 + 63) = *(a3 + 47);
    sub_26637C7BC(v37, &v108);
    sub_2662A5550(v113, v107);
    v44 = swift_allocObject();
    v45 = v111;
    *(v44 + 48) = v110;
    *(v44 + 64) = v45;
    v46 = v109;
    *(v44 + 16) = v108;
    *(v44 + 32) = v46;
    *&v45 = v98;
    *(&v45 + 1) = v40;
    *&v47 = v97;
    *(&v47 + 1) = v41;
    v48 = v112;
    *(v44 + 96) = v45;
    *(v44 + 112) = v47;
    *(v44 + 80) = v48;
    v49 = v100;
    *(v44 + 128) = v106;
    *(v44 + 136) = v49;
    sub_2662A8618(v107, v44 + 144);
    v50 = v104;
    *(v44 + 184) = v29;
    *(v44 + 192) = v50;
    *(v44 + 200) = 1;
    if (v99)
    {
      LODWORD(v98) = v38;
      v51 = v99;
      v52 = v29;
      sub_2662D2A64(a3, &v108);

      v53 = v50;
      v54 = v51;

      [v54 mutableCopy];
      sub_2664E09E8();
      swift_unknownObjectRelease();
      sub_2662C1744(0, &qword_280072C48, 0x277D27850);
      if (swift_dynamicCast())
      {
        v55 = v107[0];
        [v107[0] setSingleGroup_];
        v56 = v52;
        v57 = v54;

        v58 = v55;
        sub_2664ADBE8(v57, v53, v57, v56, sub_26637F448, v44, v58, v98);

        return __swift_destroy_boxed_opaque_existential_1Tm(v113);
      }

      v104 = v52;
      v79 = v96;
      v101(v96, v103, v105);
      v80 = sub_2664DFE18();
      v81 = sub_2664E06D8();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_26629C000, v80, v81, "Guaranteed cast to mutable RemoteControlDestination failed", v82, 2u);
        MEMORY[0x266784AD0](v82, -1, -1);
      }

      v83 = v79;
      v84 = v105;
      v35(v83, v105);
      v85 = v92;
      v101(v92, v103, v84);
      v86 = sub_2664DFE18();
      v87 = sub_2664E06B8();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v103 = v35;
        v90 = v89;
        *&v108 = v89;
        *v88 = 134218498;
        *(v88 + 4) = 15;
        *(v88 + 12) = 2048;
        *(v88 + 14) = 22;
        *(v88 + 22) = 2080;
        *(v88 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v108);
        _os_log_impl(&dword_26629C000, v86, v87, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v88, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        MEMORY[0x266784AD0](v90, -1, -1);
        MEMORY[0x266784AD0](v88, -1, -1);

        v103(v85, v84);
      }

      else
      {

        v35(v85, v84);
      }

      v108 = xmmword_2664E8D90;
      *&v109 = 0x80000002664F5AE0;
      BYTE8(v109) = 1;
      v106(&v108);

      v78 = &v115;
    }

    else
    {
      v65 = v35;
      v66 = v93;
      v101(v93, v103, v36);
      v99 = v29;
      sub_2662D2A64(a3, &v108);

      v67 = v50;

      v68 = sub_2664DFE18();
      v69 = sub_2664E06D8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_26629C000, v68, v69, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v70, 2u);
        MEMORY[0x266784AD0](v70, -1, -1);
      }

      v71 = v105;
      v72 = v65;
      v65(v66, v105);
      v73 = v94;
      v101(v94, v103, v71);
      v74 = sub_2664DFE18();
      v75 = sub_2664E06B8();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v108 = v77;
        *v76 = 134218498;
        *(v76 + 4) = 15;
        *(v76 + 12) = 2048;
        *(v76 + 14) = 13;
        *(v76 + 22) = 2080;
        *(v76 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v108);
        _os_log_impl(&dword_26629C000, v74, v75, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v76, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        MEMORY[0x266784AD0](v77, -1, -1);
        MEMORY[0x266784AD0](v76, -1, -1);
      }

      v72(v73, v71);
      v108 = xmmword_2664E8DA0;
      *&v109 = 0xE900000000000074;
      BYTE8(v109) = 1;
      v106(&v108);

      v78 = &v114;
    }

    sub_2662D2F30(v108, *(&v108 + 1), v109, SBYTE8(v109));
    return __swift_destroy_boxed_opaque_existential_1Tm(v113);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v59 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v26, v59, v12);
  v60 = sub_2664DFE18();
  v61 = sub_2664E06B8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v108 = v63;
    *v62 = 134218498;
    *(v62 + 4) = 2;
    *(v62 + 12) = 2048;
    *(v62 + 14) = 38;
    *(v62 + 22) = 2080;
    *(v62 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F73E0, &v108);
    _os_log_impl(&dword_26629C000, v60, v61, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v62, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x266784AD0](v63, -1, -1);
    MEMORY[0x266784AD0](v62, -1, -1);
  }

  (*(v13 + 8))(v26, v12);
  v108 = xmmword_2664EC9C0;
  *&v109 = 0x80000002664F73E0;
  BYTE8(v109) = 1;
  v106(&v108);
  return sub_2662D2F30(v108, *(&v108 + 1), v109, SBYTE8(v109));
}

void sub_26642F4F0(void **a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6, void *a7)
{
  v101 = a7;
  v104 = a6;
  v103 = a5;
  v109 = a4;
  v106 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v102 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v97 = v96 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v100 = v96 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v99 = v96 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v98 = v96 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v96 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v96 - v24;
  v26 = 0;
  v27 = *a1;
  if (v27 != 1)
  {
    v28 = v27;
    v26 = v27;
  }

  v108 = v26;
  v29 = *(*(a2 + 24) + 16);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v31 = *(v10 + 16);
  v105 = v30;
  v107 = v31;
  v31(v25, v30, v9);
  sub_2662D2A64(a2, v111);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06E8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v10;
    v35 = swift_slowAlloc();
    *v35 = 134218240;
    *(v35 + 4) = v29;
    *(v35 + 12) = 1024;
    *(v35 + 14) = *(a2 + 2) & 1;
    sub_2662D2B88(a2);
    _os_log_impl(&dword_26629C000, v32, v33, "LocalPlaybackHandler#preLoadQueue, routeCount: %ld, targetsLocalDevice: %{BOOL}d", v35, 0x12u);
    v36 = v35;
    v10 = v34;
    MEMORY[0x266784AD0](v36, -1, -1);
  }

  else
  {
    sub_2662D2B88(a2);
  }

  v39 = *(v10 + 8);
  v37 = v10 + 8;
  v38 = v39;
  (v39)(v25, v9);
  v40 = v106[12];
  v41 = *(a2 + 2);
  v42 = v29 != 0;
  v43 = v108;
  v44 = sub_266376F50(v109, v108, 1, *(a2 + 2), v42);
  if (!v44)
  {
    v51 = v105;
    v107(v23, v105, v9);
    v52 = sub_2664DFE18();
    v53 = sub_2664E06D8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26629C000, v52, v53, "LocalPlaybackHandler#preLoadQueue Query returned from queryOnlyPlayableItems is nil", v54, 2u);
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    (v38)(v23, v9);
    v55 = v102;
    v107(v102, v51, v9);
    v56 = sub_2664DFE18();
    v57 = sub_2664E06B8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = v55;
      v60 = swift_slowAlloc();
      *v111 = v60;
      *v58 = 134218498;
      *(v58 + 4) = 2;
      *(v58 + 12) = 2048;
      *(v58 + 14) = 32;
      *(v58 + 22) = 2080;
      *(v58 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F8D50, v111);
      _os_log_impl(&dword_26629C000, v56, v57, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v58, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x266784AD0](v60, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);

      (v38)(v59, v9);
    }

    else
    {

      (v38)(v55, v9);
    }

    *v111 = xmmword_2664EC9E0;
    *&v111[16] = 0x80000002664F8D50;
    v111[24] = 1;
    v103(v111);

    goto LABEL_40;
  }

  v102 = v44;
  v45 = [v44 items];
  if (v45)
  {
    v46 = v45;
    v47 = v37;
    sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
    v48 = sub_2664E04A8();

    v49 = v48 >> 62 ? sub_2664E0A68() : *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v37 = v47;
    if (!v49)
    {
      v84 = v98;
      v85 = v105;
      v107(v98, v105, v9);
      v86 = sub_2664DFE18();
      v87 = sub_2664E06D8();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_26629C000, v86, v87, "LocalPlaybackHandler#preLoadQueue MPMediaQuery contains 0 items", v88, 2u);
        MEMORY[0x266784AD0](v88, -1, -1);
      }

      (v38)(v84, v9);
      v89 = v99;
      v107(v99, v85, v9);
      v90 = sub_2664DFE18();
      v91 = sub_2664E06B8();
      v92 = os_log_type_enabled(v90, v91);
      v93 = v108;
      if (v92)
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v111 = v95;
        *v94 = 134218498;
        *(v94 + 4) = 2;
        *(v94 + 12) = 2048;
        *(v94 + 14) = 15;
        *(v94 + 22) = 2080;
        *(v94 + 24) = sub_2662A320C(0x736D6574496F4ELL, 0xE700000000000000, v111);
        _os_log_impl(&dword_26629C000, v90, v91, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v94, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v95);
        MEMORY[0x266784AD0](v95, -1, -1);
        MEMORY[0x266784AD0](v94, -1, -1);
      }

      (v38)(v89, v9);
      *v111 = xmmword_2664EC9D0;
      *&v111[16] = 0xE700000000000000;
      v111[24] = 1;
      v103(v111);

LABEL_40:
      sub_2662D2F30(*v111, *&v111[8], *&v111[16], v111[24]);
      return;
    }
  }

  v99 = v38;
  v96[1] = v37;
  v111[0] = *(v109 + 48);
  if (PlaybackItem.Scheme.rawValue.getter() == 0x6C70706D61732D78 && v50 == 0xEE007473696C7961)
  {
  }

  else
  {
    v61 = sub_2664E0D88();

    if ((v61 & 1) == 0)
    {
      v62 = (*(*v106 + 168))(v109, v108, v41);
      if (v62)
      {
        v63 = v62;
        v64 = [v62 items];
        v65 = v108;
        v66 = v100;
        if (v64 && ((v67 = v64, sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0), v68 = sub_2664E04A8(), v67, v68 >> 62) ? (v69 = sub_2664E0A68()) : (v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v69 == 1))
        {
          v107(v97, v105, v9);
          v70 = sub_2664DFE18();
          v71 = sub_2664E06E8();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_26629C000, v70, v71, "LocalPlaybackHandler#preLoadQueue Only 1 album for query, playing that and not shuffled", v72, 2u);
            MEMORY[0x266784AD0](v72, -1, -1);
          }

          (v99)(v97, v9);
          v111[0] = 0;
          *&v111[1] = *(a2 + 1);
          *&v111[17] = *(a2 + 17);
          *&v111[33] = *(a2 + 33);
          *&v111[49] = *(a2 + 49);
          sub_2662D2A64(a2, v110);
          sub_2662D2B88(v111);
        }

        else
        {

          v63 = v102;
        }

        goto LABEL_30;
      }
    }
  }

  v63 = v102;
  v65 = v108;
  v66 = v100;
LABEL_30:
  v107(v66, v105, v9);
  v73 = sub_2664DFE18();
  v74 = sub_2664E06E8();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_26629C000, v73, v74, "LocalPlaybackHandler#preLoadQueue playing local mediaItems", v75, 2u);
    MEMORY[0x266784AD0](v75, -1, -1);
  }

  (v99)(v66, v9);
  v76 = *(a2 + 16);
  *v111 = *a2;
  *&v111[16] = v76;
  *&v111[32] = *(a2 + 32);
  *&v111[47] = *(a2 + 47);
  v77 = swift_allocObject();
  *(v77 + 16) = v40;
  *(v77 + 24) = v63;
  v78 = *(a2 + 16);
  *(v77 + 32) = *a2;
  *(v77 + 48) = v78;
  *(v77 + 64) = *(a2 + 32);
  *(v77 + 79) = *(a2 + 47);
  v79 = v109;
  v80 = v101;
  *(v77 + 88) = v109;
  *(v77 + 96) = v80;
  v81 = v104;
  *(v77 + 104) = v103;
  *(v77 + 112) = v81;
  sub_2662D2A64(a2, v110);

  v82 = v63;

  v83 = v80;

  sub_2664C604C((v40 + 56), v79, v111, 2, sub_2664306A0, v77);
}

uint64_t sub_2664301A0(void *a1, uint64_t a2, void *a3, void (*a4)(void **, __n128), uint64_t a5)
{
  v51 = a2;
  v52 = a5;
  v49 = a3;
  v50 = a4;
  v48 = sub_2664DFE08();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  v46 = a1[3];
  v44 = v16;
  v45 = a1[5];
  v17 = __swift_project_boxed_opaque_existential_1((v5 + 104), *(v5 + 128));
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v18, v12);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06B8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v17;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "PlaybackStarter#play Sending early completion to mark start playback request", v22, 2u);
    v23 = v22;
    v17 = v21;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v24 = qword_280F91D48;
  v25 = v11;
  sub_2664DFDE8();
  v26 = sub_2664E0848();
  sub_2664DFDC8(v26, &dword_26629C000, v24, "playbackStarterPlayWaitOnSend", 29, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v43 = "playbackQueueLocation";
  v27 = v47;
  v28 = v11;
  v29 = v48;
  (*(v7 + 16))(v47, v28, v48);
  sub_26637C7BC(v17, v53);
  v30 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 87) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v7 + 32))(v34 + v30, v27, v29);
  v35 = (v34 + v31);
  v36 = v53[3];
  v35[2] = v53[2];
  v35[3] = v36;
  v35[4] = v53[4];
  v37 = v53[1];
  *v35 = v53[0];
  v35[1] = v37;
  v38 = v45;
  *(v34 + v32) = v46;
  v39 = (v34 + v33);
  *v39 = v44;
  v39[1] = v38;
  v40 = v49;
  *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;

  v41 = v40;

  sub_2663F4978(0xD00000000000001FLL, v43 | 0x8000000000000000, v41, v50, v52, v51, sub_2663CB454, v34);

  return (*(v7 + 8))(v25, v29);
}

uint64_t sub_2664306F0(uint64_t a1, double *a2, void *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = 0;
  v67 = a1 + 64;

  while (v9)
  {
LABEL_11:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v5 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *a2;
    if (*a2 == 0.0)
    {
      v19 = *(a4 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v4;
      v70 = *v4;
      *v4 = 0x8000000000000000;
      v22 = v16;
      v23 = v17;
      v24 = v17;
      v25 = v22;
      v26 = sub_2662A3E98(v24, v22);
      v28 = v21[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_36;
      }

      v32 = v27;
      if (v21[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = v26;
          sub_266453E30();
          v26 = v62;
        }

        v33 = v23;
        v35 = v25;
      }

      else
      {
        sub_2664508BC(v31, isUniquelyReferenced_nonNull_native);
        v33 = v23;
        v34 = v23;
        v35 = v25;
        v26 = sub_2662A3E98(v34, v25);
        if ((v32 & 1) != (v36 & 1))
        {
          goto LABEL_40;
        }
      }

      v54 = 1.0 / v19;
      v55 = v70;
      if (v32)
      {
        *(v70[7] + 8 * v26) = v54;
        v5 = v65;
        goto LABEL_5;
      }

      v70[(v26 >> 6) + 8] |= 1 << v26;
      v56 = (v70[6] + 16 * v26);
      *v56 = v33;
      v56[1] = v35;
      *(v70[7] + 8 * v26) = v54;
      v57 = v70[2];
      v30 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      v5 = v65;
      if (v30)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v37 = *(*(v5 + 56) + 8 * v14);

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v4;
      v71 = *v4;
      *v4 = 0x8000000000000000;
      v40 = v16;
      v41 = v17;
      v42 = v17;
      v43 = v40;
      v44 = sub_2662A3E98(v42, v40);
      v46 = v39[2];
      v47 = (v45 & 1) == 0;
      v30 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v30)
      {
        goto LABEL_37;
      }

      v49 = v45;
      if (v39[3] >= v48)
      {
        if ((v38 & 1) == 0)
        {
          v63 = v44;
          sub_266453E30();
          v44 = v63;
        }

        v50 = v41;
        v52 = v43;
      }

      else
      {
        sub_2664508BC(v48, v38);
        v50 = v41;
        v51 = v41;
        v52 = v43;
        v44 = sub_2662A3E98(v51, v43);
        if ((v49 & 1) != (v53 & 1))
        {
          goto LABEL_40;
        }
      }

      v55 = v71;
      v59 = v37 / v18;
      if (v49)
      {
        *(v71[7] + 8 * v44) = v59;
        goto LABEL_5;
      }

      v71[(v44 >> 6) + 8] |= 1 << v44;
      v60 = (v71[6] + 16 * v44);
      *v60 = v50;
      v60[1] = v52;
      *(v71[7] + 8 * v44) = v59;
      v61 = v71[2];
      v30 = __OFADD__(v61, 1);
      v58 = v61 + 1;
      if (v30)
      {
        goto LABEL_39;
      }
    }

    v55[2] = v58;

LABEL_5:
    v4 = a3;
    *a3 = v55;

    v6 = v67;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

void sub_266430A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1;
    v36 = MEMORY[0x277D84F90];
    sub_2662FCFB4(0, v2, 0);
    v5 = v36;
    v35 = v4 + 56;
    v6 = sub_2664E0A18();
    v7 = 0;
    v30 = v4 + 64;
    v31 = v2;
    v32 = a2;
    v33 = v4;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v4 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v35 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      v34 = *(v4 + 36);
      v11 = (*(v4 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(a2 + 16);

      if (v14)
      {

        v15 = sub_2662A3E98(v12, v13);
        v16 = 0;
        if (v17)
        {
          v16 = *(*(a2 + 56) + 8 * v15);
        }
      }

      else
      {
        v16 = 0;
      }

      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      v20 = v34;
      if (v19 >= v18 >> 1)
      {
        sub_2662FCFB4((v18 > 1), v19 + 1, 1);
        v20 = v34;
      }

      *(v5 + 16) = v19 + 1;
      v21 = (v5 + 24 * v19);
      v21[4] = v12;
      v21[5] = v13;
      v21[6] = v16;
      v4 = v33;
      v8 = 1 << *(v33 + 32);
      if (v6 >= v8)
      {
        goto LABEL_28;
      }

      v22 = *(v35 + 8 * v10);
      if ((v22 & (1 << v6)) == 0)
      {
        goto LABEL_29;
      }

      if (v20 != *(v33 + 36))
      {
        goto LABEL_30;
      }

      v23 = v22 & (-2 << (v6 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v9 = v31;
      }

      else
      {
        v24 = v5;
        v25 = v10 << 6;
        v26 = v10 + 1;
        v9 = v31;
        v27 = (v30 + 8 * v10);
        while (v26 < (v8 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_26634AE1C(v6, v20, 0);
            v8 = __clz(__rbit64(v28)) + v25;
            goto LABEL_24;
          }
        }

        sub_26634AE1C(v6, v20, 0);
LABEL_24:
        v5 = v24;
      }

      ++v7;
      v6 = v8;
      a2 = v32;
      if (v7 == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_266430D18(void (*a1)(char *, uint64_t), uint64_t a2, int a3)
{
  v6 = 0;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  v59 = a3;
  if (a2)
  {
    v14 = &v55 - v12;

    sub_266430A88(a2, a1);
    v16 = v15;

    if (*(v16 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
      v17 = sub_2664E0C98();
    }

    else
    {
      v17 = MEMORY[0x277D84F98];
    }

    v64[0] = v17;

    sub_2663D7CF0(v19, 1, v64);

    v18 = v64[0];
    v13 = v14;
  }

  else
  {

    v18 = a1;
  }

  if (qword_280F914E8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v57 = *(v8 + 16);
  v58 = v8 + 16;
  v57(v13, v20, v7);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();

  v23 = os_log_type_enabled(v21, v22);
  v60 = v13;
  if (v23)
  {
    v13 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = v8;
    v61[0] = v55;
    *v13 = 136315138;
    v24 = sub_2664E01D8();
    v26 = v20;
    v27 = v6;
    v28 = v11;
    v29 = v7;
    v30 = sub_2662A320C(v24, v25, v61);

    *(v13 + 4) = v30;
    v7 = v29;
    v11 = v28;
    v6 = v27;
    v20 = v26;
    _os_log_impl(&dword_26629C000, v21, v22, "Normalize#values %s...", v13, 0xCu);
    v31 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v32 = v31;
    v8 = v56;
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  v33 = *(v8 + 8);
  v33(v60, v7);
  v34 = 0;
  v35 = 1 << *(v18 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(v18 + 8);
  v38 = (v35 + 63) >> 6;
  v39 = 0.0;
  if (v37)
  {
    while (1)
    {
      v40 = v34;
LABEL_19:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v39 = v39 + *(*(v18 + 7) + ((v40 << 9) | (8 * v41)));
      if (!v37)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v40 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v40 >= v38)
    {
      break;
    }

    v37 = *(v18 + v40 + 8);
    ++v34;
    if (v37)
    {
      v34 = v40;
      goto LABEL_19;
    }
  }

  v42 = fabs(v39);
  if (v59)
  {
    v39 = v42;
  }

  v63 = v39;
  v62 = MEMORY[0x277D84F98];

  sub_2664306F0(v43, &v63, &v62, v18);
  swift_bridgeObjectRelease_n();
  v57(v11, v20, v7);
  v44 = sub_2664DFE18();
  v45 = sub_2664E06C8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v61[0] = v47;
    *v46 = 136315138;
    swift_beginAccess();
    v60 = v7;

    v48 = sub_2664E01D8();
    v50 = v49;

    v51 = sub_2662A320C(v48, v50, v61);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_26629C000, v44, v45, "Normalize#values result: %s...", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x266784AD0](v47, -1, -1);
    MEMORY[0x266784AD0](v46, -1, -1);

    v52 = v11;
    v53 = v60;
  }

  else
  {

    v52 = v11;
    v53 = v7;
  }

  v33(v52, v53);
  swift_beginAccess();
  return v62;
}

SiriAudioSupport::SearchResultScopeEntity_optional __swiftcall SearchResultScopeEntity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SearchResultScopeEntity.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C75736552706F74;
  v3 = 0x736E6F6974617473;
  if (v1 != 6)
  {
    v3 = 0x6169726F74696465;
  }

  v4 = 0x6970456F69646172;
  if (v1 != 4)
  {
    v4 = 0x73676E6F73;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x73747369747261;
  if (v1 != 2)
  {
    v5 = 0x7473696C79616C70;
  }

  if (*v0)
  {
    v2 = 0x736D75626C61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26643146C()
{
  result = qword_280073820;
  if (!qword_280073820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073820);
  }

  return result;
}

void sub_2664314E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007374;
  v4 = 0x6C75736552706F74;
  v5 = 0xE800000000000000;
  v6 = 0x736E6F6974617473;
  if (v2 != 6)
  {
    v6 = 0x6169726F74696465;
    v5 = 0xEE00736D6574496CLL;
  }

  v7 = 0xED00007365646F73;
  v8 = 0x6970456F69646172;
  if (v2 != 4)
  {
    v8 = 0x73676E6F73;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x73747369747261;
  if (v2 != 2)
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = 0x736D75626C61;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_266431604()
{
  result = qword_280073828;
  if (!qword_280073828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073828);
  }

  return result;
}

unint64_t sub_26643165C()
{
  result = qword_280073830;
  if (!qword_280073830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073830);
  }

  return result;
}

unint64_t sub_2664316B4()
{
  result = qword_280073838;
  if (!qword_280073838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073838);
  }

  return result;
}

unint64_t sub_26643170C()
{
  result = qword_280073840;
  if (!qword_280073840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073840);
  }

  return result;
}

unint64_t sub_266431780()
{
  result = qword_280073848;
  if (!qword_280073848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280073850, &qword_2664ECB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073848);
  }

  return result;
}

unint64_t sub_2664317F4()
{
  result = qword_280073858;
  if (!qword_280073858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073858);
  }

  return result;
}

unint64_t sub_26643184C()
{
  result = qword_280073860;
  if (!qword_280073860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073860);
  }

  return result;
}

uint64_t sub_2664318A0(uint64_t a1)
{
  v2 = sub_266431A7C();

  return MEMORY[0x28213DAB0](a1, v2);
}

unint64_t sub_2664318E0()
{
  result = qword_280073868;
  if (!qword_280073868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073868);
  }

  return result;
}

uint64_t sub_266431934(uint64_t a1)
{
  v2 = sub_266431A7C();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_266431970(uint64_t a1, uint64_t a2)
{
  v4 = sub_26643165C();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2664319BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266431A7C();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_266431A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_26643165C();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_266431A7C()
{
  result = qword_280073870;
  if (!qword_280073870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073870);
  }

  return result;
}

uint64_t sub_266431B04(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x28223BE20](v5);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v17[3] = type metadata accessor for MediaPlaybackProvider();
  v17[4] = &off_2877F3740;
  v17[0] = v9;
  sub_2662A5550(v17, v16);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v16[3]);
  MEMORY[0x28223BE20](v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_2664DD13C(a1, *v12, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v14;
}

uint64_t sub_266431D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073878, qword_2664ECD40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - v8;
  v38 = sub_2664DF248();
  v9 = *(v38 - 8);
  v10 = MEMORY[0x28223BE20](v38);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = &v32 - v12;
  v13 = sub_2664DF198();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DF288();
  swift_allocObject();
  v16 = sub_2664DF278();
  v17 = [v2 title];
  if (v17)
  {
    v18 = v17;
    sub_2664E02C8();

    sub_2664DF268();
  }

  v19 = [v3 identifier];
  if (v19)
  {
    v20 = v19;
    sub_2664E02C8();
  }

  sub_2664DF168();

  sub_2664DF158();
  v21 = [v3 identifier];
  if (v21)
  {
    v22 = v21;
    v23 = sub_2664E02C8();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = v38;
  static PlaybackItem.Identifier.parse(uri:)(v23, v25, v39);

  if (v39[2])
  {
    v27 = v39[0];
    v28 = PlaybackItem.Identifier.isLibraryIdentifier()();

    if (v28)
    {
      LOBYTE(v39[0]) = v27;
      v29 = v33;
      sub_26645A66C(v33);
      if ((*(v9 + 48))(v29, 1, v26) != 1)
      {
        v30 = v32;
        (*(v9 + 32))(v32, v29, v26);
        goto LABEL_16;
      }

      sub_2662A9238(v29, &qword_280073878, qword_2664ECD40);
    }
  }

  sub_2663ECBF0([v3 type], v7);
  if ((*(v9 + 48))(v7, 1, v26) != 1)
  {
    v30 = v34;
    (*(v9 + 32))(v34, v7, v26);
LABEL_16:
    sub_2664DF2B8();
    swift_allocObject();
    sub_2664DF2A8();
    sub_2664DF298();

    sub_2664DF258();

    (*(v9 + 8))(v30, v26);
    (*(v36 + 8))(v15, v37);
    return v16;
  }

  (*(v36 + 8))(v15, v37);
  sub_2662A9238(v7, &qword_280073878, qword_2664ECD40);
  return v16;
}

uint64_t INMediaItem.toRREntity(groupIdentifier:targetApp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v61 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C30, &qword_2664E62F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v49 - v8;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C38, qword_2664E62F8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v49 - v18;
  if (a2 && (v20 = sub_2664DF7D8(), v21))
  {
    v22 = v21;
  }

  else
  {

    v22 = 0x80000002664F2F20;
    v20 = 0xD000000000000018;
  }

  v60 = v20;
  v23 = sub_266431D04(v20, v22);
  v24 = MEMORY[0x266782230]();
  if (v24)
  {
    v54 = v24;
    v56 = v22;
    v57 = a1;
    v58 = v9;
    v59 = v4;
    v25 = sub_2664DF1C8();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    v55 = v23;
    v26 = MEMORY[0x2667821D0](v23, v19);
    sub_2662A9238(v19, &qword_280072C38, qword_2664E62F8);
    v50 = sub_2664DF1A8();
    v28 = v27;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v51 = *(v11 + 16);
    v52 = v29;
    v51(v16, v29, v10);

    v30 = sub_2664DFE18();
    v31 = v10;
    v32 = sub_2664E06C8();

    v33 = os_log_type_enabled(v30, v32);
    v53 = v11;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v49[0] = v26;
      v35 = v34;
      v36 = swift_slowAlloc();
      v49[1] = v14;
      v37 = v11;
      v38 = v36;
      v62 = v36;
      *v35 = 136315138;
      v39 = sub_2662A320C(v50, v28, &v62);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_26629C000, v30, v32, "INMediaItem#toRREntity UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);

      v40 = v37;
    }

    else
    {

      v40 = v11;
    }

    (*(v40 + 8))(v16, v31);
    v41 = v59;
    v42 = [v59 identifier];
    v43 = v57;
    if (v42)
    {
      v44 = v42;
      sub_2664E02C8();
    }

    sub_26633D720(v43, v58);
    sub_2663D9B50();
    v45 = v41;
    sub_2664DFED8();

    v46 = 0;
  }

  else
  {

    v46 = 1;
  }

  v47 = sub_2664DFF28();
  return (*(*(v47 - 8) + 56))(v61, v46, 1, v47);
}

uint64_t sub_2664328B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_266432900(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_266432960(void (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DEC48();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DF028();
  if (*(v14 + 16))
  {
    sub_2662A5550(v14 + 32, v27);

    sub_2662A8618(v27, v28);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_2664334FC(v3, v27);
    sub_2662A5550(v28, v26);
    v15 = swift_allocObject();
    v16 = v27[1];
    *(v15 + 16) = v27[0];
    *(v15 + 32) = v16;
    v17 = v27[3];
    *(v15 + 48) = v27[2];
    *(v15 + 64) = v17;
    sub_2662A8618(v26, v15 + 80);
    *(v15 + 120) = a1;
    *(v15 + 128) = a2;

    sub_2664DF048();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    v25 = a1;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v13, v19, v10);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v24[1] = a2;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "ForegroundAppRecencyIndependentSignal: Got error to read signal", v22, 2u);
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    *v9 = *v3;
    (*(v7 + 104))(v9, *MEMORY[0x277D60170], v6);
    v25(v9);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_266432CE0(uint64_t a1, uint64_t *a2, void *a3, void (*a4)(uint64_t *), void (*a5)(void, void))
{
  v61 = a4;
  v60 = sub_2664DFE38();
  v62 = *(v60 - 8);
  v8 = MEMORY[0x28223BE20](v60);
  v58 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v59 = &v51[-v10];
  v11 = sub_2664DEC48();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v51[-v16];
  v18 = *a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v19 = v11;
  sub_2664DECB8();
  if ((*(v12 + 88))(v17, v11) == *MEMORY[0x277D60188])
  {
    (*(v12 + 96))(v17, v11);
    v20 = *v17;
    if (qword_280F914E8 != -1)
    {
LABEL_23:
      swift_once();
    }

    v57 = a5;
    v21 = v60;
    v22 = __swift_project_value_buffer(v60, qword_280F914F0);
    swift_beginAccess();
    v23 = v62;
    v24 = *(v62 + 16);
    v25 = v59;
    v55 = v62 + 16;
    v56 = v22;
    v54 = v24;
    v24(v59, v22, v21);

    v26 = sub_2664DFE18();
    v27 = sub_2664E06C8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v53 = v19;
      v29 = v28;
      v30 = swift_slowAlloc();
      v63 = v30;
      *v29 = 136315138;

      v31 = sub_2664E0208();
      v52 = v27;
      v33 = v32;

      v34 = sub_2662A320C(v31, v33, &v63);

      *(v29 + 4) = v34;
      v21 = v60;
      _os_log_impl(&dword_26629C000, v26, v52, "ForegroundAppRecencyIndependentSignal: got the values %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266784AD0](v30, -1, -1);
      v35 = v29;
      v19 = v53;
      MEMORY[0x266784AD0](v35, -1, -1);

      v36 = v62;
    }

    else
    {

      v36 = v23;
    }

    a5 = *(v36 + 8);
    a5(v25, v21);
    v39 = 0;
    v40 = 1 << *(v20 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v20 + 64);
    v43 = (v40 + 63) >> 6;
    if (v42)
    {
      while (1)
      {
        v44 = v39;
LABEL_15:
        v45 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
        v46 = *(*(v20 + 56) + ((v44 << 9) | (8 * v45)));
        if (v46 < v18)
        {
          v18 = v46;
        }

        if (!v42)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v44 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v44 >= v43)
      {
        break;
      }

      v42 = *(v20 + 64 + 8 * v44);
      ++v39;
      if (v42)
      {
        v39 = v44;
        goto LABEL_15;
      }
    }

    v47 = v58;
    v54(v58, v56, v21);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06C8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = v18;
      _os_log_impl(&dword_26629C000, v48, v49, "ForegroundAppRecencySignal: Minimum recency value %ld", v50, 0xCu);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    a5(v47, v21);
    *v15 = v18;
    (*(v12 + 104))(v15, *MEMORY[0x277D60170], v19);
    v61(v15);
    return (*(v12 + 8))(v15, v19);
  }

  else
  {
    *v15 = -1;
    (*(v12 + 104))(v15, *MEMORY[0x277D60170], v11);
    v61(v15);
    v37 = *(v12 + 8);
    v37(v15, v11);
    return v37(v17, v11);
  }
}

uint64_t sub_2664332E0()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_266433310()
{
  v0 = qword_280073880;

  return v0;
}

void sub_266433348()
{
  sub_2664334A8();

  JUMPOUT(0x266781DA0);
}

uint64_t sub_266433388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664334A8();

  return MEMORY[0x2821C57B8](a1, a2, a3, a4, v8);
}

uint64_t sub_2664333EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664334A8();

  return MEMORY[0x2821C5798](a1, a2, a3, a4, v8);
}

unint64_t sub_266433454()
{
  result = qword_280F8F6D0;
  if (!qword_280F8F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F6D0);
  }

  return result;
}

unint64_t sub_2664334A8()
{
  result = qword_280F8F6E0;
  if (!qword_280F8F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F6E0);
  }

  return result;
}

Swift::Bool __swiftcall MediaIntentCommons.isGrounding()()
{
  v84 = v0;
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v79 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v85 = &v79 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v79 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v79 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v83 = &v79 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v79 - v19;
  v21 = sub_2664DFAE8();
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  v30 = static SiriEnvironmentWrapper.retrieve()();
  if (!v30)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (*(v2 + 16))(v5, v39, v1);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "MediaIntentCommons#isGrounding is missing siriEnvironment", v42, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v81 = v13;
  v82 = v16;
  v88 = v30;
  sub_2664DF4D8();
  sub_2664DFAB8();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  v90 = *(v2 + 16);
  v91 = v31;
  v89 = v1;
  v90(v20, v31, v1);
  sub_266435F1C(v29, v27);
  sub_266435F1C(v29, v24);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06E8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v80 = v29;
    v35 = v34;
    *v34 = 67240448;
    v36 = sub_2664DFAD8() & 1;
    sub_26633AB20(v27);
    v35[1] = v36;
    *(v35 + 4) = 1026;
    v37 = sub_2664DFAC8() & 1;
    sub_26633AB20(v24);
    *(v35 + 10) = v37;
    _os_log_impl(&dword_26629C000, v32, v33, "MediaIntentCommons#isGrounding multiUserState.isEnabled:%{BOOL,public}d, requires grounding: %{BOOL,public}d", v35, 0xEu);
    v38 = v35;
    v29 = v80;
    MEMORY[0x266784AD0](v38, -1, -1);
  }

  else
  {
    sub_26633AB20(v24);
    sub_26633AB20(v27);
  }

  v43 = *(v2 + 8);
  v44 = v89;
  v43(v20, v89);
  if ((sub_2664DFAD8() & 1) == 0 || (sub_2664DFAC8() & 1) == 0)
  {
    v90(v8, v91, v44);
    v64 = sub_2664DFE18();
    v65 = sub_2664E06E8();
    if (!os_log_type_enabled(v64, v65))
    {

LABEL_26:

      v70 = v8;
LABEL_27:
      v43(v70, v44);
      v69 = v29;
      goto LABEL_28;
    }

    v66 = v29;
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_26629C000, v64, v65, "MediaIntentCommons#isGrounding not required as not enabled through multiUserState", v67, 2u);
    MEMORY[0x266784AD0](v67, -1, -1);

    v68 = v8;
LABEL_24:
    v43(v68, v44);
    v69 = v66;
LABEL_28:
    sub_26633AB20(v69);
    return 0;
  }

  v45 = v83;
  v90(v83, v91, v44);
  v46 = sub_2664DFE18();
  v47 = sub_2664E06E8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v29;
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_26629C000, v46, v47, "MediaIntentCommons#isGrounding supported through multiUserState", v49, 2u);
    v50 = v49;
    v29 = v48;
    MEMORY[0x266784AD0](v50, -1, -1);
  }

  v43(v45, v44);
  v51 = v84;
  v52 = (*(v84 + 32))(v86, v84);
  v53 = v85;
  if (!v52 || (v54 = v52, v55 = [v52 speakerIDInfo], v54, !v55))
  {
    v90(v53, v91, v44);
    v72 = sub_2664DFE18();
    v73 = sub_2664E06D8();
    if (!os_log_type_enabled(v72, v73))
    {

      v70 = v53;
      goto LABEL_27;
    }

    v66 = v29;
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_26629C000, v72, v73, "MediaIntentCommons#isGrounding speakerIDInfo missing, grounding not required", v74, 2u);
    MEMORY[0x266784AD0](v74, -1, -1);

    v68 = v53;
    goto LABEL_24;
  }

  v56 = (*(v51 + 88))(v86, v51);
  if (qword_2877E53D8 == v56 || qword_2877E53E0 == v56)
  {
    v8 = v81;
    v90(v81, v91, v44);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06E8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = v29;
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_26629C000, v75, v76, "MediaIntentCommons#isGrounding firstMediaItemType is song or album, grounding not required", v78, 2u);
      MEMORY[0x266784AD0](v78, -1, -1);

      v43(v8, v44);
      v69 = v77;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v87 = v2 + 8;
  v57 = [v55 speakerIDConfidence];
  v90(v82, v91, v44);
  v58 = v55;
  v59 = sub_2664DFE18();
  v60 = sub_2664E06E8();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v29;
    v62 = swift_slowAlloc();
    *v62 = 67240448;
    *(v62 + 4) = v57 == 3;
    *(v62 + 8) = 2050;
    *(v62 + 10) = [v58 speakerIDConfidence];

    _os_log_impl(&dword_26629C000, v59, v60, "MediaIntentCommons#isGrounding grounding: %{BOOL,public}d with confidence: %{public}ld", v62, 0x12u);
    v63 = v62;
    v29 = v61;
    MEMORY[0x266784AD0](v63, -1, -1);
  }

  else
  {
  }

  v43(v82, v44);
  sub_26633AB20(v29);
  return v57 == 3;
}

Swift::Bool __swiftcall MediaIntentCommons.isUserRecognized()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v84 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v75 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v75 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v75 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v79 = &v75 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  v19 = sub_2664DFAE8();
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v75 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v75 - v26;
  v28 = static SiriEnvironmentWrapper.retrieve()();
  if (!v28)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v37 = v2;
    v38 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    v39 = v84;
    (*(v84 + 16))(v5, v38, v37);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "MediaIntentCommons#isUserRecognized is missing siriEnvironment", v42, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    (*(v39 + 8))(v5, v37);
    goto LABEL_26;
  }

  v77 = v11;
  v78 = v1;
  v76 = v14;
  v82 = v28;
  sub_2664DF4D8();
  sub_2664DFAB8();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v81 = *(v84 + 16);
  v81(v18, v29, v2);
  sub_266435F1C(v27, v25);
  v83 = v27;
  sub_266435F1C(v27, v22);
  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v75 = v2;
    v33 = v32;
    *v32 = 67240448;
    v34 = sub_2664DFAD8() & 1;
    sub_26633AB20(v25);
    v33[1] = v34;
    *(v33 + 4) = 1026;
    v35 = sub_2664DFAC8() & 1;
    sub_26633AB20(v22);
    *(v33 + 10) = v35;
    _os_log_impl(&dword_26629C000, v30, v31, "MediaIntentCommons#isUserRecognized multiUserState.isEnabled:%{BOOL,public}d, requires grounding: %{BOOL,public}d", v33, 0xEu);
    v36 = v33;
    v2 = v75;
    MEMORY[0x266784AD0](v36, -1, -1);
  }

  else
  {
    sub_26633AB20(v22);
    sub_26633AB20(v25);
  }

  v43 = v84 + 8;
  v44 = *(v84 + 8);
  v44(v18, v2);
  if ((sub_2664DFAD8() & 1) == 0 || (sub_2664DFAC8() & 1) == 0)
  {
    v81(v8, v29, v2);
    v64 = sub_2664DFE18();
    v65 = sub_2664E06E8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v2;
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v64, v65, "MediaIntentCommons#isUserRecognized not required as not enabled through multiUserState", v67, 2u);
      MEMORY[0x266784AD0](v67, -1, -1);

      v68 = v8;
LABEL_22:
      v69 = v66;
LABEL_25:
      v44(v68, v69);
      sub_26633AB20(v83);
LABEL_26:
      v56 = 0;
      return v56 & 1;
    }

    v68 = v8;
LABEL_24:
    v69 = v2;
    goto LABEL_25;
  }

  v45 = v79;
  v46 = v81;
  v81(v79, v29, v2);
  v47 = sub_2664DFE18();
  v48 = sub_2664E06E8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = v2;
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_26629C000, v47, v48, "MediaIntentCommons#isUserRecognized supported through multiUserState", v50, 2u);
    v51 = v50;
    v2 = v49;
    MEMORY[0x266784AD0](v51, -1, -1);
  }

  v44(v45, v2);
  v52 = (*(v78 + 32))(v80);
  if (!v52 || (v53 = v2, v54 = v52, v55 = [v52 speakerIDInfo], v54, v2 = v53, !v55))
  {
    v71 = v77;
    v46(v77, v29, v2);
    v72 = sub_2664DFE18();
    v73 = sub_2664E06D8();
    if (os_log_type_enabled(v72, v73))
    {
      v66 = v2;
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_26629C000, v72, v73, "MediaIntentCommons#isUserRecognized speakerIDInfo missing, grounding not required", v74, 2u);
      MEMORY[0x266784AD0](v74, -1, -1);

      v68 = v71;
      goto LABEL_22;
    }

    v68 = v71;
    goto LABEL_24;
  }

  v84 = v43;
  v56 = (*(v78 + 40))(v80);
  v57 = v76;
  v46(v76, v29, v53);
  v58 = v57;
  v59 = v55;
  v60 = sub_2664DFE18();
  v61 = sub_2664E06E8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 67240448;
    *(v62 + 4) = v56 & 1;
    *(v62 + 8) = 2050;
    *(v62 + 10) = [v59 speakerIDConfidence];

    _os_log_impl(&dword_26629C000, v60, v61, "MediaIntentCommons#isUserRecognized userRecognized: %{BOOL,public}d with confidence: %{public}ld", v62, 0x12u);
    v63 = v62;
    v2 = v53;
    MEMORY[0x266784AD0](v63, -1, -1);
  }

  else
  {
  }

  v44(v58, v2);
  sub_26633AB20(v83);
  return v56 & 1;
}

Swift::String_optional __swiftcall MediaIntentCommons.getFallbackUsername()()
{
  v59 = v1;
  v2 = v0;
  v54 = *(v0 - 8);
  (MEMORY[0x28223BE20])();
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v56 = *(v5 + 16);
  v56(v12, v13, v4);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v55 = v10;
    v51 = v2;
    v58 = v5;
    v16 = swift_slowAlloc();
    *v16 = 67240192;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      sub_2664DF4E8();
      v17 = sub_2664DF5B8();
    }

    else
    {
      sub_2664DEC08();
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v17 = sub_2664DE998();
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
    }

    *(v16 + 4) = v17 & 1;
    _os_log_impl(&dword_26629C000, v14, v15, "MediaIntentCommons#fallbackUsername homepod?: %{BOOL,public}d", v16, 8u);
    MEMORY[0x266784AD0](v16, -1, -1);
    v5 = v58;
    v2 = v51;
    v10 = v55;
  }

  v19 = *(v5 + 8);
  v18 = v5 + 8;
  v20 = v12;
  v21 = v19;
  (v19)(v20, v4);
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v22 = sub_2664DF5B8();

    if (v22)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v45 = sub_2664DE998();
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    if (v45)
    {
LABEL_10:
      v58 = v18;
      v56(v10, v13, v4);
      v24 = v53;
      v23 = v54;
      (*(v54 + 16))(v53, v57, v2);
      v25 = sub_2664DFE18();
      v26 = sub_2664E06E8();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v59;
      v29 = (v59 + 24);
      if (v27)
      {
        v30 = swift_slowAlloc();
        v55 = v10;
        LODWORD(v51) = v26;
        v31 = v24;
        v32 = v30;
        v33 = swift_slowAlloc();
        v60 = v33;
        *v32 = 136315138;
        v52 = *(v59 + 24);
        v56 = v21;
        v34 = v2;
        v35 = v31;
        v61[0] = v52(v34, v59);
        v61[1] = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
        v37 = sub_2664E0318();
        v39 = v38;
        (*(v23 + 8))(v35, v34);
        v40 = sub_2662A320C(v37, v39, &v60);

        *(v32 + 4) = v40;
        _os_log_impl(&dword_26629C000, v25, v51, "MediaIntentCommons#fallbackUsername result: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        v41 = v33;
        v42 = v59;
        MEMORY[0x266784AD0](v41, -1, -1);
        MEMORY[0x266784AD0](v32, -1, -1);

        (v56)(v55, v4);
        v43 = v52(v34, v42);
      }

      else
      {

        (*(v23 + 8))(v24, v2);
        (v21)(v10, v4);
        v43 = (*v29)(v2, v28);
      }

      goto LABEL_17;
    }
  }

  v46 = v52;
  v56(v52, v13, v4);
  v47 = sub_2664DFE18();
  v48 = sub_2664E06E8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_26629C000, v47, v48, "MediaIntentCommons#fallbackUsername not required on non-HomePod", v49, 2u);
    MEMORY[0x266784AD0](v49, -1, -1);
  }

  (v21)(v46, v4);
  v43 = 0;
  v44 = 0;
LABEL_17:
  result.value._object = v44;
  result.value._countAndFlagsBits = v43;
  return result;
}

Swift::Bool __swiftcall MediaIntentCommons.isAppAttributionRequired(bundleIdentifier:)(Swift::String_optional bundleIdentifier)
{
  v54 = v1;
  object = bundleIdentifier.value._object;
  countAndFlagsBits = bundleIdentifier.value._countAndFlagsBits;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v58 = &v52 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v56 = v8;
  v13 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v14 = v2;
  v61 = *(v3 + 16);
  v61(v12, v13, v2);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v53 = v3;
    v17 = swift_slowAlloc();
    *v17 = 67240192;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      sub_2664DF4E8();
      v18 = sub_2664DF5B8();
    }

    else
    {
      sub_2664DEC08();
      __swift_project_boxed_opaque_existential_1(&v63, v65);
      v18 = sub_2664DE998();
      __swift_destroy_boxed_opaque_existential_1Tm(&v63);
    }

    *(v17 + 4) = v18 & 1;
    _os_log_impl(&dword_26629C000, v15, v16, "MediaIntentCommons#isAppAttributionRequired homepod?: %{BOOL,public}d", v17, 8u);
    MEMORY[0x266784AD0](v17, -1, -1);
    v3 = v53;
  }

  v19 = *(v3 + 8);
  v20 = v12;
  v21 = v2;
  v19(v20, v2);
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v22 = sub_2664DF5B8();

    if (v22)
    {
      goto LABEL_10;
    }

LABEL_17:
    v37 = v57;
    v61(v57, v13, v14);
    v38 = v37;
    v39 = sub_2664DFE18();
    v40 = sub_2664E06E8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_26629C000, v39, v40, "MediaIntentCommons#isAppAttributionRequired not homepod, app attribution not required", v41, 2u);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    v42 = v38;
    goto LABEL_20;
  }

  sub_2664DEC08();
  __swift_project_boxed_opaque_existential_1(&v63, v65);
  v36 = sub_2664DE998();
  v23 = __swift_destroy_boxed_opaque_existential_1Tm(&v63);
  if ((v36 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v25 = object;
  v24 = countAndFlagsBits;
  if (object)
  {
    v26 = object;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v63 = v24;
  v64 = v26;
  MEMORY[0x28223BE20](v23);
  *(&v52 - 2) = &v63;

  v27 = sub_2662AA720(sub_2662AA7CC, (&v52 - 4), &unk_2877E48F0);

  if (v27)
  {
    v28 = v56;
    v61(v56, v13, v21);

    v29 = sub_2664DFE18();
    v30 = sub_2664E06E8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v62 = v32;
      *v31 = 136446210;
      v63 = countAndFlagsBits;
      v64 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v33 = sub_2664E0318();
      v35 = sub_2662A320C(v33, v34, &v62);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_26629C000, v29, v30, "MediaIntentCommons#isAppAttributionRequired internal bundle identifier: %{public}s, not required", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);

      v19(v28, v21);
LABEL_21:
      v43 = 0;
      return v43 & 1;
    }

    v42 = v28;
LABEL_20:
    v19(v42, v21);
    goto LABEL_21;
  }

  v44 = v55;
  v45 = v54;
  v46 = (*(v55 + 8))(v54, v55);
  v47 = (*(v44 + 152))(v45, v44);
  v43 = v46 | v47;
  v61(v58, v13, v21);
  v48 = sub_2664DFE18();
  v49 = sub_2664E06E8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 67109632;
    *(v50 + 4) = v46 & 1;
    *(v50 + 8) = 1024;
    *(v50 + 10) = v47 & 1;
    *(v50 + 14) = 1024;
    *(v50 + 16) = v43 & 1;
    _os_log_impl(&dword_26629C000, v48, v49, "MediaIntentCommons#isAppAttributionRequired attribution required: previouslySetInFlow%{BOOL}d, appPredictionSFANoviceDialog: %{BOOL}d. Required: %{BOOL}d", v50, 0x14u);
    MEMORY[0x266784AD0](v50, -1, -1);
  }

  v19(v58, v21);
  return v43 & 1;
}

Swift::Bool __swiftcall MediaIntentCommons.useDialogMemoryForAppAttribution()()
{
  v3 = v2;
  v58 = v0;
  v53 = *(v0 - 8);
  v54 = v1;
  (MEMORY[0x28223BE20])();
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v57 = *(v7 + 16);
  v57(v13, v14, v6);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v50 = v5;
    v51 = v2;
    v55 = v7;
    v17 = swift_slowAlloc();
    *v17 = 67240192;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      sub_2664DF4E8();
      v18 = sub_2664DF5B8();
    }

    else
    {
      sub_2664DEC08();
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v18 = sub_2664DE998();
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
    }

    *(v17 + 4) = v18 & 1;
    _os_log_impl(&dword_26629C000, v15, v16, "MediaIntentCommons#useDialogMemoryForAppAttribution homepod?: %{BOOL,public}d", v17, 8u);
    MEMORY[0x266784AD0](v17, -1, -1);
    v7 = v55;
    v5 = v50;
    v3 = v51;
  }

  v20 = *(v7 + 8);
  v19 = v7 + 8;
  v21 = v13;
  v22 = v20;
  (v20)(v21, v6);
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v23 = sub_2664DF5B8();

    if (v23)
    {
LABEL_10:
      v24 = v56;
      v57(v56, v14, v6);
      v25 = v53;
      v26 = v58;
      (*(v53 + 16))(v5, v3, v58);
      v27 = sub_2664DFE18();
      v28 = sub_2664E06E8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        LODWORD(v50) = v28;
        v30 = v5;
        v31 = v29;
        v51 = v29;
        v32 = swift_slowAlloc();
        v55 = v19;
        v52 = v32;
        v59[0] = v32;
        *v31 = 136446210;
        v33 = v54;
        v34 = *(v54 + 16);
        v57 = v22;
        v35 = v34(v26, v54);
        if (v35)
        {
          v36 = 1702195828;
        }

        else
        {
          v36 = 0x65736C6166;
        }

        if (v35)
        {
          v37 = 0xE400000000000000;
        }

        else
        {
          v37 = 0xE500000000000000;
        }

        (*(v25 + 8))(v30, v58);
        v38 = sub_2662A320C(v36, v37, v59);
        v26 = v58;

        v39 = v51;
        *(v51 + 4) = v38;
        v40 = v39;
        _os_log_impl(&dword_26629C000, v27, v50, "MediaIntentCommons#useDialogMemoryForAppAttribution result: %{public}s", v39, 0xCu);
        v41 = v52;
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x266784AD0](v41, -1, -1);
        MEMORY[0x266784AD0](v40, -1, -1);

        (v57)(v56, v6);
      }

      else
      {

        (*(v25 + 8))(v5, v26);
        (v22)(v24, v6);
        v33 = v54;
        v34 = *(v54 + 16);
      }

      v47 = v34(v26, v33);
      return v47 & 1;
    }
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v42 = sub_2664DE998();
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    if (v42)
    {
      goto LABEL_10;
    }
  }

  v43 = v52;
  v57(v52, v14, v6);
  v44 = sub_2664DFE18();
  v45 = sub_2664E06E8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_26629C000, v44, v45, "MediaIntentCommons#useDialogMemoryForAppAttribution not required on non-HomePod", v46, 2u);
    MEMORY[0x266784AD0](v46, -1, -1);
  }

  (v22)(v43, v6);
  v47 = 0;
  return v47 & 1;
}

id MediaIntentCommons.wholeHouseAudioMetadata()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))(a1);
  v3 = [v2 wholeHouseAudioMetadata];

  return v3;
}

Swift::String_optional __swiftcall MediaIntentCommons.proxiedAppName()()
{
  v1 = (*(v0 + 32))();
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [v1 proxiedThirdPartyAppInfo];

  if (!v3 || (v4 = [v3 appName], v3, !v4))
  {
    v1 = 0;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v5 = sub_2664E02C8();
  v7 = v6;

  v8 = v7;
  v1 = v5;
LABEL_7:
  result.value._object = v8;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::Bool __swiftcall MediaIntentCommons.appPredictionSFANoviceDialog()()
{
  v2 = v1;
  v3 = v0;
  if ((*(v1 + 56))() & 1) != 0 && ((*(v2 + 144))(v3, v2))
  {
    v4 = (*(v2 + 136))(v3, v2) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id MediaIntentCommons.getMediaType()(uint64_t a1, uint64_t a2)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = *(a2 + 88);
  v36 = a1;
  v37 = v2;
  v13 = v12(a1, a2);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v35 = *(v6 + 16);
  v35(v11, v14, v5);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v5;
    v18 = a2;
    v19 = v6;
    v20 = v9;
    v21 = v17;
    *v17 = 134349056;
    *(v17 + 4) = v13;
    _os_log_impl(&dword_26629C000, v15, v16, "MediaIntentCommons#getMediaType firstMediaItemType: %{public}ld", v17, 0xCu);
    v22 = v21;
    v9 = v20;
    v6 = v19;
    a2 = v18;
    v5 = v34;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = *(v6 + 8);
  v23(v11, v5);
  if (!v13)
  {
    v24 = (*(a2 + 48))(v36, a2);
    if (v24)
    {
      v25 = v24;
      v13 = [v24 mediaType];
    }

    else
    {
      v13 = 0;
    }

    v35(v9, v14, v5);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06E8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v13;
      v29 = v9;
      v30 = swift_slowAlloc();
      *v30 = 134349056;
      *(v30 + 4) = v28;
      _os_log_impl(&dword_26629C000, v26, v27, "MediaIntentCommons#getMediaType firstMediaItemType is unknown, fall back to mediaType in intent: %{public}ld", v30, 0xCu);
      v31 = v30;
      v9 = v29;
      v13 = v28;
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v23(v9, v5);
  }

  return v13;
}

uint64_t sub_266435F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFAE8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PlayMediaAppSelectionResult.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlayMediaAppSelectionRecordSignalsResult.rawSignals.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_266314294(v2, v3, v4, v5);
}

uint64_t PlayMediaAppSelectionRecordSignalsResult.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2664E0B28();

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v3, v4);

  MEMORY[0x2667833B0](0xD000000000000014, 0x80000002664F8DD0);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v5, v6);

  return 0x3F73736563637553;
}

uint64_t DisambiguationConfiguration.trialExperimentId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DisambiguationConfiguration.trialRolloutId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DisambiguationConfiguration.trialTreatmentId.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_266436384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
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

uint64_t sub_2664363E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_266436444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_2664364A0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26643650C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_266436568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_2664365E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t NowPlayingInfo.init(title:trackArtist:albumArtist:album:songId:albumId:artistId:contentId:legacyUniqueIdentifier:isExplicitItem:isLiked:lyricsAvailable:playbackProgress:playbackRate:playCount:totalTrackCount:duration:seasonNumber:episodeNumber:trackNumber:releaseDate:composer:genre:lyricsURL:artworkURL:albumYear:mediaType:isLoading:playlistTitle:stationTitle:noAppProvidedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, __int128 a16, uint64_t a17, char a18, char a19, __int16 a20, int a21, int a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v55 = type metadata accessor for NowPlayingInfo(0);
  v56 = v55[24];
  v75 = v56;
  v57 = sub_2664DE438();
  (*(*(v57 - 8) + 56))(a9 + v56, 1, 1, v57);
  v58 = (a9 + v55[25]);
  v59 = (a9 + v55[26]);
  v60 = v55[27];
  v61 = sub_2664DE268();
  v62 = *(*(v61 - 8) + 56);
  v62(a9 + v60, 1, 1, v61);
  v63 = v55[28];
  v62(a9 + v63, 1, 1, v61);
  v64 = v55[29];
  v65 = v55[30];
  v66 = v55[32];
  v74 = v55[31];
  v67 = v55[33];
  v73 = v55[34];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  *(a9 + 128) = a17;
  *(a9 + 136) = a18 & 1;
  *(a9 + 137) = a19;
  *(a9 + 138) = a20;
  *(a9 + 140) = a22;
  *(a9 + 144) = a23 & 1;
  *(a9 + 152) = a24;
  *(a9 + 160) = a25 & 1;
  *(a9 + 168) = a26;
  *(a9 + 176) = a27 & 1;
  *(a9 + 184) = a28;
  *(a9 + 192) = a29 & 1;
  *(a9 + 200) = a30;
  *(a9 + 208) = a31 & 1;
  *(a9 + 216) = a32;
  *(a9 + 224) = a33 & 1;
  *(a9 + 232) = a34;
  *(a9 + 240) = a35 & 1;
  *(a9 + 248) = a36;
  *(a9 + 256) = a37 & 1;
  v68 = (a9 + v64);
  v69 = a9 + v65;
  v70 = (a9 + v66);
  v71 = (a9 + v67);
  *(a9 + 112) = a16;
  sub_26642A7B0(a38, a9 + v75, &qword_2800737D0, qword_2664E4FD0);
  *v58 = a39;
  v58[1] = a40;
  *v59 = a41;
  v59[1] = a42;
  sub_26642A7B0(a43, a9 + v60, &qword_280072BC0, &qword_2664E6030);
  result = sub_26642A7B0(a44, a9 + v63, &qword_280072BC0, &qword_2664E6030);
  *v68 = a45;
  v68[1] = a46;
  *v69 = a47;
  *(v69 + 8) = a48 & 1;
  *(a9 + v74) = a49;
  *v70 = a50;
  v70[1] = a51;
  *v71 = a52;
  v71[1] = a53;
  *(a9 + v73) = a54;
  return result;
}

uint64_t type metadata accessor for NowPlayingInfo(uint64_t a1)
{
  result = qword_2800738E8;
  if (!qword_2800738E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266436AD4()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000012, 0x80000002664ED2B0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_28007CD00 = v8;
  return result;
}

double sub_266436C6C()
{
  if (qword_280071C38 != -1)
  {
    swift_once();
  }

  v0 = qword_2800737C0;
  v5 = type metadata accessor for MediaRemoteAPIProvider();
  v6 = &protocol witness table for MediaRemoteAPIProvider;
  *&v4 = v0;
  v1 = qword_280071AB0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_280072A78;
  qword_2800738D0 = type metadata accessor for SEDeviceProvider();
  unk_2800738D8 = &protocol witness table for SEDeviceProvider;
  qword_2800738B8 = v2;
  sub_2662A8618(&v4, &unk_280073890);

  return result;
}

uint64_t NowPlayingProvider.init(mediaRemoteAPIProvider:seDeviceProvider:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2662A8618(a1, a3);

  return sub_2662A8618(a2, a3 + 40);
}

uint64_t static NowPlayingProvider.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280071C50 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_266436E04(&unk_280073890, v2);
}

uint64_t NowPlayingProvider.state(outputDeviceUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a2;
    v18 = a1;
    v19 = a3;
    v20 = a4;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "NowPlayingProvider#state...", v17, 2u);
    v22 = v21;
    a4 = v20;
    a3 = v19;
    a1 = v18;
    a2 = v31;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v23 = a2;
  if (!a2)
  {
    v24 = v5[8];
    v25 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v24);
    a1 = (*(v25 + 24))(v24, v25);
    v23 = v26;
  }

  v27 = v5[3];
  v28 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v27);
  v29 = qword_280071C48;

  if (v29 != -1)
  {
    swift_once();
  }

  (*(v28 + 8))(qword_28007CD00, a1, v23, a3, a4, v27, v28);
}

uint64_t NowPlayingProvider.app(outputDeviceUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a2;
    v18 = a4;
    v19 = a1;
    v20 = a3;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "NowPlayingProvider#app...", v17, 2u);
    v22 = v21;
    a3 = v20;
    a1 = v19;
    a4 = v18;
    a2 = v34;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v23 = a2;
  if (!a2)
  {
    v24 = v5[8];
    v25 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v24);
    a1 = (*(v25 + 24))(v24, v25);
    v23 = v26;
  }

  v27 = v5[3];
  v28 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v27);
  v29 = qword_280071C48;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_28007CD00;
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  v32 = *(v28 + 16);

  v32(v30, a1, v23, sub_26643B990, v31, v27, v28);
}

uint64_t NowPlayingProvider.item(outputDeviceUID:queuePosition:completion:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a3;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = a2;
    v20 = a1;
    v21 = a4;
    v22 = a5;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "NowPlayingProvider#item...", v19, 2u);
    v24 = v23;
    a5 = v22;
    a4 = v21;
    a1 = v20;
    a2 = v34;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v25 = a2;
  if (!a2)
  {
    v26 = v6[8];
    v27 = v6[9];
    __swift_project_boxed_opaque_existential_1(v6 + 5, v26);
    a1 = (*(v27 + 24))(v26, v27);
    v25 = v28;
  }

  v29 = v6[3];
  v30 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v29);
  v31 = qword_280071C48;

  if (v31 != -1)
  {
    swift_once();
  }

  v36 = v35;
  (*(v30 + 24))(qword_28007CD00, a1, v25, &v36, a4, a5, v29, v30);
}

uint64_t NowPlayingProvider.items(outputDeviceUIDs:queuePosition:completion:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v7 = sub_2664DFE08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v36 - v11;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *a2;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a4;
    v20 = v9;
    v21 = v8;
    v22 = a3;
    v23 = v7;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "NowPlayingProvider#items...", v19, 2u);
    v25 = v24;
    v7 = v23;
    a3 = v22;
    v8 = v21;
    v9 = v20;
    a4 = v37;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = qword_280F91508;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_280F91D48;
  v29 = v38;
  sub_2664DFDE8();
  v30 = v39;
  (*(v8 + 16))(v39, v29, v7);
  v31 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = "nowPlayingUsageProviderRemoteItems";
  *(v32 + 24) = 34;
  *(v32 + 32) = 2;
  (*(v8 + 32))(v32 + v31, v30, v7);
  v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = sub_2662C0D0C;
  v33[1] = v26;

  sub_2664E0848();
  sub_2664DFDD8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2662C0D38;
  *(v34 + 24) = v32;

  sub_266437B64(sub_2662C0DE0, v34, v41, v42, v40);

  return (*(v8 + 8))(v29, v7);
}

uint64_t sub_266437B64(uint64_t a1, uint64_t a2, uint64_t a3, id a4, int a5)
{
  LODWORD(v122) = a5;
  v121 = a4;
  v116 = a2;
  v115 = a1;
  v133 = sub_2664E0038();
  v117 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v130 = v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2664DE438();
  v131 = *(v132 - 8);
  v7 = MEMORY[0x28223BE20](v132);
  v125 = v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v8;
  MEMORY[0x28223BE20](v7);
  v136 = v101 - v9;
  v10 = sub_2664DFE38();
  v135 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v113 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v134 = v101 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v101 - v15;
  v17 = sub_2664E0788();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2664E00B8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = swift_allocObject();
  *(v129 + 16) = MEMORY[0x277D84F90];
  v114 = dispatch_group_create();
  sub_2664E0078();
  sub_2664E0768();
  v110 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000028, 0x80000002664F8E20, v24, v20);
  (*(v18 + 8))(v20, v17);
  v25 = *(v22 + 8);
  v126 = v24;
  v128 = v21;
  v127 = v22 + 8;
  v124 = v25;
  v25(v24, v21);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v27 = v135;
  v28 = *(v135 + 16);
  v120 = v26;
  v119 = v135 + 16;
  v118 = v28;
  v28(v16, v26, v10);

  v29 = sub_2664DFE18();
  v30 = sub_2664E06C8();

  v31 = v10;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&aBlock = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x2667834D0](a3, MEMORY[0x277D837D0]);
    v36 = sub_2662A320C(v34, v35, &aBlock);

    *(v32 + 4) = v36;
    v37 = v135;
    _os_log_impl(&dword_26629C000, v29, v30, "NowPlayingProvider#items outputDeviceUIDs: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  else
  {
    v37 = v27;
  }

  v38 = *(v37 + 8);
  v38(v16, v31);
  v39 = v129;
  v40 = *(v129 + 16);
  sub_266436E04(v121, &aBlock);
  v41 = swift_allocObject();
  v42 = aBlock;
  *(v41 + 56) = v139;
  v43 = v141;
  *(v41 + 72) = v140;
  *(v41 + 88) = v43;
  *(v41 + 104) = v142;
  v44 = v114;
  *(v41 + 16) = a3;
  *(v41 + 24) = v44;
  v45 = v110;
  *(v41 + 32) = v110;
  *(v41 + 40) = v42;
  *(v41 + 120) = v122;
  v122 = v41;
  *(v41 + 128) = v39;
  v46 = v134;
  v118(v134, v120, v31);

  v111 = v44;
  v121 = v45;

  v47 = sub_2664DFE18();
  v48 = sub_2664E06C8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&aBlock = v50;
    *v49 = 136446466;
    *(v49 + 4) = sub_2662A320C(0xD000000000000018, 0x80000002664F8E50, &aBlock);
    *(v49 + 12) = 2050;
    *(v49 + 14) = 1001;
    _os_log_impl(&dword_26629C000, v47, v48, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x266784AD0](v50, -1, -1);
    MEMORY[0x266784AD0](v49, -1, -1);
  }

  v38(v46, v31);
  v114 = v31;
  v51 = v136;
  sub_2664DE428();
  v52 = dispatch_group_create();
  v110 = swift_allocObject();
  *(v110 + 16) = v40;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  v123 = v40;

  sub_2664E0B28();

  *&aBlock = 0xD00000000000001ALL;
  *(&aBlock + 1) = 0x80000002664F44D0;
  MEMORY[0x2667833B0](0xD000000000000018, 0x80000002664F8E50);
  v53 = aBlock;
  type metadata accessor for AtomicOnce();
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  *(v54 + 32) = v53;
  v55 = qword_280F91468;

  v134 = 0x80000002664F8E50;
  if (v55 != -1)
  {
    swift_once();
  }

  v56 = qword_280F91470;
  *(&v139 + 1) = type metadata accessor for SiriKitTaskLoggingProvider();
  *&v140 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&aBlock = v56;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v54 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v53, *(&v53 + 1), 1, &aBlock);
  dispatch_group_enter(v52);
  v57 = v131;
  v58 = *(v131 + 16);
  v59 = v52;
  v60 = v54;
  v61 = v125;
  v62 = v132;
  v107 = v131 + 16;
  v106 = v58;
  v58(v125, v51, v132);
  v63 = *(v57 + 80);
  v64 = (v63 + 56) & ~v63;
  v109 = v64 + v112;
  v65 = (v64 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = v63;
  v66 = swift_allocObject();
  v67 = v122;
  v66[2] = sub_26643BCF8;
  v66[3] = v67;
  v66[4] = v60;
  v66[5] = 0xD000000000000018;
  v66[6] = v134;
  v68 = *(v57 + 32);
  v108 = v64;
  v104 = v68;
  v101[3] = v57 + 32;
  v68(v66 + v64, v61, v62);
  v69 = v110;
  *(v66 + v65) = v110;
  v70 = v59;
  *(v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8)) = v59;
  *&v140 = sub_26643BD10;
  *(&v140 + 1) = v66;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_2662A3F90;
  *(&v139 + 1) = &block_descriptor_65_2;
  v71 = _Block_copy(&aBlock);

  v112 = v60;

  v102 = v70;
  v72 = v126;
  sub_2664E0068();
  v137 = MEMORY[0x277D84F90];
  v73 = sub_26643BDB4(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v75 = sub_2662A5AC8();
  v76 = v130;
  v101[2] = v74;
  v101[1] = v75;
  v77 = v133;
  v103 = v73;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v72, v76, v71);
  _Block_release(v71);
  v117 = *(v117 + 8);
  (v117)(v76, v77);
  v124(v72, v128);

  v78 = v113;
  v79 = v114;
  v118(v113, v120, v114);
  v80 = sub_2664DFE18();
  v81 = sub_2664E06E8();
  v82 = v69;
  if (os_log_type_enabled(v80, v81))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&aBlock = v84;
    *v83 = 136446210;
    *(v83 + 4) = sub_2662A320C(0xD000000000000018, v134, &aBlock);
    _os_log_impl(&dword_26629C000, v80, v81, "Completions#timeout waiting for completion: %{public}s...", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x266784AD0](v84, -1, -1);
    MEMORY[0x266784AD0](v83, -1, -1);
  }

  (*(v135 + 8))(v78, v79);
  v85 = v125;
  v86 = v132;
  v106(v125, v136, v132);
  v87 = v109;
  v88 = ((v109 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v102;
  *(v89 + 24) = xmmword_2664ED110;
  v91 = v123;
  *(v89 + 40) = v134;
  *(v89 + 48) = v91;
  v104(v89 + v108, v85, v86);
  *(v89 + v87) = 0;
  v92 = v89 + (v87 & 0xFFFFFFFFFFFFFFF8);
  v93 = v116;
  *(v92 + 8) = v115;
  *(v92 + 16) = v93;
  *(v89 + v88) = v82;
  *&v140 = sub_26643BDFC;
  *(&v140 + 1) = v89;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_2662A3F90;
  *(&v139 + 1) = &block_descriptor_71_1;
  v94 = _Block_copy(&aBlock);

  v95 = v90;

  v96 = v126;
  sub_2664E0068();
  v137 = MEMORY[0x277D84F90];
  v97 = v130;
  v98 = v133;
  sub_2664E0A08();
  v99 = v121;
  MEMORY[0x266783800](0, v96, v97, v94);
  _Block_release(v94);

  (v117)(v97, v98);
  v124(v96, v128);
  (*(v131 + 8))(v136, v86);
}

uint64_t sub_266438ACC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v59 = a7;
  v58 = a6;
  v57 = a5;
  v61 = sub_2664E0038();
  v13 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664E00B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2664DFE38();
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v52 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v48 = v20;
  v21 = *(a3 + 16);
  v50 = v13;
  v49 = v16;
  if (v21)
  {
    v56 = v65;
    v55 = (v13 + 8);
    v54 = (v16 + 8);

    v22 = (a3 + 40);
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;

      dispatch_group_enter(a4);
      sub_266436E04(v58, &v66);
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v23;
      v26 = v69;
      *(v25 + 64) = v68;
      *(v25 + 80) = v26;
      *(v25 + 96) = v70;
      v27 = v67;
      *(v25 + 32) = v66;
      *(v25 + 48) = v27;
      *(v25 + 112) = v59;
      *(v25 + 120) = a8;
      *(v25 + 128) = a4;
      v65[2] = sub_26643BEA4;
      v65[3] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v65[0] = sub_2662A3F90;
      v65[1] = &block_descriptor_80_0;
      v62 = _Block_copy(aBlock);

      v28 = a4;
      sub_2664E0068();
      v63 = MEMORY[0x277D84F90];
      sub_26643BDB4(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v29 = v21;
      v30 = v60;
      v31 = v61;
      sub_2664E0A08();
      v32 = v62;
      MEMORY[0x266783800](a4, v18, v30, v62);
      _Block_release(v32);
      (*v55)(v30, v31);
      (*v54)(v18, v15);

      v22 += 2;
      v21 = v29 - 1;
    }

    while (v29 != 1);
  }

  else
  {
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = v51;
  v34 = __swift_project_value_buffer(v51, qword_280F914F0);
  swift_beginAccess();
  (*(v53 + 16))(v52, v34, v33);
  v35 = sub_2664DFE18();
  v36 = sub_2664E06C8();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v61;
  v39 = v60;
  v40 = MEMORY[0x277D84F90];
  if (v37)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_26629C000, v35, v36, "NowPlayingProvider#items finished for loop kicking off threads to retrieve each device's item info", v41, 2u);
    v42 = v41;
    v33 = v51;
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  (*(v53 + 8))(v52, v33);
  sub_2664259E0();
  v43 = sub_2664E07C8();
  v44 = swift_allocObject();
  v44[2] = a8;
  v44[3] = sub_2662C0CAC;
  v44[4] = v48;
  *&v68 = sub_26643BEB8;
  *(&v68 + 1) = v44;
  *&v66 = MEMORY[0x277D85DD0];
  *(&v66 + 1) = 1107296256;
  *&v67 = sub_2662A3F90;
  *(&v67 + 1) = &block_descriptor_86_0;
  v45 = _Block_copy(&v66);

  sub_2664E0068();
  v63 = v40;
  sub_26643BDB4(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  sub_2664E0758();
  _Block_release(v45);

  (*(v50 + 8))(v39, v38);
  (*(v49 + 8))(v18, v15);
}

uint64_t sub_26643922C(uint64_t a1, unint64_t a2, void *a3, char a4, uint64_t a5, void *a6)
{
  v32 = a6;
  v33 = a1;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a5;
    v18 = a4;
    v19 = v17;
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_2662A320C(v33, a2, &v34);
    _os_log_impl(&dword_26629C000, v15, v16, "NowPlayingProvider#items for outputDeviceUID: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    v21 = v19;
    a4 = v18;
    a5 = v31;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v22 = a3[3];
  v23 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v22);
  if (qword_280071C48 != -1)
  {
    swift_once();
  }

  v24 = qword_28007CD00;
  LOBYTE(v34) = a4;
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = a5;
  *(v25 + 24) = v26;
  v27 = *(v23 + 24);

  v28 = v26;
  v27(v24, v33, a2, &v34, sub_26643BEC4, v25, v22, v23);
}

void sub_266439524(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v33 = a3;
  v32 = sub_2664DFE38();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310);
  v8 = *(v31 - 8);
  v9 = MEMORY[0x28223BE20](v31);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  sub_2662A7224(a1, &v30 - v14, qword_280073800, &unk_2664ED310);
  swift_beginAccess();
  v16 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266384FA0(0, v16[2] + 1, 1, v16);
    *(a2 + 16) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266384FA0((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  sub_26643BECC(v15, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19);
  *(a2 + 16) = v16;
  swift_endAccess();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = v32;
  v21 = __swift_project_value_buffer(v32, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v21, v20);
  sub_2662A7224(a1, v13, qword_280073800, &unk_2664ED310);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v24 = 136315138;
    sub_2662A7224(v13, v30, qword_280073800, &unk_2664ED310);
    v26 = sub_2664E0318();
    v28 = v27;
    sub_26643BF3C(v13);
    v29 = sub_2662A320C(v26, v28, &v34);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_26629C000, v22, v23, "NowPlayingProvider#items for result: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x266784AD0](v25, -1, -1);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  else
  {

    sub_26643BF3C(v13);
  }

  (*(v5 + 8))(v7, v20);
  dispatch_group_leave(v33);
}

uint64_t sub_26643993C(uint64_t a1, void (*a2)(__n128))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26[0] = v25;
    *v11 = 136315138;
    swift_beginAccess();
    v12 = *(a1 + 16);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310);
    v14 = MEMORY[0x2667834D0](v12, v13);
    v24 = v4;
    v15 = v14;
    HIDWORD(v23) = v10;
    v16 = a2;
    v18 = v17;

    v19 = sub_2662A320C(v15, v18, v26);
    a2 = v16;

    *(v11 + 4) = v19;
    _os_log_impl(&dword_26629C000, v9, BYTE4(v23), "NowPlayingProvider#items done with results: %s", v11, 0xCu);
    v20 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);

    (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();

  (a2)(v21);
}

void sub_266439C48(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  if (!a1 || a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v19, v8);
    v20 = a2;
    v21 = sub_2664DFE18();
    v22 = sub_2664E06D8();

    if (os_log_type_enabled(v21, v22))
    {
      v35 = a4;
      v36 = a3;
      v23 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v23 = 136315138;
      if (a2)
      {
        v37 = v20;
        type metadata accessor for CFError(0);
        sub_26643BDB4(&qword_2800726B0, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
        v24 = sub_2664E0DE8();
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      v37 = v24;
      v38 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v28 = sub_2664E0318();
      v30 = sub_2662A320C(v28, v29, &v39);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_26629C000, v21, v22, "NowPlayingProvider#queue Unexpected nil playbackQueue or error: %s", v23, 0xCu);
      v31 = v34;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v31, -1, -1);
      MEMORY[0x266784AD0](v23, -1, -1);

      (*(v9 + 8))(v12, v8);
      a3 = v36;
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    else
    {

      (*(v9 + 8))(v12, v8);
      if (!a2)
      {
LABEL_17:
        v26 = 0;
        goto LABEL_18;
      }
    }

    type metadata accessor for CFError(0);
    sub_26643BDB4(&qword_2800726B0, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    v26 = swift_allocError();
    *v27 = v20;
LABEL_18:
    v32 = v20;
    a3(0, v26);

    return;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v14, v15, v8);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "NowPlayingProvider#queue complete with queue", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v9 + 8))(v14, v8);
  a3(a1, 0);
}

void sub_26643A108(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a3;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a2;
    v18 = a1;
    v19 = a5;
    v20 = a6;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, v27, v17, 2u);
    v22 = v21;
    a6 = v20;
    a5 = v19;
    a1 = v18;
    a2 = v26;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  if (qword_280071C48 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  aBlock[4] = a5;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2664365E0;
  aBlock[3] = a6;
  v24 = _Block_copy(aBlock);

  MRMediaRemoteRequestNowPlayingPlaybackQueueSync();
  _Block_release(v24);
}

void sub_26643A3BC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  if (!a1 || a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v20, v8);
    v21 = a2;
    v22 = v9;
    v23 = sub_2664DFE18();
    v24 = sub_2664E06D8();

    if (os_log_type_enabled(v23, v24))
    {
      v47 = a3;
      v48 = v22;
      v46 = a4;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 136315138;
      if (a2)
      {
        v49 = v21;
        type metadata accessor for CFError(0);
        sub_26643BDB4(&qword_2800726B0, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
        v27 = sub_2664E0DE8();
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      v49 = v27;
      v50 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v41 = sub_2664E0318();
      v43 = sub_2662A320C(v41, v42, &v51);

      *(v25 + 4) = v43;
      _os_log_impl(&dword_26629C000, v23, v24, "NowPlayingProvider#queueRefId Unexpected nil playbackQueue or error: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);

      (*(v48 + 8))(v12, v8);
      a3 = v47;
      if (!a2)
      {
        goto LABEL_21;
      }
    }

    else
    {

      (*(v22 + 8))(v12, v8);
      if (!a2)
      {
LABEL_21:
        v29 = 0;
        goto LABEL_22;
      }
    }

    type metadata accessor for CFError(0);
    sub_26643BDB4(&qword_2800726B0, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    v29 = swift_allocError();
    *v30 = v21;
LABEL_22:
    v44 = v21;
    (a3)(0, 0, v29);

    return;
  }

  QueueID = MRPlaybackQueueGetQueueID();
  if (QueueID)
  {
    v16 = QueueID;
    v17 = sub_2664E02C8();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v14, v31, v8);

  v32 = sub_2664DFE18();
  v33 = sub_2664E06C8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v48 = v9;
    v35 = v34;
    v47 = swift_slowAlloc();
    v50 = v19;
    v51 = v47;
    *v35 = 136315138;
    v49 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v36 = sub_2664E0318();
    v46 = v8;
    v38 = a3;
    v39 = sub_2662A320C(v36, v37, &v51);

    *(v35 + 4) = v39;
    a3 = v38;
    _os_log_impl(&dword_26629C000, v32, v33, "NowPlayingProvider#queueRefId Playback queue identifier: %s", v35, 0xCu);
    v40 = v47;
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v35, -1, -1);

    (*(v48 + 8))(v14, v46);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  (a3)(v17, v19, 0);
}

SiriAudioSupport::QueuePosition_optional __swiftcall QueuePosition.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if ((rawValue + 1) < 3)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26643AA14()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1 - 1);
  return sub_2664E0EB8();
}

uint64_t sub_26643AA8C(uint64_t a1)
{
  v2 = *v1;
  sub_2664E0E68();
  MEMORY[0x266783E90](v2 - 1);
  return sub_2664E0EB8();
}

uint64_t NowPlayingInfo.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NowPlayingInfo.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.trackArtist.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NowPlayingInfo.trackArtist.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NowPlayingInfo.albumArtist.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NowPlayingInfo.albumArtist.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t NowPlayingInfo.album.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NowPlayingInfo.album.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t NowPlayingInfo.songId.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.albumId.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.artistId.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.contentId.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t NowPlayingInfo.contentId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t NowPlayingInfo.legacyUniqueIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.playbackProgress.setter(uint64_t result)
{
  *(v1 + 140) = result;
  *(v1 + 144) = BYTE4(result) & 1;
  return result;
}

uint64_t NowPlayingInfo.playbackRate.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.playCount.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.totalTrackCount.setter(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.duration.setter(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.seasonNumber.setter(uint64_t result, char a2)
{
  *(v2 + 216) = result;
  *(v2 + 224) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.episodeNumber.setter(uint64_t result, char a2)
{
  *(v2 + 232) = result;
  *(v2 + 240) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.trackNumber.setter(uint64_t result, char a2)
{
  *(v2 + 248) = result;
  *(v2 + 256) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.composer.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlayingInfo(0) + 100));

  return v1;
}

uint64_t NowPlayingInfo.composer.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NowPlayingInfo(0) + 100));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.genre.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlayingInfo(0) + 104));

  return v1;
}

uint64_t NowPlayingInfo.genre.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NowPlayingInfo(0) + 104));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.albumYear.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlayingInfo(0) + 116));

  return v1;
}

uint64_t NowPlayingInfo.albumYear.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NowPlayingInfo(0) + 116));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.mediaType.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for NowPlayingInfo(0);
  v6 = v2 + *(result + 120);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.isLoading.setter(char a1)
{
  result = type metadata accessor for NowPlayingInfo(0);
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t NowPlayingInfo.playlistTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlayingInfo(0) + 128));

  return v1;
}

uint64_t NowPlayingInfo.playlistTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NowPlayingInfo(0) + 128));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.stationTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlayingInfo(0) + 132));

  return v1;
}

uint64_t NowPlayingInfo.stationTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NowPlayingInfo(0) + 132));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.noAppProvidedData.setter(char a1)
{
  result = type metadata accessor for NowPlayingInfo(0);
  *(v1 + *(result + 136)) = a1;
  return result;
}

unint64_t sub_26643B9CC()
{
  result = qword_2800738E0;
  if (!qword_2800738E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800738E0);
  }

  return result;
}

void sub_26643BA68(uint64_t a1)
{
  sub_266417140(319, &qword_2800731D8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_266417140(319, &qword_2800738F8, MEMORY[0x277D84A28]);
    if (v2 <= 0x3F)
    {
      sub_266417140(319, &qword_280073740, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_266417140(319, &qword_280073900, MEMORY[0x277D83A90]);
        if (v4 <= 0x3F)
        {
          sub_266417140(319, &qword_280073908, MEMORY[0x277D839F8]);
          if (v5 <= 0x3F)
          {
            sub_266417140(319, &qword_280073738, MEMORY[0x277D83B88]);
            if (v6 <= 0x3F)
            {
              sub_26643BCA4(319, &qword_280F914D0, MEMORY[0x277CC9578]);
              if (v7 <= 0x3F)
              {
                sub_26643BCA4(319, &qword_280073910, MEMORY[0x277CC9260]);
                if (v8 <= 0x3F)
                {
                  sub_26643BCA4(319, &qword_280073918, type metadata accessor for MRContentItemMediaType);
                  if (v9 <= 0x3F)
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

void sub_26643BCA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2664E0948();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26643BD10()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + v3);
  v10 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2663EFE44(v4, v5, v6, v7, v8, v0 + v2, v9, v10);
}

uint64_t sub_26643BDB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26643BDFC()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_2663F2518(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + v3), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_26643BECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26643BF3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26643BFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v4[6] = swift_task_alloc();
  v7 = sub_2664DF998();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[2] = a2;
  v4[3] = a3;

  return MEMORY[0x2822009F8](sub_26643C0FC, 0, 0);
}

uint64_t sub_26643C0FC()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_266446444();
  v7 = v6;
  v0[11] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2662A9238(v0[6], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_26644753C();
    sub_26643F980();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[15] = v9;
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_26643C4A4;
    v11 = v0[9];
    v12 = v0[4];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
  }

  else
  {
    (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
    ObjectType = swift_getObjectType();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[12] = v9;
    v15 = swift_task_alloc();
    v0[13] = v15;
    sub_26644753C();
    *v15 = v0;
    v15[1] = sub_26643C374;
    v11 = v0[10];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
    v12 = v0[4];
  }

  return MEMORY[0x28213DAA0](v12, v14, v11, v9, v13, ObjectType, &type metadata for OpenMusicItemAppIntent, v7);
}

uint64_t sub_26643C374()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26643C6DC;
  }

  else
  {
    v2 = sub_26643C638;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26643C4A4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_26643C800;
  }

  else
  {
    v5 = sub_26643C780;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26643C638()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26643C6DC()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26643C780()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26643C800()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26643C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v4[6] = swift_task_alloc();
  v7 = sub_2664DF998();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[2] = a2;
  v4[3] = a3;

  return MEMORY[0x2822009F8](sub_26643C9A0, 0, 0);
}

uint64_t sub_26643C9A0()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_266446444();
  v7 = v6;
  v0[11] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2662A9238(v0[6], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_266447494();
    sub_26643F980();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[15] = v9;
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_26643CD48;
    v11 = v0[9];
    v12 = v0[4];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
  }

  else
  {
    (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
    ObjectType = swift_getObjectType();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[12] = v9;
    v15 = swift_task_alloc();
    v0[13] = v15;
    sub_266447494();
    *v15 = v0;
    v15[1] = sub_26643CC18;
    v11 = v0[10];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
    v12 = v0[4];
  }

  return MEMORY[0x28213DAA0](v12, v14, v11, v9, v13, ObjectType, &type metadata for ShowMusicNoticeAppIntent, v7);
}

uint64_t sub_26643CC18()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_266447590;
  }

  else
  {
    v2 = sub_26644759C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26643CD48()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_2664475A4;
  }

  else
  {
    v5 = sub_2664475AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26643CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a1;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v5[7] = swift_task_alloc();
  v9 = sub_2664DF998();
  v5[8] = v9;
  v5[9] = *(v9 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;

  return MEMORY[0x2822009F8](sub_26643CFFC, 0, 0);
}

uint64_t sub_26643CFFC()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = sub_266446444();
  v7 = v6;
  v0[12] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2662A9238(v0[7], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_2664474E8();
    sub_26643F980();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[16] = v9;
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_26643D3A4;
    v11 = v0[10];
    v12 = v0[5];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
  }

  else
  {
    (*(v0[9] + 32))(v0[11], v0[7], v0[8]);
    ObjectType = swift_getObjectType();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[13] = v9;
    v15 = swift_task_alloc();
    v0[14] = v15;
    sub_2664474E8();
    *v15 = v0;
    v15[1] = sub_26643D274;
    v11 = v0[11];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
    v12 = v0[5];
  }

  return MEMORY[0x28213DAA0](v12, v14, v11, v9, v13, ObjectType, &type metadata for SearchMusicAppIntent, v7);
}

uint64_t sub_26643D274()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_26643D5DC;
  }

  else
  {
    v2 = sub_26643D538;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26643D3A4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_26643D700;
  }

  else
  {
    v5 = sub_26643D680;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26643D538()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26643D5DC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26643D680()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26643D700()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26643D788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v3[5] = swift_task_alloc();
  v5 = sub_2664DF998();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_26643D894, 0, 0);
}

uint64_t sub_26643D894()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_266446444();
  v7 = v6;
  v0[10] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2662A9238(v0[5], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_266447440();
    sub_26643F980();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[14] = v9;
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_26643DC3C;
    v11 = v0[8];
    v12 = v0[3];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    ObjectType = swift_getObjectType();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[11] = v9;
    v15 = swift_task_alloc();
    v0[12] = v15;
    sub_266447440();
    *v15 = v0;
    v15[1] = sub_26643DB0C;
    v11 = v0[9];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
    v12 = v0[3];
  }

  return MEMORY[0x28213DAA0](v12, v14, v11, v9, v13, ObjectType, &type metadata for OpenPodcastShowAppIntent, v7);
}

uint64_t sub_26643DB0C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_266447594;
  }

  else
  {
    v2 = sub_2664475A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26643DC3C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_2664475A8;
  }

  else
  {
    v5 = sub_2664475B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26643DDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v3[5] = swift_task_alloc();
  v5 = sub_2664DF998();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_26643DEDC, 0, 0);
}

uint64_t sub_26643DEDC()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_266446444();
  v7 = v6;
  v0[10] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2662A9238(v0[5], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_2664473EC();
    sub_26643F980();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[14] = v9;
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_26643DC3C;
    v11 = v0[8];
    v12 = v0[3];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    ObjectType = swift_getObjectType();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[11] = v9;
    v15 = swift_task_alloc();
    v0[12] = v15;
    sub_2664473EC();
    *v15 = v0;
    v15[1] = sub_26643DB0C;
    v11 = v0[9];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
    v12 = v0[3];
  }

  return MEMORY[0x28213DAA0](v12, v14, v11, v9, v13, ObjectType, &type metadata for OpenPodcastEpisodeAppIntent, v7);
}

uint64_t sub_26643E154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v3[5] = swift_task_alloc();
  v5 = sub_2664DF998();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_26643E260, 0, 0);
}

uint64_t sub_26643E260()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_266446444();
  v7 = v6;
  v0[10] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2662A9238(v0[5], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_266447398();
    sub_26643F980();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[14] = v9;
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_26643DC3C;
    v11 = v0[8];
    v12 = v0[3];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    ObjectType = swift_getObjectType();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[11] = v9;
    v15 = swift_task_alloc();
    v0[12] = v15;
    sub_266447398();
    *v15 = v0;
    v15[1] = sub_26643DB0C;
    v11 = v0[9];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
    v12 = v0[3];
  }

  return MEMORY[0x28213DAA0](v12, v14, v11, v9, v13, ObjectType, &type metadata for OpenPodcastChannelAppIntent, v7);
}

uint64_t sub_26643E4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v3[5] = swift_task_alloc();
  v5 = sub_2664DF998();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_26643E5E4, 0, 0);
}

uint64_t sub_26643E5E4()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_266446444();
  v7 = v6;
  v0[10] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2662A9238(v0[5], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_266447344();
    sub_26643F980();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[14] = v9;
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_26643E98C;
    v11 = v0[8];
    v12 = v0[3];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    ObjectType = swift_getObjectType();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[11] = v9;
    v15 = swift_task_alloc();
    v0[12] = v15;
    sub_266447344();
    *v15 = v0;
    v15[1] = sub_26643E85C;
    v11 = v0[9];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
    v12 = v0[3];
  }

  return MEMORY[0x28213DAA0](v12, v14, v11, v9, v13, ObjectType, &type metadata for FollowShowAppIntent, v7);
}

uint64_t sub_26643E85C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26643EBC4;
  }

  else
  {
    v2 = sub_26643EB20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26643E98C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_26643ECE8;
  }

  else
  {
    v5 = sub_26643EC68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26643EB20()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26643EBC4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26643EC68()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26643ECE8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26643ED70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v3[5] = swift_task_alloc();
  v5 = sub_2664DF998();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_26643EE7C, 0, 0);
}

uint64_t sub_26643EE7C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_266446444();
  v7 = v6;
  v0[10] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2662A9238(v0[5], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_2664472A4();
    sub_26643F980();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[14] = v9;
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_26643DC3C;
    v11 = v0[8];
    v12 = v0[3];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    ObjectType = swift_getObjectType();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[11] = v9;
    v15 = swift_task_alloc();
    v0[12] = v15;
    sub_2664472A4();
    *v15 = v0;
    v15[1] = sub_26643DB0C;
    v11 = v0[9];
    v13 = MEMORY[0x277CEAFA0];
    v14 = v0 + 2;
    v12 = v0[3];
  }

  return MEMORY[0x28213DAA0](v12, v14, v11, v9, v13, ObjectType, &type metadata for SearchPodcastsAppIntent, v7);
}

uint64_t sub_26643F0F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v2[4] = swift_task_alloc();
  v3 = sub_2664DF998();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26643F1F8, 0, 0);
}

uint64_t sub_26643F1F8()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_266446444();
  v7 = v6;
  v0[9] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2662A9238(v0[4], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_266447250();
    sub_26643F980();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[13] = v9;
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_26643F59C;
    v12 = v0[7];
    v13 = v0[2];
    v14 = MEMORY[0x277CEAFA0];
  }

  else
  {
    (*(v0[6] + 32))(v0[8], v0[4], v0[5]);
    ObjectType = swift_getObjectType();
    sub_2664DF838();
    swift_allocObject();
    v9 = sub_2664DF828();
    v0[10] = v9;
    v15 = swift_task_alloc();
    v0[11] = v15;
    sub_266447250();
    *v15 = v0;
    v15[1] = sub_26643F46C;
    v12 = v0[8];
    v14 = MEMORY[0x277CEAFA0];
    v13 = v0[2];
  }

  return MEMORY[0x28213DAA0](v13, v10, v12, v9, v14, ObjectType, &type metadata for OpenQueueAppIntent, v7);
}

uint64_t sub_26643F46C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_26643F7D4;
  }

  else
  {
    v2 = sub_26643F730;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26643F59C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_26643F8F8;
  }

  else
  {
    v5 = sub_26643F878;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26643F730()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26643F7D4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26643F878()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26643F8F8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26643F980()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073928, &qword_2664ED330);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073930, &qword_2664ED338);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2664DFCE8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_2664DFA48();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_2664DF988();
  return sub_2664DF978();
}

uint64_t sub_26643FB00(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = v3;
  *(v4 + 88) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v7 = sub_2664DFE38();
  *(v4 + 144) = v7;
  *(v4 + 152) = *(v7 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073928, &qword_2664ED330);
  *(v4 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073930, &qword_2664ED338);
  *(v4 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 275) = *a3;

  return MEMORY[0x2822009F8](sub_26643FCF8, 0, 0);
}

uint64_t sub_26643FCF8()
{
  v41 = v0;
  v1 = *(v0 + 275);
  type metadata accessor for GenericMusicItemEntity(0);
  sub_266446694(&qword_280073940, type metadata accessor for GenericMusicItemEntity, &protocol conformance descriptor for GenericMusicItemEntity);

  v2 = sub_2664DF818();
  *(v0 + 200) = v2;
  *(v0 + 272) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732D0, &qword_2664E9FB8);
  swift_allocObject();

  v3 = sub_2664DFA28();
  *(v0 + 80) = v2;
  *(v0 + 208) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732D8, &qword_2664E9FC0);
  swift_allocObject();

  v38 = sub_2664DFA28();
  v39 = v3;
  *(v0 + 216) = v38;
  *(v0 + 273) = v1;
  sub_2664DFA38();

  v4 = 1;
  if (v1 != 9)
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 176);
    v7 = sub_2664DFCE8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = sub_2664DFA48();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_2664DF988();
    sub_2664DF978();
    v4 = 0;
  }

  v9 = *(v0 + 192);
  v10 = sub_2664DF998();
  (*(*(v10 - 8) + 56))(v9, v4, 1, v10);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 168);
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  v14 = __swift_project_value_buffer(v13, qword_280F914F0);
  *(v0 + 224) = v14;
  swift_beginAccess();
  v15 = *(v12 + 16);
  *(v0 + 232) = v15;
  *(v0 + 240) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v11, v14, v13);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();

  if (os_log_type_enabled(v16, v17))
  {
    v35 = *(v0 + 275);
    v18 = *(v0 + 152);
    v36 = *(v0 + 144);
    v37 = *(v0 + 168);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v20;
    *v19 = 136315394;
    sub_2664DF858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073950, &qword_2664ED350);
    v21 = sub_2664E0318();
    v23 = sub_2662A320C(v21, v22, &v40);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v0 + 274) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073958, &qword_2664ED358);
    v24 = sub_2664E0318();
    v26 = sub_2662A320C(v24, v25, &v40);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_26629C000, v16, v17, "AppIntentInvoker#invokeOpenMusicItemIntent OpenMusicItemAppIntent constructed with target: %s and noticeEntity: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v19, -1, -1);

    v27 = *(v18 + 8);
    v27(v37, v36);
  }

  else
  {
    v28 = *(v0 + 168);
    v30 = *(v0 + 144);
    v29 = *(v0 + 152);

    v27 = *(v29 + 8);
    v27(v28, v30);
  }

  *(v0 + 248) = v27;
  v31 = swift_task_alloc();
  *(v0 + 256) = v31;
  *v31 = v0;
  v31[1] = sub_26644020C;
  v32 = *(v0 + 192);
  v33 = *(v0 + 136);

  return sub_26643BFE4(v33, v38, v39, v32);
}

uint64_t sub_26644020C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_26644061C;
  }

  else
  {
    v2 = sub_266440320;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_266440320()
{
  v32 = v0;
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  (*(v0 + 232))(*(v0 + 160), *(v0 + 224), *(v0 + 144));
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06E8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 248);
  v9 = *(v0 + 192);
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);
  v30 = *(v0 + 144);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = *(v0 + 112);
  if (v7)
  {
    v29 = *(v0 + 192);
    v15 = swift_slowAlloc();
    v28 = v8;
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    sub_2664463E0();
    v26 = v10;
    v27 = v11;
    v17 = sub_2664E0D48();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v13, v14);
    v21 = sub_2662A320C(v17, v19, &v31);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_26629C000, v5, v6, "AppIntentInvoker#invokeOpenMusicItemIntent response: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);

    v28(v26, v30);
    v20(v27, v14);
    v22 = v29;
  }

  else
  {

    v23 = *(v12 + 8);
    v23(v13, v14);
    v8(v10, v30);
    v23(v11, v14);
    v22 = v9;
  }

  sub_2662A9238(v22, &qword_280073938, &qword_2664ED340);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_26644061C()
{
  v1 = *(v0 + 192);

  sub_2662A9238(v1, &qword_280073938, &qword_2664ED340);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_266440710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 291) = a6;
  *(v7 + 136) = a5;
  *(v7 + 144) = v6;
  *(v7 + 120) = a3;
  *(v7 + 128) = a4;
  *(v7 + 104) = a1;
  *(v7 + 112) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  *(v7 + 152) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  *(v7 + 160) = v8;
  *(v7 + 168) = *(v8 - 8);
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  v9 = sub_2664DFE38();
  *(v7 + 192) = v9;
  *(v7 + 200) = *(v9 - 8);
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266440894, 0, 0);
}

uint64_t sub_266440894()
{
  v45 = v0;
  if (*(v0 + 291))
  {
    LOBYTE(v1) = 8;
  }

  else
  {
    v2 = *(v0 + 136);
    v3 = v2 - 1;
    if (v2 - 1) < 5 && ((0x17u >> v3))
    {
      v1 = 0x301020105uLL >> (8 * v3);
    }

    else if (qword_2877E2E98 == v2 || unk_2877E2E90 == v2 || qword_2877E2E88 == v2)
    {
      LOBYTE(v1) = 4;
    }

    else
    {
      LOBYTE(v1) = 8;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = __swift_project_value_buffer(v7, qword_280F914F0);
  *(v0 + 224) = v9;
  swift_beginAccess();
  v10 = *(v8 + 16);
  *(v0 + 232) = v10;
  *(v0 + 240) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v9, v7);

  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 216);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  if (v13)
  {
    v40 = *(v0 + 128);
    v43 = *(v0 + 216);
    v17 = v1;
    v18 = *(v0 + 112);
    v1 = *(v0 + 120);
    v19 = *(v0 + 104);
    v42 = *(v0 + 192);
    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v20 = 136315650;
    *(v20 + 4) = sub_2662A320C(v19, v18, &v44);
    *(v20 + 12) = 2080;
    *(v0 + 88) = v1;
    LOBYTE(v1) = v17;
    *(v0 + 96) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v21 = sub_2664E0318();
    v23 = sub_2662A320C(v21, v22, &v44);

    *(v20 + 14) = v23;
    *(v20 + 22) = 2080;
    *(v0 + 290) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073960, &qword_2664ED380);
    v24 = sub_2664E0318();
    v26 = sub_2662A320C(v24, v25, &v44);

    *(v20 + 24) = v26;
    _os_log_impl(&dword_26629C000, v11, v12, "AppIntentInvoker#invokeSearchMusicAppIntent with criteria: %s, searchSource: %s, and resultScope: %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);

    (*(v15 + 8))(v43, v42);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v27 = *(v0 + 152);
  v29 = *(v0 + 120);
  v28 = *(v0 + 128);
  v31 = *(v0 + 104);
  v30 = *(v0 + 112);
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A80, &qword_2664E57A8);
  swift_allocObject();
  v32 = sub_2664DFA28();
  *(v0 + 248) = v32;
  *(v0 + 288) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A88, &unk_2664E57B0);
  swift_allocObject();
  v33 = sub_2664DFA28();
  *(v0 + 256) = v33;
  *(v0 + 56) = v31;
  *(v0 + 64) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072680, &qword_2664E4578);
  swift_allocObject();

  v34 = sub_2664DFA28();
  *(v0 + 264) = v34;
  *(v0 + 72) = v29;
  *(v0 + 80) = v28;

  sub_2664DFA38();
  *(v0 + 289) = v1;
  sub_2664DFA38();
  v35 = sub_2664DF998();
  (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
  v36 = swift_task_alloc();
  *(v0 + 272) = v36;
  *v36 = v0;
  v36[1] = sub_266440D78;
  v37 = *(v0 + 184);
  v38 = *(v0 + 152);

  return sub_26643CEDC(v37, v34, v32, v33, v38);
}

uint64_t sub_266440D78()
{
  v2 = *(*v1 + 152);
  *(*v1 + 280) = v0;

  sub_2662A9238(v2, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v3 = sub_266441168;
  }

  else
  {
    v3 = sub_266440EB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266440EB8()
{
  v30 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  (*(v0 + 232))(*(v0 + 208), *(v0 + 224), *(v0 + 192));
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06E8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = *(v0 + 168);
  v12 = *(v0 + 176);
  v14 = *(v0 + 160);
  if (v7)
  {
    v28 = *(v0 + 184);
    v15 = swift_slowAlloc();
    log = v5;
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    sub_2664463E0();
    v26 = v11;
    v27 = v9;
    v17 = sub_2664E0D48();
    v19 = v18;
    v20 = *(v13 + 8);
    v20(v12, v14);
    v21 = sub_2662A320C(v17, v19, &v29);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_26629C000, log, v6, "AppIntentInvoker#invokeSearchMusicAppIntent response: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);

    (*(v8 + 8))(v27, v26);
    v20(v28, v14);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
    (*(v8 + 8))(v9, v11);
    v22(v10, v14);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_266441168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26644122C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 96) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  *(v4 + 120) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v7 = sub_2664DFE38();
  *(v4 + 160) = v7;
  *(v4 + 168) = *(v7 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073928, &qword_2664ED330);
  *(v4 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073930, &qword_2664ED338);
  *(v4 + 200) = swift_task_alloc();
  v8 = sub_2664DF998();
  *(v4 + 208) = v8;
  *(v4 + 216) = *(v8 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 306) = *a1;

  return MEMORY[0x2822009F8](sub_266441480, 0, 0);
}

uint64_t sub_266441480()
{
  v41 = v0;
  if (*(v0 + 104))
  {
    type metadata accessor for GenericMusicItemEntity(0);
    sub_266446694(&qword_280073940, type metadata accessor for GenericMusicItemEntity, &protocol conformance descriptor for GenericMusicItemEntity);

    v1 = sub_2664DF818();
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 232) = v1;
  v2 = *(v0 + 306);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  *(v0 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073968, &qword_2664ED390);
  swift_allocObject();

  v5 = sub_2664DFA28();
  *(v0 + 240) = v5;
  *(v0 + 304) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073970, &qword_2664ED398);
  swift_allocObject();
  v6 = sub_2664DFA28();
  *(v0 + 248) = v6;
  *(v0 + 88) = v1;

  sub_2664DFA38();

  v7 = sub_2664DFCE8();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = sub_2664DFA48();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_2664DF988();
  sub_2664DF978();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 184);
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = __swift_project_value_buffer(v11, qword_280F914F0);
  *(v0 + 256) = v12;
  swift_beginAccess();
  v13 = *(v10 + 16);
  *(v0 + 264) = v13;
  *(v0 + 272) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v9, v12, v11);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v39 = v6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136315394;
    if (v1)
    {

      sub_2664DF858();
    }

    else
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    v22 = *(v0 + 306);
    v23 = *(v0 + 168);
    v37 = *(v0 + 160);
    v38 = *(v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073978, &qword_2664ED3A8);
    v24 = sub_2664E0318();
    v26 = sub_2662A320C(v24, v25, &v40);

    *(v16 + 4) = v26;
    *(v16 + 12) = 2080;
    *(v0 + 305) = v22;
    v27 = sub_2664E0318();
    v29 = sub_2662A320C(v27, v28, &v40);

    *(v16 + 14) = v29;
    _os_log_impl(&dword_26629C000, v14, v15, "AppIntentInvoker#invokeShowMusicNoticeAppIntent ShowMusicNoticeAppIntent constructed with itemEntity: %s and noticeEntity: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v17, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);

    v21 = *(v23 + 8);
    v21(v38, v37);
    v6 = v39;
  }

  else
  {
    v18 = *(v0 + 184);
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);

    v21 = *(v20 + 8);
    v21(v18, v19);
  }

  *(v0 + 280) = v21;
  v30 = *(v0 + 216);
  v31 = *(v0 + 208);
  v32 = *(v0 + 120);
  (*(v30 + 16))(v32, *(v0 + 224), v31);
  (*(v30 + 56))(v32, 0, 1, v31);
  v33 = swift_task_alloc();
  *(v0 + 288) = v33;
  *v33 = v0;
  v33[1] = sub_26644199C;
  v34 = *(v0 + 152);
  v35 = *(v0 + 120);

  return sub_26643C888(v34, v6, v5, v35);
}

uint64_t sub_26644199C()
{
  v2 = *(*v1 + 120);
  *(*v1 + 296) = v0;

  sub_2662A9238(v2, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v3 = sub_266441E00;
  }

  else
  {
    v3 = sub_266441ADC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266441ADC()
{
  v32 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  (*(v0 + 264))(*(v0 + 176), *(v0 + 256), *(v0 + 160));
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06E8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 224);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v28 = *(v0 + 176);
  v27 = *(v0 + 160);
  v29 = *(v0 + 152);
  v30 = *(v0 + 280);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v13 = *(v0 + 128);
  if (v7)
  {
    v14 = swift_slowAlloc();
    v26 = v8;
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    sub_2664463E0();
    log = v5;
    v25 = v10;
    v16 = sub_2664E0D48();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v11, v13);
    v20 = sub_2662A320C(v16, v18, &v31);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_26629C000, log, v6, "AppIntentInvoker#invokeShowMusicNoticeAppIntent response: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    v30(v28, v27);
    v19(v29, v13);
    (*(v9 + 8))(v26, v25);
  }

  else
  {

    v21 = *(v12 + 8);
    v21(v11, v13);
    v30(v28, v27);
    v21(v29, v13);
    (*(v9 + 8))(v8, v10);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_266441E00()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_266441F0C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2664DFE38();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26644207C, 0, 0);
}

uint64_t sub_26644207C()
{
  v1 = v0[12];
  type metadata accessor for PodcastShowEntity(0);
  sub_266446694(&qword_280073980, type metadata accessor for PodcastShowEntity, &protocol conformance descriptor for PodcastShowEntity);

  v2 = sub_2664DF818();
  v0[17] = v2;
  v0[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073748, &qword_2664EC460);
  swift_allocObject();

  v3 = sub_2664DFA28();
  v0[18] = v3;
  v4 = sub_2664DF998();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_266442228;
  v6 = v0[16];
  v7 = v0[12];

  return sub_26643D788(v6, v3, v7);
}

uint64_t sub_266442228()
{
  v2 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  sub_2662A9238(v2, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v3 = sub_266442664;
  }

  else
  {
    v3 = sub_266442368;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266442368()
{
  v35 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  (*(v4 + 16))(v1, v2, v3);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[11];
  v33 = v0[9];
  if (v11)
  {
    v18 = swift_slowAlloc();
    v32 = v13;
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136315138;
    sub_2664463E0();
    v20 = sub_2664E0D48();
    v21 = v14;
    v30 = v14;
    v31 = v17;
    v22 = v20;
    v24 = v23;
    v25 = *(v15 + 8);
    v25(v12, v21);
    v26 = sub_2662A320C(v22, v24, &v34);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_26629C000, v9, v10, "AppIntentInvoker#invokeOpenPodcastShowAppIntent response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v16 + 8))(v31, v33);
    v25(v32, v30);
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v12, v14);
    (*(v16 + 8))(v17, v33);
    v27(v13, v14);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_266442664()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266442708(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2664DFE38();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266442878, 0, 0);
}

uint64_t sub_266442878()
{
  v1 = v0[12];
  type metadata accessor for PodcastEpisodeEntity(0);
  sub_266446694(&qword_280073988, type metadata accessor for PodcastEpisodeEntity, &protocol conformance descriptor for PodcastEpisodeEntity);

  v2 = sub_2664DF818();
  v0[17] = v2;
  v0[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F10, &qword_2664E8ED0);
  swift_allocObject();

  v3 = sub_2664DFA28();
  v0[18] = v3;
  v4 = sub_2664DF998();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_266442A24;
  v6 = v0[16];
  v7 = v0[12];

  return sub_26643DDD0(v6, v3, v7);
}

uint64_t sub_266442A24()
{
  v2 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  sub_2662A9238(v2, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v3 = sub_266447598;
  }

  else
  {
    v3 = sub_266442B64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266442B64()
{
  v35 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  (*(v4 + 16))(v1, v2, v3);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[11];
  v33 = v0[9];
  if (v11)
  {
    v18 = swift_slowAlloc();
    v32 = v13;
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136315138;
    sub_2664463E0();
    v20 = sub_2664E0D48();
    v21 = v14;
    v30 = v14;
    v31 = v17;
    v22 = v20;
    v24 = v23;
    v25 = *(v15 + 8);
    v25(v12, v21);
    v26 = sub_2662A320C(v22, v24, &v34);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_26629C000, v9, v10, "AppIntentInvoker#invokeOpenPodcastEpisodeAppIntent response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v16 + 8))(v31, v33);
    v25(v32, v30);
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v12, v14);
    (*(v16 + 8))(v17, v33);
    v27(v13, v14);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_266442E60(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2664DFE38();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266442FD0, 0, 0);
}

uint64_t sub_266442FD0()
{
  v1 = v0[12];
  type metadata accessor for PodcastChannelEntity(0);
  sub_266446694(&qword_280073990, type metadata accessor for PodcastChannelEntity, &protocol conformance descriptor for PodcastChannelEntity);

  v2 = sub_2664DF818();
  v0[17] = v2;
  v0[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CC8, &qword_2664E6860);
  swift_allocObject();

  v3 = sub_2664DFA28();
  v0[18] = v3;
  v4 = sub_2664DF998();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_26644317C;
  v6 = v0[16];
  v7 = v0[12];

  return sub_26643E154(v6, v3, v7);
}

uint64_t sub_26644317C()
{
  v2 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  sub_2662A9238(v2, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v3 = sub_266447598;
  }

  else
  {
    v3 = sub_2664432BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2664432BC()
{
  v35 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  (*(v4 + 16))(v1, v2, v3);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[11];
  v33 = v0[9];
  if (v11)
  {
    v18 = swift_slowAlloc();
    v32 = v13;
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136315138;
    sub_2664463E0();
    v20 = sub_2664E0D48();
    v21 = v14;
    v30 = v14;
    v31 = v17;
    v22 = v20;
    v24 = v23;
    v25 = *(v15 + 8);
    v25(v12, v21);
    v26 = sub_2662A320C(v22, v24, &v34);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_26629C000, v9, v10, "AppIntentInvoker#invokeOpenPodcastChannelAppIntent response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v16 + 8))(v31, v33);
    v25(v32, v30);
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v12, v14);
    (*(v16 + 8))(v17, v33);
    v27(v13, v14);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_2664435B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073928, &qword_2664ED330);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073930, &qword_2664ED338);
  v4[14] = swift_task_alloc();
  v5 = sub_2664DF998();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073998, &qword_2664ED400);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800739A0, &qword_2664ED408);
  v4[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800739A8, &qword_2664ED410);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v8 = sub_2664DF948();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = sub_2664DFE38();
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v4[34] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v4[35] = v10;
  v4[36] = *(v10 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26644397C, 0, 0);
}

uint64_t sub_26644397C()
{
  v1 = v0[34];
  v2 = v0[15];
  v3 = v0[16];
  type metadata accessor for PodcastShowEntity(0);
  sub_266446694(&qword_280073980, type metadata accessor for PodcastShowEntity, &protocol conformance descriptor for PodcastShowEntity);

  v4 = sub_2664DF818();
  v0[39] = v4;
  v0[8] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073748, &qword_2664EC460);
  swift_allocObject();

  v5 = sub_2664DFA28();
  v0[40] = v5;
  (*(v3 + 56))(v1, 1, 1, v2);
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_266443B14;
  v7 = v0[38];
  v8 = v0[34];

  return sub_26643E4D8(v7, v5, v8);
}

uint64_t sub_266443B14()
{
  v2 = *(*v1 + 272);
  *(*v1 + 336) = v0;

  sub_2662A9238(v2, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v3 = sub_266444A14;
  }

  else
  {
    v3 = sub_266443C54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266443C54()
{
  v80 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[29];
  v7 = v0[30];
  v8 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v77 = v8;
  v75 = *(v7 + 16);
  v75(v5, v8, v6);
  (*(v3 + 16))(v2, v1, v4);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[35];
  v15 = v0[33];
  v16 = v0[29];
  v17 = v0[30];
  if (v11)
  {
    v18 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v79 = v70;
    *v18 = 136315138;
    sub_2664463E0();
    v71 = v16;
    v73 = v15;
    v19 = sub_2664E0D48();
    v21 = v20;
    v69 = v10;
    v22 = *(v13 + 8);
    v22(v12, v14);
    v23 = sub_2662A320C(v19, v21, &v79);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_26629C000, v9, v69, "AppIntentInvoker#followShowAppIntent response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x266784AD0](v70, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    v24 = *(v17 + 8);
    v24(v73, v71);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
    v24 = *(v17 + 8);
    v24(v15, v16);
  }

  v0[43] = v22;
  v25 = v0[25];
  v26 = v0[26];
  v28 = v0[23];
  v27 = v0[24];
  v30 = v0[21];
  v29 = v0[22];
  sub_2664DF958();
  sub_2664DFA18();
  (*(v28 + 8))(v27, v29);
  if ((*(v26 + 48))(v30, 1, v25) == 1)
  {
    v31 = v0[21];

    sub_2662A9238(v31, &qword_2800739A0, &qword_2664ED408);
    (*(v0[36] + 32))(v0[9], v0[38], v0[35]);
    (*(v0[36] + 56))(v0[9], 0, 1, v0[35]);

    v32 = v0[1];

    return v32();
  }

  else
  {
    v34 = v0[32];
    v36 = v0[28];
    v35 = v0[29];
    v38 = v0[26];
    v37 = v0[27];
    v39 = v0[25];
    (*(v38 + 32))(v36, v0[21], v39);
    v75(v34, v77, v35);
    (*(v38 + 16))(v37, v36, v39);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06E8();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[32];
    v44 = v0[29];
    v46 = v0[26];
    v45 = v0[27];
    v47 = v0[25];
    if (v42)
    {
      v78 = v0[29];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v79 = v49;
      *v48 = 136315138;
      sub_266446694(&qword_2800739B0, MEMORY[0x277CEB010], MEMORY[0x277CEB028]);
      v74 = v43;
      v76 = v24;
      v50 = sub_2664E0D48();
      v52 = v51;
      v72 = v41;
      v53 = *(v46 + 8);
      v53(v45, v47);
      v54 = sub_2662A320C(v50, v52, &v79);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_26629C000, v40, v72, "AppIntentInvoker#followShowAppIntent invoking showOutputAction intent: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);

      v76(v74, v78);
    }

    else
    {

      v53 = *(v46 + 8);
      v53(v45, v47);
      v24(v43, v44);
    }

    v0[44] = v53;
    v56 = v0[13];
    v55 = v0[14];
    v57 = sub_2664DFCE8();
    (*(*(v57 - 8) + 56))(v55, 1, 1, v57);
    v58 = sub_2664DFA48();
    (*(*(v58 - 8) + 56))(v56, 1, 1, v58);
    sub_2664DF988();
    sub_2664DF978();
    sub_2664DF838();
    swift_allocObject();
    v59 = sub_2664DF828();
    v0[45] = v59;
    v60 = sub_266446444();
    v62 = v61;
    v0[46] = v60;
    ObjectType = swift_getObjectType();
    v64 = swift_task_alloc();
    v0[47] = v64;
    *v64 = v0;
    v64[1] = sub_2664443D4;
    v65 = v0[28];
    v66 = v0[20];
    v67 = v0[17];
    v68 = MEMORY[0x277CEAFA0];

    return MEMORY[0x28213DA80](v66, v65, v67, v59, v68, ObjectType, v62);
  }
}

uint64_t sub_2664443D4()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_2664446C0;
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    v3 = sub_266444500;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266444500()
{
  v8 = v0[44];
  v1 = v0[28];
  v2 = v0[25];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  swift_unknownObjectRelease();

  (*(v4 + 8))(v3, v5);

  v8(v1, v2);
  (*(v0[36] + 32))(v0[9], v0[38], v0[35]);
  (*(v0[36] + 56))(v0[9], 0, 1, v0[35]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2664446C0()
{
  v1 = v0[44];
  v22 = v0[38];
  v23 = v0[43];
  v21 = v0[35];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];
  swift_unknownObjectRelease();

  (*(v4 + 8))(v5, v6);
  v1(v2, v3);
  v23(v22, v21);
  v7 = v0[48];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[29];
  v11 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v8, v11, v10);
  v12 = v7;
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_26629C000, v13, v14, "AppIntentInvoker#followShowAppIntent has returned an error: %@", v15, 0xCu);
    sub_2662A9238(v16, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  else
  {
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v0[36] + 56))(v0[9], 1, 1, v0[35]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_266444A14()
{
  v1 = v0[42];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26629C000, v7, v8, "AppIntentInvoker#followShowAppIntent has returned an error: %@", v9, 0xCu);
    sub_2662A9238(v10, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v10, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v0[36] + 56))(v0[9], 1, 1, v0[35]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_266444CEC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v3[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_2664DFE38();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266444E68, 0, 0);
}

uint64_t sub_266444E68()
{
  v26 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = __swift_project_value_buffer(v2, qword_280F914F0);
  v0[19] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[20] = v5;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];
  if (v8)
  {
    v13 = v0[7];
    v12 = v0[8];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2662A320C(v13, v12, &v25);
    _os_log_impl(&dword_26629C000, v6, v7, "AppIntentInvoker#invokeSearchPodcastsAppIntent with criteria: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  v16 = *(v11 + 8);
  v16(v9, v10);
  v0[22] = v16;
  v17 = v0[10];
  v18 = v0[8];
  v0[5] = v0[7];
  v0[6] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072680, &qword_2664E4578);
  swift_allocObject();

  v19 = sub_2664DFA28();
  v0[23] = v19;
  v20 = sub_2664DF998();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[24] = v21;
  *v21 = v0;
  v21[1] = sub_266445130;
  v22 = v0[14];
  v23 = v0[10];

  return sub_26643ED70(v22, v19, v23);
}

uint64_t sub_266445130()
{
  v2 = *(*v1 + 80);
  *(*v1 + 200) = v0;

  sub_2662A9238(v2, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v3 = sub_266445500;
  }

  else
  {
    v3 = sub_266445270;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266445270()
{
  v30 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  (*(v0 + 160))(*(v0 + 136), *(v0 + 152), *(v0 + 120));
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06E8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 176);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v28 = *(v0 + 120);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  if (v7)
  {
    v27 = *(v0 + 136);
    v14 = swift_slowAlloc();
    v24 = v6;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    sub_2664463E0();
    v25 = v8;
    v26 = v10;
    v16 = sub_2664E0D48();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v11, v13);
    v20 = sub_2662A320C(v16, v18, &v29);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_26629C000, v5, v24, "AppIntentInvoker#invokeSearchPodcastsAppIntent response: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    v25(v27, v28);
    v19(v26, v13);
  }

  else
  {

    v21 = *(v12 + 8);
    v21(v11, v13);
    v8(v9, v28);
    v21(v10, v13);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_266445500()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2664455A8()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  v1[6] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = sub_2664DFE38();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266445720, 0, 0);
}

uint64_t sub_266445720()
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = __swift_project_value_buffer(v2, qword_280F914F0);
  v0[15] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[16] = v5;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "AppIntentInvoker#invokeOpenQueueAppIntent", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[6];

  v13 = *(v11 + 8);
  v0[18] = v13;
  v13(v9, v10);
  v14 = sub_2664DF998();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_266445924;
  v16 = v0[10];
  v17 = v0[6];

  return sub_26643F0F4(v16, v17);
}

uint64_t sub_266445924()
{
  v2 = *(*v1 + 48);
  *(*v1 + 160) = v0;

  sub_2662A9238(v2, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v3 = sub_266445CE0;
  }

  else
  {
    v3 = sub_266445A64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266445A64()
{
  v30 = v0;
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  (*(v0 + 128))(*(v0 + 104), *(v0 + 120), *(v0 + 88));
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06E8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 144);
  v9 = *(v0 + 104);
  v10 = *(v0 + 80);
  v28 = *(v0 + 88);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v13 = *(v0 + 56);
  if (v7)
  {
    v27 = *(v0 + 80);
    v14 = swift_slowAlloc();
    v26 = v9;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    sub_2664463E0();
    v24 = v6;
    v16 = sub_2664E0D48();
    v25 = v8;
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v11, v13);
    v20 = sub_2662A320C(v16, v18, &v29);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_26629C000, v5, v24, "AppIntentInvoker#invokeOpenQueueAppIntent response: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    v25(v26, v28);
    v19(v27, v13);
  }

  else
  {

    v21 = *(v12 + 8);
    v21(v11, v13);
    v8(v9, v28);
    v21(v10, v13);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_266445CE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266445D8C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2662C1890;

  return sub_26643FB00(a1, a2, a3);
}

uint64_t sub_266445E3C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2662C1890;

  return sub_26644122C(a1, a2, a3);
}

uint64_t sub_266445EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2662C1890;

  return sub_266440710(a1, a2, a3, a4, a5, a6 & 1);
}

uint64_t sub_266445FC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662C1890;

  return sub_266441F0C(a1, a2);
}

uint64_t sub_26644606C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662C1890;

  return sub_266442708(a1, a2);
}

uint64_t sub_266446114(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662C1890;

  return sub_266442E60(a1, a2);
}

uint64_t sub_2664461BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2662BD660;

  return sub_2664435B8(a1, a2, a3);
}

uint64_t sub_266446270(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662C1890;

  return sub_266444CEC(a1, a2);
}

uint64_t sub_266446318()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2662BD660;

  return sub_2664455A8();
}

uint64_t sub_2664463A8(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_2664463E0()
{
  result = qword_280073948;
  if (!qword_280073948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280073920, &qword_2664ED328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073948);
  }

  return result;
}

uint64_t sub_266446444()
{
  v0 = sub_2664DF9C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800739C8, &unk_2664ED530);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2664DF9F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultEnvironment];
  v13[3] = sub_2664472F8();
  v13[4] = MEMORY[0x277CEB188];
  v13[0] = v9;
  sub_2664DF9B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CEB068], v0);
  sub_2664DF9E8();
  v10 = sub_2664DF9D8();
  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v10;
}

uint64_t sub_266446694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenMusicItemIntent(musicItemIdentifier:noticeEntity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2662C1890;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeSearchMusicAppIntent(criteria:searchSource:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v16 = (*(*v6 + 120) + **(*v6 + 120));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_2662C1890;

  return v16(a1, a2, a3, a4, a5, a6 & 1);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeShowMusicNoticeAppIntent(noticeEntity:musicItemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 128) + **(*v3 + 128));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2662C1890;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenPodcastShowAppIntent(showIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2662C1890;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenPodcastEpisodeAppIntent(episodeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2662C1890;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenPodcastChannelAppIntent(channelIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2662C1890;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AppIntentInvoker.followShowAppIntent(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2662BD660;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeSearchPodcastsAppIntent(criteria:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2662C1890;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenQueueAppIntent()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2662BD660;

  return v4();
}

uint64_t sub_2664471E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266447250()
{
  result = qword_2800739B8;
  if (!qword_2800739B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739B8);
  }

  return result;
}