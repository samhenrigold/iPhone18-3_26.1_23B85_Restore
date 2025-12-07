uint64_t FMLocationShifter.init()()
{
  v13 = sub_24A4ABD50();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v4 - 8);
  v12[0] = sub_24A3785D4();
  v14 = ".fmfcore.refresh";
  sub_24A4AB6D0();
  v16 = MEMORY[0x277D84F90];
  v12[3] = sub_24A378620(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v12[2] = sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  v5 = *MEMORY[0x277D85260];
  v6 = v0 + 104;
  v7 = *(v0 + 104);
  v12[1] = v6;
  v8 = v13;
  v7(v2, v5, v13);
  *(v15 + 24) = sub_24A4ABD90();
  sub_24A4AB6D0();
  v16 = MEMORY[0x277D84F90];
  sub_24A4ABE90();
  v7(v2, v5, v8);
  v9 = sub_24A4ABD90();
  v10 = v15;
  *(v15 + 32) = v9;
  *(v10 + 16) = [objc_allocWithZone(MEMORY[0x277D0EB88]) init];
  return v10;
}

unint64_t sub_24A3785D4()
{
  result = qword_27EF40900;
  if (!qword_27EF40900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF40900);
  }

  return result;
}

uint64_t sub_24A378620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A378668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A3786B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A378704(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

FMFCore::InitialTabInfo __swiftcall InitialTabInfo.init(lastVisitedTimes:currentTab:timeSpent:)(Swift::OpaquePointer lastVisitedTimes, Swift::OpaquePointer currentTab, Swift::OpaquePointer timeSpent)
{
  v3->_rawValue = lastVisitedTimes._rawValue;
  v3[1]._rawValue = currentTab._rawValue;
  v3[2]._rawValue = timeSpent._rawValue;
  result.timeSpent = timeSpent;
  result.currentTab = currentTab;
  result.lastVisitedTimes = lastVisitedTimes;
  return result;
}

void *FMImageCache.init(converter:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A37887C(a1, a2);

  return v2;
}

void *sub_24A37887C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;
  v20 = *v2;
  v19 = sub_24A4ABD50();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v7);
  v8 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v8 - 8);
  v2[2] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v18 = sub_24A3785D4();
  sub_24A4AB6D0();
  v23 = MEMORY[0x277D84F90];
  sub_24A378D20(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v19);
  v2[3] = sub_24A4ABD90();
  swift_getAssociatedConformanceWitness();
  v2[4] = sub_24A4AB750();
  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  sub_24A4AC3B0();
  swift_getFunctionTypeMetadata1();
  sub_24A4ABB30();
  v2[5] = sub_24A4AB740();
  v2[6] = sub_24A4AB740();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A4AB630();
  sub_24A378E18(v9, qword_27EF4E260);
  v10 = sub_24A4AB600();
  v11 = sub_24A4ABCE0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24A376000, v10, v11, "FMImageCache: initialized", v12, 2u);
    MEMORY[0x24C219130](v12, -1, -1);
  }

  v13 = v22;
  v3[7] = v21;
  v3[8] = v13;
  v14 = v3[2];

  [v14 setQualityOfService_];
  v15 = v3[2];
  v16 = sub_24A4AB820();

  [v15 setName_];

  [v3[2] setMaxConcurrentOperationCount_];
  return v3;
}

uint64_t sub_24A378D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A378D68()
{
  v0 = sub_24A4AB630();
  sub_24A378DB4(v0, qword_27EF4E260);
  sub_24A378E18(v0, qword_27EF4E260);
  return sub_24A4AB620();
}

uint64_t *sub_24A378DB4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_24A378E18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24A378E68()
{
  if (qword_27EF3EBA8 != -1)
  {
    swift_once();
  }

  MEMORY[0x24C217D50](0x7365686361432FLL, 0xE700000000000000);

  MEMORY[0x24C217D50](0xD00000000000001DLL, 0x800000024A4B33B0);

  sub_24A4AA970();
}

