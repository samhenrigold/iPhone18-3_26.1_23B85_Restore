uint64_t sub_24A42851C(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF40040, &qword_24A4B99F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  sub_24A37EACC(a1, a1[3]);
  sub_24A4287F4();
  sub_24A4AC3D0();
  v12 = 0;
  sub_24A4AC1E0();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v10[15] = 1;
    sub_24A3C9CEC(&qword_27EF40048, &qword_24A4B9A00);
    sub_24A428A24();
    sub_24A4AC1F0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24A4286AC()
{
  sub_24A4ABF50();

  v0 = sub_24A4AC240();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](0x4D73757461747320, 0xEC000000203A7061);

  sub_24A3C9CEC(&qword_27EF40048, &qword_24A4B9A00);
  v1 = sub_24A4AB870();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000029;
}

unint64_t sub_24A4287F4()
{
  result = qword_27EF40020;
  if (!qword_27EF40020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40020);
  }

  return result;
}

unint64_t sub_24A428848()
{
  result = qword_27EF40028;
  if (!qword_27EF40028)
  {
    sub_24A3CBC9C(&qword_27EF40010, qword_24A4B9960);
    sub_24A428B58(&qword_27EF40030, MEMORY[0x277D83808], MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40028);
  }

  return result;
}

unint64_t sub_24A4288F8()
{
  result = qword_27EF3F1C0;
  if (!qword_27EF3F1C0)
  {
    type metadata accessor for FMFLocationAlert(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1C0);
  }

  return result;
}

uint64_t sub_24A428950(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A4289C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFCommandResponseFragment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A428A24()
{
  result = qword_27EF40050;
  if (!qword_27EF40050)
  {
    sub_24A3CBC9C(&qword_27EF40048, &qword_24A4B9A00);
    sub_24A428AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40050);
  }

  return result;
}

unint64_t sub_24A428AA8()
{
  result = qword_27EF40058;
  if (!qword_27EF40058)
  {
    sub_24A3CBC9C(&qword_27EF40010, qword_24A4B9960);
    sub_24A428B58(&qword_27EF40060, MEMORY[0x277D837D8], MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40058);
  }

  return result;
}

uint64_t sub_24A428B58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF40038, &qword_24A4B99F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFCommandResponseFragment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFCommandResponseFragment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A428D1C()
{
  result = qword_27EF40068;
  if (!qword_27EF40068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40068);
  }

  return result;
}

unint64_t sub_24A428D74()
{
  result = qword_27EF40070;
  if (!qword_27EF40070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40070);
  }

  return result;
}

unint64_t sub_24A428DCC()
{
  result = qword_27EF40078;
  if (!qword_27EF40078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40078);
  }

  return result;
}

unint64_t sub_24A428E20(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t FMFSnapshotHandlers.responseFilter.getter()
{
  v1 = *(v0 + 16);
  sub_24A3C8498(v1, *(v0 + 24));
  return v1;
}

uint64_t FMFSnapshotHandlers.responseHandler.getter()
{
  v1 = *(v0 + 32);
  sub_24A3C8498(v1, *(v0 + 40));
  return v1;
}

void *FMFSnapshotHandlers.__allocating_init(responseFilter:responseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *FMFSnapshotHandlers.init(responseFilter:responseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t *FMFSnapshotHandlers.deinit()
{
  sub_24A3C84A8(v0[2], v0[3]);
  sub_24A3C84A8(v0[4], v0[5]);
  return v0;
}

uint64_t FMFSnapshotHandlers.__deallocating_deinit()
{
  sub_24A3C84A8(v0[2], v0[3]);
  sub_24A3C84A8(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t FMFManagerConfiguration.preferredLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale;
  v4 = sub_24A4AAB80();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMFManagerConfiguration.cacheDirectory.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory);

  return v1;
}

uint64_t sub_24A4290E0()
{
  if (*(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) == 1)
  {
    return (*(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t FMFManagerConfiguration.__allocating_init(enabledSubsystems:preferredLocale:cacheDirectory:useCache:snapshotHandlers:useOptimizedFetch:disableContactMatching:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, int a8)
{
  v39 = a7;
  v40 = a8;
  v38 = a6;
  v35 = a3;
  v36 = a4;
  v11 = sub_24A4AAB80();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A4AB630();
  v33 = sub_24A378E18(v15, qword_27EF4E260);
  v16 = sub_24A4AB600();
  v17 = sub_24A4ABCE0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = a5 & 1;
    _os_log_impl(&dword_24A376000, v16, v17, "FMFManagerConfiguration: public useCache: %{BOOL}d", v18, 8u);
    MEMORY[0x24C219130](v18, -1, -1);
  }

  v19 = a5;

  v20 = *(v12 + 16);
  v41 = a2;
  v20(v14, a2, v11);
  if (qword_27EF3EBB8 != -1)
  {
    swift_once();
  }

  v22 = *(qword_27EF40080 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider);
  v21 = *(qword_27EF40080 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider + 8);
  type metadata accessor for FMFManagerConfiguration(0);
  v23 = swift_allocObject();
  v37 = v14;
  v20((v23 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale), v14, v11);
  v24 = (v23 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory);
  v25 = v36;
  *v24 = v35;
  v24[1] = v25;
  v26 = v19 & 1;
  *(v23 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) = v19 & 1;
  v27 = (v23 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider);
  *v27 = v22;
  v27[1] = v21;
  *(v23 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_enabledSubsystems) = v34;
  *(v23 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers) = v38;
  *(v23 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) = v39 & 1;
  *(v23 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_disableContactMatching) = v40 & 1;

  v28 = sub_24A4AB600();
  v29 = sub_24A4ABCE0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = v26;
    _os_log_impl(&dword_24A376000, v28, v29, "FMFManagerConfiguration: internal useCache: %{BOOL}d", v30, 8u);
    MEMORY[0x24C219130](v30, -1, -1);
  }

  v31 = *(v12 + 8);
  v31(v41, v11);
  v31(v37, v11);
  return v23;
}

uint64_t FMFManagerConfiguration.deinit()
{
  v1 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale;
  v2 = sub_24A4AAB80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FMFManagerConfiguration.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale;
  v2 = sub_24A4AAB80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24A429600(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24A429674@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_24A4296A8()
{
  result = qword_27EF40088;
  if (!qword_27EF40088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40088);
  }

  return result;
}

unint64_t sub_24A429700()
{
  result = qword_27EF40090;
  if (!qword_27EF40090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40090);
  }

  return result;
}

unint64_t sub_24A429758()
{
  result = qword_27EF40098;
  if (!qword_27EF40098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40098);
  }

  return result;
}

unint64_t sub_24A4297B0()
{
  result = qword_27EF400A0;
  if (!qword_27EF400A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF400A0);
  }

  return result;
}

uint64_t FMReverseGeocodingCache.__allocating_init(preferredLocale:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FMReverseGeocodingCache.init(preferredLocale:)(a1);
  return v2;
}

void *FMReverseGeocodingCache.init(preferredLocale:)(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = *v1;
  v4 = sub_24A4ABD50();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v6);
  v7 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v7 - 8);
  sub_24A4AAAB0();
  v8 = qword_27EF400C8;
  type metadata accessor for FMReverseGeocodingCache.FMReverseGeocodingCacheContext(0, *(v3 + 80), *(v3 + 88), v9);
  *(v2 + v8) = sub_24A4AB740();
  v10 = qword_27EF400D0;
  *(v2 + v10) = sub_24A4AB740();
  *(v2 + qword_27EF400D8) = MEMORY[0x277D84F98];
  *(v2 + qword_27EF400E0) = 0;
  if (qword_27EF3EC00 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E278);

  v12 = sub_24A4AB600();
  v13 = sub_24A4ABCE0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    v16 = sub_24A4AC420();
    v18 = sub_24A37BD58(v16, v17, &v29);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_24A376000, v12, v13, "%s: initialized", v14, 0xCu);
    sub_24A37EEE0(v15);
    MEMORY[0x24C219130](v15, -1, -1);
    MEMORY[0x24C219130](v14, -1, -1);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0xD000000000000022, 0x800000024A4B1690);
  v20 = sub_24A4AC420();
  MEMORY[0x24C217D50](v20);

  MEMORY[0x24C217D50](0x6974617265706F2ELL, 0xEF65756575516E6FLL);
  v21 = sub_24A4AB820();

  [v19 setName_];

  [v19 setMaxConcurrentOperationCount_];
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_24A4ABF50();

  v29 = 0xD000000000000022;
  v30 = 0x800000024A4B1690;
  v22 = sub_24A4AC420();
  MEMORY[0x24C217D50](v22);

  MEMORY[0x24C217D50](0x737365636F72702ELL, 0xED00006575657551);
  sub_24A4AB6D0();
  v29 = MEMORY[0x277D84F90];
  sub_24A37D4E0();
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A37D538();
  sub_24A4ABE90();
  (*(v26 + 104))(v25, *MEMORY[0x277D85260], v27);
  v23 = sub_24A4ABD90();
  *(v2 + qword_27EF400E8) = v19;
  sub_24A429FD8(v28, v2 + qword_27EF4E178);
  *(v2 + qword_27EF400F0) = v23;
  return v2;
}

uint64_t FMReverseGeocodingCache.deinit()
{
  v1 = qword_27EF400C0;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24A3E36D0(v0 + qword_27EF4E178);
  return v0;
}

uint64_t FMReverseGeocodingCache.__deallocating_deinit()
{
  FMReverseGeocodingCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A429FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A42A048(uint64_t (*a1)(void))
{
  a1();

  return sub_24A4AC420();
}

uint64_t sub_24A42A0CC(uint64_t a1)
{
  result = sub_24A37B428(319, &qword_27EF40200, 0x277CE41F8);
  if (v2 <= 0x3F)
  {
    result = sub_24A4AAAD0();
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

uint64_t sub_24A42A194(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24A4AAAD0() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = *(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (*(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) == -1)
  {
    v22 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v21 = *(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + 1;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  return v14 + (v22 | v20) + 1;
}

void sub_24A42A430(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24A4AAAD0() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v10 + 64) + ((v13 + ((v12 + 40) & ~v12) + v14) & ~v14) + 1;
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (*(v10 + 64) + ((v13 + ((v12 + 40) & ~v12) + v14) & ~v14) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v24 = *(v8 + 56);

      v24((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, a2);
    }

    else
    {
      v25 = *(v10 + 56);

      v25((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t type metadata accessor for FMFGetURLInfoRequest(uint64_t a1)
{
  result = qword_27EF40208;
  if (!qword_27EF40208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A42A7AC(uint64_t a1)
{
  result = sub_24A4AA9D0();
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

uint64_t sub_24A42A844()
{
  v0 = sub_24A4AA960();
  v3[3] = MEMORY[0x277D837D0];
  v3[0] = v0;
  v3[1] = v1;
  swift_beginAccess();
  sub_24A3A6CEC(v3, 7107189, 0xE300000000000000);
  return swift_endAccess();
}

uint64_t sub_24A42A8CC()
{
  v1 = qword_27EF4E180;
  v2 = sub_24A4AA9D0();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_24A42A934()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_27EF4E180;
  v4 = sub_24A4AA9D0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_24A42AB00(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A42AB6C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A42AC0C;
}

void sub_24A42AC0C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_24A42AC94()
{
  *(v0 + 88) = *(v0 + 192);
  sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

id FMFGenericResponseHandler.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fenceUpdateStream])
  {

    sub_24A4AAF30();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);
  v2 = v0;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    v7 = *&v2[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_identifier];
    v8 = *&v2[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_identifier + 8];

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v22);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFGenericResponseHandler<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v20 = type metadata accessor for FMFGenericResponseHandler();
  v23.receiver = v2;
  v23.super_class = v20;
  return objc_msgSendSuper2(&v23, sel_dealloc);
}

uint64_t sub_24A42B034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v252 = a2;
  v5 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v5 - 8);
  v256 = &v206 - v6;
  v7 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  MEMORY[0x28223BE20](v7 - 8);
  v241 = &v206 - v8;
  v9 = sub_24A4AAB20();
  v239 = *(v9 - 8);
  v240 = v9;
  MEMORY[0x28223BE20](v9);
  v238 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB020();
  v236 = *(v11 - 8);
  v237 = v11;
  MEMORY[0x28223BE20](v11);
  v235 = &v206 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_24A4AADD0();
  v242 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v259 = &v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v260 = &v206 - v15;
  v16 = sub_24A4AAFC0();
  MEMORY[0x28223BE20](v16 - 8);
  v258 = (&v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_24A4AB130();
  v209 = *(v18 - 8);
  v210 = v18;
  MEMORY[0x28223BE20](v18);
  v208 = &v206 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v207 = &v206 - v21;
  v22 = sub_24A4AB0B0();
  v213 = *(v22 - 8);
  v214 = v22;
  MEMORY[0x28223BE20](v22);
  v211 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v212 = &v206 - v25;
  v26 = sub_24A4AB0C0();
  v221 = *(v26 - 8);
  v222 = v26;
  MEMORY[0x28223BE20](v26);
  v206 = &v206 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v220 = &v206 - v29;
  v257 = sub_24A3C9CEC(&qword_27EF40288, &qword_24A4B9F58);
  MEMORY[0x28223BE20](v257);
  v225 = &v206 - v30;
  v31 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v31 - 8);
  v255 = &v206 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v254 = &v206 - v34;
  v247 = sub_24A4AAEF0();
  v253 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v246 = &v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v245 = &v206 - v37;
  v38 = sub_24A4AAF60();
  MEMORY[0x28223BE20](v38 - 8);
  v230 = &v206 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24A4AB5D0();
  MEMORY[0x28223BE20](v40 - 8);
  v233 = &v206 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24A4AAAD0();
  v250 = *(v42 - 8);
  v251 = v42;
  MEMORY[0x28223BE20](v42);
  v231 = &v206 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_24A4AAFB0();
  v44 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v232 = &v206 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v206 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v206 - v50;
  v52 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = (&v206 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v55);
  v57 = &v206 - v56;
  v262 = v3;
  sub_24A432984(sub_24A42E21C, a1, &v206 - v56);
  v234 = v57;
  sub_24A37B740(v57, v54, &qword_27EF3F2D0, &qword_24A4B4F50);
  v58 = type metadata accessor for FMFFriend(0);
  if ((*(*(v58 - 8) + 48))(v54, 1, v58) == 1)
  {
    sub_24A37EF2C(v54, &qword_27EF3F2D0, &qword_24A4B4F50);
    v244 = 0;
    v249 = 0;
  }

  else
  {
    v59 = v54[1];
    v244 = *v54;
    v249 = v59;

    sub_24A3B599C(v54, type metadata accessor for FMFFriend);
  }

  sub_24A4AB0A0();
  sub_24A4AAF80();
  v61 = v60;
  v62 = *(v44 + 8);
  v63 = v248;
  v62(v51, v248);
  sub_24A4AB0A0();
  sub_24A4AAF80();
  v65 = v64;
  v62(v48, v63);
  v66 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v61 longitude:v65];
  [v66 coordinate];
  v229 = v67;
  v69 = v68;
  [v66 altitude];
  v71 = v70;
  [v66 horizontalAccuracy];
  v73 = v72;
  [v66 verticalAccuracy];
  v75 = v74;
  [v66 course];
  v77 = v76;
  [v66 courseAccuracy];
  v79 = v78;
  [v66 speed];
  v81 = v80;
  [v66 speedAccuracy];
  v83 = v82;
  v84 = v231;
  sub_24A4AB1A0();
  v85 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v86 = sub_24A4AAA60();
  v87 = [v85 initWithCoordinate:v86 altitude:v229 horizontalAccuracy:v69 verticalAccuracy:v71 course:v73 courseAccuracy:v75 speed:v77 speedAccuracy:v79 timestamp:{v81, v83}];

  (*(v250 + 8))(v84, v251);
  v231 = v87;
  v88 = v233;
  sub_24A4AB190();
  FMFAddress.init(from:)(v88, v265);
  sub_24A4AB0A0();
  v89 = v230;
  sub_24A4AAFA0();
  v233 = (v44 + 8);
  v227 = v62;
  v62(v51, v63);
  sub_24A3EF74C(v89, v264);
  LODWORD(v230) = LOBYTE(v264[0]);
  v90 = sub_24A4AB060();
  v92 = v91;

  v228 = v92;
  *&v229 = v90;
  v93._countAndFlagsBits = v90;
  v93._object = v92;
  FMFDefaultLabel.init(rawValue:)(v93);
  v226 = LOBYTE(v264[0]);
  v94 = v245;
  v95 = v3;
  sub_24A4AB180();
  v96 = *MEMORY[0x277D091D0];
  v97 = v253;
  v99 = v253 + 104;
  v98 = *(v253 + 104);
  v101 = v246;
  v100 = v247;
  v98(v246, v96, v247);
  v219 = sub_24A4AAEE0();
  v102 = *(v97 + 8);
  v102(v101, v100);
  v102(v94, v100);
  sub_24A4AB080();
  v215 = v98;
  v216 = v99;
  v98(v101, v96, v100);
  v103 = v95;
  v218 = sub_24A4AAEE0();
  v102(v101, v100);
  v217 = v102;
  v102(v94, v100);
  v104 = v220;
  sub_24A4AB0D0();
  v106 = v221;
  v105 = v222;
  v107 = (*(v221 + 88))(v104, v222);
  v108 = *MEMORY[0x277D09280];
  v253 = v97 + 8;
  v223 = v108;
  v224 = v107;
  if (v107 == v108 || v107 == *MEMORY[0x277D09288])
  {
    (*(v106 + 96))(v104, v105);
    v110 = v212;
    v109 = v213;
    v111 = v214;
    (*(v213 + 32))(v212, v104, v214);
    v112 = v257;
    v113 = *(v257 + 48);
    v114 = v211;
    (*(v109 + 16))(v211, v110, v111);
    v115 = v225;
    sub_24A3EFBFC(v114, v225);
    (*(v109 + 8))(v110, v111);
    v116 = type metadata accessor for FMFSchedule(0);
    (*(*(v116 - 8) + 56))(&v115[v113], 1, 1, v116);
  }

  else
  {
    if (v107 != *MEMORY[0x277D09290])
    {
      v264[0] = 0;
      v264[1] = 0xE000000000000000;
      sub_24A4ABF50();

      v264[0] = 0xD00000000000001BLL;
      v264[1] = 0x800000024A4B18C0;
      v204 = v206;
      sub_24A4AB0D0();
      sub_24A38D32C(&qword_27EF40290, MEMORY[0x277D09298], MEMORY[0x277D092A0]);
      v205 = sub_24A4AC240();
      MEMORY[0x24C217D50](v205);

      (*(v106 + 8))(v204, v105);
      result = sub_24A4AC050();
      __break(1u);
      return result;
    }

    (*(v106 + 96))(v104, v105);
    v118 = v209;
    v117 = v210;
    v119 = v207;
    (*(v209 + 32))(v207, v104, v210);
    v112 = v257;
    v120 = *(v257 + 48);
    v115 = v225;
    *v225 = 3;
    v121 = v208;
    (*(v118 + 16))(v208, v119, v117);
    FMFSchedule.init(fmlSchedule:)(v121, &v115[v120]);
    (*(v118 + 8))(v119, v117);
    v122 = type metadata accessor for FMFSchedule(0);
    (*(*(v122 - 8) + 56))(&v115[v120], 0, 1, v122);
  }

  LODWORD(v225) = *v115;
  sub_24A37BE24(&v115[*(v112 + 48)], v254, &qword_27EF3F470, &qword_24A4B6960);
  v123 = v258;
  sub_24A4AAFD0();
  sub_24A3F0658(v123, v264);
  LODWORD(v222) = LOBYTE(v264[0]);
  v124 = sub_24A4AB090();
  v125 = *(v124 + 16);
  v243 = v103;
  if (v125)
  {
    v126 = *(v242 + 16);
    v127 = *(v242 + 80);
    v221 = v124;
    v128 = v124 + ((v127 + 32) & ~v127);
    v257 = *(v242 + 72);
    v258 = v126;
    v129 = (v242 + 8);
    v130 = MEMORY[0x277D84F90];
    do
    {
      v133 = v260;
      v132 = v261;
      v258(v260, v128, v261);
      v134 = sub_24A4AADC0();
      v136 = v135;
      (*v129)(v133, v132);
      if (v136)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = sub_24A3ED900(0, *(v130 + 2) + 1, 1, v130);
        }

        v138 = *(v130 + 2);
        v137 = *(v130 + 3);
        if (v138 >= v137 >> 1)
        {
          v130 = sub_24A3ED900((v137 > 1), v138 + 1, 1, v130);
        }

        *(v130 + 2) = v138 + 1;
        v131 = &v130[16 * v138];
        *(v131 + 4) = v134;
        *(v131 + 5) = v136;
      }

      v128 += v257;
      --v125;
    }

    while (v125);
  }

  else
  {

    v130 = MEMORY[0x277D84F90];
  }

  v139 = sub_24A4AB090();
  v140 = *(v139 + 16);
  if (v140)
  {
    v141 = v242 + 16;
    v142 = *(v242 + 16);
    v143 = *(v242 + 80);
    v242 = v139;
    v144 = v139 + ((v143 + 32) & ~v143);
    v257 = *(v141 + 56);
    v258 = v142;
    v145 = (v141 - 8);
    v260 = MEMORY[0x277D84F90];
    do
    {
      v148 = v259;
      v149 = v261;
      v258(v259, v144, v261);
      v150 = sub_24A4AAD90();
      v152 = v151;
      (*v145)(v148, v149);
      if (v152)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v260 = sub_24A3ED900(0, *(v260 + 2) + 1, 1, v260);
        }

        v154 = *(v260 + 2);
        v153 = *(v260 + 3);
        if (v154 >= v153 >> 1)
        {
          v260 = sub_24A3ED900((v153 > 1), v154 + 1, 1, v260);
        }

        v146 = v260;
        *(v260 + 2) = v154 + 1;
        v147 = &v146[16 * v154];
        *(v147 + 4) = v150;
        *(v147 + 5) = v152;
      }

      v144 += v257;
      --v140;
    }

    while (v140);
  }

  else
  {

    v260 = MEMORY[0x277D84F90];
  }

  v155 = v245;
  sub_24A4AB070();
  v157 = v246;
  v156 = v247;
  v215(v246, *MEMORY[0x277D091C8], v247);
  v158 = sub_24A4AAEE0();
  v159 = v217;
  v217(v157, v156);
  v159(v155, v156);
  if (v158)
  {
    v161 = v218;
    v160 = v219;
    if (v249)
    {
      v162 = v249;
      sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
      v163 = swift_allocObject();
      *(v163 + 16) = xmmword_24A4B4E10;
      *(v163 + 32) = v244;
      *(v163 + 40) = v162;
      v259 = v163;
      v244 = 0;
      v249 = 0;
    }

    else
    {
      v244 = 0;
      v249 = 0;
      v259 = 0;
    }
  }

  else
  {
    v259 = 0;
    v161 = v218;
    v160 = v219;
  }

  LODWORD(v261) = v161 ^ v160;
  if (!*(v130 + 2))
  {

    v130 = v260;
  }

  v164 = v235;
  v165 = sub_24A4AB040();
  v166 = v238;
  MEMORY[0x24C217410](v165);
  (*(v236 + 8))(v164, v237);
  sub_24A4AAAF0();
  v168 = v239;
  v167 = v240;
  v169 = *(v239 + 8);
  v169(v166, v240);
  v257 = sub_24A4AB880();
  v253 = v170;

  v171 = v232;
  sub_24A4AB0A0();
  sub_24A4AAF90();
  v173 = v172;
  v227(v171, v248);
  sub_24A37B740(v254, v255, &qword_27EF3F470, &qword_24A4B6960);
  v174 = v241;
  sub_24A4AAFE0();
  if ((*(v168 + 48))(v174, 1, v167) == 1)
  {
    sub_24A37EF2C(v174, &qword_27EF3F468, &qword_24A4B9F30);
    v175 = 0;
    v176 = 0;
  }

  else
  {
    sub_24A4AAAF0();
    v169(v174, v167);
    v175 = sub_24A4AB880();
    v176 = v177;
  }

  v178 = v224 != v223;
  if (v226 == 5)
  {
    v179 = 259;
  }

  else
  {
    v179 = 3;
  }

  LODWORD(v258) = v179;
  v180 = sub_24A4AAFF0();
  v182 = v181;
  sub_24A4AAF00();
  v183 = v252;
  v184 = v253;
  *v252 = v257;
  v183[1] = v184;
  *(v183 + 42) = 1;
  *(v183 + 43) = v178;
  v185 = type metadata accessor for FMFLocationAlert(0);
  sub_24A37B740(v255, v183 + v185[12], &qword_27EF3F470, &qword_24A4B6960);
  *(v183 + 40) = v261 & 1;
  *(v183 + 41) = v225;
  v186 = (v183 + v185[13]);
  *v186 = v175;
  v186[1] = v176;
  v187 = (v183 + v185[14]);
  *v187 = v180;
  v187[1] = v182;
  *(v183 + v185[15]) = v222;
  v188 = v259;
  *(v183 + v185[16]) = v260;
  *(v183 + v185[17]) = v130;
  *(v183 + v185[18]) = v188;
  v189 = (v183 + v185[19]);
  v190 = v249;
  *v189 = v244;
  v189[1] = v190;
  v191 = v231;
  [v231 coordinate];
  v183[2] = v192;
  [v191 coordinate];
  v183[3] = v193;
  v194 = v185[26];
  v195 = [v191 timestamp];
  sub_24A4AAAA0();

  (*(v250 + 56))(v183 + v194, 0, 1, v251);
  v183[4] = v173;
  memcpy(v264, v265, sizeof(v264));
  nullsub_1();
  memcpy(v183 + v185[23], v264, 0x130uLL);
  memcpy(v263, v265, sizeof(v263));
  v196 = FMFAddress.displayAddress.getter();
  v197 = (v183 + v185[22]);
  *v197 = v196;
  v197[1] = v198;
  v199 = v183 + v185[20];
  v200 = v228;
  *v199 = v229;
  *(v199 + 1) = v200;
  *(v199 + 8) = v258;
  *(v183 + v185[21]) = v230;
  sub_24A37B740(v256, v183 + v185[27], &qword_27EF3F460, &unk_24A4B53B0);
  *(v183 + v185[24]) = 1;
  v201 = 1;
  if ((v261 & 1) == 0)
  {
    v201 = sub_24A4AC270();
  }

  v202 = v234;

  sub_24A37EF2C(v256, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v255, &qword_27EF3F470, &qword_24A4B6960);
  sub_24A37EF2C(v254, &qword_27EF3F470, &qword_24A4B6960);
  result = sub_24A37EF2C(v202, &qword_27EF3F2D0, &qword_24A4B4F50);
  *(v252 + v185[25]) = v201 & 1;
  return result;
}

uint64_t sub_24A42C7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v192 = a3;
  v191 = a1;
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v4 - 8);
  v167 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v168 = &v157 - v7;
  MEMORY[0x28223BE20](v8);
  v175 = &v157 - v9;
  v10 = sub_24A4AB5D0();
  MEMORY[0x28223BE20](v10 - 8);
  v166 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMFLocationAlert(0);
  v189 = *(v12 - 8);
  v190 = v12;
  MEMORY[0x28223BE20](v12);
  v176 = (&v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v174 = &v157 - v15;
  v16 = sub_24A4AAEF0();
  v171 = *(v16 - 8);
  v172 = v16;
  MEMORY[0x28223BE20](v16);
  v170 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v169 = &v157 - v19;
  v183 = sub_24A4AAFB0();
  v185 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v164 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v180 = &v157 - v22;
  MEMORY[0x28223BE20](v23);
  v179 = &v157 - v24;
  v25 = sub_24A4AB130();
  v163 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v162 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v161 = &v157 - v28;
  v182 = sub_24A4AB0C0();
  v184 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v181 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v178 = &v157 - v31;
  v32 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v32 - 8);
  v165 = &v157 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v157 - v35;
  MEMORY[0x28223BE20](v37);
  v173 = &v157 - v38;
  MEMORY[0x28223BE20](v39);
  v186 = (&v157 - v40);
  v41 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v157 - v42;
  v44 = sub_24A4AAB20();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v157 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_24A3C9CEC(&qword_27EF40280, &qword_24A4B9F38);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v157 - v49;
  v51 = sub_24A4AB1B0();
  v187 = *(v51 - 8);
  v188 = v51;
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v157 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v55 + 8))
  {
    return (*(v189 + 56))(v192, 1, 1, v190, v52);
  }

  v159 = v25;
  v160 = v36;
  v56 = a2;
  v57 = v192;
  v58 = v193;
  v177 = v54;
  sub_24A4AAAE0();
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_24A37EF2C(v43, &qword_27EF3F468, &qword_24A4B9F30);
    (*(v187 + 56))(v50, 1, 1, v188);
    v59 = v189;
LABEL_7:
    sub_24A37EF2C(v50, &qword_27EF40280, &qword_24A4B9F38);
    return (*(v59 + 56))(v57, 1, 1, v190);
  }

  v61 = (*(v45 + 32))(v47, v43, v44);
  v62 = *(v56 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences);
  MEMORY[0x28223BE20](v61);
  *(&v157 - 2) = v47;

  sub_24A4329EC(sub_24A42E18C, v62, v50);
  v193 = v58;

  (*(v45 + 8))(v47, v44);
  v64 = v187;
  v63 = v188;
  if ((*(v187 + 48))(v50, 1, v188) == 1)
  {
    v57 = v192;
    v59 = v189;
    goto LABEL_7;
  }

  (*(v64 + 32))(v177, v50, v63);
  v65 = v178;
  sub_24A4AB0D0();
  v66 = v184;
  v67 = v182;
  v158 = v184[11];
  v68 = v158(v65, v182);
  v196 = *MEMORY[0x277D09280];
  if (v68 == v196)
  {
    v69 = type metadata accessor for FMFSchedule(0);
    (*(*(v69 - 8) + 56))(v186, 1, 1, v69);
  }

  else
  {
    v70 = v186;
    if (v68 == *MEMORY[0x277D09288])
    {
      v71 = type metadata accessor for FMFSchedule(0);
      v72 = *(*(v71 - 8) + 56);
      LODWORD(v163) = 1;
      v72(v70, 1, 1, v71);
      (v66[1])(v65, v67);
      goto LABEL_15;
    }

    if (v68 == *MEMORY[0x277D09290])
    {
      (v66[12])(v65, v67);
      v73 = v163;
      v74 = v161;
      v75 = v159;
      (*(v163 + 32))(v161, v65, v159);
      v76 = v162;
      (*(v73 + 16))(v162, v74, v75);
      FMFSchedule.init(fmlSchedule:)(v76, v70);
      (*(v73 + 8))(v74, v75);
      v77 = type metadata accessor for FMFSchedule(0);
      v78 = *(*(v77 - 8) + 56);
      LODWORD(v163) = 1;
      v78(v70, 0, 1, v77);
      goto LABEL_15;
    }

    v116 = type metadata accessor for FMFSchedule(0);
    (*(*(v116 - 8) + 56))(v70, 1, 1, v116);
  }

  (v66[1])(v65, v67);
  LODWORD(v163) = 0;
