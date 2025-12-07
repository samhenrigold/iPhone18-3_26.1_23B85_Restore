unint64_t sub_216B1BCF8()
{
  result = qword_27CAC2E68;
  if (!qword_27CAC2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2E68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicNotice(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void *sub_216B1BE18()
{
  result = sub_216B1BE38();
  qword_27CB229B0 = result;
  return result;
}

void *sub_216B1BE38()
{
  v0 = sub_217005EF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v43 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  MEMORY[0x28223BE20](v9);
  v47 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = [objc_opt_self() sharedStoreArtworkDataSource];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() defaultManager];
    v20 = [v19 URLsForDirectory:13 inDomains:1];

    v21 = sub_21700E824();
    sub_216CE0C14(v21);

    sub_2167DE934(v16, v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v0) == 1)
    {
      sub_216846CF0(v13);
      if (qword_27CAB5D98 != -1)
      {
        swift_once();
      }

      v22 = sub_217007CA4();
      __swift_project_value_buffer(v22, qword_27CAC2E70);
      v23 = sub_217007C84();
      v24 = sub_21700ED84();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_216679000, v23, v24, "Error finding caches directory.  Artwork will not be cached on disk", v25, 2u);
        MEMORY[0x21CEA1440](v25, -1, -1);
      }
    }

    else
    {
      v26 = v47;
      (*(v1 + 32))(v47, v13, v0);
      v27 = [objc_opt_self() mainBundle];
      sub_2166E2BA8(v27);
      if (v28)
      {
        sub_217005E14();
        sub_217005E14();
        v45 = v8;
        v46 = v18;
        v44 = v16;
        v29 = *(v1 + 8);
        v29(v3, v0);
        sub_217005E14();

        sub_217005E14();
        v29(v3, v0);
        v16 = v44;
        v8 = v45;
        v18 = v46;
        v30 = v26;
      }

      else
      {
        if (qword_27CAB5D98 != -1)
        {
          swift_once();
        }

        v31 = sub_217007CA4();
        __swift_project_value_buffer(v31, qword_27CAC2E70);
        v32 = sub_217007C84();
        v33 = sub_21700ED84();
        v34 = os_log_type_enabled(v32, v33);
        v30 = v47;
        if (v34)
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_216679000, v32, v33, "Error getting bundle identifier, falling back to caches root directory", v35, 2u);
          MEMORY[0x21CEA1440](v35, -1, -1);
        }

        sub_217005E14();
        sub_217005E14();
      }

      v36 = v18;
      v37 = sub_217005EA4();
      sub_216B1C4EC(0, v37, v38, v36);
      v39 = v48;
      v40 = sub_217005E04();
      [v36 setVideoArtworkCacheURL_];

      v41 = *(v1 + 8);
      v41(v39, v0);
      v41(v8, v0);
      v41(v30, v0);
    }

    sub_216846CF0(v16);
    return v18;
  }

  else
  {
    result = sub_21700F584();
    __break(1u);
  }

  return result;
}

uint64_t sub_216B1C46C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC2E70);
  __swift_project_value_buffer(v0, qword_27CAC2E70);
  return sub_217007C94();
}

void sub_216B1C4EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_21700E4D4();

  [a4 updateURLSessionWithCachePolicy:a1 cachePath:v6];
}

uint64_t sub_216B1C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  sub_21700EA34();
  v4[5] = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B1C614, v6, v5);
}

uint64_t sub_216B1C614()
{
  v1 = *(v0 + 16);

  type metadata accessor for AddRecentSearchTermAction(0);
  sub_2170069B4();
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_216B1C6E4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2166DFAC0;

  return sub_216B1C578(a1, a2, v7, v6);
}

unint64_t sub_216B1C794(uint64_t a1)
{
  result = sub_2167B3D3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B1C7C0()
{
  result = qword_280E35CE0[0];
  if (!qword_280E35CE0[0])
  {
    type metadata accessor for AddRecentSearchTermAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35CE0);
  }

  return result;
}

uint64_t sub_216B1C820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_21700EE74();
  OUTLINED_FUNCTION_1();
  v28 = v5;
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v27 = v7 - v6;
  sub_21700EE44();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v9 = sub_21700B5E4();
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EC0, &unk_217046100);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController__onboardedContacts;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2E90, &qword_217045EF0);
  sub_217007DA4();
  v18 = *(v13 + 32);
  v18(v2 + v17, v16, v11);
  v19 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController__nonOnboardedContacts;
  v32 = 0;
  sub_217007DA4();
  v18(v2 + v19, v16, v11);
  *(v2 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends) = 0;
  *(v2 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_isUpdating) = 0;
  v26 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_aggregationQueue;
  sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  sub_21700B5C4();
  v32 = MEMORY[0x277D84F90];
  sub_216B20784(&qword_280E29CE0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA810, &unk_217027550);
  sub_216913234(&qword_280E29E10, &qword_27CABA810, &unk_217027550);
  sub_21700F214();
  (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
  *(v2 + v26) = sub_21700EEA4();
  *(v2 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortOnboardedFriends) = 0;
  *(v2 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortNonOnboardedFriends) = 0;
  v20 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
  sub_216B207CC();
  *(v3 + v20) = sub_21700E384();
  *(v3 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_needsFriendsAggregation) = 0;
  *(v3 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController____lazy_storage___contactStore) = 0;
  v21 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_2169FB0B8(0xD000000000000042, 0x8000000217088FF0, v21);
  [v21 setQualityOfService_];
  v22 = v30;
  [v21 setMaxConcurrentOperationCount_];
  *(v3 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_operationQueue) = v21;
  *(v3 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_sources) = v22;
  *(v3 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_objectGraph) = v31;
  v23 = v21;

  sub_216B1CC98(0);

  return v3;
}

uint64_t sub_216B1CC98(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_sources);
    sub_21700DF14();
  }

  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
  v50 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_objectGraph;
  v45 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_operationQueue;
  v9 = (v5 + 63) >> 6;
  sub_21700DF14();
  v10 = 0;
  v47 = v3 + 56;
  v48 = v3;
  v49 = v9;
  v46 = v8;
  if (v7)
  {
LABEL_11:
    while (1)
    {
      v12 = *(*(v3 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
      swift_beginAccess();
      v13 = *(v2 + v8);
      if (!*(v13 + 16))
      {
        break;
      }

      v14 = v12;
      v15 = sub_216E68334();
      if ((v16 & 1) == 0)
      {
        swift_endAccess();
        goto LABEL_17;
      }

      v17 = *(v13 + 56) + 24 * v15;
      v52 = *(v17 + 8);
      v53 = *v17;
      v18 = *(v17 + 16);
      swift_endAccess();
      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }

      v51 = 1;
      sub_216B24330(v53, v52, 1);
      sub_21700DF14();
LABEL_18:
      v20 = *(v2 + v50);
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v12;
      v22 = objc_allocWithZone(type metadata accessor for SocialOnboardingContactsMatchingRequestOperation());
      v23 = v12;

      v24 = sub_216999134(v23, v20);
      v25 = swift_allocObject();
      v25[2] = sub_216B24304;
      v25[3] = v21;
      v25[4] = v23;
      v26 = v23;

      sub_2169993F8(sub_216B2430C, v25);

      swift_beginAccess();
      v27 = v26;
      v14 = v24;
      swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v2 + v8);
      *(v2 + v8) = 0x8000000000000000;
      v29 = sub_216E68334();
      if (__OFADD__(v28[2], (v30 & 1) == 0))
      {
        goto LABEL_31;
      }

      v31 = v29;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2ED0, &qword_217046110);
      if (sub_21700F554())
      {
        v33 = sub_216E68334();
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_33;
        }

        v31 = v33;
      }

      v9 = v49;
      if (v32)
      {
        v35 = v28[7] + 24 * v31;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        v39 = v53;
        *v35 = v53;
        *(v35 + 8) = v14;
        *(v35 + 16) = 0;
        sub_21693B50C(v36, v37, v38);
      }

      else
      {
        v28[(v31 >> 6) + 8] |= 1 << v31;
        *(v28[6] + 8 * v31) = v27;
        v40 = v28[7] + 24 * v31;
        v39 = v53;
        *v40 = v53;
        *(v40 + 8) = v14;
        *(v40 + 16) = 0;
        v41 = v28[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_32;
        }

        v28[2] = v43;
      }

      v8 = v46;
      *(v2 + v46) = v28;
      swift_endAccess();
      [*(v2 + v45) addOperation_];

      sub_216B24318(v39, v52, v51);
      v4 = v47;
      v3 = v48;
LABEL_27:
      v7 &= v7 - 1;

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    swift_endAccess();
    v19 = v12;
LABEL_17:
    v52 = 0;
    v53 = 0;
    v51 = -1;
    goto LABEL_18;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return sub_216B1E3FC();
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216B1D0C8()
{
  v1 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_operationQueue;
  [*(v0 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_operationQueue) cancelAllOperations];
  v2 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController__onboardedContacts;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EC0, &unk_217046100);
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 8);
  v5(v0 + v2, v3);
  v5(v0 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController__nonOnboardedContacts, v3);

  return v0;
}

uint64_t sub_216B1D1DC()
{
  sub_216B1D0C8();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216B1D25C(uint64_t a1)
{
  sub_216B1D334(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216B1D334(uint64_t a1)
{
  if (!qword_280E48398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CAC2E90, &qword_217045EF0);
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E48398);
    }
  }
}

uint64_t sub_216B1D42C(uint64_t a1)
{
  sub_216688154();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    Friends = type metadata accessor for SocialFindFriendsController.Friend.Kind(319);
    if (v5 > 0x3F)
    {
      return Friends;
    }

    else
    {
      sub_2166880FC(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_216B1D520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EA0, &unk_217045FD8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216B1D574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2EA0, &unk_217045FD8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_216B1D5D8(uint64_t a1)
{
  sub_216B1D690();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for SocialContactsCoordinator.Contact(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_216B1D690()
{
  if (!qword_280E34EE0)
  {
    v0 = type metadata accessor for SocialContactsCoordinator.Contact(0);
    if (!v1)
    {
      atomic_store(v0, &qword_280E34EE0);
    }
  }
}

uint64_t sub_216B1D714(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v3;
}

uint64_t sub_216B1D794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

void sub_216B1D800(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for SocialFindFriendsController.Friend(0) - 8;
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends;
  v7 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends);
  if (a1)
  {
    if (!v7)
    {
      return;
    }

    sub_21700DF14();
    sub_2169FA550();
    v9 = v8;

    if (v9)
    {
      return;
    }

    v7 = *(v1 + v6);
  }

  if (v7)
  {
    v10 = *(v7 + 32);
    v11 = v10 & 0x3F;
    v12 = ((1 << v10) + 63) >> 6;
    v13 = 8 * v12;
    v14 = swift_bridgeObjectRetain_n();
    if (v11 > 0xD)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v39 = &v39;
      MEMORY[0x28223BE20](v14);
      v40 = v12;
      v41 = (&v39 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0));
      sub_21689DB5C(0, v12, v41);
      v42 = 0;
      v15 = 0;
      v16 = 1 << *(v7 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(v7 + 56);
      v19 = (v16 + 63) >> 6;
      while (v18)
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_17:
        v12 = v20 | (v15 << 6);
        sub_216B24400();
        v13 = v5[32];
        sub_21699C20C(v5, type metadata accessor for SocialFindFriendsController.Friend);
        if (v13 == 1)
        {
          *(v41 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
          if (__OFADD__(v42++, 1))
          {
            __break(1u);
LABEL_21:
            v27 = sub_216B23D98(v41, v40, v42, v7);
            goto LABEL_22;
          }
        }
      }

      v21 = v15;
      while (1)
      {
        v15 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v15 >= v19)
        {
          goto LABEL_21;
        }

        v22 = *(v7 + 56 + 8 * v15);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v18 = (v22 - 1) & v22;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_32:
      sub_21700DF14();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v38 = swift_slowAlloc();

    v27 = sub_216B24274(v38, v12, v7, sub_216B1DC7C);
    swift_bridgeObjectRelease_n();
    MEMORY[0x21CEA1440](v38, -1, -1);
LABEL_22:
    v28 = sub_216B1DC84(v27, *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortOnboardedFriends), v24, v25, v26);
    if (sub_216B1D6D8() && (sub_21700DF14(), sub_216E21288(), v30 = v29, , , (v30 & 1) != 0))
    {
    }

    else
    {
      sub_216B1D794(v28, &unk_217046160, &unk_217046188);
    }

    v31 = sub_216B1DD88(v27, v7);

    v35 = sub_216B1DC84(v31, *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortNonOnboardedFriends), v32, v33, v34);

    if (sub_216B1D700() && (sub_21700DF14(), sub_216E21288(), v37 = v36, , , (v37 & 1) != 0))
    {
    }

    else
    {
      sub_216B1D794(v35, &unk_217046118, &unk_217046140);
    }
  }
}

void *sub_216B1DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a2)
  {
    v10 = sub_216A73AFC(a1, a2, a3, a4, a5);
    sub_216B20898(&v10, sub_216B21B64, sub_216B20DA0);
    v6 = v10;
  }

  else
  {
    v7 = sub_21700DF14();
    v6 = sub_216AB41C8(v7);
  }

  v8 = sub_216B1F7E4(v6);

  if ((v5 & 1) == 0)
  {
    v10 = v8;
    sub_21700DF14();
    sub_216B20898(&v10, sub_216B20FF0, sub_216B20A90);

    return v10;
  }

  return v8;
}

uint64_t sub_216B1DDDC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends);
  *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends) = a1;
  sub_216B1D800(v2);
}

void sub_216B1DE24(uint64_t a1, char a2, char a3, void *a4, uint64_t a5, void *a6)
{
  v11 = sub_21700B5A4();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21700B5E4();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a6;
  *(v18 + 32) = a1;
  *(v18 + 40) = a4;
  *(v18 + 48) = a2;
  *(v18 + 49) = a3;
  v19 = objc_opt_self();
  v20 = a6;
  sub_21700DF14();
  v21 = a4;
  v22 = v20;
  sub_21700DF14();
  v41 = a4;
  v23 = a4;

  if (![v19 isMainThread])
  {
    sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
    v35 = sub_21700EE84();
    aBlock[4] = sub_216B24458;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2169F0990;
    aBlock[3] = &block_descriptor_25;
    v30 = _Block_copy(aBlock);
    v36 = v22;
    v31 = v30;

    sub_21700B5C4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_216B20784(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
    sub_216913234(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0);
    v32 = v40;
    sub_21700F214();
    v33 = v35;
    MEMORY[0x21CE9FCB0](0, v16, v13, v31);
    _Block_release(v31);

    (*(v39 + 8))(v13, v32);
    (*(v37 + 8))(v16, v38);

LABEL_6:

    v28 = v41;
    goto LABEL_7;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_6;
  }

  v25 = Strong;
  v26 = v22;
  v27 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
  swift_beginAccess();
  sub_21700DF14();
  v28 = v41;
  v29 = v41;
  swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v25 + v27);
  sub_21693A300(a1, v28, 1, v26);
  *(v25 + v27) = v42;
  swift_endAccess();
  *(v25 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortOnboardedFriends) = a2 & 1;
  *(v25 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortNonOnboardedFriends) = a3 & 1;
  sub_216B1E3E4(1);

LABEL_7:
}

uint64_t sub_216B1E2D0(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, char a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
    swift_beginAccess();
    sub_21700DF14();
    v14 = a4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v13);
    sub_21693A300(a3, a4, 1, a2);
    *(v12 + v13) = v15;
    swift_endAccess();
    *(v12 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortOnboardedFriends) = a5 & 1;
    *(v12 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_shouldSortNonOnboardedFriends) = a6 & 1;
    sub_216B1E3E4(1);
  }

  return result;
}

void sub_216B1E3E4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_needsFriendsAggregation);
  *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_needsFriendsAggregation) = a1;
  sub_216B1EE88(v2);
}

uint64_t sub_216B1E3FC()
{
  v1 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
  result = swift_beginAccess();
  v3 = 0;
  v4 = *(v0 + v1);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if ((*(*(v4 + 56) + 24 * (v10 | (v9 << 6)) + 16) & 1) == 0)
    {
      v11 = 1;
LABEL_13:
      *(v0 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_isUpdating) = v11;
      return result;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_216B1E4EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  v2 = sub_21700F944();
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  return v2 == sub_21700F944();
}

uint64_t sub_216B1E55C()
{
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216B1E5A0(uint64_t a1)
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

void sub_216B1E62C(uint64_t a1, int a2, int a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v76 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B20, &qword_21703F980);
  MEMORY[0x28223BE20](v13 - 8);
  v78 = &v65 - v14;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v15 = *(Friends - 8);
  MEMORY[0x28223BE20](Friends);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v72 = &v65 - v19;
  v20 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  v79 = *(v20 - 8);
  v80 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.n128_f64[0] = MEMORY[0x28223BE20](v23);
  v26 = &v65 - v25;
  if (a1 && !a4)
  {
    v65 = v15;
    v66 = a2;
    v67 = a3;
    v68 = a6;
    v69 = a5;
    v27 = a1 + 56;
    v28 = 1 << *(a1 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(a1 + 56);
    v31 = (v28 + 63) >> 6;
    sub_21700DF14();
    v32 = 0;
    v70 = MEMORY[0x277D84F90];
    v71 = a1;
    v77 = v26;
    v73 = v31;
    v74 = a1 + 56;
LABEL_8:
    v33 = v32;
    v34 = v78;
    if (!v30)
    {
      goto LABEL_10;
    }

    do
    {
      v32 = v33;
LABEL_13:
      sub_216B24400();
      sub_216B24400();
      v35 = Friends;
      v36 = *(Friends + 64);
      v37 = sub_21700C4B4();
      __swift_storeEnumTagSinglePayload(&v17[v36], 1, 1, v37);
      v38 = a1;
      v39 = v80;
      v40 = &v22[*(v80 + 48)];
      v41 = *(v40 + 1);
      if (v41)
      {
        v75 = v36;
        v42 = *v40;
        *v17 = v42;
        *(v17 + 1) = v41;
        *(v17 + 2) = v42;
        *(v17 + 3) = v41;
        v17[32] = v22[16];
        v17[33] = v22[17];
        v17[34] = v22[18];
        v43 = *&v22[*(v39 + 60)];
        swift_bridgeObjectRetain_n();
        v44 = sub_21700F224();
        if (v44 == 1 << *(v43 + 32))
        {
          v45 = 0;
          v46 = 0;
        }

        else
        {
          v45 = sub_216ABE204(v44, *(v43 + 36), 0, v43);
        }

        v27 = v74;
        *(v17 + 5) = v45;
        *(v17 + 6) = v46;
        v47 = *&v22[*(v39 + 56)];
        v48 = sub_21700F224();
        if (v48 == 1 << *(v47 + 32))
        {
          v49 = 0;
          v50 = 0;
        }

        else
        {
          v49 = sub_216ABE204(v48, *(v47 + 36), 0, v47);
          v50 = v51;
        }

        v35 = Friends;
        v52 = &v17[*(Friends + 56)];
        sub_21699C20C(v77, type metadata accessor for SocialContactsCoordinator.Contact);
        *(v17 + 7) = v49;
        *(v17 + 8) = v50;
        v53 = *(v22 + 4);
        *(v17 + 9) = *(v22 + 3);
        *(v17 + 10) = v53;
        sub_216B24400();
        v54 = v76;
        *&v17[*(v35 + 52)] = v76;
        v55 = *(v22 + 6);
        *v52 = *(v22 + 5);
        *(v52 + 1) = v55;
        *&v17[*(v35 + 60)] = *(v22 + 7);
        v56 = *(v80 + 44);
        sub_21700DF14();
        sub_21700DF14();
        v57 = v54;
        v58 = v75;
        sub_216697664(&v17[v75], &qword_27CABF770, &unk_21701A670);
        sub_21690912C(&v22[v56], &v17[v58]);
        sub_21699C20C(v22, type metadata accessor for SocialContactsCoordinator.Contact);
        v34 = v78;
        sub_216B24400();
        __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
        sub_21699C20C(v17, type metadata accessor for SocialFindFriendsController.Friend);
        a1 = v71;
      }

      else
      {
        sub_21699C20C(v26, type metadata accessor for SocialContactsCoordinator.Contact);
        sub_21699C20C(v22, type metadata accessor for SocialContactsCoordinator.Contact);
        sub_216697664(&v17[v36], &qword_27CABF770, &unk_21701A670);
        __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
        a1 = v38;
        v27 = v74;
      }

      v30 &= v30 - 1;
      if (__swift_getEnumTagSinglePayload(v34, 1, v35) != 1)
      {
        sub_216B2448C();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_216939020(0, *(v70 + 16) + 1, 1, v70);
          v70 = v62;
        }

        v61 = *(v70 + 16);
        v60 = *(v70 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_216939020(v60 > 1, v61 + 1, 1, v70);
          v70 = v63;
        }

        *(v70 + 16) = v61 + 1;
        sub_216B2448C();
        v31 = v73;
        goto LABEL_8;
      }

      sub_216697664(v34, &qword_27CAC1B20, &qword_21703F980);
      v33 = v32;
      v26 = v77;
      v31 = v73;
    }

    while (v30);
LABEL_10:
    while (1)
    {
      v32 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        v64 = sub_216E6465C(v70);
        (v69)(v64);

        return;
      }

      v30 = *(v27 + 8 * v32);
      ++v33;
      if (v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    (a5)(0, 0, 0, a4, v24);
  }
}

uint64_t sub_216B1ED48()
{
  v0 = OUTLINED_FUNCTION_102();
  MEMORY[0x21CEA0720](v0);
  return sub_21700F114();
}

uint64_t sub_216B1ED78()
{
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x21CEA0720](0);
  sub_21700F114();
  return sub_21700F944();
}

uint64_t sub_216B1EDD4(uint64_t a1)
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](0);
  sub_21700F114();
  return sub_21700F944();
}

unint64_t sub_216B1EE34()
{
  result = qword_27CAC2EB0;
  if (!qword_27CAC2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2EB0);
  }

  return result;
}

void sub_216B1EE88(char a1)
{
  v3 = sub_21700B5A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700B5E4();
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_needsFriendsAggregation) == 1 && (a1 & 1) == 0)
  {
    v14 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_aggregationQueue);
    v15 = v9;
    v16 = v8;
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_216B2446C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2169F0990;
    aBlock[3] = &block_descriptor_34;
    v13 = _Block_copy(aBlock);

    sub_21700B5C4();
    v17 = MEMORY[0x277D84F90];
    sub_216B20784(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
    sub_216913234(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0);
    sub_21700F214();
    MEMORY[0x21CE9FCB0](0, v11, v6, v13);
    _Block_release(v13);
    (*(v4 + 8))(v6, v3);
    (*(v15 + 8))(v11, v16);
  }
}