uint64_t sub_24A378F54()
{
  type metadata accessor for FMSystemDirectoryUtilities();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  started = sysdir_start_search_path_enumeration_private();
  MEMORY[0x24C2192C0](started, v1);
  v3 = sub_24A4AB950();
  v5 = v4;
  result = MEMORY[0x24C219130](v1, -1, -1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  qword_27EF4E0C0 = v0;
  return result;
}

uint64_t type metadata accessor for FMFManagerConfiguration(uint64_t a1)
{
  result = qword_27EF400A8;
  if (!qword_27EF400A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A37904C(uint64_t a1)
{
  result = sub_24A4AAB80();
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

uint64_t static FMFManagerConfiguration.default.getter()
{
  if (qword_27EF3EBB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24A379174()
{
  v0 = sub_24A4AAB80();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAB50();
  if (qword_27EF3EBE0 != -1)
  {
    swift_once();
  }

  v5 = qword_27EF4E228;
  v4 = unk_27EF4E230;
  v6 = qword_27EF3EBD0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27EF40400;
  v8 = objc_opt_self();

  v9 = [v8 mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_24A4AB850();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = sub_24A379788(v11, v13, v7);

  type metadata accessor for FMFManagerConfiguration(0);
  v15 = swift_allocObject();
  (*(v1 + 16))(v15 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale, v3, v0);
  v16 = (v15 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory);
  *v16 = v5;
  v16[1] = v4;
  *(v15 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) = v14 & 1;
  v17 = (v15 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider);
  *v17 = sub_24A38D52C;
  v17[1] = 0;
  *(v15 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_enabledSubsystems) = 3;
  *(v15 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers) = 0;
  *(v15 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) = 0;
  *(v15 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_disableContactMatching) = 0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A4AB630();
  sub_24A378E18(v18, qword_27EF4E260);
  v19 = sub_24A4AB600();
  v20 = sub_24A4ABCE0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v14 & 1;
    _os_log_impl(&dword_24A376000, v19, v20, "FMFManagerConfiguration: internal useCache: %{BOOL}d", v21, 8u);
    MEMORY[0x24C219130](v21, -1, -1);
  }

  result = (*(v1 + 8))(v3, v0);
  qword_27EF40080 = v15;
  return result;
}

uint64_t sub_24A3794E0()
{
  if (qword_27EF3EBA8 != -1)
  {
    swift_once();
  }

  v1 = *(qword_27EF4E0C0 + 16);
  v2 = *(qword_27EF4E0C0 + 24);
  swift_bridgeObjectRetain_n();

  MEMORY[0x24C217D50](0x7365686361432FLL, 0xE700000000000000);

  MEMORY[0x24C217D50](0xD00000000000001ALL, 0x800000024A4B2470);

  qword_27EF4E228 = v1;
  unk_27EF4E230 = v2;
  return result;
}

uint64_t sub_24A3795D4()
{
  v0 = sub_24A379620(&unk_285D84978);
  result = swift_arrayDestroy();
  qword_27EF40400 = v0;
  return result;
}

uint64_t sub_24A379620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&unk_27EF404B0, &qword_24A4BA6C8);
    v3 = sub_24A4ABF10();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_24A4AC360();

      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_24A4AC270();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24A379788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24A4AC360();
  sub_24A4AB8F0();
  v6 = sub_24A4AC3A0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24A4AC270() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t type metadata accessor for FMFManager(uint64_t a1)
{
  result = qword_27EF40418;
  if (!qword_27EF40418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3798CC(uint64_t a1)
{
  sub_24A37B644(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for FMFFriend(uint64_t a1)
{
  result = qword_27EF3FB60;
  if (!qword_27EF3FB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A379A18(uint64_t a1)
{
  sub_24A379C28(319, &qword_27EF3F398, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24A379C74();
    if (v2 <= 0x3F)
    {
      sub_24A379CCC(319, &qword_27EF3F3A0, &qword_27EF3F108, &qword_24A4B4950);
      if (v3 <= 0x3F)
      {
        sub_24A379D20(319, &qword_27EF3F3A8, MEMORY[0x277CC9578]);
        if (v4 <= 0x3F)
        {
          sub_24A379C28(319, &qword_27EF3F3B0, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_24A379CCC(319, &qword_27EF3FB78, &qword_27EF3F1B0, &unk_24A4B4980);
            if (v6 <= 0x3F)
            {
              sub_24A379C28(319, &qword_27EF3FB80, &type metadata for FMFContact);
              if (v7 <= 0x3F)
              {
                sub_24A379D20(319, &qword_27EF40870, type metadata accessor for FMFLocation);
                if (v8 <= 0x3F)
                {
                  sub_24A379C28(319, &qword_27EF3FB88, &type metadata for FMFPendingUpdateReason);
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

void sub_24A379C28(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24A4ABDF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A379C74()
{
  if (!qword_27EF3FB70)
  {
    v0 = sub_24A4ABC40();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF3FB70);
    }
  }
}

void sub_24A379CCC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_24A3CBC9C(a3, a4);
    v5 = sub_24A4ABDF0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A379D20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A4ABDF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for FMFLocationAlert(uint64_t a1)
{
  result = qword_27EF3F950;
  if (!qword_27EF3F950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A379DC0(uint64_t a1)
{
  sub_24A379C28(319, &qword_27EF3F398, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24A379F94(319, &qword_27EF3F960, type metadata accessor for FMFSchedule);
    if (v2 <= 0x3F)
    {
      sub_24A379C28(319, &qword_27EF3F968, &type metadata for FMFLocationAlertAcceptanceStatus);
      if (v3 <= 0x3F)
      {
        sub_24A37A11C(319);
        if (v4 <= 0x3F)
        {
          sub_24A379C28(319, &qword_27EF3F970, &type metadata for FMFLabel);
          if (v5 <= 0x3F)
          {
            sub_24A379C28(319, &qword_27EF3F978, &type metadata for FMFAddress);
            if (v6 <= 0x3F)
            {
              sub_24A379F94(319, &qword_27EF3F3A8, MEMORY[0x277CC9578]);
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

void sub_24A379F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A4ABDF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for FMFSchedule(uint64_t a1)
{
  result = qword_27EF3EFC8;
  if (!qword_27EF3EFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A37A034(uint64_t a1)
{
  sub_24A37A0C4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24A37A0C4(uint64_t a1)
{
  if (!qword_27EF3EFD8)
  {
    sub_24A4AABE0();
    v1 = sub_24A4ABDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF3EFD8);
    }
  }
}

void sub_24A37A11C(uint64_t a1)
{
  if (!qword_27EF3F3A0)
  {
    sub_24A3CBC9C(&qword_27EF3F108, &qword_24A4B4950);
    v1 = sub_24A4ABDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF3F3A0);
    }
  }
}

uint64_t type metadata accessor for FMFLocation(uint64_t a1)
{
  result = qword_27EF3F868;
  if (!qword_27EF3F868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A37A1CC(uint64_t a1)
{
  sub_24A379C28(319, &qword_27EF3F398, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24A37A2F0(319, &qword_27EF3F878, type metadata accessor for SPMotionActivityState);
    if (v2 <= 0x3F)
    {
      sub_24A37A2F0(319, &qword_27EF3F880, MEMORY[0x277CC95F0]);
      if (v3 <= 0x3F)
      {
        sub_24A379C28(319, &qword_27EF3F888, &type metadata for FMFSimpleLocation);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24A37A2F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A4ABDF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A37A358(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t FMFManager.init(configuration:tabInfo:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v118 = a1;
  v5 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v5 - 8);
  v113 = v109 - v6;
  v7 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = (v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v115 = v109 - v10;
  v116 = sub_24A4ABD50();
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v112 = v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v12);
  v13 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_24A4AAB20();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(a2 + 2);
  sub_24A4AAB10();
  v18 = sub_24A4AAAF0();
  v20 = v19;
  v21 = *(v15 + 8);
  v109[1] = "FBaseAction";
  v110 = *a2;
  v21(v17, v14);
  *(v3 + 16) = v18;
  *(v3 + 24) = v20;
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  sub_24A4AB6B0();
  *&v123 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A378704(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0, MEMORY[0x277D83970]);
  v22 = v118;
  sub_24A4ABE90();
  (*(v114 + 104))(v112, *MEMORY[0x277D85260], v116);
  *(v3 + 48) = sub_24A4ABD90();
  *(v3 + 224) = 0;
  *(v3 + 226) = 0;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  v23 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  v24 = type metadata accessor for FMFFriend(0);
  (*(*(v24 - 8) + 56))(v3 + v23, 1, 1, v24);
  *(v3 + OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized) = 0;
  *(v3 + 56) = v22;
  *(v3 + 64) = v110;
  *(v3 + 80) = v111;
  v25 = *(v22 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers);
  if (v25)
  {
    v26 = *(v25 + 32) != 0;
  }

  else
  {
    v26 = 0;
  }

  v27 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch;
  LODWORD(v114) = *(v22 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch);
  LODWORD(v116) = v26;
  *(v3 + 225) = v26;
  v28 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale;
  v29 = sub_24A4AAB80();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v112 = v28;
  v32 = v115;
  v111 = v31;
  v31(v115, (v22 + v28), v29);
  *&v110 = *(v30 + 56);
  (v110)(v32, 0, 1, v29);
  type metadata accessor for FMFReverseGeocodingCache(0);
  swift_allocObject();
  v33 = v117;
  sub_24A37B740(v32, v117, &qword_27EF3F650, &qword_24A4B5A10);

  v117 = sub_24A37B7A8(v33);
  v34 = v118;
  sub_24A37EF2C(v32, &qword_27EF3F650, &qword_24A4B5A10);
  v35 = 0;
  if (*(v34 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) == 1)
  {
    v35 = *(v34 + v27) ^ 1;
  }

  type metadata accessor for FMFGarbageCollector();
  swift_allocObject();
  *(v3 + 104) = sub_24A37BEB0(v35 & 1);
  type metadata accessor for FMFSystemStateController();
  swift_allocObject();
  *(v3 + 112) = sub_24A37D0E4();
  v36 = v117;
  *(v3 + 216) = v117;
  type metadata accessor for FMFDataManager();
  swift_allocObject();
  swift_retain_n();

  v38 = v116;
  *(v3 + 88) = sub_24A37DB30(v37, 0, v36, v116);
  *(v3 + 96) = [objc_allocWithZone(MEMORY[0x277D496C0]) init];
  v39 = objc_allocWithZone(type metadata accessor for FMFGenericResponseHandler());

  v41 = sub_24A38C154(v40, v38);
  *(v3 + 120) = v41;
  v42 = *(v34 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider);
  v43 = v115;
  v111(v115, &v112[v34], v29);
  (v110)(v43, 0, 1, v29);
  v44 = v41;
  v42(&v123);

  sub_24A37EF2C(v43, &qword_27EF3F650, &qword_24A4B5A10);
  sub_24A37B3F8(&v123, v3 + 136);
  v45 = 0;
  if ((*(v34 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_enabledSubsystems) & 2) != 0)
  {
    swift_beginAccess();
    sub_24A39997C(v3 + 136, &v123);
    v46 = objc_allocWithZone(type metadata accessor for FMFMyLocationController(0));
    v45 = sub_24A39A204(&v123);
  }

  v47 = *(v3 + 184);
  *(v3 + 184) = v45;

  v48 = *(v3 + 88);
  swift_beginAccess();
  sub_24A39997C(v3 + 136, &v123);
  v49 = type metadata accessor for FMAPSConnectionHandler();
  v50 = qword_27EF3EBD8;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = qword_27EF4E1A8;
  v52 = unk_27EF4E1B0;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v54 = sub_24A3A1764(0xD000000000000017, 0x800000024A4B1A90, v51, 0, 0, v49, ObjectType, v52);
  type metadata accessor for FMFRefreshController(0);
  swift_allocObject();
  LODWORD(ObjectType) = v116;
  *(v3 + 128) = sub_24A3A20A8(v48, &v123, v54, v116, v114);
  v55 = *(v3 + 96);
  v124 = sub_24A37B428(0, &qword_27EF40408, 0x277D496C0);
  v125 = &off_285D88B10;
  *&v123 = v55;
  if (ObjectType)
  {
    type metadata accessor for FMFProactiveLocationController();
    swift_allocObject();
    v56 = v117;

    v57 = v55;

    sub_24A416040(v58, v56);
    *(v3 + 192) = v59;
LABEL_16:

    goto LABEL_17;
  }

  v60 = v55;
  if ((sub_24A3A290C() & 1) == 0)
  {
    v65 = *(v3 + 88);
    v66 = *(v3 + 96);
    type metadata accessor for FMFSecureLocationRefreshController();
    swift_allocObject();

    *(v3 + 200) = sub_24A463580(v65, v66);
    goto LABEL_16;
  }

  v61 = type metadata accessor for FMFSecureLocationController(0);
  swift_allocObject();
  v62 = sub_24A3A2C20();
  *(v3 + 208) = v62;

  v63 = sub_24A4AA700();
  v121 = v63;
  v122 = sub_24A378668(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v64 = sub_24A38D3BC(&v120);
  (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277D08A08], v63);
  LOBYTE(v63) = sub_24A4AA6C0();
  sub_24A37EEE0(&v120);
  if ((v63 & 1) == 0)
  {
    goto LABEL_16;
  }

  v121 = v61;
  v122 = &off_285D869E8;
  *&v120 = v62;
  sub_24A37EEE0(&v123);
  sub_24A37B3F8(&v120, &v123);
LABEL_17:
  sub_24A39997C(v3 + 136, &v120);
  v67 = *(v3 + 88);
  sub_24A39997C(&v123, v119);
  v68 = *(v3 + 112);
  type metadata accessor for FMFActionsController();
  swift_allocObject();

  *(v3 + 176) = sub_24A4761EC(&v120, v67, v119, v68);
  v69 = *(v3 + 200);
  if (v69)
  {
    *(v69 + 176) = &off_285D88A98;
    swift_unknownObjectWeakAssign();
    v70 = *(v3 + 200);
    if (v70)
    {
      *(v70 + 192) = &off_285D88AD0;
      swift_unknownObjectWeakAssign();
    }
  }

  v71 = sub_24A4ABB70();
  v72 = v113;
  (*(*(v71 - 8) + 56))(v113, 1, 1, v71);
  v73 = swift_allocObject();
  v73[2] = 0;
  v73[3] = 0;
  v73[4] = v3;

  sub_24A432670(0, 0, v72, &unk_24A4BA260, v73);

  *(*(v3 + 88) + 40) = &protocol witness table for FMFManager;
  swift_unknownObjectWeakAssign();
  *(*(v3 + 112) + 24) = &off_285D88A18;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v74 = *(v3 + 160);
  v75 = *(v3 + 168);
  sub_24A3A2CE4(v3 + 136, v74);
  v76 = *(v75 + 16);

  v76(v77, &off_285D88A08, v74, v75);
  v78 = *(v3 + 160);
  v79 = *(v3 + 168);
  sub_24A3A2CE4(v3 + 136, v78);
  v80 = *(v79 + 40);

  v80(v81, &off_285D88A28, v78, v79);
  swift_endAccess();
  v82 = *(v3 + 120) + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  *(v82 + 8) = &protocol witness table for FMFManager;
  swift_unknownObjectWeakAssign();
  *(*(v3 + 128) + 48) = &off_285D88970;
  swift_unknownObjectWeakAssign();
  v83 = *(v3 + 184);
  if (v83)
  {
    *(v83 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate + 8) = &protocol witness table for FMFManager;
    swift_unknownObjectWeakAssign();
  }

  *(*(v3 + 176) + 40) = &off_285D88A68;
  swift_unknownObjectWeakAssign();
  *(*(v3 + 104) + 64) = &off_285D88A88;
  swift_unknownObjectWeakAssign();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v84 = sub_24A4AB630();
  sub_24A378E18(v84, qword_27EF4E260);

  v85 = sub_24A4AB600();
  v86 = sub_24A4ABCE0();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v119[0] = v88;
    *v87 = 136315650;
    v89 = *(v3 + 16);
    v90 = *(v3 + 24);

    v91 = sub_24A37E99C(0xCuLL, v89, v90);
    v93 = v92;
    v95 = v94;
    v97 = v96;

    v98 = MEMORY[0x24C217CD0](v91, v93, v95, v97);
    v100 = v99;

    v101 = sub_24A37BD58(v98, v100, v119);

    *(v87 + 4) = v101;
    *(v87 + 12) = 2080;
    if (v116)
    {
      v102 = 0x70616E7320736120;
    }

    else
    {
      v102 = 0;
    }

    if (v116)
    {
      v103 = 0xEC000000746F6873;
    }

    else
    {
      v103 = 0xE000000000000000;
    }

    v104 = sub_24A37BD58(v102, v103, v119);

    *(v87 + 14) = v104;
    *(v87 + 22) = 2080;
    if (v114)
    {
      v105 = 0x4620676E69737520;
    }

    else
    {
      v105 = 0;
    }

    if (v114)
    {
      v106 = 0xEB0000000044464DLL;
    }

    else
    {
      v106 = 0xE000000000000000;
    }

    v107 = sub_24A37BD58(v105, v106, v119);

    *(v87 + 24) = v107;
    _os_log_impl(&dword_24A376000, v85, v86, "FMFManager<%s>.init%s%s", v87, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v88, -1, -1);
    MEMORY[0x24C219130](v87, -1, -1);
  }

  sub_24A37EEE0(&v123);
  return v3;
}

uint64_t sub_24A37B3F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24A37B428(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24A37B484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FMFReverseGeocodingCache(uint64_t a1)
{
  result = qword_27EF404D0;
  if (!qword_27EF404D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A37B644(uint64_t a1)
{
  if (!qword_27EF3F2C8)
  {
    type metadata accessor for FMFFriend(255);
    v1 = sub_24A4ABDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF3F2C8);
    }
  }
}

unint64_t sub_24A37B6AC(uint64_t a1)
{
  result = sub_24A37B6D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24A37B6D4()
{
  result = qword_27EF404C0;
  if (!qword_27EF404C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF404C0);
  }

  return result;
}

uint64_t sub_24A37B740(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A3C9CEC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_24A37B7A8(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_24A4ABD50();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = sub_24A4ABD10();
  MEMORY[0x28223BE20](v22[0]);
  v22[1] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24A4AAAB0();
  v7 = MEMORY[0x277D84F98];
  *(v1 + qword_27EF400C8) = MEMORY[0x277D84F98];
  *(v1 + qword_27EF400D0) = v7;
  *(v1 + qword_27EF400D8) = v7;
  *(v1 + qword_27EF400E0) = 0;
  if (qword_27EF3EC00 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E278);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v13 = sub_24A4AC420();
    v15 = sub_24A37BD58(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24A376000, v9, v10, "%s: initialized", v11, 0xCu);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0xD000000000000022, 0x800000024A4B1690);
  v17 = sub_24A4AC420();
  MEMORY[0x24C217D50](v17);

  MEMORY[0x24C217D50](0x6974617265706F2ELL, 0xEF65756575516E6FLL);
  v18 = sub_24A4AB820();

  [v16 setName_];

  [v16 setMaxConcurrentOperationCount_];
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24A4ABF50();

  v27 = 0xD000000000000022;
  v28 = 0x800000024A4B1690;
  v19 = sub_24A4AC420();
  MEMORY[0x24C217D50](v19);

  MEMORY[0x24C217D50](0x737365636F72702ELL, 0xED00006575657551);
  sub_24A4AB6D0();
  v27 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A378704(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  (*(v24 + 104))(v23, *MEMORY[0x277D85260], v25);
  v20 = sub_24A4ABD90();
  *(v2 + qword_27EF400E8) = v16;
  sub_24A37BE24(v26, v2 + qword_27EF4E178, &qword_27EF3F650, &qword_24A4B5A10);
  *(v2 + qword_27EF400F0) = v20;
  return v2;
}

unint64_t sub_24A37BD58(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A37ED78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24A37EE84(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_24A37EEE0(v11);
  return v7;
}

uint64_t sub_24A37BE24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A3C9CEC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A37BEB0(int a1)
{
  v2 = v1;
  v21 = a1;
  v20 = sub_24A4ABD50();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v6);
  v7 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v7 - 8);
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  *(v1 + 25) = 0;
  v8 = sub_24A3785D4();
  v19[1] = "ueue";
  v19[2] = v8;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_24A4AB6C0();
  v22 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v20);
  *(v1 + 48) = sub_24A4ABD90();
  *(v1 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A4B4E10;
  if (qword_27EF3EBE0 != -1)
  {
    v18 = v9;
    swift_once();
    v9 = v18;
  }

  v10 = unk_27EF4E230;
  *(v9 + 32) = qword_27EF4E228;
  *(v9 + 40) = v10;
  *(v2 + 72) = v9;
  v11 = qword_27EF3EBF8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_24A4AB630();
  sub_24A378E18(v12, qword_27EF4E260);
  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCE0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A376000, v13, v14, "FMFGarbageCollector: initialized", v15, 2u);
    MEMORY[0x24C219130](v15, -1, -1);
  }

  *(v2 + 24) = v21 & 1;
  sub_24A37C2D8();
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:v2 selector:sel_scheduleAccountVerificationWithNotification_ name:*MEMORY[0x277CB8B78] object:0];

  return v2;
}

void sub_24A37C2D8()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFGarbageCollector: verifyingAccount...", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  v7 = [v6 aa_primaryAppleAccount];
  if (!v7)
  {
    v14 = sub_24A4AB600();
    v15 = sub_24A4ABCC0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A376000, v14, v15, "FMFGarbageCollector: error retrieving primary account", v16, 2u);
      MEMORY[0x24C219130](v16, -1, -1);
    }

    sub_24A49C5C8();
    return;
  }

  v8 = v7;
  v9 = [v7 aa_personID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_24A4AB850();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if (qword_27EF3EBD8 != -1)
  {
    swift_once();
  }

  v17 = qword_27EF4E1B8;
  ObjectType = swift_getObjectType();
  v55 = v17;
  v18 = (*(v17 + 8))(ObjectType, v17);
  v20 = v19;

  v21 = sub_24A4AB600();
  v22 = sub_24A4ABCE0();

  v57 = v11;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v56 = v18;
    v24 = swift_slowAlloc();
    v60 = v24;
    aBlock = v11;
    *v23 = 136315394;
    v62 = v13;

    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    v58 = v8;
    v25 = v1;
    v26 = sub_24A4AB870();
    v28 = sub_24A37BD58(v26, v27, &v60);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    aBlock = v56;
    v62 = v20;

    v29 = sub_24A4AB870();
    v31 = sub_24A37BD58(v29, v30, &v60);

    *(v23 + 14) = v31;
    v1 = v25;
    v8 = v58;
    _os_log_impl(&dword_24A376000, v21, v22, "FMFGarbageCollector: verifyingAccount new: %s previous: %s", v23, 0x16u);
    swift_arrayDestroy();
    v32 = v24;
    v18 = v56;
    MEMORY[0x24C219130](v32, -1, -1);
    MEMORY[0x24C219130](v23, -1, -1);
  }

  if (v13)
  {
    if (!v20)
    {
      goto LABEL_26;
    }

    if (v57 == v18 && v13 == v20)
    {

      goto LABEL_29;
    }

    v33 = sub_24A4AC270();

    if ((v33 & 1) == 0)
    {
LABEL_26:
      v34 = sub_24A4AB600();
      v35 = sub_24A4ABCE0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_24A376000, v34, v35, "FMFGarbageCollector: purging cache because person id are not matching.", v36, 2u);
        MEMORY[0x24C219130](v36, -1, -1);
      }

      sub_24A49C5C8();
    }
  }

  else if (v20)
  {

    goto LABEL_26;
  }

LABEL_29:
  v37 = [v8 aa_fmfAccount];
  v38 = [v6 credentialForAccount_];
  v39 = v38;
  if (v38 && (v40 = [v38 credentialItemForKey_]) != 0)
  {
    v59 = v8;

    v41 = *(v1 + 48);
    v42 = swift_allocObject();
    *(v42 + 16) = v1;
    *(v42 + 24) = v37;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_24A37CE04;
    *(v43 + 24) = v42;
    v65 = sub_24A37CE3C;
    v66 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_24A37CDDC;
    v64 = &unk_285D8C0C0;
    v44 = _Block_copy(&aBlock);
    v45 = v41;

    v46 = v37;

    dispatch_sync(v45, v44);

    _Block_release(v44);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if ((v44 & 1) == 0)
    {
      (*(v55 + 16))(v57, v13, ObjectType);

LABEL_37:
      return;
    }
  }

  else
  {

    v47 = sub_24A4AB600();
    v48 = sub_24A4ABCE0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_24A376000, v47, v48, "FMFGarbageCollector: purging cache because the token is missing", v49, 2u);
      MEMORY[0x24C219130](v49, -1, -1);
    }

    v50 = *(v1 + 48);
    v51 = swift_allocObject();
    *(v51 + 16) = sub_24A49CA98;
    *(v51 + 24) = v1;
    v65 = sub_24A37CE34;
    v66 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_24A37CDDC;
    v64 = &unk_285D8C048;
    v52 = _Block_copy(&aBlock);

    v53 = v50;

    dispatch_sync(v53, v52);

    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if ((v52 & 1) == 0)
    {
      sub_24A49C5C8();

      goto LABEL_37;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24A37CB34()
{
  type metadata accessor for FMPreferencesUtilStoring();
  result = swift_allocObject();
  qword_27EF4E1A8 = result;
  unk_27EF4E1B0 = &off_285D88B40;
  qword_27EF4E1B8 = &off_285D88B20;
  return result;
}

uint64_t sub_24A37CBA4()
{
  v0 = objc_opt_self();
  v1 = sub_24A4AB820();
  v2 = sub_24A4AB820();
  v3 = [v0 stringForKey:v1 inDomain:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A4AB850();

  return v4;
}

uint64_t sub_24A37CC7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CC8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CC9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CDAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CDBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CDCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CE68(uint64_t a1, id a2)
{
  if (a2 && (v3 = [a2 identifier]) != 0)
  {
    v4 = v3;
    v5 = sub_24A4AB850();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
}

void sub_24A37CFA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_24A4AB820();
  }

  else
  {
    v2 = 0;
  }

  v3 = objc_opt_self();
  v4 = sub_24A4AB820();
  v5 = sub_24A4AB820();
  [v3 setString:v2 forKey:v4 inDomain:v5];
}

uint64_t sub_24A37D080()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A37D0E4()
{
  v1 = v0;
  v16 = sub_24A4ABD50();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v5);
  v6 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v6 - 8);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_24A3785D4();
  sub_24A4AB6D0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A37D4E0();
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A37D538();
  sub_24A4ABE90();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v16);
  *(v0 + 32) = sub_24A4ABD90();
  *(v0 + 40) = 0;
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];

  v9 = sub_24A4AB820();
  [v8 addObserver:v1 selector:sel_refreshFMFRestricted name:v9 object:0];

  v10 = [v7 defaultCenter];
  [v10 addObserver:v1 selector:sel_refreshFMFRestricted name:*MEMORY[0x277D25CA0] object:0];

  v11 = *(v1 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_24A37D5A4;
  *(v12 + 24) = v1;
  aBlock[4] = sub_24A37CE3C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A37CDDC;
  aBlock[3] = &unk_285D86000;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v11, v13);
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_24A37D4E0()
{
  result = qword_27EF402C0;
  if (!qword_27EF402C0)
  {
    sub_24A4ABD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF402C0);
  }

  return result;
}

unint64_t sub_24A37D538()
{
  result = qword_27EF402D0;
  if (!qword_27EF402D0)
  {
    sub_24A3CBC9C(&qword_27EF3F2F8, &unk_24A4B4FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF402D0);
  }

  return result;
}

void sub_24A37D5B0(uint64_t a1)
{
  v2 = [objc_opt_self() sharedConnection];
  if (v2)
  {
    v18 = v2;
    v3 = [v2 effectiveBoolValueForSetting_];
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A4AB630();
    sub_24A378E18(v4, qword_27EF4E260);
    v5 = sub_24A4AB600();
    v6 = sub_24A4ABCE0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19[0] = v8;
      *v7 = 136315138;
      if (v3 == 2)
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (v3 == 2)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v11 = sub_24A37BD58(v9, v10, v19);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_24A376000, v5, v6, "FMFSystemStateController: isRestricted: %s", v7, 0xCu);
      sub_24A37EEE0(v8);
      MEMORY[0x24C219130](v8, -1, -1);
      MEMORY[0x24C219130](v7, -1, -1);
    }

    v12 = v3 == 2;
    v13 = *(a1 + 40);
    *(a1 + 40) = v12;
    if (v12 == v13 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
    }

    else
    {
      v15 = Strong;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 40);
        ObjectType = swift_getObjectType();
        (*(v16 + 120))(v15, v3 == 2, ObjectType, v16);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void *sub_24A37D828(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A3C9CEC(&qword_27EF3F008, &qword_24A4B44D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_24A37D89C(uint64_t a1, unint64_t a2)
{
  v3 = sub_24A37D8E8(a1, a2);
  sub_24A37DA18(&unk_285D82FB0);
  return v3;
}

void *sub_24A37D8E8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24A37D828(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24A4ABF90();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24A4AB970();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A37D828(v10, 0);
        result = sub_24A4ABF20();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24A37DA18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24A387E40(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24A37DB30(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v94 = a4;
  v95 = a3;
  v97 = a2;
  v93 = a1;
  v6 = sub_24A3C9CEC(&qword_27EF40580, &qword_24A4BACA0);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v81 - v7;
  v8 = sub_24A3C9CEC(&qword_27EF40588, &qword_24A4BACA8);
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x28223BE20](v8);
  v83 = &v81 - v9;
  v92 = sub_24A4ABD50();
  v96 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_24A4AAB20();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAB10();
  v17 = sub_24A4AAAF0();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  *(v5 + 16) = v17;
  *(v5 + 24) = v19;
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  v20 = sub_24A3785D4();
  v89 = "lf°@%@}, label='%@', reason: ";
  v90 = v20;
  sub_24A4AB6C0();
  *&v100 = MEMORY[0x277D84F90];
  v87 = sub_24A37F01C(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v86 = sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  v88 = sub_24A378704(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  v21 = *MEMORY[0x277D85260];
  v22 = *(v96 + 104);
  v96 += 104;
  v85 = v22;
  v23 = v91;
  v24 = v92;
  v22(v91, v21, v92);
  *(v5 + 56) = sub_24A4ABD90();
  v89 = ".fmfcore.datamanager.updates";
  sub_24A4AB6B0();
  *&v100 = MEMORY[0x277D84F90];
  sub_24A4ABE90();
  v85(v23, v21, v24);
  v25 = v93;
  *(v5 + 64) = sub_24A4ABD90();
  sub_24A37F0C8(&v100);
  sub_24A37F110(0, 0, 0, 0);
  *&v99[183] = v111;
  *&v99[199] = v112;
  *&v99[215] = v113;
  *&v99[231] = v114;
  *&v99[119] = v107;
  *&v99[135] = v108;
  *&v99[151] = v109;
  *&v99[167] = v110;
  *&v99[55] = v103;
  *&v99[71] = v104;
  *&v99[87] = v105;
  *&v99[103] = v106;
  *&v99[7] = v100;
  *&v99[23] = v101;
  LOBYTE(v98[0]) = 1;
  *&v99[39] = v102;
  memset(v115, 0, sizeof(v115));
  sub_24A37EF2C(v115, &qword_27EF3FD68, &unk_24A4B9F40);
  v26 = v98[0];
  *(v5 + 72) = 0;
  v27 = MEMORY[0x277D84F90];
  *(v5 + 80) = MEMORY[0x277D84F90];
  *(v5 + 88) = v27;
  *(v5 + 96) = v27;
  *(v5 + 104) = v27;
  *(v5 + 112) = v27;
  *(v5 + 120) = v27;
  *(v5 + 128) = v27;
  *(v5 + 136) = v27;
  *(v5 + 144) = v27;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0;
  *(v5 + 192) = v26;
  v28 = *v99;
  v29 = *&v99[16];
  v30 = *&v99[32];
  *(v5 + 241) = *&v99[48];
  *(v5 + 225) = v30;
  *(v5 + 209) = v29;
  *(v5 + 193) = v28;
  v31 = *&v99[64];
  v32 = *&v99[80];
  v33 = *&v99[112];
  *(v5 + 289) = *&v99[96];
  *(v5 + 305) = v33;
  *(v5 + 257) = v31;
  *(v5 + 273) = v32;
  v34 = *&v99[128];
  v35 = *&v99[144];
  v36 = *&v99[176];
  *(v5 + 353) = *&v99[160];
  *(v5 + 369) = v36;
  *(v5 + 321) = v34;
  *(v5 + 337) = v35;
  v37 = *&v99[192];
  v38 = *&v99[208];
  v39 = *&v99[224];
  *(v5 + 432) = *&v99[239];
  *(v5 + 401) = v38;
  *(v5 + 417) = v39;
  *(v5 + 385) = v37;
  *(v5 + 481) = 0u;
  *(v5 + 456) = 0u;
  *(v5 + 472) = 0u;
  *(v5 + 440) = 0u;
  *(v5 + 497) = v116[0];
  *(v5 + 500) = *(v116 + 3);
  *(v5 + 504) = v27;
  *(v5 + 512) = v27;
  *(v5 + 520) = v27;
  v40 = MEMORY[0x277D84F98];
  *(v5 + 528) = MEMORY[0x277D84F98];
  type metadata accessor for FMFPendingDataManager();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  *(v41 + 24) = v40;
  *(v41 + 32) = v40;
  *(v41 + 40) = 0u;
  *(v41 + 56) = 0u;
  *(v41 + 72) = 0u;
  *(v41 + 88) = 0u;
  *(v41 + 104) = 0u;
  *(v41 + 113) = 0u;
  *(v5 + 536) = v41;
  *(v5 + 544) = v27;
  *(v5 + 552) = v27;
  *(v5 + 560) = v27;
  *(v5 + 568) = v27;
  *(v5 + 576) = 0;
  *(v5 + 584) = v27;
  *(v5 + 592) = v27;
  *(v5 + 600) = v27;
  *(v5 + 608) = v27;
  *(v5 + 616) = v27;
  *(v5 + 624) = 0u;
  *(v5 + 640) = v27;
  *(v5 + 648) = v27;
  *(v5 + 656) = v27;
  *(v5 + 664) = v27;
  *(v5 + 680) = v27;
  *(v5 + 688) = 0u;
  *(v5 + 704) = 0;
  *(v5 + 720) = v40;
  *(v5 + 728) = v40;
  v42 = v94;
  *(v5 + 744) = 0u;
  *(v5 + 760) = 0u;
  *(v5 + 776) = 0;
  *(v5 + 784) = 1;
  v43 = v101;
  *(v5 + 792) = v100;
  *(v5 + 808) = v43;
  v44 = v105;
  *(v5 + 856) = v104;
  *(v5 + 872) = v44;
  v45 = v103;
  *(v5 + 824) = v102;
  *(v5 + 840) = v45;
  v46 = v109;
  *(v5 + 920) = v108;
  *(v5 + 936) = v46;
  v47 = v107;
  *(v5 + 888) = v106;
  *(v5 + 904) = v47;
  v48 = v114;
  *(v5 + 1000) = v113;
  *(v5 + 1016) = v48;
  v49 = v112;
  *(v5 + 968) = v111;
  *(v5 + 984) = v49;
  *(v5 + 952) = v110;
  *(v5 + 1073) = 0u;
  *(v5 + 1048) = 0u;
  *(v5 + 1064) = 0u;
  *(v5 + 1032) = 0u;
  *(v5 + 1096) = v27;
  *(v5 + 1104) = v27;
  *(v5 + 1112) = v27;
  *(v5 + 736) = v95;
  *(v5 + 672) = v42;
  *(v5 + 48) = v25;
  if (v97)
  {

    v50 = v97;
  }

  else
  {
    type metadata accessor for FMFContactsDataController(0);
    swift_allocObject();

    v50 = FMFContactsDataController.init(isSnapshotMode:)(v42 & 1);
  }

  *(v5 + 712) = v50;
  if (*(v25 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) == 1 && (*(v25 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) & 1) == 0)
  {

    v51 = v83;
    sub_24A38622C(0xD000000000000011, 0x800000024A4B2410, 0x4D61746144464D46, 0xEE00726567616E61, v83);
    v52 = *(v25 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory);
    v53 = *(v25 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory + 8);
    v54 = v84;
    sub_24A37B740(v51, v84, &qword_27EF40588, &qword_24A4BACA8);
    (*(v81 + 56))(v54, 0, 1, v82);
    sub_24A3C9CEC(&qword_27EF405E0, &qword_24A4BAD08);
    swift_allocObject();

    v55 = sub_24A38557C(v52, v53, 0xD000000000000014, 0x800000024A4B2430, v54);
    sub_24A37EF2C(v51, &qword_27EF40588, &qword_24A4BACA8);
    *(v5 + 696) = v55;
  }

  else
  {
    *(v5 + 696) = 0;
  }

  v56 = *(v5 + 56);
  v57 = swift_allocObject();
  *(v57 + 16) = sub_24A37F840;
  *(v57 + 24) = v5;
  v98[4] = sub_24A37CE3C;
  v98[5] = v57;
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 1107296256;
  v98[2] = sub_24A37CDDC;
  v98[3] = &unk_285D89B18;
  v58 = _Block_copy(v98);

  dispatch_sync(v56, v58);
  _Block_release(v58);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if (v56)
  {
    __break(1u);
  }

  else
  {
    *(*(v5 + 712) + 48) = &off_285D89268;
    swift_unknownObjectWeakAssign();
    if (qword_27EF3EBF8 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v59 = sub_24A4AB630();
  sub_24A378E18(v59, qword_27EF4E260);

  v60 = sub_24A4AB600();
  v61 = sub_24A4ABCE0();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v98[0] = v96;
    *v62 = 136315394;
    v63 = *(v5 + 16);
    v64 = *(v5 + 24);

    v65 = sub_24A37E99C(0xCuLL, v63, v64);
    v67 = v66;
    v69 = v68;
    v71 = v70;

    v72 = MEMORY[0x24C217CD0](v65, v67, v69, v71);
    v74 = v73;

    v75 = sub_24A37BD58(v72, v74, v98);

    *(v62 + 4) = v75;
    *(v62 + 12) = 2080;
    if (v94)
    {
      v76 = 0x70616E7320736120;
    }

    else
    {
      v76 = 0;
    }

    if (v94)
    {
      v77 = 0xEC000000746F6873;
    }

    else
    {
      v77 = 0xE000000000000000;
    }

    v78 = sub_24A37BD58(v76, v77, v98);

    *(v62 + 14) = v78;
    _os_log_impl(&dword_24A376000, v60, v61, "FMFDataManager<%s>.init%s", v62, 0x16u);
    v79 = v96;
    swift_arrayDestroy();
    MEMORY[0x24C219130](v79, -1, -1);
    MEMORY[0x24C219130](v62, -1, -1);
  }

  else
  {
  }

  return v5;
}

uint64_t sub_24A37E7EC(uint64_t a1)
{
  result = sub_24A4AACE0();
  if (v2 <= 0x3F)
  {
    result = sub_24A4AAD10();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_24A37E870(uint64_t a1)
{
  sub_24A37E944(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24A37E944(uint64_t a1)
{
  if (!qword_27EF3F3A8)
  {
    sub_24A4AAAD0();
    v1 = sub_24A4ABDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF3F3A8);
    }
  }
}

unint64_t sub_24A37E99C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_24A4AB920();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_24A4ABA00();
}

void *sub_24A37EACC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_24A37EB30(uint64_t a1)
{
  *(a1 + 448) = 0;
  result = 0.0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_24A37EBA4(uint64_t a1)
{
  sub_24A4AAAD0();
  if (v1 <= 0x3F)
  {
    sub_24A37ECA0(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_24A37ECA0(uint64_t a1)
{
  if (!qword_27EF40178)
  {
    sub_24A4AAB80();
    v1 = sub_24A4ABDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF40178);
    }
  }
}

uint64_t sub_24A37ECF8()
{
  v0 = sub_24A4AB630();
  sub_24A378DB4(v0, qword_27EF4E278);
  sub_24A378E18(v0, qword_27EF4E278);
  return sub_24A4AB610();
}

unint64_t sub_24A37ED78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24A37D89C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24A4ABF90();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24A37EE84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A37EEE0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24A37EF2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_24A3C9CEC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24A37EF8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A37EFD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A37F01C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A37F064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24A37F0C8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  return result;
}

void sub_24A37F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t sub_24A37F164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t type metadata accessor for FMFContactsDataController(uint64_t a1)
{
  result = qword_27EF40328;
  if (!qword_27EF40328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *FMFContactsDataController.init(isSnapshotMode:)(int a1)
{
  v2 = v1;
  v46 = a1;
  v45 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v45);
  v44[1] = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24A4ABD50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4AAB20();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAB10();
  v13 = sub_24A4AAAF0();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  v2[2] = v13;
  v2[3] = v15;
  v2[6] = 0;
  swift_unknownObjectWeakInit();
  v2[7] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v5);
  sub_24A4AB6B0();
  v48 = MEMORY[0x277D84F90];
  sub_24A378620(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  v2[8] = sub_24A4ABD90();
  v16 = OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_lastContactSearchDate;
  v17 = sub_24A4AAAD0();
  v18 = *(*(v17 - 8) + 56);
  v18(v2 + v16, 1, 1, v17);
  v18(v2 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_lastContactUpdateDate, 1, 1, v17);
  *(v2 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_contactRecords) = 0;
  v19 = v2 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache;
  v20 = sub_24A4314CC(MEMORY[0x277D84F90]);
  *v19 = 0;
  *(v19 + 8) = v20;
  *(v2 + 32) = v46;
  v21 = [objc_opt_self() defaultCenter];
  [v21 addObserver:v2 selector:sel_contactStoreChangedWithNotification_ name:*MEMORY[0x277CBD140] object:0];

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v22 = sub_24A4AB630();
  sub_24A378E18(v22, qword_27EF4E260);

  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 136446466;
    v47 = *v2;
    v48 = v26;
    sub_24A3C9CEC(&unk_27EF402F0, &unk_24A4B9FC8);
    v27 = sub_24A4AB870();
    v29 = sub_24A37BD58(v27, v28, &v48);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = v2[2];
    v31 = v2[3];

    v32 = sub_24A37E99C(0xCuLL, v30, v31);
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = MEMORY[0x24C217CD0](v32, v34, v36, v38);
    v41 = v40;

    v42 = sub_24A37BD58(v39, v41, &v48);

    *(v25 + 14) = v42;
    _os_log_impl(&dword_24A376000, v23, v24, "%{public}s<%s>.init", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v26, -1, -1);
    MEMORY[0x24C219130](v25, -1, -1);
  }

  return v2;
}

void sub_24A37F84C(void *a1, void *a2)
{
  v66 = a2;
  v3 = sub_24A4AACB0();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4AAD30();
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A3C9CEC(&qword_27EF40580, &qword_24A4BACA0);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v56 - v9;
  v70 = sub_24A3C9CEC(&qword_27EF40588, &qword_24A4BACA8);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v11 = &v56 - v10;
  v12 = sub_24A4AA9D0();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v62 = v5;
  v71 = v6;
  v72 = v11;
  v15 = sub_24A4AB630();
  v75 = sub_24A378E18(v15, qword_27EF4E260);
  v16 = sub_24A4AB600();
  v17 = sub_24A4ABCE0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24A376000, v16, v17, "FMDiskIO: read from disk", v18, 2u);
    MEMORY[0x24C219130](v18, -1, -1);
  }

  v19 = [objc_opt_self() defaultManager];
  v21 = a1[3];
  v20 = a1[4];
  v23 = a1[5];
  v22 = a1[6];
  v77[0] = v21;
  v77[1] = v20;

  MEMORY[0x24C217D50](v23, v22);
  v24 = sub_24A4AB820();

  v25 = [v19 fileExistsAtPath_];

  if (v25)
  {
    v61 = a1;
    v77[0] = v21;
    v77[1] = v20;

    MEMORY[0x24C217D50](v23, v22);
    sub_24A4AA970();

    v26 = sub_24A4AA9E0();
    v34 = v23;
    v35 = v21;
    v57 = v20;
    v58 = v22;
    v36 = v26;
    v38 = v37;
    (*(v73 + 8))(v14, v74);

    sub_24A380530(v36, v38);
    v39 = sub_24A4AB600();
    v40 = sub_24A4ABCE0();

    sub_24A386E10(v36, v38);
    v41 = os_log_type_enabled(v39, v40);
    v56 = v35;
    v59 = v36;
    v60 = v38;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v76[0] = v74;
      *v42 = 136315394;
      v77[0] = v35;
      v77[1] = v57;

      LODWORD(v73) = v40;
      MEMORY[0x24C217D50](v34, v58);
      v43 = sub_24A37BD58(v77[0], v77[1], v76);

      *(v42 + 4) = v43;
      *(v42 + 12) = 2080;
      v44 = sub_24A4AA9F0();
      v46 = sub_24A37BD58(v44, v45, v76);

      *(v42 + 14) = v46;
      _os_log_impl(&dword_24A376000, v39, v73, "FMDiskIO: file: %s data: %s", v42, 0x16u);
      v47 = v74;
      swift_arrayDestroy();
      MEMORY[0x24C219130](v47, -1, -1);
      MEMORY[0x24C219130](v42, -1, -1);
    }

    v48 = v71;
    sub_24A4AA830();
    swift_allocObject();
    sub_24A4AA820();
    v49 = v69;
    sub_24A37B740(v61 + *(*v61 + 128), v69, &qword_27EF40580, &qword_24A4BACA0);
    if ((*(v68 + 48))(v49, 1, v70) == 1)
    {
      sub_24A37EF2C(v49, &qword_27EF40580, &qword_24A4BACA0);
      sub_24A380688();
      v51 = v59;
      v50 = v60;
      sub_24A4AA810();
      sub_24A386E10(v51, v50);
    }

    else
    {
      sub_24A37BE24(v49, v72, &qword_27EF40588, &qword_24A4BACA8);
      sub_24A37F01C(&qword_27EF405B8, MEMORY[0x277D08F20], MEMORY[0x277D08F30]);
      sub_24A4AA810();
      v52 = v62;
      sub_24A4AACC0();
      v53 = sub_24A4AAD20();
      v55 = v54;
      (*(v63 + 8))(v52, v64);
      sub_24A380688();
      sub_24A4AA810();

      sub_24A386E10(v53, v55);
      sub_24A386E10(v59, v60);
      (*(v65 + 8))(v67, v48);
      sub_24A37EF2C(v72, &qword_27EF40588, &qword_24A4BACA8);
    }

    nullsub_1();
    memcpy(v76, v66, 0x1C8uLL);
    memcpy(v66, v77, 0x1C8uLL);
    sub_24A37EF2C(v76, &qword_27EF405A8, &qword_24A4BACC0);
  }

  else
  {
    v27 = v21;
    v28 = v20;

    v75 = sub_24A4AB600();
    v29 = sub_24A4ABCC0();

    if (os_log_type_enabled(v75, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v76[0] = v31;
      *v30 = 136315138;
      v77[0] = v27;
      v77[1] = v28;

      MEMORY[0x24C217D50](v23, v22);
      v32 = sub_24A37BD58(v77[0], v77[1], v76);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_24A376000, v75, v29, "FMDiskIO: Disk archive does not exist at: %s", v30, 0xCu);
      sub_24A37EEE0(v31);
      MEMORY[0x24C219130](v31, -1, -1);
      MEMORY[0x24C219130](v30, -1, -1);
    }

    else
    {
      v33 = v75;
    }
  }
}

uint64_t sub_24A380530(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24A380598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AACE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24A4AAD10();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

unint64_t sub_24A380688()
{
  result = qword_27EF405B0;
  if (!qword_27EF405B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF405B0);
  }

  return result;
}

uint64_t sub_24A3806DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v57 = a2;
  v4 = sub_24A3C9CEC(&qword_27EF3FD58, &qword_24A4B8A08);
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v129 = 1;
  sub_24A37F0C8(v130);
  *&v128[183] = v130[11];
  *&v128[199] = v130[12];
  *&v128[215] = v130[13];
  *&v128[231] = v130[14];
  *&v128[119] = v130[7];
  *&v128[135] = v130[8];
  *&v128[151] = v130[9];
  *&v128[167] = v130[10];
  *&v128[55] = v130[3];
  *&v128[71] = v130[4];
  *&v128[87] = v130[5];
  *&v128[103] = v130[6];
  *&v128[7] = v130[0];
  *&v128[23] = v130[1];
  *&v128[39] = v130[2];
  sub_24A37EACC(a1, a1[3]);
  sub_24A381748();
  sub_24A4AC3C0();
  if (v2)
  {
    v131 = v2;
    sub_24A37EEE0(a1);
    v59 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LODWORD(v58) = 0;
    LODWORD(v57) = 0;
  }

  else
  {
    v56 = a1;
    sub_24A3C9CEC(&qword_27EF3F198, &qword_24A4B4978);
    v60[0] = 0;
    sub_24A3818EC();
    sub_24A4AC160();
    v52 = v61;
    v60[0] = 1;
    sub_24A4AC160();
    v51 = v61;
    v60[0] = 2;
    sub_24A4AC160();
    v50 = v61;
    v60[0] = 3;
    sub_24A4AC160();
    v49 = v61;
    v60[0] = 4;
    sub_24A4AC160();
    v48 = v61;
    sub_24A3C9CEC(&qword_27EF3F1B0, &unk_24A4B4980);
    v60[0] = 5;
    sub_24A382AC4();
    sub_24A4AC160();
    v47 = v61;
    v60[0] = 6;
    sub_24A4AC160();
    v46 = v61;
    v60[0] = 7;
    sub_24A4AC160();
    v45 = v61;
    v60[0] = 8;
    sub_24A4AC160();
    *&v43 = v61;
    v60[0] = 9;
    sub_24A382B78();
    sub_24A4AC160();
    *v44 = *(&v61 + 1);
    *&v44[8] = v62;
    v20 = 256;
    if (!BYTE1(v61))
    {
      v20 = 0;
    }

    v21 = v20 | v61;
    v22 = 0x10000;
    if (!BYTE2(v61))
    {
      v22 = 0;
    }

    *(&v43 + 1) = v21 | v22 | (BYTE3(v61) << 24);
    sub_24A37F110(0, 0, 0, 0);
    v125 = 10;
    sub_24A38351C();
    sub_24A4AC160();
    v23 = v126;
    v129 = 0;
    v94 = 11;
    sub_24A383EF0();
    sub_24A4AC160();
    *&v68[80] = v107;
    *&v68[96] = v108;
    *&v68[112] = v109;
    *&v68[16] = v103;
    *&v68[32] = v104;
    *&v68[48] = v105;
    *&v68[64] = v106;
    v65 = v99;
    v66 = v100;
    v67 = v101;
    *v68 = v102;
    v61 = v95;
    v62 = v96;
    v63 = v97;
    v64 = v98;
    nullsub_1();
    v122 = *&v68[80];
    v123 = *&v68[96];
    v124 = *&v68[112];
    v118 = *&v68[16];
    v119 = *&v68[32];
    v120 = *&v68[48];
    v121 = *&v68[64];
    v114 = v65;
    v115 = v66;
    v116 = v67;
    v117 = *v68;
    v110 = v61;
    v111 = v62;
    v112 = v63;
    v113 = v64;
    *&v128[199] = *&v68[80];
    *&v128[215] = *&v68[96];
    *&v128[231] = *&v68[112];
    *&v128[135] = *&v68[16];
    *&v128[151] = *&v68[32];
    *&v128[167] = *&v68[48];
    *&v128[183] = *&v68[64];
    *&v128[71] = v65;
    *&v128[87] = v66;
    *&v128[103] = v67;
    *&v128[119] = *v68;
    *&v128[7] = v61;
    *&v128[23] = v62;
    *&v128[39] = v63;
    *&v128[55] = v64;
    v85[63] = 12;
    sub_24A384C18();
    sub_24A4AC160();
    v36 = v86;
    v37 = v87;
    v38 = v88;
    v39 = v89;
    v40 = v90;
    v41 = v91;
    v59 = v92;
    v42 = v93;
    memset(v85, 0, 57);
    sub_24A37EF2C(v85, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A3C9CEC(&qword_27EF3F130, &unk_24A4B4960);
    v60[0] = 13;
    sub_24A415B2C();
    sub_24A4AC160();
    LODWORD(v35) = 1;
    v131 = 0;
    v55 = v61;
    sub_24A3C9CEC(&qword_27EF3FD70, &qword_24A4B8A10);
    v60[0] = 16;
    sub_24A387028(&qword_27EF3FD78, sub_24A3870AC, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v24 = v131;
    sub_24A4AC160();
    v131 = v24;
    if (v24)
    {
      (*(v58 + 8))(v6, v4);
      sub_24A37EEE0(v56);
      LODWORD(v58) = 0;
      LODWORD(v57) = 0;
    }

    else
    {
      v54 = v61;
      sub_24A3C9CEC(&qword_27EF3FD80, &qword_24A4B8A18);
      v60[0] = 14;
      sub_24A415BB0();
      v25 = v131;
      sub_24A4AC160();
      v131 = v25;
      if (v25)
      {
        (*(v58 + 8))(v6, v4);
        sub_24A37EEE0(v56);
        LODWORD(v58) = 0;
        LODWORD(v57) = 1;
      }

      else
      {
        v53 = v61;
        sub_24A3C9CEC(&qword_27EF3F118, &qword_24A4B4958);
        v83 = 15;
        sub_24A387298();
        v26 = v131;
        sub_24A4AC160();
        v131 = v26;
        if (!v26)
        {
          (*(v58 + 8))(v6, v4);
          v35 = v84;
          *v60 = v52;
          *&v60[8] = v51;
          *&v60[16] = v50;
          *&v60[24] = v49;
          *&v60[32] = v48;
          *&v60[40] = v47;
          *&v60[48] = v46;
          *&v60[56] = v45;
          *&v60[64] = v43;
          *&v60[80] = *v44;
          *&v60[88] = *&v44[8];
          *&v60[104] = v23;
          v34 = v23;
          LODWORD(v58) = v129;
          v60[112] = v129;
          *&v60[321] = *&v128[208];
          *&v60[337] = *&v128[224];
          *&v60[257] = *&v128[144];
          *&v60[273] = *&v128[160];
          *&v60[289] = *&v128[176];
          *&v60[305] = *&v128[192];
          *&v60[241] = *&v128[128];
          *&v60[177] = *&v128[64];
          *&v60[193] = *&v128[80];
          *&v60[209] = *&v128[96];
          *&v60[225] = *&v128[112];
          *&v60[113] = *v128;
          *&v60[129] = *&v128[16];
          *&v60[145] = *&v128[32];
          *&v60[161] = *&v128[48];
          *&v60[352] = *&v128[239];
          v28 = v36;
          v27 = v37;
          *&v60[360] = v36;
          *&v60[368] = v37;
          v29 = v38;
          v30 = v39;
          *&v60[376] = v38;
          *&v60[384] = v39;
          v31 = v40;
          v32 = v41;
          *&v60[392] = v40;
          *&v60[400] = v41;
          v33 = v59;
          *&v60[408] = v59;
          v60[416] = v42;
          *&v60[417] = *v127;
          *&v60[420] = *&v127[3];
          *&v60[424] = v55;
          *&v60[432] = v53;
          *&v60[440] = v84;
          *&v60[448] = v54;
          memcpy(v57, v60, 0x1C8uLL);
          sub_24A38734C(v60, &v61);
          sub_24A37EEE0(v56);
          *&v61 = v52;
          *(&v61 + 1) = v51;
          *&v62 = v50;
          *(&v62 + 1) = v49;
          *&v63 = v48;
          *(&v63 + 1) = v47;
          *&v64 = v46;
          *(&v64 + 1) = v45;
          v65 = v43;
          v66 = *v44;
          *&v67 = *&v44[16];
          *(&v67 + 1) = v34;
          v68[0] = v58;
          *&v68[145] = *&v128[144];
          *&v68[161] = *&v128[160];
          *&v68[209] = *&v128[208];
          *v69 = *&v128[224];
          *&v68[177] = *&v128[176];
          *&v68[193] = *&v128[192];
          *&v68[49] = *&v128[48];
          *&v68[33] = *&v128[32];
          *&v68[17] = *&v128[16];
          *&v68[1] = *v128;
          *&v68[113] = *&v128[112];
          *&v68[97] = *&v128[96];
          *&v68[81] = *&v128[80];
          *&v68[65] = *&v128[64];
          *&v68[129] = *&v128[128];
          *&v69[15] = *&v128[239];
          v70 = v28;
          v71 = v27;
          v72 = v29;
          v73 = v30;
          v74 = v31;
          v75 = v32;
          v76 = v33;
          v77 = v42;
          *v78 = *v127;
          *&v78[3] = *&v127[3];
          v79 = v55;
          v80 = v53;
          v81 = v35;
          v82 = v54;
          return sub_24A3873B4(&v61);
        }

        (*(v58 + 8))(v6, v4);
        sub_24A37EEE0(v56);
        LODWORD(v58) = 1;
        LODWORD(v57) = 1;
      }
    }

    v14 = *&v44[16];
    v15 = *&v44[8];
    v17 = *(&v43 + 1);
    v16 = *v44;
    v8 = v40;
    v7 = v41;
    v10 = v38;
    v9 = v39;
    v12 = v36;
    v11 = v37;
    v13 = v42;
    v18 = v35;
  }

  sub_24A37F110(v17, v16, v15, v14);
  *&v61 = v12;
  *(&v61 + 1) = v11;
  *&v62 = v10;
  *(&v62 + 1) = v9;
  *&v63 = v8;
  *(&v63 + 1) = v7;
  *&v64 = v59;
  BYTE8(v64) = v13;
  result = sub_24A37EF2C(&v61, &qword_27EF3FD68, &unk_24A4B9F40);
  if (v18)
  {
  }

  if (v58)
  {
  }

  if (v57)
  {
  }

  return result;
}

unint64_t sub_24A38169C()
{
  result = qword_27EF3FE30;
  if (!qword_27EF3FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE30);
  }

  return result;
}

unint64_t sub_24A3816F4()
{
  result = qword_27EF3FE38;
  if (!qword_27EF3FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE38);
  }

  return result;
}

unint64_t sub_24A381748()
{
  result = qword_27EF3FD60;
  if (!qword_27EF3FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD60);
  }

  return result;
}

uint64_t type metadata accessor for FMFIntermediateFriend(uint64_t a1)
{
  result = qword_27EF3F388;
  if (!qword_27EF3F388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3817E8(uint64_t a1)
{
  sub_24A379C28(319, &qword_27EF3F398, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24A37A11C(319);
    if (v2 <= 0x3F)
    {
      sub_24A37E944(319);
      if (v3 <= 0x3F)
      {
        sub_24A379C28(319, &qword_27EF3F3B0, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24A3818EC()
{
  result = qword_27EF3F1A0;
  if (!qword_27EF3F1A0)
  {
    sub_24A3CBC9C(&qword_27EF3F198, &qword_24A4B4978);
    sub_24A3819A0(&qword_27EF3F1A8, type metadata accessor for FMFIntermediateFriend, &unk_24A4B5458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1A0);
  }

  return result;
}

uint64_t sub_24A3819A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A3819E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A381A4C(char a1)
{
  result = 0x6E69776F6C6C6F66;
  switch(a1)
  {
    case 1:
      result = 0x7265776F6C6C6F66;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 4:
      result = 0x6F46657275747566;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0x6E65726566657270;
      break;
    case 10:
      result = 0x7365727574616566;
      break;
    case 11:
      result = 0x6769666E6F63;
      break;
    case 12:
      result = 0x6F666E49796DLL;
      break;
    case 13:
      result = 0x73656369766564;
      break;
    case 14:
      result = 0x736C6562616CLL;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x73746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMFFriend.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFFriend.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A381DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_24A3C9CEC(&qword_27EF3F3C8, &qword_24A4B5488);
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for FMFIntermediateFriend(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A37EACC(a1, a1[3]);
  sub_24A382600();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  v35 = v7;
  v10 = v36;
  LOBYTE(v39) = 0;
  v11 = v6;
  *v9 = sub_24A4AC120();
  v9[1] = v13;
  LOBYTE(v39) = 1;
  v14 = a1;
  v15 = v9;
  v9[2] = sub_24A4AC120();
  v9[3] = v16;
  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  v38 = 2;
  sub_24A382908(&qword_27EF3F110, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24A4AC160();
  v17 = v35;
  v9[4] = v39;
  v38 = 3;
  sub_24A4AC160();
  v9[5] = v39;
  LOBYTE(v39) = 4;
  v9[6] = sub_24A4AC120();
  v9[7] = v18;
  LOBYTE(v39) = 5;
  v9[8] = sub_24A4AC120();
  v9[9] = v19;
  LOBYTE(v39) = 9;
  *(v9 + v17[13]) = sub_24A4AC130() & 1;
  LOBYTE(v39) = 10;
  *(v9 + v17[14]) = sub_24A4AC130() & 1;
  LOBYTE(v39) = 11;
  *(v9 + v17[15]) = sub_24A4AC130() & 1;
  LOBYTE(v39) = 12;
  *(v9 + v17[16]) = sub_24A4AC130() & 1;
  v38 = 13;
  sub_24A4AC160();
  v20 = v10;
  *(v9 + v17[17]) = v39;
  LOBYTE(v39) = 7;
  v21 = sub_24A4AC170();
  v22 = v37;
  v23 = v17[11];
  v24 = [objc_opt_self() fm:v21 dateFromEpoch:?];
  sub_24A4AAAA0();

  v25 = sub_24A4AAAD0();
  (*(*(v25 - 8) + 56))(v15 + v23, 0, 1, v25);
  LOBYTE(v39) = 8;
  v26 = sub_24A4AC170();
  v28 = v35[12];
  if (v26 < 1)
  {
    v27 = sub_24A4AAAD0();
    (*(*(v27 - 8) + 56))(v15 + v28, 1, 1, v27);
  }

  else
  {
    v29 = [objc_opt_self() fm:v26 dateFromEpoch:?];
    sub_24A4AAAA0();

    v30 = sub_24A4AAAD0();
    (*(*(v30 - 8) + 56))(v15 + v28, 0, 1, v30);
  }

  LOBYTE(v39) = 6;
  v31 = sub_24A4AC170();
  v32 = v35[10];
  v33 = [objc_opt_self() fm:v31 dateFromEpoch:?];
  sub_24A4AAAA0();

  (*(v22 + 8))(v11, v4);
  v34 = sub_24A4AAAD0();
  (*(*(v34 - 8) + 56))(v15 + v32, 0, 1, v34);
  sub_24A382A04(v15, v20);
  sub_24A37EEE0(v14);
  return sub_24A382A68(v15);
}

unint64_t sub_24A382554()
{
  result = qword_27EF3F430;
  if (!qword_27EF3F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F430);
  }

  return result;
}

unint64_t sub_24A3825AC()
{
  result = qword_27EF3F438;
  if (!qword_27EF3F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F438);
  }

  return result;
}

unint64_t sub_24A382600()
{
  result = qword_27EF3F3D0;
  if (!qword_27EF3F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F3D0);
  }

  return result;
}

uint64_t sub_24A382670(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x64496E6F73726570;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      v3 = 1633972341;
      goto LABEL_13;
    case 7:
      v3 = 1634038371;
LABEL_13:
      result = v3 | 0x6954657400000000;
      break;
    case 8:
      result = 0x73657269707865;
      break;
    case 9:
      result = 0x746F4E646574706FLL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x6E65644968737570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMFIntermediateFriend.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A382908(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3F108, &qword_24A4B4950);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFIntermediateFriend.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A382A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFIntermediateFriend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A382A68(uint64_t a1)
{
  v2 = type metadata accessor for FMFIntermediateFriend(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A382AC4()
{
  result = qword_27EF3F1B8;
  if (!qword_27EF3F1B8)
  {
    sub_24A3CBC9C(&qword_27EF3F1B0, &unk_24A4B4980);
    sub_24A3819A0(&qword_27EF3F1C0, type metadata accessor for FMFLocationAlert, &protocol conformance descriptor for FMFLocationAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1B8);
  }

  return result;
}

unint64_t sub_24A382B78()
{
  result = qword_27EF3F148;
  if (!qword_27EF3F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F148);
  }

  return result;
}

uint64_t FMFPreferences.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FC70, &qword_24A4B7E40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3831D4();
  sub_24A4AC3C0();
  if (!v2)
  {
    LOBYTE(v40) = 1;
    v9 = sub_24A4AC120();
    v39 = a2;
    v11 = v10;
    v38 = v9;
    LOBYTE(v40) = 0;
    v12 = sub_24A4AC120();
    v14 = v13;
    LOBYTE(v40) = 2;
    v36 = sub_24A4AC120();
    v37 = v15;
    LOBYTE(v40) = 3;
    v34 = sub_24A4AC120();
    v35 = v16;
    LOBYTE(v40) = 4;
    v17 = sub_24A4AC120();
    v32 = v19;
    v33 = v17;
    sub_24A3C9CEC(&qword_27EF3FC80, &qword_24A4B7E48);
    v42 = 5;
    sub_24A3833C0(&qword_27EF3FC88, sub_24A383438, MEMORY[0x277D83978]);
    sub_24A4AC160();
    v31 = v40;
    if (v12 == 7562585 && v14 == 0xE300000000000000 || (sub_24A4AC270() & 1) != 0)
    {

      v20 = 1;
    }

    else
    {
      if (v12 != 28494 || v14 != 0xE200000000000000)
      {
        sub_24A4AC270();
      }

      v20 = 0;
    }

    v41 = v20;
    v21 = v36;
    v22 = v37;
    v23 = v39;
    if (v36 == 7562585 && v37 == 0xE300000000000000 || (sub_24A4AC270() & 1) != 0)
    {

      v24 = 1;
    }

    else
    {
      if (v21 != 28494 || v22 != 0xE200000000000000)
      {
        sub_24A4AC270();
      }

      v24 = 0;
    }

    v43 = v24;
    if (v34 == 7562585 && v35 == 0xE300000000000000)
    {

      v25 = 1;
    }

    else
    {
      v25 = sub_24A4AC270();
    }

    v26 = v25 & 1;
    if (v11)
    {
      v27 = sub_24A4AC0C0();

      (*(v6 + 8))(v8, v5);
      v28 = v27 == 1;
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v28 = 2;
    }

    v29 = v43;
    *v23 = v41;
    *(v23 + 1) = v29;
    *(v23 + 2) = v26;
    *(v23 + 3) = v28;
    v30 = v32;
    *(v23 + 8) = v33;
    *(v23 + 16) = v30;
    *(v23 + 24) = v31;
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A383128()
{
  result = qword_27EF3FCE0;
  if (!qword_27EF3FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCE0);
  }

  return result;
}

unint64_t sub_24A383180()
{
  result = qword_27EF3FCE8;
  if (!qword_27EF3FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCE8);
  }

  return result;
}

unint64_t sub_24A3831D4()
{
  result = qword_27EF3FC78;
  if (!qword_27EF3FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FC78);
  }

  return result;
}

unint64_t sub_24A383228()
{
  v1 = *v0;
  v2 = 0x61636F4C65646968;
  v3 = 0xD000000000000013;
  v4 = 0x457972616D697270;
  if (v1 != 4)
  {
    v4 = 0x657469726F766166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t storeEnumTagSinglePayload for FMFPreferences.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A3833C0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3FC80, &qword_24A4B7E48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A383438()
{
  result = qword_27EF3FC90;
  if (!qword_27EF3FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FC90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFPreferences.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A38351C()
{
  result = qword_27EF3F150;
  if (!qword_27EF3F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F150);
  }

  return result;
}

uint64_t FMFFeatures.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF40640, &qword_24A4BAED0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A383BB0();
  sub_24A4AC3C0();
  if (!v2)
  {
    LOBYTE(v38) = 0;
    v9 = sub_24A4AC130();
    LOBYTE(v38) = 1;
    v10 = sub_24A4AC130();
    LOBYTE(v38) = 2;
    v11 = sub_24A4AC130();
    LOBYTE(v38) = 3;
    LODWORD(v37) = sub_24A4AC130();
    LOBYTE(v38) = 4;
    LODWORD(v36) = sub_24A4AC130();
    LOBYTE(v38) = 5;
    LODWORD(v35) = sub_24A4AC130();
    LOBYTE(v38) = 6;
    v34 = sub_24A4AC130();
    LOBYTE(v38) = 7;
    LODWORD(v33) = sub_24A4AC130();
    v32 = v9;
    LOBYTE(v38) = 8;
    v31 = sub_24A4AC130();
    LOBYTE(v38) = 9;
    v30 = sub_24A4AC130();
    LOBYTE(v38) = 10;
    v29 = sub_24A4AC130();
    LOBYTE(v38) = 11;
    v28 = sub_24A4AC130();
    LOBYTE(v38) = 12;
    v27 = sub_24A4AC130();
    LOBYTE(v38) = 13;
    v13 = sub_24A4AC130();
    if (v10)
    {
      v14 = v32 & 1 | 2;
    }

    else
    {
      v14 = v32 & 1;
    }

    v15 = v14 | 4;
    if ((v11 & 1) == 0)
    {
      v15 = v14;
    }

    if (v37)
    {
      v15 |= 8uLL;
    }

    if (v36)
    {
      v15 |= 0x10uLL;
    }

    if (v35)
    {
      v15 |= 0x20uLL;
    }

    if (v34)
    {
      v15 |= 0x40uLL;
    }

    if (v33)
    {
      v16 = v15 | 0x80;
    }

    else
    {
      v16 = v15;
    }

    if (v31)
    {
      v16 |= 0x100uLL;
    }

    if (v30)
    {
      v16 |= 0x200uLL;
    }

    if (v29)
    {
      v16 |= 0x400uLL;
    }

    if (v28)
    {
      v16 |= 0x800uLL;
    }

    if (v27)
    {
      v16 |= 0x1000uLL;
    }

    if (v13)
    {
      v16 |= 0x2000uLL;
    }

    v37 = v16;
    v38 = v16;
    v35 = FMFFeatures.debugDescription.getter();
    v18 = v17;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A4AB630();
    sub_24A378E18(v19, qword_27EF4E260);

    v20 = sub_24A4AB600();
    v21 = sub_24A4ABCE0();

    v34 = v21;
    v36 = v20;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v22 = 136315138;
      v23 = sub_24A37BD58(v35, v18, &v38);

      *(v22 + 4) = v23;
      v24 = v36;
      _os_log_impl(&dword_24A376000, v36, v34, "FMFFeature: initialized %s", v22, 0xCu);
      v25 = v33;
      sub_24A37EEE0(v33);
      MEMORY[0x24C219130](v25, -1, -1);
      MEMORY[0x24C219130](v22, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    *a2 = v37;
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A383B04()
{
  result = qword_27EF40680;
  if (!qword_27EF40680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40680);
  }

  return result;
}

unint64_t sub_24A383B5C()
{
  result = qword_27EF40688;
  if (!qword_27EF40688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40688);
  }

  return result;
}

unint64_t sub_24A383BB0()
{
  result = qword_27EF40648;
  if (!qword_27EF40648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40648);
  }

  return result;
}

unint64_t sub_24A383C20(char a1)
{
  result = 0x6569724677656976;
  switch(a1)
  {
    case 1:
      result = 0x6C6C6F4677656976;
      break;
    case 2:
      result = 0x7165526E4F746361;
      break;
    case 3:
      result = 0x636F4C726566666FLL;
      break;
    case 4:
      result = 0x794D65676E616863;
      break;
    case 5:
      result = 0x654D65676E616863;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x724665766F6D6572;
      break;
    case 10:
      result = 0x6F4665766F6D6572;
      break;
    case 11:
      result = 0x654465766F6D6572;
      break;
    case 12:
      result = 0x744F796669746F6ELL;
      break;
    case 13:
      result = 0x654D796669746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t FMFFeatures.debugDescription.getter()
{
  sub_24A4ABF50();

  v0 = sub_24A4AC240();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_24A383EF0()
{
  result = qword_27EF3F160;
  if (!qword_27EF3F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F160);
  }

  return result;
}

uint64_t FMFConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FEF8, &qword_24A4B8F40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A384718();
  sub_24A4AC3C0();
  if (!v2)
  {
    v63 = 0;
    v9 = sub_24A4AC150();
    v63 = 1;
    v10 = sub_24A4AC150();
    v63 = 2;
    v11 = sub_24A4AC150();
    v63 = 3;
    sub_24A4AC140();
    v13 = v12;
    v63 = 4;
    v62 = sub_24A4AC150();
    v63 = 5;
    v61 = sub_24A4AC150();
    v63 = 6;
    v60 = sub_24A4AC130();
    v63 = 7;
    v14 = sub_24A4AC150();
    v58 = a2;
    v59 = v14;
    v63 = 8;
    v57 = sub_24A4AC150();
    v63 = 9;
    v56 = sub_24A4AC150();
    v63 = 10;
    v55 = sub_24A4AC150();
    v63 = 11;
    v54 = sub_24A4AC150();
    v63 = 12;
    v53 = sub_24A4AC130();
    v63 = 13;
    v52 = sub_24A4AC150();
    v63 = 14;
    v51 = sub_24A4AC150();
    v63 = 15;
    v50 = sub_24A4AC150();
    v63 = 16;
    v49 = sub_24A4AC150();
    v63 = 17;
    v16 = sub_24A4AC100();
    v18 = 20;
    if ((v17 & 1) == 0)
    {
      v18 = v16;
    }

    v48 = v18;
    v63 = 18;
    v47 = sub_24A4AC150();
    v63 = 19;
    v46 = sub_24A4AC150();
    v63 = 20;
    v45 = sub_24A4AC150();
    v63 = 21;
    v44 = sub_24A4AC150();
    v63 = 22;
    v43 = sub_24A4AC150();
    v63 = 23;
    v42 = sub_24A4AC150();
    v63 = 24;
    v41 = sub_24A4AC150();
    v63 = 25;
    v40 = sub_24A4AC130();
    v63 = 26;
    v39 = sub_24A4AC130();
    v63 = 27;
    v38 = sub_24A4AC150();
    v63 = 28;
    v37 = sub_24A4AC150();
    v63 = 29;
    v36 = sub_24A4AC150();
    v63 = 30;
    v35 = sub_24A4AC150();
    (*(v6 + 8))(v8, v5);
    v19 = v60 & 1;
    v20 = v53 & 1;
    v21 = v40 & 1;
    v22 = v58;
    *v58 = v9;
    v22[1] = v10;
    v23 = v39 & 1;
    v22[2] = v11;
    v22[3] = v13;
    v22[4] = v62;
    v22[5] = v61;
    *(v22 + 48) = v19;
    v24 = v57;
    v22[7] = v59;
    v22[8] = v24;
    v25 = v55;
    v22[9] = v56;
    v22[10] = v25;
    v22[11] = v54;
    *(v22 + 96) = v20;
    v26 = v51;
    v22[13] = v52;
    v22[14] = v26;
    v27 = v49;
    v22[15] = v50;
    v22[16] = v27;
    v28 = v47;
    v22[17] = v48;
    v22[18] = v28;
    v29 = v45;
    v22[19] = v46;
    v22[20] = v29;
    v30 = v43;
    v22[21] = v44;
    v22[22] = v30;
    v31 = v41;
    v22[23] = v42;
    v22[24] = v31;
    *(v22 + 200) = v21;
    *(v22 + 201) = v23;
    v32 = v37;
    v22[26] = v38;
    v22[27] = v32;
    v33 = v35;
    v22[28] = v36;
    v22[29] = v33;
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A38466C()
{
  result = qword_27EF3FF18;
  if (!qword_27EF3FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF18);
  }

  return result;
}

unint64_t sub_24A3846C4()
{
  result = qword_27EF3FF20;
  if (!qword_27EF3FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF20);
  }

  return result;
}

unint64_t sub_24A384718()
{
  result = qword_27EF3FF00;
  if (!qword_27EF3FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF00);
  }

  return result;
}

unint64_t sub_24A384774(char a1)
{
  result = 0x6F6C6C6F4678616DLL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0x4C6E6F6973736573;
      break;
    case 4:
    case 10:
    case 19:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x7469766E4978616DLL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6C6562614C78616DLL;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0x65764F4E4F726162;
      break;
    case 13:
      result = 0x6E6F697461636F6CLL;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 20:
      result = 0x6E6569724678616DLL;
      break;
    case 21:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0xD000000000000018;
      break;
    case 23:
    case 30:
      result = 0xD00000000000001ELL;
      break;
    case 24:
    case 27:
      result = 0xD00000000000001BLL;
      break;
    case 25:
      result = 0x6E45636F4C726162;
      break;
    case 26:
      result = 0x67694D776F6C6C61;
      break;
    case 28:
      result = 0xD000000000000018;
      break;
    case 29:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMFConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A384C18()
{
  result = qword_27EF3F158;
  if (!qword_27EF3F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F158);
  }

  return result;
}

uint64_t FMFMyInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF40EA0, &qword_24A4BD2B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3850E8();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  LOBYTE(v29) = 0;
  sub_24A382908(&qword_27EF3F110, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24A4AC160();
  v9 = v32[0];
  LOBYTE(v32[0]) = 1;
  v10 = sub_24A4AC120();
  v28 = v11;
  v25 = v10;
  LOBYTE(v32[0]) = 2;
  v24 = sub_24A4AC120();
  v27 = v12;
  LOBYTE(v32[0]) = 3;
  v23 = sub_24A4AC120();
  v26 = v13;
  v35 = 4;
  v14 = sub_24A4AC130();
  (*(v6 + 8))(v8, v5);
  v34 = v14 & 1;
  v15 = v24;
  v16 = v25;
  *&v29 = v9;
  *(&v29 + 1) = v25;
  v18 = v27;
  v17 = v28;
  *&v30 = v28;
  *(&v30 + 1) = v24;
  *v31 = v27;
  *&v31[8] = v23;
  v19 = v26;
  *&v31[16] = v26;
  v31[24] = v34;
  v20 = v30;
  *a2 = v29;
  a2[1] = v20;
  a2[2] = *v31;
  *(a2 + 41) = *&v31[9];
  sub_24A386F18(&v29, v32);
  sub_24A37EEE0(a1);
  v32[0] = v9;
  v32[1] = v16;
  v32[2] = v17;
  v32[3] = v15;
  v32[4] = v18;
  v32[5] = v23;
  v32[6] = v19;
  v33 = v34;
  return sub_24A385278(v32);
}

unint64_t sub_24A38503C()
{
  result = qword_27EF40EC0;
  if (!qword_27EF40EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40EC0);
  }

  return result;
}

unint64_t sub_24A385094()
{
  result = qword_27EF40EC8;
  if (!qword_27EF40EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40EC8);
  }

  return result;
}

unint64_t sub_24A3850E8()
{
  result = qword_27EF40EA8;
  if (!qword_27EF40EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40EA8);
  }

  return result;
}

uint64_t sub_24A38513C()
{
  v1 = *v0;
  v2 = 0x736C69616D65;
  v3 = 0x656369766544656DLL;
  v4 = 0x6449656369766564;
  if (v1 != 3)
  {
    v4 = 0x656C626967696C65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D614E7473726966;
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

uint64_t getEnumTagSinglePayload for FMFAlertType(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_24A3852CC()
{
  result = qword_27EF3F140;
  if (!qword_27EF3F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F140);
  }

  return result;
}

unint64_t sub_24A385340()
{
  result = qword_27EF40738;
  if (!qword_27EF40738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40738);
  }

  return result;
}

uint64_t sub_24A3853A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24A4AACE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24A4AAD10();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24A3854BC(uint64_t *a1)
{
  type metadata accessor for FMDiskIO.KeyPair(255, a1[10], a1[11], a1[12]);
  result = sub_24A4ABDF0();
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

void *sub_24A38557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a3;
  v28 = a5;
  v24 = a4;
  v25 = a1;
  v26 = a2;
  v23 = sub_24A4ABD50();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v10);
  v11 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_24A3785D4();
  v22[1] = "FriendCacheData.data";
  v22[2] = v12;
  sub_24A4AB6B0();
  v29 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A378704(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v23);
  v5[2] = sub_24A4ABD90();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A4AB630();
  sub_24A378E18(v13, qword_27EF4E260);
  v14 = v24;

  v15 = sub_24A4AB600();
  v16 = sub_24A4ABCE0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    v19 = v27;
    *(v17 + 4) = sub_24A37BD58(v27, v14, &v29);
    _os_log_impl(&dword_24A376000, v15, v16, "FMDiskIO: init with file name: %s", v17, 0xCu);
    sub_24A37EEE0(v18);
    MEMORY[0x24C219130](v18, -1, -1);
    MEMORY[0x24C219130](v17, -1, -1);
  }

  else
  {

    v19 = v27;
  }

  v20 = v26;
  v6[3] = v25;
  v6[4] = v20;
  v6[5] = v19;
  v6[6] = v14;
  sub_24A37BE24(v28, v6 + *(*v6 + 128), &qword_27EF40580, &qword_24A4BACA0);
  return v6;
}

void sub_24A38594C()
{
  v1 = *(v0 + 48);
  if (*(v1 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) == 1 && (*(v1 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) & 1) == 0)
  {
    v2 = *(v0 + 696);
    if (!v2)
    {
LABEL_6:
      os_unfair_lock_lock((v0 + 72));
      sub_24A44FCF4((v0 + 80));
      os_unfair_lock_unlock((v0 + 72));
      *(v0 + 704) = 0;
      return;
    }

    sub_24A37EB30(__src);
    memcpy(__dst, __src, sizeof(__dst));
    v3 = *(v2 + 16);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = __dst;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_24A37F844;
    *(v5 + 24) = v4;
    aBlock[4] = sub_24A37CE34;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A37CDDC;
    aBlock[3] = &unk_285D89550;
    v6 = _Block_copy(aBlock);
    swift_retain_n();

    dispatch_sync(v3, v6);

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      memcpy(v36, __dst, sizeof(v36));
      memcpy(v37, __dst, sizeof(v37));
      if (sub_24A387434(v37) == 1)
      {
        goto LABEL_6;
      }

      os_unfair_lock_lock((v0 + 72));
      memcpy(aBlock, (v0 + 80), 0x1C8uLL);
      sub_24A3873B4(aBlock);
      memcpy((v0 + 80), v37, 0x1C8uLL);
      sub_24A38734C(v37, &v20);
      os_unfair_lock_unlock((v0 + 72));
      *(v0 + 680) = v37[0];

      *(v0 + 544) = v37[1];

      *(v0 + 560) = v37[3];

      *(v0 + 568) = v37[4];

      *(v0 + 640) = v37[5];

      *(v0 + 648) = v37[6];

      *(v0 + 656) = v37[7];

      *(v0 + 664) = v37[8];

      sub_24A38744C(v8);

      sub_24A387740(v9);

      sub_24A387770(v10);
      *(v0 + 720) = v37[56];

      v11 = v37[11];
      if (v37[11])
      {
        v12 = v37[12];
        v13 = *(v0 + 744);
        v14 = *(v0 + 752);
        v15 = *(v0 + 760);
        v16 = *(v0 + 768);
        *(v0 + 744) = *&v37[9];
        *(v0 + 760) = v11;
        *(v0 + 768) = v12;

        sub_24A37F110(v13, v14, v15, v16);
      }

      if (v37[45])
      {
        v17 = *(v0 + 1048);
        v20 = *(v0 + 1032);
        v21 = v17;
        *v22 = *(v0 + 1064);
        *&v22[9] = *(v0 + 1073);
        v18 = *&v37[47];
        *(v0 + 1032) = *&v37[45];
        *(v0 + 1048) = v18;
        *(v0 + 1064) = *&v37[49];
        *(v0 + 1073) = *(&v37[50] + 1);

        sub_24A37EF2C(&v20, &qword_27EF3FD68, &unk_24A4B9F40);
      }

      if (LOBYTE(v37[14]) != 1)
      {
        *&v20 = v37[13];
        BYTE8(v20) = 0;
        sub_24A3877A0(&v20);
      }

      sub_24A37EF2C(v36, &qword_27EF405A8, &qword_24A4BACC0);
      v23 = *&v37[23];
      v24 = *&v37[25];
      v25 = *&v37[27];
      v26 = *&v37[29];
      v20 = *&v37[15];
      v21 = *&v37[17];
      *v22 = *&v37[19];
      *&v22[16] = *&v37[21];
      v31 = *&v37[39];
      v32 = *&v37[41];
      v33 = *&v37[43];
      v27 = *&v37[31];
      v28 = *&v37[33];
      v29 = *&v37[35];
      v30 = *&v37[37];
      if (sub_24A387AB8(&v20) != 1)
      {
        v19[12] = *&v37[39];
        v19[13] = *&v37[41];
        v19[14] = *&v37[43];
        v19[8] = *&v37[31];
        v19[9] = *&v37[33];
        v19[10] = *&v37[35];
        v19[11] = *&v37[37];
        v19[4] = *&v37[23];
        v19[5] = *&v37[25];
        v19[6] = *&v37[27];
        v19[7] = *&v37[29];
        v19[0] = *&v37[15];
        v19[1] = *&v37[17];
        v19[2] = *&v37[19];
        v19[3] = *&v37[21];
        sub_24A387AD4(v19);
      }

      *(v0 + 704) = 1;
    }
  }
}

uint64_t sub_24A385E6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t FMFDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF40730, &qword_24A4BB358);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A385340();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  v23 = 0;
  v9 = sub_24A4AC120();
  v11 = v10;
  v20 = v9;
  v22 = 1;
  v18 = sub_24A4AC120();
  v19 = v12;
  v21 = 2;
  v13 = sub_24A4AC130();
  (*(v6 + 8))(v8, v5);
  v14 = v13 & 1;
  v15 = v19;
  *a2 = v20;
  *(a2 + 8) = v11;
  *(a2 + 16) = v18;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;

  sub_24A37EEE0(a1);
}

uint64_t sub_24A386114()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6143654D6F747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t storeEnumTagSinglePayload for FMFLocationAlertAcceptanceStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_24A386218(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A38622C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v9 = sub_24A4AA710();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A3C9CEC(&qword_27EF40588, &qword_24A4BACA8);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v28 - v16;
  v28[1] = a1;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  v18 = sub_24A4AA730();
  v20 = v19;
  if (v19 >> 60 == 15)
  {
    sub_24A3C9CEC(&qword_27EF405F8, qword_24A4BAD10);
    sub_24A378704(&qword_27EF40600, &qword_27EF405F8, qword_24A4BAD10, &unk_24A4BBCF8);
    v21 = swift_allocError();
    swift_willThrow();
    sub_24A4AACD0();
    sub_24A4AAD00();
    sub_24A4AA860();
    swift_allocObject();
    sub_24A4AA850();
    sub_24A378704(&qword_27EF405E8, &qword_27EF40588, &qword_24A4BACA8, &protocol conformance descriptor for FMDiskIO<A>.KeyPair);
    v23 = sub_24A4AA840();
    v25 = v24;

    v31 = v23;
    v32 = v25;
    v26 = v29;
    (*(v29 + 104))(v11, *MEMORY[0x277D08A30], v9);
    sub_24A454A64();
    sub_24A4AA720();
    (*(v26 + 8))(v11, v9);

    sub_24A386E10(v23, v25);
    v17 = v14;
  }

  else
  {
    v22 = v18;
    sub_24A4AA830();
    swift_allocObject();
    sub_24A4AA820();
    sub_24A378704(&qword_27EF40608, &qword_27EF40588, &qword_24A4BACA8, &protocol conformance descriptor for FMDiskIO<A>.KeyPair);
    sub_24A4AA810();
    sub_24A386DFC(v22, v20);
  }

  return sub_24A37BE24(v17, v30, &qword_27EF40588, &qword_24A4BACA8);
}

uint64_t FMDiskIO.KeyPair.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v37 = sub_24A4AAD10();
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24A4AACE0();
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMDiskIO.KeyPair.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v41 = sub_24A4AC180();
  v34 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v12 = &v29 - v11;
  v13 = type metadata accessor for FMDiskIO.KeyPair(0, a2, a3, a4);
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  sub_24A37EACC(a1, a1[3]);
  v39 = v12;
  v16 = v42;
  sub_24A4AC3C0();
  if (v16)
  {
    return sub_24A37EEE0(a1);
  }

  v17 = v15;
  v42 = v13;
  v19 = v34;
  v18 = v35;
  v20 = v36;
  v21 = v37;
  v44 = 0;
  sub_24A386C30(&qword_27EF40970, MEMORY[0x277D08EF0], MEMORY[0x277D08F00]);
  v23 = v38;
  v22 = v39;
  sub_24A4AC160();
  v24 = *(v18 + 32);
  v30 = v17;
  v24(v17, v23, v40);
  v43 = 1;
  sub_24A386C30(qword_27EF40978, MEMORY[0x277D08F08], MEMORY[0x277D08F18]);
  sub_24A4AC160();
  (*(v19 + 8))(v22, v41);
  v25 = v42;
  v26 = v30;
  (*(v32 + 32))(&v30[*(v42 + 44)], v20, v21);
  v27 = v31;
  (*(v31 + 16))(v33, v26, v25);
  sub_24A37EEE0(a1);
  return (*(v27 + 8))(v26, v25);
}

uint64_t sub_24A386C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A386C78(char a1)
{
  if (a1)
  {
    return 0x697274656D6D7973;
  }

  else
  {
    return 0x4B65746176697270;
  }
}

uint64_t storeEnumTagSinglePayload for FMFLocationAlertTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFLocationAlertTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A386DFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A386E10(result, a2);
  }

  return result;
}

uint64_t sub_24A386E10(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t storeEnumTagSinglePayload for FMFAlertType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A386F70()
{
  result = qword_27EF40750;
  if (!qword_27EF40750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40750);
  }

  return result;
}

unint64_t sub_24A386FC4()
{
  result = qword_27EF40758;
  if (!qword_27EF40758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40758);
  }

  return result;
}

uint64_t sub_24A387028(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3FD70, &qword_24A4B8A10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A3870AC()
{
  result = qword_27EF3FB10;
  if (!qword_27EF3FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB10);
  }

  return result;
}

unint64_t sub_24A387110()
{
  result = qword_27EF3FD90;
  if (!qword_27EF3FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD90);
  }

  return result;
}

uint64_t type metadata accessor for FMFLabelledLocation(uint64_t a1)
{
  result = qword_27EF3FEB8;
  if (!qword_27EF3FEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3871B0(uint64_t a1)
{
  sub_24A379C28(319, &qword_27EF3F398, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24A379C28(319, &qword_27EF3F970, &type metadata for FMFLabel);
    if (v2 <= 0x3F)
    {
      sub_24A379C28(319, &qword_27EF3FEC8, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_24A37E944(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24A387298()
{
  result = qword_27EF3F120;
  if (!qword_27EF3F120)
  {
    sub_24A3CBC9C(&qword_27EF3F118, &qword_24A4B4958);
    sub_24A3819A0(&qword_27EF3F128, type metadata accessor for FMFLabelledLocation, &protocol conformance descriptor for FMFLabelledLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F120);
  }

  return result;
}

uint64_t sub_24A387384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A38739C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A3873E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 456))
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

uint64_t sub_24A387434(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A38747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 56);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_24A3877A0(uint64_t *a1)
{
  v3 = sub_24A4AB690();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v9;
  *(v11 + 32) = v10;
  aBlock[4] = sub_24A38CA44;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89870;
  v12 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v17 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v8, v5, v12);
  _Block_release(v12);
  (*(v16 + 8))(v5, v3);
  (*(v6 + 8))(v8, v15);
}

uint64_t sub_24A387A7C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24A387AB8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A387AD4(_OWORD *a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v1 + 56);
  v10 = swift_allocObject();
  v11 = a1[10];
  *(v10 + 200) = a1[11];
  v12 = a1[13];
  *(v10 + 216) = a1[12];
  *(v10 + 232) = v12;
  *(v10 + 248) = a1[14];
  v13 = a1[6];
  *(v10 + 136) = a1[7];
  v14 = a1[9];
  *(v10 + 152) = a1[8];
  *(v10 + 168) = v14;
  *(v10 + 184) = v11;
  v15 = a1[2];
  *(v10 + 72) = a1[3];
  v16 = a1[5];
  *(v10 + 88) = a1[4];
  *(v10 + 104) = v16;
  *(v10 + 120) = v13;
  v17 = a1[1];
  *(v10 + 24) = *a1;
  *(v10 + 40) = v17;
  *(v10 + 16) = v1;
  *(v10 + 56) = v15;
  aBlock[4] = sub_24A38CC34;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89820;
  v18 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v22 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v18);
  _Block_release(v18);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v21);
}

uint64_t sub_24A387E00()
{

  return MEMORY[0x2821FE8E8](v0, 264, 7);
}

char *sub_24A387E40(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F008, &qword_24A4B44D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_24A387F3C()
{
  v1 = *(v0 + 48);
  if (*(v1 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) == 1 && (*(v1 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) & 1) == 0)
  {
    v38 = v0;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v2 = sub_24A4AB630();
    sub_24A378E18(v2, qword_27EF4E260);
    v3 = sub_24A4AB600();
    v4 = sub_24A4ABCE0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24A376000, v3, v4, "FMFDataManager: Trying to save the cache blob to disk", v5, 2u);
      MEMORY[0x24C219130](v5, -1, -1);
    }

    v6 = v38;
    v34 = *(v38 + 544);
    v35 = *(v38 + 680);
    v42 = *(v38 + 640);
    v43 = *(v38 + 560);
    v32 = *(v38 + 664);
    v33 = *(v38 + 656);
    v39 = *(v38 + 752);
    v40 = *(v38 + 760);
    v41 = *(v38 + 744);
    v31 = *(v38 + 768);
    v37 = *(v38 + 776);
    v36 = *(v38 + 784);
    v7 = *(v38 + 808);
    v47 = *(v38 + 792);
    v48 = v7;
    v8 = *(v38 + 824);
    v9 = *(v38 + 840);
    v10 = *(v38 + 872);
    v51 = *(v38 + 856);
    v52 = v10;
    v49 = v8;
    v50 = v9;
    v11 = *(v38 + 888);
    v12 = *(v38 + 904);
    v13 = *(v38 + 936);
    v55 = *(v38 + 920);
    v56 = v13;
    v53 = v11;
    v54 = v12;
    v14 = *(v38 + 952);
    v15 = *(v38 + 968);
    v16 = *(v38 + 1000);
    v17 = *(v38 + 1016);
    v59 = *(v38 + 984);
    v60 = v16;
    v57 = v14;
    v58 = v15;
    v18 = *(v38 + 1032);
    v19 = *(v38 + 1048);
    v61 = v17;
    v62 = v18;
    v20 = *(v38 + 1064);
    v63 = v19;
    *v64 = v20;
    *&v64[9] = *(v38 + 1073);
    v21 = *(v38 + 1096);
    v22 = *(v38 + 1112);
    v23 = *(v38 + 1104);
    v24 = *(v38 + 720);
    sub_24A37F0C8(v65);

    sub_24A388B00(v41, v39, v40, v31);
    sub_24A37B740(&v62, __dst, &qword_27EF3FD68, &unk_24A4B9F40);

    sub_24A37F110(0, 0, 0, 0);
    *&__dst[183] = v58;
    *&__dst[199] = v59;
    *&__dst[215] = v60;
    *&__dst[231] = v61;
    *&__dst[119] = v54;
    *&__dst[135] = v55;
    *&__dst[151] = v56;
    *&__dst[167] = v57;
    *&__dst[55] = v50;
    *&__dst[71] = v51;
    *&__dst[87] = v52;
    *&__dst[103] = v53;
    *&__dst[7] = v47;
    *&__dst[23] = v48;
    LOBYTE(v45[0]) = v36;
    *&__dst[39] = v49;
    memset(v66, 0, 57);
    sub_24A37EF2C(v66, &qword_27EF3FD68, &unk_24A4B9F40);
    *&__src[5] = v42;
    *&__src[3] = v43;
    *(&__src[40] + 1) = *&__dst[208];
    *(&__src[42] + 1) = *&__dst[224];
    *(&__src[32] + 1) = *&__dst[144];
    *(&__src[34] + 1) = *&__dst[160];
    __src[0] = v35;
    __src[1] = v34;
    __src[2] = MEMORY[0x277D84F90];
    __src[7] = v33;
    __src[8] = v32;
    __src[9] = v41;
    __src[10] = v39;
    __src[11] = v40;
    __src[12] = v31;
    __src[13] = v37;
    LOBYTE(__src[14]) = v36;
    *(&__src[36] + 1) = *&__dst[176];
    *(&__src[38] + 1) = *&__dst[192];
    *(&__src[30] + 1) = *&__dst[128];
    *(&__src[22] + 1) = *&__dst[64];
    *(&__src[24] + 1) = *&__dst[80];
    *(&__src[26] + 1) = *&__dst[96];
    *(&__src[28] + 1) = *&__dst[112];
    *(&__src[14] + 1) = *__dst;
    *(&__src[16] + 1) = *&__dst[16];
    *(&__src[18] + 1) = *&__dst[32];
    *(&__src[20] + 1) = *&__dst[48];
    *&__src[45] = v62;
    *&__src[47] = v63;
    *&__src[49] = *v64;
    __src[44] = *&__dst[239];
    __src[51] = *&v64[16];
    LOBYTE(__src[52]) = v64[24];
    __src[53] = v21;
    __src[54] = v22;
    __src[55] = v23;
    __src[56] = v24;
    os_unfair_lock_lock((v38 + 72));
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v67, (v38 + 80), sizeof(v67));
    memcpy(v45, (v38 + 80), sizeof(v45));
    sub_24A38734C(v67, v44);
    v25 = sub_24A388B9C(__dst, v45);
    memcpy(v68, v45, sizeof(v68));
    sub_24A3873B4(v68);
    if (v25)
    {
      os_unfair_lock_unlock((v38 + 72));
      sub_24A3873B4(__src);
      v26 = sub_24A4AB600();
      v27 = sub_24A4ABCE0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_24A376000, v26, v27, "FMFDataManager: Nothing changed. Skipping cache write", v28, 2u);
        MEMORY[0x24C219130](v28, -1, -1);
      }
    }

    else
    {
      sub_24A3885A8(__src, v38 + 80);
      sub_24A38734C(__src, __dst);
      os_unfair_lock_unlock((v38 + 72));
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = *(v38 + 40);
        ObjectType = swift_getObjectType();
        (*(v29 + 88))(ObjectType, v29);
        v6 = v38;
        swift_unknownObjectRelease();
      }

      if (*(v6 + 696))
      {

        sub_24A388640(__src);
      }

      sub_24A3873B4(__src);
    }
  }
}

uint64_t sub_24A388564(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_24A388604(uint64_t a1, uint64_t a2)
{
  *(a1 + 1096) = a2;

  sub_24A387F3C();
}

uint64_t sub_24A388640(const void *a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);
  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A376000, v11, v12, "FMDiskIO: save to disk", v13, 2u);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  memcpy((v14 + 24), a1, 0x1C8uLL);
  aBlock[4] = sub_24A389E14;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D894D8;
  v15 = _Block_copy(aBlock);

  sub_24A38734C(a1, v21);
  sub_24A4AB6B0();
  v21[0] = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v15);
  _Block_release(v15);
  (*(v20 + 8))(v6, v4);
  (*(v18 + 8))(v9, v19);
}

uint64_t sub_24A3889E8()
{

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 384))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 480, 7);
}

void sub_24A388AC4(uint64_t a1, uint64_t a2)
{
  *(a1 + 1112) = a2;

  sub_24A387F3C();
}

void sub_24A388B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t sub_24A388B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A388B9C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v110 = a1[5];
  v111 = a1[4];
  v109 = a1[6];
  v107 = a1[7];
  v105 = a1[8];
  v102 = *(a1 + 9);
  v101 = a1[11];
  v103 = a1[12];
  v94 = a1[13];
  v96 = *(a1 + 112);
  v8 = *(a1 + 45);
  v9 = *(a1 + 47);
  v10 = *(a1 + 49);
  *&v175[41] = *(a1 + 401);
  *&v175[16] = v9;
  *&v175[32] = v10;
  *v175 = v8;
  v92 = a1[53];
  v88 = a1[54];
  v86 = a1[55];
  v90 = a1[56];
  v11 = *a2;
  v13 = a2[1];
  v12 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v16 = a2[5];
  v108 = a2[6];
  v106 = a2[7];
  v17 = *(a2 + 47);
  *v176 = *(a2 + 45);
  *&v176[16] = v17;
  *&v176[32] = *(a2 + 49);
  *&v176[41] = *(a2 + 401);
  v104 = a2[8];
  v98 = a2[9];
  v99 = a2[10];
  v97 = a2[11];
  v100 = a2[12];
  v93 = a2[13];
  v95 = *(a2 + 112);
  v91 = a2[53];
  v87 = a2[54];
  v85 = a2[55];
  v89 = a2[56];
  if ((sub_24A389710(v4, v11, type metadata accessor for FMFIntermediateFriend, type metadata accessor for FMFIntermediateFriend, sub_24A3D80C0) & 1) == 0 || (sub_24A389710(v6, v13, type metadata accessor for FMFIntermediateFriend, type metadata accessor for FMFIntermediateFriend, sub_24A3D80C0) & 1) == 0 || (sub_24A389710(v5, v12, type metadata accessor for FMFIntermediateFriend, type metadata accessor for FMFIntermediateFriend, sub_24A3D80C0) & 1) == 0 || (sub_24A389710(v7, v15, type metadata accessor for FMFIntermediateFriend, type metadata accessor for FMFIntermediateFriend, sub_24A3D80C0) & 1) == 0 || (sub_24A389710(v111, v14, type metadata accessor for FMFIntermediateFriend, type metadata accessor for FMFIntermediateFriend, sub_24A3D80C0) & 1) == 0 || (sub_24A389710(v110, v16, type metadata accessor for FMFLocationAlert, type metadata accessor for FMFLocationAlert, static FMFLocationAlert.== infix(_:_:)) & 1) == 0 || (sub_24A389710(v109, v108, type metadata accessor for FMFLocationAlert, type metadata accessor for FMFLocationAlert, static FMFLocationAlert.== infix(_:_:)) & 1) == 0 || (sub_24A389710(v107, v106, type metadata accessor for FMFLocationAlert, type metadata accessor for FMFLocationAlert, static FMFLocationAlert.== infix(_:_:)) & 1) == 0 || (sub_24A389710(v105, v104, type metadata accessor for FMFLocationAlert, type metadata accessor for FMFLocationAlert, static FMFLocationAlert.== infix(_:_:)) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!v101)
  {
    v18 = *(&v102 + 1);
    v19 = v102;
    v20 = v103;
    sub_24A388B00(v102, *(&v102 + 1), 0, v103);
    v21 = v100;
    v22 = v97;
    if (!v97)
    {
      sub_24A388B00(v98, v99, 0, v100);
      sub_24A37F110(v102, *(&v102 + 1), 0, v103);
      goto LABEL_21;
    }

    v25 = v98;
    v24 = v99;
    sub_24A388B00(v98, v99, v97, v100);
LABEL_17:
    sub_24A37F110(v19, v18, v101, v20);
    sub_24A37F110(v25, v24, v22, v21);
    goto LABEL_18;
  }

  v18 = *(&v102 + 1);
  v19 = v102;
  *v150 = v102;
  *&v150[16] = v101;
  v20 = v103;
  *&v150[24] = v103;
  v21 = v100;
  v22 = v97;
  if (!v97)
  {
    sub_24A388B00(v102, *(&v102 + 1), v101, v103);
    v25 = v98;
    v24 = v99;
    sub_24A388B00(v98, v99, 0, v100);
    sub_24A388B00(v102, *(&v102 + 1), v101, v103);

    goto LABEL_17;
  }

  LODWORD(v160) = v98 & 0xFF010101;
  *(&v160 + 1) = v99;
  *&v161 = v97;
  *(&v161 + 1) = v100;
  sub_24A388B00(v102, *(&v102 + 1), v101, v103);
  sub_24A388B00(v98, v99, v97, v100);
  sub_24A388B00(v102, *(&v102 + 1), v101, v103);
  v23 = _s7FMFCore14FMFPreferencesV2eeoiySbAC_ACtFZ_0(v150, &v160);

  sub_24A37F110(v102, *(&v102 + 1), v101, v103);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (v96)
  {
    if (!v95)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v28 = v95;
    if (v94 != v93)
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_18;
    }
  }

  v29 = a1 + 15;
  v30 = a2 + 15;
  v31 = *(v29 + 11);
  v32 = *(v29 + 13);
  v156 = *(v29 + 12);
  v157 = v32;
  v33 = *(v29 + 7);
  v34 = *(v29 + 9);
  v152 = *(v29 + 8);
  v153 = v34;
  v36 = *(v29 + 9);
  v35 = *(v29 + 10);
  v37 = v35;
  v155 = *(v29 + 11);
  v154 = v35;
  v38 = *(v29 + 3);
  v39 = *(v29 + 4);
  *&v151[16] = *(v29 + 5);
  v41 = *(v29 + 5);
  v40 = *(v29 + 6);
  v42 = v40;
  *&v151[48] = *(v29 + 7);
  *&v151[32] = v40;
  v43 = *(v29 + 1);
  *v150 = *v29;
  *&v150[16] = v43;
  v44 = *(v29 + 2);
  v46 = *v29;
  v45 = *(v29 + 1);
  v47 = v44;
  *&v150[48] = *(v29 + 3);
  *v151 = v39;
  *&v150[32] = v44;
  v48 = *(a2 + 39);
  v49 = *(a2 + 41);
  v50 = *(a2 + 35);
  v159[11] = *(a2 + 37);
  v159[12] = v48;
  v51 = *(a2 + 43);
  v159[13] = v49;
  v159[14] = v51;
  v52 = *(a2 + 31);
  v53 = *(a2 + 33);
  v54 = *(a2 + 27);
  v159[7] = *(a2 + 29);
  v159[8] = v52;
  v159[9] = v53;
  v159[10] = v50;
  v55 = *(a2 + 23);
  v56 = *(a2 + 25);
  v57 = *(a2 + 19);
  v159[3] = *(a2 + 21);
  v159[4] = v55;
  v159[5] = v56;
  v159[6] = v54;
  v58 = *(a2 + 15);
  v59 = *(a2 + 17);
  v60 = *(v29 + 13);
  v158 = *(v29 + 14);
  v159[0] = v58;
  v159[1] = v59;
  v159[2] = v57;
  v172 = v156;
  v173 = v60;
  v174 = *(v29 + 14);
  v168 = v152;
  v169 = v36;
  v171 = v31;
  v170 = v37;
  v164 = v39;
  v165 = v41;
  v167 = v33;
  v166 = v42;
  v160 = v46;
  v161 = v45;
  v163 = v38;
  v162 = v47;
  if (sub_24A387AB8(&v160) == 1)
  {
    v61 = *(a2 + 41);
    v147 = *(a2 + 39);
    v148 = v61;
    v149 = *(a2 + 43);
    v62 = *(a2 + 33);
    v143 = *(a2 + 31);
    v144 = v62;
    v63 = *(a2 + 37);
    v145 = *(a2 + 35);
    v146 = v63;
    v64 = *(a2 + 25);
    v139 = *(a2 + 23);
    v140 = v64;
    v65 = *(a2 + 29);
    v141 = *(a2 + 27);
    v142 = v65;
    v66 = *(a2 + 17);
    v136 = *v30;
    v137 = v66;
    v67 = *(a2 + 21);
    *v138 = *(a2 + 19);
    *&v138[16] = v67;
    if (sub_24A387AB8(&v136) != 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v68 = *(v29 + 13);
    v121 = *(v29 + 12);
    v122 = v68;
    v123 = *(v29 + 14);
    v69 = *(v29 + 9);
    v117 = *(v29 + 8);
    v118 = v69;
    v70 = *(v29 + 11);
    v119 = *(v29 + 10);
    v120 = v70;
    v71 = *(v29 + 5);
    v113 = *(v29 + 4);
    v114 = v71;
    v72 = *(v29 + 7);
    v115 = *(v29 + 6);
    v116 = v72;
    v73 = *(v29 + 1);
    *v112 = *v29;
    *&v112[16] = v73;
    v74 = *(v29 + 3);
    *&v112[32] = *(v29 + 2);
    *&v112[48] = v74;
    v75 = *(a2 + 41);
    v147 = *(a2 + 39);
    v148 = v75;
    v149 = *(a2 + 43);
    v76 = *(a2 + 33);
    v143 = *(a2 + 31);
    v144 = v76;
    v77 = *(a2 + 37);
    v145 = *(a2 + 35);
    v146 = v77;
    v78 = *(a2 + 25);
    v139 = *(a2 + 23);
    v140 = v78;
    v79 = *(a2 + 29);
    v141 = *(a2 + 27);
    v142 = v79;
    v80 = *(a2 + 17);
    v136 = *v30;
    v137 = v80;
    v81 = *(a2 + 21);
    *v138 = *(a2 + 19);
    *&v138[16] = v81;
    if (sub_24A387AB8(&v136) == 1 || !_s7FMFCore9FMFConfigV2eeoiySbAC_ACtFZ_0(v112, v159))
    {
      goto LABEL_18;
    }
  }

  v82 = *v175;
  v132 = *&v175[8];
  v133 = *&v175[24];
  v134 = *&v175[40];
  v135 = v175[56];
  v83 = *v176;
  v128 = *&v176[8];
  v129 = *&v176[24];
  v130 = *&v176[40];
  v131 = v176[56];
  if (*v175)
  {
    *v150 = *v175;
    *&v150[8] = *&v175[8];
    *&v150[24] = *&v175[24];
    *&v150[40] = *&v175[40];
    v150[56] = v175[56];
    v136 = *v150;
    v137 = *&v150[16];
    *v138 = *&v150[32];
    *&v138[9] = *&v150[41];
    if (*v176)
    {
      *&v112[8] = *&v176[8];
      *&v112[24] = *&v176[24];
      *&v112[40] = *&v176[40];
      v112[56] = v176[56];
      *v112 = *v176;
      v84 = _s7FMFCore9FMFMyInfoV2eeoiySbAC_ACtFZ_0(&v136, v112);
      v124[0] = *v112;
      v124[1] = *&v112[16];
      v125[0] = *&v112[32];
      *(v125 + 9) = *&v112[41];
      sub_24A37B740(v175, v126, &qword_27EF3FD68, &unk_24A4B9F40);
      sub_24A37B740(v176, v126, &qword_27EF3FD68, &unk_24A4B9F40);
      sub_24A37B740(v150, v126, &qword_27EF3FD68, &unk_24A4B9F40);
      sub_24A385278(v124);
      v126[0] = v136;
      v126[1] = v137;
      v127[0] = *v138;
      *(v127 + 9) = *&v138[9];
      sub_24A385278(v126);
      *v112 = v82;
      *&v112[8] = v132;
      *&v112[24] = v133;
      *&v112[40] = v134;
      v112[56] = v135;
      sub_24A37EF2C(v112, &qword_27EF3FD68, &unk_24A4B9F40);
      if ((v84 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

    *v112 = *v150;
    *&v112[16] = *&v150[16];
    *&v112[32] = *&v150[32];
    *&v112[41] = *&v150[41];
    sub_24A37B740(v175, v126, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A37B740(v176, v126, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A37B740(v150, v126, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A385278(v112);
LABEL_39:
    *&v150[8] = v132;
    *&v150[24] = v133;
    *&v150[40] = v134;
    *&v151[8] = v128;
    *v150 = v82;
    v150[56] = v135;
    *v151 = v83;
    *&v151[24] = v129;
    *&v151[40] = v130;
    v151[56] = v131;
    sub_24A37EF2C(v150, &qword_27EF3FE20, &qword_24A4B8A30);
    goto LABEL_18;
  }

  if (*v176)
  {
    sub_24A37B740(v175, v150, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A37B740(v176, v150, &qword_27EF3FD68, &unk_24A4B9F40);
    goto LABEL_39;
  }

  *v150 = 0;
  *&v150[8] = *&v175[8];
  *&v150[24] = *&v175[24];
  *&v150[40] = *&v175[40];
  v150[56] = v175[56];
  sub_24A37B740(v175, &v136, &qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A37B740(v176, &v136, &qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A37EF2C(v150, &qword_27EF3FD68, &unk_24A4B9F40);
LABEL_41:
  if (sub_24A38B40C(v92, v91) & 1) != 0 && (sub_24A38B528(v90, v89) & 1) != 0 && (sub_24A38B81C(v88, v87))
  {
    v26 = sub_24A389710(v86, v85, type metadata accessor for FMFLabelledLocation, type metadata accessor for FMFLabelledLocation, _s7FMFCore19FMFLabelledLocationV2eeoiySbAC_ACtFZ_0);
    return v26 & 1;
  }

LABEL_18:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_24A389710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_24A415EC8(v18, v15, a4);
        sub_24A415EC8(v19, v11, a4);
        v21 = a5(v15, v11);
        sub_24A415F30(v11, a4);
        sub_24A415F30(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t _s7FMFCore14FMFPreferencesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0)
  {
    return result;
  }

  v4 = a1[3];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a2[3];
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  if (v4 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == 2)
    {
      return 0;
    }

    if (v4)
    {
      v12 = 0x454E4F5952455645;
    }

    else
    {
      v12 = 0x53444E45495246;
    }

    if (v4)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    if (v8)
    {
      v14 = 0x454E4F5952455645;
    }

    else
    {
      v14 = 0x53444E45495246;
    }

    if (v8)
    {
      v15 = 0xE800000000000000;
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    if (v12 == v14 && v13 == v15)
    {

      if (v5 != v9)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v16 = sub_24A4AC270();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 != v9)
  {
LABEL_25:
    if (sub_24A4AC270())
    {
      goto LABEL_26;
    }

    return 0;
  }

LABEL_24:
  if (v6 != v10)
  {
    goto LABEL_25;
  }

LABEL_26:
  result = (v7 | v11) == 0;
  if (v7 && v11)
  {

    return sub_24A4155EC(v7, v11);
  }

  return result;
}

uint64_t _s7FMFCore9FMFMyInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a1 + 56);
  if ((sub_24A38B37C(*a1, *a2) & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_24A4AC270() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v3 != v8 || v5 != v10) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v15 == v9 && v16 == v11 || (sub_24A4AC270() & 1) != 0)
  {
    return v14 ^ v13 ^ 1u;
  }

  return 0;
}

void sub_24A389B90(uint64_t a1, uint64_t a2)
{
  *(a1 + 1104) = a2;

  sub_24A387F3C();
}

void sub_24A389BD4(uint64_t a1, const void *a2)
{
  v3 = memcpy(__dst, a2, sizeof(__dst));
  v4 = MEMORY[0x24C2189A0](v3);
  sub_24A389E20(a1, __dst);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_24A389C34(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24A389C80(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_24A389CC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A389D08()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A389DC4(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void sub_24A389E20(uint64_t a1, const void *a2)
{
  v104 = *MEMORY[0x277D85DE8];
  v5 = sub_24A4AAD30();
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x28223BE20](v5);
  v92 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A3C9CEC(&qword_27EF40580, &qword_24A4BACA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v87 - v8;
  v10 = sub_24A3C9CEC(&qword_27EF40588, &qword_24A4BACA8);
  v93 = *(v10 - 8);
  v94 = v10;
  MEMORY[0x28223BE20](v10);
  v91 = &v87 - v11;
  v12 = sub_24A4AA9D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v103, a2, sizeof(v103));
  v99[0] = 0;
  v96 = objc_opt_self();
  v16 = [v96 defaultManager];
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v95 = a1;
  v97 = v17;
  v98 = v18;
  v19 = sub_24A4AB820();
  LOBYTE(a2) = [v16 fileExistsAtPath:v19 isDirectory:v99];

  if (a2)
  {
LABEL_4:
    sub_24A4AA860();
    swift_allocObject();
    v24 = sub_24A4AA850();
    sub_24A38AB10();
    v25 = sub_24A4AA840();
    if (v2)
    {

      v27 = v2;
LABEL_22:
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v68 = sub_24A4AB630();
      sub_24A378E18(v68, qword_27EF4E260);
      v69 = v27;
      v70 = sub_24A4AB600();
      v71 = sub_24A4ABCC0();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v100 = v73;
        *v72 = 136315138;
        swift_getErrorValue();
        v74 = sub_24A4AC310();
        v76 = sub_24A37BD58(v74, v75, &v100);

        *(v72 + 4) = v76;
        _os_log_impl(&dword_24A376000, v70, v71, "FMDiskIO: Could not save objects to disk %s", v72, 0xCu);
        sub_24A37EEE0(v73);
        MEMORY[0x24C219130](v73, -1, -1);
        MEMORY[0x24C219130](v72, -1, -1);
      }

      else
      {
      }

      return;
    }

    v28 = v25;
    v29 = v26;
    v30 = v95;
    sub_24A37B740(v95 + *(*v95 + 128), v9, &qword_27EF40580, &qword_24A4BACA0);
    if ((*(v93 + 48))(v9, 1, v94) == 1)
    {
      sub_24A37EF2C(v9, &qword_27EF40580, &qword_24A4BACA0);
      v93 = v28;
      v94 = v29;
      v31 = sub_24A4AAA00();
      v33 = *(v30 + 40);
      v32 = *(v30 + 48);
      v100 = v97;
      v101 = v98;

      v88 = v32;
      MEMORY[0x24C217D50](v33, v32);
      v34 = sub_24A4AB820();

      v35 = [v31 writeToFile:v34 atomically:1];

      if (v35)
      {
        v92 = v24;
LABEL_9:
        v36 = [v96 defaultManager];
        sub_24A3C9CEC(&qword_27EF40598, &unk_24A4BACB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A4B4E10;
        v38 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v39 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v40;
        *(inited + 40) = v39;
        v41 = v38;
        v42 = v39;
        sub_24A3A9E3C(inited);
        swift_setDeallocating();
        sub_24A37EF2C(inited + 32, &qword_27EF40358, &qword_24A4BA148);
        type metadata accessor for FileAttributeKey(0);
        sub_24A37F01C(&qword_27EF3EDE0, type metadata accessor for FileAttributeKey, &unk_24A4B403C);
        v43 = sub_24A4AB760();

        v100 = v97;
        v101 = v98;

        MEMORY[0x24C217D50](v33, v88);
        v44 = sub_24A4AB820();

        v100 = 0;
        LOBYTE(v39) = [v36 setAttributes:v43 ofItemAtPath:v44 error:&v100];

        if ((v39 & 1) == 0)
        {
          v67 = v100;
          v27 = sub_24A4AA950();

          swift_willThrow();
          sub_24A386E10(v93, v94);

          goto LABEL_22;
        }

        v45 = qword_27EF3EBF8;
        v46 = v100;
        if (v45 != -1)
        {
          swift_once();
        }

        v47 = sub_24A4AB630();
        sub_24A378E18(v47, qword_27EF4E260);

        v48 = sub_24A4AB600();
        v49 = sub_24A4ABCE0();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v102 = v51;
          *v50 = 136315138;
          v100 = v97;
          v101 = v98;

          MEMORY[0x24C217D50](v33, v88);
          v52 = sub_24A37BD58(v100, v101, &v102);

          *(v50 + 4) = v52;
          _os_log_impl(&dword_24A376000, v48, v49, "FMDiskIO: Successfully wrote object to disk @ %s", v50, 0xCu);
          sub_24A37EEE0(v51);
          MEMORY[0x24C219130](v51, -1, -1);
          MEMORY[0x24C219130](v50, -1, -1);
        }

        sub_24A386E10(v93, v94);

LABEL_34:

        return;
      }
    }

    else
    {
      sub_24A37BE24(v9, v91, &qword_27EF40588, &qword_24A4BACA8);
      sub_24A4AACF0();
      sub_24A37F01C(&qword_27EF405A0, MEMORY[0x277D08F20], MEMORY[0x277D08F28]);
      v64 = v90;
      v65 = sub_24A4AA840();
      v93 = v28;
      v94 = v29;
      v77 = v65;
      v78 = v66;
      v79 = sub_24A4AAA00();
      sub_24A386E10(v77, v78);
      v80 = *(v30 + 40);
      v81 = *(v30 + 48);
      v100 = v97;
      v101 = v98;

      v88 = v81;
      MEMORY[0x24C217D50](v80, v81);
      v82 = sub_24A4AB820();

      LODWORD(v77) = [v79 writeToFile:v82 atomically:1];

      (*(v89 + 8))(v92, v64);
      sub_24A37EF2C(v91, &qword_27EF40588, &qword_24A4BACA8);
      if (v77)
      {
        v92 = v24;
        v33 = v80;
        goto LABEL_9;
      }
    }

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v83 = sub_24A4AB630();
    sub_24A378E18(v83, qword_27EF4E260);
    v84 = sub_24A4AB600();
    v85 = sub_24A4ABCE0();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_24A376000, v84, v85, "FMDiskIO: Could not save objects to disk", v86, 2u);
      MEMORY[0x24C219130](v86, -1, -1);
    }

    sub_24A386E10(v93, v94);

    goto LABEL_34;
  }

  v20 = [v96 defaultManager];
  sub_24A4AA970();
  v21 = sub_24A4AA980();
  (*(v13 + 8))(v15, v12);
  v100 = 0;
  v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v100];

  if (v22)
  {
    v23 = v100;
    goto LABEL_4;
  }

  v53 = v100;
  v54 = sub_24A4AA950();

  swift_willThrow();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v55 = sub_24A4AB630();
  sub_24A378E18(v55, qword_27EF4E260);
  v56 = v95;

  v57 = sub_24A4AB600();
  v58 = sub_24A4ABCE0();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v102 = v60;
    *v59 = 136315138;
    v61 = *(v56 + 40);
    v62 = *(v56 + 48);
    v100 = v97;
    v101 = v98;

    MEMORY[0x24C217D50](v61, v62);
    v63 = sub_24A37BD58(v100, v101, &v102);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_24A376000, v57, v58, "FMDiskIO: Could not create directory for content: %s", v59, 0xCu);
    sub_24A37EEE0(v60);
    MEMORY[0x24C219130](v60, -1, -1);
    MEMORY[0x24C219130](v59, -1, -1);
  }
}

unint64_t sub_24A38AB10()
{
  result = qword_27EF40590;
  if (!qword_27EF40590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40590);
  }

  return result;
}

uint64_t sub_24A38AB64(void *a1)
{
  v2 = v1;
  v4 = sub_24A3C9CEC(&qword_27EF3FD98, &qword_24A4B8A20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v9 = *v2;
  v8 = v2[1];
  v10 = v2[3];
  v50 = v2[2];
  v51 = v8;
  v11 = v2[5];
  v48 = v2[4];
  v49 = v10;
  v12 = v2[7];
  v46 = v2[6];
  v47 = v11;
  v13 = v2[9];
  v44 = v2[8];
  v45 = v12;
  v14 = v2[11];
  v42 = v2[10];
  v43 = v13;
  v15 = v2[13];
  v40 = v2[12];
  v41 = v14;
  v39 = v15;
  v38 = *(v2 + 112);
  v16 = *(v2 + 45);
  v17 = *(v2 + 47);
  v18 = *(v2 + 49);
  *(v64 + 9) = *(v2 + 401);
  v63 = v17;
  v64[0] = v18;
  v62 = v16;
  v19 = v2[53];
  v20 = v2[54];
  v21 = v2[56];
  v34 = v2[55];
  v35 = v20;
  v36 = v21;
  v37 = v19;
  sub_24A37EACC(a1, a1[3]);
  sub_24A381748();

  sub_24A4AC3D0();
  *&v59 = v9;
  LOBYTE(v56[0]) = 0;
  sub_24A3C9CEC(&qword_27EF3F198, &qword_24A4B4978);
  sub_24A38B8AC();
  v65 = v4;
  v53 = v7;
  v22 = v52;
  sub_24A4AC1F0();
  if (v22)
  {

    return (*(v5 + 8))(v53, v65);
  }

  else
  {
    v24 = v50;
    v52 = v5;

    *&v59 = v51;
    LOBYTE(v56[0]) = 1;
    sub_24A4AC1F0();
    *&v59 = v24;
    LOBYTE(v56[0]) = 2;
    sub_24A4AC1F0();
    *&v59 = v49;
    LOBYTE(v56[0]) = 3;
    sub_24A4AC1F0();
    *&v59 = v48;
    LOBYTE(v56[0]) = 4;
    sub_24A4AC1F0();
    *&v59 = v47;
    LOBYTE(v56[0]) = 5;
    sub_24A3C9CEC(&qword_27EF3F1B0, &unk_24A4B4980);
    sub_24A38CD04();
    sub_24A4AC1F0();
    *&v59 = v46;
    LOBYTE(v56[0]) = 6;
    sub_24A4AC1F0();
    *&v59 = v45;
    LOBYTE(v56[0]) = 7;
    sub_24A4AC1F0();
    *&v59 = v44;
    LOBYTE(v56[0]) = 8;
    sub_24A4AC1F0();
    *&v59 = v43;
    *(&v59 + 1) = v42;
    *&v60 = v41;
    *(&v60 + 1) = v40;
    LOBYTE(v56[0]) = 9;
    sub_24A388B00(v43, v42, v41, v40);
    sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
    sub_24A3EA014();
    sub_24A4AC1F0();
    sub_24A37F110(v59, *(&v59 + 1), v60, *(&v60 + 1));
    *&v59 = v39;
    BYTE8(v59) = v38;
    LOBYTE(v56[0]) = 10;
    sub_24A3C9CEC(&qword_27EF3FDB0, &qword_24A4BA250);
    sub_24A415C34();
    sub_24A4AC1F0();
    v25 = *(v2 + 41);
    v61[10] = *(v2 + 39);
    v61[11] = v25;
    v61[12] = *(v2 + 43);
    v26 = *(v2 + 33);
    v61[6] = *(v2 + 31);
    v61[7] = v26;
    v27 = *(v2 + 37);
    v61[8] = *(v2 + 35);
    v61[9] = v27;
    v28 = *(v2 + 25);
    v61[2] = *(v2 + 23);
    v61[3] = v28;
    v29 = *(v2 + 29);
    v61[4] = *(v2 + 27);
    v61[5] = v29;
    v30 = *(v2 + 17);
    v59 = *(v2 + 15);
    v60 = v30;
    v31 = *(v2 + 21);
    v61[0] = *(v2 + 19);
    v61[1] = v31;
    LOBYTE(v56[0]) = 11;
    sub_24A3C9CEC(&qword_27EF3FDC8, &qword_24A4B8A28);
    sub_24A415CB8();
    sub_24A4AC1F0();
    v59 = v62;
    v60 = v63;
    v61[0] = v64[0];
    *(v61 + 9) = *(v64 + 9);
    v58 = 12;
    sub_24A37B740(&v62, v56, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A415D3C();
    sub_24A4AC1F0();
    v56[0] = v59;
    v56[1] = v60;
    *v57 = v61[0];
    *&v57[9] = *(v61 + 9);
    sub_24A37EF2C(v56, &qword_27EF3FD68, &unk_24A4B9F40);
    v55 = v37;
    v54 = 13;
    sub_24A3C9CEC(&qword_27EF3F130, &unk_24A4B4960);
    sub_24A415DC0();
    sub_24A4AC1F0();
    v55 = v36;
    v54 = 16;
    sub_24A3C9CEC(&qword_27EF3FD70, &qword_24A4B8A10);
    sub_24A387028(&qword_27EF3FE00, sub_24A38E880, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_24A4AC1F0();
    v55 = v35;
    v54 = 14;
    sub_24A3C9CEC(&qword_27EF3FD80, &qword_24A4B8A18);
    sub_24A415E44();
    sub_24A4AC1F0();
    v55 = v34;
    v54 = 15;
    sub_24A3C9CEC(&qword_27EF3F118, &qword_24A4B4958);
    sub_24A39AE1C();
    v32 = v65;
    v33 = v53;
    sub_24A4AC1F0();
    return (*(v52 + 8))(v33, v32);
  }
}

uint64_t sub_24A38B37C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24A4AC270() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24A38B40C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v6 = *(a1 + i + 48);
      v7 = *(a1 + i + 56);
      v8 = *(a1 + i + 64);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_24A4AC270() & 1) == 0)
      {
        break;
      }

      if (v6 == v9 && v7 == v10)
      {
        if (v8 != v11)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_24A4AC270();
        result = 0;
        if (v14 & 1) == 0 || ((v8 ^ v11))
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24A38B528(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v33 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v34 = (v3 + 63) >> 6;
  v35 = result;
  while (v5)
  {
    v6 = __clz(__rbit64(v5));
    v39 = (v5 - 1) & v5;
LABEL_14:
    v9 = v6 | (v2 << 6);
    v10 = (*(result + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(result + 56) + 56 * v9;
    v15 = *v13;
    v14 = *(v13 + 8);
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    v18 = *(v13 + 32);
    v19 = *(v13 + 40);
    v20 = *(v13 + 48);
    v36 = v12 == 0;

    v41 = v14;

    if (!v12)
    {
      return 1;
    }

    v21 = sub_24A39B2C8(v11, v12);
    v23 = v22;

    if ((v23 & 1) == 0 || ((v24 = *(a2 + 56) + 56 * v21, v25 = *(v24 + 16), v26 = *(v24 + 24), v38 = *(v24 + 32), v27 = *(v24 + 40), v37 = *(v24 + 48), *v24 == v15) ? (v28 = v41 == *(v24 + 8)) : (v28 = 0), !v28 && (sub_24A4AC270() & 1) == 0))
    {
LABEL_36:

      return 0;
    }

    if (v25 == v17 && v16 == v26)
    {
      if (v18 != v38)
      {
        goto LABEL_36;
      }
    }

    else if (sub_24A4AC270() & 1) == 0 || ((v18 ^ v38))
    {
      goto LABEL_36;
    }

    if (v27 == v19 && v20 == v37)
    {

      result = v35;
      v5 = v39;
    }

    else
    {
      v31 = sub_24A4AC270();

      result = v35;
      v5 = v39;
      v32 = v36;
      if ((v31 & 1) == 0)
      {
        return v32;
      }
    }
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v34)
    {
      return 1;
    }

    v8 = *(v33 + 8 * v2);
    ++v7;
    if (v8)
    {
      v6 = __clz(__rbit64(v8));
      v39 = (v8 - 1) & v8;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A38B7D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A38B81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (sub_24A4AC270() & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_24A38B8AC()
{
  result = qword_27EF3FDA0;
  if (!qword_27EF3FDA0)
  {
    sub_24A3CBC9C(&qword_27EF3F198, &qword_24A4B4978);
    sub_24A38B7D4(&qword_27EF3FDA8, type metadata accessor for FMFIntermediateFriend, &unk_24A4B5430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDA0);
  }

  return result;
}

uint64_t sub_24A38B960(void *a1)
{
  v2 = v1;
  v40 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v40);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_24A3C9CEC(&qword_27EF3F3D8, &unk_24A4B5490);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  sub_24A37EACC(a1, a1[3]);
  sub_24A382600();
  sub_24A4AC3D0();
  LOBYTE(v43) = 0;
  v13 = v41;
  sub_24A4AC1B0();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v38 = v5;
  v39 = v8;
  v41 = v10;
  v43 = *(v2 + 16);
  v42 = 1;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A38D258();
  sub_24A4AC1F0();
  v15 = v9;
  *&v43 = *(v2 + 32);
  v42 = 2;
  v16 = sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  v17 = sub_24A38CA78();
  sub_24A4AC1F0();
  *&v43 = *(v2 + 40);
  v42 = 3;
  sub_24A4AC1F0();
  v37 = v17;
  v43 = *(v2 + 48);
  v42 = 4;
  sub_24A4AC1F0();
  v43 = *(v2 + 64);
  v42 = 5;
  sub_24A4AC1F0();
  v36 = type metadata accessor for FMFIntermediateFriend(0);
  v18 = v39;
  sub_24A38CB20(v2 + v36[10], v39);
  v19 = sub_24A4AAAD0();
  v20 = *(v19 - 8);
  v35 = *(v20 + 48);
  if (v35(v18, 1, v19) == 1)
  {
    v34 = v16;
    sub_24A37EF2C(v18, &qword_27EF3F460, &unk_24A4B53B0);
  }

  else
  {
    sub_24A4AAA90();
    v22 = v21;
    (*(v20 + 8))(v18, v19);
    v23 = v22 * 1000.0;
    v24 = v22 * 1000.0 <= -9.22337204e18;
    if (v22 * 1000.0 >= 9.22337204e18)
    {
      v24 = 1;
    }

    if (v23 != trunc(v23))
    {
      v24 = 1;
    }

    v25 = v23;
    if (v24)
    {
      v25 = 0;
    }

    *&v43 = v25;
    BYTE8(v43) = v24;
    v42 = 6;
    sub_24A3C9CEC(&qword_27EF3F418, &qword_24A4B54B0);
    sub_24A3D8A54();
    sub_24A4AC1F0();
    v34 = v16;
  }

  v26 = v36;
  v27 = v38;
  sub_24A38CB20(v2 + v36[11], v38);
  if (v35(v27, 1, v19) == 1)
  {
    sub_24A37EF2C(v27, &qword_27EF3F460, &unk_24A4B53B0);
  }

  else
  {
    sub_24A4AAA90();
    v29 = v28;
    (*(v20 + 8))(v27, v19);
    v30 = v29 * 1000.0;
    v31 = v29 * 1000.0 <= -9.22337204e18;
    if (v29 * 1000.0 >= 9.22337204e18)
    {
      v31 = 1;
    }

    if (v30 != trunc(v30))
    {
      v31 = 1;
    }

    v32 = v30;
    if (v31)
    {
      v32 = 0;
    }

    *&v43 = v32;
    BYTE8(v43) = v31;
    v42 = 7;
    sub_24A3C9CEC(&qword_27EF3F418, &qword_24A4B54B0);
    sub_24A3D8A54();
    sub_24A4AC1F0();
  }

  LOBYTE(v43) = 8;
  sub_24A38CB94();
  sub_24A4AC1F0();
  LOBYTE(v43) = *(v2 + v26[13]);
  v42 = 9;
  sub_24A3C9CEC(&qword_27EF3F408, &qword_24A4B54A8);
  sub_24A3D89D8();
  sub_24A4AC1F0();
  LOBYTE(v43) = *(v2 + v26[14]);
  v42 = 10;
  sub_24A4AC1F0();
  LOBYTE(v43) = *(v2 + v26[15]);
  v42 = 11;
  sub_24A4AC1F0();
  LOBYTE(v43) = *(v2 + v36[16]);
  v42 = 12;
  sub_24A4AC1F0();
  *&v43 = *(v2 + v36[17]);
  v42 = 13;
  sub_24A4AC1F0();
  return (*(v41 + 8))(v12, v15);
}

char *sub_24A38C154(uint64_t a1, int a2)
{
  v3 = v2;
  v66 = a2;
  v67 = a1;
  v4 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v4 - 8);
  v61[0] = v61 - v5;
  v6 = sub_24A4ABD50();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v62);
  v61[2] = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v9 - 8);
  v61[1] = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AAD70();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AAB20();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_identifier];
  sub_24A4AAB10();
  v20 = sub_24A4AAAF0();
  v22 = v21;
  (*(v16 + 8))(v18, v15);
  *v19 = v20;
  v19[1] = v22;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fenceUpdateStream] = 0;
  v23 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlSession;
  sub_24A4AB3B0();
  (*(v12 + 104))(v14, *MEMORY[0x277D09048], v11);
  v24 = sub_24A4AB260();
  (*(v12 + 8))(v14, v11);
  *&v3[v23] = v24;
  v25 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences] = MEMORY[0x277D84F90];
  v26 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_isSnapshotMode;
  v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_isSnapshotMode] = 0;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe] = 0;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends] = 0;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe] = 0;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends] = 0;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager] = v67;
  LOBYTE(v12) = v66;
  v3[v26] = v66;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationShifter] = FMLocationShifter.init()();
  sub_24A3785D4();
  sub_24A4AB6C0();
  v68[0] = v25;
  sub_24A38D32C(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v64 + 104))(v63, *MEMORY[0x277D85260], v65);
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_updateQueue] = sub_24A4ABD90();
  v27 = type metadata accessor for FMFGenericResponseHandler();
  v69.receiver = v3;
  v69.super_class = v27;
  v28 = objc_msgSendSuper2(&v69, sel_init);
  v29 = v28;
  if (v12)
  {
    v30 = v28;
  }

  else
  {
    v31 = sub_24A4AA700();
    v68[3] = v31;
    v68[4] = sub_24A38D32C(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
    v32 = sub_24A38D3BC(v68);
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D089F8], v31);
    v33 = v29;
    LOBYTE(v31) = sub_24A4AA6C0();
    sub_24A37EEE0(v68);
    if (v31)
    {
      v34 = sub_24A4ABB70();
      v35 = v61[0];
      (*(*(v34 - 8) + 56))(v61[0], 1, 1, v34);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v36;
      sub_24A432370(0, 0, v35, &unk_24A4B9F68, v37);
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v38 = sub_24A4AB630();
  sub_24A378E18(v38, qword_27EF4E260);
  v39 = v29;
  v40 = sub_24A4AB600();
  v41 = sub_24A4ABCE0();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v68[0] = v43;
    *v42 = 136315394;
    v44 = *&v39[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_identifier];
    v45 = *&v39[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_identifier + 8];

    v46 = sub_24A37E99C(0xCuLL, v44, v45);
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v53 = MEMORY[0x24C217CD0](v46, v48, v50, v52);
    v55 = v54;

    v56 = sub_24A37BD58(v53, v55, v68);

    *(v42 + 4) = v56;
    *(v42 + 12) = 2080;
    if (v66)
    {
      v57 = 0x70616E7320736120;
    }

    else
    {
      v57 = 0;
    }

    if (v66)
    {
      v58 = 0xEC000000746F6873;
    }

    else
    {
      v58 = 0xE000000000000000;
    }

    v59 = sub_24A37BD58(v57, v58, v68);

    *(v42 + 14) = v59;
    _os_log_impl(&dword_24A376000, v40, v41, "FMFGenericResponseHandler<%s>.init%s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v43, -1, -1);
    MEMORY[0x24C219130](v42, -1, -1);
  }

  return v39;
}

uint64_t sub_24A38C9CC()
{
  MEMORY[0x24C219220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A38CA04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24A38CA44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 776) = *(v0 + 24);
  *(v1 + 784) = v2;
  sub_24A387F3C();
}

unint64_t sub_24A38CA78()
{
  result = qword_27EF3F3E8;
  if (!qword_27EF3F3E8)
  {
    sub_24A3CBC9C(&qword_27EF3F3E0, &qword_24A4B54A0);
    sub_24A382908(&qword_27EF3F3F0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F3E8);
  }

  return result;
}

uint64_t sub_24A38CB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A38CB94()
{
  result = qword_27EF3F3F8;
  if (!qword_27EF3F3F8)
  {
    sub_24A3CBC9C(&qword_27EF3F460, &unk_24A4B53B0);
    sub_24A38CCBC(&qword_27EF3F400, MEMORY[0x277CC9580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F3F8);
  }

  return result;
}

__n128 sub_24A38CC34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  *(v1 + 808) = *(v0 + 40);
  *(v1 + 824) = v3;
  *(v1 + 792) = v2;
  v4 = *(v0 + 72);
  v5 = *(v0 + 88);
  v6 = *(v0 + 120);
  *(v1 + 872) = *(v0 + 104);
  *(v1 + 888) = v6;
  *(v1 + 840) = v4;
  *(v1 + 856) = v5;
  v7 = *(v0 + 136);
  v8 = *(v0 + 152);
  v9 = *(v0 + 184);
  *(v1 + 936) = *(v0 + 168);
  *(v1 + 952) = v9;
  *(v1 + 904) = v7;
  *(v1 + 920) = v8;
  v10 = *(v0 + 200);
  v11 = *(v0 + 216);
  v12 = *(v0 + 248);
  *(v1 + 1000) = *(v0 + 232);
  *(v1 + 1016) = v12;
  *(v1 + 968) = v10;
  *(v1 + 984) = v11;
  sub_24A387F3C();
  return result;
}

uint64_t sub_24A38CCBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24A4AAAD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A38CD04()
{
  result = qword_27EF3FB48;
  if (!qword_27EF3FB48)
  {
    sub_24A3CBC9C(&qword_27EF3F1B0, &unk_24A4B4980);
    sub_24A38B7D4(&qword_27EF3FB50, type metadata accessor for FMFLocationAlert, &protocol conformance descriptor for FMFLocationAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB48);
  }

  return result;
}

unint64_t sub_24A38CDB8()
{
  result = qword_27EF3F7F8;
  if (!qword_27EF3F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F7F8);
  }

  return result;
}

uint64_t sub_24A38CE0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

__n128 sub_24A38CE54(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t FMFPreferences.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FC98, &qword_24A4B7E50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v21 = *v1;
  v7 = v1[1];
  v14[1] = v1[2];
  v16 = v1[3];
  v17 = v7;
  v15 = *(v1 + 3);
  sub_24A37EACC(a1, a1[3]);
  sub_24A3831D4();
  sub_24A4AC3D0();
  LOBYTE(v19) = 4;
  v8 = v18;
  sub_24A4AC1B0();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v9 = v16;
  v19 = v15;
  v22 = 5;
  sub_24A3C9CEC(&qword_27EF3FCA0, &qword_24A4B7E58);
  sub_24A4129A4();
  sub_24A4AC1F0();
  v11 = 0x53444E45495246;
  if (v9)
  {
    v11 = 0x454E4F5952455645;
  }

  v12 = 0xE700000000000000;
  if (v9)
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == 2)
  {
    v11 = 0;
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v19 = v11;
  v20 = v13;
  v22 = 1;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A38D258();
  sub_24A4AC1F0();

  LOBYTE(v19) = 0;
  sub_24A4AC1B0();

  LOBYTE(v19) = 2;
  sub_24A4AC1B0();

  LOBYTE(v19) = 3;
  sub_24A4AC1B0();
  (*(v4 + 8))(v6, v3);
}

unint64_t sub_24A38D204()
{
  result = qword_27EF3FCB8;
  if (!qword_27EF3FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCB8);
  }

  return result;
}

unint64_t sub_24A38D258()
{
  result = qword_27EF3EFA0;
  if (!qword_27EF3EFA0)
  {
    sub_24A3CBC9C(&unk_27EF3F4C0, &qword_24A4B7E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFA0);
  }

  return result;
}

uint64_t sub_24A38D2E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A38D32C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A38D374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_24A38D3BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_24A38D420()
{
  result = qword_27EF3FDC0;
  if (!qword_27EF3FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDC0);
  }

  return result;
}

unint64_t sub_24A38D484()
{
  result = qword_27EF3FDD8;
  if (!qword_27EF3FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDD8);
  }

  return result;
}

uint64_t sub_24A38D4D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 240))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24A38D52C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v23 - v7 + 24;
  v9 = sub_24A3C9CEC(&qword_27EF400B8, &qword_24A4BB7F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10 + 24;
  v12 = sub_24A4AAC30();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_24A38D9BC(a2, v8);
  v13 = type metadata accessor for FMFServerInteractionController(0);
  swift_allocObject();
  v14 = a1;
  result = sub_24A38DE5C(v11, a1, v8);
  v16 = result;
  if (qword_27EF3EC28 != -1)
  {
    result = swift_once();
  }

  if (byte_27EF40928 == 1)
  {
    v23[3] = v13;
    v23[4] = &off_285D8A048;
    v23[0] = v16;

    v17 = sub_24A3D8E88(v14, v23);
    sub_24A37EEE0(v23);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v18 = sub_24A4AB630();
    sub_24A378E18(v18, qword_27EF4E260);
    v19 = sub_24A4AB600();
    v20 = sub_24A4ABCE0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A376000, v19, v20, "FMFManager: Entering Demo Mode", v21, 2u);
      MEMORY[0x24C219130](v21, -1, -1);
    }

    a3[3] = type metadata accessor for FMFDemoInteractionController();
    a3[4] = &off_285D86E80;

    v16 = v17;
  }

  else
  {
    a3[3] = v13;
    a3[4] = &off_285D8A048;
  }

  *a3 = v16;
  return result;
}

unint64_t sub_24A38D94C()
{
  result = qword_27EF3FDE8;
  if (!qword_27EF3FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDE8);
  }

  return result;
}