LABEL_15:
  v79 = v179;
  sub_24A4AB0A0();
  sub_24A4AAF80();
  v81 = v80;
  v83 = v185 + 1;
  v82 = v185[1];
  v84 = v79;
  v85 = v183;
  v82(v84, v183);
  v86 = v180;
  sub_24A4AB0A0();
  sub_24A4AAF80();
  v88 = v87;
  v185 = v83;
  v82(v86, v85);
  v89 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v81 longitude:v88];
  v90 = v181;
  sub_24A4AB0D0();
  v91 = v158(v90, v67);
  if (v91 == v196 || v91 != *MEMORY[0x277D09288] && v91 != *MEMORY[0x277D09290])
  {

    (v184[1])(v90, v67);
LABEL_19:
    sub_24A37EF2C(v186, &qword_27EF3F470, &qword_24A4B6960);
    (*(v187 + 8))(v177, v188);
    v92 = v192;
    sub_24A3BCA40(v191, v192, type metadata accessor for FMFLocationAlert);
    return (*(v189 + 56))(v92, 0, 1, v190);
  }

  (v184[1])(v90, v67);
  v93 = v169;
  sub_24A4AB180();
  v94 = v170;
  sub_24A4AB080();
  v95 = sub_24A4AAEE0();
  v96 = *(v171 + 8);
  v97 = v94;
  v98 = v172;
  v96(v97, v172);
  v96(v93, v98);
  if ((v95 & 1) == 0)
  {

    goto LABEL_19;
  }

  v99 = v174;
  sub_24A3BCA40(v191, v174, type metadata accessor for FMFLocationAlert);
  v184 = v89;
  v100 = v164;
  sub_24A4AB0A0();
  sub_24A4AAF90();
  v102 = v101;
  v82(v100, v183);
  v103 = v166;
  sub_24A4AB190();
  FMFAddress.init(from:)(v103, v195);
  v191 = sub_24A4AB060();
  v185 = v104;
  v105 = v173;
  sub_24A37B740(v186, v173, &qword_27EF3F470, &qword_24A4B6960);
  sub_24A4AAF00();
  v106 = *(v99 + 8);
  v107 = v176;
  *v176 = *v99;
  v107[1] = v106;
  *(v107 + 42) = 1;
  *(v107 + 43) = v163;
  v108 = v165;
  sub_24A37B740(v105, v165, &qword_27EF3F470, &qword_24A4B6960);
  v109 = type metadata accessor for FMFSchedule(0);
  v110 = *(v109 - 8);
  v111 = *(v110 + 48);
  if (v111(v108, 1, v109) == 1)
  {
    v112 = v190;
    v113 = v160;
    sub_24A37B740(v99 + v190[12], v160, &qword_27EF3F470, &qword_24A4B6960);
    v114 = v111(v108, 1, v109);

    v115 = v167;
    if (v114 != 1)
    {
      sub_24A37EF2C(v108, &qword_27EF3F470, &qword_24A4B6960);
    }
  }

  else
  {
    v113 = v160;
    sub_24A3B587C(v108, v160, type metadata accessor for FMFSchedule);
    (*(v110 + 56))(v113, 0, 1, v109);

    v112 = v190;
    v115 = v167;
  }

  v117 = v176;
  sub_24A37BE24(v113, v176 + v112[12], &qword_27EF3F470, &qword_24A4B6960);
  *(v117 + 40) = *(v99 + 40);
  *(v117 + 41) = *(v99 + 41);
  v118 = v112[13];
  v120 = *(v99 + v118);
  v119 = *(v99 + v118 + 8);
  v121 = (v117 + v118);
  *v121 = v120;
  v121[1] = v119;
  v181 = v119;
  v122 = v112[14];
  v124 = *(v99 + v122);
  v123 = *(v99 + v122 + 8);
  v125 = (v117 + v122);
  *v125 = v124;
  v125[1] = v123;
  v180 = v123;
  *(v117 + v112[15]) = *(v99 + v112[15]);
  v126 = v112[16];
  v179 = *(v99 + v126);
  *(v117 + v126) = v179;
  v127 = v112[17];
  v182 = *(v99 + v127);
  *(v117 + v127) = v182;
  v128 = v112[18];
  v183 = *(v99 + v128);
  *(v117 + v128) = v183;
  v129 = v112[19];
  v130 = *(v99 + v129);
  v131 = *(v99 + v129 + 8);
  v132 = (v117 + v129);
  *v132 = v130;
  v132[1] = v131;
  sub_24A37B740(v175, v115, &qword_27EF3F460, &unk_24A4B53B0);
  v133 = sub_24A4AAAD0();
  v134 = *(v133 - 8);
  v135 = v99;
  v136 = *(v134 + 48);
  if (v136(v115, 1, v133) == 1)
  {
    v137 = v168;
    sub_24A37B740(v135 + v112[27], v168, &qword_27EF3F460, &unk_24A4B53B0);
    v138 = v136(v115, 1, v133);

    if (v138 != 1)
    {
      sub_24A37EF2C(v115, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    v137 = v168;
    (*(v134 + 32))(v168, v115, v133);
    (*(v134 + 56))(v137, 0, 1, v133);
  }

  v139 = v190;
  v140 = v176;
  sub_24A37BE24(v137, v176 + v190[27], &qword_27EF3F460, &unk_24A4B53B0);
  v141 = v184;
  [v141 coordinate];
  *(v140 + 2) = v142;
  [v141 coordinate];
  *(v140 + 3) = v143;
  v144 = v139[26];
  v145 = [v141 timestamp];
  sub_24A4AAAA0();

  (*(v134 + 56))(&v140[v144], 0, 1, v133);
  *(v140 + 4) = v102;
  memcpy(v194, v195, sizeof(v194));
  nullsub_1();
  memcpy(&v140[v139[23]], v194, 0x130uLL);
  v146 = FMFAddress.displayAddress.getter();
  v147 = &v140[v139[22]];
  *v147 = v146;
  v147[1] = v148;
  v149 = v185;

  v150 = v191;
  v151._countAndFlagsBits = v191;
  v151._object = v149;
  FMFDefaultLabel.init(rawValue:)(v151);

  sub_24A37EF2C(v175, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v173, &qword_27EF3F470, &qword_24A4B6960);
  sub_24A37EF2C(v186, &qword_27EF3F470, &qword_24A4B6960);
  (*(v187 + 8))(v177, v188);
  if (v197 == 5)
  {
    v152 = 259;
  }

  else
  {
    v152 = 3;
  }

  v153 = &v140[v139[20]];
  *v153 = v150;
  *(v153 + 1) = v149;
  *(v153 + 8) = v152;
  v154 = v174;
  v140[v139[21]] = *(v174 + v139[21]);
  v140[v139[24]] = *(v154 + v139[24]);
  v155 = *(v154 + v139[25]);
  sub_24A3B599C(v154, type metadata accessor for FMFLocationAlert);
  v140[v139[25]] = v155;
  v156 = v192;
  sub_24A3B587C(v140, v192, type metadata accessor for FMFLocationAlert);
  return (*(v189 + 56))(v156, 0, 1, v139);
}

uint64_t sub_24A42DB6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AAB20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4AB020();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB040();
  MEMORY[0x24C217410](v10);
  (*(v7 + 8))(v9, v6);
  v11 = sub_24A4AAB00();
  (*(v3 + 8))(v5, v2);
  return v11 & 1;
}

id FMFGenericResponseHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24A42DD98(uint64_t a1)
{
  v26 = sub_24A4AADD0();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24A4AB090();
  v21 = *(result + 16);
  if (v21)
  {
    v20[1] = v1;
    v7 = 0;
    v24 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v25 = result;
    v8 = *(a1 + 32);
    v22 = v3 + 8;
    v23 = v3 + 16;
    v9 = v8 + 56;
    while (1)
    {
      if (v7 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v10 = v26;
      (*(v3 + 16))(v5, v24 + *(v3 + 72) * v7, v26);
      v11 = sub_24A4AADB0();
      v13 = v12;
      (*(v3 + 8))(v5, v10);
      if (*(v8 + 16))
      {
        sub_24A4AC360();
        sub_24A4AB8F0();
        v14 = sub_24A4AC3A0();
        v15 = -1 << *(v8 + 32);
        v16 = v14 & ~v15;
        if ((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          break;
        }
      }

LABEL_3:
      ++v7;

      result = v25;
      if (v7 == v21)
      {
        goto LABEL_16;
      }
    }

    v17 = ~v15;
    while (1)
    {
      v18 = (*(v8 + 48) + 16 * v16);
      v19 = *v18 == v11 && v18[1] == v13;
      if (v19 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    return 1;
  }

  else
  {
LABEL_16:

    return 0;
  }
}

uint64_t FMFContactsDataController.__allocating_init(isSnapshotMode:)(int a1)
{
  v2 = swift_allocObject();
  FMFContactsDataController.init(isSnapshotMode:)(a1);
  return v2;
}

uint64_t *FMFContactsDataController.deinit()
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
    v6 = swift_slowAlloc();
    *v5 = 136446466;
    v24 = v6;
    sub_24A3C9CEC(&unk_27EF402F0, &unk_24A4B9FC8);
    v7 = sub_24A4AB870();
    v9 = sub_24A37BD58(v7, v8, &v24);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = *(v1 + 16);
    v11 = *(v1 + 24);

    v12 = sub_24A37E99C(0xCuLL, v10, v11);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x24C217CD0](v12, v14, v16, v18);
    v21 = v20;

    v22 = sub_24A37BD58(v19, v21, &v24);

    *(v5 + 14) = v22;
    _os_log_impl(&dword_24A376000, v3, v4, "%{public}s<%s>.deinit", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  sub_24A3C8470(v1 + 40);

  sub_24A37EF2C(v1 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_lastContactSearchDate, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v1 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_lastContactUpdateDate, &qword_27EF3F460, &unk_24A4B53B0);

  sub_24A37EF2C(v1 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache + 8, &unk_27EF40300, &qword_24A4B9FD8);
  return v1;
}

uint64_t FMFContactsDataController.__deallocating_deinit()
{
  FMFContactsDataController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A42E63C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = sub_24A4AA8C0();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AA8B0();
  if ([a1 isKeyAvailable_])
  {
    v6 = [a1 nickname];
    sub_24A4AB850();

    sub_24A4AA8A0();
    v7 = [a1 nickname];
    v8 = sub_24A4AB850();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 2;
  }

  if ([a1 isKeyAvailable_])
  {
    v13 = [a1 givenName];
    sub_24A4AB850();

    sub_24A4AA870();
  }

  if ([a1 isKeyAvailable_])
  {
    v14 = [a1 familyName];
    sub_24A4AB850();

    sub_24A4AA880();
  }

  v15 = sub_24A4AA890();
  v16 = objc_opt_self();
  v17 = [v16 localizedStringFromPersonNameComponents:v15 style:v12 options:0];

  v18 = sub_24A4AB850();
  v20 = v19;

  v21 = sub_24A4AA890();
  v22 = [v16 localizedStringFromPersonNameComponents:v21 style:1 options:0];

  v23 = sub_24A4AB850();
  v25 = v24;

  v26 = [a1 identifier];
  v27 = sub_24A4AB850();
  v29 = v28;

  v30 = sub_24A42F704(a1);
  v32 = v31;
  result = (*(v37 + 8))(v5, v38);
  v34 = v32;
  v35 = v32 >> 60;
  if (v35 <= 0xE)
  {
    result = sub_24A386DFC(v30, v34);
  }

  *a2 = v27;
  *(a2 + 8) = v29;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v35 < 0xF;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;
  return result;
}

unint64_t sub_24A42E998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_self();
  v6 = sub_24A4AB820();
  v7 = [v5 predicateForContactsMatchingName_];

  v8 = *(v3 + 56);
  if (!a3)
  {
    sub_24A3A1488();
  }

  sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
  v9 = sub_24A4ABA50();

  v31[0] = 0;
  v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:v31];

  v11 = v31[0];
  if (!v10)
  {
    v14 = v31[0];
    v15 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A4AB630();
    sub_24A378E18(v16, qword_27EF4E260);
    v17 = v15;
    v18 = sub_24A4AB600();
    v19 = sub_24A4ABCE0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31[0] = v21;
      *v20 = 136315138;
      v22 = v15;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v23 = sub_24A4AB870();
      v25 = sub_24A37BD58(v23, v24, v31);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_24A376000, v18, v19, "Error getting contact - %s", v20, 0xCu);
      sub_24A37EEE0(v21);
      MEMORY[0x24C219130](v21, -1, -1);
      MEMORY[0x24C219130](v20, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_24A37B428(0, &qword_27EF40320, 0x277CBDA58);
  v12 = sub_24A4ABA70();
  v13 = v11;

  if (v12 >> 62)
  {
    if (sub_24A4AC060())
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v26 = sub_24A4AB630();
    sub_24A378E18(v26, qword_27EF4E260);
    v27 = sub_24A4AB600();
    v28 = sub_24A4ABCE0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24A376000, v27, v28, "No contact found in store", v29, 2u);
      MEMORY[0x24C219130](v29, -1, -1);
    }

    return 0;
  }

LABEL_6:

  return v12;
}

unint64_t sub_24A42ED80(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_24A3A1488();

  sub_24A3DB82C(v6);
  v7 = sub_24A42EE0C(a1, a2, a3);

  return v7;
}

unint64_t sub_24A42EE0C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v36[2] = *MEMORY[0x277D85DE8];
  v36[0] = a1;
  v36[1] = a2;
  sub_24A3A1434();
  v6 = sub_24A4ABE60();
  v7 = objc_opt_self();
  if (v6)
  {
    v8 = sub_24A4AB820();
    v9 = &selRef_predicateForContactsMatchingEmailAddress_;
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v11 = sub_24A4AB820();
    v8 = [v10 initWithStringValue_];

    v9 = &selRef_predicateForContactsMatchingPhoneNumber_;
  }

  v12 = [v7 *v9];

  v13 = *(v4 + 56);
  if (!a3)
  {
    sub_24A3A1488();
  }

  sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
  v14 = sub_24A4ABA50();

  v36[0] = 0;
  v15 = [v13 unifiedContactsMatchingPredicate:v12 keysToFetch:v14 error:v36];

  v16 = v36[0];
  if (!v15)
  {
    v19 = v36[0];
    v20 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v21 = sub_24A4AB630();
    sub_24A378E18(v21, qword_27EF4E260);
    v22 = v20;
    v23 = sub_24A4AB600();
    v24 = sub_24A4ABCE0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36[0] = v26;
      *v25 = 136315138;
      v27 = v20;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v28 = sub_24A4AB870();
      v30 = sub_24A37BD58(v28, v29, v36);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_24A376000, v23, v24, "Error getting contact - %s", v25, 0xCu);
      sub_24A37EEE0(v26);
      MEMORY[0x24C219130](v26, -1, -1);
      MEMORY[0x24C219130](v25, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_24A37B428(0, &qword_27EF40320, 0x277CBDA58);
  v17 = sub_24A4ABA70();
  v18 = v16;

  if (v17 >> 62)
  {
    if (sub_24A4AC060())
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v31 = sub_24A4AB630();
    sub_24A378E18(v31, qword_27EF4E260);
    v32 = sub_24A4AB600();
    v33 = sub_24A4ABCE0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24A376000, v32, v33, "No contact found in store", v34, 2u);
      MEMORY[0x24C219130](v34, -1, -1);
    }

    return 0;
  }

LABEL_9:

  return v17;
}

id sub_24A42F284(uint64_t a1, uint64_t a2)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = *(v2 + 56);
  if (!a2)
  {
    sub_24A3A1488();
  }

  sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
  v5 = sub_24A4ABA50();

  v37[0] = 0;
  v6 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  if (!v6)
  {
    v12 = v37[0];
    v13 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);
    v15 = v13;
    v16 = sub_24A4AB600();
    v17 = sub_24A4ABCE0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37[0] = v19;
      *v18 = 136315138;
      v20 = v13;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v21 = sub_24A4AB870();
      v23 = sub_24A37BD58(v21, v22, v37);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_24A376000, v16, v17, "Error fetching me contact - %s", v18, 0xCu);
      sub_24A37EEE0(v19);
      MEMORY[0x24C219130](v19, -1, -1);
      MEMORY[0x24C219130](v18, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v7 = *MEMORY[0x277CBD028];
  v8 = v37[0];
  if ([v6 isKeyAvailable_])
  {
    v9 = v6;
    v10 = [v9 identifier];
    sub_24A4AB850();

    return v6;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v24 = sub_24A4AB630();
  sub_24A378E18(v24, qword_27EF4E260);
  v25 = sub_24A4AB600();
  v26 = sub_24A4ABCE0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24A376000, v25, v26, "Me contact found but no image data. Will try to search by handle", v27, 2u);
    MEMORY[0x24C219130](v27, -1, -1);
  }

  if (!a1)
  {
    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_24A376000, v33, v34, "FMFInfo does NOT have any email handles.", v35, 2u);
      MEMORY[0x24C219130](v35, -1, -1);
    }

    goto LABEL_24;
  }

  v28 = *(a1 + 16);
  if (!v28)
  {
LABEL_24:

    return 0;
  }

  v29 = (a1 + 40);
  while (1)
  {
    v30 = *(v29 - 1);
    v31 = *v29;

    v32 = sub_24A42EE0C(v30, v31, 0);
    if (v32)
    {
      break;
    }

    v29 += 2;
    if (!--v28)
    {
      goto LABEL_24;
    }
  }

  v36 = sub_24A42F78C(v32);

  return v36;
}

uint64_t sub_24A42F704(void *a1)
{
  if (*(v1 + 32) != 1)
  {
    v2 = [a1 imageData];
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = [a1 thumbnailImageData];
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = v2;
  v4 = sub_24A4AAA10();

  return v4;
}

id sub_24A42F78C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A4AC060())
  {
    v4 = 0;
    v5 = *(v1 + 32);
    v1 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v1)
      {
        v6 = MEMORY[0x24C218380](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5)
      {
        v9 = [v6 thumbnailImageData];
        if (v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v9 = [v6 imageData];
        if (v9)
        {
LABEL_15:
          v10 = v9;
          v11 = sub_24A4AAA10();
          v13 = v12;

          sub_24A386E10(v11, v13);
          return v7;
        }
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v1 = a1 & 0xC000000000000001;
LABEL_20:
  if (v1)
  {

LABEL_29:
    JUMPOUT(0x24C218380);
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_29;
  }

  v15 = *(a1 + 32);

  return v15;
}

id sub_24A42F93C()
{
  sub_24A3C9CEC(&unk_27EF403B0, &qword_24A4BA190);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24A4B9FA0;
  v1 = *MEMORY[0x277CBD068];
  v2 = *MEMORY[0x277CBD000];
  *(v0 + 32) = *MEMORY[0x277CBD068];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD058];
  v4 = *MEMORY[0x277CBCFF8];
  *(v0 + 48) = *MEMORY[0x277CBD058];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBD0E0];
  v6 = *MEMORY[0x277CBD070];
  *(v0 + 64) = *MEMORY[0x277CBD0E0];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CBD078];
  v8 = *MEMORY[0x277CBCFC0];
  *(v0 + 80) = *MEMORY[0x277CBD078];
  *(v0 + 88) = v8;
  v18 = *MEMORY[0x277CBD098];
  *(v0 + 96) = *MEMORY[0x277CBD098];
  qword_27EF402B0 = v0;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;

  return v18;
}

void *sub_24A42FA64(void *a1, void *a2)
{
  v3 = v2;
  v48[2] = *MEMORY[0x277D85DE8];
  v6 = v2 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache));
  v7 = *(v6 + 8);
  if (*(v7 + 16) && (v8 = sub_24A39B2C8(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10;
    os_unfair_lock_unlock(v6);
    if (v10 != 1)
    {
      return v10;
    }
  }

  else
  {
    os_unfair_lock_unlock(v6);
  }

  v48[0] = a1;
  v48[1] = a2;
  sub_24A3A1434();
  v12 = sub_24A4ABE60();
  v13 = objc_opt_self();
  if (v12)
  {
    v14 = sub_24A4AB820();
    v15 = &selRef_predicateForContactsMatchingEmailAddress_;
  }

  else
  {
    v16 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v17 = sub_24A4AB820();
    v14 = [v16 initWithStringValue_];

    v15 = &selRef_predicateForContactsMatchingPhoneNumber_;
  }

  v18 = [v13 *v15];

  v19 = *(v3 + 56);
  v20 = qword_27EF3EBC8;
  v21 = v18;
  if (v20 != -1)
  {
    swift_once();
  }

  sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
  v22 = sub_24A4ABA50();
  v48[0] = 0;
  v23 = [v19 unifiedContactsMatchingPredicate:v21 keysToFetch:v22 error:v48];

  v24 = v48[0];
  if (!v23)
  {
    v30 = v48[0];
    v24 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 == -1)
    {
LABEL_20:
      v31 = sub_24A4AB630();
      sub_24A378E18(v31, qword_27EF4E260);
      v32 = v24;
      v33 = sub_24A4AB600();
      v34 = sub_24A4ABCC0();

      if (!os_log_type_enabled(v33, v34))
      {

LABEL_29:
        os_unfair_lock_lock(v6);
        goto LABEL_30;
      }

      v35 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48[0] = v47;
      *v35 = 136315138;
      v36 = v24;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v37 = sub_24A4AB870();
      v39 = v21;
      v40 = sub_24A37BD58(v37, v38, v48);

      *(v35 + 4) = v40;
      v21 = v39;
      _os_log_impl(&dword_24A376000, v33, v34, "Error getting contact - %s", v35, 0xCu);
      sub_24A37EEE0(v47);
      MEMORY[0x24C219130](v47, -1, -1);
      MEMORY[0x24C219130](v35, -1, -1);

LABEL_28:
      goto LABEL_29;
    }

LABEL_35:
    swift_once();
    goto LABEL_20;
  }

  sub_24A37B428(0, &qword_27EF40320, 0x277CBDA58);
  v25 = sub_24A4ABA70();
  v26 = v24;

  if (!(v25 >> 62))
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_24:

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v41 = sub_24A4AB630();
    sub_24A378E18(v41, qword_27EF4E260);

    v33 = sub_24A4AB600();
    v42 = sub_24A4ABCE0();

    if (os_log_type_enabled(v33, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48[0] = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      *(v43 + 14) = sub_24A37BD58(a1, a2, v48);
      _os_log_impl(&dword_24A376000, v33, v42, "No contact found for handle: %{private,mask.hash}s", v43, 0x16u);
      sub_24A37EEE0(v44);
      MEMORY[0x24C219130](v44, -1, -1);
      MEMORY[0x24C219130](v43, -1, -1);
    }

    goto LABEL_28;
  }

  if (!sub_24A4AC060())
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v25 & 0xC000000000000001) == 0)
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v25 + 32);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_35;
  }

  v27 = MEMORY[0x24C218380](0, v25);
LABEL_17:
  v10 = v27;

  os_unfair_lock_lock(v6);
  if (!v10)
  {
LABEL_30:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = *(v6 + 8);
    *(v6 + 8) = 0x8000000000000000;
    sub_24A430C14(0, a1, a2, isUniquelyReferenced_nonNull_native);

    v10 = 0;
    goto LABEL_31;
  }

  v28 = v10;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48[0] = *(v6 + 8);
  *(v6 + 8) = 0x8000000000000000;
  sub_24A430C14(v10, a1, a2, v29);

LABEL_31:
  *(v6 + 8) = v48[0];
  os_unfair_lock_unlock(v6);

  return v10;
}

void sub_24A4300A0()
{
  v1 = v0 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache));
  if (*(*(v1 + 8) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v1 + 8);
    *(v1 + 8) = 0x8000000000000000;
    sub_24A3C9CEC(&unk_27EF40360, &unk_24A4BA150);
    sub_24A4AC040();
    *(v1 + 8) = v2;
  }

  os_unfair_lock_unlock(v1);
}

unint64_t sub_24A43014C(char a1)
{
  sub_24A4AC360();
  MEMORY[0x24C218780](a1 & 1);
  v2 = sub_24A4AC3A0();

  return sub_24A4301FC(a1 & 1, v2);
}

unint64_t sub_24A4301B8(uint64_t a1)
{
  v2 = sub_24A4ABEC0();

  return sub_24A43026C(a1, v2);
}

unint64_t sub_24A4301FC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24A43026C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24A431804(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C2182E0](v9, a1);
      sub_24A431860(v9);
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

void sub_24A430334(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24A4A84C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A4A48D4(v16, a4 & 1);
    v11 = sub_24A39B2C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_24A4AC2B0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
  }

  else
  {
    sub_24A4A7FC0(v11, a2, a3, a1 & 1, v21);
  }
}

void sub_24A430468(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_24A39B2C8(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_24A4A863C();
      v17 = v25;
      goto LABEL_8;
    }

    sub_24A4A4B88(v22, a7 & 1);
    v17 = sub_24A39B2C8(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4 & 1;
    *(v28 + 25) = BYTE1(a4) & 1;
    *(v28 + 26) = BYTE2(a4) & 1;
  }

  else
  {
    sub_24A4A8008(v17, a5, a6, a1, a2, a3, a4 & 0x10101, v27);
  }
}

void sub_24A430600(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for LiveRelabilityStats(0);
      sub_24A39CB20(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for LiveRelabilityStats);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24A4A87E8();
    goto LABEL_7;
  }

  sub_24A4A4E80(v15, a4 & 1);
  v21 = sub_24A39B2C8(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_24A4AC2B0();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24A4A8070(v12, a2, a3, a1, v18);
}

void sub_24A43076C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ShallowRelabilityStats(0);
      sub_24A39CB20(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ShallowRelabilityStats);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24A4A8824();
    goto LABEL_7;
  }

  sub_24A4A4EBC(v15, a4 & 1);
  v21 = sub_24A39B2C8(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_24A4AC2B0();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24A4A809C(v12, a2, a3, a1, v18);
}

void sub_24A430918(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
      sub_24A431910(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_27EF403A8, &qword_24A4BA760);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24A4A8AC8();
    goto LABEL_7;
  }

  sub_24A4A4F0C(v15, a4 & 1);
  v21 = sub_24A39B2C8(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_24A4AC2B0();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24A4A80C8(v12, a2, a3, a1, v18);
}

void sub_24A430ACC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24A4A8D14();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A4A5264(v16, a4 & 1);
    v11 = sub_24A39B2C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 56 * v11;

    sub_24A4318B4(a1, v22);
  }

  else
  {
    sub_24A4A816C(v11, a2, a3, a1, v21);
  }
}

void sub_24A430C14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24A4A8EC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A4A5570(v16, a4 & 1);
    v11 = sub_24A39B2C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
_objc_release_x1:
      MEMORY[0x2821F96F8]();
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  sub_24A4A81D0(v11, a2, a3, a1, v21);
}

void sub_24A430D98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_24A39B2C8(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_24A39B2C8(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
_objc_release_x1:
      MEMORY[0x2821F96F8]();
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;

    goto _objc_release_x1;
  }

  a7(v17, a2, a3, a1, v27);
}