uint64_t sub_216B1F17C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B1F1D4();
  }

  return result;
}

void sub_216B1F1D4()
{
  v1 = v0;
  v2 = sub_21700B5A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700B5E4();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700B614();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_aggregationQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8, v10);
  v14 = v13;
  v15 = sub_21700B644();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v44 = v5;
  v45 = v6;
  sub_216B207CC();
  v54 = sub_21700E384();
  sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  v16 = sub_21700EE84();
  v17 = swift_allocObject();
  *(v17 + 16) = &v54;
  *(v17 + 24) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_216B24474;
  *(v18 + 24) = v17;
  v52 = sub_216B2447C;
  v53 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_2169993D0;
  v51 = &block_descriptor_43;
  v19 = _Block_copy(&aBlock);

  dispatch_sync(v16, v19);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v42 = v3;
    v43 = v2;
    v21 = v54;
    v22 = v54 + 64;
    v23 = 1 << *(v54 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v54 + 64);
    v26 = (v23 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v27 = 0;
    v28 = MEMORY[0x277D84FA0];
    while (v25)
    {
LABEL_11:
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      if (*(*(v21 + 56) + 24 * (v30 | (v27 << 6))))
      {
        v31 = sub_21700DF14();
        sub_21699A9E0(v32, v31, v28);
        v28 = v33;
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v34 = sub_21700EE84();
        v35 = swift_allocObject();
        swift_weakInit();
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        *(v36 + 24) = v28;
        v52 = sub_216B24484;
        v53 = v36;
        aBlock = MEMORY[0x277D85DD0];
        v49 = 1107296256;
        v50 = sub_2169F0990;
        v51 = &block_descriptor_50;
        v37 = _Block_copy(&aBlock);

        v38 = v46;
        sub_21700B5C4();
        aBlock = MEMORY[0x277D84F90];
        sub_216B20784(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
        sub_216913234(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0);
        v39 = v43;
        v40 = v44;
        sub_21700F214();
        MEMORY[0x21CE9FCB0](0, v38, v40, v37);
        _Block_release(v37);

        (*(v42 + 8))(v40, v39);
        (*(v47 + 8))(v38, v45);

        return;
      }

      v25 = *(v22 + 8 * v29);
      ++v27;
      if (v25)
      {
        v27 = v29;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_216B1F7E4(uint64_t a1)
{
  v65[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B20, &qword_21703F980);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v55 - v3;
  v4 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2ED8, &qword_2170461A8);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v55 - v8;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends);
  v64 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v55 - v12;
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = *(a1 + 16);
  v57 = a1;
  v58 = v14;
  v56 = v15;
  if (v18)
  {
    v19 = *(v14 + 48);
    v20 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v60 = *(v15 + 72);
    v61 = v19;
    v21 = MEMORY[0x277D84F90];
    v22 = v18;
    do
    {
      sub_216B24400();
      sub_216B24400();
      sub_21699C20C(v17, type metadata accessor for SocialFindFriendsController.Friend);
      sub_216B2448C();
      v23 = *v6;
      v24 = v6[1];
      sub_21700DF14();
      sub_21699C20C(v6, type metadata accessor for SocialContactsCoordinator.Contact);
      if (v24)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21693776C();
          v21 = v27;
        }

        v25 = *(v21 + 16);
        if (v25 >= *(v21 + 24) >> 1)
        {
          sub_21693776C();
          v21 = v28;
        }

        *(v21 + 16) = v25 + 1;
        v26 = v21 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v24;
      }

      v20 += v60;
      --v22;
    }

    while (v22);
  }

  v29 = objc_opt_self();
  v30 = sub_21700E804();

  v31 = [v29 predicateForContactsWithIdentifiers_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_21701D830;
  v33 = *MEMORY[0x277CBD158];
  *(v32 + 32) = *MEMORY[0x277CBD158];
  v34 = objc_opt_self();
  v35 = v33;
  *(v32 + 40) = [v34 descriptorForRequiredKeysForStyle_];
  v36 = sub_216B1FE88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF870, &unk_217033E10);
  v37 = sub_21700E804();

  v65[0] = 0;
  v62 = v31;
  v38 = [v36 unifiedContactsMatchingPredicate:v31 keysToFetch:v37 error:v65];

  v39 = v65[0];
  if (v38)
  {
    sub_216685F4C(0, &qword_280E29B00, 0x277CBDA58);
    v40 = sub_21700E824();
    v41 = v39;
  }

  else
  {
    v42 = v65[0];
    v43 = sub_217005D34();

    swift_willThrow();
    v40 = 0;
  }

  v45 = v58;
  v44 = v59;
  if (v18)
  {
    v46 = v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v47 = *(v56 + 72);
    v48 = MEMORY[0x277D84F90];
    v49 = v63;
    do
    {
      sub_216B24400();
      sub_216B1FEFC(v40, v44);
      sub_21699C20C(v49, type metadata accessor for SocialFindFriendsController.Friend);
      if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
      {
        sub_216697664(v44, &qword_27CAC1B20, &qword_21703F980);
      }

      else
      {
        sub_216B2448C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216939020(0, *(v48 + 16) + 1, 1, v48);
          v48 = v52;
        }

        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_216939020(v50 > 1, v51 + 1, 1, v48);
          v48 = v53;
        }

        *(v48 + 16) = v51 + 1;
        sub_216B2448C();
        v45 = v58;
        v44 = v59;
      }

      v46 += v47;
      --v18;
    }

    while (v18);
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  return v48;
}

id sub_216B1FE88()
{
  v1 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_216B1FEFC@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2ED8, &qword_2170461A8);
  MEMORY[0x28223BE20](v8 - 8);
  type metadata accessor for SocialFindFriendsController.Friend(0);
  sub_216B24400();
  sub_216B2448C();
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_21700DF14();
  sub_216B20064(v7, v9, x8_0);

  return sub_21699C20C(v7, type metadata accessor for SocialContactsCoordinator.Contact);
}

id sub_216B20064@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v6 = sub_21700C4B4();
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B24400();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v6);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = a1[6];
  v48 = v20;
  v45 = a3;
  if (v21)
  {
    v22 = a1[5];
    v46 = v21;
    goto LABEL_9;
  }

  sub_216B2051C(a1, v20, a3);
  if (v23)
  {
    v24 = v23;
    v22 = [objc_opt_self() stringFromContact:v23 style:0];
    if (v22)
    {
      v42 = sub_21700E514();
      v46 = v25;

      v22 = v42;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
  }

  v46 = 0;
LABEL_9:
  v26 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  sub_21690912C(a1 + *(v26 + 44), v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v6);
  sub_21700DF14();
  if (EnumTagSinglePayload != 1)
  {
    sub_216697664(v16, &qword_27CABF770, &unk_21701A670);
    v37 = *(v44 + 32);
    v37(v8, v13, v6);
    v37(v16, v8, v6);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
    goto LABEL_15;
  }

  sub_216697664(v13, &qword_27CABF770, &unk_21701A670);
  sub_216B2051C(a1, v48, v45);
  if (!v28)
  {
    goto LABEL_15;
  }

  v29 = sub_216B24390(v28);
  if (v30 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v31 = v29;
  v32 = v30;
  sub_216685F4C(0, &qword_280E29B40, 0x277D755B8);
  sub_21677A404(v31, v32);
  result = sub_216949A80(v31, v32);
  if (result)
  {
    v34 = result;
    v35 = [objc_opt_self() staticArtworkCatalogWithImage_];

    v36 = v43;
    sub_21700C3C4();
    sub_21677A510(v31, v32);
    sub_216697664(v16, &qword_27CABF770, &unk_21701A670);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v6);
    sub_216A699BC(v36, v16);
LABEL_15:
    v38 = &v19[*(Friends + 56)];

    v39 = v46;
    *v38 = v22;
    *(v38 + 1) = v39;
    sub_21699BFB0(v16, &v19[*(Friends + 64)]);
    v40 = v47;
    sub_216B24400();
    __swift_storeEnumTagSinglePayload(v40, 0, 1, Friends);

    return sub_21699C20C(v19, type metadata accessor for SocialFindFriendsController.Friend);
  }

  __break(1u);
  return result;
}

void sub_216B2051C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (v3)
  {
    v6 = *a1;
    swift_beginAccess();
    v7 = *(a2 + 16);
    if (!v7)
    {
      if (a3)
      {
        v8 = sub_2166BF3C8(a3);
        for (i = 0; v8 != i; ++i)
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x21CEA0220](i, a3);
          }

          else
          {
            if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v10 = *(a3 + 8 * i + 32);
          }

          v7 = v10;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            return;
          }

          v11 = [v10 identifier];
          v12 = sub_21700E514();
          v14 = v13;

          if (v12 == v6 && v3 == v14)
          {

            goto LABEL_20;
          }

          v16 = sub_21700F7D4();

          if (v16)
          {
            goto LABEL_20;
          }
        }
      }

      v7 = 0;
LABEL_20:
      swift_beginAccess();
      v17 = *(a2 + 16);
      *(a2 + 16) = v7;
    }

    v18 = v7;
  }
}

uint64_t sub_216B206AC(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_statesMap;
  swift_beginAccess();
  *a1 = *(a2 + v4);
  sub_21700DF14();

  return sub_216B1E3E4(0);
}

uint64_t sub_216B2071C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_21700DF14();
    sub_216B1DDDC(v3);
    sub_216B1E3FC();
  }

  return result;
}

uint64_t sub_216B20784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216B207CC()
{
  result = qword_27CAC2EC8;
  if (!qword_27CAC2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2EC8);
  }

  return result;
}

uint64_t sub_216B20898(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  OUTLINED_FUNCTION_36(Friends);
  v8 = v7;
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_216C6BB48(v9);
    v9 = v10;
  }

  v11 = *(v9 + 16);
  v13[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13[1] = v11;
  result = sub_216B20954(v13, a2, a3);
  *a1 = v9;
  return result;
}

uint64_t sub_216B20954(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_21700F774();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SocialFindFriendsController.Friend(0);
        v10 = sub_21700E8A4();
        *(v10 + 16) = v9;
      }

      Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
      OUTLINED_FUNCTION_36(Friends);
      v13[0] = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v13[1] = v9;
      a2(v13, v14, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_216B20A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends);
  v41 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v39 = -v18;
    v40 = v17;
    v20 = a1 - a3;
    v33 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v37 = v19;
      v38 = a3;
      v35 = v21;
      v36 = v20;
      while (1)
      {
        sub_216B24400();
        sub_216B24400();
        v22 = *(Friends + 56);
        if (*&v16[v22 + 8])
        {
          v23 = sub_21700E5C4();
          v25 = v24;
          v22 = *(Friends + 56);
        }

        else
        {
          v23 = 0;
          v25 = 0xE000000000000000;
        }

        if (*&v12[v22 + 8])
        {
          v26 = sub_21700E5C4();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0xE000000000000000;
        }

        if (v23 == v26 && v25 == v28)
        {
          break;
        }

        v30 = sub_21700F7D4();

        sub_21699C20C(v12, type metadata accessor for SocialFindFriendsController.Friend);
        sub_21699C20C(v16, type metadata accessor for SocialFindFriendsController.Friend);
        if (v30)
        {
          if (!v40)
          {
            __break(1u);
            return;
          }

          sub_216B2448C();
          swift_arrayInitWithTakeFrontToBack();
          sub_216B2448C();
          v19 += v39;
          v21 += v39;
          if (!__CFADD__(v20++, 1))
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      sub_21699C20C(v12, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v16, type metadata accessor for SocialFindFriendsController.Friend);
LABEL_20:
      a3 = v38 + 1;
      v19 = v37 + v33;
      v20 = v36 - 1;
      v21 = v35 + v33;
      if (v38 + 1 != v34)
      {
        continue;
      }

      break;
    }
  }
}

void sub_216B20DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v31 = v18;
      v32 = a3;
      v29 = v21;
      v30 = v20;
      do
      {
        sub_216B24400();
        sub_216B24400();
        v22 = *(Friends + 60);
        v23 = *&v15[v22];
        v24 = *&v11[v22];
        sub_21699C20C(v11, type metadata accessor for SocialFindFriendsController.Friend);
        sub_21699C20C(v15, type metadata accessor for SocialFindFriendsController.Friend);
        if (v24 >= v23)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        sub_216B2448C();
        swift_arrayInitWithTakeFrontToBack();
        sub_216B2448C();
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v32 + 1;
      v18 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_216B20FF0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v142 = a1;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v149 = *(Friends - 8);
  MEMORY[0x28223BE20](Friends);
  v146 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v154 = &v136 - v11;
  MEMORY[0x28223BE20](v12);
  v157 = &v136 - v13;
  MEMORY[0x28223BE20](v14);
  v156 = &v136 - v15;
  MEMORY[0x28223BE20](v16);
  v153 = &v136 - v17;
  MEMORY[0x28223BE20](v18);
  v152 = &v136 - v19;
  MEMORY[0x28223BE20](v20);
  v143 = &v136 - v21;
  MEMORY[0x28223BE20](v22);
  v141 = &v136 - v23;
  v151 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_132:
    v157 = *v142;
    if (!v157)
    {
      goto LABEL_173;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_134:
      v129 = v26 + 16;
      v130 = *(v26 + 2);
      while (v130 >= 2)
      {
        if (!*v151)
        {
          goto LABEL_170;
        }

        v131 = v26;
        v26 += 16 * v130;
        v132 = *v26;
        v133 = &v129[2 * v130];
        v134 = *(v133 + 1);
        sub_216B224BC(*v151 + *(v149 + 72) * *v26, *v151 + *(v149 + 72) * *v133, *v151 + *(v149 + 72) * v134, v157);
        if (v5)
        {
          break;
        }

        if (v134 < v132)
        {
          goto LABEL_158;
        }

        if (v130 - 2 >= *v129)
        {
          goto LABEL_159;
        }

        *v26 = v132;
        *(v26 + 1) = v134;
        v135 = *v129 - v130;
        if (*v129 < v130)
        {
          goto LABEL_160;
        }

        v130 = *v129 - 1;
        sub_216C6B848(v133 + 16, v135, v133);
        *v129 = v130;
        v26 = v131;
      }

LABEL_142:

      return;
    }

LABEL_167:
    v26 = sub_216C6B740(v26);
    goto LABEL_134;
  }

  v137 = a4;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v155 = Friends;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v147 = v24;
      v29 = *v151;
      v30 = *(v149 + 72);
      v31 = v25 + 1;
      v32 = v141;
      sub_216B24400();
      v150 = v30;
      sub_216B24400();
      v33 = *(Friends + 56);
      if (*(v32 + v33 + 8))
      {
        v34 = sub_21700E5C4();
        v36 = v35;
        v33 = *(Friends + 56);
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      if (*(v143 + v33 + 8))
      {
        v37 = sub_21700E5C4();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      v40 = v34 == v37 && v36 == v39;
      v138 = v26;
      v139 = v5;
      if (v40)
      {
        LODWORD(v148) = 0;
      }

      else
      {
        LODWORD(v148) = sub_21700F7D4();
      }

      sub_21699C20C(v143, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v141, type metadata accessor for SocialFindFriendsController.Friend);
      v140 = v27;
      v41 = v27 + 2;
      v42 = v150 * (v27 + 2);
      v43 = v29 + v42;
      v44 = v150 * v31;
      v45 = v29 + v150 * v31;
      v46 = v31;
      do
      {
        v5 = v41;
        v47 = v46;
        v48 = v44;
        v26 = v42;
        if (v41 >= v147)
        {
          break;
        }

        v49 = v152;
        sub_216B24400();
        sub_216B24400();
        v50 = v155;
        v51 = *(v155 + 56);
        if (*(v49 + v51 + 8))
        {
          v52 = sub_21700E5C4();
          v54 = v53;
          v51 = *(v50 + 56);
        }

        else
        {
          v52 = 0;
          v54 = 0xE000000000000000;
        }

        if (*(v153 + v51 + 8))
        {
          v55 = sub_21700E5C4();
          v57 = v56;
        }

        else
        {
          v55 = 0;
          v57 = 0xE000000000000000;
        }

        v58 = v52 == v55 && v54 == v57;
        v59 = v58 ? 0 : sub_21700F7D4();

        sub_21699C20C(v153, type metadata accessor for SocialFindFriendsController.Friend);
        sub_21699C20C(v152, type metadata accessor for SocialFindFriendsController.Friend);
        v41 = v5 + 1;
        v43 += v150;
        v45 += v150;
        v46 = v47 + 1;
        v44 = v48 + v150;
        v42 = &v26[v150];
      }

      while (((v148 ^ v59) & 1) == 0);
      if (v148)
      {
        v60 = v140;
        Friends = v155;
        if (v5 < v140)
        {
          goto LABEL_164;
        }

        if (v140 >= v5)
        {
          v28 = v5;
          v26 = v138;
          v5 = v139;
          v27 = v140;
          goto LABEL_51;
        }

        v61 = v140 * v150;
        do
        {
          if (v60 != v47)
          {
            v62 = *v151;
            if (!*v151)
            {
              goto LABEL_171;
            }

            sub_216B2448C();
            v63 = v61 < v48 || v62 + v61 >= &v26[v62];
            if (v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_216B2448C();
          }

          ++v60;
          v48 -= v150;
          v26 -= v150;
          v61 += v150;
          v64 = v60 < v47--;
        }

        while (v64);
        v28 = v5;
        v26 = v138;
        v5 = v139;
      }

      else
      {
        v28 = v5;
        v26 = v138;
        v5 = v139;
        Friends = v155;
      }

      v27 = v140;
    }

LABEL_51:
    v65 = v151[1];
    if (v28 < v65)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_163;
      }

      if (v28 - v27 < v137)
      {
        break;
      }
    }

LABEL_80:
    if (v28 < v27)
    {
      goto LABEL_162;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_216938194();
      v26 = v127;
    }

    v85 = *(v26 + 2);
    v86 = v85 + 1;
    if (v85 >= *(v26 + 3) >> 1)
    {
      sub_216938194();
      v26 = v128;
    }

    *(v26 + 2) = v86;
    v87 = v26 + 32;
    v88 = &v26[16 * v85 + 32];
    *v88 = v27;
    *(v88 + 1) = v28;
    v148 = *v142;
    if (!v148)
    {
      goto LABEL_172;
    }

    v150 = v28;
    if (v85)
    {
      while (1)
      {
        v89 = v86 - 1;
        v90 = &v87[16 * v86 - 16];
        v91 = &v26[16 * v86];
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v92 = *(v26 + 4);
          v93 = *(v26 + 5);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_100:
          if (v95)
          {
            goto LABEL_149;
          }

          v107 = *v91;
          v106 = *(v91 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_152;
          }

          v111 = *(v90 + 1);
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_155;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_157;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v86 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        if (v86 < 2)
        {
          goto LABEL_151;
        }

        v114 = *v91;
        v113 = *(v91 + 1);
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_115:
        if (v110)
        {
          goto LABEL_154;
        }

        v116 = *v90;
        v115 = *(v90 + 1);
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_156;
        }

        if (v117 < v109)
        {
          goto LABEL_129;
        }

LABEL_122:
        if (v89 - 1 >= v86)
        {
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
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
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        if (!*v151)
        {
          goto LABEL_169;
        }

        v121 = v26;
        v122 = &v87[16 * v89 - 16];
        v26 = *v122;
        v123 = v89;
        v124 = &v87[16 * v89];
        v125 = *(v124 + 1);
        sub_216B224BC(*v151 + *(v149 + 72) * *v122, *v151 + *(v149 + 72) * *v124, *v151 + *(v149 + 72) * v125, v148);
        if (v5)
        {
          goto LABEL_142;
        }

        if (v125 < v26)
        {
          goto LABEL_144;
        }

        v5 = *(v121 + 2);
        if (v123 > v5)
        {
          goto LABEL_145;
        }

        *v122 = v26;
        *(v122 + 1) = v125;
        if (v123 >= v5)
        {
          goto LABEL_146;
        }

        v126 = v123;
        v86 = v5 - 1;
        sub_216C6B848(v124 + 16, v5 - 1 - v126, v124);
        v26 = v121;
        *(v121 + 2) = v5 - 1;
        v64 = v5 > 2;
        v5 = 0;
        if (!v64)
        {
          goto LABEL_129;
        }
      }

      v96 = &v87[16 * v86];
      v97 = *(v96 - 8);
      v98 = *(v96 - 7);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_147;
      }

      v101 = *(v96 - 6);
      v100 = *(v96 - 5);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_148;
      }

      v103 = *(v91 + 1);
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_150;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_153;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = *(v90 + 1);
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_161;
        }

        if (v94 < v120)
        {
          v89 = v86 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_100;
    }

LABEL_129:
    v25 = v150;
    v24 = v151[1];
    Friends = v155;
    if (v150 >= v24)
    {
      goto LABEL_132;
    }
  }

  v66 = v27 + v137;
  if (__OFADD__(v27, v137))
  {
    goto LABEL_165;
  }

  if (v66 >= v65)
  {
    v66 = v151[1];
  }

  if (v66 < v27)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v28 == v66)
  {
    goto LABEL_80;
  }

  v138 = v26;
  v139 = v5;
  v67 = *v151;
  v68 = *(v149 + 72);
  v69 = *v151 + v68 * (v28 - 1);
  v70 = -v68;
  v140 = v27;
  v71 = v27 - v28;
  v144 = v68;
  v145 = v66;
  v72 = v67 + v28 * v68;
LABEL_60:
  v150 = v28;
  v73 = v72;
  v147 = v71;
  v148 = v69;
  while (1)
  {
    v74 = v156;
    sub_216B24400();
    sub_216B24400();
    v75 = *(Friends + 56);
    if (*(v74 + v75 + 8))
    {
      v76 = Friends;
      v77 = sub_21700E5C4();
      v79 = v78;
      v75 = *(v76 + 56);
    }

    else
    {
      v77 = 0;
      v79 = 0xE000000000000000;
    }

    if (*(v157 + v75 + 8))
    {
      v80 = sub_21700E5C4();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0xE000000000000000;
    }

    if (v77 == v80 && v79 == v82)
    {

      sub_21699C20C(v157, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v156, type metadata accessor for SocialFindFriendsController.Friend);
LABEL_77:
      Friends = v155;
LABEL_78:
      v28 = v150 + 1;
      v69 = v148 + v144;
      v71 = v147 - 1;
      v72 += v144;
      if (v150 + 1 == v145)
      {
        v28 = v145;
        v26 = v138;
        v5 = v139;
        v27 = v140;
        goto LABEL_80;
      }

      goto LABEL_60;
    }

    v84 = sub_21700F7D4();

    sub_21699C20C(v157, type metadata accessor for SocialFindFriendsController.Friend);
    sub_21699C20C(v156, type metadata accessor for SocialFindFriendsController.Friend);
    if ((v84 & 1) == 0)
    {
      goto LABEL_77;
    }

    if (!v67)
    {
      break;
    }

    sub_216B2448C();
    Friends = v155;
    swift_arrayInitWithTakeFrontToBack();
    sub_216B2448C();
    v69 += v70;
    v73 += v70;
    v63 = __CFADD__(v71++, 1);
    if (v63)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
}