__n128 sub_24A38D9A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24A38D9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FMFServerInteractionController(uint64_t a1)
{
  result = qword_27EF407D0;
  if (!qword_27EF407D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMFMyInfo.encode(to:)(void *a1)
{
  v4 = sub_24A3C9CEC(&qword_27EF40EB0, &qword_24A4BD2C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v18 = v1[2];
  v19 = v8;
  v11 = v1[5];
  v16 = v1[4];
  v17 = v10;
  v15[0] = v1[6];
  v15[1] = v11;
  v22 = *(v1 + 56);
  sub_24A37EACC(a1, a1[3]);
  sub_24A3850E8();

  sub_24A4AC3D0();
  v20 = v9;
  v23 = 0;
  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  sub_24A382908(&qword_27EF3F3F0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_24A4AC1F0();
  if (v2)
  {
  }

  else
  {
    v13 = v16;
    v12 = v17;

    LOBYTE(v20) = 1;
    sub_24A4AC1B0();
    v20 = v12;
    v21 = v13;
    v23 = 2;
    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    sub_24A38D258();
    sub_24A4AC1F0();
    LOBYTE(v20) = 3;
    sub_24A4AC1B0();
    LOBYTE(v20) = 4;
    sub_24A4AC1C0();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_24A38DD1C(uint64_t a1)
{
  sub_24A37ECA0(319);
  if (v1 <= 0x3F)
  {
    sub_24A4AAAD0();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_24A38DE5C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a3;
  v52 = a1;
  v5 = sub_24A3C9CEC(&qword_27EF400B8, &qword_24A4BB7F0);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v42 - v6;
  v7 = sub_24A4ABD50();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v9);
  v10 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24A4AAB20();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v4 + qword_27EF40798);
  sub_24A4AAB10();
  v16 = sub_24A4AAAF0();
  v18 = v17;
  (*(v12 + 8))(v14, v11);
  *v15 = v16;
  v15[1] = v18;
  v45 = qword_27EF407A0;
  swift_unknownObjectWeakInit();
  v19 = qword_27EF407A8;
  v44 = qword_27EF407A8;
  sub_24A4AAC50();
  swift_allocObject();
  *(v4 + v19) = sub_24A4AAC40();
  v43 = qword_27EF407B0;
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  sub_24A4AB6B0();
  v53 = MEMORY[0x277D84F90];
  sub_24A37F064(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v47 + 104))(v46, *MEMORY[0x277D85260], v48);
  *(v4 + v43) = sub_24A4ABD90();
  *(v4 + qword_27EF407C0) = 0;
  sub_24A4AAAC0();
  *(v4 + qword_27EF4E298 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_27EF4E2A0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_27EF4E2A8) = 0;
  *(v4 + qword_27EF4E2B0) = 0;
  v20 = v4 + qword_27EF407C8;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  swift_unknownObjectWeakAssign();
  sub_24A37B740(v51, v4 + qword_27EF407B8, &qword_27EF3F650, &qword_24A4B5A10);
  sub_24A37B740(v52, v49, &qword_27EF400B8, &qword_24A4BB7F0);

  v21 = sub_24A4AAC80();
  v22 = qword_27EF3EBF8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_24A4AB630();
  sub_24A378E18(v23, qword_27EF4E260);
  v24 = sub_24A4AB600();
  v25 = sub_24A4ABCE0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v53 = v27;
    *v26 = 136315138;
    v28 = *(v21 + qword_27EF40798);
    v29 = *(v21 + qword_27EF40798 + 8);

    v30 = sub_24A37E99C(0xCuLL, v28, v29);
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = MEMORY[0x24C217CD0](v30, v32, v34, v36);
    v39 = v38;

    v40 = sub_24A37BD58(v37, v39, &v53);

    *(v26 + 4) = v40;
    _os_log_impl(&dword_24A376000, v24, v25, "FMFServerInteractionController<%s>.init", v26, 0xCu);
    sub_24A37EEE0(v27);
    MEMORY[0x24C219130](v27, -1, -1);
    MEMORY[0x24C219130](v26, -1, -1);
  }

  sub_24A37EF2C(v51, &qword_27EF3F650, &qword_24A4B5A10);
  sub_24A37EF2C(v52, &qword_27EF400B8, &qword_24A4BB7F0);
  return v21;
}

unint64_t sub_24A38E4D4()
{
  result = qword_27EF3FDF8;
  if (!qword_27EF3FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDF8);
  }

  return result;
}

uint64_t sub_24A38E528(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A3A357C;

  return sub_24A38EE88(a1, v4);
}

uint64_t FMFDevice.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF40740, &qword_24A4BB360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  v11 = *(v1 + 32);
  sub_24A37EACC(a1, a1[3]);
  sub_24A385340();
  sub_24A4AC3D0();
  v14 = 0;
  v8 = v10[3];
  sub_24A4AC1B0();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24A4AC1B0();
  v12 = 2;
  sub_24A4AC1C0();
  return (*(v4 + 8))(v6, v3);
}

void sub_24A38E7B8()
{
  type metadata accessor for FMDemoManager();
  v4 = 0;
  v0 = 0;
  if (static FMDemoManager.hasDemoModeAsset(for:)(&v4))
  {
    v1 = objc_opt_self();
    v2 = sub_24A4AB820();
    v3 = sub_24A4AB820();
    v0 = [v1 BOOLForKey:v2 inDomain:v3];
  }

  byte_27EF40928 = v0;
}

unint64_t sub_24A38E880()
{
  result = qword_27EF3FE08;
  if (!qword_27EF3FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE08);
  }

  return result;
}