unint64_t sub_24A430F00(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24A43014C(a2 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24A4A9814();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24A4A67E4(v14, a3 & 1);
    v9 = sub_24A43014C(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return MEMORY[0x2821F96F8]();
  }

  return sub_24A4A8300(v9, a2 & 1, a1, v19);
}

void sub_24A431020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24A4A9970();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A4A6A70(v16, a4 & 1);
    v11 = sub_24A39B2C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_24A4A81D0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_24A431168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&unk_27EF40380, &unk_24A4BA160);
    v3 = sub_24A4AC090();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A37B740(v4, &v15, &qword_27EF3F818, &qword_24A4B6548);
      v5 = v15;
      v6 = v16;
      result = sub_24A39B2C8(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_24A431298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&unk_27EF40370, &qword_24A4B4720);
    v3 = sub_24A4AC090();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A37B740(v4, &v13, &qword_27EF3F0B0, &qword_24A4B4728);
      v5 = v13;
      v6 = v14;
      result = sub_24A39B2C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24A3A60B4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24A4313C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF403D8, &qword_24A4BA1A8);
    v3 = sub_24A4AC090();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24A39B2C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_24A4314CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF403D0, &qword_24A4BA1A0);
    v3 = sub_24A4AC090();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_24A39B2C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_24A431730(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A431780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_24A4317D4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_24A431910(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A3C9CEC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A431978(uint64_t a1, void *a2)
{
  v63 = a2;
  v3 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v56 - v4;
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_24A3A11D8(*(v5 + 16), 0);
    v8 = sub_24A3A1268(&v70, v7 + 4, v6, v5);
    v9 = v70;

    sub_24A3A13C0(v9);
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v70 = v7;
  sub_24A3A13C8(&v70);
  v10 = v70;
  v57 = *(v70 + 2);
  if (v57)
  {
    v11 = 0;
    v12 = v70 + 32;
    v59 = v70;
    v56 = v70 + 32;
    while (v11 < *(v10 + 2))
    {
      v58 = v11;
      v13 = &v12[16 * v11];
      v14 = *(v13 + 1);
      v65 = *v13;
      v70 = v65;
      v71 = v14;
      v68 = 64;
      v69 = 0xE100000000000000;
      v15 = sub_24A4AAB80();
      v16 = v62;
      (*(*(v15 - 8) + 56))(v62, 1, 1, v15);
      v17 = sub_24A3A1434();

      v54 = v17;
      v55 = v17;
      sub_24A4ABE50();
      LOBYTE(v17) = v18;
      sub_24A37EF2C(v16, &qword_27EF3F650, &qword_24A4B5A10);
      v66 = v14;
      if ((v17 & 1) == 0)
      {
        v41 = [v63 emailAddresses];
        sub_24A3C9CEC(&qword_27EF403C8, &qword_24A4BA198);
        v42 = sub_24A4ABA70();

        v64 = v42 & 0xFFFFFFFFFFFFFF8;
        if (v42 >> 62)
        {
          v43 = sub_24A4AC060();
        }

        else
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v44 = 0;
        while (1)
        {
          if (v43 == v44)
          {
            goto LABEL_46;
          }

          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = MEMORY[0x24C218380](v44, v42);
          }

          else
          {
            if (v44 >= *(v64 + 16))
            {
              goto LABEL_57;
            }

            v45 = *(v42 + 8 * v44 + 32);
          }

          v46 = v45;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          v47 = [v45 value];
          v48 = sub_24A4AB850();
          v50 = v49;

          if (v48 == v65 && v50 == v66)
          {

LABEL_55:

            return 1;
          }

          v52 = sub_24A4AC270();

          ++v44;
          if (v52)
          {
LABEL_54:

            goto LABEL_55;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v19 = [v63 phoneNumbers];
      sub_24A3C9CEC(&qword_27EF403C8, &qword_24A4BA198);
      v20 = sub_24A4ABA70();

      if (v20 >> 62)
      {
        v21 = sub_24A4AC060();
        if (v21)
        {
LABEL_11:
          v22 = 0;
          v64 = v20 & 0xC000000000000001;
          v60 = v20 + 32;
          v61 = v20 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v64)
            {
              v23 = MEMORY[0x24C218380](v22, v20);
            }

            else
            {
              if (v22 >= *(v61 + 16))
              {
                goto LABEL_59;
              }

              v23 = *(v60 + 8 * v22);
            }

            v24 = v23;
            if (__OFADD__(v22++, 1))
            {
              break;
            }

            v26 = [v23 value];
            v27 = [v26 stringValue];

            v28 = sub_24A4AB850();
            v30 = v29;

            v31 = 0xE000000000000000;
            v68 = 0;
            v69 = 0xE000000000000000;
            v32 = HIBYTE(v30) & 0xF;
            if ((v30 & 0x2000000000000000) == 0)
            {
              v32 = v28 & 0xFFFFFFFFFFFFLL;
            }

            v70 = v28;
            v71 = v30;
            v72 = 0;
            v73 = v32;
            v33 = sub_24A4AB960();
            if (v34)
            {
              v35 = v33;
              v36 = v34;
              do
              {
                v67[0] = v35;
                v67[1] = v36;
                MEMORY[0x28223BE20](v33);
                v54 = v67;
                if ((sub_24A4536E8(sub_24A431FF8, (&v56 - 4), 2336, 0xE200000000000000) & 1) == 0)
                {
                  MEMORY[0x24C217D40](v35, v36);
                }

                v33 = sub_24A4AB960();
                v35 = v33;
                v36 = v37;
              }

              while (v37);
              v38 = v68;
              v31 = v69;
            }

            else
            {
              v38 = 0;
            }

            v70 = v38;
            v71 = v31;
            if (sub_24A4AB9F0() == v65 && v39 == v66)
            {

              goto LABEL_55;
            }

            v40 = sub_24A4AC270();

            if (v40)
            {
              goto LABEL_54;
            }

            if (v22 == v21)
            {
              goto LABEL_46;
            }
          }

LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          break;
        }
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_11;
        }
      }

LABEL_46:
      v11 = v58 + 1;

      v12 = v56;
      v10 = v59;
      if (v11 == v57)
      {
        goto LABEL_51;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_51:

    return 0;
  }

  return result;
}

uint64_t sub_24A431FF8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270() & 1;
  }
}

uint64_t FMFBaseAction.__allocating_init(requiresRefresh:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24A43215C()
{
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  return 60;
}

uint64_t sub_24A432370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24A37B740(a3, v25 - v10, &qword_27EF3F0C8, &qword_24A4B4840);
  v12 = sub_24A4ABB70();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24A37EF2C(v11, &qword_27EF3F0C8, &qword_24A4B4840);
  }

  else
  {
    sub_24A4ABB60();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24A4ABB40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24A4AB8B0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24A432670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24A37B740(a3, v25 - v10, &qword_27EF3F0C8, &qword_24A4B4840);
  v12 = sub_24A4ABB70();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24A37EF2C(v11, &qword_27EF3F0C8, &qword_24A4B4840);
  }

  else
  {
    sub_24A4ABB60();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24A4ABB40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24A4AB8B0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_24A3C9CEC(&qword_27EF404A0, &qword_24A4BA6A0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_24A3C9CEC(&qword_27EF404A0, &qword_24A4BA6A0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24A4329EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_24A4AB1B0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

void sub_24A432BC0(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  v22 = a3;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(v22 + 48) + 24 * (__clz(__rbit64(v7)) | (v10 << 6));
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v14 = *(v11 + 17);
      v15 = *(v11 + 18);
      v18[0] = *v11;
      v18[1] = v12;
      v19 = v13;
      v20 = v14;
      v21 = v15;

      v16 = (a1)(v18);
      if (v3)
      {
        break;
      }

      if (v16)
      {
        goto LABEL_12;
      }

      v7 &= v7 - 1;

      v9 = v10;
      v3 = 0;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
LABEL_12:

        return;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A432D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24A37B740(a3, v22 - v9, &qword_27EF3F0C8, &qword_24A4B4840);
  v11 = sub_24A4ABB70();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24A37EF2C(v10, &qword_27EF3F0C8, &qword_24A4B4840);
  }

  else
  {
    sub_24A4ABB60();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24A4ABB40();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24A4AB8B0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24A433010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24A37B740(a3, v22 - v9, &qword_27EF3F0C8, &qword_24A4B4840);
  v11 = sub_24A4ABB70();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24A37EF2C(v10, &qword_27EF3F0C8, &qword_24A4B4840);
  }

  else
  {
    sub_24A4ABB60();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24A4ABB40();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24A4AB8B0() + 32;

      sub_24A3C9CEC(&qword_27EF404A0, &qword_24A4BA6A0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);
  sub_24A3C9CEC(&qword_27EF404A0, &qword_24A4BA6A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double FMFBundleIdsAllowedToUseCache.getter()
{
  if (qword_27EF3EBD0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t FMFManager.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24A4333C4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  v3[5] = v2;
  swift_unknownObjectWeakAssign();
  v4 = v3[9];
  v5 = v3[10];
  v7[0] = v3[8];
  v7[1] = v4;
  v7[2] = v5;

  sub_24A3A2E74(v7);
}

void (*sub_24A4334A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24A433534;
}

void sub_24A433534(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = v4[9];
    v6 = v4[10];
    v7[0] = v4[8];
    v7[1] = v5;
    v7[2] = v6;

    sub_24A3A2E74(v7);
  }

  free(v3);
}

uint64_t sub_24A433614(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24A37B740(a1, &v10 - v5, &qword_27EF3F2D0, &qword_24A4B4F50);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  sub_24A43D840(v6, v7 + v8);
  swift_endAccess();
  sub_24A433700();
  return sub_24A37EF2C(v6, &qword_27EF3F2D0, &qword_24A4B4F50);
}

uint64_t sub_24A433700()
{
  v1 = sub_24A4AB690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6E0();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 48);
  aBlock[4] = sub_24A441194;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88F40;
  v8 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v12 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_24A4339B4(uint64_t a1)
{
  v2 = type metadata accessor for FMFFriend(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v30 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24A3C9CEC(&qword_27EF404A8, &qword_24A4BA6C0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v9 - 8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v31 = (&v30 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = *(a1 + 128);
  v17 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend;
  swift_beginAccess();
  sub_24A37B740(v16 + v17, v15, &qword_27EF3F2D0, &qword_24A4B4F50);
  v18 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  v19 = *(v6 + 56);
  sub_24A37B740(v15, v8, &qword_27EF3F2D0, &qword_24A4B4F50);
  v20 = a1;
  sub_24A37B740(a1 + v18, &v8[v19], &qword_27EF3F2D0, &qword_24A4B4F50);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_24A37EF2C(v15, &qword_27EF3F2D0, &qword_24A4B4F50);
    if (v21(&v8[v19], 1, v2) == 1)
    {
      return sub_24A37EF2C(v8, &qword_27EF3F2D0, &qword_24A4B4F50);
    }

    goto LABEL_6;
  }

  v23 = v31;
  sub_24A37B740(v8, v31, &qword_27EF3F2D0, &qword_24A4B4F50);
  if (v21(&v8[v19], 1, v2) == 1)
  {
    sub_24A37EF2C(v15, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A39A758(v23, type metadata accessor for FMFFriend);
LABEL_6:
    sub_24A37EF2C(v8, &qword_27EF404A8, &qword_24A4BA6C0);
LABEL_7:
    v24 = *(v20 + 128);
    v25 = v20 + v18;
    v26 = v32;
    sub_24A37B740(v25, v32, &qword_27EF3F2D0, &qword_24A4B4F50);
    v27 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend;
    swift_beginAccess();

    sub_24A43F22C(v26, v24 + v27);
    swift_endAccess();

    sub_24A3AE1EC(0.0);
  }

  v28 = v30;
  sub_24A3997D4(&v8[v19], v30, type metadata accessor for FMFFriend);
  v29 = _s7FMFCore9FMFFriendV2eeoiySbAC_ACtFZ_0(v23, v28);
  sub_24A39A758(v28, type metadata accessor for FMFFriend);
  sub_24A37EF2C(v15, &qword_27EF3F2D0, &qword_24A4B4F50);
  sub_24A39A758(v23, type metadata accessor for FMFFriend);
  result = sub_24A37EF2C(v8, &qword_27EF3F2D0, &qword_24A4B4F50);
  if ((v29 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24A433E10@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  return sub_24A37B740(v1 + v3, a1, &qword_27EF3F2D0, &qword_24A4B4F50);
}

uint64_t sub_24A433E78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  sub_24A43D840(a1, v1 + v3);
  swift_endAccess();
  sub_24A433700();
  return sub_24A37EF2C(a1, &qword_27EF3F2D0, &qword_24A4B4F50);
}

uint64_t (*sub_24A433EF4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24A433F58;
}

uint64_t sub_24A433F58(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24A433700();
  }

  return result;
}

uint64_t sub_24A433FCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 184);
  if (v4)
  {
    v5 = *a1;
    swift_beginAccess();
    return sub_24A37B740(v4 + v5, a2, &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    v7 = type metadata accessor for FMFLocation(0);
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_24A434098()
{

  sub_24A3C9CEC(&qword_27EF3FDB0, &qword_24A4BA250);
  sub_24A4ABD70();
}

uint64_t sub_24A434128()
{

  sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A4ABD70();
}

uint64_t sub_24A4341B8()
{

  sub_24A3C9CEC(&qword_27EF3FDC8, &qword_24A4B8A28);
  sub_24A4ABD70();
}

uint64_t FMFManager.__allocating_init(configuration:tabInfo:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  FMFManager.init(configuration:tabInfo:)(a1, a2);
  return v4;
}

uint64_t FMFManager.deinit()
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
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v21);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFManager<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  sub_24A3C8470(v1 + 32);

  sub_24A37EEE0((v1 + 136));

  sub_24A37EF2C(v1 + OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend, &qword_27EF3F2D0, &qword_24A4B4F50);
  return v1;
}

uint64_t FMFManager.__deallocating_deinit()
{
  FMFManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A434610()
{
  v1[0] = MEMORY[0x277D84F90];
  v1[1] = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  sub_24A3A2E74(v1);
  return swift_bridgeObjectRelease_n();
}

void sub_24A434658()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 225) & 1) == 0)
  {
    v19 = v9;
    v20 = v4;
    if (qword_27EF3EBF8 != -1)
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
      _os_log_impl(&dword_24A376000, v13, v14, "FMFManager: start refreshing", v15, 2u);
      MEMORY[0x24C219130](v15, -1, -1);
    }

    *(v1 + 224) = 1;
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = v2;
    aBlock[4] = sub_24A43EBA0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D88808;
    v17 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v21 = MEMORY[0x277D84F90];
    sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v11, v6, v17);
    _Block_release(v17);
    (*(v20 + 8))(v6, v3);
    (*(v8 + 8))(v11, v19);
  }
}

uint64_t sub_24A434A14(void *a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v8 - v3;
  if (sub_24A3A290C())
  {
    v5 = sub_24A4ABB70();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = a1;

    sub_24A433010(0, 0, v4, &unk_24A4BA698, v6);
  }

  else if (a1[25])
  {

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();

    sub_24A469BEC(v8[1]);
  }

  sub_24A44CB28();

  sub_24A3D18E8();
}

uint64_t sub_24A434BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  return MEMORY[0x2822009F8](sub_24A3C0000, 0, 0);
}

uint64_t sub_24A434C0C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24A434D5C;
  }

  else
  {

    v2 = sub_24A434D30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A434D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A434DC8()
{
  swift_beginAccess();
  sub_24A39997C(v0 + 136, v4);
  v1 = v5;
  v2 = v6;
  sub_24A37EACC(v4, v5);
  (*(v2 + 56))(v1, v2);
  return sub_24A37EEE0(v4);
}

void sub_24A434E4C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 225) & 1) == 0)
  {
    v19 = v9;
    v20 = v4;
    if (qword_27EF3EBF8 != -1)
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
      _os_log_impl(&dword_24A376000, v13, v14, "FMFManager: stop refreshing", v15, 2u);
      MEMORY[0x24C219130](v15, -1, -1);
    }

    *(v1 + 224) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = v2;
    aBlock[4] = sub_24A43EBA8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D88858;
    v17 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v21 = MEMORY[0x277D84F90];
    sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v11, v6, v17);
    _Block_release(v17);
    (*(v20 + 8))(v6, v3);
    (*(v8 + 8))(v11, v19);
  }
}

uint64_t sub_24A435204(void *a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;

  sub_24A3D1B70();

  sub_24A44E38C();

  sub_24A44E598();

  result = sub_24A3A290C();
  if (result)
  {
    v6 = sub_24A4ABB70();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = a1;

    sub_24A432D64(0, 0, v4, &unk_24A4BA680, v7);
  }

  else if (a1[25])
  {

    sub_24A46A014();
  }

  return result;
}

uint64_t sub_24A4353A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v4[24] = *(type metadata accessor for LiveRelabilityStats(0) - 8);
  v4[25] = swift_task_alloc();
  v4[26] = *(type metadata accessor for ShallowRelabilityStats(0) - 8);
  v4[27] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v4[28] = swift_task_alloc();
  v5 = sub_24A4AAAD0();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A435554, 0, 0);
}

uint64_t sub_24A435554()
{
  v1 = *(v0[23] + 208);
  v0[33] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24A435640, v1, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_24A435640()
{
  sub_24A425294();

  return MEMORY[0x2822009F8](sub_24A4356B0, 0, 0);
}

uint64_t sub_24A4356B0()
{
  v1 = *(v0[23] + 208);
  v0[34] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24A43579C, v1, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_24A43579C()
{
  v1 = *(v0 + 272);
  swift_beginAccess();
  *(v0 + 280) = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24A435828, 0, 0);
}

uint64_t sub_24A435828()
{
  v1 = *(v0[23] + 208);
  v0[36] = v1;
  if (v1)
  {
    v2 = sub_24A43597C;
LABEL_5:
    v6 = v2;

    return MEMORY[0x2822009F8](v6, v1, 0);
  }

  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];

  (*(v4 + 56))(v5, 1, 1, v3);
  sub_24A37EF2C(v0[28], &qword_27EF3F460, &unk_24A4B53B0);
  v1 = *(v0[23] + 208);
  v0[37] = v1;
  if (v1)
  {
    v2 = sub_24A435E0C;
    goto LABEL_5;
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_24A43597C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);
  v3 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
  swift_beginAccess();
  sub_24A37B740(v1 + v3, v2, &qword_27EF3F460, &unk_24A4B53B0);

  return MEMORY[0x2822009F8](sub_24A435A30, 0, 0);
}

uint64_t sub_24A435A30()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = v0[35];
  if (v4 != 1)
  {
    v6 = v0[31];
    v7 = v0[27];
    v35 = v0[26];
    (*(v1 + 32))(v0[32], v3, v2);
    sub_24A4AAAC0();
    sub_24A4AAA50();
    v9 = v8;
    v34 = *(v1 + 8);
    v10 = v34(v6, v2);
    v13 = 0;
    v36 = v5;
    v14 = v5 + 64;
    v15 = -1;
    v16 = -1 << *(v5 + 32);
    if (-v16 < 64)
    {
      v15 = ~(-1 << -v16);
    }

    v17 = v15 & *(v5 + 64);
    v18 = (63 - v16) >> 6;
    while (v17)
    {
      v19 = v13;
LABEL_11:
      v20 = v0[27];
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      sub_24A399284(*(v36 + 56) + *(v35 + 72) * (v21 | (v19 << 6)), v20, type metadata accessor for ShallowRelabilityStats);
      v22 = *v20;
      v23 = *(v7 + 8);
      v24 = *(v7 + 16);
      v25 = *(v7 + 24);
      sub_24A39A758(v20, type metadata accessor for ShallowRelabilityStats);
      v26 = sub_24A4AB820();
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      *(v27 + 24) = v23;
      *(v27 + 25) = *(v0 + 84);
      *(v27 + 28) = *(v0 + 339);
      *(v27 + 32) = v24;
      *(v27 + 40) = v25;
      *(v27 + 48) = v9;
      v0[12] = sub_24A411334;
      v0[13] = v27;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_24A41133C;
      v0[11] = &unk_285D88EA0;
      v28 = _Block_copy(v0 + 8);

      AnalyticsSendEventLazy();
      _Block_release(v28);
    }

    while (1)
    {
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v19 >= v18)
      {
        v29 = v0[32];
        v30 = v0[29];

        v34(v29, v30);
        goto LABEL_14;
      }

      v17 = *(v14 + 8 * v19);
      ++v13;
      if (v17)
      {
        v13 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  sub_24A37EF2C(v0[28], &qword_27EF3F460, &unk_24A4B53B0);
LABEL_14:
  v31 = *(v0[23] + 208);
  v0[37] = v31;
  if (v31)
  {

    v10 = sub_24A435E0C;
    v11 = v31;
    v12 = 0;

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_24A435E0C()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  *(v0 + 304) = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_24A435E98, 0, 0);
}

void sub_24A435E98()
{
  v1 = 0;
  v2 = v0[38];
  v19 = v0[24];
  v20 = v0[25];
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;
  if (v5)
  {
    while (1)
    {
      v7 = v1;
LABEL_9:
      v8 = v0[25];
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      sub_24A399284(*(v2 + 56) + *(v19 + 72) * (v9 | (v7 << 6)), v8, type metadata accessor for LiveRelabilityStats);
      v10 = *v8;
      v11 = *(v20 + 8);
      sub_24A39A758(v8, type metadata accessor for LiveRelabilityStats);
      v12 = sub_24A4AB820();
      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *(v13 + 24) = v11;
      v0[6] = sub_24A411714;
      v0[7] = v13;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_24A41133C;
      v0[5] = &unk_285D88E50;
      v14 = _Block_copy(v0 + 2);

      AnalyticsSendEventLazy();
      _Block_release(v14);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  v15 = v0[23];

  v16 = *(v15 + 208);
  v0[39] = v16;
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[40] = v17;
    *v17 = v0;
    v17[1] = sub_24A436198;

    sub_24A3F7458();
  }

  else
  {

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_24A436198()
{
  v2 = *v1;
  *(v2 + 328) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A436314, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24A436314()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24A4363BC()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4AB6E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 225) & 1) == 0)
  {
    v17 = v8;
    v18 = v3;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A4AB630();
    sub_24A378E18(v11, qword_27EF4E260);
    v12 = sub_24A4AB600();
    v13 = sub_24A4ABCE0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24A376000, v12, v13, "FMFManager: forced refresh", v14, 2u);
      MEMORY[0x24C219130](v14, -1, -1);
    }

    aBlock[4] = sub_24A43EBB0;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D88880;
    v15 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v19 = MEMORY[0x277D84F90];
    sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v10, v5, v15);
    _Block_release(v15);
    (*(v18 + 8))(v5, v2);
    (*(v7 + 8))(v10, v17);
  }
}

uint64_t sub_24A436730(uint64_t a1)
{

  sub_24A3AE1EC(0.0);
}