void sub_216B21B64(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v113 = a1;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v120 = *(Friends - 8);
  MEMORY[0x28223BE20](Friends);
  v116 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v124 = &v109 - v12;
  MEMORY[0x28223BE20](v13);
  v125 = &v109 - v14;
  MEMORY[0x28223BE20](v15);
  v18 = &v109 - v17;
  v121 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_100:
    v5 = *v113;
    if (!*v113)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v103 = (v21 + 16);
      v104 = *(v21 + 16);
      for (i = v21; v104 >= 2; v21 = i)
      {
        if (!*v121)
        {
          goto LABEL_138;
        }

        v105 = (v21 + 16 * v104);
        v21 = *v105;
        v106 = &v103[2 * v104];
        v107 = *(v106 + 1);
        sub_216B22AC4(*v121 + *(v120 + 72) * *v105, *v121 + *(v120 + 72) * *v106, *v121 + *(v120 + 72) * v107, v5);
        if (v6)
        {
          break;
        }

        if (v107 < v21)
        {
          goto LABEL_126;
        }

        if (v104 - 2 >= *v103)
        {
          goto LABEL_127;
        }

        *v105 = v21;
        v105[1] = v107;
        v108 = *v103 - v104;
        if (*v103 < v104)
        {
          goto LABEL_128;
        }

        v104 = *v103 - 1;
        sub_216C6B848(v106 + 16, v108, v106);
        *v103 = v104;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v21 = sub_216C6B740(v21);
    goto LABEL_102;
  }

  v111 = a4;
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v126 = v16;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v20 + 1 < v19)
    {
      v24 = *v121;
      v25 = *(v120 + 72);
      v123 = v20 + 1;
      v26 = v24 + v25 * v23;
      v118 = v24;
      v119 = v19;
      v27 = v16;
      sub_216B24400();
      v5 = v22;
      v28 = v125;
      sub_216B24400();
      v29 = *(v27 + 60);
      v30 = *&v18[v29];
      v31 = *(v28 + v29);
      sub_21699C20C(v28, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v18, type metadata accessor for SocialFindFriendsController.Friend);
      v32 = v119;
      v112 = v5;
      v33 = v5 + 2;
      i = v25;
      v34 = v118 + v25 * (v5 + 2);
      while (1)
      {
        v35 = v33;
        if (++v123 >= v32)
        {
          break;
        }

        sub_216B24400();
        v5 = v125;
        sub_216B24400();
        v36 = *(v126 + 60);
        v37 = *&v18[v36];
        v38 = *(v5 + v36);
        sub_21699C20C(v5, type metadata accessor for SocialFindFriendsController.Friend);
        sub_21699C20C(v18, type metadata accessor for SocialFindFriendsController.Friend);
        v32 = v119;
        v34 += i;
        v26 += i;
        v33 = v35 + 1;
        if (v31 < v30 == v38 >= v37)
        {
          goto LABEL_9;
        }
      }

      v123 = v32;
LABEL_9:
      if (v31 >= v30)
      {
        v23 = v123;
        v22 = v112;
        v16 = v126;
      }

      else
      {
        v23 = v123;
        if (v123 < v112)
        {
          goto LABEL_132;
        }

        v16 = v126;
        if (v112 >= v123)
        {
          v22 = v112;
        }

        else
        {
          v5 = v21;
          v110 = v6;
          if (v32 >= v35)
          {
            v39 = v35;
          }

          else
          {
            v39 = v32;
          }

          v40 = i * (v39 - 1);
          v41 = i * v39;
          v42 = v112 * i;
          v43 = v112;
          do
          {
            if (v43 != --v23)
            {
              v44 = *v121;
              if (!*v121)
              {
                goto LABEL_139;
              }

              sub_216B2448C();
              v45 = v42 < v40 || v44 + v42 >= (v44 + v41);
              if (v45)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_216B2448C();
            }

            ++v43;
            v40 -= i;
            v41 -= i;
            v42 += i;
          }

          while (v43 < v23);
          v6 = v110;
          v21 = v5;
          v16 = v126;
          v23 = v123;
          v22 = v112;
        }
      }
    }

    v46 = v121[1];
    if (v23 < v46)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_131;
      }

      if (v23 - v22 < v111)
      {
        break;
      }
    }

LABEL_47:
    if (v23 < v22)
    {
      goto LABEL_130;
    }

    v59 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_216938194();
      v21 = v101;
    }

    v60 = *(v21 + 16);
    v61 = v60 + 1;
    if (v60 >= *(v21 + 24) >> 1)
    {
      sub_216938194();
      v21 = v102;
    }

    v16 = v59;
    *(v21 + 16) = v61;
    v62 = v21 + 32;
    v63 = (v21 + 32 + 16 * v60);
    *v63 = v22;
    v63[1] = v23;
    v119 = *v113;
    if (!v119)
    {
      goto LABEL_140;
    }

    v123 = v23;
    if (v60)
    {
      i = v21;
      while (1)
      {
        v64 = v61 - 1;
        v65 = (v62 + 16 * (v61 - 1));
        v66 = (v21 + 16 * v61);
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v67 = *(v21 + 32);
          v68 = *(v21 + 40);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_68:
          if (v70)
          {
            goto LABEL_117;
          }

          v82 = *v66;
          v81 = v66[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_120;
          }

          v86 = v65[1];
          v87 = v86 - *v65;
          if (__OFSUB__(v86, *v65))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v84, v87))
          {
            goto LABEL_125;
          }

          if (v84 + v87 >= v69)
          {
            if (v69 < v87)
            {
              v64 = v61 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v61 < 2)
        {
          goto LABEL_119;
        }

        v89 = *v66;
        v88 = v66[1];
        v77 = __OFSUB__(v88, v89);
        v84 = v88 - v89;
        v85 = v77;
LABEL_83:
        if (v85)
        {
          goto LABEL_122;
        }

        v91 = *v65;
        v90 = v65[1];
        v77 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v77)
        {
          goto LABEL_124;
        }

        if (v92 < v84)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v64 - 1 >= v61)
        {
          __break(1u);
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
          goto LABEL_134;
        }

        if (!*v121)
        {
          goto LABEL_137;
        }

        v5 = v18;
        v96 = (v62 + 16 * (v64 - 1));
        v97 = *v96;
        v98 = v64;
        v99 = v62 + 16 * v64;
        v21 = *(v99 + 8);
        sub_216B22AC4(*v121 + *(v120 + 72) * *v96, *v121 + *(v120 + 72) * *v99, *v121 + *(v120 + 72) * v21, v119);
        if (v6)
        {
          goto LABEL_110;
        }

        if (v21 < v97)
        {
          goto LABEL_112;
        }

        v6 = *(i + 16);
        if (v98 > v6)
        {
          goto LABEL_113;
        }

        *v96 = v97;
        v96[1] = v21;
        if (v98 >= v6)
        {
          goto LABEL_114;
        }

        v61 = v6 - 1;
        sub_216C6B848((v99 + 16), v6 - 1 - v98, v99);
        v21 = i;
        *(i + 16) = v6 - 1;
        v100 = v6 > 2;
        v6 = 0;
        v16 = v126;
        v18 = v5;
        if (!v100)
        {
          goto LABEL_97;
        }
      }

      v71 = v62 + 16 * v61;
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_115;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_116;
      }

      v78 = v66[1];
      v79 = v78 - *v66;
      if (__OFSUB__(v78, *v66))
      {
        goto LABEL_118;
      }

      v77 = __OFADD__(v69, v79);
      v80 = v69 + v79;
      if (v77)
      {
        goto LABEL_121;
      }

      if (v80 >= v74)
      {
        v94 = *v65;
        v93 = v65[1];
        v77 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v77)
        {
          goto LABEL_129;
        }

        if (v69 < v95)
        {
          v64 = v61 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v19 = v121[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_100;
    }
  }

  v47 = v22 + v111;
  if (__OFADD__(v22, v111))
  {
    goto LABEL_133;
  }

  if (v47 >= v46)
  {
    v47 = v121[1];
  }

  if (v47 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v23 == v47)
  {
    goto LABEL_47;
  }

  i = v21;
  v110 = v6;
  v48 = *v121;
  v49 = *(v120 + 72);
  v50 = *v121 + v49 * (v23 - 1);
  v51 = -v49;
  v112 = v22;
  v52 = v22 - v23;
  v114 = v49;
  v115 = v47;
  v53 = v48 + v23 * v49;
LABEL_40:
  v123 = v23;
  v117 = v53;
  v118 = v52;
  v119 = v50;
  v54 = v50;
  v5 = v126;
  while (1)
  {
    sub_216B24400();
    v55 = v125;
    sub_216B24400();
    v56 = *(v5 + 60);
    v57 = *&v18[v56];
    v58 = *(v55 + v56);
    sub_21699C20C(v55, type metadata accessor for SocialFindFriendsController.Friend);
    sub_21699C20C(v18, type metadata accessor for SocialFindFriendsController.Friend);
    if (v58 >= v57)
    {
LABEL_45:
      v23 = v123 + 1;
      v50 = v119 + v114;
      v52 = v118 - 1;
      v53 = v117 + v114;
      if (v123 + 1 == v115)
      {
        v23 = v115;
        v6 = v110;
        v21 = i;
        v16 = v126;
        v22 = v112;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v48)
    {
      break;
    }

    sub_216B2448C();
    v5 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_216B2448C();
    v54 += v51;
    v53 += v51;
    v45 = __CFADD__(v52++, 1);
    if (v45)
    {
      goto LABEL_45;
    }
  }

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
}

void sub_216B224BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends);
  MEMORY[0x28223BE20](v8);
  v71 = &v65 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_83;
  }

  v22 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_84;
  }

  v69 = v15;
  v73 = v14;
  v24 = v20 / v19;
  v76 = a1;
  v75 = a4;
  v25 = v22 / v19;
  if (v20 / v19 < v22 / v19)
  {
    sub_216939798(a1, v20 / v19, a4);
    v71 = a4 + v24 * v19;
    v74 = v71;
    v26 = v73;
    while (1)
    {
      if (a4 >= v71 || a2 >= v72)
      {
        goto LABEL_81;
      }

      v28 = a2;
      sub_216B24400();
      sub_216B24400();
      v29 = *(v26 + 56);
      if (*&v17[v29 + 8])
      {
        v30 = v26;
        v31 = sub_21700E5C4();
        v33 = v32;
        v29 = *(v30 + 56);
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      if (*&v12[v29 + 8])
      {
        v34 = sub_21700E5C4();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      if (v31 == v34 && v33 == v36)
      {

        sub_21699C20C(v12, type metadata accessor for SocialFindFriendsController.Friend);
        sub_21699C20C(v17, type metadata accessor for SocialFindFriendsController.Friend);
      }

      else
      {
        v38 = sub_21700F7D4();

        sub_21699C20C(v12, type metadata accessor for SocialFindFriendsController.Friend);
        sub_21699C20C(v17, type metadata accessor for SocialFindFriendsController.Friend);
        if (v38)
        {
          a2 = v28 + v19;
          v39 = a1 < v28 || a1 >= a2;
          v26 = v73;
          if (v39)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_43;
        }
      }

      v40 = a1 < a4 || a1 >= a4 + v19;
      v26 = v73;
      if (v40)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v75 = a4 + v19;
      a4 += v19;
      a2 = v28;
LABEL_43:
      a1 += v19;
      v76 = a1;
    }
  }

  sub_216939798(a2, v22 / v19, a4);
  v41 = a2;
  v42 = a4 + v25 * v19;
  v43 = -v19;
  v44 = v42;
  v46 = v72;
  v45 = v73;
  v47 = v69;
  v70 = v43;
LABEL_47:
  v72 = v41;
  v68 = v41 + v43;
  v48 = v46;
  v66 = v44;
  while (1)
  {
    if (v42 <= a4)
    {
      v76 = v72;
      v74 = v44;
      goto LABEL_81;
    }

    if (v72 <= a1)
    {
      break;
    }

    v67 = v44;
    v49 = v42 + v43;
    v50 = v71;
    sub_216B24400();
    sub_216B24400();
    v51 = *(v45 + 56);
    if (*(v50 + v51 + 8))
    {
      v52 = sub_21700E5C4();
      v54 = v53;
      v51 = *(v45 + 56);
    }

    else
    {
      v52 = 0;
      v54 = 0xE000000000000000;
    }

    if (*(v47 + v51 + 8))
    {
      v55 = sub_21700E5C4();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0xE000000000000000;
    }

    if (v52 == v55 && v54 == v57)
    {
      v59 = 0;
    }

    else
    {
      v59 = sub_21700F7D4();
    }

    v47 = v69;
    v46 = v48 + v70;
    sub_21699C20C(v69, type metadata accessor for SocialFindFriendsController.Friend);
    sub_21699C20C(v71, type metadata accessor for SocialFindFriendsController.Friend);
    if (v59)
    {
      v45 = v73;
      if (v48 < v72 || v46 >= v72)
      {
        v62 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v41 = v62;
        v44 = v67;
        v43 = v70;
      }

      else
      {
        v44 = v67;
        v21 = v48 == v72;
        v63 = v68;
        v41 = v68;
        v43 = v70;
        if (!v21)
        {
          v64 = v67;
          swift_arrayInitWithTakeBackToFront();
          v41 = v63;
          v44 = v64;
        }
      }

      goto LABEL_47;
    }

    v60 = v48 < v42 || v46 >= v42;
    v45 = v73;
    if (v60)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v46;
      v42 = v49;
      v44 = v49;
      v43 = v70;
    }

    else
    {
      v44 = v49;
      v21 = v42 == v48;
      v48 = v46;
      v42 = v49;
      v43 = v70;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v48 = v46;
        v42 = v49;
        v44 = v49;
      }
    }
  }

  v76 = v72;
  v74 = v66;
LABEL_81:
  sub_216C6B754(&v76, &v75, &v74);
}

void sub_216B22AC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends);
  v55 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v50 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v19 = v15 / v14;
  v59 = a1;
  v58 = a4;
  v20 = v17 / v14;
  v50[1] = v4;
  if (v15 / v14 >= v17 / v14)
  {
    sub_216939798(a2, v17 / v14, a4);
    v29 = a4 + v20 * v14;
    v30 = -v14;
    v31 = v29;
    v32 = a3;
    v52 = a1;
    v53 = -v14;
LABEL_37:
    v54 = a2 + v30;
    v33 = v32;
    v50[0] = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v59 = a2;
        v57 = v31;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v51 = v31;
      v34 = a2;
      v35 = a4;
      v36 = v33 + v53;
      v37 = v29 + v53;
      v38 = v29;
      v39 = v33;
      sub_216B24400();
      v40 = v12;
      v41 = v55;
      sub_216B24400();
      v42 = *(Friends + 60);
      v43 = *(v40 + v42);
      v44 = *&v41[v42];
      v45 = v41;
      v12 = v40;
      sub_21699C20C(v45, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v40, type metadata accessor for SocialFindFriendsController.Friend);
      if (v44 < v43)
      {
        v47 = v39 < v34 || v36 >= v34;
        v32 = v36;
        a4 = v35;
        if (v47)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v51;
          a1 = v52;
          v30 = v53;
          v29 = v38;
        }

        else
        {
          v31 = v51;
          v16 = v39 == v34;
          v30 = v53;
          v48 = v54;
          a2 = v54;
          v29 = v38;
          a1 = v52;
          if (!v16)
          {
            v49 = v51;
            swift_arrayInitWithTakeBackToFront();
            v29 = v38;
            a2 = v48;
            v31 = v49;
          }
        }

        goto LABEL_37;
      }

      v46 = v39 < v38 || v36 >= v38;
      a4 = v35;
      if (v46)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v36;
        v29 = v37;
        v31 = v37;
        a2 = v34;
        a1 = v52;
      }

      else
      {
        v31 = v37;
        v16 = v38 == v39;
        v33 = v36;
        v29 = v37;
        a2 = v34;
        a1 = v52;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v36;
          v29 = v37;
          v31 = v37;
        }
      }
    }

    v59 = a2;
    v57 = v50[0];
  }

  else
  {
    sub_216939798(a1, v15 / v14, a4);
    v21 = a4 + v19 * v14;
    v57 = v21;
    while (a4 < v21 && a2 < a3)
    {
      sub_216B24400();
      v23 = v55;
      sub_216B24400();
      v24 = *(Friends + 60);
      v25 = *&v12[v24];
      v26 = *(v23 + v24);
      sub_21699C20C(v23, type metadata accessor for SocialFindFriendsController.Friend);
      sub_21699C20C(v12, type metadata accessor for SocialFindFriendsController.Friend);
      if (v26 >= v25)
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = a4 + v14;
        a4 += v14;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      a1 += v14;
      v59 = a1;
    }
  }

LABEL_59:
  sub_216C6B754(&v59, &v58, &v57);
}

uint64_t sub_216B22F58(uint64_t a1, uint64_t a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B20, &qword_21703F980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v69 - v9);
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v84 = *(Friends - 8);
  MEMORY[0x28223BE20](Friends);
  v81 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v15);
  v72 = &v69 - v16;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v74 = v7;
  v69 = 0;
  v18 = a1 + 56;
  v17 = *(a1 + 56);
  v19 = -1 << *(a1 + 32);
  v78 = ~v19;
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v22 = (63 - v19) >> 6;
  v85 = (a2 + 56);
  v76 = a1;
  sub_21700DF14();
  v23 = 0;
  v75 = v22;
  v71 = v10;
  v80 = a2;
LABEL_6:
  v24 = v21;
  v25 = v23;
  v82 = v23;
  if (v21)
  {
LABEL_11:
    v27 = (v24 - 1) & v24;
    a1 = v76;
    sub_216B24400();
    v28 = 0;
    v26 = v25;
LABEL_12:
    v29 = Friends;
    __swift_storeEnumTagSinglePayload(v10, v28, 1, Friends);
    v86 = a1;
    v87 = v18;
    v88 = v78;
    v89 = v26;
    v83 = v27;
    v90 = v27;
    if (__swift_getEnumTagSinglePayload(v10, 1, v29) == 1)
    {
      goto LABEL_45;
    }

    v82 = v26;
    v30 = v72;
    sub_216B2448C();
    sub_21700F8F4();
    v79 = *(v30 + 16);
    sub_21700E614();
    v31 = sub_21700F944();
    v32 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v10 = (v31 & v32);
      v25 = (v31 & v32) >> 6;
      v2 = 1 << (v31 & v32);
      if ((v2 & v85[v25]) == 0)
      {
        sub_21699C20C(v72, type metadata accessor for SocialFindFriendsController.Friend);
        v23 = v82;
        v21 = v83;
        v22 = v75;
        v10 = v71;
        a2 = v80;
        goto LABEL_6;
      }

      a1 = *(v84 + 72);
      sub_216B24400();
      sub_21700F8F4();
      sub_21700E614();
      v33 = sub_21700F944();
      sub_21700F8F4();
      sub_21700E614();
      v34 = sub_21700F944();
      sub_21699C20C(v14, type metadata accessor for SocialFindFriendsController.Friend);
      if (v33 == v34)
      {
        break;
      }

      v31 = v10 + 1;
    }

    v84 = a1;
    v35 = sub_21699C20C(v72, type metadata accessor for SocialFindFriendsController.Friend);
    a2 = v80;
    v36 = *(v80 + 32);
    a1 = ((1 << v36) + 63) >> 6;
    v21 = 8 * a1;
    if ((v36 & 0x3Fu) <= 0xD)
    {
LABEL_20:
      v70 = a1;
      v71 = &v69;
      MEMORY[0x28223BE20](v35);
      v37 = &v69 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v37, v85, v21);
      v38 = *&v37[8 * v25] & ~v2;
      v39 = *(a2 + 16);
      v79 = v37;
      *&v37[8 * v25] = v38;
      v40 = v39 - 1;
      v41 = v74;
      v43 = v82;
      v42 = v83;
      v44 = v75;
      v45 = v76;
      v73 = v18;
      while (1)
      {
        v72 = v40;
LABEL_22:
        if (!v42)
        {
          break;
        }

LABEL_27:
        v47 = (v42 - 1) & v42;
        sub_216B24400();
        v48 = 0;
LABEL_28:
        v49 = Friends;
        __swift_storeEnumTagSinglePayload(v41, v48, 1, Friends);
        v86 = v45;
        v87 = v18;
        v88 = v78;
        v89 = v43;
        v90 = v47;
        if (__swift_getEnumTagSinglePayload(v41, 1, v49) == 1)
        {
          sub_216697664(v41, &qword_27CAC1B20, &qword_21703F980);
          a2 = sub_216B23D98(v79, v70, v72, a2);
          goto LABEL_40;
        }

        v82 = v43;
        v83 = v47;
        v50 = v81;
        sub_216B2448C();
        sub_21700F8F4();
        v10 = *(v50 + 16);
        sub_21700E614();
        v51 = sub_21700F944();
        v52 = a2;
        v53 = ~(-1 << *(a2 + 32));
        do
        {
          v54 = v51 & v53;
          v55 = (v51 & v53) >> 6;
          v56 = 1 << (v51 & v53);
          if ((v56 & v85[v55]) == 0)
          {
            sub_21699C20C(v81, type metadata accessor for SocialFindFriendsController.Friend);
            a2 = v52;
            v45 = v76;
            v18 = v73;
            v41 = v74;
            v43 = v82;
            v42 = v83;
            v44 = v75;
            goto LABEL_22;
          }

          sub_216B24400();
          sub_21700F8F4();
          sub_21700E614();
          v57 = sub_21700F944();
          sub_21700F8F4();
          sub_21700E614();
          v58 = sub_21700F944();
          sub_21699C20C(v14, type metadata accessor for SocialFindFriendsController.Friend);
          v51 = v54 + 1;
        }

        while (v57 != v58);
        sub_21699C20C(v81, type metadata accessor for SocialFindFriendsController.Friend);
        v59 = v79[v55];
        v79[v55] = v59 & ~v56;
        v60 = (v59 & v56) == 0;
        a2 = v52;
        v45 = v76;
        v18 = v73;
        v41 = v74;
        v43 = v82;
        v42 = v83;
        v44 = v75;
        if (v60)
        {
          goto LABEL_22;
        }

        v40 = v72 - 1;
        if (__OFSUB__(v72, 1))
        {
          __break(1u);
        }

        if (v72 == 1)
        {

          a2 = MEMORY[0x277D84FA0];
          goto LABEL_40;
        }
      }

      while (1)
      {
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v46 >= v44)
        {
          v47 = 0;
          v48 = 1;
          goto LABEL_28;
        }

        v42 = *(v18 + 8 * v46);
        ++v43;
        if (v42)
        {
          v43 = v46;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_45:
      sub_216697664(v10, &qword_27CAC1B20, &qword_21703F980);
      v61 = v76;
LABEL_41:
      sub_216687978(v61);
      return a2;
    }
  }

  else
  {
    v26 = v23;
    while (1)
    {
      v25 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        v27 = 0;
        v28 = 1;
        a1 = v76;
        goto LABEL_12;
      }

      v24 = *(v18 + 8 * v25);
      ++v26;
      if (v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_20;
  }

  v63 = swift_slowAlloc();
  v64 = a1;
  v65 = a1;
  v66 = v69;
  v67 = sub_216B23D10(v63, v64, v85, v65, a2, v10, &v86);
  if (!v66)
  {
    v68 = v67;

    MEMORY[0x21CEA1440](v63, -1, -1);
    v45 = v86;
    v78 = v88;
    a2 = v68;
LABEL_40:
    v61 = v45;
    goto LABEL_41;
  }

  result = MEMORY[0x21CEA1440](v63, -1, -1);
  __break(1u);
  return result;
}