id static FMDemoManager.hasDemoModeAsset(for:)(char *a1)
{
  v2 = sub_24A4AA9D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  static FMDemoManager.assetURL(for:)(&v11);
  if (qword_27EF3EC38 != -1)
  {
    swift_once();
  }

  v6 = qword_27EF40930;
  sub_24A4AA9B0();
  v7 = sub_24A4AB820();

  v8 = [v6 fileExistsAtPath_];

  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t static FMDemoManager.assetURL(for:)(unsigned __int8 *a1)
{
  v1 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - v2;
  v4 = sub_24A4AA9D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EC40 != -1)
  {
    swift_once();
  }

  v8 = sub_24A378E18(v1, qword_27EF40938);
  sub_24A39990C(v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24A3D9248(v3);
    sub_24A3D92B0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_24A4AA990();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24A38EC94()
{
  v0 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v0);
  v2 = &v11 - v1;
  sub_24A378DB4(v3, qword_27EF40938);
  v4 = sub_24A378E18(v0, qword_27EF40938);
  if (qword_27EF3EC38 != -1)
  {
    swift_once();
  }

  v5 = qword_27EF40930;
  v6 = sub_24A4AB820();
  v7 = [v5 containerURLForSecurityApplicationGroupIdentifier_];

  if (v7)
  {
    sub_24A4AA9A0();

    v8 = sub_24A4AA9D0();
    (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  }

  else
  {
    v9 = sub_24A4AA9D0();
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  }

  return sub_24A3996FC(v2, v4);
}

id sub_24A38EE54()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  qword_27EF40930 = result;
  return result;
}

uint64_t sub_24A38EE88(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24A43D990;

  return v6(a1);
}

uint64_t sub_24A38EF80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A3A35A8;

  return sub_24A38F034(a1, v4, v5, v6);
}

uint64_t sub_24A38F034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_24A4AAF50();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF40298, &unk_24A4B9F70);
  v4[16] = swift_task_alloc();
  v6 = sub_24A4AAF10();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A38F188, 0, 0);
}

uint64_t sub_24A38F188()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0[20] = *(Strong + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlSession);
    v2 = Strong;

    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_24A38F2A8;

    return MEMORY[0x28215FAC0]();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24A38F2A8(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_24A38F3C8, 0, 0);
}

uint64_t sub_24A38F3C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fenceUpdateStream) = v0[22];
    v2 = Strong;
  }

  sub_24A4AAF20();
  swift_beginAccess();
  v3 = sub_24A38D32C(&unk_27EF402A0, MEMORY[0x277D091D8], MEMORY[0x277D091E0]);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_24A38F514;
  v5 = v0[16];
  v6 = v0[17];

  return MEMORY[0x282200308](v5, v6, v3);
}