uint64_t sub_24A436774(uint64_t a1, void *a2)
{
  v86 = a2;
  v3 = type metadata accessor for FMFFriend(0);
  MEMORY[0x28223BE20](v3);
  v87 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v81 - v6;
  MEMORY[0x28223BE20](v8);
  v11 = &v81 - v10;
  v12 = *(a1 + 16);
  v84 = a1;
  v81 = v9;
  v82 = v12;
  if (v12)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = *(v9 + 72);
    v15 = a1 + v13;
    v16 = MEMORY[0x277D84F90];
    v85 = v13;
    do
    {
      sub_24A399284(v15, v11, type metadata accessor for FMFFriend);
      v17 = v11[*(v3 + 44)];
      if (v17 == 2 || (v17 & 1) == 0)
      {
        sub_24A39A758(v11, type metadata accessor for FMFFriend);
      }

      else
      {
        sub_24A3997D4(v11, v7, type metadata accessor for FMFFriend);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A39E574(0, *(v16 + 16) + 1, 1);
          v13 = v85;
          v16 = v88;
        }

        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_24A39E574((v19 > 1), v20 + 1, 1);
          v13 = v85;
          v16 = v88;
        }

        *(v16 + 16) = v20 + 1;
        sub_24A3997D4(v7, v16 + v13 + v20 * v14, type metadata accessor for FMFFriend);
      }

      v15 += v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v22 = v83;
  v21 = v84;
  v23 = v86;
  if (v86)
  {
    v24 = v86;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v25 = sub_24A4AB630();
    sub_24A378E18(v25, qword_27EF4E260);
    v26 = v23;

    v27 = sub_24A4AB600();
    v28 = sub_24A4ABCE0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v88 = v30;
      *v29 = 134218498;
      *(v29 + 4) = *(v16 + 16);

      *(v29 + 12) = 2048;
      *(v29 + 14) = v82;

      *(v29 + 22) = 2080;
      swift_getErrorValue();
      v31 = sub_24A4AC310();
      v33 = sub_24A37BD58(v31, v32, &v88);

      *(v29 + 24) = v33;
      _os_log_impl(&dword_24A376000, v27, v28, "FMFManager: received cached %ld proactive friends (out of %ld) (error=%s)", v29, 0x20u);
      sub_24A37EEE0(v30);
      MEMORY[0x24C219130](v30, -1, -1);
      MEMORY[0x24C219130](v29, -1, -1);
    }

    else
    {
    }
  }

  v34 = *(v22 + 56);
  v35 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers;
  v36 = *(v34 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers);
  if (!v36 || (v37 = *(v36 + 16)) == 0)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v51 = sub_24A4AB630();
    sub_24A378E18(v51, qword_27EF4E260);

    v52 = sub_24A4AB600();
    v53 = sub_24A4ABCE0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134218240;
      *(v54 + 4) = *(v16 + 16);

      *(v54 + 12) = 2048;
      *(v54 + 14) = v82;

      _os_log_impl(&dword_24A376000, v52, v53, "FMFManager: received %ld proactive friends (out of %ld)", v54, 0x16u);
      MEMORY[0x24C219130](v54, -1, -1);

      v55 = *(v34 + v35);
      if (!v55)
      {
      }
    }

    else
    {

      v55 = *(v34 + v35);
      if (!v55)
      {
      }
    }

    v56 = *(v55 + 32);
    if (v56)
    {
      v57 = *(v55 + 40);

      v56(v22, v21, v16, v16, v86);
      sub_24A3C84A8(v56, v57);
    }
  }

  v38 = *(v36 + 24);

  v85 = v38;
  v39 = v37(v22, v21, v16);
  v40 = v39;
  if (v86 || (v41 = *(v39 + 16)) == 0)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v59 = sub_24A4AB630();
    sub_24A378E18(v59, qword_27EF4E260);

    v60 = sub_24A4AB600();
    v61 = sub_24A4ABCE0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      v63 = *(v16 + 16);

      *(v62 + 4) = v63;

      _os_log_impl(&dword_24A376000, v60, v61, "FMFManager: received %ld proactive friends but no proactive location asked", v62, 0xCu);
      MEMORY[0x24C219130](v62, -1, -1);
    }

    else
    {
    }

    v73 = *(v34 + v35);
    v74 = v84;
    if (v73)
    {
      v75 = *(v73 + 32);
      if (v75)
      {
        v76 = *(v73 + 40);

        v75(v22, v74, v40, v40, v86);
        sub_24A3C84A8(v37, v85);
        v77 = v75;
        v78 = v76;
LABEL_55:
        sub_24A3C84A8(v77, v78);
      }
    }

LABEL_54:
    v77 = v37;
    v78 = v85;
    goto LABEL_55;
  }

  v42 = v40 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
  v43 = *(v81 + 72);
  v44 = MEMORY[0x277D84F90];
  do
  {
    v45 = v87;
    sub_24A399284(v42, v87, type metadata accessor for FMFFriend);
    v47 = *v45;
    v46 = v45[1];

    sub_24A39A758(v45, type metadata accessor for FMFFriend);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_24A3ED900(0, *(v44 + 2) + 1, 1, v44);
    }

    v49 = *(v44 + 2);
    v48 = *(v44 + 3);
    if (v49 >= v48 >> 1)
    {
      v44 = sub_24A3ED900((v48 > 1), v49 + 1, 1, v44);
    }

    *(v44 + 2) = v49 + 1;
    v50 = &v44[16 * v49];
    *(v50 + 4) = v47;
    *(v50 + 5) = v46;
    v42 += v43;
    --v41;
  }

  while (v41);
  v88 = v44;
  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  sub_24A378704(&qword_27EF40498, &qword_27EF3F108, &qword_24A4B4950, MEMORY[0x277D83958]);
  v64 = sub_24A4AB800();
  v66 = v65;

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v67 = sub_24A4AB630();
  sub_24A378E18(v67, qword_27EF4E260);

  v68 = sub_24A4AB600();
  v69 = sub_24A4ABCE0();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v88 = v71;
    *v70 = 134218498;
    *(v70 + 4) = v82;

    *(v70 + 12) = 2048;
    *(v70 + 14) = *(v40 + 16);

    *(v70 + 22) = 2080;
    v72 = sub_24A37BD58(v64, v66, &v88);

    *(v70 + 24) = v72;
    _os_log_impl(&dword_24A376000, v68, v69, "FMFManager: received %ld friends incl. %ld proactive locations asked for %s…", v70, 0x20u);
    sub_24A37EEE0(v71);
    MEMORY[0x24C219130](v71, -1, -1);
    MEMORY[0x24C219130](v70, -1, -1);
  }

  else
  {
  }

  v79 = v83;
  if (!*(v83 + 192))
  {
    goto LABEL_54;
  }

  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = v84;
  v80[4] = v40;

  sub_24A417628(v40, sub_24A44100C, v80);
  sub_24A3C84A8(v37, v85);
}

void sub_24A4371F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v35 = a2;
  v5 = type metadata accessor for FMFFriend(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  v34 = v9;
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    v12 = MEMORY[0x277D84F90];
    do
    {
      sub_24A399284(v10, v8, type metadata accessor for FMFFriend);
      v13 = *v8;
      v14 = v8[1];

      sub_24A39A758(v8, type metadata accessor for FMFFriend);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24A3ED900(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_24A3ED900((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[16 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v14;
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v36 = v12;
  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  sub_24A378704(&qword_27EF40498, &qword_27EF3F108, &qword_24A4B4950, MEMORY[0x277D83958]);
  v18 = sub_24A4AB800();
  v20 = v19;

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v21 = sub_24A4AB630();
  sub_24A378E18(v21, qword_27EF4E260);

  v22 = sub_24A4AB600();
  v23 = sub_24A4ABCE0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 134218242;
    *(v24 + 4) = v34;

    *(v24 + 12) = 2080;
    v26 = sub_24A37BD58(v18, v20, &v36);

    *(v24 + 14) = v26;
    _os_log_impl(&dword_24A376000, v22, v23, "FMFManager: fetched proactive %ld locations for %s", v24, 0x16u);
    sub_24A37EEE0(v25);
    MEMORY[0x24C219130](v25, -1, -1);
    MEMORY[0x24C219130](v24, -1, -1);
  }

  else
  {
  }

  v27 = v35;
  v28 = *(*(v35 + 56) + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers);
  if (v28)
  {
    v29 = *(v28 + 32);
    if (v29)
    {
      v30 = *(v28 + 40);

      v29(v27, v32, v33, a1, 0);
      sub_24A3C84A8(v29, v30);
    }
  }
}

uint64_t sub_24A4375B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v7 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v37 - v8;
  v9 = type metadata accessor for FMFFriend(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);
  sub_24A399284(a1, v15, type metadata accessor for FMFFriend);
  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = a1;
    v39 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = a3;
    v22 = v21;
    v42 = v21;
    *v20 = 136315138;
    v23 = FMFFriend.debugDescription.getter();
    v24 = v10;
    v26 = v25;
    sub_24A39A758(v15, type metadata accessor for FMFFriend);
    v27 = sub_24A37BD58(v23, v26, &v42);
    v10 = v24;
    v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_24A376000, v17, v18, "FMFManager: startLiveLocation %s", v20, 0xCu);
    sub_24A37EEE0(v22);
    v28 = v22;
    a3 = v37;
    MEMORY[0x24C219130](v28, -1, -1);
    v29 = v20;
    a1 = v38;
    v4 = v39;
    MEMORY[0x24C219130](v29, -1, -1);

    result = sub_24A3A290C();
    if ((result & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v33 = sub_24A4ABB70();
    v34 = v41;
    (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
    sub_24A399284(a1, v12, type metadata accessor for FMFFriend);
    v35 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v4;
    sub_24A3997D4(v12, v36 + v35, type metadata accessor for FMFFriend);

    sub_24A432D64(0, 0, v34, &unk_24A4BA280, v36);
  }

  sub_24A39A758(v15, type metadata accessor for FMFFriend);
  result = sub_24A3A290C();
  if (result)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(v4 + 200))
  {
    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24A4B4E10;
    sub_24A399284(a1, v32 + v31, type metadata accessor for FMFFriend);

    sub_24A466B38(v32, 1, v40, a3);
  }

  return result;
}

uint64_t sub_24A437A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24A4AAD40();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A437ACC, 0, 0);
}

uint64_t sub_24A437ACC()
{
  v1 = *(*(v0 + 16) + 208);
  *(v0 + 56) = v1;
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v6 = *(*(type metadata accessor for FMFFriend(0) - 8) + 80);
    *(v0 + 88) = v6;
    v7 = (v6 + 32) & ~v6;
    v8 = swift_allocObject();
    *(v0 + 64) = v8;
    *(v8 + 16) = xmmword_24A4B4E10;
    sub_24A399284(v5, v8 + v7, type metadata accessor for FMFFriend);
    (*(v4 + 104))(v2, *MEMORY[0x277D08FD8], v3);

    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_24A437CC0;
    v10 = *(v0 + 48);

    return sub_24A3FD324(v8, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_24A437CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = (*(v2 + 88) + 32) & ~*(v2 + 88);
  v8 = *v1;
  *(v2 + 80) = v0;

  (*(v5 + 8))(v4, v6);
  swift_setDeallocating();
  sub_24A39A758(v3 + v7, type metadata accessor for FMFFriend);
  swift_deallocClassInstance();

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A44122C, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_24A437EF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for FMFFriend(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A4AB630();
  sub_24A378E18(v14, qword_27EF4E260);
  sub_24A399284(a1, v13, type metadata accessor for FMFFriend);
  v15 = sub_24A4AB600();
  v16 = sub_24A4ABCE0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v1;
    v37 = v6;
    v20 = a1;
    v21 = v19;
    v38 = v19;
    *v18 = 136315138;
    v22 = FMFFriend.debugDescription.getter();
    v23 = v8;
    v25 = v24;
    sub_24A39A758(v13, type metadata accessor for FMFFriend);
    v26 = sub_24A37BD58(v22, v25, &v38);
    v8 = v23;

    *(v18 + 4) = v26;
    _os_log_impl(&dword_24A376000, v15, v16, "FMFManager: stopLiveLocation %s", v18, 0xCu);
    sub_24A37EEE0(v21);
    v27 = v21;
    a1 = v20;
    v2 = v36;
    v6 = v37;
    MEMORY[0x24C219130](v27, -1, -1);
    v28 = v18;
    v10 = v35;
    MEMORY[0x24C219130](v28, -1, -1);

    result = sub_24A3A290C();
    if ((result & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v32 = sub_24A4ABB70();
    (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
    sub_24A399284(a1, v10, type metadata accessor for FMFFriend);
    v33 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v2;
    sub_24A3997D4(v10, v34 + v33, type metadata accessor for FMFFriend);

    sub_24A432D64(0, 0, v6, &unk_24A4BA290, v34);
  }

  sub_24A39A758(v13, type metadata accessor for FMFFriend);
  result = sub_24A3A290C();
  if (result)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(v2 + 200))
  {
    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_24A4B4E10;
    sub_24A399284(a1, v31 + v30, type metadata accessor for FMFFriend);

    sub_24A468780(v31, 1);
  }

  return result;
}

uint64_t sub_24A438334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24A4AAD40();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A4383F4, 0, 0);
}

uint64_t sub_24A4383F4()
{
  v1 = *(*(v0 + 16) + 208);
  *(v0 + 56) = v1;
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v6 = *(*(type metadata accessor for FMFFriend(0) - 8) + 80);
    *(v0 + 88) = v6;
    v7 = (v6 + 32) & ~v6;
    v8 = swift_allocObject();
    *(v0 + 64) = v8;
    *(v8 + 16) = xmmword_24A4B4E10;
    sub_24A399284(v5, v8 + v7, type metadata accessor for FMFFriend);
    (*(v4 + 104))(v2, *MEMORY[0x277D08FD8], v3);

    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_24A4385E8;
    v10 = *(v0 + 48);

    return sub_24A3FDE90(v8, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_24A4385E8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = (*(v2 + 88) + 32) & ~*(v2 + 88);
  v8 = *v1;
  *(v2 + 80) = v0;

  (*(v5 + 8))(v4, v6);
  swift_setDeallocating();
  sub_24A39A758(v3 + v7, type metadata accessor for FMFFriend);
  swift_deallocClassInstance();

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A438820, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_24A438820()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24A438884()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = v1;
    sub_24A45AD08();
  }
}

uint64_t sub_24A4388E4(char *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = (*(*a1 + 120))();
    v15 = sub_24A37BD58(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24A376000, v9, v10, "FMFManager: perform action %s", v11, 0xCu);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  v16 = *(v3 + 176);

  sub_24A493E50(a1, v16, a1, v4, a2, a3);
}

uint64_t sub_24A438AE0(char *a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v10 = *a1;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v35 = v10;
  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);
  v12 = a2;
  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCE0();

  if (os_log_type_enabled(v13, v14))
  {
    v34 = a6;
    v15 = swift_slowAlloc();
    v33 = a5;
    v16 = swift_slowAlloc();
    v36 = a2;
    v37[0] = v16;
    *v15 = 136315394;
    sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
    v17 = sub_24A4ABDE0();
    v19 = sub_24A37BD58(v17, v18, v37);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = qword_24A4BA6E0[v10];
    _os_log_impl(&dword_24A376000, v13, v14, "FMFManager: performed action with error?: %s status?: %ld", v15, 0x16u);
    sub_24A37EEE0(v16);
    v20 = v16;
    a5 = v33;
    MEMORY[0x24C219130](v20, -1, -1);
    v21 = v15;
    a6 = v34;
    MEMORY[0x24C219130](v21, -1, -1);
  }

  swift_beginAccess();
  if (a3[16] == 1)
  {

    v22 = sub_24A4AB600();
    v23 = sub_24A4ABCE0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136315138;
      v26 = (*(*a3 + 120))();
      v28 = a5;
      v29 = sub_24A37BD58(v26, v27, &v36);

      *(v24 + 4) = v29;
      a5 = v28;
      _os_log_impl(&dword_24A376000, v22, v23, "FMFManager: refreshing because action requires it %s", v24, 0xCu);
      sub_24A37EEE0(v25);
      MEMORY[0x24C219130](v25, -1, -1);
      MEMORY[0x24C219130](v24, -1, -1);
    }

    v30 = swift_allocObject();
    *(v30 + 16) = a3;
    *(v30 + 24) = a5;
    *(v30 + 32) = a6;
    *(v30 + 40) = v35;
    *(v30 + 48) = a2;
    v31 = a2;

    sub_24A3D1F38(sub_24A441018, v30);
  }

  else
  {
    LOBYTE(v36) = v10;
    return (a5)(&v36, a2);
  }
}

uint64_t sub_24A438E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t), uint64_t a4, char a5, uint64_t a6)
{
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
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    v15 = (*(*a2 + 120))(v14);
    v17 = sub_24A37BD58(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_24A376000, v11, v12, "FMFManager: completing action after refresh %s", v13, 0xCu);
    sub_24A37EEE0(v14);
    MEMORY[0x24C219130](v14, -1, -1);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v20 = a5;
  return a3(&v20, a6);
}

uint64_t sub_24A43900C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a1;
  v7 = sub_24A4AA9D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);

  v12 = sub_24A4AB600();
  v13 = sub_24A4ABCE0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v34 = a3;
    v17 = v16;
    v37[0] = v16;
    *v15 = 136315394;
    v36 = *v4;
    sub_24A3C9CEC(&qword_27EF40410, &qword_24A4BA298);
    v18 = sub_24A4AB870();
    v20 = sub_24A37BD58(v18, v19, v37);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_24A37BD58(0xD00000000000001ELL, 0x800000024A4B1AB0, v37);
    _os_log_impl(&dword_24A376000, v12, v13, "%s: %s", v15, 0x16u);
    swift_arrayDestroy();
    v21 = v17;
    a3 = v34;
    MEMORY[0x24C219130](v21, -1, -1);
    v22 = v15;
    a2 = v33;
    MEMORY[0x24C219130](v22, -1, -1);
  }

  v23 = *(v8 + 16);
  v23(v10, v35, v7);
  type metadata accessor for FMFGetURLInfoRequest(0);
  v24 = swift_allocObject();
  v23((v24 + qword_27EF4E180), v10, v7);
  v25 = sub_24A3A45B8(0x466F666E49746567, 0xED00006C7255726FLL);
  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  sub_24A39997C((v4 + 17), v37);
  v26 = v38;
  v27 = v39;
  sub_24A37EACC(v37, v38);
  v28 = swift_allocObject();
  v28[2] = v4;
  v28[3] = a2;
  v28[4] = a3;
  v29 = *(v27 + 64);
  v30 = type metadata accessor for FMFBaseResponse(0);

  v29(v25, sub_24A43F144, v28, v30, v26, v27);

  return sub_24A37EEE0(v37);
}

uint64_t sub_24A4393E0(uint64_t a1, void *a2, void **a3, uint64_t (*a4)(void, void *))
{
  if (a2)
  {
    v5 = a2;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v6 = sub_24A4AB630();
    sub_24A378E18(v6, qword_27EF4E260);

    v7 = v5;
    v8 = sub_24A4AB600();
    v9 = sub_24A4ABCE0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315394;
      v27 = v11;
      sub_24A3C9CEC(&qword_27EF40410, &qword_24A4BA298);
      v12 = sub_24A4AB870();
      v14 = sub_24A37BD58(v12, v13, &v27);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v15 = sub_24A4ABDE0();
      v17 = sub_24A37BD58(v15, v16, &v27);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_24A376000, v8, v9, "%s: error when getting info for URL: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v11, -1, -1);
      MEMORY[0x24C219130](v10, -1, -1);
    }
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v18 = sub_24A4AB630();
    sub_24A378E18(v18, qword_27EF4E260);

    v19 = sub_24A4AB600();
    v20 = sub_24A4ABCB0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 136315138;
      v27 = v22;
      sub_24A3C9CEC(&qword_27EF40410, &qword_24A4BA298);
      v23 = sub_24A4AB870();
      v25 = sub_24A37BD58(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_24A376000, v19, v20, "%s: Got info for url.", v21, 0xCu);
      sub_24A37EEE0(v22);
      MEMORY[0x24C219130](v22, -1, -1);
      MEMORY[0x24C219130](v21, -1, -1);
    }

    v5 = 0;
  }

  return a4(0, v5);
}

uint64_t sub_24A439760(uint64_t a1, unint64_t a2, char a3)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24A37BD58(a1, a2, &v12);
    *(v9 + 12) = 1024;
    *(v9 + 14) = a3 & 1;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFManager: appendLiveSessionInformation, friendId: %s, successfulLive: %{BOOL}d", v9, 0x12u);
    sub_24A37EEE0(v10);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  sub_24A3D2F50(a1, a2, a3 & 1);
}

uint64_t sub_24A4398F8(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x24C217E90](a1, MEMORY[0x277D837D0]);
    v13 = sub_24A37BD58(v11, v12, v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a2 & 1;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFManager: appendLegacyFallbackData, friendId: %s, didFallback: %{BOOL}d", v9, 0x12u);
    sub_24A37EEE0(v10);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  sub_24A3D33F4(a1, a2 & 1);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v15 + 136))(v3, a1, a2 & 1, ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A439AF8()
{

  sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  sub_24A4ABD70();
}

uint64_t static FMFManager.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270();
  }
}