void sub_216B238EC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v40 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1B20, &qword_21703F980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v48 = *(Friends - 8);
  MEMORY[0x28223BE20](Friends);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = &v39 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v42 = a1;
  v43 = v11;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v49 = a3;
  v47 = a3 + 56;
  v44 = a5;
  while (1)
  {
    v41 = v19;
LABEL_3:
    v20 = *a5;
    v21 = a5[1];
    v22 = a5[2];
    v23 = a5[3];
    v24 = a5[4];
    if (!v24)
    {
      break;
    }

LABEL_8:
    v26 = (v24 - 1) & v24;
    sub_216B24400();
    v27 = 0;
LABEL_9:
    v28 = Friends;
    __swift_storeEnumTagSinglePayload(v11, v27, 1, Friends);
    *a5 = v20;
    a5[1] = v21;
    a5[2] = v22;
    a5[3] = v23;
    a5[4] = v26;
    if (__swift_getEnumTagSinglePayload(v11, 1, v28) == 1)
    {
      sub_216697664(v11, &qword_27CAC1B20, &qword_21703F980);
      v38 = v49;

      sub_216B23D98(v42, v40, v41, v38);
      return;
    }

    sub_216B2448C();
    v29 = v49;
    sub_21700F8F4();
    sub_21700E614();
    v30 = sub_21700F944();
    v31 = ~(-1 << *(v29 + 32));
    do
    {
      v32 = v30 & v31;
      v33 = (v30 & v31) >> 6;
      v34 = 1 << (v30 & v31);
      if ((v34 & *(v47 + 8 * v33)) == 0)
      {
        sub_21699C20C(v46, type metadata accessor for SocialFindFriendsController.Friend);
        v11 = v43;
        a5 = v44;
        goto LABEL_3;
      }

      sub_216B24400();
      sub_21700F8F4();
      sub_21700E614();
      v35 = sub_21700F944();
      sub_21700F8F4();
      sub_21700E614();
      v36 = sub_21700F944();
      sub_21699C20C(v13, type metadata accessor for SocialFindFriendsController.Friend);
      v30 = v32 + 1;
    }

    while (v35 != v36);
    sub_21699C20C(v46, type metadata accessor for SocialFindFriendsController.Friend);
    v11 = v43;
    v37 = v42[v33];
    v42[v33] = v37 & ~v34;
    a5 = v44;
    if ((v37 & v34) == 0)
    {
      goto LABEL_3;
    }

    v19 = v41 - 1;
    if (__OFSUB__(v41, 1))
    {
      goto LABEL_22;
    }

    if (v41 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= ((v22 + 64) >> 6))
    {
      v26 = 0;
      v27 = 1;
      goto LABEL_9;
    }

    v24 = *(v21 + 8 * v25);
    ++v23;
    if (v24)
    {
      v23 = v25;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_216B23D10(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_216B238EC(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_216B23D98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends - 8);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EF0, &qword_217022E00);
  result = sub_21700F394();
  v9 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v11 &= v11 - 1;
LABEL_16:
    sub_216B24400();
    sub_21700F8F4();
    sub_21700E614();
    result = sub_21700F944();
    v16 = -1 << *(v9 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v13 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = sub_216B2448C();
    ++*(v9 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    if (!a3)
    {
LABEL_27:

      return v9;
    }
  }

  v14 = v12;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_27;
    }

    v15 = a1[v12];
    ++v14;
    if (v15)
    {
      v11 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_216B2405C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v28 = *(Friends - 8);
  MEMORY[0x28223BE20](Friends - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    sub_216B24400();
    v21 = v29(v8);
    sub_21699C20C(v8, type metadata accessor for SocialFindFriendsController.Friend);
    if (v4)
    {
      return;
    }

    if (v21)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v23 = v30;

        sub_216B23D98(v26, v25, v27, v23);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_216B24274(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_216B2405C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_216B24318(uint64_t a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_21693B50C(a1, a2, a3 & 1);
  }
}

id sub_216B24330(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    sub_21700DF14();
    v3 = a2;
  }

  else
  {
    sub_21700DF14();
    v3 = a2;
  }

  return v3;
}

uint64_t sub_216B24390(void *a1)
{
  v2 = [a1 thumbnailImageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_217005FB4();

  return v3;
}

uint64_t sub_216B24400()
{
  v2 = OUTLINED_FUNCTION_102();
  v3(v2);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_216B2448C()
{
  v2 = OUTLINED_FUNCTION_102();
  v3(v2);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t SelectTabAction.init(actionMetrics:tabIdentifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for SelectTabAction(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t SelectTabAction.TabIdentifier.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v12 = sub_21700CDB4();
  v14 = v13;
  v15 = v11;
  v16 = *(v8 + 8);
  v16(v15, v6);
  if (v14)
  {
    v17 = v12 == 0x6F4E6E657473696CLL && v14 == 0xE900000000000077;
    if (v17 || (OUTLINED_FUNCTION_5_1(0x6F4E6E657473696CLL, 0xE900000000000077) & 1) != 0)
    {
      v18 = 0;
LABEL_8:

      sub_21700CF34();
      OUTLINED_FUNCTION_34();
      (*(v19 + 8))(a2);
      result = (v16)(a1, v6);
      *a3 = v18;
      return result;
    }

    v29 = v12 == 0x6573776F7262 && v14 == 0xE600000000000000;
    if (v29 || (OUTLINED_FUNCTION_5_1(0x6573776F7262, 0xE600000000000000) & 1) != 0)
    {
      v18 = 1;
      goto LABEL_8;
    }

    v30 = v12 == 0x6F69646172 && v14 == 0xE500000000000000;
    if (v30 || (OUTLINED_FUNCTION_5_1(0x6F69646172, 0xE500000000000000) & 1) != 0)
    {
      v18 = 2;
      goto LABEL_8;
    }

    v31 = v12 == 0x686372616573 && v14 == 0xE600000000000000;
    if (v31 || (OUTLINED_FUNCTION_5_1(0x686372616573, 0xE600000000000000) & 1) != 0)
    {
      v18 = 3;
      goto LABEL_8;
    }

    v32 = v12 == 0x7972617262696CLL && v14 == 0xE700000000000000;
    if (v32 || (OUTLINED_FUNCTION_5_1(0x7972617262696CLL, 0xE700000000000000) & 1) != 0)
    {
      v18 = 4;
      goto LABEL_8;
    }

    v33 = v12 == 0x736F65646976 && v14 == 0xE600000000000000;
    if (v33 || (OUTLINED_FUNCTION_5_1(0x736F65646976, 0xE600000000000000) & 1) != 0)
    {
      v18 = 5;
      goto LABEL_8;
    }

    v34 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    *v35 = v12;
    v35[1] = v14;
    v35[2] = &type metadata for SelectTabAction.TabIdentifier;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22520], v34);
  }

  else
  {
    v21 = sub_21700E2E4();
    sub_2167B1EA4();
    v36[1] = OUTLINED_FUNCTION_1_109();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
    v24 = swift_allocObject();
    v37 = v16;
    v25 = v24;
    *(v24 + 16) = xmmword_217013DA0;
    *(v24 + 32) = OUTLINED_FUNCTION_1_109();
    *v26 = 1684957547;
    v26[1] = 0xE400000000000000;
    v26[2] = &type metadata for SelectTabAction.TabIdentifier;
    v27 = *(*(v21 - 8) + 104);
    v27(v26, *MEMORY[0x277D22530], v21);
    *v23 = &type metadata for SelectTabAction.TabIdentifier;
    v23[1] = v25;
    v16 = v37;
    v27(v23, *MEMORY[0x277D22538], v21);
  }

  swift_willThrow();
  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v28 + 8))(a2);
  return (v16)(a1, v6);
}

uint64_t SelectTabAction.TabIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

uint64_t SelectTabAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v49 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v51 = v47 - v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v14 = v47 - v13;
  v56 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v48 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  v50 = v47 - v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v22 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v53 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  sub_21700CE04();
  v27 = *(v7 + 16);
  v55 = v5;
  v28 = v5;
  v29 = v27;
  v27(v14, a2, v28);
  v30 = v54;
  sub_21700D224();
  if (v30)
  {
    (*(v7 + 8))(a2, v55);
    return (*(v16 + 8))(v57, v56);
  }

  else
  {
    v54 = v16;
    v47[0] = v22;
    v47[1] = v7;
    v32 = v52;
    (*(v53 + 32))(v52, v26, v22);
    sub_21700CE04();
    v33 = a2;
    v34 = a2;
    v35 = v55;
    v29(v51, v34, v55);
    sub_216B24EE8();
    sub_21700D734();
    v36 = v58;
    v37 = v32;
    if (v58 == 6)
    {
      v38 = v48;
      v39 = v57;
      sub_21700CE04();
      v40 = v49;
      v29(v49, v33, v35);
      SelectTabAction.TabIdentifier.init(deserializing:using:)(v38, v40, &v59);
      v41 = v56;
      v42 = v54;
      v45 = OUTLINED_FUNCTION_2_106();
      v46(v45);
      (*(v42 + 8))(v39, v41);
      v36 = v59;
    }

    else
    {
      v43 = OUTLINED_FUNCTION_2_106();
      v44(v43);
      (*(v54 + 8))(v57, v56);
    }

    result = type metadata accessor for SelectTabAction(0);
    *(v37 + *(result + 20)) = v36;
  }

  return result;
}

unint64_t sub_216B24EE8()
{
  result = qword_27CAC2F00;
  if (!qword_27CAC2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F00);
  }

  return result;
}

uint64_t SelectTabAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SelectTabAction.tabIdentifier.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SelectTabAction(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

unint64_t sub_216B24FD4()
{
  result = qword_27CAC2F08;
  if (!qword_27CAC2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectTabAction.TabIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216B2515C()
{
  result = qword_280E31D20[0];
  if (!qword_280E31D20[0])
  {
    type metadata accessor for UnifiedMessagesRequestAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E31D20);
  }

  return result;
}

uint64_t sub_216B251B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnifiedMessagesRequestAction(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  type metadata accessor for UnifiedMessages.Coordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v10 = v32;
  if (qword_280E2C180 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E2C188);
  sub_216B258CC(a1, v9);
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = v10;
    v17 = v16;
    *v15 = 136315138;
    v18 = &v9[*(v3 + 20)];
    v31 = a1;
    v20 = *v18;
    v19 = *(v18 + 1);
    v32 = 46;
    v33 = 0xE100000000000000;
    v34 = v16;
    sub_21700DF14();
    MEMORY[0x21CE9F490](v20, v19);
    v21 = v32;
    v22 = v33;
    sub_216B25930(v9);

    v23 = sub_2166A85FC(v21, v22, &v34);

    *(v15 + 4) = v23;
    a1 = v31;
    _os_log_impl(&dword_216679000, v12, v13, "💬 JS-initiated UM request for placement=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v24 = v17;
    v10 = v29;
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v15;
    v4 = v30;
    MEMORY[0x21CEA1440](v25, -1, -1);
  }

  else
  {

    sub_216B25930(v9);
  }

  sub_216B258CC(a1, v6);
  v26 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v10;
  sub_216B2598C(v6, v27 + v26);
  return sub_216ECDBF4(&unk_217046388, v27);
}

uint64_t sub_216B254A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216B25544, 0, 0);
}

uint64_t sub_216B25544()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = type metadata accessor for UnifiedMessagesRequestAction(0);
  v4 = (v2 + *(v3 + 20));
  v5 = v4[1];
  v0[2] = *v4;
  v0[3] = v5;
  v6 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v7 = *(v2 + *(v3 + 24));
  sub_21700DF14();
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_216B25648;
  v9 = v0[7];

  return sub_2169FF314(v0 + 2, v9, v7);
}

uint64_t sub_216B25648(void *a1)
{
  v3 = *(*v1 + 56);

  sub_2168116E4(v3);

  return MEMORY[0x2822009F8](sub_216B2578C, 0, 0);
}

uint64_t sub_216B2578C()
{
  v1 = *(v0 + 32);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_216B2584C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E2C188);
  __swift_project_value_buffer(v0, qword_280E2C188);
  return sub_217007C94();
}

uint64_t sub_216B258CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMessagesRequestAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B25930(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedMessagesRequestAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B2598C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMessagesRequestAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B259F0(uint64_t a1)
{
  v4 = *(type metadata accessor for UnifiedMessagesRequestAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2166DFAC0;

  return sub_216B254A4(a1, v6, v1 + v5);
}

uint64_t type metadata accessor for TabBanner(uint64_t a1)
{
  result = qword_280E2B5A0;
  if (!qword_280E2B5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B25B48(uint64_t a1)
{
  sub_216688154();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_21668A38C(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_216689C64(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_216B25C10@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a2;
  v5 = sub_21700CF34();
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v59 = v7;
  MEMORY[0x28223BE20](v8);
  v62 = &v50 - v9;
  v61 = sub_21700CDF4();
  v10 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_0();
  v58 = v11;
  MEMORY[0x28223BE20](v12);
  v57 = &v50 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  sub_21700CE04();
  v17 = sub_21700CDB4();
  v19 = v18;
  v20 = *(v10 + 8);
  v21 = OUTLINED_FUNCTION_194();
  v20(v21);
  *a3 = v17;
  a3[1] = v19;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v25 = OUTLINED_FUNCTION_194();
  v20(v25);
  v26 = a3;
  a3[2] = v22;
  a3[3] = v24;
  type metadata accessor for Artwork(0);
  sub_21700CE04();
  v27 = *(v64 + 16);
  v55 = v64 + 16;
  v56 = v27;
  v27(v62, v65, v63);
  v28 = type metadata accessor for TabBanner(0);
  sub_21668F180(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
  OUTLINED_FUNCTION_194();
  sub_21700D734();
  sub_21700CE04();
  v29 = sub_21700CDB4();
  v31 = v30;
  v32 = v61;
  (v20)(v16, v61);
  v33 = *(v28 + 28);
  v60 = v26;
  v34 = (v26 + v33);
  *v34 = v29;
  v34[1] = v31;
  sub_21700CE04();
  sub_21700D2E4();
  v35 = OUTLINED_FUNCTION_194();
  v36 = v32;
  v20(v35);
  sub_21700CE04();
  v54 = v28;
  v37 = v60;
  sub_21700D2E4();
  (v20)(v16, v36);
  v53 = v20;
  v38 = v57;
  v51 = a1;
  sub_21700CE04();
  LOBYTE(v29) = sub_21700CD44();
  v52 = v10 + 8;
  (v20)(v38, v36);
  *(v37 + *(v28 + 40)) = v29 & 1;
  sub_21700CE04();
  v39 = v62;
  v40 = v63;
  v41 = v65;
  v42 = v56;
  v56(v62, v65, v63);
  sub_21700CE04();
  v42(v59, v39, v40);
  sub_216AC7114();
  v44 = v43;
  v45 = *(v64 + 8);
  v45(v39, v40);
  v46 = v16;
  v47 = v61;
  v48 = v53;
  (v53)(v46, v61);
  v45(v41, v40);
  result = v48(v51, v47);
  *(v60 + *(v54 + 44)) = v44;
  return result;
}

uint64_t sub_216B2620C(uint64_t a1)
{
  result = sub_21668F180(qword_280E2B5B0, type metadata accessor for TabBanner, &unk_2170463D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B26264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216B262A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216B262E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216B26398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34[1] = a2;
  v34[0] = sub_2170067A4();
  v5 = *(v34[0] - 8);
  MEMORY[0x28223BE20](v34[0]);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F18, &qword_2170465D8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  *v11 = sub_2170093C4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F20, &qword_2170465E0);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  sub_216B2665C(v13, v14, &v11[*(v12 + 44)]);
  v15 = sub_217009C94();
  sub_216B26B04();
  sub_217007F24();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F28, &qword_2170465E8) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_217009CA4();
  sub_217007F24();
  v26 = &v11[*(v8 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_216CCC124();
  v31 = swift_allocObject();
  v31[2] = v13;
  v31[3] = v14;
  memcpy(v31 + 4, v3, 0x49uLL);
  (*(*(a1 - 8) + 16))(v35, v3, a1);
  sub_216B273E8();
  sub_216B2752C();
  v32 = v34[0];
  sub_21700AB04();

  (*(v5 + 8))(v7, v32);
  return sub_216697664(v11, &qword_27CAC2F18, &qword_2170465D8);
}

uint64_t sub_216B2665C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a2;
  v24 = a3;
  v25 = sub_217009314();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeaderComponentModel(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9868();
  v10 = &v9[*(v7 + 32)];
  v11 = *(v10 + 1);
  v21 = *v10;
  sub_21700DF14();
  sub_216B27584(v9, type metadata accessor for HeaderComponentModel);
  if (qword_27CAB5DA8 != -1)
  {
    swift_once();
  }

  v12 = qword_27CAC2F10;
  KeyPath = swift_getKeyPath();

  v19 = sub_21700AD14();
  v18 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v27[0] = 1;
  type metadata accessor for TitleHeaderView(0, a1, v22, v14);
  v15 = sub_216B26994();
  v16 = swift_getKeyPath();
  sub_216B26A44();
  sub_217008BB4();
  memcpy(&v28[7], __src, 0x70uLL);
  v26[0] = v21;
  v26[1] = v11;
  v26[2] = 0;
  v26[3] = MEMORY[0x277D84F90];
  v26[4] = KeyPath;
  v26[5] = v12;
  v26[6] = v18;
  v26[7] = v19;
  v26[8] = v13;
  v26[9] = 0;
  LOBYTE(v26[10]) = 1;
  v26[11] = v16;
  LOBYTE(v26[12]) = v15;
  memcpy(&v26[12] + 1, v28, 0x77uLL);
  sub_217009304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EE0, &qword_217018C48);
  sub_216B275DC();
  sub_21700A504();
  (*(v23 + 8))(v5, v25);
  memcpy(v27, v26, sizeof(v27));
  return sub_216697664(v27, &qword_27CAB7EE0, &qword_217018C48);
}

uint64_t sub_216B26994()
{
  v0 = type metadata accessor for HeaderComponentModel(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9868();
  LOBYTE(v1) = v3[*(v1 + 44)];
  sub_216B27584(v3, type metadata accessor for HeaderComponentModel);
  return 0x10200u >> (8 * v1);
}

uint64_t sub_216B26A44()
{
  v0 = type metadata accessor for HeaderComponentModel(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9868();
  v4 = v3[*(v1 + 44)];
  sub_216B27584(v3, type metadata accessor for HeaderComponentModel);
  if (!v4)
  {
    return sub_21700B3C4();
  }

  if (v4 == 1)
  {
    return sub_21700B3D4();
  }

  return sub_21700B3B4();
}

double sub_216B26B04()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 32);
  v5 = *(v0 + 24);
  v10 = v5;
  if (v11 == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21700ED94();
    v7 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v10, &qword_27CAC2F50, &qword_2170465F8);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  result = 30.0;
  if (v6 < 2)
  {
    return 20.0;
  }

  return result;
}

uint64_t sub_216B26C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2170067A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v13 - 8);
  v33 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v34 = v32 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v32 - v18;
  sub_216B2752C();
  if ((sub_21700E494() & 1) == 0 || (v32[1] = *(a3 + 8), type metadata accessor for CatalogPagePresenter(0, a4, a5, v20), swift_getWitnessTable(), sub_217008CB4(), sub_216A3FFDC(), , v21 = type metadata accessor for ToolbarConfiguration(0), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v21), result = sub_216697664(v19, &qword_27CAB7930, &qword_21701A250), EnumTagSinglePayload == 1))
  {
    (*(v10 + 16))(v12, a2, v9);
    v24 = (*(v10 + 88))(v12, v9);
    v25 = *MEMORY[0x277D2A410];
    result = (*(v10 + 8))(v12, v9);
    if (v24 != v25)
    {
      type metadata accessor for CatalogPagePresenter(0, a4, a5, v26);
      swift_getWitnessTable();
      sub_217008CB4();
      v27 = v34;
      sub_216A3FFDC();

      v28 = type metadata accessor for ToolbarConfiguration(0);
      if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
      {
        sub_216697664(v27, &qword_27CAB7930, &qword_21701A250);
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        result = sub_216B27584(v27, type metadata accessor for ToolbarConfiguration);
        if (EnumCaseMultiPayload == 1)
        {
          return result;
        }
      }

      sub_217008CB4();
      type metadata accessor for TitleHeaderView(0, a4, a5, v30);
      v31 = v33;
      sub_216B27070(v33);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v28);
      sub_216A3FFF0(v31);
    }
  }

  return result;
}

uint64_t sub_216B27070@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HeaderComponentModel(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9868();
  sub_216919014(&v5[*(v3 + 40)], a1);
  sub_216B27584(v5, type metadata accessor for HeaderComponentModel);
  type metadata accessor for GenericMusicItemToolbarContent(0);
  sub_216CCC124();
  v6 = (a1 + *(type metadata accessor for GenericMusicItemToolbarContentProvider(0) + 20));
  v7 = *(type metadata accessor for ToolbarProperties(0) + 24);
  v8 = *MEMORY[0x277CDDDC0];
  v9 = sub_217009124();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  type metadata accessor for MenuContext(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216B271C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for CatalogPagePresenter(0, a2, a3, a4);
  swift_getWitnessTable();
  v7 = sub_217008CF4();
  v9 = v8;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 8) = v7;
  *(a5 + 16) = v9;
  *(a5 + 24) = KeyPath;
  *(a5 + 32) = 0;
  *(a5 + 40) = result;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  return result;
}

uint64_t sub_216B2735C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B27398(uint64_t a1)
{
  sub_217009D34();
  sub_217009D94();
  v1 = sub_217009E34();

  qword_27CAC2F10 = v1;
  return result;
}

unint64_t sub_216B273E8()
{
  result = qword_27CAC2F30;
  if (!qword_27CAC2F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F18, &qword_2170465D8);
    sub_216B27474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F30);
  }

  return result;
}

unint64_t sub_216B27474()
{
  result = qword_27CAC2F38;
  if (!qword_27CAC2F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F28, &qword_2170465E8);
    sub_2166D9530(&qword_27CAC2F40, &qword_27CAC2F48, &qword_2170465F0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F38);
  }

  return result;
}