uint64_t sub_24A439BB8(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270();
  }
}

uint64_t sub_24A439BE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a1, a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A439C74(void *a1)
{
  v2 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = 1;
  sub_24A3A3944(v3);
  v4 = a1[23];
  if (v4)
  {
    v5 = v4;
    sub_24A45AC08();
  }

  if (*(a1[7] + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) == 1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v6 = sub_24A4AB630();
    sub_24A378E18(v6, qword_27EF4E260);
    v7 = sub_24A4AB600();
    v8 = sub_24A4ABCE0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24A376000, v7, v8, "FMFManager: ingesting friends from fmfd", v9, 2u);
      MEMORY[0x24C219130](v9, -1, -1);
    }

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();

    FMFManager.didReceive(friends:fromServer:)(friends, 1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = a1[5];
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(a1, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall FMFManager.didReceive(preferences:)(FMFCore::FMFPreferences_optional *preferences)
{
  object = preferences->value.primaryEmail._object;
  if (object)
  {
    rawValue = preferences->value.favorites.value._rawValue;
    v5 = *&preferences->value.allowFriendRequests;
    countAndFlagsBits = preferences->value.primaryEmail._countAndFlagsBits;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v8 = v5 & 0x101;
      v9 = BYTE2(v5) & 1;
      v10 = BYTE3(v5);
      v11 = countAndFlagsBits;
      v12 = object;
      v13 = rawValue;
      (*(v6 + 64))(v1, &v8, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall FMFManager.didReceive(myInfo:)(FMFCore::FMFMyInfo_optional *myInfo)
{
  p_firstName = &myInfo->value.firstName;
  rawValue = myInfo->value.emails._rawValue;
  if (myInfo->value.emails._rawValue)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v7 = rawValue;
      v6 = p_firstName[1];
      v8 = *p_firstName;
      v9 = v6;
      v10 = p_firstName[2];
      countAndFlagsBits = p_firstName[3]._countAndFlagsBits;
      (*(v4 + 72))(v1, &v7, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall FMFManager.didReceive(devices:fromServer:)(Swift::OpaquePointer_optional devices, Swift::Bool fromServer)
{
  if (devices.value._rawValue)
  {
    is_nil = devices.is_nil;
    rawValue = devices.value._rawValue;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 80))(v2, rawValue, is_nil, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24A43A0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24A4AAD40();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A43A168, 0, 0);
}

uint64_t sub_24A43A168()
{
  v1 = *(*(v0 + 16) + 208);
  *(v0 + 56) = v1;
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v6 = *(*(type metadata accessor for FMFFriend(0) - 8) + 80);
    *(v0 + 88) = v6;
    v7 = (v6 + 32) & ~v6;
    v8 = swift_allocObject();
    *(v0 + 64) = v8;
    *(v8 + 16) = xmmword_24A4B4E10;
    sub_24A399284(v5, v8 + v7, type metadata accessor for FMFFriend);
    (*(v4 + 104))(v2, *MEMORY[0x277D08FD8], v3);

    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_24A43A35C;
    v10 = *(v0 + 48);

    return sub_24A3FCDA0(v8, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_24A43A35C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = (*(v2 + 88) + 32) & ~*(v2 + 88);
  v8 = *v1;
  *(v2 + 80) = v0;

  (*(v5 + 8))(v4, v6);
  swift_setDeallocating();
  sub_24A39A758(v3 + v7, type metadata accessor for FMFFriend);
  swift_deallocClassInstance();

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A43A594, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_24A43A594()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = v1;
  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A376000, v4, v5, "FMFManager: Error while update locating %@", v8, 0xCu);
    sub_24A37EF2C(v9, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24A43A740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24A4AAD40();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A43A800, 0, 0);
}

uint64_t sub_24A43A800()
{
  v1 = *(v0[2] + 208);
  v0[7] = v1;
  if (v1)
  {
    (*(v0[5] + 104))(v0[6], *MEMORY[0x277D08FE0], v0[4]);

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_24A43A90C;
    v3 = v0[6];
    v4 = v0[3];

    return sub_24A3FCDA0(v4, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24A43A90C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A43AAE4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24A43AAE4()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall FMFManager.didReceive(locationAlerts:)(Swift::OpaquePointer locationAlerts)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(v1, locationAlerts._rawValue, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall FMFManager.didReceive(locations:)(Swift::OpaquePointer locations)
{

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v3 + 48))(v1, locations._rawValue, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  sub_24A3B9900(locations._rawValue, v5, 0x6465747365676E69, 0xE800000000000000);
}

Swift::Void __swiftcall FMFManager.didReceive(labelledLocations:)(Swift::OpaquePointer_optional labelledLocations)
{
  v2 = v1;
  if (labelledLocations.value._rawValue)
  {
    rawValue = labelledLocations.value._rawValue;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v4 + 96))(v2, rawValue, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  v6 = *(v2 + 184);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation];
    if (v7)
    {
      v8 = *&v6[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_unshiftedLocation];
      if (v8)
      {
        v9 = v6;
        v10 = v7;
        v11 = v8;
        sub_24A3C0CA0(v10, v11, 1);
      }
    }
  }
}

uint64_t *sub_24A43AE18(uint64_t *result)
{
  v2 = result[2];
  if (v2)
  {
    v3 = result[3];
    v5 = *result;
    v4 = result[1];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v8 = v5 & 0x101;
      v9 = BYTE2(v5) & 1;
      v10 = BYTE3(v5);
      v11 = v4;
      v12 = v2;
      v13 = v3;
      (*(v6 + 64))(v1, &v8, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t *sub_24A43AEE8(uint64_t *result)
{
  v2 = result + 1;
  v3 = *result;
  if (*result)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v7 = v3;
      v6 = *(v2 + 1);
      v8 = *v2;
      v9 = v6;
      v10 = *(v2 + 2);
      v11 = *(v2 + 48);
      (*(v4 + 72))(v1, &v7, ObjectType, v4);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A43AFA0(uint64_t result, char a2)
{
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 80))(v2, v4, a2 & 1, ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A43B044(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v4 + 40))(v1, a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FMFManager.didReceive(myLocation:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v4 + 88))(v1, a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A43B188(_BYTE *a1)
{
  if (*a1)
  {
    return 0;
  }

  sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A4ABD70();

  v10[0] = v7;
  v10[1] = v8;
  v11[0] = *v9;
  *(v11 + 9) = *&v9[9];
  if (v7 && (v2 = *&v11[0], , sub_24A37EF2C(v10, &qword_27EF3FD68, &unk_24A4B9F40), v2))
  {

    type metadata accessor for FMLocalize();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    type metadata accessor for FMLocalize();
    v5 = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
  }

  v6 = sub_24A4AA800();

  return v6;
}

uint64_t sub_24A43B354(_BYTE *a1)
{
  if (!*a1)
  {

    sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A4ABD70();

    v20 = v17;
    v21 = v18;
    v22[0] = v19[0];
    *(v22 + 9) = *(v19 + 9);
    if (v17 && (v3 = *(&v21 + 1), v2 = *&v22[0], , sub_24A37EF2C(&v20, &qword_27EF3FD68, &unk_24A4B9F40), v2))
    {
      type metadata accessor for FMFSavePrefsRequest(0);
      v4 = swift_allocObject();
      *(v4 + qword_27EF3F7C8) = 0;
      v5 = (v4 + qword_27EF3F7C0);
      *v5 = 0u;
      v5[1] = 0u;
      v6 = (v4 + qword_27EF3F7D0);
      *v6 = v3;
      v6[1] = v2;
      v7 = sub_24A3A45B8(0xD000000000000010, 0x800000024A4B1E00);
      swift_beginAccess();
      sub_24A39997C(v1 + 136, &v17);
      v8 = *(&v18 + 1);
      v9 = *&v19[0];
      sub_24A37EACC(&v17, *(&v18 + 1));
      v10 = *(v9 + 64);
      refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

      v10(v7, sub_24A44119C, v1, refreshed, v8, v9);

      sub_24A37EEE0(&v17);
    }

    else
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v12 = sub_24A4AB630();
      sub_24A378E18(v12, qword_27EF4E260);
      v13 = sub_24A4AB600();
      v14 = sub_24A4ABCC0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24A376000, v13, v14, "Me device id not available. SAVEME alert cannot respond with savePrefs request", v15, 2u);
        MEMORY[0x24C219130](v15, -1, -1);
      }
    }
  }

  return 1;
}

void sub_24A43B5FC(uint64_t a1, void *a2, void **a3)
{
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A4AB630();
    sub_24A378E18(v4, qword_27EF4E260);

    v5 = a2;
    oslog = sub_24A4AB600();
    v6 = sub_24A4ABCE0();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 136315394;
      v24 = v8;
      sub_24A3C9CEC(&qword_27EF40410, &qword_24A4BA298);
      v9 = sub_24A4AB870();
      v11 = sub_24A37BD58(v9, v10, &v24);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v12 = sub_24A4ABDE0();
      v14 = sub_24A37BD58(v12, v13, &v24);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_24A376000, oslog, v6, "%s: Error sending save me device - %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v8, -1, -1);
      v15 = v7;
LABEL_10:
      MEMORY[0x24C219130](v15, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A4AB630();
    sub_24A378E18(v16, qword_27EF4E260);

    oslog = sub_24A4AB600();
    v17 = sub_24A4ABCE0();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315138;
      v24 = v19;
      sub_24A3C9CEC(&qword_27EF40410, &qword_24A4BA298);
      v20 = sub_24A4AB870();
      v22 = sub_24A37BD58(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_24A376000, oslog, v17, "%s: Saved me device for SAVEME alert.", v18, 0xCu);
      sub_24A37EEE0(v19);
      MEMORY[0x24C219130](v19, -1, -1);
      v15 = v18;
      goto LABEL_10;
    }
  }
}

uint64_t sub_24A43B96C()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v44 - v3;
  v5 = *(v0 + 56);
  v6 = *(v0 + 216);
  v7 = *(v1 + 225);
  type metadata accessor for FMFDataManager();
  swift_allocObject();

  v8 = sub_24A37DB30(v5, 0, v6, v7);
  *(v1 + 88) = v8;

  v9 = *(v1 + 225);
  v10 = objc_allocWithZone(type metadata accessor for FMFGenericResponseHandler());
  v11 = sub_24A38C154(v8, v9);
  v12 = *(v1 + 120);
  *(v1 + 120) = v11;
  v13 = v11;

  v14 = *(v5 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider);
  v15 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale;
  v16 = sub_24A4AAB80();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v4, v5 + v15, v16);
  (*(v17 + 56))(v4, 0, 1, v16);

  v14(v49, v13, v4);

  sub_24A37EF2C(v4, &qword_27EF3F650, &qword_24A4B5A10);
  swift_beginAccess();
  sub_24A37EEE0((v1 + 136));
  sub_24A37B3F8(v49, v1 + 136);
  swift_endAccess();
  v18 = *(v1 + 88);
  sub_24A39997C(v1 + 136, v49);
  v19 = type metadata accessor for FMAPSConnectionHandler();
  v20 = qword_27EF3EBD8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_27EF4E1A8;
  v22 = unk_27EF4E1B0;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v24 = sub_24A3A1764(0xD000000000000017, 0x800000024A4B1A90, v21, 0, 0, v19, ObjectType, v22);
  LODWORD(v21) = *(v1 + 225);
  LODWORD(v22) = *(v5 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch);
  type metadata accessor for FMFRefreshController(0);
  swift_allocObject();
  *(v1 + 128) = sub_24A3A20A8(v18, v49, v24, v21, v22);

  sub_24A39997C(v1 + 136, v49);
  v25 = *(v1 + 88);
  v26 = *(v1 + 208);
  if (v26)
  {
    v46 = type metadata accessor for FMFSecureLocationController(0);
    v47 = &off_285D869E8;
    *&v45 = v26;
    sub_24A37B3F8(&v45, v48);
  }

  else
  {
    v27 = *(v1 + 96);
    v48[3] = sub_24A37B428(0, &qword_27EF40408, 0x277D496C0);
    v48[4] = &off_285D88B10;
    v48[0] = v27;
    v28 = v27;
  }

  v29 = *(v1 + 112);
  type metadata accessor for FMFActionsController();
  swift_allocObject();

  *(v1 + 176) = sub_24A4761EC(v49, v25, v48, v29);

  v30 = 0;
  if ((*(v5 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_enabledSubsystems) & 2) != 0)
  {
    sub_24A39997C(v1 + 136, v49);
    v31 = objc_allocWithZone(type metadata accessor for FMFMyLocationController(0));
    v30 = sub_24A39A204(v49);
  }

  v32 = *(v1 + 184);
  *(v1 + 184) = v30;

  *(*(v1 + 88) + 40) = &protocol witness table for FMFManager;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v33 = *(v1 + 160);
  v34 = *(v1 + 168);
  sub_24A3A2CE4(v1 + 136, v33);
  v35 = *(v34 + 16);
  v36 = swift_unknownObjectRetain();
  v35(v36, &off_285D88A08, v33, v34);
  v37 = *(v1 + 160);
  v38 = *(v1 + 168);
  sub_24A3A2CE4(v1 + 136, v37);
  v39 = *(v38 + 40);
  v40 = swift_unknownObjectRetain();
  v39(v40, &off_285D88A28, v37, v38);
  swift_endAccess();
  v41 = *(v1 + 120) + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  *(v41 + 8) = &protocol witness table for FMFManager;
  swift_unknownObjectWeakAssign();
  *(*(v1 + 128) + 48) = &off_285D88970;
  result = swift_unknownObjectWeakAssign();
  v43 = *(v1 + 184);
  if (v43)
  {
    *(v43 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate + 8) = &protocol witness table for FMFManager;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_24A43BEF4(void *a1)
{
  v2 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = 0;
  sub_24A3A3944(v3);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = a1[5];
    ObjectType = swift_getObjectType();
    (*(v4 + 80))(a1, MEMORY[0x277D84F90], 0, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = a1[5];
    v7 = swift_getObjectType();
    (*(v6 + 32))(a1, MEMORY[0x277D84F90], 0, v7, v6);
    swift_unknownObjectRelease();
  }

  v8 = a1[9];
  v9 = a1[10];
  v11[0] = a1[8];
  v11[1] = v8;
  v11[2] = v9;

  sub_24A3A2E74(v11);
}

uint64_t sub_24A43C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v47 = a1;
  v48 = a2;
  v7 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v39 - v8;
  v9 = sub_24A3C9CEC(&qword_27EF3FE50, &unk_24A4B8C10);
  MEMORY[0x28223BE20](v9 - 8);
  v42 = (&v39 - v10);
  v11 = type metadata accessor for FMReverseGeocodingRequest(0);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMFLocation(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = (&v39 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v41 = *(a3 + 216);
  sub_24A399284(a4, &v39 - v21, type metadata accessor for FMFLocation);
  v49 = v19;
  sub_24A399284(v22, v19, type metadata accessor for FMFLocation);
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v46;
  sub_24A3997D4(v22, v25 + v23, type metadata accessor for FMFLocation);
  *(v25 + v24) = v26;
  v27 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v29 = v47;
  v28 = v48;
  *v27 = v47;
  v27[1] = v28;
  v30 = v41;
  sub_24A399284(a4, v16, type metadata accessor for FMFLocation);
  v31 = v45;
  sub_24A37B740(v30 + qword_27EF4E178, v45, &qword_27EF3F650, &qword_24A4B5A10);

  v32 = v16;
  v33 = v42;
  sub_24A446558(v32, v31, v42);
  if ((*(v43 + 48))(v33, 1, v44) == 1)
  {
    sub_24A37EF2C(v33, &qword_27EF3FE50, &unk_24A4B8C10);
    sub_24A3BAFB0(v51);
    memcpy(v50, v51, sizeof(v50));
    v34 = v49;
    sub_24A43C484(v50, v49, v26, v29, v28);

    v35 = v34;
  }

  else
  {
    v36 = v33;
    v37 = v40;
    sub_24A3997D4(v36, v40, type metadata accessor for FMReverseGeocodingRequest);
    sub_24A4416C0(v37, sub_24A440F14, v25);

    sub_24A39A758(v37, type metadata accessor for FMReverseGeocodingRequest);
    v35 = v49;
  }

  return sub_24A39A758(v35, type metadata accessor for FMFLocation);
}

uint64_t sub_24A43C484(const void *a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v68 = a5;
  v69 = a4;
  v60 = a3;
  v67 = sub_24A3C9CEC(&qword_27EF40490, &qword_24A4BA658);
  MEMORY[0x28223BE20](v67);
  v8 = &v57 - v7;
  v9 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v57 - v12;
  MEMORY[0x28223BE20](v13);
  v70 = &v57 - v14;
  v71 = type metadata accessor for FMFLocation(0);
  v64 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v57 - v17;
  MEMORY[0x28223BE20](v18);
  v63 = (&v57 - v19);
  MEMORY[0x28223BE20](v20);
  v65 = &v57 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v57 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = (&v57 - v29);
  memcpy(v75, a1, 0x130uLL);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v31 = sub_24A4AB630();
  sub_24A378E18(v31, qword_27EF4E260);
  sub_24A399284(a2, v30, type metadata accessor for FMFLocation);
  sub_24A399284(a2, v27, type metadata accessor for FMFLocation);
  sub_24A399284(a2, v24, type metadata accessor for FMFLocation);
  v32 = sub_24A4AB600();
  v33 = sub_24A4ABCE0();
  if (os_log_type_enabled(v32, v33))
  {
    v58 = v8;
    v34 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v74 = v57;
    *v34 = 136315651;
    if (v30[1])
    {
      v35 = *v30;
      v36 = v30[1];
    }

    else
    {
      v36 = 0xE300000000000000;
      v35 = 7104878;
    }

    sub_24A39A758(v30, type metadata accessor for FMFLocation);
    v42 = sub_24A37BD58(v35, v36, &v74);

    *(v34 + 4) = v42;
    *(v34 + 12) = 2049;
    memcpy(v73, &v27[*(v71 + 44)], 0x161uLL);
    if (sub_24A3B9C24(v73) == 1)
    {
      v43 = 0x7FF4000000000000;
    }

    else
    {
      [v73[38] coordinate];
      v43 = v44;
    }

    sub_24A39A758(v27, type metadata accessor for FMFLocation);
    *(v34 + 14) = v43;
    *(v34 + 22) = 2049;
    memcpy(v72, &v24[*(v71 + 44)], 0x161uLL);
    if (sub_24A3B9C24(v72) == 1)
    {
      v45 = 0x7FF4000000000000;
    }

    else
    {
      [v72[38] coordinate];
      v45 = v46;
    }

    v38 = v70;
    v39 = v66;
    v41 = v61;
    v40 = v62;
    sub_24A39A758(v24, type metadata accessor for FMFLocation);
    *(v34 + 24) = v45;
    _os_log_impl(&dword_24A376000, v32, v33, "👀 FMFManager.FMFSecureLocationRefreshControllerDelegate: did reverse geocode shallow/live (shifted) location for %s: shifted: {%{private}f,%{private}f}", v34, 0x20u);
    v47 = v57;
    sub_24A37EEE0(v57);
    MEMORY[0x24C219130](v47, -1, -1);
    MEMORY[0x24C219130](v34, -1, -1);

    v8 = v58;
  }

  else
  {

    sub_24A39A758(v30, type metadata accessor for FMFLocation);
    sub_24A39A758(v24, type metadata accessor for FMFLocation);
    v37 = sub_24A39A758(v27, type metadata accessor for FMFLocation);
    v38 = v70;
    v39 = v66;
    v41 = v61;
    v40 = v62;
  }

  MEMORY[0x28223BE20](v37);
  *(&v57 - 2) = a2;
  sub_24A3BC89C(sub_24A440FC0, v60, type metadata accessor for FMFLocation, type metadata accessor for FMFLocation, type metadata accessor for FMFLocation, type metadata accessor for FMFLocation, v38);
  v48 = v63;
  sub_24A399284(a2, v63, type metadata accessor for FMFLocation);
  sub_24A399284(a2, v40, type metadata accessor for FMFLocation);
  memcpy(v73, v75, 0x130uLL);
  sub_24A37B740(v75, v72, &unk_27EF404E0, &unk_24A4B5230);
  v49 = v65;
  FMFLocation.init(from:updatedLocation:address:)(v48, v40, v73, v65);
  sub_24A37B740(v38, v41, &qword_27EF3F480, &unk_24A4B8C20);
  v50 = v64;
  v51 = 1;
  if ((*(v64 + 48))(v41, 1, v71) != 1)
  {
    sub_24A3997D4(v41, v48, type metadata accessor for FMFLocation);
    sub_24A399284(v48, v40, type metadata accessor for FMFLocation);
    v52 = v48;
    v53 = v48;
    v54 = v59;
    sub_24A399284(v52, v59, type metadata accessor for FMFLocation);
    memcpy(v73, v75, 0x130uLL);
    sub_24A37B740(v75, v72, &unk_27EF404E0, &unk_24A4B5230);
    FMFLocation.init(from:updatedLocation:address:)(v40, v54, v73, v39);
    sub_24A39A758(v53, type metadata accessor for FMFLocation);
    v51 = 0;
  }

  (*(v50 + 56))(v39, v51, 1, v71);
  v55 = *(sub_24A3C9CEC(&qword_27EF40488, &unk_24A4BA648) + 48);
  sub_24A399284(v49, v8, type metadata accessor for FMFLocation);
  sub_24A37B740(v39, &v8[v55], &qword_27EF3F480, &unk_24A4B8C20);
  swift_storeEnumTagMultiPayload();
  v69(v8);
  sub_24A37EF2C(v8, &qword_27EF40490, &qword_24A4BA658);
  sub_24A37EF2C(v39, &qword_27EF3F480, &unk_24A4B8C20);
  sub_24A39A758(v49, type metadata accessor for FMFLocation);
  return sub_24A37EF2C(v70, &qword_27EF3F480, &unk_24A4B8C20);
}

BOOL sub_24A43CCF8(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_24A4AC270() & 1;
    }
  }

  return result;
}

uint64_t sub_24A43CD6C(unsigned int (***a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v7 = type metadata accessor for FMFLocation(0);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x28223BE20](v7);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v65 = sub_24A3C9CEC(&qword_27EF40488, &unk_24A4BA648);
  v13 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v19);
  v64 = &v54 - v20;
  MEMORY[0x28223BE20](v21);
  v58 = &v54 - v23;
  v24 = *a1;
  v25 = (*a1)[2];
  if (v25)
  {
    v57 = v6;
    v55 = a2;
    v66 = MEMORY[0x277D84F90];
    sub_24A3B57CC(0, v25, 0);
    v26 = v66;
    v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v56 = v24;
    v28 = *(v13 + 72);
    v62 = v24 + v27;
    v63 = v28;
    v29 = v24 + v27;
    do
    {
      v30 = v64;
      sub_24A37B740(v29, v64, &qword_27EF40488, &unk_24A4BA648);
      sub_24A37B740(v30, v18, &qword_27EF40488, &unk_24A4BA648);
      v31 = *(v65 + 48);
      sub_24A3997D4(v18, v15, type metadata accessor for FMFLocation);
      sub_24A37BE24(&v18[v31], &v15[v31], &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A399284(v15, v12, type metadata accessor for FMFLocation);
      sub_24A37EF2C(v15, &qword_27EF40488, &unk_24A4BA648);
      sub_24A37EF2C(v30, &qword_27EF40488, &unk_24A4BA648);
      v66 = v26;
      v32 = v12;
      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_24A3B57CC((v33 > 1), v34 + 1, 1);
        v26 = v66;
      }

      *(v26 + 16) = v34 + 1;
      v35 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v36 = v61[9];
      v22 = sub_24A3997D4(v32, v26 + v35 + v36 * v34, type metadata accessor for FMFLocation);
      v29 += v63;
      v25 = (v25 - 1);
      v12 = v32;
    }

    while (v25);
    v54 = v26;
    v37 = v56[2];
    if (v37)
    {
      v38 = v62;
      v56 = (v61 + 6);
      v61 = MEMORY[0x277D84F90];
      do
      {
        v62 = v38;
        v40 = v38;
        v41 = v58;
        sub_24A37B740(v40, v58, &qword_27EF40488, &unk_24A4BA648);
        v42 = v64;
        sub_24A37B740(v41, v64, &qword_27EF40488, &unk_24A4BA648);
        v43 = *(v65 + 48);
        sub_24A3997D4(v42, v18, type metadata accessor for FMFLocation);
        sub_24A37BE24(v42 + v43, &v18[v43], &qword_27EF3F480, &unk_24A4B8C20);
        v44 = v57;
        sub_24A37B740(&v18[v43], v57, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37EF2C(v18, &qword_27EF40488, &unk_24A4BA648);
        sub_24A37EF2C(v41, &qword_27EF40488, &unk_24A4BA648);
        if ((*v56)(v44, 1, v60) == 1)
        {
          v22 = sub_24A37EF2C(v44, &qword_27EF3F480, &unk_24A4B8C20);
          v39 = v62;
        }

        else
        {
          sub_24A3997D4(v44, v59, type metadata accessor for FMFLocation);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v45 = v61;
            v39 = v62;
          }

          else
          {
            v45 = sub_24A3B5C2C(0, v61[2] + 1, 1, v61);
            v39 = v62;
          }

          v47 = v45[2];
          v46 = v45[3];
          if (v47 >= v46 >> 1)
          {
            v45 = sub_24A3B5C2C((v46 > 1), v47 + 1, 1, v45);
          }

          v45[2] = v47 + 1;
          v61 = v45;
          v22 = sub_24A3997D4(v59, v45 + v35 + v36 * v47, type metadata accessor for FMFLocation);
        }

        v38 = &v39[v63];
        v37 = (v37 - 1);
      }

      while (v37);
      v48 = v54;
      a2 = v55;
      v49 = v61;
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
      v48 = v54;
      a2 = v55;
    }
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
  }

  v50 = *(a2 + 88);
  MEMORY[0x28223BE20](v22);
  *(&v54 - 2) = v50;
  *(&v54 - 1) = v48;

  sub_24A4ABD70();

  v52 = *(a2 + 88);
  MEMORY[0x28223BE20](v51);
  *(&v54 - 2) = v49;
  *(&v54 - 1) = v52;

  sub_24A4ABD70();
}

uint64_t sub_24A43D43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A416888;
  v8[3] = &unk_285D88D38;
  v6 = _Block_copy(v8);

  [v5 publishCurrentLocationToStewieWithReason:a1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_24A43D4F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A43D554()
{
  v1 = *(v0 + 16);
  v2 = sub_24A4AB820();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A4AB850();

  return v4;
}

void sub_24A43D618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  if (a2)
  {
    v8 = sub_24A4AB820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_24A4AB820();
  [v7 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t sub_24A43D6BC()
{
  v1 = *(v0 + 16);
  v2 = sub_24A4AB820();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A4AB850();

  return v4;
}

void sub_24A43D754(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = sub_24A4AB820();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_24A4AB820();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t sub_24A43D840(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A43D990()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_24A43DAB0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_24A43DAE8(void *a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A4AB630();
  sub_24A378E18(v9, qword_27EF4E260);
  v10 = a1;
  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v7;
    v15 = v5;
    v16 = v4;
    v17 = v14;
    aBlock[0] = v14;
    *v13 = 136315138;
    aBlock[6] = a1;
    v18 = a1;
    sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
    v19 = sub_24A4AB870();
    v21 = sub_24A37BD58(v19, v20, aBlock);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_24A376000, v11, v12, "FMFManager: initializationDidFail %s", v13, 0xCu);
    sub_24A37EEE0(v17);
    v22 = v17;
    v4 = v16;
    v5 = v15;
    v7 = v30;
    MEMORY[0x24C219130](v22, -1, -1);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  if (a1 && *(v2 + 225) == 1 && (*(v2 + 226) & 1) == 0)
  {
    *(v2 + 226) = 1;

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();

    sub_24A436774(aBlock[0], a1);
  }

  v23 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  swift_beginAccess();
  if ((*(v2 + v23) & 1) == 0)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    *(v24 + 24) = a1;
    aBlock[4] = sub_24A441004;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D88D10;
    v25 = _Block_copy(aBlock);
    v26 = a1;

    v27 = v31;
    sub_24A4AB6B0();
    v34 = MEMORY[0x277D84F90];
    sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    v28 = v33;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v27, v28, v25);
    _Block_release(v25);
    (*(v5 + 8))(v28, v4);
    (*(v32 + 8))(v27, v7);
  }
}

uint64_t sub_24A43DFE0()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);
  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A376000, v9, v10, "FMFManager: didInitialize", v11, 2u);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  aBlock[4] = sub_24A440FFC;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88CC0;
  v12 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v17 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v7, v4, v12);
  _Block_release(v12);
  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);
}

uint64_t sub_24A43E34C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return 0;
  }

  v26 = v3;
  v27 = v4;
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = sub_24A4AB820();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_24A4ABE70();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_24A37EF2C(v25, &qword_27EF3F808, &unk_24A4BA6D0);
LABEL_13:
    if (!a3)
    {
      return 1;
    }

LABEL_14:
    v12 = [v8 standardUserDefaults];
    v13 = sub_24A4AB820();
    v14 = sub_24A4AB820();
    [v12 setObject:v13 forKey:v14];

    v15 = [v8 standardUserDefaults];
    [v15 synchronize];

    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!a3)
  {

    return 1;
  }

  if (v21 != a2 || v22 != a3)
  {
    v16 = sub_24A4AC270();

    if (v16)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_18:
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A4AB630();
  sub_24A378E18(v17, qword_27EF4E260);
  v18 = sub_24A4AB600();
  v19 = sub_24A4ABCE0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24A376000, v18, v19, "Location alert has already been displayed. Not displaying again.", v20, 2u);
    MEMORY[0x24C219130](v20, -1, -1);
  }

  return 0;
}