unint64_t sub_216B2752C()
{
  result = qword_280E4A478;
  if (!qword_280E4A478)
  {
    sub_2170067A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E4A478);
  }

  return result;
}

uint64_t sub_216B27584(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216B275DC()
{
  result = qword_27CAC2F58;
  if (!qword_27CAC2F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7EE0, &qword_217018C48);
    sub_216B27668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F58);
  }

  return result;
}

unint64_t sub_216B27668()
{
  result = qword_27CAC2F60;
  if (!qword_27CAC2F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2F68, &unk_2170466C0);
    sub_216ADEEA8();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F60);
  }

  return result;
}

uint64_t sub_216B27748@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v40 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v45 = v14;
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v42 = v15;
  MEMORY[0x28223BE20](v16);
  v41 = &v37 - v17;
  MEMORY[0x28223BE20](v18);
  v19 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  sub_21700CE04();
  v24 = a2;
  v47 = v7;
  v25 = *(v7 + 16);
  v26 = v5;
  v25(v12, v24, v5);
  v27 = v44;
  sub_21700D224();
  if (v27)
  {
    (*(v47 + 8))(v24, v5);
    return (*(v45 + 8))(v48, v46);
  }

  else
  {
    v44 = type metadata accessor for SearchAction(0);
    v29 = v43;
    (*(v39 + 32))(&v43[*(v44 + 20)], v23, v19);
    v30 = v41;
    v31 = v48;
    v38 = v24;
    sub_21700CE04();
    v37 = v26;
    v25(v40, v24, v26);
    sub_216B27BC4();
    sub_21700D734();
    v32 = v29;
    memcpy(v29, __src, 0x48uLL);
    sub_21700CE04();
    sub_216B27C18();
    sub_21700CD14();
    v33 = v46;
    v34 = *(v45 + 8);
    v34(v30, v46);
    v35 = v44;
    v32[*(v44 + 24)] = __src[95];
    v36 = v42;
    sub_21700CE04();
    LOBYTE(v32) = sub_21700CD44();
    (*(v47 + 8))(v38, v37);
    v34(v31, v33);
    result = (v34)(v36, v33);
    v43[*(v35 + 28)] = (v32 == 2) | v32 & 1;
  }

  return result;
}

unint64_t sub_216B27BC4()
{
  result = qword_27CAC2F70;
  if (!qword_27CAC2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F70);
  }

  return result;
}

unint64_t sub_216B27C18()
{
  result = qword_27CAC2F78;
  if (!qword_27CAC2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2F78);
  }

  return result;
}

uint64_t type metadata accessor for ReportAConcern(uint64_t a1)
{
  result = qword_280E42E30;
  if (!qword_280E42E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B27CE0(uint64_t a1)
{
  sub_216B27D64(319);
  if (v1 <= 0x3F)
  {
    sub_21694CB7C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216B27D64(uint64_t a1)
{
  if (!qword_280E2B3D8)
  {
    type metadata accessor for ReportAConcernPresenter(255);
    sub_216B27DC8();
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B3D8);
    }
  }
}

unint64_t sub_216B27DC8()
{
  result = qword_280E379A8;
  if (!qword_280E379A8)
  {
    type metadata accessor for ReportAConcernPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E379A8);
  }

  return result;
}

uint64_t sub_216B27E3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v13[1] = a1;
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F80, &qword_2170467A0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  v5 = v13 - v4;
  *v5 = sub_2170093B4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F88, &qword_2170467A8);
  sub_216B28068(v2, &v5[*(v6 + 44)]);
  v13[8] = sub_216983738(271);
  v13[9] = v7;
  type metadata accessor for ReportAConcernPresenter(0);
  sub_216B27DC8();
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v13[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F90, &qword_2170580E0);
  OUTLINED_FUNCTION_1_132();
  sub_2166D9530(v8, &qword_27CAC2F80, &qword_2170467A0, v9);
  sub_2167B2E14();
  OUTLINED_FUNCTION_2_107();
  sub_2166D9530(v10, &qword_27CAC2F90, &qword_2170580E0, v11);
  sub_21700A9B4();

  return sub_216697664(v5, &qword_27CAC2F80, &qword_2170467A0);
}

uint64_t sub_216B28068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2B0, &unk_2170233C0);
  MEMORY[0x28223BE20](v70);
  v77 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v53 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FA8, &qword_2170467D8);
  v55 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v54 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2A8, &qword_2170233B8);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v53 - v10;
  v11 = type metadata accessor for ReportAConcern(0);
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2A0, &qword_2170233B0);
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  v71 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v53 - v17;
  v18 = sub_216983738(269);
  v67 = v19;
  v68 = v18;
  v66 = sub_217009D74();
  KeyPath = swift_getKeyPath();
  v20 = sub_216983738(272);
  v63 = v21;
  v64 = v20;
  v62 = sub_217009D44();
  v61 = swift_getKeyPath();
  v56 = *a1;
  v22 = *(a1 + 16);
  type metadata accessor for ReportAConcernPresenter(0);
  v23 = sub_216B27DC8();
  sub_2170081B4();
  sub_2169C3FB0();
  v25 = v24;

  v26 = swift_getKeyPath();
  v69 = a1;
  sub_216B29628(a1, v13);
  v27 = *(v79 + 80);
  v28 = (v27 + 16) & ~v27;
  v57 = v28 + v12;
  v58 = v27;
  v29 = swift_allocObject();
  v59 = v28;
  v60 = v13;
  sub_216B2968C(v13, v29 + v28);
  v87 = v25;
  v83 = &v87;
  v84 = v26;
  v85 = sub_216B298B0;
  v86 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FB0, &qword_217046838);
  sub_216B29944();
  sub_217009ED4();

  LODWORD(v79) = v22;
  v78 = v23;
  sub_2170081B4();
  LOBYTE(v26) = sub_2169C3F08();

  v30 = 1;
  if (v26)
  {
    v31 = sub_216983738(55);
    v53 = v32;
    sub_2170081C4();
    swift_getKeyPath();
    sub_2170086A4();

    v112 = v31;
    v113 = v53;
    sub_2167B2E14();
    v33 = v54;
    v34 = v80;
    sub_21700B4C4();
    (*(v55 + 32))(v34, v33, v81);
    v30 = 0;
  }

  v35 = v80;
  __swift_storeEnumTagSinglePayload(v80, v30, 1, v81);
  v36 = v60;
  sub_216B29628(v69, v60);
  v37 = swift_allocObject();
  v38 = sub_216B2968C(v36, v37 + v59);
  MEMORY[0x28223BE20](v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FD0, &qword_217046848);
  sub_216B29A88();
  v39 = v75;
  sub_21700AF14();
  sub_2170081B4();
  LOBYTE(v36) = sub_2169C4318();

  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = v36 & 1;
  v42 = (v39 + *(v70 + 36));
  *v42 = v40;
  v42[1] = sub_2167D2420;
  v42[2] = v41;
  sub_21700B3B4();
  sub_2170083C4();
  v70 = v125;
  v81 = v129;
  v78 = v127;
  v79 = v130;
  v124 = 1;
  v122 = v126;
  v120 = v128;
  v106 = v68;
  v107 = v67;
  v108 = 0;
  v109 = MEMORY[0x277D84F90];
  v110 = KeyPath;
  v111 = v66;
  v100 = v64;
  v101 = v63;
  v102 = 0;
  v103 = MEMORY[0x277D84F90];
  v104 = v61;
  v105 = v62;
  v112 = &v106;
  v113 = &v100;
  v98 = 0;
  v99 = 1;
  v114 = &v98;
  v44 = v71;
  v43 = v72;
  v45 = v82;
  v46 = v73;
  (*(v72 + 16))(v71, v82, v73);
  v115 = v44;
  v47 = v35;
  v48 = v35;
  v49 = v74;
  sub_216681B04(v47, v74, &qword_27CABB2A8, &qword_2170233B8);
  v116 = v49;
  v50 = v77;
  sub_216681B04(v39, v77, &qword_27CABB2B0, &unk_2170233C0);
  v87 = 0;
  v88 = v124;
  *v89 = *v123;
  *&v89[3] = *&v123[3];
  v90 = v70;
  v91 = v122;
  *v92 = *v121;
  *&v92[3] = *&v121[3];
  v93 = v78;
  v94 = v120;
  *v95 = *v119;
  *&v95[3] = *&v119[3];
  v96 = v81;
  v97 = v79;
  v117 = v50;
  v118 = &v87;
  sub_2168AACD0(&v112, v76);
  sub_216697664(v39, &qword_27CABB2B0, &unk_2170233C0);
  sub_216697664(v48, &qword_27CABB2A8, &qword_2170233B8);
  v51 = *(v43 + 8);
  v51(v45, v46);
  sub_216697664(v50, &qword_27CABB2B0, &unk_2170233C0);
  sub_216697664(v49, &qword_27CABB2A8, &qword_2170233B8);
  v51(v44, v46);
  sub_2167C4DF0(v100, v101, v102, v103);

  sub_2167C4DF0(v106, v107, v108, v109);
}

uint64_t sub_216B289E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2169C389C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216B28A1C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAConcern(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *(a1 + 24);
  sub_216B29628(a2, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_216B2968C(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v13 = v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v13 = v7;
  *(v13 + 8) = v8;
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = a2;
  sub_216B29C10(v7, v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FF8, &qword_2170468B8);
  sub_2166D9530(&qword_27CAC3000, &qword_27CAC2FF8, &qword_2170468B8, MEMORY[0x277CE1138]);
  return sub_21700AF14();
}

uint64_t sub_216B28BEC(uint64_t *a1, void *a2)
{
  type metadata accessor for ReportAConcernPresenter(0);
  sub_216B27DC8();
  sub_2170081B4();
  sub_2169C4358(a2);
}

__n128 sub_216B28C90@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a6@<X8>)
{
  v11 = sub_2170091A4();
  v22 = 1;
  sub_216B28D44(a1, a2, a3, a4 & 1, v18);
  v12 = v19;
  v13 = v20;
  v14 = v21;
  result = v18[0];
  v16 = v18[1];
  v17 = v22;
  *a6 = v11;
  *(a6 + 8) = 0;
  *(a6 + 16) = v17;
  *(a6 + 24) = result;
  *(a6 + 40) = v16;
  *(a6 + 56) = v12;
  *(a6 + 64) = v13;
  *(a6 + 72) = v14;
  return result;
}

uint64_t sub_216B28D44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a6@<X8>)
{
  v11 = sub_2169C38A8(a1, a2, a3, a4 & 1);
  v13 = v12;
  v14 = sub_2169C389C(a1, a2, a3, a4 & 1);
  v16 = v15;
  type metadata accessor for ReportAConcernPresenter(0);
  sub_216B27DC8();
  sub_2170081B4();
  v17 = sub_2169C3BFC();
  v19 = v18;

  if (v19)
  {
    if (v14 == v17 && v19 == v16)
    {
    }

    else
    {
      v21 = sub_21700F7D4();

      if ((v21 & 1) == 0)
      {
        v19 = 0;
        goto LABEL_11;
      }
    }

    v19 = sub_21700ADB4();
  }

  else
  {
  }

LABEL_11:
  v22 = MEMORY[0x277D84F90];
  sub_2167770D0(v11, v13, 0, MEMORY[0x277D84F90]);
  *a6 = v11;
  *(a6 + 8) = v13;
  *(a6 + 16) = 0;
  *(a6 + 24) = v22;
  *(a6 + 32) = 0;
  *(a6 + 40) = 1;
  *(a6 + 48) = v19;

  return sub_2167C4DF0(v11, v13, 0, v22);
}

uint64_t sub_216B28EF4(uint64_t *a1)
{
  type metadata accessor for ReportAConcernPresenter(0);
  sub_216B27DC8();
  sub_2170081B4();
  sub_2169C4430();
}

uint64_t sub_216B28F64(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FE0, &qword_2170468A8);
  MEMORY[0x28223BE20](v1);
  v3 = (&v12 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0, &unk_217026510);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  type metadata accessor for ReportAConcernPresenter(0);
  sub_216B27DC8();
  sub_2170081B4();
  v8 = sub_2169C3CE4();

  if (v8)
  {
    sub_217008294();
    (*(v5 + 16))(v3, v7, v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
    sub_2166D9530(&qword_27CAB7BC8, &qword_27CAB7BD0, &unk_217026510, MEMORY[0x277CDD7F8]);
    sub_2167C4D74();
    sub_217009554();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    *v3 = sub_216983738(339);
    v3[1] = v10;
    v11 = MEMORY[0x277D84F90];
    v3[2] = 0;
    v3[3] = v11;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
    sub_2166D9530(&qword_27CAB7BC8, &qword_27CAB7BD0, &unk_217026510, MEMORY[0x277CDD7F8]);
    sub_2167C4D74();
    return sub_217009554();
  }
}

uint64_t sub_216B2921C(uint64_t a1)
{
  v2 = type metadata accessor for ReportAConcern(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_216B29628(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_216B2968C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
  sub_2167C4D74();
  return sub_21700AF14();
}

uint64_t sub_216B2935C(uint64_t a1)
{
  v16 = sub_2170090F4();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_217008424();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReportAConcern(0);
  sub_216681B04(a1 + *(v12 + 20), v7, &qword_27CAB80B0, &unk_217033950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21700ED94();
    v13 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_217008414();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_216B295E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216983738(181);
  *a1 = result;
  a1[1] = v3;
  v4 = MEMORY[0x277D84F90];
  a1[2] = 0;
  a1[3] = v4;
  return result;
}

uint64_t sub_216B29628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAConcern(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B2968C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAConcern(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B29708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_21700DF14();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FE8, &qword_2170468B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FC8, &qword_217046840);
  sub_2166D9530(&qword_27CAC2FF0, &qword_27CAC2FE8, &qword_2170468B0, MEMORY[0x277D83980]);
  sub_2166D9530(&qword_27CAC2FC0, &qword_27CAC2FC8, &qword_217046840, MEMORY[0x277CDF028]);
  return sub_21700B154();
}

uint64_t sub_216B2986C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *))
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7 = a4 & 1;
  return a5(v6);
}

uint64_t sub_216B298B0(uint64_t *a1)
{
  v3 = *(type metadata accessor for ReportAConcern(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216B28A1C(a1, v4);
}

unint64_t sub_216B29944()
{
  result = qword_27CAC2FB8;
  if (!qword_27CAC2FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2FB0, &qword_217046838);
    sub_2166D9530(&qword_27CAC2FC0, &qword_27CAC2FC8, &qword_217046840, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2FB8);
  }

  return result;
}

uint64_t sub_216B29A0C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ReportAConcern(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_216B29A88()
{
  result = qword_27CAC2FD8;
  if (!qword_27CAC2FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2FD0, &qword_217046848);
    sub_2166D9530(&qword_27CAB7BC8, &qword_27CAB7BD0, &unk_217026510, MEMORY[0x277CDD7F8]);
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2FD8);
  }

  return result;
}

uint64_t sub_216B29B64()
{
  v1 = *(type metadata accessor for ReportAConcern(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_216B28BEC((v0 + v2), v3);
}

void sub_216B29C10(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;

    sub_21700DF14();
  }

  else
  {

    v6 = a1;
  }
}

uint64_t sub_216B29C5C()
{
  type metadata accessor for ReportableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  sub_216B2AAA8(v0, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_0_157();
  sub_216B2AB74(v1, v4);
  if (EnumCaseMultiPayload > 5)
  {
    return 0;
  }

  else
  {
    return qword_217046980[EnumCaseMultiPayload];
  }
}

uint64_t sub_216B29D34()
{
  v1 = v0;
  v34 = type metadata accessor for SocialProfileDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  sub_217006E94();
  OUTLINED_FUNCTION_1();
  v32 = v7;
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v31 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  v24 = type metadata accessor for ReportableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  v28 = v27 - v26;
  sub_216B2AAA8(v1, v27 - v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v32 + 32))(v10, v28, v33);
      v24 = v10;
      sub_217006E64();
      OUTLINED_FUNCTION_8_70();
      (*(v32 + 8))(v10, v33);
      break;
    case 2u:
    case 3u:
      (*(v19 + 32))(v23, v28, v17);
      v24 = v23;
      sub_21700BFF4();
      OUTLINED_FUNCTION_8_70();
      (*(v19 + 8))(v23, v17);
      break;
    case 4u:
      sub_216B15D78(v28, v5);
      v24 = *(v5 + *(v34 + 20));
      sub_21700DF14();
      OUTLINED_FUNCTION_3_105();
      sub_216B2AB74(v5, v29);
      break;
    case 5u:
      sub_21700DF14();
      sub_21700BA64();
      OUTLINED_FUNCTION_8_70();

      break;
    default:
      (*(v31 + 32))(v16, v28, v11);
      v24 = v16;
      sub_21700C7C4();
      OUTLINED_FUNCTION_8_70();
      (*(v31 + 8))(v16, v11);
      break;
  }

  return v24;
}

uint64_t sub_216B2A098()
{
  type metadata accessor for ReportableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = (v3 - v2);
  sub_216B2AAA8(v0, v3 - v2);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 32) = 1836216166;
    *(inited + 40) = 0xE400000000000000;
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_217013D90;
    *(v9 + 32) = 0x6554686372616573;
    *(v9 + 40) = 0xEA00000000006D72;
    v10 = MEMORY[0x277D837D0];
    *(v9 + 48) = v5;
    *(v9 + 56) = v6;
    *(v9 + 72) = v10;
    strcpy((v9 + 80), "queryContext");
    *(v9 + 93) = 0;
    *(v9 + 94) = -5120;
    *(v9 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3020, &qword_217046978);
    *(v9 + 96) = v7;
    v11 = sub_21700E384();
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *(inited + 48) = v11;
    return sub_21700E384();
  }

  else
  {
    sub_216B2AB74(v4, type metadata accessor for ReportableMusicItem);
    return 0;
  }
}

uint64_t sub_216B2A278()
{
  type metadata accessor for ReportableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  sub_216B2AAA8(v0, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_0_157();
  sub_216B2AB74(v1, v4);
  result = 0x7473696C79616C70;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      result = 0x7241746964657263;
      break;
    case 2:
      v6 = 0x746964657263;
      goto LABEL_6;
    case 3:
      v6 = 0x73636972796CLL;
LABEL_6:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6F53000000000000;
      break;
    case 4:
      result = 0x72506C6169636F73;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static ReportableMusicItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v85 = a1;
  v86 = a2;
  v3 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_7();
  v78 = v5 - v4;
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v83 = v7;
  v84 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v75 - v10;
  sub_217006E94();
  OUTLINED_FUNCTION_1();
  v81 = v12;
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v75 = (v14 - v13);
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v79 = v16;
  v80 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  type metadata accessor for ReportableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v19 = (&v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v75 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v75 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v75 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v75 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3008, &qword_2170468C0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v75 - v36;
  v39 = (&v75 + *(v38 + 56) - v36);
  sub_216B2AAA8(v85, &v75 - v36);
  sub_216B2AAA8(v86, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_216B2AAA8(v37, v31);
      if (OUTLINED_FUNCTION_6_74() == 1)
      {
        v55 = v81;
        v54 = v82;
        v56 = v75;
        (*(v81 + 32))(v75, v39, v82);
        v41 = sub_217006E54();
        v57 = *(v55 + 8);
        v57(v56, v54);
        v57(v31, v54);
        goto LABEL_30;
      }

      v66 = v82;
      v64 = *(v81 + 8);
      v65 = v31;
      goto LABEL_25;
    case 2u:
      sub_216B2AAA8(v37, v28);
      if (OUTLINED_FUNCTION_6_74() == 2)
      {
        v43 = v83;
        v42 = v84;
        OUTLINED_FUNCTION_7_74();
        v44 = v76;
        v45(v76, v39, v42);
        v41 = sub_21700BFE4();
        v46 = *(v43 + 8);
        v46(v44, v42);
        v47 = v28;
        v48 = v42;
        goto LABEL_10;
      }

      v64 = *(v83 + 8);
      v65 = v28;
      goto LABEL_23;
    case 3u:
      sub_216B2AAA8(v37, v25);
      if (OUTLINED_FUNCTION_6_74() == 3)
      {
        v49 = v83;
        OUTLINED_FUNCTION_7_74();
        v50 = v77;
        v51 = v39;
        v52 = v84;
        v53(v77, v51, v84);
        v41 = sub_21700BFE4();
        v46 = *(v49 + 8);
        v46(v50, v52);
        v47 = v25;
        v48 = v52;
LABEL_10:
        v46(v47, v48);
        goto LABEL_30;
      }

      v64 = *(v83 + 8);
      v65 = v25;
LABEL_23:
      v66 = v84;
LABEL_25:
      v64(v65, v66);
      goto LABEL_26;
    case 4u:
      sub_216B2AAA8(v37, v22);
      if (OUTLINED_FUNCTION_6_74() == 4)
      {
        v40 = v78;
        sub_216B15D78(v39, v78);
        v41 = static SocialProfileDescriptor.== infix(_:_:)(v22, v40);
        sub_216B2AB74(v40, type metadata accessor for SocialProfileDescriptor);
        sub_216B2AB74(v22, type metadata accessor for SocialProfileDescriptor);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_3_105();
      sub_216B2AB74(v22, v63);
      goto LABEL_26;
    case 5u:
      sub_216B2AAA8(v37, v19);
      v59 = *v19;
      v58 = v19[1];
      if (OUTLINED_FUNCTION_6_74() != 5)
      {

        goto LABEL_26;
      }

      if (v59 == *v39 && v58 == v39[1])
      {
      }

      else
      {
        v61 = sub_21700F7D4();

        if ((v61 & 1) == 0)
        {
          OUTLINED_FUNCTION_0_157();
          sub_216B2AB74(v37, v62);
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_0_157();
      sub_216B2AB74(v37, v74);
      v41 = 1;
      break;
    default:
      sub_216B2AAA8(v37, v34);
      if (OUTLINED_FUNCTION_6_74())
      {
        (*(v79 + 8))(v34, v80);
LABEL_26:
        sub_216B2AB0C(v37);
LABEL_27:
        v41 = 0;
      }

      else
      {
        v67 = v79;
        OUTLINED_FUNCTION_7_74();
        v68 = v39;
        v69 = v80;
        v70(v2, v68, v80);
        v41 = sub_21700C7B4();
        v71 = *(v67 + 8);
        v71(v2, v69);
        v71(v34, v69);
LABEL_30:
        OUTLINED_FUNCTION_0_157();
        sub_216B2AB74(v37, v72);
      }

      break;
  }

  return v41 & 1;
}

uint64_t sub_216B2AAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportableMusicItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B2AB0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3008, &qword_2170468C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B2AB74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ReportableMusicItem.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v8 = sub_217006E94();
  OUTLINED_FUNCTION_1();
  v33 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  type metadata accessor for ReportableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  sub_216B2AAA8(v35, v23 - v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v33 + 32))(v13, v24, v8);
      MEMORY[0x21CEA0720](1);
      sub_216B2B0E0(&qword_27CAC3010, MEMORY[0x277D2A958], MEMORY[0x277D2A960]);
      sub_21700E434();
      result = (*(v33 + 8))(v13, v8);
      break;
    case 2u:
      v28 = OUTLINED_FUNCTION_5_79();
      v29(v28);
      v30 = 2;
      goto LABEL_6;
    case 3u:
      v31 = OUTLINED_FUNCTION_5_79();
      v32(v31);
      v30 = 3;
LABEL_6:
      MEMORY[0x21CEA0720](v30);
      sub_216B2B0E0(&qword_27CABC530, MEMORY[0x277CD8238], MEMORY[0x277CD8250]);
      sub_21700E434();
      result = (*(v5 + 8))(v1, v6);
      break;
    case 4u:
      sub_216B15D78(v24, v5);
      MEMORY[0x21CEA0720](4);
      SocialProfileDescriptor.hash(into:)(a1);
      OUTLINED_FUNCTION_3_105();
      result = sub_216B2AB74(v5, v27);
      break;
    case 5u:
      MEMORY[0x21CEA0720](5);
      sub_21700E614();

      break;
    default:
      OUTLINED_FUNCTION_7_74();
      v25(v20, v24, v14);
      MEMORY[0x21CEA0720](0);
      sub_216B2B0E0(&unk_27CACA4B0, MEMORY[0x277CD8608], MEMORY[0x277CD8618]);
      sub_21700E434();
      result = (*(v16 + 8))(v20, v14);
      break;
  }

  return result;
}

uint64_t ReportableMusicItem.hashValue.getter()
{
  sub_21700F8F4();
  ReportableMusicItem.hash(into:)(v1);
  return sub_21700F944();
}

uint64_t sub_216B2B05C(uint64_t a1)
{
  sub_21700F8F4();
  ReportableMusicItem.hash(into:)(v2);
  return sub_21700F944();
}

uint64_t sub_216B2B0E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B2B128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MappedSection(0);
  sub_2169728B8(v3 + *(v9 + 28), v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!(!_ZF & _CF))
  {
    switch(EnumCaseMultiPayload)
    {
      case '4':
        v15 = OUTLINED_FUNCTION_0_158();
        sub_216C71128(v15, v16);
        goto LABEL_23;
      case '5':

        v19 = 0;
        v28 = 34.0;
        if (a3 <= 726.0)
        {
          v28 = 20.0;
        }

        if (a3 <= 374.0)
        {
          v28 = 16.0;
        }

        v20 = 0uLL;
        *&v24 = 0;
        *(&v24 + 1) = v28;
        __asm { FMOV            V4.2D, #18.0 }

        *(&_Q4 + 1) = v28;
        v18 = 0x3FF0000000000000;
        LOBYTE(v21) = 64;
        v22 = 0uLL;
        v23 = 0uLL;
        goto LABEL_31;
      case '6':
      case '7':
      case '8':
      case ':':
      case ';':
      case '<':
        goto LABEL_15;
      case '9':
        OUTLINED_FUNCTION_0_158();
        sub_216C713BC(v26, v27);
        goto LABEL_23;
      case '=':
        v31 = OUTLINED_FUNCTION_0_158();
        sub_216C71520(v31, v32);
        goto LABEL_23;
      default:
        JUMPOUT(0);
    }
  }

  switch(EnumCaseMultiPayload)
  {
    case 31:
      sub_216B2B790(v8);
      v39 = HIBYTE(*(v3 + *(v9 + 32)));
      if (v39 <= 0xFE)
      {
        if (!v39)
        {
          v42 = *(v3 + *(v9 + 32));
          goto LABEL_33;
        }

        if (v39 == 1)
        {
          OUTLINED_FUNCTION_1_133();
          *(&v58 + 1) = &unk_28291FA68;
          v59 = &off_28291DBE0;
          v40 = swift_allocObject();
          OUTLINED_FUNCTION_3_106(v40);
          *(v3 + 80) = &unk_28291FB08;
          *(v3 + 88) = &off_28291F9F0;
          *(v3 + 56) = 0;
          *(v3 + 64) = 0;
          *(v3 + 72) = 64;
LABEL_34:
          sub_216A906C4(v49);
          *(v3 + 96) = 0;
          *(v3 + 104) = 0;
          *(v3 + 112) = 0;
          *(v3 + 120) = 0x4032000000000000;
          __swift_project_boxed_opaque_existential_1(&v57, &unk_28291FA68);
          v35 = OUTLINED_FUNCTION_2_108();
          v37 = &unk_28291FA68;
          v38 = &off_28291DBE0;
          goto LABEL_24;
        }
      }

      v42 = 1;
LABEL_33:
      OUTLINED_FUNCTION_1_133();
      *(&v58 + 1) = &unk_28291FA68;
      v59 = &off_28291DBE0;
      v43 = swift_allocObject();
      OUTLINED_FUNCTION_3_106(v43);
      *(v3 + 80) = &unk_28291FB08;
      *(v3 + 88) = &off_28291F9F0;
      *(v3 + 56) = v42;
      *(v3 + 64) = 0;
      *(v3 + 72) = 0;
      goto LABEL_34;
    case 11:
      sub_216B2B790(v8);
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      sub_21698F234(&v57, v49);
      *(&v52 + 1) = &unk_28291FB08;
      *&v53 = &off_28291F9F0;
      v51 = 0uLL;
      v41 = 0x80;
LABEL_29:
      LOBYTE(v52) = v41;
      sub_216A906C4(&v57);
      *(&v53 + 1) = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0x4032000000000000;
      sub_21694930C(&v57, a3);
      v48 = v57;
      v47 = v58;
      v46 = v60;
      v45 = v61;
      v44 = v62;
      v21 = v59;
      v18 = v63;
      result = sub_216B2B7EC(v49);
      goto LABEL_30;
    case 18:
      sub_216B2B790(v8);
      *(&v58 + 1) = &_s14LinkViewLayoutVN;
      v59 = &off_282932C90;
      sub_21698F234(&v57, v49);
      *(&v52 + 1) = &unk_28291FB08;
      *&v53 = &off_28291F9F0;
      v51 = 0uLL;
      v41 = 64;
      goto LABEL_29;
    case 26:
      OUTLINED_FUNCTION_0_158();
      sub_216C70EDC();
LABEL_23:

      v33 = *(&v58 + 1);
      v34 = v59;
      __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
      v35 = OUTLINED_FUNCTION_2_108();
      v37 = v33;
      v38 = v34;
LABEL_24:
      v36(v35, v37, v38);
      v48 = v49[0];
      v47 = v49[1];
      v21 = v50;
      v46 = v51;
      v45 = v52;
      v44 = v53;
      v18 = v54;
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v57);
LABEL_30:
      _Q4 = v44;
      v23 = v46;
      v24 = v45;
      v22 = v47;
      v20 = v48;
      v19 = v21 & 0xFFFFFFFFFFFFFF00;
      goto LABEL_31;
    case 7:
      v13 = OUTLINED_FUNCTION_0_158();
      sub_216C70C50(v13, v14);
      goto LABEL_23;
  }

LABEL_15:
  result = sub_216B2B790(v8);
  v18 = 0;
  v19 = 0;
  v20 = 0uLL;
  LOBYTE(v21) = 126;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  _Q4 = 0uLL;
LABEL_31:
  *a2 = v20;
  *(a2 + 16) = v22;
  *(a2 + 32) = v19 | v21;
  *(a2 + 40) = v23;
  *(a2 + 56) = v24;
  *(a2 + 72) = _Q4;
  *(a2 + 88) = v18;
  return result;
}

double sub_216B2B5F4(double a1)
{
  v3 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MappedSection(0);
  sub_2169728B8(v1 + *(v6 + 28), v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_216B2B790(v5);
  if (!(!v9 & v8))
  {
    switch(EnumCaseMultiPayload)
    {
      case '4':
        return a1;
      case '5':
        return a1 * 2.44444444;
      case '6':
      case '7':
      case '8':
      case ':':
      case ';':
      case '<':
        return 0.0;
      case '9':
        v11 = [objc_opt_self() defaultMetrics];
        [v11 scaledValueForValue_];
        v13 = v12;

        return fmin(v13, 68.0);
      case '=':
        v10 = 1.77777778;
        return a1 / v10;
      default:
        JUMPOUT(0);
    }
  }

  if (EnumCaseMultiPayload != 7)
  {
    switch(EnumCaseMultiPayload)
    {
      case 31:
        return 102.0;
      case 18:
        return 40.0;
      case 26:
        break;
      case 11:
        v10 = 1.5;
        return a1 / v10;
      default:
        return 0.0;
    }
  }

  return a1;
}

uint64_t sub_216B2B790(uint64_t a1)
{
  v2 = type metadata accessor for MappedSection.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B2B840(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI33ClassicalArtistMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

uint64_t sub_216B2B948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_216B2BA5C(a1, a2, a3, &v13 - v7);
  v9 = sub_21678C1C4();
  sub_2166997CC(v8, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v9;
  v11 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v11;
}

uint64_t sub_216B2BA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v99 = a2;
  v104 = a4;
  v102 = sub_2170075A4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = v6;
  v100 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for OpenInClassicalExperienceAction(0);
  v95 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v97 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v7;
  MEMORY[0x28223BE20](v8);
  v94 = &v72 - v9;
  v92 = sub_21700CFB4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_217005EF4();
  v76 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_21700D704();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v15 - 8);
  v78 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v72 - v18;
  v87 = sub_21700D284();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8, qword_217046A70);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v72 - v21;
  v23 = sub_21700DFD4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v4;
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  type metadata accessor for ClassicalArtistPresenter();
  v27 = sub_21700C384();
  v28 = *(v27 - 8);
  v81 = *(v28 + 16);
  v80 = v28 + 16;
  v81(v22, a1, v27);
  v82 = v27;
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v27);
  LOBYTE(v27) = sub_216B4ED40(v22, v26);
  sub_2166997CC(v22, &qword_27CABB7F8, qword_217046A70);
  if (v27)
  {
    v73 = v24;
    v74 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v30 = (v77 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v31 = v30[1];
    v32 = MEMORY[0x277D837D0];
    *(inited + 48) = *v30;
    *(inited + 56) = v31;
    *(inited + 72) = v32;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v32;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = 0x747369747261;
    *(inited + 104) = 0xE600000000000000;
    sub_21700DF14();
    v33 = sub_21700E384();
    v34 = v105;
    v35 = a1;
    sub_216B4EF80(v105);
    v36 = v79;
    sub_21700D6F4();
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v108 = v33;
    sub_2166EF9C4(&v108, &v107);
    v37 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v106 = v37;
    sub_2166EF9D4();
    v38 = v106;
    v109 = v32;
    *&v108 = 0x657461676976616ELL;
    *(&v108 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v108, &v107);
    swift_isUniquelyReferenced_nonNull_native();
    v106 = v38;
    sub_2166EF9D4();
    v39 = v106;
    v109 = v32;
    *&v108 = 0xD000000000000010;
    *(&v108 + 1) = 0x80000002170801D0;
    sub_2166EF9C4(&v108, &v107);
    swift_isUniquelyReferenced_nonNull_native();
    v106 = v39;
    sub_2166EF9D4();
    v40 = v106;
    v41 = v78;
    sub_2167DE934(v34, v78);
    v42 = v83;
    if (__swift_getEnumTagSinglePayload(v41, 1, v83) == 1)
    {
      sub_2166997CC(v41, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v45 = v76;
      v46 = v75;
      (*(v76 + 32))(v75, v41, v42);
      v47 = sub_217005DE4();
      v109 = v32;
      *&v108 = v47;
      *(&v108 + 1) = v48;
      sub_2166EF9C4(&v108, &v107);
      swift_isUniquelyReferenced_nonNull_native();
      v106 = v40;
      sub_2166EF9D4();
      v40 = v106;
      (*(v45 + 8))(v46, v42);
    }

    v49 = v36;
    v83 = v35;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v50 = sub_21700CF84();
    v51 = __swift_project_value_buffer(v50, qword_280E73DB0);
    v52 = v90;
    MEMORY[0x21CE9DD70](0xD000000000000014, 0x80000002170890D0, 0x6E6F74747562, 0xE600000000000000, v40, v51);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v53 = v91;
    v54 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_217013DA0;
    v56 = v55 + v54;
    v57 = v92;
    (*(v53 + 16))(v56, v52, v92);
    v58 = v88;
    v59 = v89;
    (*(v88 + 16))(v85, v49, v89);
    v60 = v84;
    sub_21700D244();
    (*(v53 + 8))(v52, v57);
    (*(v58 + 8))(v49, v59);
    sub_2166997CC(v105, &qword_27CABA820, &unk_217018CE0);
    (*(v73 + 8))(v26, v74);
    v61 = v94;
    v81(&v94[*(v93 + 20)], v83, v82);
    (*(v86 + 32))(v61, v60, v87);
    type metadata accessor for MenuActionType(0);
    v62 = v104;
    swift_storeEnumTagMultiPayload();
    v63 = v97;
    sub_216B2C928(v61, v97);
    v64 = v101;
    v65 = v100;
    v66 = v102;
    (*(v101 + 16))(v100, v99, v102);
    v67 = (*(v95 + 80) + 24) & ~*(v95 + 80);
    v68 = (v96 + *(v64 + 80) + v67) & ~*(v64 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v103;
    sub_216B2C928(v63, v69 + v67);
    (*(v64 + 32))(v69 + v68, v65, v66);
    v70 = type metadata accessor for MenuAction(0);
    v71 = (v62 + *(v70 + 20));
    *v71 = sub_216B2C98C;
    v71[1] = v69;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v70);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    v43 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v104, 1, 1, v43);
  }
}

uint64_t sub_216B2C760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for OpenInClassicalExperienceAction(0);
  v6[4] = sub_216B2CA5C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_216B2CAB4(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216B2C80C()
{

  v1 = OBJC_IVAR____TtC7MusicUI33ClassicalArtistMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for ClassicalArtistMenuActionProvider(uint64_t a1)
{
  result = qword_280E2F410;
  if (!qword_280E2F410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B2C928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenInClassicalExperienceAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B2C98C()
{
  v1 = *(type metadata accessor for OpenInClassicalExperienceAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2170075A4() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_216B2C760(v5, v0 + v2, v6);
}

unint64_t sub_216B2CA5C()
{
  result = qword_27CAC3028;
  if (!qword_27CAC3028)
  {
    type metadata accessor for OpenInClassicalExperienceAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3028);
  }

  return result;
}

uint64_t sub_216B2CAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenInClassicalExperienceAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_216B2CB54()
{
  v1 = *(*v0 + 128);
  v2 = sub_21700F164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 136);
  v4 = sub_21700F164();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_weakDestroy();
  swift_weakDestroy();
  return v0;
}

uint64_t sub_216B2CC78()
{
  v0 = sub_216B2CB54();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216B2CCCC()
{
  v1 = v0;
  if (*(v0 + qword_280E2BCA0))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_21700EF44();
    swift_unknownObjectRelease();
  }

  v2 = qword_280E2BC10;
  sub_217007CA4();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v1 + v2);

  swift_unknownObjectRelease();
  v4 = qword_280E2BCA8;
  sub_21700EF04();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v1 + v4);
  return v1;
}

uint64_t sub_216B2CDC4()
{
  sub_216B2CCCC();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216B2CE64(uint64_t a1)
{
  type metadata accessor for EmptyStateLockup(319);
  if (v1 <= 0x3F)
  {
    sub_2166DB764(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216B2CF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a1;
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - v7;
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - v9;
  v10 = sub_2170080D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  v17 = type metadata accessor for ColorSchemeArtwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BubbleLockup(0);
  sub_216683A80(v2 + *(v21 + 52), v16, &qword_27CABA338, &unk_217020060);
  OUTLINED_FUNCTION_1_87(v16);
  if (v22)
  {
    sub_216697664(v16, &qword_27CABA338, &unk_217020060);
    return sub_216683A80(v2 + *(v21 + 60), v37, &qword_27CAB6D60, &qword_217014E40);
  }

  v24 = v2;
  v25 = v37;
  sub_216B32258(v16, v20, type metadata accessor for ColorSchemeArtwork);
  (*(v11 + 16))(v13, v36, v10);
  v26 = (*(v11 + 88))(v13, v10);
  if (v26 == *MEMORY[0x277CDF3D0])
  {
    v27 = v20;
    v28 = v35;
    goto LABEL_8;
  }

  if (v26 == *MEMORY[0x277CDF3C0])
  {
    v27 = &v20[*(v17 + 20)];
    v28 = v33;
LABEL_8:
    sub_216683A80(v27, v28, &qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_3_107();
    type metadata accessor for Artwork(0);
    OUTLINED_FUNCTION_1_87(v28);
    if (v22)
    {
      sub_216683A80(v3 + *(v21 + 60), v25, &qword_27CAB6D60, &qword_217014E40);
      result = OUTLINED_FUNCTION_1_87(v28);
      if (!v22)
      {
        return sub_216697664(v28, &qword_27CAB6D60, &qword_217014E40);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_134();
      sub_216B32258(v28, v25, v29);
      return OUTLINED_FUNCTION_9_69();
    }

    return result;
  }

  v30 = v34;
  sub_216683A80(v20, v34, &qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_3_107();
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_1_87(v30);
  if (v22)
  {
    sub_216683A80(v24 + *(v21 + 60), v25, &qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_1_87(v30);
    if (!v22)
    {
      sub_216697664(v30, &qword_27CAB6D60, &qword_217014E40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_134();
    sub_216B32258(v30, v25, v31);
    OUTLINED_FUNCTION_9_69();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_216B2D390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v30 - v7;
  MEMORY[0x28223BE20](v8);
  v31 = &v30 - v9;
  v10 = sub_2170080D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for ColorSchemeArtwork(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EmptyStateLockup(0);
  sub_216683A80(v2 + *(v20 + 44), v16, &qword_27CABA338, &unk_217020060);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_216697664(v16, &qword_27CABA338, &unk_217020060);
    return sub_216683A80(v2 + *(v20 + 40), v35, &qword_27CAB6D60, &qword_217014E40);
  }

  v22 = v2;
  v23 = v35;
  sub_216B32258(v16, v19, type metadata accessor for ColorSchemeArtwork);
  (*(v11 + 16))(v13, v34, v10);
  v24 = (*(v11 + 88))(v13, v10);
  if (v24 == *MEMORY[0x277CDF3D0])
  {
    v25 = v19;
    v26 = v33;
    goto LABEL_7;
  }

  if (v24 == *MEMORY[0x277CDF3C0])
  {
    v25 = &v19[*(v17 + 20)];
    v26 = v31;
LABEL_7:
    sub_216683A80(v25, v26, &qword_27CAB6D60, &qword_217014E40);
    sub_216B32200(v19, type metadata accessor for ColorSchemeArtwork);
    v27 = type metadata accessor for Artwork(0);
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {
      sub_216683A80(v3 + *(v20 + 40), v23, &qword_27CAB6D60, &qword_217014E40);
      result = __swift_getEnumTagSinglePayload(v26, 1, v27);
      if (result != 1)
      {
        return sub_216697664(v26, &qword_27CAB6D60, &qword_217014E40);
      }
    }

    else
    {
      sub_216B32258(v26, v23, type metadata accessor for Artwork);
      return __swift_storeEnumTagSinglePayload(v23, 0, 1, v27);
    }

    return result;
  }

  v28 = v32;
  sub_216683A80(v19, v32, &qword_27CAB6D60, &qword_217014E40);
  sub_216B32200(v19, type metadata accessor for ColorSchemeArtwork);
  v29 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_216683A80(v22 + *(v20 + 40), v23, &qword_27CAB6D60, &qword_217014E40);
    if (__swift_getEnumTagSinglePayload(v28, 1, v29) != 1)
    {
      sub_216697664(v28, &qword_27CAB6D60, &qword_217014E40);
    }
  }

  else
  {
    sub_216B32258(v28, v23, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v29);
  }

  return (*(v11 + 8))(v13, v10);
}

void *sub_216B2D8A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3030, &qword_217046C40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-v4];
  *v5 = sub_2170093B4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3038, &qword_217046C48);
  sub_216B2D9E8(v1, &v5[*(v6 + 44)]);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v5, a1, &qword_27CAC3030, &qword_217046C40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3040, &qword_217046C50);
  return memcpy((a1 + *(v7 + 36)), __src, 0x70uLL);
}

uint64_t sub_216B2D9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v146 = a1;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3048, &qword_217046C58);
  v118 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v117 = &v106 - v2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3050, &qword_217046C60);
  MEMORY[0x28223BE20](v129);
  v131 = &v106 - v3;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3058, &qword_217046C68);
  MEMORY[0x28223BE20](v144);
  v132 = &v106 - v4;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3060, &qword_217046C70);
  MEMORY[0x28223BE20](v128);
  v114 = (&v106 - v5);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3068, &qword_217046C78);
  v116 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v115 = &v106 - v6;
  v126 = type metadata accessor for EmptyStateLockupInlineBackgroundView(0);
  MEMORY[0x28223BE20](v126);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3070, &qword_217046C80);
  MEMORY[0x28223BE20](v123);
  v125 = &v106 - v9;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3078, &unk_217046C88);
  MEMORY[0x28223BE20](v138);
  v127 = &v106 - v10;
  v112 = sub_2170080D4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for EmptyStateLockupArtworkView(0);
  MEMORY[0x28223BE20](v124);
  v113 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  MEMORY[0x28223BE20](v108);
  v15 = &v106 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3080, &qword_217046C98);
  MEMORY[0x28223BE20](v107);
  v17 = (&v106 - v16);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3088, &qword_217046CA0);
  MEMORY[0x28223BE20](v121);
  v19 = &v106 - v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3090, &qword_217046CA8);
  v110 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v109 = &v106 - v20;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3098, &qword_217046CB0);
  MEMORY[0x28223BE20](v140);
  v141 = &v106 - v21;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC30A0, &qword_217046CB8);
  MEMORY[0x28223BE20](v134);
  v136 = &v106 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC30A8, &qword_217046CC0);
  MEMORY[0x28223BE20](v23);
  v25 = &v106 - v24;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC30B0, &qword_217046CC8);
  MEMORY[0x28223BE20](v135);
  v120 = &v106 - v26;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC30B8, &unk_217046CD0);
  MEMORY[0x28223BE20](v139);
  v137 = &v106 - v27;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA540, &unk_217020A28);
  v28 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v30 = &v106 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC30C0, &qword_217046CE0);
  MEMORY[0x28223BE20](v31 - 8);
  v143 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v142 = &v106 - v34;
  v35 = type metadata accessor for EmptyStateLockup(0);
  switch(*(v146 + v35[6]))
  {
    case 1:
      sub_216B2F224(v146, v17);
      v84 = *MEMORY[0x277CDF9D8];
      v85 = sub_217008844();
      (*(*(v85 - 8) + 104))(v15, v84, v85);
      sub_216B2FC3C(&qword_280E2B340, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
      result = sub_21700E494();
      if (result)
      {
        sub_216B31EE0();
        sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
        sub_21700A5B4();
        sub_216697664(v15, &qword_27CAB75D0, &qword_217017420);
        sub_216697664(v17, &qword_27CAC3080, &qword_217046C98);
        v87 = sub_217009C74();
        sub_217007F24();
        v88 = v121;
        v89 = &v19[*(v121 + 36)];
        *v89 = v87;
        *(v89 + 1) = v90;
        *(v89 + 2) = v91;
        *(v89 + 3) = v92;
        *(v89 + 4) = v93;
        v89[40] = 0;
        sub_217009C64();
        sub_21700B3B4();
        v94 = sub_216B31DB8();
        v46 = v109;
        sub_21700A834();
        sub_216697664(v19, &qword_27CAC3088, &qword_217046CA0);
        v48 = v110;
        v49 = v122;
        (*(v110 + 16))(v25, v46, v122);
        swift_storeEnumTagMultiPayload();
        sub_2166D9530(&qword_280E2A860, &qword_27CABA540, &unk_217020A28, MEMORY[0x277CDE158]);
        v147 = v88;
        v148 = v94;
        swift_getOpaqueTypeConformance2();
        v95 = v120;
        sub_217009554();
        sub_216683A80(v95, v136, &qword_27CAC30B0, &qword_217046CC8);
        swift_storeEnumTagMultiPayload();
        sub_216B31CBC();
        sub_216B31F90();
        v50 = v137;
        sub_217009554();
        sub_216697664(v95, &qword_27CAC30B0, &qword_217046CC8);
        v51 = &qword_27CAC30B8;
        v52 = &unk_217046CD0;
        sub_216683A80(v50, v141, &qword_27CAC30B8, &unk_217046CD0);
        goto LABEL_9;
      }

      __break(1u);
      return result;
    case 2:
      v53 = (v146 + v35[7]);
      v54 = v53[1];
      *v8 = *v53;
      *(v8 + 1) = v54;
      *(v8 + 2) = swift_getKeyPath();
      *(v8 + 3) = 0;
      *(v8 + 4) = 0;
      *(v8 + 5) = 0;
      v8[48] = 0;
      v55 = v126;
      v56 = *(v126 + 24);
      *&v8[v56] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
      swift_storeEnumTagMultiPayload();
      v57 = &v8[*(v55 + 28)];
      *v57 = swift_getKeyPath();
      v57[8] = 0;
      sub_216B321A4(v8, v125, type metadata accessor for EmptyStateLockupInlineBackgroundView);
      swift_storeEnumTagMultiPayload();
      sub_216B2FC3C(&qword_27CAC3110, type metadata accessor for EmptyStateLockupArtworkView, &unk_217046EAC);
      sub_216B2FC3C(&qword_27CAC3118, type metadata accessor for EmptyStateLockupInlineBackgroundView, &unk_217046E5C);
      sub_21700DF14();
      v58 = v127;
      sub_217009554();
      sub_216683A80(v58, v136, &qword_27CAC3078, &unk_217046C88);
      swift_storeEnumTagMultiPayload();
      sub_216B31CBC();
      sub_216B31F90();
      v59 = v137;
      sub_217009554();
      sub_216697664(v58, &qword_27CAC3078, &unk_217046C88);
      sub_216683A80(v59, v141, &qword_27CAC30B8, &unk_217046CD0);
      swift_storeEnumTagMultiPayload();
      sub_216B31C30();
      sub_216B3207C();
      v40 = v142;
      sub_217009554();
      sub_216697664(v59, &qword_27CAC30B8, &unk_217046CD0);
      v60 = type metadata accessor for EmptyStateLockupInlineBackgroundView;
      v61 = v8;
      goto LABEL_6;
    case 3:
      v62 = v146;
      v63 = type metadata accessor for EmptyStateLockupView(0);
      sub_216C0C924(v63, v64, v65, v66, v67, v68, v69, v70, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
      v71 = v113;
      sub_216B2D390(v12, v113);
      (*(v111 + 8))(v12, v112);
      v72 = (v62 + v35[7]);
      v73 = *v72;
      v74 = v72[1];
      v75 = (v62 + v35[9]);
      v76 = *v75;
      v77 = v75[1];
      v78 = v124;
      v79 = (v71 + *(v124 + 20));
      *v79 = v73;
      v79[1] = v74;
      v80 = (v71 + *(v78 + 24));
      *v80 = v76;
      v80[1] = v77;
      v81 = v71 + *(v78 + 28);
      *v81 = swift_getKeyPath();
      *(v81 + 8) = 0;
      *(v81 + 16) = 0;
      *(v81 + 24) = 0;
      *(v81 + 32) = 0;
      sub_216B321A4(v71, v125, type metadata accessor for EmptyStateLockupArtworkView);
      swift_storeEnumTagMultiPayload();
      sub_216B2FC3C(&qword_27CAC3110, type metadata accessor for EmptyStateLockupArtworkView, &unk_217046EAC);
      sub_216B2FC3C(&qword_27CAC3118, type metadata accessor for EmptyStateLockupInlineBackgroundView, &unk_217046E5C);
      sub_21700DF14();
      sub_21700DF14();
      v82 = v127;
      sub_217009554();
      sub_216683A80(v82, v136, &qword_27CAC3078, &unk_217046C88);
      swift_storeEnumTagMultiPayload();
      sub_216B31CBC();
      sub_216B31F90();
      v83 = v137;
      sub_217009554();
      sub_216697664(v82, &qword_27CAC3078, &unk_217046C88);
      sub_216683A80(v83, v141, &qword_27CAC30B8, &unk_217046CD0);
      swift_storeEnumTagMultiPayload();
      sub_216B31C30();
      sub_216B3207C();
      v40 = v142;
      sub_217009554();
      sub_216697664(v83, &qword_27CAC30B8, &unk_217046CD0);
      v60 = type metadata accessor for EmptyStateLockupArtworkView;
      v61 = v71;
LABEL_6:
      sub_216B32200(v61, v60);
      goto LABEL_12;
    case 4:
      v41 = v146;
      v42 = sub_2170093B4();
      v43 = v114;
      *v114 = v42;
      v43[1] = 0;
      *(v43 + 16) = 1;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3130, &qword_217046CF8);
      sub_216B2F64C(v41, v43 + *(v44 + 44));
      sub_217009C64();
      sub_21700B3B4();
      v45 = sub_2166D9530(&qword_27CAC30C8, &qword_27CAC3060, &qword_217046C70, MEMORY[0x277CE1198]);
      v46 = v115;
      v47 = v128;
      sub_21700A834();
      sub_216697664(v43, &qword_27CAC3060, &qword_217046C70);
      v48 = v116;
      v49 = v130;
      (*(v116 + 16))(v131, v46, v130);
      swift_storeEnumTagMultiPayload();
      v147 = v47;
      v148 = v45;
      swift_getOpaqueTypeConformance2();
      sub_2166D9530(&qword_27CAC30D0, &qword_27CAC3048, &qword_217046C58, MEMORY[0x277CDE158]);
      v50 = v132;
      sub_217009554();
      v51 = &qword_27CAC3058;
      v52 = &qword_217046C68;
      sub_216683A80(v50, v141, &qword_27CAC3058, &qword_217046C68);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      sub_216B31C30();
      sub_216B3207C();
      v40 = v142;
      sub_217009554();
      sub_216697664(v50, v51, v52);
      (*(v48 + 8))(v46, v49);
      goto LABEL_12;
    case 5:
      MEMORY[0x28223BE20](v146);
      MEMORY[0x28223BE20](v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420, &unk_21706D110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
      sub_2166D9530(&qword_280E2A5E0, &qword_27CABA420, &unk_21706D110, MEMORY[0x277CDEFF0]);
      sub_2167C4D74();
      v97 = v117;
      sub_2170097D4();
      v98 = v118;
      v99 = v133;
      (*(v118 + 16))(v131, v97, v133);
      swift_storeEnumTagMultiPayload();
      v100 = sub_2166D9530(&qword_27CAC30C8, &qword_27CAC3060, &qword_217046C70, MEMORY[0x277CE1198]);
      v147 = v128;
      v148 = v100;
      swift_getOpaqueTypeConformance2();
      sub_2166D9530(&qword_27CAC30D0, &qword_27CAC3048, &qword_217046C58, MEMORY[0x277CDE158]);
      v101 = v132;
      sub_217009554();
      sub_216683A80(v101, v141, &qword_27CAC3058, &qword_217046C68);
      swift_storeEnumTagMultiPayload();
      sub_216B31C30();
      sub_216B3207C();
      v40 = v142;
      sub_217009554();
      sub_216697664(v101, &qword_27CAC3058, &qword_217046C68);
      (*(v98 + 8))(v97, v99);
      goto LABEL_12;
    default:
      sub_2170097E4();
      v36 = v119;
      (*(v28 + 16))(v25, v30, v119);
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_280E2A860, &qword_27CABA540, &unk_217020A28, MEMORY[0x277CDE158]);
      v37 = sub_216B31DB8();
      v147 = v121;
      v148 = v37;
      swift_getOpaqueTypeConformance2();
      v38 = v120;
      sub_217009554();
      sub_216683A80(v38, v136, &qword_27CAC30B0, &qword_217046CC8);
      swift_storeEnumTagMultiPayload();
      sub_216B31CBC();
      sub_216B31F90();
      v39 = v137;
      sub_217009554();
      sub_216697664(v38, &qword_27CAC30B0, &qword_217046CC8);
      sub_216683A80(v39, v141, &qword_27CAC30B8, &unk_217046CD0);
      swift_storeEnumTagMultiPayload();
      sub_216B31C30();
      sub_216B3207C();
      v40 = v142;
      sub_217009554();
      sub_216697664(v39, &qword_27CAC30B8, &unk_217046CD0);
      (*(v28 + 8))(v30, v36);
LABEL_12:
      v102 = v145;
      v103 = v143;
      sub_216683A80(v40, v143, &qword_27CAC30C0, &qword_217046CE0);
      *v102 = 0;
      *(v102 + 8) = 1;
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3128, &qword_217046CF0);
      sub_216683A80(v103, v102 + *(v104 + 48), &qword_27CAC30C0, &qword_217046CE0);
      v105 = v102 + *(v104 + 64);
      *v105 = 0;
      *(v105 + 8) = 1;
      sub_216697664(v40, &qword_27CAC30C0, &qword_217046CE0);
      return sub_216697664(v103, &qword_27CAC30C0, &qword_217046CE0);
  }
}