void sub_24A43E62C(void *a1)
{
  v2 = v1;
  v44 = type metadata accessor for FMFLocation(0);
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = (&v38 - v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v45 = a1[2];
  if (v45)
  {
    if (qword_27EF3EBF8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v11 = sub_24A4AB630();
    sub_24A378E18(v11, qword_27EF4E260);

    v12 = sub_24A4AB600();
    v13 = sub_24A4ABCE0();
    v14 = os_log_type_enabled(v12, v13);
    v39 = v2;
    if (v14)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v45;

      _os_log_impl(&dword_24A376000, v12, v13, "👀 FMFManager.FMFSecureLocationRefreshControllerDelegate:%ld shallow/live locations", v15, 0xCu);
      MEMORY[0x24C219130](v15, -1, -1);
    }

    else
    {
    }

    v16 = 0;
    v17 = *(v4 + 80);
    v40 = a1;
    v42 = (v17 + 32) & ~v17;
    v18 = a1 + v42;
    v19 = *(v4 + 72);
    v20 = MEMORY[0x277D84F90];
    a1 = v41;
    do
    {
      sub_24A399284(v18, v10, type metadata accessor for FMFLocation);
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      memcpy(v46, &v10[*(v44 + 44)], 0x161uLL);
      if (sub_24A3B9C24(v46) == 1)
      {
        sub_24A39A758(v10, type metadata accessor for FMFLocation);
      }

      else
      {
        sub_24A3997D4(v10, v43, type metadata accessor for FMFLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3B57CC(0, *(v20 + 16) + 1, 1);
          v20 = v47;
        }

        v2 = *(v20 + 16);
        v23 = *(v20 + 24);
        v4 = v2 + 1;
        if (v2 >= v23 >> 1)
        {
          sub_24A3B57CC((v23 > 1), v2 + 1, 1);
          v20 = v47;
        }

        *(v20 + 16) = v4;
        sub_24A3997D4(v43, v20 + v42 + v2 * v19, type metadata accessor for FMFLocation);
      }

      ++v16;
      v18 += v19;
    }

    while (v21 != v45);
    v24 = *(v20 + 16);
    if (v24)
    {
      v25 = v20 + v42;
      v26 = MEMORY[0x277D84F90];
      do
      {
        sub_24A399284(v25, a1, type metadata accessor for FMFLocation);
        v27 = a1[1];
        if (v27)
        {
          v28 = *a1;

          sub_24A39A758(a1, type metadata accessor for FMFLocation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_24A3EDC98(0, *(v26 + 2) + 1, 1, v26);
          }

          v30 = *(v26 + 2);
          v29 = *(v26 + 3);
          if (v30 >= v29 >> 1)
          {
            v26 = sub_24A3EDC98((v29 > 1), v30 + 1, 1, v26);
          }

          *(v26 + 2) = v30 + 1;
          v31 = &v26[24 * v30];
          *(v31 + 4) = v28;
          *(v31 + 5) = v27;
          v31[48] = 0;
          a1 = v41;
        }

        else
        {
          sub_24A39A758(a1, type metadata accessor for FMFLocation);
        }

        v25 += v19;
        --v24;
      }

      while (v24);
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v33 = v39;
    v34 = *(v39 + 88);
    MEMORY[0x28223BE20](v32);
    *(&v38 - 2) = v26;
    *(&v38 - 1) = v34;

    sub_24A4ABD70();

    v36 = *(v33 + 88);
    MEMORY[0x28223BE20](v35);
    v37 = v40;
    *(&v38 - 2) = v36;
    *(&v38 - 1) = v37;

    sub_24A4ABD70();
  }
}

uint64_t sub_24A43EBB8(uint64_t a1)
{
  v4 = *(type metadata accessor for FMFFriend(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A357C;

  return sub_24A437A0C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24A43ECB0(uint64_t a1)
{
  v4 = *(type metadata accessor for FMFFriend(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A357C;

  return sub_24A438334(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24A43EDA8()
{
  v1 = sub_24A4AB690();
  v16 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A43B96C();
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D851C8], v7);
  v11 = sub_24A4ABDA0();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_24A440DB0;
  v19 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88BD0;
  v12 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v17 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v6, v3, v12);
  _Block_release(v12);

  (*(v16 + 8))(v3, v1);
  (*(v4 + 8))(v6, v15);
}

uint64_t sub_24A43F16C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A3A35A8;

  return sub_24A43A740(a1, v4, v5, v7, v6);
}

uint64_t sub_24A43F22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A43F29C(uint64_t a1)
{
  v4 = *(type metadata accessor for FMFFriend(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A35A8;

  return sub_24A43A0A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t dispatch thunk of FMFManagerDelegate.fmfManager(_:didReceive:fromServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 32))(a1, a2, a3, a4);
}

{
  return (*(a5 + 80))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FMFManagerDelegate.fmfManager(_:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 40))(a1, a2, a3);
}

{
  return (*(a4 + 48))(a1, a2, a3);
}

{
  return (*(a4 + 64))(a1, a2, a3);
}

{
  return (*(a4 + 72))(a1, a2, a3);
}

{
  return (*(a4 + 88))(a1, a2, a3);
}

{
  return (*(a4 + 96))(a1, a2, a3);
}

{
  return (*(a4 + 104))(a1, a2, a3);
}

uint64_t sub_24A43FA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF40428, &qword_24A4BA610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v79 - v5;
  v7 = sub_24A4AB6A0();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x28223BE20](v7);
  v85 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A3C9CEC(&qword_27EF40430, &qword_24A4BA618);
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x28223BE20](v9);
  v91 = (&v79 - v10);
  v11 = sub_24A3C9CEC(&qword_27EF40438, &qword_24A4BA620);
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  v88 = &v79 - v12;
  v13 = sub_24A3C9CEC(&qword_27EF40440, &qword_24A4BA628);
  v95 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v92 = &v79 - v14;
  v102 = type metadata accessor for FMFLocation(0);
  v99 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v80 = &v79 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v79 - v20;
  MEMORY[0x28223BE20](v22);
  v101 = &v79 - v23;
  v79 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - v26;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v28 = sub_24A4AB630();
  sub_24A378E18(v28, qword_27EF4E260);

  v29 = sub_24A4AB600();
  v30 = sub_24A4ABCE0();
  v31 = os_log_type_enabled(v29, v30);
  v96 = v13;
  v97 = v6;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 134218240;
    *(v32 + 4) = *(a1 + 16);

    *(v32 + 12) = 2048;
    *(v32 + 14) = *(a2 + 16);

    _os_log_impl(&dword_24A376000, v29, v30, "👀 FMFManager.FMFSecureLocationRefreshControllerDelegate: received %ld unshifted and %ld shifted shallow/live locations", v32, 0x16u);
    MEMORY[0x24C219130](v32, -1, -1);
  }

  else
  {
  }

  v81 = v16;
  v82 = a2;
  v33 = *(a2 + 16);
  v83 = a1;
  v84 = v33;
  if (v33)
  {
    v100 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v34 = a2 + v100;
    v35 = *(v99 + 72);
    v36 = MEMORY[0x277D84F90];
    v37 = v101;
    do
    {
      sub_24A399284(v34, v27, type metadata accessor for FMFLocation);
      memcpy(v103, &v27[*(v102 + 44)], 0x161uLL);
      if (sub_24A3B9C24(v103) == 1)
      {
        sub_24A39A758(v27, type metadata accessor for FMFLocation);
      }

      else
      {
        sub_24A3997D4(v27, v21, type metadata accessor for FMFLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3B57CC(0, *(v36 + 16) + 1, 1);
          v36 = v104;
        }

        v40 = *(v36 + 16);
        v39 = *(v36 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_24A3B57CC((v39 > 1), v40 + 1, 1);
          v36 = v104;
        }

        *(v36 + 16) = v40 + 1;
        sub_24A3997D4(v21, v36 + v100 + v40 * v35, type metadata accessor for FMFLocation);
      }

      v34 += v35;
      --v33;
    }

    while (v33);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
    v37 = v101;
  }

  v41 = *(v36 + 16);
  if (v41)
  {
    v42 = v36 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v43 = *(v99 + 72);
    v44 = MEMORY[0x277D84F90];
    do
    {
      sub_24A399284(v42, v37, type metadata accessor for FMFLocation);
      v45 = v37[1];
      if (v45)
      {
        v46 = *v37;

        sub_24A39A758(v37, type metadata accessor for FMFLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_24A3EDC98(0, *(v44 + 2) + 1, 1, v44);
        }

        v48 = *(v44 + 2);
        v47 = *(v44 + 3);
        if (v48 >= v47 >> 1)
        {
          v44 = sub_24A3EDC98((v47 > 1), v48 + 1, 1, v44);
        }

        *(v44 + 2) = v48 + 1;
        v49 = &v44[24 * v48];
        *(v49 + 4) = v46;
        *(v49 + 5) = v45;
        v49[48] = 0;
        v37 = v101;
      }

      else
      {
        sub_24A39A758(v37, type metadata accessor for FMFLocation);
      }

      v42 += v43;
      --v41;
    }

    while (v41);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  v51 = *(v98 + 88);
  MEMORY[0x28223BE20](v50);
  *(&v79 - 2) = v44;
  *(&v79 - 1) = v51;

  sub_24A4ABD70();

  v52 = MEMORY[0x277D84F90];
  v53 = v84;
  if (v84)
  {
    v103[0] = MEMORY[0x277D84F90];
    sub_24A4ABFD0();
    v54 = v98;
    v55 = *(v99 + 80);
    v56 = v83;
    v57 = v82 + ((v55 + 32) & ~v55);
    v101 = *(v99 + 72);
    v102 = v55;
    v58 = v80;
    v99 = (v79 + ((v55 + 24) & ~v55) + 7) & 0xFFFFFFFFFFFFFFF8;
    v100 = (v55 + 24) & ~v55;
    v59 = v81;
    do
    {
      sub_24A399284(v57, v58, type metadata accessor for FMFLocation);
      sub_24A399284(v58, v59, type metadata accessor for FMFLocation);
      v60 = v99;
      v61 = swift_allocObject();
      *(v61 + 16) = v54;
      sub_24A3997D4(v59, v61 + v100, type metadata accessor for FMFLocation);
      *(v61 + v60) = v56;
      sub_24A3C9CEC(&qword_27EF40448, &qword_24A4BA630);
      swift_allocObject();

      sub_24A4AB650();
      sub_24A39A758(v58, type metadata accessor for FMFLocation);
      sub_24A4ABFB0();
      sub_24A4ABFE0();
      sub_24A4ABFF0();
      sub_24A4ABFC0();
      v57 += v101;
      --v53;
    }

    while (v53);
    v52 = v103[0];
  }

  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v101 = v62;
  v102 = v62 + 16;
  v103[0] = v52;
  sub_24A3C9CEC(&qword_27EF40448, &qword_24A4BA630);
  sub_24A3C9CEC(&qword_27EF40450, &qword_24A4BA638);
  sub_24A378704(&qword_27EF40458, &qword_27EF40448, &qword_24A4BA630, MEMORY[0x277CBCEB0]);
  sub_24A378704(&qword_27EF40460, &qword_27EF40450, &qword_24A4BA638, MEMORY[0x277D83970]);
  v63 = v88;
  sub_24A4AB640();
  sub_24A3C9CEC(&qword_27EF40468, &qword_24A4BA640);
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v65 = v85;
  v64 = v86;
  v66 = v87;
  (*(v86 + 104))(v85, *MEMORY[0x277D851D0], v87);
  v67 = sub_24A4ABDA0();
  (*(v64 + 8))(v65, v66);
  v68 = v91;
  *v91 = v67;
  sub_24A4ABD40();
  v70 = v93;
  v69 = v94;
  (*(v93 + 104))(v68, *MEMORY[0x277CBCBF8], v94);
  v71 = sub_24A4ABD30();
  v72 = v97;
  (*(*(v71 - 8) + 56))(v97, 1, 1, v71);
  sub_24A378704(&qword_27EF40470, &qword_27EF40438, &qword_24A4BA620, MEMORY[0x277CBCD48]);
  sub_24A440E68();
  v73 = v92;
  v74 = v90;
  sub_24A4AB670();
  sub_24A37EF2C(v72, &qword_27EF40428, &qword_24A4BA610);
  (*(v70 + 8))(v68, v69);
  (*(v89 + 8))(v63, v74);
  sub_24A378704(&qword_27EF40480, &qword_27EF40440, &qword_24A4BA628, MEMORY[0x277CBCB80]);

  v75 = v96;
  v76 = sub_24A4AB660();

  (*(v95 + 8))(v73, v75);
  v77 = v102;
  swift_beginAccess();
  *v77 = v76;
}

uint64_t sub_24A440778(char *a1, uint64_t a2, char a3, char a4)
{
  v4 = a3;
  v5 = a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24A3DBE70(0, v6, 0);
    v15 = v5;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v12 = *(v17 + 16);
      v11 = *(v17 + 24);

      if (v12 >= v11 >> 1)
      {
        a1 = sub_24A3DBE70((v11 > 1), v12 + 1, 1);
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + 24 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      *(v13 + 48) = a4;
      v8 += 2;
      --v6;
    }

    while (v6);
    v4 = a3;
    v5 = v15;
  }

  MEMORY[0x28223BE20](a1);

  sub_24A4ABD70();

  return sub_24A4398F8(v5, v4 & 1);
}

uint64_t sub_24A440940(uint64_t a1, char a2, const char *a3, uint64_t a4, ...)
{
  v4 = a3;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = MEMORY[0x277D84F90];
    sub_24A3DBD70(0, v5, 0);
    v6 = v26;
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v26 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_24A3DBD70((v12 > 1), v13 + 1, 1);
        v6 = v26;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = a2;
      v9 += 2;
      --v5;
    }

    while (v5);
    v4 = a3;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A4AB630();
  sub_24A378E18(v15, qword_27EF4E260);

  v16 = sub_24A4AB600();
  v17 = sub_24A4ABCE0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    v20 = MEMORY[0x24C217E90](v6, &type metadata for FMFSecureOrLiveLocateInProgress);
    v22 = sub_24A37BD58(v20, v21, &v26);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_24A376000, v16, v17, v4, v18, 0xCu);
    sub_24A37EEE0(v19);
    MEMORY[0x24C219130](v19, -1, -1);
    MEMORY[0x24C219130](v18, -1, -1);
  }

  MEMORY[0x28223BE20](v23);

  sub_24A4ABD70();
}

uint64_t sub_24A440C2C(uint64_t a1, unint64_t a2, char a3)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24A37BD58(a1, a2, &v12);
    *(v9 + 12) = 1024;
    *(v9 + 14) = a3 & 1;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFManager: liveSessionDidEndForFriend: %s, successfullyEstablished?: %{BOOL}d", v9, 0x12u);
    sub_24A37EEE0(v10);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  return sub_24A439760(a1, a2, a3 & 1);
}

uint64_t sub_24A440DB8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMFLocation(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_24A43C050(a1, a2, v8, v2 + v6, v7);
}

unint64_t sub_24A440E68()
{
  result = qword_27EF40478;
  if (!qword_27EF40478)
  {
    sub_24A37B428(255, &qword_27EF40900, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40478);
  }

  return result;
}

uint64_t sub_24A440ED0()
{
  swift_beginAccess();
  *(v0 + 16) = 0;
}

uint64_t sub_24A440F14(const void *a1)
{
  v3 = *(type metadata accessor for FMFLocation(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_24A43C484(a1, (v1 + v4), v6, v8, v9);
}

uint64_t sub_24A44102C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A3A357C;

  return sub_24A4353A0(a1, v4, v5, v6);
}

uint64_t sub_24A4410E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A3A357C;

  return sub_24A434BEC(a1, v4, v5, v6);
}

uint64_t sub_24A441270(uint64_t *a1, const void *a2, uint64_t a3)
{
  v35 = a3;
  v37 = a2;
  v40 = a1;
  v4 = sub_24A3C9CEC(&qword_27EF404F0, qword_24A4BA768);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v36 = type metadata accessor for FMReverseGeocodingRequest(0);
  MEMORY[0x28223BE20](v36);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v38 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = sub_24A4AB710();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v3;
  v17 = *(v3 + qword_27EF400F0);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_24A4AB730();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    sub_24A446A98(v40, v8, type metadata accessor for FMReverseGeocodingRequest);
    v20 = v9[11];
    v21 = sub_24A4AAAD0();
    (*(*(v21 - 8) + 16))(&v11[v20], v35, v21);
    v22 = v8[1];
    *v11 = *v8;
    *(v11 + 1) = v22;
    v23 = v8[2];
    v24 = v37;
    sub_24A3E5340(v37, &v41);

    *(v11 + 2) = sub_24A448010();
    *(v11 + 3) = v25;
    *(v11 + 4) = v23;
    v26 = *(v8 + *(v36 + 28));
    v27 = v23;
    sub_24A447020(v8, type metadata accessor for FMReverseGeocodingRequest);
    v11[v9[13]] = v26;
    memcpy(&v11[v9[12]], v24, 0x130uLL);
    v28 = sub_24A448010();
    v30 = v29;
    sub_24A37B740(v11, v6, &qword_27EF403A8, &qword_24A4BA760);
    v31 = *(v38 + 56);
    v31(v6, 0, 1, v9);
    swift_beginAccess();
    sub_24A4A36EC(v6, v28, v30);
    swift_endAccess();
    v33 = *v40;
    v32 = v40[1];
    sub_24A37B740(v11, v6, &qword_27EF403A8, &qword_24A4BA760);
    v31(v6, 0, 1, v9);
    swift_beginAccess();

    sub_24A4A36EC(v6, v33, v32);
    swift_endAccess();
    return sub_24A37EF2C(v11, &qword_27EF403A8, &qword_24A4BA760);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A4416C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v7 = sub_24A4AB690();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24A4AB6E0();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMReverseGeocodingRequest(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v4 + qword_27EF400F0);
  sub_24A446A98(a1, v16, type metadata accessor for FMReverseGeocodingRequest);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  sub_24A44680C(v16, v19 + v17);
  v20 = (v19 + v18);
  *v20 = v24;
  v20[1] = a3;
  aBlock[4] = sub_24A446B00;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88FA8;
  v21 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v27 = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v9, v21);
  _Block_release(v21);
  (*(v26 + 8))(v9, v7);
  (*(v10 + 8))(v12, v25);
}

void sub_24A441A18(uint64_t a1, uint64_t *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  sub_24A441BE4(a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_24A3D77F8(__dst) == 1)
  {
    memcpy(v16, __src, sizeof(v16));
    sub_24A37EF2C(v16, &unk_27EF404E0, &unk_24A4B5230);
    v8 = sub_24A448010();
    v10 = v9;
    v11 = qword_27EF400D8;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {

      sub_24A39B2C8(v8, v10);
      v13 = v12;

      if (v13)
      {
        sub_24A4449A0(a2, a3, a4);
        return;
      }
    }

    else
    {
    }

    sub_24A442D8C(a2, 0, a3, a4);
  }

  else
  {
    memcpy(v15, __src, sizeof(v15));
    memcpy(v14, __src, sizeof(v14));
    sub_24A37B740(v15, v16, &unk_27EF404E0, &unk_24A4B5230);
    a3(v14);
    sub_24A37EF2C(v15, &unk_27EF404E0, &unk_24A4B5230);
    memcpy(v16, v14, sizeof(v16));
    sub_24A37EF2C(v16, &unk_27EF404E0, &unk_24A4B5230);
  }
}

void sub_24A441BE4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v161 = a2;
  v5 = sub_24A4AAAD0();
  v147 = *(v5 - 8);
  v148 = v5;
  MEMORY[0x28223BE20](v5);
  v146 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A3C9CEC(&qword_27EF404F0, qword_24A4BA768);
  MEMORY[0x28223BE20](v7 - 8);
  v155 = &v142 - v8;
  v156 = type metadata accessor for FMReverseGeocodingRequest(0);
  MEMORY[0x28223BE20](v156);
  v10 = (&v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v154 = (&v142 - v12);
  MEMORY[0x28223BE20](v13);
  v153 = &v142 - v14;
  MEMORY[0x28223BE20](v15);
  v152 = (&v142 - v16);
  v158 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v160 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v145 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v144 = (&v142 - v19);
  MEMORY[0x28223BE20](v20);
  v143 = (&v142 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v142 - v23;
  MEMORY[0x28223BE20](v25);
  v150 = &v142 - v26;
  MEMORY[0x28223BE20](v27);
  v151 = &v142 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v142 - v30;
  MEMORY[0x28223BE20](v32);
  v159 = &v142 - v33;
  v34 = sub_24A4AB710();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = (&v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *(v3 + qword_27EF400F0);
  *v38 = v39;
  (*(v35 + 104))(v38, *MEMORY[0x277D85200], v34, v36);
  v40 = v39;
  LOBYTE(v39) = sub_24A4AB730();
  (*(v35 + 8))(v38, v34);
  if ((v39 & 1) == 0)
  {
    __break(1u);
LABEL_39:
    swift_once();
LABEL_19:
    v100 = sub_24A4AB630();
    sub_24A378E18(v100, qword_27EF4E278);
    sub_24A446A98(a1, v10, type metadata accessor for FMReverseGeocodingRequest);

    v101 = sub_24A4AB600();
    v102 = sub_24A4ABCE0();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v164[0] = v104;
      *v103 = 136315394;
      v105 = sub_24A4AC420();
      v107 = sub_24A37BD58(v105, v106, v164);

      *(v103 + 4) = v107;
      *(v103 + 12) = 2080;
      v108 = *v10;
      v109 = v10[1];

      sub_24A447020(v10, type metadata accessor for FMReverseGeocodingRequest);
      v110 = sub_24A37BD58(v108, v109, v164);

      *(v103 + 14) = v110;
      _os_log_impl(&dword_24A376000, v101, v102, "%s: No cached request for %s.", v103, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v104, -1, -1);
      MEMORY[0x24C219130](v103, -1, -1);
    }

    else
    {

      sub_24A447020(v10, type metadata accessor for FMReverseGeocodingRequest);
    }

    goto LABEL_35;
  }

  v41 = a1[2];
  v42 = sub_24A448010();
  v44 = v43;
  v45 = qword_27EF400C8;
  swift_beginAccess();
  v46 = *(v3 + v45);
  if (*(v46 + 16))
  {
    v149 = v41;
    v157 = a1;

    v47 = sub_24A39B2C8(v42, v44);
    v49 = v48;

    if (v49)
    {
      sub_24A37B740(*(v46 + 56) + *(v160 + 72) * v47, v31, &qword_27EF403A8, &qword_24A4BA760);

      v50 = v31;
      v51 = v159;
      sub_24A37BE24(v50, v159, &qword_27EF403A8, &qword_24A4BA760);
      if (qword_27EF3EC00 != -1)
      {
        swift_once();
      }

      v52 = sub_24A4AB630();
      sub_24A378E18(v52, qword_27EF4E278);
      v53 = v157;
      v54 = v152;
      sub_24A446A98(v157, v152, type metadata accessor for FMReverseGeocodingRequest);
      v55 = v153;
      sub_24A446A98(v53, v153, type metadata accessor for FMReverseGeocodingRequest);
      v56 = v151;
      sub_24A37B740(v51, v151, &qword_27EF403A8, &qword_24A4BA760);

      v57 = sub_24A4AB600();
      v58 = sub_24A4ABCE0();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *&v164[0] = v150;
        *v59 = 136315906;
        v60 = sub_24A4AC420();
        LODWORD(v148) = v58;
        v62 = sub_24A37BD58(v60, v61, v164);

        *(v59 + 4) = v62;
        *(v59 + 12) = 2080;
        v63 = *v54;
        v64 = v54[1];

        sub_24A447020(v54, type metadata accessor for FMReverseGeocodingRequest);
        v65 = sub_24A37BD58(v63, v64, v164);

        *(v59 + 14) = v65;
        *(v59 + 22) = 2080;
        v66 = sub_24A448010();
        v68 = v67;
        sub_24A447020(v55, type metadata accessor for FMReverseGeocodingRequest);
        v69 = sub_24A37BD58(v66, v68, v164);

        *(v59 + 24) = v69;
        *(v59 + 32) = 2080;
        v70 = v158;
        v71 = FMFAddress.debugDescription.getter();
        v73 = v72;
        sub_24A37EF2C(v56, &qword_27EF403A8, &qword_24A4BA760);
        v74 = sub_24A37BD58(v71, v73, v164);

        *(v59 + 34) = v74;
        _os_log_impl(&dword_24A376000, v57, v148, "%s: Using cached request %s based on geoHash %s -> %s.", v59, 0x2Au);
        v75 = v150;
        swift_arrayDestroy();
        MEMORY[0x24C219130](v75, -1, -1);
        MEMORY[0x24C219130](v59, -1, -1);
      }

      else
      {

        sub_24A37EF2C(v56, &qword_27EF403A8, &qword_24A4BA760);
        sub_24A447020(v54, type metadata accessor for FMReverseGeocodingRequest);
        sub_24A447020(v55, type metadata accessor for FMReverseGeocodingRequest);
        v70 = v158;
      }

      v111 = v157[1];
      v158 = *v157;
      v112 = v154;
      sub_24A446A98(v157, v154, type metadata accessor for FMReverseGeocodingRequest);
      v113 = *(v70 + 48);
      v114 = v159;
      memcpy(v163, (v159 + v113), sizeof(v163));

      sub_24A3E5340(v163, v164);
      v115 = [v149 timestamp];
      v116 = v155;
      sub_24A4AAAA0();

      v117 = v112[1];
      *v116 = *v112;
      v116[1] = v117;
      v118 = v112[2];

      v116[2] = sub_24A448010();
      v116[3] = v119;
      v116[4] = v118;
      v120 = *(v112 + *(v156 + 28));
      v121 = v118;
      sub_24A447020(v112, type metadata accessor for FMReverseGeocodingRequest);
      *(v116 + *(v70 + 52)) = v120;
      memcpy(v116 + *(v70 + 48), v163, 0x130uLL);
      (*(v160 + 56))(v116, 0, 1, v70);
      swift_beginAccess();
      sub_24A4A36EC(v116, v158, v111);
      swift_endAccess();
      memcpy(v164, (v114 + v113), sizeof(v164));
      sub_24A3E5340(v164, &v162);
      sub_24A37EF2C(v114, &qword_27EF403A8, &qword_24A4BA760);
      memcpy(v161, v164, 0x130uLL);
LABEL_24:
      nullsub_1();
      return;
    }

    a1 = v157;
    v41 = v149;
  }

  else
  {
  }

  v76 = *a1;
  v77 = a1[1];
  v78 = qword_27EF400D0;
  swift_beginAccess();
  v79 = *(v3 + v78);
  if (!*(v79 + 16))
  {
LABEL_18:
    if (qword_27EF3EC00 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

  v80 = sub_24A39B2C8(v76, v77);
  if ((v81 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_24A37B740(*(v79 + 56) + *(v160 + 72) * v80, v24, &qword_27EF403A8, &qword_24A4BA760);

  v82 = v150;
  sub_24A37BE24(v24, v150, &qword_27EF403A8, &qword_24A4BA760);
  v83 = v146;
  sub_24A4AAAB0();
  v84 = v158;
  sub_24A4AAA50();
  v86 = v85;
  v87 = (*(v147 + 8))(v83, v148);
  if ((*(*v3 + 256))(v87) >= v86)
  {
    v122 = [*(v82 + 32) distanceFromLocation_];
    v124 = v123;
    if (*(a1 + *(v156 + 28)))
    {
      v125 = (*(*v3 + 264))(v122);
    }

    else
    {
      v125 = 250.0;
    }

    v126 = v144;
    v127 = v145;
    if (v124 < v125)
    {
      if (qword_27EF3EC00 != -1)
      {
        swift_once();
      }

      v128 = sub_24A4AB630();
      sub_24A378E18(v128, qword_27EF4E278);
      sub_24A37B740(v82, v126, &qword_27EF403A8, &qword_24A4BA760);
      sub_24A37B740(v82, v127, &qword_27EF403A8, &qword_24A4BA760);
      v129 = sub_24A4AB600();
      v130 = sub_24A4ABCE0();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *&v164[0] = v132;
        *v131 = 136315906;
        v133 = *v126;
        v134 = v126[1];

        sub_24A37EF2C(v126, &qword_27EF403A8, &qword_24A4BA760);
        v135 = sub_24A37BD58(v133, v134, v164);

        *(v131 + 4) = v135;
        *(v131 + 12) = 2048;
        *(v131 + 14) = v124;
        *(v131 + 22) = 2048;
        *(v131 + 24) = v125;
        *(v131 + 32) = 2080;
        v136 = FMFAddress.debugDescription.getter();
        v138 = v137;
        sub_24A37EF2C(v127, &qword_27EF403A8, &qword_24A4BA760);
        v139 = sub_24A37BD58(v136, v138, v164);
        v82 = v150;

        *(v131 + 34) = v139;
        _os_log_impl(&dword_24A376000, v129, v130, "FMReverseGeocodingCache: Using cached request for %s due to location distance throttling - distance: %f, limit: %f -> %s.", v131, 0x2Au);
        swift_arrayDestroy();
        v140 = v132;
        v84 = v158;
        MEMORY[0x24C219130](v140, -1, -1);
        MEMORY[0x24C219130](v131, -1, -1);
      }

      else
      {

        sub_24A37EF2C(v127, &qword_27EF403A8, &qword_24A4BA760);
        sub_24A37EF2C(v126, &qword_27EF403A8, &qword_24A4BA760);
      }

      v141 = *(v84 + 48);
      memcpy(v164, (v82 + v141), sizeof(v164));
      memcpy(v161, (v82 + v141), 0x130uLL);
      sub_24A3E5340(v164, v163);
      sub_24A37EF2C(v82, &qword_27EF403A8, &qword_24A4BA760);
      goto LABEL_24;
    }
  }

  else
  {
    if (qword_27EF3EC00 != -1)
    {
      swift_once();
    }

    v88 = sub_24A4AB630();
    sub_24A378E18(v88, qword_27EF4E278);
    v89 = v143;
    sub_24A37B740(v82, v143, &qword_27EF403A8, &qword_24A4BA760);

    v90 = sub_24A4AB600();
    v91 = sub_24A4ABCE0();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v164[0] = v93;
      *v92 = 136315394;
      v94 = sub_24A4AC420();
      v96 = sub_24A37BD58(v94, v95, v164);

      *(v92 + 4) = v96;
      *(v92 + 12) = 2080;
      v97 = *v89;
      v98 = v89[1];

      sub_24A37EF2C(v89, &qword_27EF403A8, &qword_24A4BA760);
      v99 = sub_24A37BD58(v97, v98, v164);
      v82 = v150;

      *(v92 + 14) = v99;
      _os_log_impl(&dword_24A376000, v90, v91, "%s: Cached request for %s is older than the 30s.", v92, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v93, -1, -1);
      MEMORY[0x24C219130](v92, -1, -1);
    }

    else
    {

      sub_24A37EF2C(v89, &qword_27EF403A8, &qword_24A4BA760);
    }
  }

  sub_24A37EF2C(v82, &qword_27EF403A8, &qword_24A4BA760);
LABEL_35:
  sub_24A3BAFB0(v164);
  memcpy(v161, v164, 0x130uLL);
}