uint64_t sub_216B2F224@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508, &qword_21703DF68);
  MEMORY[0x28223BE20](v39);
  v7 = &v37 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3138, &qword_217046D50);
  MEMORY[0x28223BE20](v38);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v37 = type metadata accessor for EmptyStateLockup(0);
  v15 = *(v37 + 28);
  v42 = a1;
  v16 = (a1 + v15);
  if (v16[1])
  {
    v17 = *v16;
    v18 = v16[1];
  }

  else
  {
    v17 = sub_216983738(61);
    v18 = v19;
  }

  sub_21700DF14();
  v20 = sub_217009E24();
  KeyPath = swift_getKeyPath();
  v45 = v17;
  v46 = v18;
  v47 = 0;
  v48 = MEMORY[0x277D84F90];
  v49 = KeyPath;
  v50 = v20;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();

  v22 = sub_21700AD14();
  v23 = swift_getKeyPath();
  (*(v40 + 32))(v7, v5, v41);
  v24 = &v7[*(v39 + 36)];
  *v24 = v23;
  v24[1] = v22;
  v25 = swift_getKeyPath();
  sub_2167C5834(v7, v11, &qword_27CAC1508, &qword_21703DF68);
  v26 = &v11[*(v38 + 36)];
  *v26 = v25;
  v26[8] = 1;
  sub_2167C5834(v11, v14, &qword_27CAC3138, &qword_217046D50);
  v27 = (v42 + *(v37 + 36));
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v31 = v43;
  sub_216683A80(v14, v43, &qword_27CAC3138, &qword_217046D50);
  v32 = v44;
  *v44 = 0;
  *(v32 + 8) = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3140, &unk_217046DE8);
  sub_216683A80(v31, v32 + v33[12], &qword_27CAC3138, &qword_217046D50);
  v34 = (v32 + v33[16]);
  *v34 = v29;
  v34[1] = v28;
  v34[2] = 0;
  v34[3] = v30;
  v35 = v32 + v33[20];
  *v35 = 0;
  v35[8] = 1;
  sub_21700DF14();
  sub_2167770D0(v29, v28, 0, v30);
  sub_216697664(v14, &qword_27CAC3138, &qword_217046D50);
  sub_2167C4DF0(v29, v28, 0, v30);
  return sub_216697664(v31, &qword_27CAC3138, &qword_217046D50);
}

uint64_t sub_216B2F64C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0, &unk_217026510);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  sub_217008294();
  v10 = (a1 + *(type metadata accessor for EmptyStateLockup(0) + 28));
  v11 = v10[1];
  if (v11)
  {
    v41 = *v10;
    v40 = v11;
  }

  else
  {
    v41 = sub_216983738(145);
    v40 = v12;
  }

  sub_21700DF14();
  v38 = sub_217009D44();
  KeyPath = swift_getKeyPath();
  v13 = sub_217009834();
  v14 = sub_217009C94();
  sub_217007F24();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v54 = 0;
  v23 = swift_getKeyPath();
  v24 = v4;
  v25 = *(v4 + 16);
  v25(v6, v9, v3);
  v37 = v9;
  v26 = v3;
  v27 = v42;
  v25(v42, v6, v26);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3148, &qword_217046DF8) + 48);
  v39 = v6;
  v29 = v41;
  __src[0] = v41;
  v30 = v40;
  __src[1] = v40;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  v31 = KeyPath;
  __src[4] = KeyPath;
  v32 = v38;
  __src[5] = v38;
  LODWORD(__src[6]) = v13;
  LOBYTE(__src[7]) = v14;
  __src[8] = v16;
  __src[9] = v18;
  __src[10] = v20;
  __src[11] = v22;
  LOBYTE(__src[12]) = 0;
  __src[13] = v23;
  LOBYTE(__src[14]) = 1;
  memcpy(&v27[v28], __src, 0x71uLL);
  sub_216683A80(__src, v44, &qword_27CAC3150, &unk_217046E00);
  v33 = *(v24 + 8);
  v33(v37, v26);
  v44[0] = v29;
  v44[1] = v30;
  v44[2] = 0;
  v44[3] = MEMORY[0x277D84F90];
  v44[4] = v31;
  v44[5] = v32;
  v45 = v13;
  v46 = v14;
  v47 = v16;
  v48 = v18;
  v49 = v20;
  v50 = v22;
  v51 = 0;
  v52 = v23;
  v53 = 1;
  sub_216697664(v44, &qword_27CAC3150, &unk_217046E00);
  return (v33)(v39, v26);
}

uint64_t sub_216B2F9D0(uint64_t a1)
{
  if (!*(a1 + *(type metadata accessor for EmptyStateLockup(0) + 28) + 8))
  {
    sub_216983738(61);
  }

  sub_2167B2E14();
  sub_21700DF14();
  sub_21700DF14();
  return sub_21700AE34();
}

double sub_216B2FA9C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for EmptyStateLockup(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
  v7 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v7;

  sub_21700DF14();
  return result;
}

uint64_t sub_216B2FB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216B32258(a1, a2, type metadata accessor for EmptyStateLockup);
  v3 = *(type metadata accessor for EmptyStateLockupView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216B2FBE4(uint64_t a1)
{
  result = sub_216B2FC3C(qword_280E3C4F0, type metadata accessor for EmptyStateLockupView, &unk_217046B98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B2FC3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_216B2FC84@<D0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v110 = sub_2170080D4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v107 = &v91 - v4;
  v103 = sub_2170090F4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v7 = &v91 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508, &qword_21703DF68);
  MEMORY[0x28223BE20](v94);
  v9 = &v91 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3138, &qword_217046D50);
  MEMORY[0x28223BE20](v92);
  v95 = &v91 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31E0, &qword_217046F50);
  MEMORY[0x28223BE20](v93);
  v113 = &v91 - v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31E8, &qword_217046F58);
  MEMORY[0x28223BE20](v98);
  v100 = &v91 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31F0, &qword_217046F60);
  MEMORY[0x28223BE20](v99);
  v105 = &v91 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31F8, &qword_217046F68);
  MEMORY[0x28223BE20](v104);
  v106 = &v91 - v14;
  v15 = v1[1];
  v112 = v1;
  if (v15)
  {
    v16 = *v1;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  sub_21700DF14();
  v18 = sub_217009E24();
  KeyPath = swift_getKeyPath();
  __src[0] = v16;
  __src[1] = v15;
  __src[2] = 0;
  __src[3] = v17;
  __src[4] = KeyPath;
  __src[5] = v18;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v16, v15, 0, v17);

  v20 = sub_21700AD34();
  v21 = swift_getKeyPath();
  (*(v96 + 32))(v9, v7, v97);
  v22 = &v9[*(v94 + 36)];
  *v22 = v21;
  v22[1] = v20;
  v23 = swift_getKeyPath();
  v24 = v95;
  sub_2167C5834(v9, v95, &qword_27CAC1508, &qword_21703DF68);
  v25 = v24 + *(v92 + 36);
  *v25 = v23;
  *(v25 + 8) = 1;
  LOBYTE(v23) = sub_217009C84();
  sub_217007F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v24;
  v35 = v113;
  sub_2167C5834(v34, v113, &qword_27CAC3138, &qword_217046D50);
  v36 = v35 + *(v93 + 36);
  *v36 = v23;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  v37 = type metadata accessor for EmptyStateLockupInlineBackgroundView(0);
  v38 = v112 + *(v37 + 28);
  v39 = *v38;
  v40 = v112;
  if (v38[8] != 1)
  {

    sub_21700ED94();
    v41 = sub_217009C34();
    sub_217007BC4();

    v42 = v101;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v39, 0);
    (*(v102 + 8))(v42, v103);
  }

  v43 = v40[3];
  v44 = v40[5];
  if (*(v40 + 48) != 1)
  {
    v97 = v37;
    v45 = v40[2];
    v46 = v40[4];

    sub_21700ED94();
    v47 = sub_217009C34();
    sub_217007BC4();

    v48 = v101;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v45, v43, v46, v44, 0);
    v49 = *(v102 + 8);
    v50 = v103;
    v49(v48, v103);

    sub_21700ED94();
    v51 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v45, v43, v46, v44, 0);
    v49(v48, v50);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v52 = v100;
  sub_2167C5834(v113, v100, &qword_27CAC31E0, &qword_217046F50);
  v53 = (v52 + *(v98 + 36));
  v54 = v115;
  *v53 = v114;
  v53[1] = v54;
  v53[2] = v116;
  sub_21700B3B4();
  sub_217008BB4();
  v55 = v105;
  sub_2167C5834(v52, v105, &qword_27CAC31E8, &qword_217046F58);
  memcpy((v55 + *(v99 + 36)), __src, 0x70uLL);
  v56 = sub_21700B3B4();
  v58 = v57;
  v59 = v107;
  sub_216C0C924(v56, v57, v60, v61, v62, v63, v64, v65, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  v66 = v109;
  v67 = v108;
  v68 = v110;
  (*(v109 + 104))(v108, *MEMORY[0x277CDF3C0], v110);
  v69 = sub_2170080C4();
  v70 = *(v66 + 8);
  v70(v67, v68);
  v70(v59, v68);
  v71 = objc_opt_self();
  v72 = &selRef_tertiarySystemBackgroundColor;
  if ((v69 & 1) == 0)
  {
    v72 = &selRef_secondarySystemBackgroundColor;
  }

  v73 = [v71 *v72];
  v74 = v106;
  v75 = &v106[*(v104 + 36)];
  v76 = sub_21700AC44();
  v77 = &v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8798, &qword_21701A4B0) + 36)];
  v78 = *(sub_217008B44() + 20);
  v79 = *MEMORY[0x277CE0118];
  v80 = sub_217009294();
  (*(*(v80 - 8) + 104))(&v77[v78], v79, v80);
  __asm { FMOV            V0.2D, #14.0 }

  *v77 = _Q0;
  *&v77[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  *v75 = v76;
  *(v75 + 4) = 256;
  v86 = &v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3200, &qword_217046F70) + 36)];
  *v86 = v56;
  v86[1] = v58;
  sub_2167C5834(v55, v74, &qword_27CAC31F0, &qword_217046F60);
  sub_21700B3B4();
  sub_2170083C4();
  v87 = v111;
  sub_2167C5834(v74, v111, &qword_27CAC31F8, &qword_217046F68);
  v88 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3208, &qword_217046F78) + 36));
  v89 = v119;
  *v88 = v118;
  v88[1] = v89;
  result = *&v120;
  v88[2] = v120;
  return result;
}

__n128 sub_216B30870@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3188, &qword_217046F00);
  sub_216B30A54(v2, (a1 + *(v8 + 44)));
  v9 = v2 + *(type metadata accessor for EmptyStateLockupArtworkView(0) + 28);
  v11 = *v9;
  v10 = *(v9 + 16);
  LOBYTE(v9) = *(v9 + 32);
  v17 = v11;
  v18 = v10;
  if ((v9 & 1) == 0)
  {
    v12 = v11;

    sub_21700ED94();
    v13 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v12, v17.n128_i64[1], v18, *(&v18 + 1), 0);
    (*(v5 + 8))(v7, v4);
    v17 = v19;
    v18 = v20;
  }

  v14 = sub_217009C84();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3190, &qword_217046F08) + 36);
  *v15 = v14;
  result = v17;
  *(v15 + 24) = v18;
  *(v15 + 8) = result;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_216B30A54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a1;
  v91 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3198, &qword_217046F10);
  MEMORY[0x28223BE20](v88);
  v3 = &v76 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31A0, &qword_217046F18);
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x28223BE20](v4);
  v99 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v76 - v9;
  v10 = sub_21700C444();
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  v83 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v76 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v76 - v19;
  v82 = sub_217007474();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v76 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v76 - v26;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC850, &qword_2170274C8);
  MEMORY[0x28223BE20](v80);
  v28 = &v76 - v27;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31A8, &qword_217046F20);
  v87 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v100 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v94 = &v76 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31B0, &qword_217046F28);
  v95 = *(v32 - 8);
  v96 = v32;
  MEMORY[0x28223BE20](v32);
  v93 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v76 - v35;
  v101 = 0;
  v102 = 1;
  sub_217009C64();
  sub_21700B394();
  v92 = v36;
  v37 = v76;
  sub_21700A834();
  sub_216683A80(v37, v17, &qword_27CAB6D60, &qword_217014E40);
  v38 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v38) == 1)
  {
    sub_216697664(v17, &qword_27CAB6D60, &qword_217014E40);
    v39 = sub_21700C4B4();
    v40 = v20;
    v41 = 1;
  }

  else
  {
    v42 = v37;
    v43 = sub_21700C4B4();
    (*(*(v43 - 8) + 16))(v20, v17, v43);
    sub_216B32200(v17, type metadata accessor for Artwork);
    v40 = v20;
    v41 = 0;
    v39 = v43;
    v37 = v42;
  }

  __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
  sub_217007464();
  sub_216683A80(v37, v14, &qword_27CAB6D60, &qword_217014E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v38);
  v45 = v86;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v14, &qword_27CAB6D60, &qword_217014E40);
    v46 = v84;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v45);
    v47 = v83;
    sub_21700C404();
    v48 = __swift_getEnumTagSinglePayload(v46, 1, v45);
    v49 = v85;
    if (v48 != 1)
    {
      sub_216697664(v46, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    v50 = *(v38 + 20);
    v51 = v84;
    v49 = v85;
    (*(v85 + 16))(v84, &v14[v50], v86);
    sub_216B32200(v14, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v45);
    v47 = v83;
    (*(v49 + 32))(v83, v51, v45);
  }

  sub_2170073E4();
  (*(v49 + 8))(v47, v45);
  v52 = *(v81 + 8);
  v53 = v22;
  v54 = v82;
  v52(v53, v82);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  v55 = v77;
  sub_2170073F4();

  v52(v25, v54);
  (*(v78 + 32))(v28, v55, v79);
  v56 = &v28[*(v80 + 36)];
  *v56 = 0x3FF0000000000000;
  *(v56 + 4) = 0;
  sub_217009C64();
  sub_21700B3B4();
  sub_216B32658();
  v57 = v94;
  sub_21700A834();
  sub_216697664(v28, &qword_27CABC850, &qword_2170274C8);
  *v3 = sub_2170093B4();
  *(v3 + 1) = 0x4020000000000000;
  v3[16] = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31C0, &qword_217046F30);
  sub_216B3164C(v37, &v3[*(v58 + 44)]);
  sub_217009C64();
  sub_21700B3B4();
  sub_2166D9530(&qword_27CAC31C8, &qword_27CAC3198, &qword_217046F10, MEMORY[0x277CE1198]);
  v59 = v98;
  sub_21700A834();
  sub_216697664(v3, &qword_27CAC3198, &qword_217046F10);
  v60 = v96;
  v61 = *(v95 + 16);
  v62 = v93;
  v61(v93, v92, v96);
  v63 = v87;
  v88 = *(v87 + 16);
  v88(v100, v57, v97);
  v64 = v89;
  v86 = *(v89 + 16);
  v65 = v59;
  v66 = v90;
  v86(v99, v65, v90);
  v67 = v91;
  v61(v91, v62, v60);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31D0, &qword_217046F38);
  v69 = v97;
  v88(&v67[*(v68 + 48)], v100, v97);
  v70 = v99;
  v86(&v67[*(v68 + 64)], v99, v66);
  v71 = *(v64 + 8);
  v71(v98, v66);
  v72 = *(v63 + 8);
  v72(v94, v69);
  v73 = v96;
  v74 = *(v95 + 8);
  v74(v92, v96);
  v71(v70, v66);
  v72(v100, v69);
  return (v74)(v93, v73);
}

uint64_t sub_216B3164C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = &v38 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508, &qword_21703DF68);
  MEMORY[0x28223BE20](v41);
  v42 = &v38 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3138, &qword_217046D50);
  MEMORY[0x28223BE20](v40);
  v51 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v10);
  v50 = &v38 - v11;
  v12 = type metadata accessor for EmptyStateLockupArtworkView(0);
  v13 = (a1 + *(v12 + 20));
  v14 = v13[1];
  if (v14)
  {
    v47 = *v13;
    v48 = MEMORY[0x277D84F90];
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v49 = v14;
  sub_21700DF14();
  v44 = sub_217009D74();
  KeyPath = swift_getKeyPath();
  v54 = sub_21700AD14();
  v39 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v15 = (a1 + *(v12 + 24));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  sub_21700DF14();
  v19 = sub_217009E54();
  v20 = swift_getKeyPath();
  v56 = v17;
  v57 = v16;
  v58 = 0;
  v59 = v18;
  v60 = v20;
  v61 = v19;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v17, v16, 0, v18);

  v21 = sub_21700AD34();
  v22 = swift_getKeyPath();
  v23 = v42;
  (*(v45 + 32))(v42, v4, v46);
  v24 = (v23 + *(v41 + 36));
  *v24 = v22;
  v24[1] = v21;
  v25 = swift_getKeyPath();
  sub_2167C5834(v23, v9, &qword_27CAC1508, &qword_21703DF68);
  v26 = &v9[*(v40 + 36)];
  *v26 = v25;
  v26[8] = 1;
  v27 = v50;
  sub_2167C5834(v9, v50, &qword_27CAC3138, &qword_217046D50);
  v28 = v51;
  sub_216683A80(v27, v51, &qword_27CAC3138, &qword_217046D50);
  v29 = v52;
  *v52 = 0;
  *(v29 + 8) = 1;
  v30 = v47;
  v31 = v49;
  __src[0] = v47;
  __src[1] = v49;
  v32 = v48;
  __src[2] = 0;
  __src[3] = v48;
  v33 = KeyPath;
  v34 = v44;
  __src[4] = KeyPath;
  __src[5] = v44;
  v35 = v39;
  __src[6] = v39;
  __src[7] = v54;
  __src[8] = v53;
  LOBYTE(__src[9]) = 1;
  memcpy(v29 + 2, __src, 0x49uLL);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC31D8, &unk_217046F40);
  sub_216683A80(v28, v29 + *(v36 + 64), &qword_27CAC3138, &qword_217046D50);
  sub_216683A80(__src, &v56, &qword_27CABA1B8, &unk_21701F810);
  sub_216697664(v27, &qword_27CAC3138, &qword_217046D50);
  sub_216697664(v28, &qword_27CAC3138, &qword_217046D50);
  v56 = v30;
  v57 = v31;
  v58 = 0;
  v59 = v32;
  v60 = v33;
  v61 = v34;
  v62 = v35;
  v63 = v54;
  v64 = v53;
  v65 = 1;
  return sub_216697664(&v56, &qword_27CABA1B8, &unk_21701F810);
}

unint64_t sub_216B31C30()
{
  result = qword_27CAC30D8;
  if (!qword_27CAC30D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC30B8, &unk_217046CD0);
    sub_216B31CBC();
    sub_216B31F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC30D8);
  }

  return result;
}

unint64_t sub_216B31CBC()
{
  result = qword_27CAC30E0;
  if (!qword_27CAC30E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC30B0, &qword_217046CC8);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540, &unk_217020A28, MEMORY[0x277CDE158]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3088, &qword_217046CA0);
    sub_216B31DB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC30E0);
  }

  return result;
}

unint64_t sub_216B31DB8()
{
  result = qword_27CAC30E8;
  if (!qword_27CAC30E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3088, &qword_217046CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3080, &qword_217046C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0, &qword_217017420);
    sub_216B31EE0();
    sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC30E8);
  }

  return result;
}

unint64_t sub_216B31EE0()
{
  result = qword_27CAC30F0;
  if (!qword_27CAC30F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3080, &qword_217046C98);
    sub_2166D9530(&qword_27CAC30F8, &qword_27CAC3100, &qword_217046CE8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC30F0);
  }

  return result;
}

unint64_t sub_216B31F90()
{
  result = qword_27CAC3108;
  if (!qword_27CAC3108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3078, &unk_217046C88);
    sub_216B2FC3C(&qword_27CAC3110, type metadata accessor for EmptyStateLockupArtworkView, &unk_217046EAC);
    sub_216B2FC3C(&qword_27CAC3118, type metadata accessor for EmptyStateLockupInlineBackgroundView, &unk_217046E5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3108);
  }

  return result;
}

unint64_t sub_216B3207C()
{
  result = qword_27CAC3120;
  if (!qword_27CAC3120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3058, &qword_217046C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3060, &qword_217046C70);
    sub_2166D9530(&qword_27CAC30C8, &qword_27CAC3060, &qword_217046C70, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CAC30D0, &qword_27CAC3048, &qword_217046C58, MEMORY[0x277CDE158]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3120);
  }

  return result;
}

uint64_t sub_216B321A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B32200(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B32258(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

void sub_216B322DC(uint64_t a1)
{
  sub_2166DAA20(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2166DAA20(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2166DB764(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2166DAA20(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216B32454(uint64_t a1)
{
  sub_2166DB764(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2166DAA20(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2166DAA20(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_216B32568()
{
  result = qword_27CAC3178;
  if (!qword_27CAC3178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3040, &qword_217046C50);
    sub_2166D9530(&qword_27CAC3180, &qword_27CAC3030, &qword_217046C40, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3178);
  }

  return result;
}

unint64_t sub_216B32658()
{
  result = qword_27CAC31B8;
  if (!qword_27CAC31B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC850, &qword_2170274C8);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC31B8);
  }

  return result;
}

unint64_t sub_216B32710()
{
  result = qword_27CAC3210;
  if (!qword_27CAC3210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3190, &qword_217046F08);
    sub_2166D9530(&qword_27CAC3218, &qword_27CAC3220, &unk_217046F80, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3210);
  }

  return result;
}

unint64_t sub_216B327C8()
{
  result = qword_27CAC3228;
  if (!qword_27CAC3228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3208, &qword_217046F78);
    sub_216B32854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3228);
  }

  return result;
}

unint64_t sub_216B32854()
{
  result = qword_27CAC3230;
  if (!qword_27CAC3230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC31F8, &qword_217046F68);
    sub_216B3290C();
    sub_2166D9530(&qword_27CAC3260, &qword_27CAC3200, &qword_217046F70, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3230);
  }

  return result;
}

unint64_t sub_216B3290C()
{
  result = qword_27CAC3238;
  if (!qword_27CAC3238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC31F0, &qword_217046F60);
    sub_216B32998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3238);
  }

  return result;
}

unint64_t sub_216B32998()
{
  result = qword_27CAC3240;
  if (!qword_27CAC3240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC31E8, &qword_217046F58);
    sub_216B32A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3240);
  }

  return result;
}

unint64_t sub_216B32A24()
{
  result = qword_27CAC3248;
  if (!qword_27CAC3248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC31E0, &qword_217046F50);
    sub_216B32AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3248);
  }

  return result;
}

unint64_t sub_216B32AB0()
{
  result = qword_27CAC3250;
  if (!qword_27CAC3250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3138, &qword_217046D50);
    sub_216B32B68();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3250);
  }

  return result;
}

unint64_t sub_216B32B68()
{
  result = qword_27CAC3258;
  if (!qword_27CAC3258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1508, &qword_21703DF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7660, &qword_2170189A0);
    sub_2167C4CBC();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3258);
  }

  return result;
}

uint64_t sub_216B32C60(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  *(v2 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC7MusicUI32ReportAConcernMenuActionProvider_actionDispatcher, v9, v4);
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_21700D4B4();

  *(v2 + OBJC_IVAR____TtC7MusicUI32ReportAConcernMenuActionProvider_userSocialProfileCoordinator) = v11[1];
  return v2;
}

void sub_216B32D90()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_48();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_108_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42_2();
  sub_217006E94();
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(v0, v1);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_4_87();
  OUTLINED_FUNCTION_0_159();
  sub_216B34D98(v0, v6);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(inited, xmmword_217013DA0);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B32ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a2;
  v107 = a5;
  v105 = sub_2170075A4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = v8;
  v103 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ReportMusicItemConcernAction(0);
  v98 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v100 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v9;
  MEMORY[0x28223BE20](v10);
  v97 = &v79 - v11;
  v95 = sub_21700CFB4();
  v12 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_217005EF4();
  v80 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v79 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_21700D704();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v84 = &v79 - v23;
  v90 = sub_21700D284();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ReportableMusicItem(0);
  MEMORY[0x28223BE20](v28);
  v85 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v79 - v31;
  v83 = *a4;
  v108 = a1;
  sub_216B34DF0(a1, &v79 - v31, type metadata accessor for ReportableMusicItem);
  v87 = v28;
  LODWORD(a4) = swift_getEnumCaseMultiPayload();
  sub_216B34D98(v32, type metadata accessor for ReportableMusicItem);
  if (a4 == 2 && (v33 = *(type metadata accessor for MenuConfiguration(0) + 20), swift_storeEnumTagMultiPayload(), LOBYTE(v33) = sub_216B88F54(a3 + v33, v27), sub_216B34D98(v27, type metadata accessor for MenuContext), (v33 & 1) == 0))
  {
    v49 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v107, 1, 1, v49);
  }

  else
  {
    v81 = sub_216B29D34();
    v82 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x657461676976616ELL;
    *(inited + 40) = 0xEA00000000006F54;
    v36 = MEMORY[0x277D837D0];
    strcpy((inited + 48), "ReportAConcern");
    *(inited + 63) = -18;
    *(inited + 72) = v36;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v37 = (a3 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v38 = v37[1];
    *(inited + 96) = *v37;
    *(inited + 104) = v38;
    *(inited + 120) = v36;
    *(inited + 128) = 1684957547;
    *(inited + 136) = 0xE400000000000000;
    sub_21700DF14();
    v39 = sub_216B2A278();
    *(inited + 168) = v36;
    *(inited + 144) = v39;
    *(inited + 152) = v40;
    v41 = sub_21700E384();
    v42 = v84;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v14);
    v43 = v86;
    sub_21700D6F4();
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v111 = v41;
    sub_2166EF9C4(&v111, &v110);
    v44 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v109 = v44;
    sub_2166EF9D4();
    v45 = v109;
    v112 = v36;
    v46 = 0xE800000000000000;
    *&v111 = 0x657461676976616ELL;
    *(&v111 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v111, &v110);
    swift_isUniquelyReferenced_nonNull_native();
    v109 = v45;
    sub_2166EF9D4();
    v47 = v109;
    v48 = 0x6472616F6279656BLL;
    switch(v83)
    {
      case 1:
        v46 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        v46 = 0xE400000000000000;
        v48 = 1701998445;
        break;
      case 3:
        v46 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v46 = 0x80000002170801D0;
        break;
      case 5:
        v46 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v46 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v46 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v112 = v36;
    *&v111 = v48;
    *(&v111 + 1) = v46;
    sub_2166EF9C4(&v111, &v110);
    swift_isUniquelyReferenced_nonNull_native();
    v109 = v47;
    sub_2166EF9D4();
    v51 = v109;
    sub_216681B04(v42, v21, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v21, 1, v14) == 1)
    {
      sub_216697664(v21, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v80;
      v53 = v79;
      (*(v80 + 32))(v79, v21, v14);
      v54 = sub_217005DE4();
      v112 = v36;
      *&v111 = v54;
      *(&v111 + 1) = v55;
      sub_2166EF9C4(&v111, &v110);
      swift_isUniquelyReferenced_nonNull_native();
      v109 = v51;
      sub_2166EF9D4();
      v51 = v109;
      (*(v52 + 8))(v53, v14);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v94;
    MEMORY[0x21CE9DD70](v81, v82, 0x6E6F74747562, 0xE600000000000000, v51, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217013DA0;
    v61 = v60 + v59;
    v62 = v95;
    (*(v12 + 16))(v61, v58, v95);
    v63 = v92;
    v64 = v93;
    (*(v92 + 16))(v91, v43, v93);
    v65 = v88;
    sub_21700D244();
    (*(v12 + 8))(v58, v62);
    (*(v63 + 8))(v43, v64);
    sub_216697664(v42, &qword_27CABA820, &unk_217018CE0);
    v66 = v85;
    sub_216B34DF0(v108, v85, type metadata accessor for ReportableMusicItem);
    v67 = v97;
    (*(v89 + 32))(v97, v65, v90);
    v68 = *(v96 + 20);
    sub_216B34C6C(v66, v67 + v68, type metadata accessor for ReportableMusicItem);
    __swift_storeEnumTagSinglePayload(v67 + v68, 0, 1, v87);
    type metadata accessor for MenuActionType(0);
    v69 = v107;
    swift_storeEnumTagMultiPayload();
    v70 = v100;
    sub_216B34C6C(v67, v100, type metadata accessor for ReportMusicItemConcernAction);
    v71 = v104;
    v72 = v103;
    v73 = v105;
    (*(v104 + 16))(v103, v102, v105);
    v74 = (*(v98 + 80) + 24) & ~*(v98 + 80);
    v75 = (v99 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v106;
    sub_216B34C6C(v70, v76 + v74, type metadata accessor for ReportMusicItemConcernAction);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_216B34CCC;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }
}

void sub_216B33CE8()
{
  OUTLINED_FUNCTION_49();
  v48 = v1;
  v49 = v0;
  v47 = v2;
  v4 = v3;
  v44 = type metadata accessor for ReportableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v46 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = sub_21700C7E4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v42 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3268, &qword_217046FF8) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3270, qword_217047000);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v42 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v42 - v29;
  v43 = v4;
  sub_21700C7F4();
  (*(v13 + 104))(v27, *MEMORY[0x277CD8528], v11);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v11);
  v31 = *(v17 + 56);
  sub_216681B04(v30, v20, &qword_27CAC3270, qword_217047000);
  sub_216681B04(v27, &v20[v31], &qword_27CAC3270, qword_217047000);
  v32 = &unk_217013000;
  if (__swift_getEnumTagSinglePayload(v20, 1, v11) != 1)
  {
    sub_216681B04(v20, v24, &qword_27CAC3270, qword_217047000);
    if (__swift_getEnumTagSinglePayload(&v20[v31], 1, v11) != 1)
    {
      v33 = v42;
      (*(v13 + 32))(v42, &v20[v31], v11);
      sub_216B34E50(&qword_27CAC3278, MEMORY[0x277CD8530], MEMORY[0x277CD8538]);
      v34 = sub_21700E494();
      v35 = *(v13 + 8);
      v35(v33, v11);
      sub_216697664(v27, &qword_27CAC3270, qword_217047000);
      sub_216697664(v30, &qword_27CAC3270, qword_217047000);
      v35(v24, v11);
      v32 = &unk_217013000;
      sub_216697664(v20, &qword_27CAC3270, qword_217047000);
      if ((v34 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_216697664(v27, &qword_27CAC3270, qword_217047000);
    sub_216697664(v30, &qword_27CAC3270, qword_217047000);
    (*(v13 + 8))(v24, v11);
LABEL_6:
    sub_216697664(v20, &qword_27CAC3268, &qword_217046FF8);
    goto LABEL_10;
  }

  sub_216697664(v27, &qword_27CAC3270, qword_217047000);
  sub_216697664(v30, &qword_27CAC3270, qword_217047000);
  if (__swift_getEnumTagSinglePayload(&v20[v31], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_216697664(v20, &qword_27CAC3270, qword_217047000);
LABEL_9:
  sub_21700C924();
  OUTLINED_FUNCTION_34();
  v37 = v46;
  (*(v36 + 16))(v46, v43);
  swift_storeEnumTagMultiPayload();
  v50[0] = 4;
  v38 = v45;
  sub_216B32ED8(v37, v47, v48, v50, v45);
  OUTLINED_FUNCTION_0_159();
  sub_216B34D98(v37, v39);
  sub_21678C1C4();
  sub_216697664(v38, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(inited, v32[218]);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  v41 = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(v41, v32[218]);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_216B34270()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for ReportableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_108_0();
  v14 = *(v0 + OBJC_IVAR____TtC7MusicUI32ReportAConcernMenuActionProvider_userSocialProfileCoordinator);
  v15 = &unk_217013000;
  if (v14)
  {
    v40 = v5;
    v41 = v3;
    v16 = type metadata accessor for SocialProfileDescriptor(0);
    v17 = (v7 + *(v16 + 20));
    v19 = *v17;
    v18 = v17[1];
    sub_21700DF14();
    v20 = v14;
    v21 = sub_216CAC650();
    if (v22)
    {
      if (v19 == v21 && v22 == v18)
      {
        goto LABEL_20;
      }

      v24 = sub_21700F7D4();

      if (v24)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v25 = (v7 + *(v16 + 24));
    v26 = v25[1];
    v39 = *v25;
    v27 = *&v20[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v28 = *(v27 + 16);
    sub_21700DF14();
    v20 = v20;
    os_unfair_lock_lock(v28);
    v29 = *&v20[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v30 = *(v27 + 16);
    v31 = v29;
    os_unfair_lock_unlock(v30);

    if (v29)
    {
      v32 = sub_2167DEA8C(v31);
      if (v26)
      {
        if (v33)
        {
          if (v39 != v32 || v26 != v33)
          {
            v35 = sub_21700F7D4();

            v15 = &unk_217013000;
            if (v35)
            {

              goto LABEL_28;
            }

            goto LABEL_25;
          }

LABEL_20:

LABEL_27:
          v15 = &unk_217013000;
          goto LABEL_28;
        }
      }

      else if (!v33)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else if (!v26)
    {
      goto LABEL_26;
    }

    v15 = &unk_217013000;
LABEL_25:
    sub_216B34DF0(v7, v11, type metadata accessor for SocialProfileDescriptor);
    swift_storeEnumTagMultiPayload();
    v42 = 4;
    sub_216B32ED8(v11, v40, v41, &v42, v1);
    OUTLINED_FUNCTION_0_159();
    sub_216B34D98(v11, v36);
    sub_21678C1C4();
    sub_216697664(v1, &qword_27CAB6DF0, &unk_2170152D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_11_60(inited, v15[218]);
    OUTLINED_FUNCTION_26_5();
    sub_2169FAC94();
  }

LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(v38, v15[218]);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}