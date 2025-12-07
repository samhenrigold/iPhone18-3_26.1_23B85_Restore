uint64_t ExtendedLaunchController.LoadingHandle.finishedLoading.getter()
{
  v1 = *v0;

  return v1;
}

id ExtendedLaunchController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_21B480D18(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (qword_2811FEB80 != -1)
  {
    swift_once();
  }

  v11 = sub_21B4C7558();
  __swift_project_value_buffer(v11, qword_2811FEB88);

  v12 = a1;
  v13 = sub_21B4C7538();
  v14 = sub_21B4C9D08();

  if (os_log_type_enabled(v13, v14))
  {
    v24 = a6;
    v15 = a5;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25[0] = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_21B36CF74(a2, a3, v25);
    *(v16 + 12) = 2112;
    if (a1)
    {
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v16 + 14) = v20;
    *v17 = v21;
    _os_log_impl(&dword_21B365000, v13, v14, "Ending loading for %s with %@", v16, 0x16u);
    sub_21B4508D4(v17);
    MEMORY[0x21CEF5710](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x21CEF5710](v18, -1, -1);
    MEMORY[0x21CEF5710](v16, -1, -1);

    a5 = v15;
    a6 = v24;
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_21B480F58(a5, a6 & 1, a2, a3, a1);
  }
}

void sub_21B480F58(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v11 = *(v5 + OBJC_IVAR____TtC10PodcastsUI24ExtendedLaunchController_lock);
  os_unfair_lock_lock((v11 + 28));
  if ((*(v11 + 24) & 1) != 0 || (a2 & 1) != 0 || *(v11 + 16) != a1)
  {
    os_unfair_lock_unlock((v11 + 28));
    if (qword_2811FEB80 != -1)
    {
      swift_once();
    }

    v25 = sub_21B4C7558();
    __swift_project_value_buffer(v25, qword_2811FEB88);
    oslog = sub_21B4C7538();
    v26 = sub_21B4C9D08();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21B365000, oslog, v26, "Something else was responsible for ending extended launch. Skipping calling instrumentation methods.", v27, 2u);
      MEMORY[0x21CEF5710](v27, -1, -1);
    }
  }

  else
  {
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    os_unfair_lock_unlock((v11 + 28));
    v12 = [objc_opt_self() sharedApplication];
    if (a5)
    {
      v13 = a5;
      if (qword_2811FEB80 != -1)
      {
        swift_once();
      }

      v14 = sub_21B4C7558();
      __swift_project_value_buffer(v14, qword_2811FEB88);
      v15 = a5;

      v16 = sub_21B4C7538();
      v17 = sub_21B4C9D08();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v36 = v19;
        *v18 = 136446466;
        *(v18 + 4) = sub_21B36CF74(a3, a4, &v36);
        *(v18 + 12) = 2082;
        swift_getErrorValue();
        v20 = sub_21B4CA698();
        v22 = sub_21B36CF74(v20, v21, &v36);

        *(v18 + 14) = v22;
        _os_log_impl(&dword_21B365000, v16, v17, "%{public}s failed launch test with error: %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEF5710](v19, -1, -1);
        MEMORY[0x21CEF5710](v18, -1, -1);
      }

      swift_getErrorValue();
      sub_21B4CA698();
      v23 = [v12 _launchTestName];
      v24 = sub_21B4C96C8();
      [v12 failedTest:v23 withFailure:v24];
    }

    else
    {
      if (qword_2811FEB80 != -1)
      {
        swift_once();
      }

      v28 = sub_21B4C7558();
      __swift_project_value_buffer(v28, qword_2811FEB88);

      v29 = sub_21B4C7538();
      v30 = sub_21B4C9D08();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v36 = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_21B36CF74(a3, a4, &v36);
        _os_log_impl(&dword_21B365000, v29, v30, "%{public}s completed the launch test.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x21CEF5710](v32, -1, -1);
        MEMORY[0x21CEF5710](v31, -1, -1);
      }

      v33._countAndFlagsBits = a3;
      v33._object = a4;
      UIApplication.completeExtendedLaunchTest(tabName:)(v33);
    }

    sub_21B4C7058();
    v34 = sub_21B4C7048();
    sub_21B4C7038();
  }
}

id ExtendedLaunchController.init()()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI24ExtendedLaunchController_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88208, &qword_21B4D8EF0);
  v2 = swift_allocObject();
  *(v2 + 28) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ExtendedLaunchController();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ExtendedLaunchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtendedLaunchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ExtendedLaunchStatus.error.getter()
{
  v1 = *v0;
  type metadata accessor for ExtendedLaunchStatus.ExtendedLaunchError();
  result = swift_allocObject();
  if (v1 > 1)
  {
    *(result + 16) = v1;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

unint64_t sub_21B481548()
{
  result = 0xD000000000000023;
  v2 = *(v0 + 16);
  if (v2 <= 2)
  {
    if (v2 != 2)
    {
      if (!*(v0 + 16))
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  else if (v2 == 3)
  {
    return 0xD000000000000026;
  }

  else
  {
    return 0xD000000000000044;
  }

  return result;
}

uint64_t ExtendedLaunchStatus.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

unint64_t sub_21B48167C()
{
  result = qword_27CD88210;
  if (!qword_27CD88210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88210);
  }

  return result;
}

uint64_t sub_21B4816E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21B481730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B4817AC()
{
  result = qword_27CD88218;
  if (!qword_27CD88218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88218);
  }

  return result;
}

uint64_t MetricsDataConfiguration.init(topic:includingFields:excludingFields:shouldFlush:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t MetricsDataConfiguration.topic.getter()
{
  v1 = *v0;

  return v1;
}

void MetricsDataConfiguration.topic.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_21B481940@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21B482210;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21B371F28(v3, v4);
}

uint64_t sub_21B4819C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21B4821D0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_21B371F28(v3, v4);
  result = sub_21B36F6F4(v7, v8);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t MetricsDataConfiguration.shouldFlush.getter()
{
  v1 = *(v0 + 32);
  sub_21B371F28(v1, *(v0 + 40));
  return v1;
}

uint64_t MetricsDataConfiguration.shouldFlush.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21B36F6F4(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

unint64_t sub_21B481AE8()
{
  v0 = sub_21B4C6138();
  v31 = v1;
  v32 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88220, &unk_21B4D91B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F60, &qword_21B4D3698);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v37 = *(*(v2 - 8) + 72);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B4D1CD0;
  v30 = v4;
  v38 = v2;
  v28 = *(v2 + 48);
  v5 = v4 + v3;
  sub_21B4C89D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87888, &qword_21B4D91C0);
  v6 = sub_21B4C9148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21B4D1CD0;
  sub_21B4C9108();
  sub_21B4C9118();
  sub_21B4C9128();
  v36 = 3 * v8;
  sub_21B4C90D8();
  if (qword_2811FCFD8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_2811FCFE0);
  v29 = v7;
  v34 = *(v7 + 16);
  v35 = v11;
  v34(v10 + v9 + 4 * v8, v11, v6);
  v12 = sub_21B44A924(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = v5;
  *(v5 + v28) = v12;
  v27 = *(v2 + 48);
  sub_21B4C8988();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21B4D4DC0;
  sub_21B4C90E8();
  sub_21B4C90D8();
  sub_21B4C90F8();
  v34(v13 + v9 + v36, v35, v6);
  v14 = sub_21B44A924(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v5 + v37 + v27) = v14;
  v26 = *(v38 + 48);
  sub_21B4C89C8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B4D4DC0;
  sub_21B4C90D8();
  sub_21B4C90F8();
  sub_21B4C9118();
  v34(v15 + v9 + v36, v35, v6);
  v16 = sub_21B44A924(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v5 + 2 * v37 + v26) = v16;
  v17 = v5 + 3 * v37;
  v18 = *(v38 + 48);
  sub_21B4C8968();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21B4D2830;
  sub_21B4C90D8();
  v20 = sub_21B44A924(v19);
  swift_setDeallocating();
  (*(v29 + 8))(v19 + v9, v6);
  swift_deallocClassInstance();
  *(v17 + v18) = v20;
  v21 = *(v38 + 48);
  sub_21B4C8A18();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21B4D38F0;
  sub_21B4C90D8();
  sub_21B4C90F8();
  v23 = sub_21B44A924(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v33 + 4 * v37 + v21) = v23;
  v24 = sub_21B373330(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  result = sub_21B373D7C(MEMORY[0x277D84F90]);
  qword_2811FEB10 = v32;
  *algn_2811FEB18 = v31;
  qword_2811FEB20 = v24;
  unk_2811FEB28 = result;
  qword_2811FEB30 = 0;
  unk_2811FEB38 = 0;
  return result;
}

uint64_t static MetricsDataConfiguration.search.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2811FEB08 != -1)
  {
    swift_once();
  }

  v3 = qword_2811FEB10;
  v2 = *algn_2811FEB18;
  v4 = qword_2811FEB20;
  v5 = unk_2811FEB28;
  v6 = qword_2811FEB30;
  v7 = unk_2811FEB38;

  result = sub_21B371F28(v6, v7);
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return result;
}

uint64_t get_enum_tag_for_layout_string_SDySSypGSbIeghgd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B48212C(uint64_t a1, int a2)
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

uint64_t sub_21B482174(uint64_t result, int a2, int a3)
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

uint64_t sub_21B4821D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_21B482210@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

PodcastsUI::ShelfIDBuilder __swiftcall ShelfIDBuilder.init(named:)(Swift::String named)
{
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A80, &qword_21B4D6A20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21B4D2830;
  MEMORY[0x21CEF2F30](countAndFlagsBits, object);

  *(v3 + 32) = 0xD000000000000019;
  *(v3 + 40) = 0x800000021B4E1DF0;
  return v3;
}

Swift::String __swiftcall ShelfIDBuilder.build()()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86800, &qword_21B4D1D38);
  sub_21B429DA0();
  v0 = sub_21B4C9698();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::Void __swiftcall ShelfIDBuilder.addAttribute(_:named:)(Swift::String _, Swift::String named)
{
  v3 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  MEMORY[0x21CEF2F30](named._countAndFlagsBits, named._object);
  MEMORY[0x21CEF2F30](61, 0xE100000000000000);
  MEMORY[0x21CEF2F30](countAndFlagsBits, object);
  MEMORY[0x21CEF2F30](93, 0xE100000000000000);
  v6 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_21B36CCAC(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_21B36CCAC((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = 91;
  *(v9 + 5) = 0xE100000000000000;
  *v3 = v6;
}

PodcastsUI::ShelfIDBuilder __swiftcall ShelfIDBuilder.addingAttribute(_:named:)(Swift::String _, Swift::String named)
{
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v5 = _._object;
  v6 = _._countAndFlagsBits;
  v10.components._rawValue = v2;

  v7._countAndFlagsBits = v6;
  v7._object = v5;
  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  ShelfIDBuilder.addAttribute(_:named:)(v7, v8);
  return v10;
}

uint64_t ShelfIDBuilder.addingAttribute<A>(_:named:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_21B4CA588();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  v13._countAndFlagsBits = a2;
  v13._object = a3;
  ShelfIDBuilder.addAttribute(_:named:)(v12, v13);

  return a4;
}

{
  sub_21B4C98C8();

  v9._countAndFlagsBits = a2;
  v9._object = a3;
  ShelfIDBuilder.addAttribute(_:named:)(v11, v9);

  return a4;
}

uint64_t EpisodeLimitRecommendation.init(episodeLimit:reclaimedSpace:episodesDeleted:spaceDistribution:osVersion:restoreToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  v17 = type metadata accessor for EpisodeLimitRecommendation(0);
  v18 = v17[5];
  v19 = sub_21B4C6188();
  (*(*(v19 - 8) + 32))(&a9[v18], a2, v19);
  *&a9[v17[6]] = a3;
  v20 = v17[7];
  v21 = sub_21B4C6AC8();
  result = (*(*(v21 - 8) + 32))(&a9[v20], a4, v21);
  v23 = &a9[v17[8]];
  *v23 = a5;
  *(v23 + 1) = a6;
  v24 = &a9[v17[9]];
  *v24 = a7;
  *(v24 + 1) = a8;
  return result;
}

uint64_t EpisodeLimitRecommendation.reclaimedSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EpisodeLimitRecommendation(0) + 20);
  v4 = sub_21B4C6188();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EpisodeLimitRecommendation.spaceDistribution.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EpisodeLimitRecommendation(0) + 28);
  v4 = sub_21B4C6AC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EpisodeLimitRecommendation.osVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for EpisodeLimitRecommendation(0) + 32));

  return v1;
}

uint64_t EpisodeLimitRecommendation.restoreToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for EpisodeLimitRecommendation(0) + 36));

  return v1;
}

Swift::Void __swiftcall EpisodeLimitRecommendation.markAsIgnored(in:)(NSUserDefaults in)
{
  isa = in.super.isa;
  v2 = sub_21B4C6188();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodeLimitRecommendation(0);
  sub_21B4C6AB8();
  v6 = sub_21B4C6168();
  (*(v3 + 8))(v5, v2);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    [(objc_class *)isa setInteger:v6 forKey:*MEMORY[0x277D3DD10]];
    v7 = sub_21B4C96C8();
    [(objc_class *)isa setObject:v7 forKey:*MEMORY[0x277D3DD20]];

    v8 = sub_21B4C96C8();
    [(objc_class *)isa setObject:v8 forKey:*MEMORY[0x277D3DD28]];

    if (qword_2811FD1D0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88228, &qword_21B4D9210);
  __swift_project_value_buffer(v9, qword_2811FD1D8);
  sub_21B4C8728();
  v10 = sub_21B4C96C8();

  [(objc_class *)isa removeObjectForKey:v10];

  if (qword_2811FD1F8 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88230, &qword_21B4D9218);
  __swift_project_value_buffer(v11, qword_2811FD200);
  sub_21B4C8728();
  v12 = sub_21B4C96C8();

  [(objc_class *)isa removeObjectForKey:v12];
}

uint64_t EpisodeLimitSuggestion.init(retentionPolicy:condition:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t EpisodeLimitSuggestion.DisplayCondition.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x726576656ELL;
  v2 = 0x65726F74736572;
  if (a1 != 2)
  {
    v2 = 0x65646172677075;
  }

  if (a1)
  {
    v1 = 0x737961776C61;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21B482C38(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x726576656ELL;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0x65726F74736572;
  if (v3 != 2)
  {
    v5 = 0x65646172677075;
  }

  v6 = 0x737961776C61;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v6 = 0x726576656ELL;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v3 <= 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v9 = 0xE500000000000000;
  v10 = 0x65726F74736572;
  if (*a2 != 2)
  {
    v10 = 0x65646172677075;
  }

  if (*a2)
  {
    v2 = 0x737961776C61;
    v9 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (*a2 <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21B4CA608();
  }

  return v13 & 1;
}

uint64_t sub_21B482D70()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

double sub_21B482E2C(uint64_t a1)
{
  sub_21B4C9658();

  return result;
}

uint64_t sub_21B482ED4(uint64_t a1)
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

unint64_t sub_21B482F8C@<X0>(Swift::String *a1@<X0>, PodcastsUI::EpisodeLimitSuggestion::DisplayCondition_optional *a2@<X8>)
{
  result = _s10PodcastsUI22EpisodeLimitSuggestionV16DisplayConditionO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_21B482FBC(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726576656ELL;
  v4 = 0x65726F74736572;
  if (*v1 != 2)
  {
    v4 = 0x65646172677075;
  }

  if (*v1)
  {
    v3 = 0x737961776C61;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

void sub_21B4830E4(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_21B48B5A0(a2, a3);
  if (!v3)
  {
    *a1 = v5;
  }
}

uint64_t sub_21B483110()
{
  if (*v0)
  {
    return 0x6F697469646E6F63;
  }

  else
  {
    return 0x6F69746E65746572;
  }
}

void sub_21B48315C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746E65746572 && a2 == 0xEF7963696C6F506ELL;
  if (v6 || (sub_21B4CA608() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21B4CA608();

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

uint64_t sub_21B483254(uint64_t a1)
{
  v2 = sub_21B4839D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B483290(uint64_t a1)
{
  v2 = sub_21B4839D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EpisodeLimitSuggestion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88238, &qword_21B4D9280);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B4839D4();
  sub_21B4CA798();
  v15 = v8;
  v14 = 0;
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_21B3AB2D4(&qword_2811FCC98, MEMORY[0x277D3DA28]);
  sub_21B4CA558();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_21B483A28();
    sub_21B4CA558();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EpisodeLimitSuggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88248, &qword_21B4D9288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B4839D4();
  sub_21B4CA778();
  if (!v2)
  {
    type metadata accessor for MTPodcastEpisodeLimit(0);
    v12[15] = 0;
    sub_21B3AB2D4(&qword_2811FCC90, MEMORY[0x277D3DA30]);
    sub_21B4CA538();
    v9 = v13;
    v12[13] = 1;
    sub_21B483A7C();
    sub_21B4CA538();
    (*(v6 + 8))(v8, v5);
    v10 = v12[14];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EpisodeLimitSuggestion.description.getter()
{
  v1 = *(v0 + 8);
  sub_21B4CA338();
  MEMORY[0x21CEF2F30](0xD000000000000028, 0x800000021B4E1E10);
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_21B4CA478();
  MEMORY[0x21CEF2F30](0x7469646E6F63202CLL, 0xED0000203A6E6F69);
  v2 = 0xE500000000000000;
  v3 = 0x726576656ELL;
  v4 = 0x65726F74736572;
  if (v1 != 2)
  {
    v4 = 0x65646172677075;
  }

  if (v1)
  {
    v3 = 0x737961776C61;
    v2 = 0xE600000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v1 <= 1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  MEMORY[0x21CEF2F30](v5, v6);

  MEMORY[0x21CEF2F30](41, 0xE100000000000000);
  return 0;
}

uint64_t EpisodeLimitSuggestion.debugDescription.getter()
{
  v1 = *(v0 + 8);
  sub_21B4CA338();
  MEMORY[0x21CEF2F30](0xD00000000000002ELL, 0x800000021B4E1E40);
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_21B4CA478();
  MEMORY[0x21CEF2F30](0xD000000000000011, 0x800000021B4E1E70);
  v2 = 0xE500000000000000;
  v3 = 0x726576656ELL;
  v4 = 0x65726F74736572;
  if (v1 != 2)
  {
    v4 = 0x65646172677075;
  }

  if (v1)
  {
    v3 = 0x737961776C61;
    v2 = 0xE600000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v1 <= 1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  MEMORY[0x21CEF2F30](v5, v6);

  MEMORY[0x21CEF2F30](32010, 0xE200000000000000);
  return 0;
}

unint64_t _s10PodcastsUI22EpisodeLimitSuggestionV16DisplayConditionO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B4CA518();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21B4839D4()
{
  result = qword_2811FF008[0];
  if (!qword_2811FF008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811FF008);
  }

  return result;
}

unint64_t sub_21B483A28()
{
  result = qword_27CD88240;
  if (!qword_27CD88240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88240);
  }

  return result;
}

unint64_t sub_21B483A7C()
{
  result = qword_2811FEFE8;
  if (!qword_2811FEFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FEFE8);
  }

  return result;
}

unint64_t sub_21B483AD4()
{
  result = qword_27CD88250;
  if (!qword_27CD88250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88250);
  }

  return result;
}

unint64_t sub_21B483B4C()
{
  result = qword_27CD88258;
  if (!qword_27CD88258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88258);
  }

  return result;
}

unint64_t sub_21B483BA4()
{
  result = qword_2811FEFF8;
  if (!qword_2811FEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FEFF8);
  }

  return result;
}

unint64_t sub_21B483BFC()
{
  result = qword_2811FF000;
  if (!qword_2811FF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FF000);
  }

  return result;
}

unint64_t sub_21B483C50()
{
  result = qword_2811FEFF0;
  if (!qword_2811FEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FEFF0);
  }

  return result;
}

uint64_t LazyDate.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyDate.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a1;
  v6[1] = a2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C60, &unk_21B4D66A8);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_21B45F244(v6, v7 + *(*v7 + *MEMORY[0x277D841D0] + 16));
  return v7;
}

uint64_t LazyDate.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for LazyDate.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B4C5858();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C60, &unk_21B4D66A8);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_21B45F244(v4, v7 + *(*v7 + *MEMORY[0x277D841D0] + 16));
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t sub_21B483F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[2] = a1;
  v18[3] = a2;
  v18[0] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538, &qword_21B4D6940);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_21B4C8778();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21B4C8768();
  v11 = result;
  v12 = *(result + 16);
  if (v12)
  {
    v13 = 0;
    v18[1] = v7 + 16;
    while (v13 < *(v11 + 16))
    {
      (*(v7 + 16))(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v6);
      sub_21B4C8748();
      (*(v7 + 8))(v9, v6);
      v14 = sub_21B4C5858();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v5, 1, v14) != 1)
      {

        v17 = v18[0];
        (*(v15 + 32))(v18[0], v5, v14);
        return (*(v15 + 56))(v17, 0, 1, v14);
      }

      ++v13;
      result = sub_21B3F2D94(v5, &qword_27CD87538, &qword_21B4D6940);
      if (v12 == v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v16 = sub_21B4C5858();
    return (*(*(v16 - 8) + 56))(v18[0], 1, 1, v16);
  }

  return result;
}

uint64_t static LazyDate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for LazyDate.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_21B4C61A8();
  sub_21B4C61A8();
  v8 = _s10PodcastsUI8LazyDateV5StateO2eeoiySbAE_AEtFZ_0(v7, v4);
  sub_21B37541C(v4);
  sub_21B37541C(v7);
  return v8 & 1;
}

uint64_t sub_21B48432C(void *a1, uint64_t *a2)
{
  v2 = type metadata accessor for LazyDate.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_21B4C61A8();
  sub_21B4C61A8();
  v8 = _s10PodcastsUI8LazyDateV5StateO2eeoiySbAE_AEtFZ_0(v7, v4);
  sub_21B37541C(v4);
  sub_21B37541C(v7);
  return v8 & 1;
}

void *sub_21B484430@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21B484DC4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t LazyDate.encode(to:)(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538, &qword_21B4D6940);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_21B4C8778();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B4C5858();
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LazyDate.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B4CA788();
  sub_21B4C61A8();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v15 = v14;
    v16 = v26;
    (*(v26 + 32))(v11, v15, v9);
    v18 = v24;
    v17 = v25;
    (*(v24 + 104))(v8, *MEMORY[0x277D21D40], v25);
    (*(v16 + 16))(v5, v11, v9);
    (*(v16 + 56))(v5, 0, 1, v9);
    v19 = sub_21B4C8758();
    v21 = v20;
    sub_21B3F2D94(v5, &qword_27CD87538, &qword_21B4D6940);
    (*(v18 + 8))(v8, v17);
    v28 = v19;
    v29 = v21;
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD869C0, &unk_21B4D2690);
    sub_21B484F9C();
    sub_21B4CA638();
    (*(v16 + 8))(v11, v9);
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_21B4CA628();
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

void sub_21B484834(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_21B48BA58(a2, a3);
  if (!v3)
  {
    *a1 = v5;
  }
}

uint64_t Date.lazy.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LazyDate.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B4C5858();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, v1, v5, v7);
  (v10)(v4, v9, v5);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C60, &unk_21B4D66A8);
  v11 = swift_allocObject();
  *(v11 + ((*(*v11 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_21B45F244(v4, v11 + *(*v11 + *MEMORY[0x277D841D0] + 16));
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t _s10PodcastsUI8LazyDateV5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C5858();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LazyDate.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v30 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (&v30 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88268, &unk_21B4D9728);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - v17;
  v20 = (&v30 + *(v19 + 56) - v17);
  sub_21B37527C(a1, &v30 - v17);
  sub_21B37527C(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21B37527C(v18, v15);
    v23 = *v15;
    v22 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_4:
      if (v23 == *v20 && v22 == v20[1])
      {
      }

      else
      {
        v25 = sub_21B4CA608();

        if ((v25 & 1) == 0)
        {
          sub_21B37541C(v18);
LABEL_16:
          v27 = 0;
          return v27 & 1;
        }
      }

      sub_21B37541C(v18);
      v27 = 1;
      return v27 & 1;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21B37527C(v18, v12);
    v23 = *v12;
    v22 = v12[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_4;
    }

LABEL_11:

LABEL_15:
    sub_21B3F2D94(v18, &qword_27CD88268, &unk_21B4D9728);
    goto LABEL_16;
  }

  sub_21B37527C(v18, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v31 + 8))(v9, v4);
    goto LABEL_15;
  }

  v26 = v31;
  (*(v31 + 32))(v6, v20, v4);
  v27 = sub_21B4C5828();
  v28 = *(v26 + 8);
  v28(v6, v4);
  v28(v9, v4);
  sub_21B37541C(v18);
  return v27 & 1;
}

void *sub_21B484DC4(void *a1)
{
  v3 = type metadata accessor for LazyDate.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B4CA768();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    *v5 = sub_21B4CA618();
    v5[1] = v8;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C60, &unk_21B4D66A8);
    v6 = swift_allocObject();
    *(v6 + ((*(*v6 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_21B45F244(v5, v6 + *(*v6 + *MEMORY[0x277D841D0] + 16));
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

unint64_t sub_21B484F9C()
{
  result = qword_27CD88260;
  if (!qword_27CD88260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD869C0, &unk_21B4D2690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88260);
  }

  return result;
}

double ForegroundSessionPreconnecter.preconnect(objectGraph:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_21B4C9A28();
  v5 = sub_21B4C9A58();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_21B438370(0, 0, v4, &unk_21B4D9740, v6);

  return result;
}

uint64_t sub_21B485154()
{
  v1 = sub_21B4C8F28();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_21B4C9208();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_21B4852C4;

  return MEMORY[0x28217F228](v3, v2, v2);
}

uint64_t sub_21B4852C4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21B4854E0;
  }

  else
  {
    v2 = sub_21B4853D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B4853D8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_21B4C70C8();
  sub_21B4C8F18();
  v8 = sub_21B4C96C8();
  sub_21B4C8F08();

  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21B4854E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B485550()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21B40998C;

  return sub_21B485154();
}

uint64_t StoreResponseDelegateError.hashValue.getter()
{
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](0);
  return sub_21B4CA738();
}

id UIStoreResponseDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIStoreResponseDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIStoreResponseDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UIStoreResponseDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIStoreResponseDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B485A64(void (*a1)(void, void *), uint64_t a2, void *a3)
{
  v6 = [objc_opt_self() mt_rootViewController];
  if (v6 && (v7 = v6, v8 = [v6 mt_topViewController], v7, v8))
  {
    v9 = [a3 account];
    if (v9)
    {
      v10 = v9;
      if ([v9 ams_isLocalAccount])
      {
        [a3 setAccount_];
      }
    }

    v11 = [objc_allocWithZone(MEMORY[0x277CEE870]) initWithRequest:a3 presentingViewController:v8];
    v12 = [v11 performAuthentication];
    v15[4] = a1;
    v15[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_21B486538;
    v15[3] = &block_descriptor_20;
    v13 = _Block_copy(v15);

    [v12 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    sub_21B486474();
    v14 = swift_allocError();
    a1(0, v14);
  }
}

void sub_21B485C5C(void (*a1)(void, void *), uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() mt_rootViewController];
  if (v6 && (v7 = v6, v8 = [v6 mt_topViewController], v7, v8))
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CEE860]) initWithRequest:a3 presentingViewController:v8];
    v10 = [v9 present];

    v13[4] = a1;
    v13[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_21B486538;
    v13[3] = &block_descriptor_38;
    v11 = _Block_copy(v13);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_21B486474();
    v12 = swift_allocError();
    a1(0, v12);
  }
}

void sub_21B485E0C(void (*a1)(void, void *), uint64_t a2, void *a3)
{
  v6 = [objc_opt_self() mt_rootViewController];
  if (v6 && (v7 = v6, v8 = [v6 mt_topViewController], v7, v8))
  {
    v9 = [objc_opt_self() sharedInstance];
    v10 = objc_allocWithZone(MEMORY[0x277CEE8D0]);
    v11 = a3;
    v12 = [v10 initWithRequest:v11 bag:v9 presentingViewController:v8];

    v13 = [v12 presentEngagement];
    v16[4] = a1;
    v16[5] = a2;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_21B486538;
    v16[3] = &block_descriptor_29;
    v14 = _Block_copy(v16);

    [v13 addFinishBlock_];
    _Block_release(v14);
  }

  else
  {
    sub_21B486474();
    v15 = swift_allocError();
    a1(0, v15);
  }
}

uint64_t sub_21B486094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v21 = a2;
  v8 = sub_21B4C8208();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21B4C8248();
  v12 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B375E2C();
  v15 = sub_21B4C9E08();
  v16 = swift_allocObject();
  v17 = v22;
  v16[2] = v21;
  v16[3] = a3;
  v16[4] = a1;
  aBlock[4] = v17;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);

  v19 = a1;

  sub_21B4C8228();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21B3F8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0, &qword_21B4D2AD0);
  sub_21B428450();
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v14, v11, v18);
  _Block_release(v18);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v24);
}

unint64_t sub_21B486324()
{
  result = qword_27CD88270;
  if (!qword_27CD88270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88270);
  }

  return result;
}

uint64_t dispatch thunk of UIStoreResponseDelegate.amsurlSession(_:task:handle:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x50))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

unint64_t sub_21B486474()
{
  result = qword_27CD88348;
  if (!qword_27CD88348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88348);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{

  return swift_deallocObject();
}

uint64_t static PreferenceKey<A>.debugEpisodeLimitTipLevel.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811FD1D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88228, &qword_21B4D9210);
  v3 = __swift_project_value_buffer(v2, qword_2811FD1D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static PreferenceKey<A>.debugEpisodeLimitDisplayCondition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811FD1F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88230, &qword_21B4D9218);
  v3 = __swift_project_value_buffer(v2, qword_2811FD200);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21B4866A4(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  sub_21B476F48(a1, v15);
  v6 = v16;
  if (v16)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_21B4CA5F8();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v12 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21B4C88C8();
  v13 = sub_21B4C96C8();

  [v5 setObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  sub_21B3F9F3C(a1);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_21B48683C()
{

  return swift_deallocClassInstance();
}

void (*sub_21B486878(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x98uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 144) = v2;
  sub_21B3F821C(a2, v5);
  v7 = *(v2 + 16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21B4C88C8();
  v8 = sub_21B4C96C8();

  v9 = [v7 objectForKey_];

  if (v9)
  {
    sub_21B4CA278();
    swift_unknownObjectRelease();
  }

  else
  {
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
  }

  return sub_21B486988;
}

void sub_21B486988(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_21B476F48(v2 + 80, v2 + 112);
    sub_21B36D484(v2, v2 + 40);
    sub_21B4866A4(v2 + 112, (v2 + 40));
    sub_21B3F9F3C(v2 + 80);
  }

  else
  {
    sub_21B4866A4(v2 + 80, v2);
  }

  free(v2);
}

void sub_21B486A04(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B4C88C8();
  v3 = sub_21B4C96C8();

  [v2 removeObjectForKey_];
}

uint64_t ExplicitContentPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD875D0, &qword_21B4D9920);
  v1 = swift_allocObject();
  *(v1 + 20) = 0;
  *(v1 + 16) = 2;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t ExplicitTreatment.hashValue.getter(char a1)
{
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](a1 & 1);
  return sub_21B4CA738();
}

uint64_t ExplicitTreatment.symbol.getter(char a1)
{
  if (a1)
  {
    return 11768802;
  }

  else
  {
    return 3028656112;
  }
}

uint64_t ExplicitTreatment.symbolName.getter(char a1)
{
  if (a1)
  {
    return 0x6C637269632E3931;
  }

  else
  {
    return 0x6572617571732E65;
  }
}

uint64_t ExplicitContentPresenter.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD875D0, &qword_21B4D9920);
  v1 = swift_allocObject();
  *(v1 + 20) = 0;
  *(v1 + 16) = 2;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t ExplicitContentPresenter.treatment.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  sub_21B3AA934((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 20));
  return v3;
}

uint64_t ExplicitContentPresenter.symbolName.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  sub_21B3AA934((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 20));
  if (v3)
  {
    return 0x6C637269632E3931;
  }

  else
  {
    return 0x6572617571732E65;
  }
}

uint64_t ExplicitContentPresenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21B486D90()
{
  result = qword_27CD88350;
  if (!qword_27CD88350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88350);
  }

  return result;
}

void StorefrontLocalePresenter.locale.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_21B486EB4(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_21B486EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B4C5918();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD875C0, &unk_21B4D9A40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_21B487310(a1, &v15 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_21B3F2D94(a1, &qword_27CD875C0, &unk_21B4D9A40);
    sub_21B3F2D94(v10, &qword_27CD875C0, &unk_21B4D9A40);
    v11 = [objc_opt_self() sharedInstance];
    if (qword_27CD86478 != -1)
    {
      swift_once();
    }

    if ([v11 syncValueForKey_])
    {
      sub_21B4CA278();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19 = v17;
    v20 = v18;
    if (*(&v18 + 1))
    {
      if (swift_dynamicCast())
      {
        v12 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v12 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_21B3F2D94(&v19, &qword_27CD86E70, &qword_21B4D8470);
    }

    if (qword_27CD86480 != -1)
    {
      swift_once();
    }

    if ([v11 syncValueForKey_])
    {
      sub_21B4CA278();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19 = v17;
    v20 = v18;
    if (*(&v18 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v13 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
LABEL_25:
          sub_21B4C5898();
LABEL_29:

          (*(v5 + 16))(a1, v7, v4);
          (*(v5 + 56))(a1, 0, 1, v4);
          return (*(v5 + 32))(a2, v7, v4);
        }
      }
    }

    else
    {
      sub_21B3F2D94(&v19, &qword_27CD86E70, &qword_21B4D8470);
    }

    sub_21B4C58D8();
    goto LABEL_29;
  }

  v7 = v10;
  return (*(v5 + 32))(a2, v7, v4);
}

uint64_t StorefrontLocalePresenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21B487310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD875C0, &unk_21B4D9A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21B487380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_21B4C55C8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id UIPurchaseDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIPurchaseDelegate.init()()
{
  *&v0[OBJC_IVAR____TtC10PodcastsUI18UIPurchaseDelegate_senderWindow] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIPurchaseDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_21B487470(void *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = objc_allocWithZone(MEMORY[0x277CEE660]);
  v5 = a1;
  v6 = [v4 initWithPurchase:v5 bag:v3];

  [v6 setDelegate_];
  return v6;
}

id UIPurchaseDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIPurchaseDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21B48755C(void *a1)
{
  v3 = *v1;
  v4 = [objc_opt_self() sharedInstance];
  v5 = objc_allocWithZone(MEMORY[0x277CEE660]);
  v6 = a1;
  v7 = [v5 initWithPurchase:v6 bag:v4];

  [v7 setDelegate_];
  return v7;
}

double UIPurchaseDelegate.purchase(_:handle:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B4879DC(a1, a2, a3, a4, "Got authentication request for purchase with buyParams: %@", &unk_282CB8048, sub_21B487D38, sub_21B48606C);
}

{
  return sub_21B4879DC(a1, a2, a3, a4, "Got dialog request for purchase with buyParams: %@", &unk_282CB8020, sub_21B487D10, sub_21B48601C);
}

{
  return sub_21B4879DC(a1, a2, a3, a4, "Got engagementRequest request for purchase with buyParams: %@", &unk_282CB7FF8, sub_21B487D38, sub_21B486044);
}

double sub_21B4879DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, void (*a8)(void, void, void, __n128), ...)
{
  v32 = a5;
  v33 = a6;
  v34 = a3;
  v13 = sub_21B4C7558();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B387C68();
  sub_21B4CA178();
  v17 = a1;
  v18 = sub_21B4C7538();
  v19 = sub_21B4C9D08();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = a8;
    v31 = a7;
    v21 = v20;
    v22 = a2;
    v23 = swift_slowAlloc();
    *v21 = 138412290;
    v24 = [v17 buyParams];
    *(v21 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&dword_21B365000, v18, v19, v32, v21, 0xCu);
    sub_21B4508D4(v23);
    v25 = v23;
    a2 = v22;
    MEMORY[0x21CEF5710](v25, -1, -1);
    v26 = v21;
    a8 = v30;
    a7 = v31;
    MEMORY[0x21CEF5710](v26, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v27 = swift_allocObject();
  *(v27 + 16) = v34;
  *(v27 + 24) = a4;

  (a8)(a2, a7, v27);

  return result;
}

uint64_t dispatch thunk of UIPurchaseDelegate.handle(_:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
}

uint64_t SearchFiltersTracker.scope.getter()
{
  sub_21B4C61A8();

  return v1;
}

uint64_t SearchFiltersTracker.copy()()
{
  sub_21B4C61A8();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87830, &qword_21B4D9AD0);
  v1 = swift_allocObject();
  *(v1 + 36) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v0 + 16) = v1;
  return v0;
}

Swift::Void __swiftcall SearchFiltersTracker.select(group:)(PodcastsUI::SearchResultsGroupID_optional group)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 36));
  sub_21B487EC0((v2 + 16));
  os_unfair_lock_unlock((v2 + 36));
}

void sub_21B487EC0(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

Swift::Void __swiftcall SearchFiltersTracker.select(scope:)(PodcastsUI::SearchScope_optional scope)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 36));
  *(v3 + 32) = scope;

  os_unfair_lock_unlock((v3 + 36));
}

Swift::Void __swiftcall SearchFiltersTracker.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;

  *(v1 + 32) = 2;

  os_unfair_lock_unlock((v1 + 36));
}

uint64_t SearchFiltersTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21B488010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_21B48806C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t SearchOrigin.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C616E7265747865;
  v2 = 0x616D6D6F4379656BLL;
  if (a1 != 2)
  {
    v2 = 1953719668;
  }

  if (a1)
  {
    v1 = 0x73746E6968;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21B488138(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616E7265747865;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0x616D6D6F4379656BLL;
  v6 = 0xEA0000000000646ELL;
  if (v3 != 2)
  {
    v5 = 1953719668;
    v6 = 0xE400000000000000;
  }

  v7 = 0x73746E6968;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v7 = 0x6C616E7265747865;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xE800000000000000;
  v11 = 0x616D6D6F4379656BLL;
  v12 = 0xEA0000000000646ELL;
  if (*a2 != 2)
  {
    v11 = 1953719668;
    v12 = 0xE400000000000000;
  }

  if (*a2)
  {
    v2 = 0x73746E6968;
    v10 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_21B4CA608();
  }

  return v15 & 1;
}

uint64_t sub_21B48826C()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

double sub_21B488328(uint64_t a1)
{
  sub_21B4C9658();

  return result;
}

uint64_t sub_21B4883D0(uint64_t a1)
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

unint64_t sub_21B488488@<X0>(Swift::String *a1@<X0>, PodcastsUI::SearchOrigin_optional *a2@<X8>)
{
  result = _s10PodcastsUI12SearchOriginO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_21B4884B8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6C616E7265747865;
  v4 = 0xEA0000000000646ELL;
  v5 = 0x616D6D6F4379656BLL;
  if (*v1 != 2)
  {
    v5 = 1953719668;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x73746E6968;
    v2 = 0xE500000000000000;
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

void sub_21B4885E0(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_21B48BEC8(a2, a3);
  if (!v3)
  {
    *a1 = v5;
  }
}

unint64_t _s10PodcastsUI12SearchOriginO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B4CA518();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21B48865C()
{
  result = qword_27CD883D0;
  if (!qword_27CD883D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD883D0);
  }

  return result;
}

unint64_t sub_21B4886C0()
{
  result = qword_281200010[0];
  if (!qword_281200010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281200010);
  }

  return result;
}

void sub_21B488714(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_21B4CA3A8();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_21B4C85C8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12, v14);
  MEMORY[0x21CEF2D10](v16);
  sub_21B48CF68();
  sub_21B4C84E8();
  if (v3)
  {
    v30 = a1;
    v31 = a2;

    *&v33 = v3;
    v17 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    if (swift_dynamicCast())
    {

      v18 = v36;
      v19 = v32;
      (*(v36 + 32))(v32, v11, v7);
      v20 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21B4D2830;
      *(v23 + 32) = swift_allocError();
      (*(v18 + 16))(v24, v19, v7);
      *v22 = MEMORY[0x277D3D6D0];
      v22[1] = v23;
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D22538], v20);
      swift_willThrow();
      (*(v13 + 8))(v31, v12);
      v25 = sub_21B4C8518();
      (*(*(v25 - 8) + 8))(v30, v25);
      (*(v18 + 8))(v19, v7);
    }

    else
    {
      (*(v13 + 8))(v31, v12);
      v28 = sub_21B4C8518();
      (*(*(v28 - 8) + 8))(v30, v28);
    }
  }

  else
  {

    (*(v13 + 8))(a2, v12);
    v26 = sub_21B4C8518();
    (*(*(v26 - 8) + 8))(a1, v26);
    v27 = v34;
    *a3 = v33;
    a3[1] = v27;
    a3[2] = v35[0];
    *(a3 + 41) = *(v35 + 9);
  }
}

void sub_21B488BA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B4CA3A8();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_21B4C85C8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v12);
  MEMORY[0x21CEF2D10](v14);
  sub_21B48CF14();
  sub_21B4C84E8();
  if (v2)
  {
    v27 = a2;
    v28 = a1;

    v30 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    if (swift_dynamicCast())
    {

      v16 = v29;
      (*(v29 + 32))(v31, v9, v5);
      v17 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21B4D2830;
      *(v20 + 32) = swift_allocError();
      v21 = v31;
      (*(v16 + 16))(v22, v31, v5);
      *v19 = MEMORY[0x277D3D908];
      v19[1] = v20;
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22538], v17);
      swift_willThrow();
      (*(v11 + 8))(v27, v10);
      v23 = sub_21B4C8518();
      (*(*(v23 - 8) + 8))(v28, v23);
      (*(v16 + 8))(v21, v5);
    }

    else
    {
      (*(v11 + 8))(v27, v10);
      v25 = sub_21B4C8518();
      (*(*(v25 - 8) + 8))(v28, v25);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v24 = sub_21B4C8518();
    (*(*(v24 - 8) + 8))(a1, v24);
  }
}

void sub_21B489018(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B4CA3A8();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_21B4C85C8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v12);
  MEMORY[0x21CEF2D10](v14);
  sub_21B48CEC0();
  sub_21B4C84E8();
  if (v2)
  {
    v27 = a2;
    v28 = a1;

    v31 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    if (swift_dynamicCast())
    {

      v16 = v29;
      (*(v29 + 32))(v30, v9, v5);
      v17 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21B4D2830;
      *(v20 + 32) = swift_allocError();
      v21 = v30;
      (*(v16 + 16))(v22, v30, v5);
      *v19 = MEMORY[0x277D3D938];
      v19[1] = v20;
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22538], v17);
      swift_willThrow();
      (*(v11 + 8))(v27, v10);
      v23 = sub_21B4C8518();
      (*(*(v23 - 8) + 8))(v28, v23);
      (*(v16 + 8))(v21, v5);
    }

    else
    {
      (*(v11 + 8))(v27, v10);
      v25 = sub_21B4C8518();
      (*(*(v25 - 8) + 8))(v28, v25);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v24 = sub_21B4C8518();
    (*(*(v24 - 8) + 8))(a1, v24);
  }
}

void sub_21B489488(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B4CA3A8();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_21B4C85C8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MTPodcastEpisodeLimit(0);
  v15 = v14;
  (*(v11 + 16))(v13, a2, v10);
  MEMORY[0x21CEF2D10](v13);
  sub_21B48CE78(&qword_2811FCC90, type metadata accessor for MTPodcastEpisodeLimit, MEMORY[0x277D3DA30]);
  sub_21B4C84E8();
  if (v2)
  {
    v28 = a2;
    v29 = a1;

    v32 = v2;
    v16 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    if (swift_dynamicCast())
    {

      v17 = v30;
      (*(v30 + 32))(v31, v9, v5);
      v27 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21B4D2830;
      *(v20 + 32) = swift_allocError();
      v21 = v31;
      (*(v17 + 16))(v22, v31, v5);
      *v19 = v15;
      v19[1] = v20;
      (*(*(v27 - 8) + 104))(v19, *MEMORY[0x277D22538]);
      swift_willThrow();
      (*(v11 + 8))(v28, v10);
      v23 = sub_21B4C8518();
      (*(*(v23 - 8) + 8))(v29, v23);
      (*(v17 + 8))(v21, v5);
    }

    else
    {
      (*(v11 + 8))(v28, v10);
      v25 = sub_21B4C8518();
      (*(*(v25 - 8) + 8))(v29, v25);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v24 = sub_21B4C8518();
    (*(*(v24 - 8) + 8))(a1, v24);
  }
}

void sub_21B48992C(uint64_t a1, uint64_t a2)
{
  v6 = sub_21B4CA3A8();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_21B4C85C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21B4C6188();
  (*(v12 + 16))(v14, a2, v11);
  MEMORY[0x21CEF2D10](v14);
  sub_21B48CE78(&qword_27CD88408, MEMORY[0x277D3D548], MEMORY[0x277D3D550]);
  sub_21B4C84E8();
  if (v3)
  {
    v30 = a2;

    v34 = v3;
    v16 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    v17 = v33;
    if (swift_dynamicCast())
    {

      (*(v32 + 32))(v31, v10, v17);
      v28 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v20 = swift_allocObject();
      v29 = a1;
      v21 = v20;
      *(v20 + 16) = xmmword_21B4D2830;
      *(v20 + 32) = swift_allocError();
      v23 = v31;
      v22 = v32;
      (*(v32 + 16))(v24, v31, v17);
      *v19 = v15;
      v19[1] = v21;
      (*(*(v28 - 8) + 104))(v19, *MEMORY[0x277D22538]);
      swift_willThrow();
      (*(v12 + 8))(v30, v11);
      v25 = sub_21B4C8518();
      (*(*(v25 - 8) + 8))(v29, v25);
      (*(v22 + 8))(v23, v17);
    }

    else
    {
      (*(v12 + 8))(v30, v11);
      v27 = sub_21B4C8518();
      (*(*(v27 - 8) + 8))(a1, v27);
    }
  }

  else
  {

    (*(v12 + 8))(a2, v11);
    v26 = sub_21B4C8518();
    (*(*(v26 - 8) + 8))(a1, v26);
  }
}

void sub_21B489DD0(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B4CA3A8();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_21B4C85C8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v12);
  MEMORY[0x21CEF2D10](v14);
  sub_21B48CE24();
  sub_21B4C84E8();
  if (v2)
  {
    v26 = a2;
    v27 = a1;

    v29 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    if (swift_dynamicCast())
    {

      v16 = v28;
      (*(v28 + 32))(v30, v9, v5);
      v17 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21B4D2830;
      *(v20 + 32) = swift_allocError();
      v21 = v30;
      (*(v16 + 16))(v22, v30, v5);
      *v19 = MEMORY[0x277D3D958];
      v19[1] = v20;
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22538], v17);
      swift_willThrow();
      (*(v11 + 8))(v26, v10);
      v23 = sub_21B4C8518();
      (*(*(v23 - 8) + 8))(v27, v23);
      (*(v16 + 8))(v21, v5);
    }

    else
    {
      (*(v11 + 8))(v26, v10);
      v25 = sub_21B4C8518();
      (*(*(v25 - 8) + 8))(v27, v25);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v24 = sub_21B4C8518();
    (*(*(v24 - 8) + 8))(a1, v24);
  }
}

void sub_21B48A2B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B4CA3A8();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_21B4C85C8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v12);
  MEMORY[0x21CEF2D10](v14);
  sub_21B48CD28();
  sub_21B4C84E8();
  if (v2)
  {
    v27 = a2;
    v28 = a1;

    v30 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    if (swift_dynamicCast())
    {

      v16 = v29;
      (*(v29 + 32))(v31, v9, v5);
      v17 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21B4D2830;
      *(v20 + 32) = swift_allocError();
      v21 = v31;
      (*(v16 + 16))(v22, v31, v5);
      *v19 = MEMORY[0x277D3D6A0];
      v19[1] = v20;
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22538], v17);
      swift_willThrow();
      (*(v11 + 8))(v27, v10);
      v23 = sub_21B4C8518();
      (*(*(v23 - 8) + 8))(v28, v23);
      (*(v16 + 8))(v21, v5);
    }

    else
    {
      (*(v11 + 8))(v27, v10);
      v25 = sub_21B4C8518();
      (*(*(v25 - 8) + 8))(v28, v25);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v24 = sub_21B4C8518();
    (*(*(v24 - 8) + 8))(a1, v24);
  }
}

void sub_21B48A760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = sub_21B4CA3A8();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = sub_21B4C85C8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a2, v14, v16);
  MEMORY[0x21CEF2D10](v18);
  a3();
  v35 = a4;
  sub_21B4C84E8();
  if (v4)
  {
    v34 = a2;

    v39 = v4;
    v19 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    v20 = v37;
    if (swift_dynamicCast())
    {

      v21 = v36;
      (*(v36 + 32))(v38, v13, v20);
      v22 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v25 = swift_allocObject();
      v33 = a1;
      v26 = v25;
      *(v25 + 16) = xmmword_21B4D2830;
      *(v25 + 32) = swift_allocError();
      v27 = v38;
      (*(v21 + 16))(v28, v38, v20);
      *v24 = v35;
      v24[1] = v26;
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D22538], v22);
      swift_willThrow();
      (*(v15 + 8))(v34, v14);
      v29 = sub_21B4C8518();
      (*(*(v29 - 8) + 8))(v33, v29);
      (*(v21 + 8))(v27, v20);
    }

    else
    {
      (*(v15 + 8))(v34, v14);
      v31 = sub_21B4C8518();
      (*(*(v31 - 8) + 8))(a1, v31);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v30 = sub_21B4C8518();
    (*(*(v30 - 8) + 8))(a1, v30);
  }
}

void sub_21B48AC7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = sub_21B4CA3A8();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = sub_21B4C85C8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a2, v14, v16);
  MEMORY[0x21CEF2D10](v18);
  a3();
  v35 = a4;
  sub_21B4C84E8();
  if (v4)
  {
    v34 = a2;

    v39 = v4;
    v19 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    v20 = v37;
    if (swift_dynamicCast())
    {

      v21 = v36;
      (*(v36 + 32))(v38, v13, v20);
      v22 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v25 = swift_allocObject();
      v33 = a1;
      v26 = v25;
      *(v25 + 16) = xmmword_21B4D2830;
      *(v25 + 32) = swift_allocError();
      v27 = v38;
      (*(v21 + 16))(v28, v38, v20);
      *v24 = v35;
      v24[1] = v26;
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D22538], v22);
      swift_willThrow();
      (*(v15 + 8))(v34, v14);
      v29 = sub_21B4C8518();
      (*(*(v29 - 8) + 8))(v33, v29);
      (*(v21 + 8))(v27, v20);
    }

    else
    {
      (*(v15 + 8))(v34, v14);
      v31 = sub_21B4C8518();
      (*(*(v31 - 8) + 8))(a1, v31);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v30 = sub_21B4C8518();
    (*(*(v30 - 8) + 8))(a1, v30);
  }
}

void sub_21B48B0FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B4CA3A8();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_21B4C85C8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21B4C7168();
  (*(v11 + 16))(v13, a2, v10);
  MEMORY[0x21CEF2D10](v13);
  sub_21B48CE78(&qword_27CD883F0, MEMORY[0x277D3D8F0], MEMORY[0x277D3D8F8]);
  sub_21B4C84E8();
  if (v2)
  {
    v27 = a2;
    v28 = a1;

    v31 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    if (swift_dynamicCast())
    {

      v16 = v29;
      (*(v29 + 32))(v30, v9, v5);
      v26 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21B4D2830;
      *(v19 + 32) = swift_allocError();
      v20 = v30;
      (*(v16 + 16))(v21, v30, v5);
      *v18 = v14;
      v18[1] = v19;
      (*(*(v26 - 8) + 104))(v18, *MEMORY[0x277D22538]);
      swift_willThrow();
      (*(v11 + 8))(v27, v10);
      v22 = sub_21B4C8518();
      (*(*(v22 - 8) + 8))(v28, v22);
      (*(v16 + 8))(v20, v5);
    }

    else
    {
      (*(v11 + 8))(v27, v10);
      v24 = sub_21B4C8518();
      (*(*(v24 - 8) + 8))(v28, v24);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v23 = sub_21B4C8518();
    (*(*(v23 - 8) + 8))(a1, v23);
  }
}

void sub_21B48B5D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21B4CA3A8();
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_21B4C85C8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12, v14);
  MEMORY[0x21CEF2D10](v16);
  sub_21B48CB84();
  sub_21B4C84E8();
  if (v3)
  {
    v30 = a1;
    v31 = a2;

    v33 = v3;
    v17 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    if (swift_dynamicCast())
    {

      v18 = v35;
      v19 = v32;
      (*(v35 + 32))(v32, v11, v7);
      v20 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21B4D2830;
      *(v23 + 32) = swift_allocError();
      (*(v18 + 16))(v24, v19, v7);
      *v22 = &type metadata for EpisodeLimitSuggestion;
      v22[1] = v23;
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D22538], v20);
      swift_willThrow();
      (*(v13 + 8))(v31, v12);
      v25 = sub_21B4C8518();
      (*(*(v25 - 8) + 8))(v30, v25);
      (*(v18 + 8))(v19, v7);
    }

    else
    {
      (*(v13 + 8))(v31, v12);
      v28 = sub_21B4C8518();
      (*(*(v28 - 8) + 8))(v30, v28);
    }
  }

  else
  {

    (*(v13 + 8))(a2, v12);
    v26 = sub_21B4C8518();
    (*(*(v26 - 8) + 8))(a1, v26);
    v27 = v34;
    *a3 = v33;
    *(a3 + 8) = v27;
  }
}

void sub_21B48BA58(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B4CA3A8();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_21B4C85C8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v12);
  MEMORY[0x21CEF2D10](v14);
  sub_21B48CB30();
  sub_21B4C84E8();
  if (v2)
  {
    v26 = a2;
    v27 = a1;

    v30 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    if (swift_dynamicCast())
    {

      v16 = v28;
      (*(v28 + 32))(v29, v9, v5);
      v17 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21B4D2830;
      *(v20 + 32) = swift_allocError();
      v21 = v29;
      (*(v16 + 16))(v22, v29, v5);
      *v19 = &type metadata for LazyDate;
      v19[1] = v20;
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22538], v17);
      swift_willThrow();
      (*(v11 + 8))(v26, v10);
      v23 = sub_21B4C8518();
      (*(*(v23 - 8) + 8))(v27, v23);
      (*(v16 + 8))(v21, v5);
    }

    else
    {
      (*(v11 + 8))(v26, v10);
      v25 = sub_21B4C8518();
      (*(*(v25 - 8) + 8))(v27, v25);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v24 = sub_21B4C8518();
    (*(*(v24 - 8) + 8))(a1, v24);
  }
}

void sub_21B48BEFC(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B4CA3A8();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_21B4C85C8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v12);
  MEMORY[0x21CEF2D10](v14);
  sub_21B48CA88();
  sub_21B4C84E8();
  if (v2)
  {
    v27 = a2;
    v28 = a1;

    v30 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    if (swift_dynamicCast())
    {

      v16 = v29;
      (*(v29 + 32))(v31, v9, v5);
      v17 = sub_21B4C94E8();
      sub_21B48CE78(&qword_2811FCE98, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD883E8, &qword_21B4D9E90);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21B4D2830;
      *(v20 + 32) = swift_allocError();
      v21 = v31;
      (*(v16 + 16))(v22, v31, v5);
      *v19 = &type metadata for SearchResultsGroupID;
      v19[1] = v20;
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22538], v17);
      swift_willThrow();
      (*(v11 + 8))(v27, v10);
      v23 = sub_21B4C8518();
      (*(*(v23 - 8) + 8))(v28, v23);
      (*(v16 + 8))(v21, v5);
    }

    else
    {
      (*(v11 + 8))(v27, v10);
      v25 = sub_21B4C8518();
      (*(*(v25 - 8) + 8))(v28, v25);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v24 = sub_21B4C8518();
    (*(*(v24 - 8) + 8))(a1, v24);
  }
}

void *sub_21B48C374@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_21B48C380()
{
  sub_21B4CA6E8();
  sub_21B4C9658();
  return sub_21B4CA738();
}

uint64_t sub_21B48C3D4(uint64_t a1)
{
  sub_21B4CA6E8();
  sub_21B4C9658();
  return sub_21B4CA738();
}

uint64_t sub_21B48C41C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B4CA608();
  }
}

unint64_t SearchResultsGroupID.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_21B4CA338();

  MEMORY[0x21CEF2F30](a1, a2);
  MEMORY[0x21CEF2F30](10530, 0xE200000000000000);
  return 0xD000000000000020;
}

unint64_t sub_21B48C4DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21B4CA338();

  MEMORY[0x21CEF2F30](v1, v2);
  MEMORY[0x21CEF2F30](10530, 0xE200000000000000);
  return 0xD000000000000020;
}

uint64_t sub_21B48C59C()
{
  v1 = *v0;

  return v1;
}

void *SearchResultsGroupID.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B4CA768();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_21B4CA618();
    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_21B48C690@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B4CA768();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = sub_21B4CA618();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v9);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t SearchResultsGroupID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B4CA788();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_21B4CA628();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_21B48C7F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B4CA788();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21B4CA628();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_21B48C890@<X0>(void *a2@<X8>)
{
  result = swift_dynamicCast();
  v4 = v6;
  v5 = v7;
  if (!result)
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

double sub_21B48C8F0@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  a1[3] = MEMORY[0x277D837D0];
  *a1 = v3;
  a1[1] = v2;

  return result;
}

void sub_21B48C908(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_21B48BEFC(a1, a2);
  if (!v3)
  {
    *a3 = v5;
    a3[1] = v6;
  }
}

unint64_t sub_21B48C9A0()
{
  result = qword_27CD883D8;
  if (!qword_27CD883D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD883D8);
  }

  return result;
}

uint64_t sub_21B48C9F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21B48CA3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B48CA88()
{
  result = qword_27CD883E0;
  if (!qword_27CD883E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD883E0);
  }

  return result;
}

unint64_t sub_21B48CADC()
{
  result = qword_281200008;
  if (!qword_281200008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281200008);
  }

  return result;
}

unint64_t sub_21B48CB30()
{
  result = qword_2811FD848[0];
  if (!qword_2811FD848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811FD848);
  }

  return result;
}

unint64_t sub_21B48CB84()
{
  result = qword_2811FEFE0;
  if (!qword_2811FEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FEFE0);
  }

  return result;
}

unint64_t sub_21B48CBD8()
{
  result = qword_2811FD448;
  if (!qword_2811FD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD448);
  }

  return result;
}

unint64_t sub_21B48CC2C()
{
  result = qword_2811FD5F0;
  if (!qword_2811FD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD5F0);
  }

  return result;
}

unint64_t sub_21B48CC80()
{
  result = qword_2811FD520;
  if (!qword_2811FD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD520);
  }

  return result;
}

unint64_t sub_21B48CCD4()
{
  result = qword_2811FD5F8;
  if (!qword_2811FD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD5F8);
  }

  return result;
}

unint64_t sub_21B48CD28()
{
  result = qword_2811FD528;
  if (!qword_2811FD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD528);
  }

  return result;
}

unint64_t sub_21B48CD7C()
{
  result = qword_2811FD5B0;
  if (!qword_2811FD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD5B0);
  }

  return result;
}

unint64_t sub_21B48CDD0()
{
  result = qword_27CD883F8;
  if (!qword_27CD883F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD883F8);
  }

  return result;
}

unint64_t sub_21B48CE24()
{
  result = qword_27CD88400;
  if (!qword_27CD88400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88400);
  }

  return result;
}

uint64_t sub_21B48CE78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21B48CEC0()
{
  result = qword_2811FD450;
  if (!qword_2811FD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD450);
  }

  return result;
}

unint64_t sub_21B48CF14()
{
  result = qword_2811FD478;
  if (!qword_2811FD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD478);
  }

  return result;
}

unint64_t sub_21B48CF68()
{
  result = qword_27CD88410;
  if (!qword_27CD88410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88410);
  }

  return result;
}

PodcastsUI::SearchScope_optional __swiftcall SearchScope.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_21B4CA518();

  if (v1 == 1)
  {
    v2.value = PodcastsUI_SearchScope_store;
  }

  else
  {
    v2.value = PodcastsUI_SearchScope_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_21B48D040(char *a2@<X8>)
{
  v3 = sub_21B4CA518();

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

void sub_21B48D0A0(uint64_t *a1@<X8>)
{
  v2 = 0x7972617262696CLL;
  if (*v1)
  {
    v2 = 0x65726F7473;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21B48D18C()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

double sub_21B48D20C(uint64_t a1)
{
  sub_21B4C9658();

  return result;
}

uint64_t sub_21B48D278(uint64_t a1)
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

id sub_21B48D2F4()
{
  result = [objc_opt_self() supportsLocalLibrary];
  byte_27CD88418 = result ^ 1;
  return result;
}

uint64_t static SearchScope.default.getter()
{
  if (qword_27CD864F0 != -1)
  {
    swift_once();
  }

  return byte_27CD88418;
}

double sub_21B48D37C@<D0>(void *a1@<X8>)
{
  if (qword_2812000C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_2812000D0;

  return result;
}

PodcastsUI::SearchScope __swiftcall SearchScope.init(index:)(Swift::Int index)
{
  if (qword_2812000C8 == -1)
  {
    if (index < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = index;
    swift_once();
    index = v2;
    if (v2 < 0)
    {
      goto LABEL_6;
    }
  }

  if (*(off_2812000D0 + 2) > index)
  {
    v1 = off_2812000D0 + index + 32;
    return *v1;
  }

LABEL_6:
  if (qword_27CD864F0 != -1)
  {
    swift_once();
  }

  v1 = &byte_27CD88418;
  return *v1;
}

unint64_t SearchScope.index.getter(uint64_t a1)
{
  if (qword_2812000C8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v1 = off_2812000D0;
    v2 = *(off_2812000D0 + 2);
    if (!v2)
    {
      break;
    }

    v3 = 0;
    v4 = off_2812000D0 + 32;
    if (a1)
    {
      v5 = 0x65726F7473;
    }

    else
    {
      v5 = 0x7972617262696CLL;
    }

    if (a1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    while (v3 < v1[2])
    {
      if (v4[v3])
      {
        v7 = 0x65726F7473;
      }

      else
      {
        v7 = 0x7972617262696CLL;
      }

      if (v4[v3])
      {
        v8 = 0xE500000000000000;
      }

      else
      {
        v8 = 0xE700000000000000;
      }

      if (v7 == v5 && v8 == v6)
      {

        return v3;
      }

      v10 = sub_21B4CA608();

      if (v10)
      {
        return v3;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_26:
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  return 0;
}

uint64_t sub_21B48D62C(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  if (a1)
  {
    return a3();
  }

  else
  {
    return a2();
  }
}

unint64_t sub_21B48D644()
{
  result = qword_27CD88420;
  if (!qword_27CD88420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88420);
  }

  return result;
}

unint64_t sub_21B48D69C()
{
  result = qword_27CD88428;
  if (!qword_27CD88428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88430, &qword_21B4D9F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88428);
  }

  return result;
}

unint64_t sub_21B48D700()
{
  result = qword_2812000B8;
  if (!qword_2812000B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812000B8);
  }

  return result;
}

uint64_t sub_21B48D754()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448, &qword_21B4DA070);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-v2];
  type metadata accessor for GlobalSettingsDeepLinkState(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC10PodcastsUI27GlobalSettingsDeepLinkState__deepLinkToAutomaticDownloadPicker;
  v7[15] = 0;
  sub_21B4C7728();
  result = (*(v1 + 32))(v4 + v5, v3, v0);
  qword_27CD88438 = v4;
  return result;
}

double static GlobalSettingsDeepLinkStateEnvironmentKey.defaultValue.getter()
{
  if (qword_27CD86500 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static GlobalSettingsDeepLinkStateEnvironmentKey.defaultValue.setter(uint64_t a1)
{
  if (qword_27CD86500 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27CD88438 = a1;

  return result;
}

uint64_t (*static GlobalSettingsDeepLinkStateEnvironmentKey.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CD86500 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_21B48D9E4@<D0>(void *a1@<X8>)
{
  if (qword_27CD86500 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27CD88438;

  return result;
}

double sub_21B48DA64(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27CD86500;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27CD88438 = v1;

  return result;
}

uint64_t EnvironmentValues.settingsDeepLinkState.getter()
{
  sub_21B48DB2C();
  sub_21B4C7BC8();
  return v1;
}

unint64_t sub_21B48DB2C()
{
  result = qword_27CD88440;
  if (!qword_27CD88440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88440);
  }

  return result;
}

uint64_t sub_21B48DB80(uint64_t *a1)
{
  sub_21B48DB2C();

  return sub_21B4C7BD8();
}

void (*EnvironmentValues.settingsDeepLinkState.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_21B48DB2C();
  sub_21B4C7BC8();
  return sub_21B48DC7C;
}

void sub_21B48DC7C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_21B4C7BD8();
  }

  else
  {
    sub_21B4C7BD8();
  }
}

uint64_t MTPodcastSkipDuration.text.getter(int a1)
{
  sub_21B4C6778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87950, &qword_21B4DA910);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D849A8];
  *(v2 + 16) = xmmword_21B4D2830;
  v4 = MEMORY[0x277D84A20];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  sub_21B4C96D8();

  sub_21B3A5DF0();
  return sub_21B4C7F48();
}

uint64_t sub_21B48DEEC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v2;
  v5 = v1;
  type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration(255, v4);
  sub_21B4CA188();
  sub_21B4C8138();
  return sub_21B4C8108();
}

uint64_t sub_21B48DFC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88600, &qword_21B4DA280);
  sub_21B4C8128();
  return v2;
}

uint64_t sub_21B48E028()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD885F8, &unk_21B4DA1C0);
  sub_21B4C8108();
  return v1;
}

uint64_t sub_21B48E0D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD885F8, &unk_21B4DA1C0);
  sub_21B4C8108();
  return v1;
}

uint64_t AsyncSelectionConfirmingPicker.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v76 = *(a1 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](a1);
  v74 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 24);
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v3);
  v67 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v6;
  v72 = *(v6 + 48);
  v90 = MEMORY[0x277CE0BD8];
  v91 = v4;
  v93 = MEMORY[0x277CE0BC8];
  v94 = v72;
  v78 = *(v6 + 32);
  v71 = *(&v78 + 1);
  v92 = v78;
  *v7 = *(&v78 + 1);
  v8 = sub_21B4C8158();
  WitnessTable = swift_getWitnessTable();
  v90 = v8;
  v91 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = v8;
  v91 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = OpaqueTypeMetadata2;
  v91 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_21B4C7D58();
  v90 = OpaqueTypeMetadata2;
  v91 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_21B4C7D58();
  sub_21B4C7D58();
  v12 = sub_21B4C80E8();
  v66 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v53 = &v52 - v13;
  v90 = OpaqueTypeMetadata2;
  v91 = OpaqueTypeConformance2;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = OpaqueTypeConformance2;
  v14 = swift_getWitnessTable();
  v90 = OpaqueTypeMetadata2;
  v91 = OpaqueTypeConformance2;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = OpaqueTypeConformance2;
  v15 = swift_getWitnessTable();
  v84 = v14;
  v85 = v15;
  v83 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = *(v71 + 1);
  v90 = v12;
  v91 = v4;
  v18 = v12;
  v56 = v12;
  v92 = v16;
  v93 = v17;
  v19 = v16;
  v57 = v16;
  v20 = v17;
  v70 = v17;
  v21 = swift_getOpaqueTypeMetadata2();
  v60 = v21;
  v64 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v71 = &v52 - v22;
  v90 = v18;
  v91 = v4;
  v92 = v19;
  v93 = v20;
  v61 = swift_getOpaqueTypeConformance2();
  v90 = v21;
  v91 = v4;
  v92 = v61;
  v93 = v20;
  v63 = swift_getOpaqueTypeMetadata2();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v58 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v59 = &v52 - v25;
  v26 = v65;
  v69 = *(v65 + 16);
  *&v27 = v69;
  *(&v27 + 1) = v4;
  v79 = v27;
  v80 = v78;
  v28 = v72;
  v29 = v73;
  v81 = v72;
  v82 = v73;
  sub_21B4C80D8();
  sub_21B4C8138();
  v30 = v67;
  sub_21B4C8108();
  v31 = v76;
  v55 = *(v76 + 16);
  v32 = v74;
  v55(v74, v29, v26);
  v33 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v69;
  *(v34 + 24) = v4;
  *(v34 + 32) = v78;
  *(v34 + 48) = v28;
  v54 = *(v31 + 32);
  v76 = v31 + 32;
  v54(v34 + v33, v32, v26);
  v35 = v30;
  v36 = v56;
  v37 = v53;
  sub_21B4C8008();

  v38 = *(v77 + 8);
  v77 += 8;
  v57 = v38;
  v38(v35, v4);
  (*(v66 + 8))(v37, v36);
  v39 = sub_21B4C81A8();
  v40 = v73;
  MEMORY[0x21CEF18B0](v39);
  v41 = v74;
  v55(v74, v40, v26);
  v42 = swift_allocObject();
  *(v42 + 16) = v69;
  *(v42 + 24) = v4;
  *(v42 + 32) = v78;
  *(v42 + 48) = v72;
  v54(v42 + v33, v41, v26);
  v43 = v58;
  v44 = v60;
  v45 = v71;
  sub_21B4C8008();

  v57(v35, v4);
  (*(v64 + 8))(v45, v44);
  v46 = v62;
  v47 = *(v62 + 16);
  v48 = v59;
  v49 = v63;
  v47(v59, v43, v63);
  v50 = *(v46 + 8);
  v50(v43, v49);
  v47(v68, v48, v49);
  return (v50)(v48, v49);
}

uint64_t sub_21B48EAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a6;
  v44 = a5;
  WitnessTable = a2;
  v50 = a7;
  v67 = a4;
  v68 = MEMORY[0x277CE0BC8];
  v69 = a5;
  v70 = a6;
  sub_21B4C8158();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = OpaqueTypeMetadata2;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v12 = sub_21B4C7D58();
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v42 = &v40 - v16;
  v65 = OpaqueTypeMetadata2;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_21B4C7D58();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v41 = &v40 - v22;
  v49 = sub_21B4C7D58();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v40 - v23;
  v65 = WitnessTable;
  v66 = a3;
  v67 = a4;
  v68 = v44;
  v69 = v45;
  v24 = type metadata accessor for AsyncSelectionConfirmingPicker(0, &v65);
  if (*(a1 + *(v24 + 96)))
  {
    sub_21B48F338(v24, MEMORY[0x277CDE660], sub_21B4957A8, MEMORY[0x277CDE658], v14);
    v65 = OpaqueTypeMetadata2;
    v66 = OpaqueTypeConformance2;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = OpaqueTypeConformance2;
    v45 = MEMORY[0x277CE0340];
    WitnessTable = swift_getWitnessTable();
    v25 = v43;
    v26 = *(v43 + 16);
    v27 = v42;
    v26(v42, v14, v12);
    v28 = *(v25 + 8);
    v28(v14, v12);
    v26(v14, v27, v12);
    v65 = OpaqueTypeMetadata2;
    v66 = OpaqueTypeConformance2;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = OpaqueTypeConformance2;
    v29 = swift_getWitnessTable();
    v30 = v47;
    sub_21B48FAA0(v14, v17, v12, v29, WitnessTable);
    v28(v14, v12);
    v28(v27, v12);
  }

  else
  {
    sub_21B48F338(v24, MEMORY[0x277CDEDA8], sub_21B495698, MEMORY[0x277CDEDA0], v20);
    v65 = OpaqueTypeMetadata2;
    v66 = OpaqueTypeConformance2;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = OpaqueTypeConformance2;
    v45 = MEMORY[0x277CE0340];
    WitnessTable = swift_getWitnessTable();
    v31 = *(v18 + 16);
    v32 = v41;
    v31(v41, v20, v17);
    v33 = *(v18 + 8);
    v33(v20, v17);
    v31(v20, v32, v17);
    v65 = OpaqueTypeMetadata2;
    v66 = OpaqueTypeConformance2;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = OpaqueTypeConformance2;
    v34 = swift_getWitnessTable();
    v30 = v47;
    sub_21B48F240(v20, v17, v12, WitnessTable, v34);
    v33(v20, v17);
    v33(v32, v17);
  }

  v65 = OpaqueTypeMetadata2;
  v66 = OpaqueTypeConformance2;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = OpaqueTypeConformance2;
  v35 = swift_getWitnessTable();
  v65 = OpaqueTypeMetadata2;
  v66 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = OpaqueTypeConformance2;
  v36 = swift_getWitnessTable();
  v55 = v35;
  v56 = v36;
  v37 = v49;
  swift_getWitnessTable();
  v38 = v48;
  (*(v48 + 16))(v50, v30, v37);
  return (*(v38 + 8))(v30, v37);
}

uint64_t sub_21B48F240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21B4C7D38();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_21B4C7D48();
}

uint64_t sub_21B48F338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v61 = a3;
  v71 = a5;
  v8 = *(a1 + 48);
  *(&v78 + 1) = MEMORY[0x277CE0BC8];
  v80 = v8;
  v9 = *(a1 + 24);
  v72 = *(a1 + 32);
  v79 = *(&v72 + 1);
  *&v78 = v72;
  v10 = sub_21B4C8158();
  WitnessTable = swift_getWitnessTable();
  v76 = v10;
  v77 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = &v54 - v16;
  v76 = v10;
  v77 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = OpaqueTypeMetadata2;
  v77 = OpaqueTypeConformance2;
  v69 = OpaqueTypeConformance2;
  v70 = a2;
  v18 = swift_getOpaqueTypeMetadata2();
  v58 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v57 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v56 = &v54 - v21;
  v55 = *(a1 + 16);
  v76 = v55;
  v77 = v9;
  v59 = v9;
  v78 = v72;
  v60 = v8;
  v79 = v8;
  v22 = type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration(255, &v76);
  v23 = sub_21B4CA188();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - v25;
  v27 = *(v22 - 8);
  MEMORY[0x28223BE20](v28);
  v63 = &v54 - v29;
  v64 = v18;
  v30 = sub_21B4C7D58();
  v65 = *(v30 - 8);
  v66 = v30;
  MEMORY[0x28223BE20](v30);
  v73 = &v54 - v31;
  sub_21B48DEEC(a1);
  v32 = v27;
  if ((*(v27 + 48))(v26, 1, v22) == 1)
  {
    (*(v24 + 8))(v26, v23);
    sub_21B490AAC(a1, v14);
    v34 = v67;
    v33 = v68;
    v35 = *(v68 + 16);
    v35(v67, v14, OpaqueTypeMetadata2);
    v36 = *(v33 + 8);
    v36(v14, OpaqueTypeMetadata2);
    v35(v14, v34, OpaqueTypeMetadata2);
    v37 = v69;
    v76 = OpaqueTypeMetadata2;
    v77 = v69;
    v38 = swift_getOpaqueTypeConformance2();
    sub_21B48FAA0(v14, v64, OpaqueTypeMetadata2, v38, v37);
    v36(v14, OpaqueTypeMetadata2);
    v36(v34, OpaqueTypeMetadata2);
  }

  else
  {
    v54 = v27;
    v39 = v63;
    (*(v32 + 32))();
    v40 = v67;
    sub_21B490AAC(a1, v67);
    v41 = sub_21B48DFC4(a1);
    MEMORY[0x28223BE20](v41);
    *&v42 = v55;
    *(&v42 + 1) = v59;
    v43 = v72;
    *(&v54 - 4) = v42;
    *(&v54 - 3) = v43;
    *(&v54 - 4) = v60;
    *(&v54 - 3) = v5;
    *(&v54 - 2) = v39;
    v44 = v57;
    v37 = v69;
    v62();

    (*(v68 + 8))(v40, OpaqueTypeMetadata2);
    v76 = OpaqueTypeMetadata2;
    v77 = v37;
    v68 = swift_getOpaqueTypeConformance2();
    *&v72 = v22;
    v45 = v58;
    v46 = *(v58 + 16);
    v47 = v56;
    v48 = v64;
    v46(v56, v44, v64);
    v49 = *(v45 + 8);
    v49(v44, v48);
    v46(v44, v47, v48);
    sub_21B48F240(v44, v48, OpaqueTypeMetadata2, v68, v37);
    v49(v44, v48);
    v49(v47, v48);
    (*(v54 + 8))(v63, v72);
  }

  v76 = OpaqueTypeMetadata2;
  v77 = v37;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v37;
  v50 = v66;
  swift_getWitnessTable();
  v51 = v65;
  v52 = v73;
  (*(v65 + 16))(v71, v73, v50);
  return (*(v51 + 8))(v52, v50);
}

uint64_t sub_21B48FAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21B4C7D38();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_21B4C7D48();
}

uint64_t sub_21B48FB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v28 = a1;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v14 = type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration(255, &v30);
  v15 = sub_21B4CA188();
  v26 = *(v15 - 8);
  v27 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = *(a5 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = v8;
  v22 = type metadata accessor for AsyncSelectionConfirmingPicker(0, &v30);
  v23 = sub_21B4C81A8();
  MEMORY[0x21CEF18B0](v23);
  LOBYTE(v8) = sub_21B4C96B8();
  result = (*(v18 + 8))(v21, a5);
  if ((v8 & 1) == 0)
  {
    (*(*(v14 - 8) + 56))(v17, 1, 1, v14);
    sub_21B494D08(v17, v22);
    (*(v26 + 8))(v17, v27);
    sub_21B48FE28(v22);
    return sub_21B490078(v28, a2, v22);
  }

  return result;
}

uint64_t sub_21B48FE28(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  if (sub_21B48E028())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    sub_21B4C9A78();
  }

  sub_21B4C9A28();
  v9 = sub_21B4C9A58();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  (*(v3 + 16))(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  sub_21B4C9A18();
  v10 = sub_21B4C9A08();
  v11 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  v14 = *(a1 + 32);
  *(v12 + 32) = *(a1 + 16);
  *(v12 + 48) = v14;
  *(v12 + 64) = *(a1 + 48);
  (*(v3 + 32))(v12 + v11, v5, a1);
  v15 = sub_21B438370(0, 0, v8, &unk_21B4DA1F8, v12);
  return sub_21B48E07C(v15, a1);
}

uint64_t sub_21B490078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v41 = *(a3 + 24);
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  if (sub_21B48E0D4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    sub_21B4C9A78();
  }

  sub_21B4C9A28();
  v17 = sub_21B4C9A58();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = *(v11 + 16);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v35, v3, a3);
  v36 = v16;
  v37 = v3;
  v19 = v11;
  v20 = *(v5 + 16);
  v34 = v9;
  v21 = v9;
  v22 = v41;
  v20(v21, v38, v41);
  v23 = v40;
  v20(v40, v39, v22);
  sub_21B4C9A18();
  v24 = sub_21B4C9A08();
  v25 = (*(v19 + 80) + 72) & ~*(v19 + 80);
  v26 = *(v5 + 80);
  v27 = (v12 + v25 + v26) & ~v26;
  v28 = (v6 + v26 + v27) & ~v26;
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v24;
  *(v29 + 24) = v30;
  *(v29 + 32) = *(a3 + 16);
  *(v29 + 40) = v22;
  *(v29 + 48) = *(a3 + 32);
  *(v29 + 64) = *(a3 + 48);
  (*(v19 + 32))(v29 + v25, v35, a3);
  v31 = *(v5 + 32);
  v31(v29 + v27, v34, v22);
  v31(v29 + v28, v23, v22);
  v32 = sub_21B438370(0, 0, v36, &unk_21B4DA1D8, v29);
  return sub_21B48E128(v32, a3);
}

uint64_t sub_21B490418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a8;
  v63 = a7;
  v60 = a4;
  v61 = a6;
  v64 = a3;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v20 = sub_21B4C7558();
  v58 = *(v20 - 8);
  v59 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C7528();
  v23 = *(v11 + 16);
  v23(v19, a1, a5);
  v23(v16, a2, a5);
  v57 = v22;
  v24 = sub_21B4C7538();
  v25 = sub_21B4C9CC8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v54 = v24;
    v27 = v26;
    v55 = swift_slowAlloc();
    v65[0] = v55;
    *v27 = 136315394;
    v51 = v13;
    v23(v13, v19, a5);
    v28 = sub_21B4C9758();
    v53 = v25;
    v52 = a2;
    v29 = v28;
    v31 = v30;
    v50 = *(v11 + 8);
    v56 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v19, a5);
    v32 = v29;
    a2 = v52;
    v33 = sub_21B36CF74(v32, v31, v65);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    v34 = v51;
    v23(v51, v16, a5);
    v35 = v34;
    v36 = sub_21B4C9758();
    v38 = v37;
    v39 = v16;
    v40 = v50;
    v50(v39, a5);
    v41 = sub_21B36CF74(v36, v38, v65);

    *(v27 + 14) = v41;
    v42 = v54;
    _os_log_impl(&dword_21B365000, v54, v53, "Picker is displayed, but autodownloads options changed from somewhere else: %s -> %s", v27, 0x16u);
    v43 = v55;
    swift_arrayDestroy();
    MEMORY[0x21CEF5710](v43, -1, -1);
    MEMORY[0x21CEF5710](v27, -1, -1);

    (*(v58 + 8))(v57, v59);
    v13 = v35;
  }

  else
  {

    v44 = *(v11 + 8);
    v56 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v16;
    v40 = v44;
    v44(v45, a5);
    v44(v19, a5);
    (*(v58 + 8))(v57, v59);
  }

  v65[0] = v60;
  v65[1] = a5;
  v65[2] = v61;
  v65[3] = v63;
  v65[4] = v62;
  v46 = type metadata accessor for AsyncSelectionConfirmingPicker(0, v65);
  sub_21B4C8138();
  sub_21B4C8108();
  v47 = sub_21B4C96B8();
  result = v40(v13, a5);
  if ((v47 & 1) == 0)
  {
    return sub_21B4909C8(a2, v46);
  }

  return result;
}

uint64_t sub_21B4908AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v15[0] = v3[2];
  v6 = v15[0];
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v11 = *(type metadata accessor for AsyncSelectionConfirmingPicker(0, v15) - 8);
  v12 = v3 + ((*(v11 + 80) + 56) & ~*(v11 + 80));

  return a3(a1, a2, v12, v6, v7, v8, v9, v10);
}

uint64_t sub_21B4909C8(uint64_t a1, uint64_t a2)
{
  sub_21B494B44(a1, a2);
  sub_21B494C14(a1, a2);
  v4 = sub_21B48E028();
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    sub_21B4C9A78();
  }

  MEMORY[0x28223BE20](v4);
  return sub_21B4C7A58();
}

uint64_t sub_21B490AAC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = a1[3];
  v4 = sub_21B4C81A8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = a1[5];
  v29 = a1[4];
  v27 = v23 - v6;
  v28 = v5;
  v26 = a1[6];
  v32 = MEMORY[0x277CE0BD8];
  v33 = v3;
  v23[0] = v3;
  v34 = v29;
  v35 = MEMORY[0x277CE0BC8];
  v36 = v5;
  v37 = v26;
  v7 = sub_21B4C8158();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v24 = v23 - v8;
  WitnessTable = swift_getWitnessTable();
  v32 = v7;
  v33 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  v16 = sub_21B4C7C18();
  v23[2] = v17;
  v23[3] = v16;
  v23[1] = v18;
  sub_21B4C8138();
  sub_21B4C8128();
  v19 = v24;
  sub_21B4C8148();
  sub_21B4C7FB8();
  (*(v30 + 8))(v19, v7);
  v20 = *(v10 + 16);
  v20(v15, v12, OpaqueTypeMetadata2);
  v21 = *(v10 + 8);
  v21(v12, OpaqueTypeMetadata2);
  v20(v31, v15, OpaqueTypeMetadata2);
  return (v21)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_21B490DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[4] = a3;
  v5 = sub_21B4C8058();
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - v7;
  v9 = a1[1];
  v16 = *a1;
  v17 = v9;
  sub_21B3A5DF0();

  v10 = sub_21B4C7F48();
  v15[2] = v11;
  v15[3] = v10;
  v15[1] = v12;
  v13 = a1[5];
  if (v13)
  {
    v16 = a1[4];
    v17 = v13;

    sub_21B4C7F48();
  }

  sub_21B4921E4(a1, a2, v8);
  sub_21B4924D4(a2);
  return sub_21B4C8018();
}

uint64_t sub_21B490F5C(uint64_t *a1, uint64_t a2)
{
  sub_21B3A5DF0();

  sub_21B4C7F48();
  if (a1[5])
  {

    sub_21B4C7F48();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88608, &unk_21B4DA200);
  v4 = *(sub_21B4C8058() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21B4D38F0;
  sub_21B4921E4(a1, a2, v6 + v5);
  sub_21B4924D4(a2);
  return sub_21B4C79A8();
}

void sub_21B491110(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = sub_21B4C81A8();
  if (v4 <= 0x3F)
  {
    v24 = 0;
    v32 = v3;
    sub_21B491B9C(319, &qword_27CD884D0, MEMORY[0x277CE11F8]);
    if (v6 <= 0x3F)
    {
      v25 = 0;
      v33 = v5;
      v7 = sub_21B4C8138();
      if (v8 <= 0x3F)
      {
        v26 = 0;
        v34 = v7;
        v9 = *(a1 + 48);
        v21[0] = *(a1 + 16);
        v21[1] = v2;
        v22 = *(a1 + 32);
        v23 = v9;
        type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration(255, v21);
        sub_21B4CA188();
        v10 = sub_21B4C8138();
        if (v11 <= 0x3F)
        {
          v27 = 0;
          v35 = v10;
          sub_21B491B9C(319, &qword_27CD884D8, MEMORY[0x277CE10B8]);
          if (v13 <= 0x3F)
          {
            v28 = 0;
            v36 = v12;
            v37 = v12;
            v14 = sub_21B420B68();
            if (v15 <= 0x3F)
            {
              v29 = 0;
              v38 = v14;
              v39 = v14;
              v16 = v14;
              v17 = sub_21B4C7988();
              if (v18 <= 0x3F)
              {
                v40 = v17;
                v41 = v16;
                v30 = 0;
                v42 = &type metadata for SelectionConfirmationStyle;
                v43 = MEMORY[0x277D84D38];
                sub_21B491BF0(319);
                if (v20 <= 0x3F)
                {
                  v31 = 0;
                  v44 = v19;
                  v45 = v19;
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

uint64_t sub_21B4912B4(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v8 - 1 < v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 - 1;
  }

  v10 = *(sub_21B4C7988() - 8);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((v11 + 16) & ~v11) + v12;
  v16 = v11 | 7;
  v17 = v11 + 48;
  v18 = (v11 | 7) + 17;
  v19 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 8;
  v20 = ((v12 + 7 + ((v12 + v11 + ((v11 + 48) & ~v11)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 31;
  v21 = v13 + 16;
  if (v14 >= a2)
  {
    goto LABEL_33;
  }

  v22 = ((((((*(v10 + 64) + ((v21 + ((((((v20 + ((v19 + ((v18 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v14 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= 1)
  {
    if (!v26)
    {
      goto LABEL_33;
    }

    v27 = *(a1 + v22);
    if (!v27)
    {
      goto LABEL_33;
    }

LABEL_30:
    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v14 + (v30 | v29) + 1;
  }

  if (v26 == 2)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  v31 = ~v11;
  if (v8 == v14)
  {
    v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) == 0)
    {
      v33 = *v32;
LABEL_38:
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }

    v35 = *(v6 + 48);
    v36 = (v32 + v11 + 8) & v31;
    v37 = v7;
    v38 = v5;

    return v35(v36, v37, v38);
  }

  v34 = (a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v14 & 0x80000000) == 0)
  {
    v33 = *(v34 + 8);
    goto LABEL_38;
  }

  v36 = (v18 + v34) & ~v16;
  if (v7 == v14)
  {
    v35 = *(v6 + 48);
    v37 = v7;
    v38 = v5;

    return v35(v36, v37, v38);
  }

  v39 = (v19 + v36) & ~v16;
  if (v8 - 1 == v14)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v41 = (*(v6 + 48))((v17 + v39) & v31, v7, v5);
    }

    else
    {
      v40 = *(((v19 + v36) & ~v16) + 8);
      if (v40 >= 0xFFFFFFFF)
      {
        LODWORD(v40) = -1;
      }

      v41 = v40 + 1;
    }

    if (v41 >= 2)
    {
      return v41 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v42 = *(v10 + 48);

    return v42((v21 + ((((((v20 + v39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
  }
}

void sub_21B4916BC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v50 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v49 = v11;
  if (v10 - 1 < v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 - 1;
  }

  v13 = sub_21B4C7988();
  v14 = *(v13 - 8);
  if (v12 <= *(v14 + 84))
  {
    v15 = *(v14 + 84);
  }

  else
  {
    v15 = v12;
  }

  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = ((v16 + 16) & ~v16) + v17;
  v19 = v16 | 7;
  v20 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v21 = v16 + 48;
  v22 = ((v17 + v16 + ((v16 + 48) & ~v16)) & ~v16) + v17;
  v23 = (v16 | 7) + 17;
  v24 = v20 + (v16 | 7);
  v25 = ((v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 31;
  v26 = *(v14 + 80);
  v27 = ((((((*(*(v13 - 8) + 64) + ((v26 + 16 + ((((((v25 + ((v24 + ((v23 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~(v16 | 7))) & ~(v16 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v15 >= a3)
  {
    v30 = 0;
    v31 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (((((((*(*(v13 - 8) + 64) + ((v26 + 16 + ((((((v25 + ((v24 + ((v23 + ((v18 + 7) & 0xFFFFFFF8)) & ~(v16 | 7))) & ~(v16 | 7))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v26) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 1;
    }

    if (((((((*(*(v13 - 8) + 64) + ((v26 + 16 + ((((((v25 + ((v24 + ((v23 + ((v18 + 7) & 0xFFFFFFF8)) & ~(v16 | 7))) & ~(v16 | 7))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v26) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v33 = ~v15 + a2;
      bzero(a1, v27);
      *a1 = v33;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        *(a1 + v27) = v32;
      }

      else
      {
        *(a1 + v27) = v32;
      }
    }

    else if (v30)
    {
      *(a1 + v27) = v32;
    }

    return;
  }

  if (((((((*(*(v13 - 8) + 64) + ((v26 + 16 + ((((((v25 + ((v24 + ((v23 + ((v18 + 7) & 0xFFFFFFF8)) & ~(v16 | 7))) & ~(v16 | 7))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v26) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v28 = a3 - v15 + 1;
  }

  else
  {
    v28 = 2;
  }

  if (v28 >= 0x10000)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 0x100)
  {
    v29 = 1;
  }

  if (v28 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = a2 - v15;
  if (a2 > v15)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *(a1 + v27) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v27) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v30)
  {
    goto LABEL_41;
  }

  *(a1 + v27) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  v34 = ~v16;
  if (v10 == v15)
  {
    v35 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v9 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v36 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v36 = (a2 - 1);
      }

      *v35 = v36;
      return;
    }

    v38 = *(v50 + 56);
    v39 = ((v35 + v16 + 8) & v34);
    goto LABEL_56;
  }

  v37 = (a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(v37 + 16) = 0;
      *v37 = a2 & 0x7FFFFFFF;
      *(v37 + 8) = 0;
    }

    else
    {
      *(v37 + 8) = (a2 - 1);
    }

    return;
  }

  v41 = ~v19;
  v39 = ((v23 + v37) & v41);
  if (v9 == v15)
  {
    if (v49 >= a2)
    {
      v38 = *(v50 + 56);
LABEL_56:
      v40 = a2;
LABEL_57:

      v38(v39, v40, v9, v7);
      return;
    }

    if (v20)
    {
      v42 = ~v49 + a2;
      v43 = v39;
      bzero(v39, v20);
      *v43 = v42;
    }
  }

  else
  {
    v44 = (v39 + v24) & v41;
    if (v10 - 1 == v15)
    {
      if (a2 < v10)
      {
        v40 = (a2 + 1);
        if ((v9 & 0x80000000) == 0)
        {
          if ((v40 & 0x80000000) != 0)
          {
            *(((v39 + v24) & v41) + 0x28) = 0;
            *(((v39 + v24) & v41) + 0x18) = 0u;
            *(((v39 + v24) & v41) + 8) = 0u;
            *v44 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            *(((v39 + v24) & v41) + 8) = a2;
          }

          return;
        }

        v38 = *(v50 + 56);
        v39 = ((v21 + v44) & v34);
        goto LABEL_57;
      }

      if (v22 <= 3)
      {
        v46 = ~(-1 << (8 * v22));
      }

      else
      {
        v46 = -1;
      }

      if (v22)
      {
        v47 = v46 & (a2 - v10);
        if (v22 <= 3)
        {
          v48 = v22;
        }

        else
        {
          v48 = 4;
        }

        bzero(((v39 + v24) & v41), v22);
        if (v48 > 2)
        {
          if (v48 == 3)
          {
            *v44 = v47;
            *(v44 + 2) = BYTE2(v47);
          }

          else
          {
            *v44 = v47;
          }
        }

        else if (v48 == 1)
        {
          *v44 = v47;
        }

        else
        {
          *v44 = v47;
        }
      }
    }

    else
    {
      v45 = *(v14 + 56);

      v45((v26 + 16 + ((((((v25 + v44) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26, a2);
    }
  }
}

void sub_21B491B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21B491BF0(uint64_t a1)
{
  if (!qword_27CD884E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD884E8, qword_21B4DA100);
    v1 = sub_21B4C8138();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD884E0);
    }
  }
}

uint64_t sub_21B491C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B491C90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21B491CD8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21B491D3C(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  result = type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationText(319, &v4);
  if (v2 <= 0x3F)
  {
    v7 = 0;
    v4 = result;
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      v8 = 0;
      *&v5 = result;
      *(&v5 + 1) = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B491DE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 48) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 48) & ~v6);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_21B491F78(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 24) - 8) + 64) + v9 + ((v9 + 48) & ~v9)) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 48] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 5) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

double sub_21B4921E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v28[1] = a3;
  v7 = sub_21B4C7988();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  (*(v11 + 16))(v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v14);
  v15 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v17 = *(a2 + 32);
  *(v16 + 16) = *(a2 + 16);
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a2 + 48);
  (*(v11 + 32))(v16 + v15, v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_21B4C7968();
  LOBYTE(v4) = sub_21B4C7978();
  (*(v8 + 8))(v10, v7);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v28[4] = v18;
  v28[5] = v19;
  sub_21B3A5DF0();

  if (v4)
  {
    v20 = sub_21B4C7F48();
    v22 = v21;
    v24 = v23;

    sub_21B4C8028();
  }

  else
  {
    v20 = sub_21B4C7F48();
    v22 = v25;
    v24 = v26;

    sub_21B4C8048();
  }

  sub_21B495798(v20, v22, v24 & 1);

  return result;
}

double sub_21B4924D4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 48);
  (*(v2 + 32))(v6 + v5, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_21B4C8038();

  return result;
}

uint64_t sub_21B492610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23[-1] - v10;
  v23[0] = v12;
  v23[1] = v13;
  v23[2] = v14;
  v23[3] = v15;
  v23[4] = v16;
  v17 = type metadata accessor for AsyncSelectionConfirmingPicker(0, v23);
  sub_21B4C8138();
  sub_21B4C8108();
  v18 = sub_21B4C81A8();
  MEMORY[0x21CEF18B0](v18);
  v19 = sub_21B4C96B8();
  v20 = *(v6 + 8);
  v20(v8, a3);
  result = (v20)(v11, a3);
  if ((v19 & 1) == 0)
  {
    sub_21B4C8108();
    sub_21B4909C8(v11, v17);
    return (v20)(v11, a3);
  }

  return result;
}

uint64_t sub_21B4927C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  v16[4] = v11;
  v12 = type metadata accessor for AsyncSelectionConfirmingPicker(0, v16);
  v13 = sub_21B4C81A8();
  MEMORY[0x21CEF18B0](v13);
  sub_21B494C14(v6, v12);
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_21B4928C4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v13 = a1[1];
  *a9 = *a1;
  *(a9 + 1) = v13;
  *(a9 + 2) = a1[2];
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v14 = type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration(0, v17);
  v15 = *(*(a5 - 8) + 32);
  v15(&a9[*(v14 + 60)], a2, a5);
  return (v15)(&a9[*(v14 + 64)], a3, a5);
}

uint64_t sub_21B492990(uint64_t a1, void *a2)
{
  v28 = a1;
  v4 = sub_21B4C7558();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v31[0] = v8;
  v31[1] = v7;
  v26 = v11;
  v27 = v9;
  v31[2] = v9;
  v31[3] = v10;
  v31[4] = v11;
  v12 = type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration(255, v31);
  v13 = sub_21B4CA188();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if (sub_21B4C9A98())
  {
    sub_21B4C7518();
    v17 = sub_21B4C7538();
    v18 = sub_21B4C9CC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21B365000, v17, v18, "Confirmation task was completed before computation finished, won't show confirmation", v19, 2u);
      MEMORY[0x21CEF5710](v19, -1, -1);
    }

    return (*(v29 + 8))(v6, v30);
  }

  else
  {
    v21 = v28;
    (*(v14 + 16))(v16, v28, v13);
    sub_21B494D08(v16, a2);
    (*(v14 + 8))(v16, v13);
    v22 = (*(*(v12 - 8) + 48))(v21, 1, v12) != 1;
    v23 = sub_21B48DF60(v22, a2);
    MEMORY[0x28223BE20](v23);
    *(&v25 - 6) = v8;
    *(&v25 - 5) = v7;
    v24 = v26;
    *(&v25 - 4) = v27;
    *(&v25 - 3) = v10;
    *(&v25 - 2) = v24;
    *(&v25 - 1) = v2;
    return sub_21B4C7A58();
  }
}

double sub_21B492C80(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v16 = a1[2];
  v17[0] = v16;
  v17[1] = v3;
  v17[2] = v4;
  v17[3] = v5;
  v17[4] = v6;
  v7 = type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration(255, v17);
  v8 = sub_21B4CA188();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  if ((sub_21B4C9A98() & 1) == 0)
  {
    sub_21B48DEEC(a1);
    v13 = (*(*(v7 - 8) + 48))(v11, 1, v7);
    (*(v9 + 8))(v11, v8);
    if (v13 == 1)
    {
      v14 = sub_21B4C81E8();
      MEMORY[0x28223BE20](v14);
      *(&v15 - 6) = v16;
      *(&v15 - 5) = v3;
      *(&v15 - 4) = v4;
      *(&v15 - 3) = v5;
      *(&v15 - 2) = v6;
      *(&v15 - 1) = v1;
      sub_21B4C7A58();
    }
  }

  return result;
}

uint64_t sub_21B492E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v15;
  v8[7] = a4;
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v9 = type metadata accessor for AsyncSelectionConfirmingPicker(0, (v8 + 2));
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v10 = sub_21B4C7558();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  sub_21B4C9A18();
  v8[16] = sub_21B4C9A08();
  v12 = sub_21B4C99C8();
  v8[17] = v12;
  v8[18] = v11;

  return MEMORY[0x2822009F8](sub_21B492FC8, v12, v11);
}

uint64_t sub_21B492FC8()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  sub_21B4C7518();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21B4C7538();
  v6 = sub_21B4C9CC8();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    v12 = *(v8 + *(v10 + 100));
    (*(v9 + 8))(v8, v10);
    *(v11 + 4) = v12;
    _os_log_impl(&dword_21B365000, v5, v6, "Delaying confirmation UI by %lluns...", v11, 0xCu);
    MEMORY[0x21CEF5710](v11, -1, -1);
  }

  else
  {
    (*(v9 + 8))(v0[10], v0[8]);
  }

  v13 = v0[15];
  v14 = v0[11];
  v15 = v0[12];
  v17 = v0[7];
  v16 = v0[8];

  v18 = *(v15 + 8);
  v0[19] = v18;
  v0[20] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v14);
  v19 = *(v17 + *(v16 + 100));
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_21B493198;

  return MEMORY[0x282200480](v19);
}

uint64_t sub_21B493198()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_21B4934C4;
  }

  else
  {
    v5 = sub_21B4932D4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21B4932D4()
{
  v1 = v0[22];

  sub_21B4C9AB8();
  if (v1)
  {
    sub_21B4C7518();
    v2 = sub_21B4C7538();
    v3 = sub_21B4C9CC8();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[19];
    v6 = v0[13];
    v7 = v0[11];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21B365000, v2, v3, "Task cancelled, skipping confirmation display", v8, 2u);
      MEMORY[0x21CEF5710](v8, -1, -1);
    }

    v5(v6, v7);
  }

  else
  {
    sub_21B4C7518();
    v9 = sub_21B4C7538();
    v10 = sub_21B4C9CC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21B365000, v9, v10, "Showing confirmation sheet.", v11, 2u);
      MEMORY[0x21CEF5710](v11, -1, -1);
    }

    v12 = v0[19];
    v13 = v0[14];
    v14 = v0[11];
    v15 = v0[8];

    v12(v13, v14);
    sub_21B492C80(v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_21B4934C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B493558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v19;
  v8[25] = v20;
  v8[22] = a8;
  v8[23] = v18;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  v8[8] = a7;
  v8[9] = a8;
  v8[10] = v18;
  v8[11] = v19;
  v8[12] = v20;
  v11 = type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration(255, (v8 + 8));
  v8[26] = v11;
  v12 = sub_21B4CA188();
  v8[27] = v12;
  v8[28] = *(v12 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = *(a8 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = *(a7 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v13 = sub_21B4CA188();
  v8[40] = v13;
  v8[41] = *(v13 - 8);
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v14 = sub_21B4C7558();
  v8[44] = v14;
  v8[45] = *(v14 - 8);
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = sub_21B4C9A18();
  v8[53] = sub_21B4C9A08();
  v15 = swift_task_alloc();
  v8[54] = v15;
  *v15 = v8;
  v15[1] = sub_21B4938D0;

  return sub_21B4950C4();
}

uint64_t sub_21B4938D0()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = sub_21B4C99C8();
  if (v0)
  {
    v5 = sub_21B493C18;
  }

  else
  {
    *(v2 + 448) = v3;
    *(v2 + 456) = v4;
    v5 = sub_21B493A34;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21B493A34(uint64_t a1)
{
  sub_21B4C7518();
  v2 = sub_21B4C7538();
  v3 = sub_21B4C9CC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21B365000, v2, v3, "Starting task to compute confirmation state...", v4, 2u);
    MEMORY[0x21CEF5710](v4, -1, -1);
  }

  v5 = *(v1 + 408);
  v6 = *(v1 + 352);
  v7 = *(v1 + 360);
  v8 = *(v1 + 200);
  v9 = *(v1 + 144);
  v17 = *(v1 + 184);
  v18 = *(v1 + 168);

  v10 = *(v7 + 8);
  *(v1 + 464) = v10;
  v10(v5, v6);
  *(v1 + 104) = v18;
  *(v1 + 120) = v17;
  *(v1 + 136) = v8;
  v11 = type metadata accessor for AsyncSelectionConfirmingPicker(0, v1 + 104);
  *(v1 + 472) = v11;
  v19 = (*(v9 + *(v11 + 80)) + **(v9 + *(v11 + 80)));
  v12 = swift_task_alloc();
  *(v1 + 480) = v12;
  *v12 = v1;
  v12[1] = sub_21B493D50;
  v13 = *(v1 + 344);
  v14 = *(v1 + 152);
  v15 = *(v1 + 160);

  return v19(v13, v14, v15);
}

uint64_t sub_21B493C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B493D50()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_21B493E70, v3, v2);
}

uint64_t sub_21B493E70()
{
  v48 = v0;
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[21];
  (*(v0[41] + 16))(v1, v0[43], v0[40]);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[41];
    v4 = v0[42];
    v6 = v0[40];

    v46 = *(v5 + 8);
    v46(v4, v6);
    sub_21B4C7518();
    v7 = sub_21B4C7538();
    v8 = sub_21B4C9CC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21B365000, v7, v8, "This change does not require confirmation - applying.", v9, 2u);
      MEMORY[0x21CEF5710](v9, -1, -1);
    }

    v11 = v0[58];
    v10 = v0[59];
    v12 = v0[50];
    v13 = v0[44];
    v14 = v0[20];

    v11(v12, v13);
    sub_21B4909C8(v14, v10);
    v46(v0[43], v0[40]);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v18 = v0[38];
    v17 = v0[39];
    v19 = v0[35];
    v20 = v0[21];
    (*(v19 + 32))(v17, v0[42], v20);
    sub_21B4C7518();
    v21 = *(v19 + 16);
    v0[61] = v21;
    v0[62] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v18, v17, v20);
    v22 = sub_21B4C7538();
    v23 = sub_21B4C9CC8();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[58];
    v26 = v0[49];
    v27 = v0[44];
    v28 = v0[38];
    if (v24)
    {
      v44 = v0[44];
      v45 = v0[49];
      v29 = v0[37];
      v30 = v0[35];
      v31 = v0[21];
      v43 = v0[58];
      v32 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v32 = 136315138;
      v21(v29, v28, v31);
      v33 = sub_21B4C9758();
      v34 = v23;
      v36 = v35;
      v37 = *(v30 + 8);
      v37(v28, v31);
      v38 = sub_21B36CF74(v33, v36, &v47);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_21B365000, v22, v34, "Determined confirmation state - yielding for other tasks. State: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x21CEF5710](v42, -1, -1);
      MEMORY[0x21CEF5710](v32, -1, -1);

      v43(v45, v44);
    }

    else
    {
      v39 = v0[35];
      v40 = v0[21];

      v37 = *(v39 + 8);
      v37(v28, v40);
      v25(v26, v27);
    }

    v0[63] = v37;
    v41 = swift_task_alloc();
    v0[64] = v41;
    *v41 = v0;
    v41[1] = sub_21B494348;

    return MEMORY[0x282200490]();
  }
}

uint64_t sub_21B494348()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_21B494468, v3, v2);
}

uint64_t sub_21B494468()
{
  v77 = v0;
  v1 = *(v0 + 440);

  sub_21B4C9AB8();
  if (v1)
  {
    v2 = *(v0 + 344);
    v3 = *(v0 + 320);
    v4 = *(v0 + 328);
    (*(v0 + 504))(*(v0 + 312), *(v0 + 168));
    (*(v4 + 8))(v2, v3);

    v5 = *(v0 + 8);
  }

  else
  {
    v6 = *(v0 + 488);
    v7 = *(v0 + 312);
    v8 = *(v0 + 288);
    v9 = *(v0 + 168);
    sub_21B4C7518();
    v6(v8, v7, v9);
    v10 = sub_21B4C7538();
    v11 = sub_21B4C9CC8();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 504);
    if (v12)
    {
      v14 = *(v0 + 488);
      v69 = *(v0 + 384);
      v73 = *(v0 + 464);
      v66 = *(v0 + 352);
      v16 = *(v0 + 288);
      v15 = *(v0 + 296);
      v62 = *(v0 + 504);
      v17 = *(v0 + 168);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v76 = v19;
      *v18 = 136315138;
      v14(v15, v16, v17);
      v20 = sub_21B4C9758();
      v22 = v21;
      v62(v16, v17);
      v23 = sub_21B36CF74(v20, v22, &v76);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_21B365000, v10, v11, "Computing titles from configuration state. State: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x21CEF5710](v19, -1, -1);
      MEMORY[0x21CEF5710](v18, -1, -1);

      v73(v69, v66);
    }

    else
    {
      v24 = *(v0 + 464);
      v25 = *(v0 + 384);
      v26 = *(v0 + 352);
      v27 = *(v0 + 288);
      v28 = *(v0 + 168);

      v13(v27, v28);
      v24(v25, v26);
    }

    v30 = *(v0 + 248);
    v29 = *(v0 + 256);
    v31 = *(v0 + 240);
    v74 = *(v0 + 200);
    v67 = *(v0 + 272);
    v70 = *(v0 + 192);
    v32 = *(v0 + 176);
    v64 = *(v0 + 184);
    v34 = *(v0 + 160);
    v33 = *(v0 + 168);
    v35 = *(v0 + 152);
    (*(*(v0 + 144) + *(*(v0 + 472) + 84)))(*(v0 + 312));
    v36 = *(v31 + 16);
    v36(v29, v35, v32);
    v36(v30, v34, v32);
    sub_21B4928C4((v0 + 16), v29, v30, v33, v32, v64, v70, v74, v67);
    sub_21B4C7518();
    v37 = sub_21B4C7538();
    v38 = sub_21B4C9CC8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_21B365000, v37, v38, "Updating confirmation UI for titles...", v39, 2u);
      MEMORY[0x21CEF5710](v39, -1, -1);
    }

    v40 = *(v0 + 464);
    v41 = *(v0 + 376);
    v71 = *(v0 + 472);
    v42 = *(v0 + 352);
    v43 = v37;
    v45 = *(v0 + 264);
    v44 = *(v0 + 272);
    v46 = *(v0 + 224);
    v47 = *(v0 + 232);
    v48 = *(v0 + 208);
    v68 = *(v0 + 216);

    v40(v41, v42);
    (*(v45 + 16))(v47, v44, v48);
    (*(v45 + 56))(v47, 0, 1, v48);
    sub_21B492990(v47, v71);
    (*(v46 + 8))(v47, v68);
    sub_21B4C7518();
    v49 = sub_21B4C7538();
    v50 = sub_21B4C9CC8();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 504);
    v63 = *(v0 + 352);
    v65 = *(v0 + 368);
    v53 = *(v0 + 328);
    v72 = *(v0 + 464);
    v75 = *(v0 + 312);
    v54 = *(v0 + 272);
    v55 = *(v0 + 264);
    v56 = *(v0 + 208);
    v57 = *(v0 + 168);
    if (v51)
    {
      v61 = *(v0 + 504);
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_21B365000, v49, v50, "Confirmation state computation complete.", v58, 2u);
      v59 = v58;
      v52 = v61;
      MEMORY[0x21CEF5710](v59, -1, -1);
    }

    v72(v65, v63);
    (*(v55 + 8))(v54, v56);
    v52(v75, v57);
    (*(v53 + 8))(*(v0 + 344), *(v0 + 320));

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_21B494B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_21B4C81A8();
  return sub_21B4C8178();
}

uint64_t sub_21B494C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_21B4C8138();
  return sub_21B4C8118();
}

uint64_t sub_21B494D08(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 32);
  v10[0] = *(a2 + 16);
  v10[1] = v4;
  v11 = v3;
  type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration(255, v10);
  v5 = sub_21B4CA188();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(v10 - v7, a1, v5, v6);
  sub_21B4C8138();
  return sub_21B4C8118();
}

uint64_t sub_21B494E14(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v6 = v1[7];
  v5 = v1[6];
  v17 = v1[4];
  v7 = v1[8];
  v2[2] = v17;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  v2[6] = v7;
  v8 = *(type metadata accessor for AsyncSelectionConfirmingPicker(0, (v2 + 2)) - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = *(*(v4 - 8) + 80);
  v11 = (v9 + *(v8 + 64) + v10) & ~v10;
  v12 = (*(*(v4 - 8) + 64) + v10 + v11) & ~v10;
  v13 = v1[2];
  v14 = v1[3];
  v15 = swift_task_alloc();
  v3[7] = v15;
  *v15 = v3;
  v15[1] = sub_21B494FD0;

  return sub_21B493558(a1, v13, v14, v1 + v9, v1 + v11, v1 + v12, v17, v4);
}

uint64_t sub_21B494FD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21B4950C4()
{
  sub_21B4C9A18();
  v0[2] = sub_21B4C9A08();
  v2 = sub_21B4C99C8();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_21B495158, v2, v1);
}

uint64_t sub_21B495158()
{
  v1 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v0[5] = v1;
  v2 = sub_21B4C96C8();
  v3 = [v1 integerForKey_];

  if (v3 < 1)
  {

    v6 = v0[1];

    return v6();
  }

  else
  {
    if (is_mul_ok(v3, 0x3B9ACA00uLL))
    {
      v5 = swift_task_alloc();
      v0[6] = v5;
      *v5 = v0;
      v5[1] = sub_21B4952C4;
      v4 = 1000000000 * v3;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200480](v4);
  }
}

uint64_t sub_21B4952C4()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_21B495470;
  }

  else
  {
    v5 = sub_21B495400;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21B495400()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B495470()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B4954E0(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v2[6] = v8;
  v9 = *(type metadata accessor for AsyncSelectionConfirmingPicker(0, (v2 + 2)) - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  v3[7] = v13;
  *v13 = v3;
  v13[1] = sub_21B495834;

  return sub_21B492E48(a1, v11, v12, v1 + v10, v5, v4, v6, v7);
}

uint64_t sub_21B495634(char a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v4;
  v8 = v3;
  v5 = type metadata accessor for AsyncSelectionConfirmingPicker(0, v7);
  return sub_21B48DE0C(a1, v5);
}

uint64_t sub_21B4956E0(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v11[0] = v1[2];
  v2 = v11[0];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v7 = *(type metadata accessor for AsyncSelectionConfirmingPicker(0, v11) - 8);
  v8 = v1 + ((*(v7 + 80) + 56) & ~*(v7 + 80));

  return a1(v8, v2, v3, v4, v5, v6);
}

double sub_21B495798(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_21B4957C0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v8[1] = v5;
  v9 = v3;
  v6 = type metadata accessor for AsyncSelectionConfirmingPicker(0, v8);
  return a1(v4, v6);
}

uint64_t GlobalSettingsDeepLinkState.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_21B4C7728();
  return v0;
}

uint64_t sub_21B4958AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60, &unk_21B4D39D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD875C0, &unk_21B4D9A40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD888E8, &qword_21B4DAA30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD888F0, &qword_21B4DAA38);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  v43 = &v39 - v14;
  v15 = sub_21B4C5538();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_21B4C54E8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v47 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  if (*(v0 + 8) < 2uLL)
  {
    return sub_21B4C6778();
  }

  v40 = v3;
  v41 = v6;
  v23 = *(v0 + 32);
  v24 = sub_21B4C6778();
  v26 = v25;
  v44 = v16;
  v42 = v17;
  if (v23)
  {
    os_feature_enabled_serial_sort_auto_downloads();
  }

  v27 = [objc_opt_self() mainBundle];
  sub_21B4C5518();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87950, &qword_21B4DA910);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21B4D2830;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_21B376BD4();
  *(v28 + 32) = v24;
  *(v28 + 40) = v26;

  sub_21B4C96D8();

  sub_21B4C5528();
  sub_21B4C54F8();
  v48[0] = v24;
  v48[1] = v26;
  v29 = sub_21B4C5918();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_21B49CF50(&qword_27CD888F8, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  sub_21B3A5DF0();
  v30 = v44;
  sub_21B4C55E8();
  sub_21B3F2D94(v9, &qword_27CD875C0, &unk_21B4D9A40);

  if ((*(v45 + 48))(v12, 1, v46) == 1)
  {
    v31 = &qword_27CD888E8;
    v32 = &qword_21B4DAA30;
    v33 = v12;
  }

  else
  {
    v34 = v43;
    sub_21B429EE8(v12, v43, &qword_27CD888F0, &qword_21B4DAA38);
    sub_21B4C9708();
    v35 = v41;
    sub_21B4C5718();

    sub_21B3F1314(&qword_27CD88900, &qword_27CD888F0, &qword_21B4DAA38, MEMORY[0x277D83D30]);
    v36 = sub_21B4C5508();
    sub_21B36C7AC(v35, v40, &qword_27CD86E60, &unk_21B4D39D0);
    sub_21B49E7BC();
    sub_21B4C5548();
    v30 = v44;
    sub_21B3F2D94(v35, &qword_27CD86E60, &unk_21B4D39D0);
    v36(v48, 0);
    v33 = v34;
    v31 = &qword_27CD888F0;
    v32 = &qword_21B4DAA38;
  }

  sub_21B3F2D94(v33, v31, v32);
  v37 = v42;
  (*(v42 + 16))(v47, v21, v30);
  v38 = sub_21B4C7F38();
  (*(v37 + 8))(v21, v30);
  return v38;
}

__n128 AutoDownloadPickerView.init(autoDownloadOption:pickerType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a4 + 32);
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88618, &qword_21B4DA240);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for AutoDownloadPickerView(0);
  v12 = a5 + v11[6];
  sub_21B4C80F8();
  *v12 = v17;
  *(v12 + 1) = v18;
  v13 = (a5 + v11[5]);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  v14 = a5 + v11[7];
  result = *a4;
  v16 = *(a4 + 16);
  *v14 = *a4;
  *(v14 + 1) = v16;
  v14[32] = v10;
  return result;
}

uint64_t AutoDownloadPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88620, &qword_21B4DA248);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-v5];
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88628, &qword_21B4DA250);
  sub_21B49C928();
  sub_21B4C7EF8();
  sub_21B3F1314(&qword_27CD88688, &qword_27CD88620, &qword_21B4DA248, MEMORY[0x277CDE5A0]);
  sub_21B4C7F58();
  (*(v4 + 8))(v6, v3);
  v7 = sub_21B4C81D8();
  v9 = v8;
  v10 = (v1 + *(type metadata accessor for AutoDownloadPickerView(0) + 24));
  v11 = *v10;
  v12 = *(v10 + 1);
  v22 = v11;
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88600, &qword_21B4DA280);
  sub_21B4C8128();
  v13 = v19;
  v14 = v20;
  LOBYTE(v6) = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88690, &qword_21B4DA288);
  v16 = a1 + *(result + 36);
  *v16 = v13;
  *(v16 + 8) = v14;
  *(v16 + 16) = v6;
  *(v16 + 24) = v7;
  *(v16 + 32) = v9;
  return result;
}

uint64_t sub_21B49627C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88658, &qword_21B4DA268);
  MEMORY[0x28223BE20](v2);
  v4 = &v13[-v3];
  v19 = sub_21B4C6778();
  v20 = v5;
  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  sub_21B496494(v4);
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD888C0, &unk_21B4DA9E0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88638, &qword_21B4DA258);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88640, &qword_21B4DA260);
  v8 = sub_21B4C7BF8();
  v9 = sub_21B49CA98();
  v15 = &type metadata for AutoDownloadPicker;
  v16 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v7;
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  v18 = MEMORY[0x277CDDDA0];
  v11 = swift_getOpaqueTypeConformance2();
  v15 = v6;
  v16 = MEMORY[0x277D83B88];
  v17 = v11;
  v18 = MEMORY[0x277D83BA8];
  swift_getOpaqueTypeConformance2();
  sub_21B49CAEC();
  return sub_21B4C81C8();
}

uint64_t sub_21B496494@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v48 = sub_21B4C7C48();
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21B4C7D88();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AutoDownloadPickerView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88668, &qword_21B4DA270);
  MEMORY[0x28223BE20](v39);
  v10 = &v33 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88658, &qword_21B4DA268);
  MEMORY[0x28223BE20](v44);
  v40 = &v33 - v11;
  v12 = *(v6 + 36);
  v34 = v1;
  v13 = (v1 + v12);
  LOBYTE(v12) = *(v1 + v12 + 32);
  v14 = v13[1];
  v49 = *v13;
  v50 = v14;
  v51 = v12;
  v15 = sub_21B4958AC();
  v36 = v16;
  v37 = v15;
  v35 = v17;
  v38 = v18;
  KeyPath = swift_getKeyPath();
  sub_21B49E418(v1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_21B49E47C(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = &v10[*(v39 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88678, &qword_21B4DA278);
  sub_21B4C7A38();
  *v22 = KeyPath;
  v23 = v36;
  *v10 = v37;
  *(v10 + 1) = v23;
  v10[16] = v35 & 1;
  *(v10 + 3) = v38;
  sub_21B49E418(v34, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject() + v20;
  v25 = v40;
  sub_21B49E47C(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v26 = v41;
  sub_21B4C7D78();
  sub_21B49CBA8();
  sub_21B4C7FE8();

  (*(v42 + 8))(v26, v43);
  sub_21B3F2D94(v10, &qword_27CD88668, &qword_21B4DA270);
  if (*(v13 + 1) >= 2uLL)
  {
    *&v49 = MEMORY[0x277D84F90];
    sub_21B49CF50(&qword_27CD888C8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD888D0, &qword_21B4DAA20);
    sub_21B3F1314(&qword_27CD888D8, &qword_27CD888D0, &qword_21B4DAA20, MEMORY[0x277D83970]);
    v29 = v46;
    v30 = v48;
    sub_21B4CA298();
    v31 = v45;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD888E0, &qword_21B4DAA28);
    v27 = v45;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21B4D2830;
    sub_21B4C7C38();
    *&v49 = v28;
    sub_21B49CF50(&qword_27CD888C8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD888D0, &qword_21B4DAA20);
    sub_21B3F1314(&qword_27CD888D8, &qword_27CD888D0, &qword_21B4DAA20, MEMORY[0x277D83970]);
    v29 = v46;
    v30 = v48;
    sub_21B4CA298();
    v31 = v27;
  }

  sub_21B4C7AD8();
  (*(v31 + 8))(v29, v30);
  return sub_21B3F2D94(v25, &qword_27CD88658, &qword_21B4DA268);
}

uint64_t sub_21B496A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for AutoDownloadPickerView(0);
  v4 = (v3 - 8);
  v46 = *(v3 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B4C7BF8();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88640, &qword_21B4DA260);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88638, &qword_21B4DA258);
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v14 = &v36 - v13;
  v15 = (a1 + v4[7]);
  v40 = *v15;
  v17 = v15[1];
  v16 = v15[2];
  v39 = v17;
  v38 = v16;
  *&v55 = v40;
  *(&v55 + 1) = v17;
  *&v56 = v16;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886A0, &qword_21B4DA2C0);
  sub_21B4C8188();
  v36 = v49;
  v18 = v50;
  v19 = (a1 + v4[8]);
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v49) = v20;
  *(&v49 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88600, &qword_21B4DA280);
  sub_21B4C8128();
  v22 = a1 + v4[9];
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = *(v22 + 32);
  v49 = v36;
  *&v50 = v18;
  *(&v50 + 1) = v23;
  *&v51 = v24;
  *(&v51 + 1) = v25;
  *&v52 = v26;
  BYTE8(v52) = v27;
  v53 = v55;
  v54 = v56;
  sub_21B49E3A0(v23, v24, v25, v26);
  v28 = sub_21B49CA98();
  sub_21B4C7FB8();
  v57 = v51;
  v58 = v52;
  v59 = v53;
  v60 = v54;
  v55 = v49;
  v56 = v50;
  sub_21B49E3E8(&v55);
  sub_21B4C7BE8();
  *&v49 = &type metadata for AutoDownloadPicker;
  *(&v49 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277CDDDA0];
  sub_21B4C7FA8();
  (*(v41 + 8))(v8, v6);
  (*(v10 + 8))(v12, v9);
  *&v49 = v40;
  *(&v49 + 1) = v39;
  *&v50 = v38;
  MEMORY[0x21CEF18B0](&v48, v37);
  v31 = v44;
  sub_21B49E418(a1, v44);
  v32 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v33 = swift_allocObject();
  sub_21B49E47C(v31, v33 + v32);
  *&v49 = v9;
  *(&v49 + 1) = v6;
  *&v50 = OpaqueTypeConformance2;
  *(&v50 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  sub_21B4C8008();

  return (*(v43 + 8))(v14, v34);
}

__n128 AutoDownloadPicker.init(autoDownloadOption:showLoadingUI:pickerType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = *a7;
  v9 = *(a7 + 16);
  *(a8 + 24) = *a7;
  v10 = *(a7 + 32);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 40) = v9;
  *(a8 + 56) = v10;
  *(a8 + 64) = a4;
  *(a8 + 72) = a5;
  *(a8 + 80) = a6;
  return result;
}

uint64_t sub_21B49701C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AutoDownloadPickerView(0);
  v5 = (a3 + *(v4 + 20));
  v6 = *v5;
  v7 = *(v5 + 2);
  aBlock = v6;
  v21 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886A0, &qword_21B4DA2C0);
  MEMORY[0x21CEF18B0](&v25, v8);
  v9 = v25;
  if ((v25 & 0xFFFFFFFEFFFFFFFFLL) != 0)
  {
    v10 = (a3 + *(v4 + 28));
    v11 = v10[1];
    if (v11 >= 2)
    {
      v13 = *v10;
      v14 = objc_opt_self();

      v15 = [v14 sharedInstance];
      v16 = [v15 privateQueueContext];

      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = v13;
      v17[4] = v11;
      v17[5] = v9;
      v23 = sub_21B49E560;
      v24 = v17;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v21 = sub_21B36CDB8;
      v22 = &block_descriptor_10;
      v18 = _Block_copy(&aBlock);
      v12 = v16;

      [v12 performBlock_];
      _Block_release(v18);
    }

    else
    {
      v12 = [objc_opt_self() defaultMediaLibrary];
      sub_21B44DA48(v9, 0, 0);
    }
  }

  return sub_21B497204(a3);
}

uint64_t sub_21B497204(uint64_t a1)
{
  v15 = sub_21B4C7BB8();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88618, &qword_21B4DA240);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_21B4C79F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B36C7AC(a1, v7, &qword_27CD88618, &qword_21B4DA240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21B4C9CF8();
    v12 = sub_21B4C7DB8();
    sub_21B4C7338();

    sub_21B4C7BA8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_21B4C79E8();
  return (*(v9 + 8))(v11, v8);
}

double sub_21B497480(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_21B4C8208();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B4C8248();
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B4C8218();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21B4C96C8();
  v18 = [a1 podcastForUuid_];

  if (v18)
  {
    [v18 setEpisodeLimit_];
  }

  sub_21B375E2C();
  (*(v14 + 104))(v16, *MEMORY[0x277D851C8], v13);
  v19 = sub_21B4C9E38();
  (*(v14 + 8))(v16, v13);
  v20 = swift_allocObject();
  v20[2] = v27;
  v20[3] = a2;
  v20[4] = a3;
  aBlock[4] = sub_21B49E56C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = &block_descriptor_114;
  v21 = _Block_copy(aBlock);

  sub_21B4C8228();
  v28 = MEMORY[0x277D84F90];
  sub_21B49CF50(&qword_2811FD230, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0, &qword_21B4D2AD0);
  sub_21B3F1314(&qword_2811FCE10, &qword_27CD86BB0, &qword_21B4D2AD0, MEMORY[0x277D83970]);
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v12, v9, v21);
  _Block_release(v21);

  (*(v26 + 8))(v9, v7);
  (*(v24 + 8))(v12, v25);

  return result;
}

void sub_21B497880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() defaultMediaLibrary];
  sub_21B44DA48(a1, a2, a3);
}

uint64_t DownloadPickerLoadingOverlay.init(showOverlaySpinner:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_21B497914(uint64_t a1)
{
  v2 = sub_21B4C7A48();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21B4C7B98();
}

void sub_21B4979DC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for AutoDownloadPickerView(0) + 28);
  if (*(v2 + 8) >= 2uLL)
  {
    v3 = *(v2 + 16);

    v3(v4);
    sub_21B4C7A28();
  }

  else
  {

    MEMORY[0x282130C18]();
  }
}

double sub_21B497A78(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for AutoDownloadPickerView(0) + 28);
  if (*(v1 + 8) >= 2uLL)
  {
    v3 = *(v1 + 16);

    v3(v4);
  }

  return result;
}

uint64_t DownloadPickerLoadingOverlay.showOverlaySpinner.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD885F0, &qword_21B4DA290);
  MEMORY[0x21CEF18B0](&v5, v3);
  return v5;
}

void *sub_21B497B44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD885F0, &qword_21B4DA290);
  result = MEMORY[0x21CEF18B0](&v7, v5);
  *a2 = v7;
  return result;
}

double sub_21B497BA4(char *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD885F0, &qword_21B4DA290);
  sub_21B4C8178();

  return result;
}

void (*DownloadPickerLoadingOverlay.showOverlaySpinner.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v4 + 48) = *v1;
  *(v4 + 56) = v6;
  v7 = *(v1 + 16);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD885F0, &qword_21B4DA290);
  MEMORY[0x21CEF18B0]();
  return sub_21B497D3C;
}

void sub_21B497D3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_21B4C8178();

  free(v1);
}

uint64_t DownloadPickerLoadingOverlay.$showOverlaySpinner.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD885F0, &qword_21B4DA290);
  sub_21B4C8188();
  return v1;
}

double DownloadPickerLoadingOverlay.body.getter@<D0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *a1 = sub_21B49CC60;
  a1[1] = v6;

  return result;
}

uint64_t sub_21B497E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v56 = a3;
  v55 = a2;
  v58 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88828, &qword_21B4DA928);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88830, &qword_21B4DA930);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88838, &qword_21B4DA938);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88840, &qword_21B4DA940);
  MEMORY[0x28223BE20](v54);
  v16 = &v54 - v15;
  *v8 = sub_21B4C7C08();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88848, &qword_21B4DA948) + 44)];
  *v17 = sub_21B4C7C58();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88850, &qword_21B4DA950);
  sub_21B498424(a1, &v17[*(v18 + 44)]);
  v19 = sub_21B4C7DC8();
  sub_21B4C7998();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88858, &qword_21B4DA958) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = [objc_opt_self() secondarySystemBackgroundColor];
  v30 = sub_21B4C80C8();
  v31 = sub_21B4C7DC8();
  v32 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88860, &qword_21B4DA960) + 36)];
  *v32 = v30;
  v32[8] = v31;
  v33 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88868, &qword_21B4DA968) + 36)];
  v34 = *(sub_21B4C7B08() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_21B4C7C28();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #15.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88870, &qword_21B4DA970) + 36)] = 256;
  sub_21B4C7A08();
  sub_21B4C81D8();
  sub_21B4C7B18();
  sub_21B429EE8(v8, v11, &qword_27CD88828, &qword_21B4DA928);
  v42 = &v11[*(v9 + 36)];
  v43 = v68;
  *(v42 + 4) = v67;
  *(v42 + 5) = v43;
  *(v42 + 6) = v69;
  v44 = v64;
  *v42 = v63;
  *(v42 + 1) = v44;
  v45 = v66;
  *(v42 + 2) = v65;
  *(v42 + 3) = v45;
  v46 = sub_21B4C7AF8();
  LOBYTE(a1) = sub_21B4C7DC8();
  sub_21B429EE8(v11, v14, &qword_27CD88830, &qword_21B4DA930);
  v47 = &v14[*(v12 + 36)];
  *v47 = v46;
  v47[8] = a1;
  sub_21B4C8078();
  v48 = sub_21B4C8098();

  LOBYTE(v46) = sub_21B4C7DC8();
  sub_21B429EE8(v14, v16, &qword_27CD88838, &qword_21B4DA938);
  v49 = &v16[*(v54 + 36)];
  *v49 = v48;
  v49[8] = v46;
  v60 = v55;
  v61 = v56;
  v62 = v57 & 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD885F0, &qword_21B4DA290);
  MEMORY[0x21CEF18B0](&v59, v50);
  if (v59)
  {
    v51 = 1.0;
  }

  else
  {
    v51 = 0.0;
  }

  v52 = v58;
  sub_21B429EE8(v16, v58, &qword_27CD88840, &qword_21B4DA940);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88878, &qword_21B4DA978);
  *(v52 + *(result + 36)) = v51;
  return result;
}

uint64_t sub_21B498424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v72 = a2;
  v2 = sub_21B4C7DA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88880, &qword_21B4DA980);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88888, &qword_21B4DA988);
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v66 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88890, &qword_21B4DA990);
  MEMORY[0x28223BE20](v69);
  v73 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  MEMORY[0x28223BE20](v17);
  v74 = &v66 - v18;
  sub_21B4C79C8();
  sub_21B4C7D98();
  sub_21B3F1314(&qword_27CD88898, &qword_27CD88880, &qword_21B4DA980, MEMORY[0x277CDD7F8]);
  sub_21B49CF50(&qword_27CD888A0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  sub_21B4C7F88();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD888A8, &qword_21B4DA998);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21B4D38F0;
  LOBYTE(v3) = sub_21B4C7DE8();
  *(v19 + 32) = v3;
  v20 = sub_21B4C7DD8();
  *(v19 + 33) = v20;
  v21 = sub_21B4C7E08();
  sub_21B4C7E08();
  if (sub_21B4C7E08() != v3)
  {
    v21 = sub_21B4C7E08();
  }

  sub_21B4C7E08();
  if (sub_21B4C7E08() != v20)
  {
    v21 = sub_21B4C7E08();
  }

  sub_21B4C7998();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  (*(v70 + 32))(v16, v12, v71);
  v30 = &v16[*(v69 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  sub_21B429EE8(v16, v74, &qword_27CD88890, &qword_21B4DA990);
  sub_21B4C7C18();
  v31 = sub_21B4C7F28();
  v69 = v32;
  v70 = v31;
  v34 = v33;
  v71 = v35;
  KeyPath = swift_getKeyPath();
  sub_21B4C7A08();
  sub_21B4C81D8();
  sub_21B4C7B18();
  *&v100[55] = v108;
  *&v100[71] = v109;
  *&v100[87] = v110;
  *&v100[103] = v111;
  *&v100[7] = v105;
  *&v100[23] = v106;
  LODWORD(v67) = v34 & 1;
  v102 = v34 & 1;
  *&v100[39] = v107;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_21B4D42A0;
  v37 = sub_21B4C7DF8();
  *(v36 + 32) = v37;
  v38 = sub_21B4C7E18();
  *(v36 + 33) = v38;
  v39 = sub_21B4C7DE8();
  *(v36 + 34) = v39;
  v40 = sub_21B4C7E08();
  sub_21B4C7E08();
  if (sub_21B4C7E08() != v37)
  {
    v40 = sub_21B4C7E08();
  }

  sub_21B4C7E08();
  if (sub_21B4C7E08() != v38)
  {
    v40 = sub_21B4C7E08();
  }

  sub_21B4C7E08();
  if (sub_21B4C7E08() != v39)
  {
    v40 = sub_21B4C7E08();
  }

  sub_21B4C7998();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v103 = 0;
  v50 = v73;
  v49 = v74;
  sub_21B3AF508(v74, v73);
  v51 = v72;
  sub_21B3AF508(v50, v72);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD888B0, &qword_21B4DA9D0) + 48));
  v54 = v69;
  v53 = v70;
  *&v75 = v70;
  *(&v75 + 1) = v69;
  v55 = v67;
  LOBYTE(v76) = v67;
  *(&v76 + 1) = *v101;
  DWORD1(v76) = *&v101[3];
  v56 = v71;
  v57 = KeyPath;
  *(&v76 + 1) = v71;
  *&v77[0] = KeyPath;
  BYTE8(v77[0]) = 1;
  *(&v77[4] + 9) = *&v100[64];
  *(&v77[5] + 9) = *&v100[80];
  *(&v77[6] + 9) = *&v100[96];
  *(&v77[7] + 1) = *&v100[111];
  *(v77 + 9) = *v100;
  *(&v77[1] + 9) = *&v100[16];
  *(&v77[2] + 9) = *&v100[32];
  *(&v77[3] + 9) = *&v100[48];
  LOBYTE(v78) = v40;
  DWORD1(v78) = *&v104[3];
  *(&v78 + 1) = *v104;
  *(&v78 + 1) = v42;
  *&v79[0] = v44;
  *(&v79[0] + 1) = v46;
  *&v79[1] = v48;
  BYTE8(v79[1]) = 0;
  v58 = v77[1];
  v52[2] = v77[0];
  v52[3] = v58;
  v59 = v76;
  *v52 = v75;
  v52[1] = v59;
  v60 = v77[7];
  v52[8] = v77[6];
  v52[9] = v60;
  v61 = v77[5];
  v52[6] = v77[4];
  v52[7] = v61;
  v62 = v77[3];
  v52[4] = v77[2];
  v52[5] = v62;
  v63 = *(v79 + 9);
  v64 = v79[0];
  v52[10] = v78;
  v52[11] = v64;
  *(v52 + 185) = v63;
  sub_21B36C7AC(&v75, v80, &qword_27CD888B8, &qword_21B4DA9D8);
  sub_21B3F2D94(v49, &qword_27CD88890, &qword_21B4DA990);
  v90 = *&v100[64];
  v91 = *&v100[80];
  *v92 = *&v100[96];
  v86 = *v100;
  v87 = *&v100[16];
  v88 = *&v100[32];
  v80[0] = v53;
  v80[1] = v54;
  v81 = v55;
  *v82 = *v101;
  *&v82[3] = *&v101[3];
  v83 = v56;
  v84 = v57;
  v85 = 1;
  *&v92[15] = *&v100[111];
  v89 = *&v100[48];
  v93 = v40;
  *&v94[3] = *&v104[3];
  *v94 = *v104;
  v95 = v42;
  v96 = v44;
  v97 = v46;
  v98 = v48;
  v99 = 0;
  sub_21B3F2D94(v80, &qword_27CD888B8, &qword_21B4DA9D8);
  return sub_21B3F2D94(v50, &qword_27CD88890, &qword_21B4DA990);
}

double sub_21B498D20@<D0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *a1 = sub_21B49EB18;
  a1[1] = v6;

  return result;
}

uint64_t AutoDownloadPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_21B4C7988();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88698, &qword_21B4DA298);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = v1[3];
  v56 = v1[2];
  v57 = v7;
  v58 = v1[4];
  v59 = *(v1 + 80);
  v8 = v1[1];
  v54 = *v1;
  v55 = v8;
  v9 = swift_allocObject();
  v10 = v1[3];
  *(v9 + 48) = v1[2];
  *(v9 + 64) = v10;
  *(v9 + 80) = v1[4];
  *(v9 + 96) = *(v1 + 80);
  v11 = v1[1];
  *(v9 + 16) = *v1;
  *(v9 + 32) = v11;
  v12 = swift_allocObject();
  v41 = v12;
  *(v12 + 16) = &unk_21B4DA2A8;
  *(v12 + 24) = v9;
  v13 = swift_allocObject();
  v14 = v1[3];
  *(v13 + 48) = v1[2];
  *(v13 + 64) = v14;
  *(v13 + 80) = v1[4];
  v15 = *v1;
  v16 = v1[1];
  v17 = *v1;
  *(v13 + 16) = *v1;
  *(v13 + 32) = v16;
  *(v13 + 96) = *(v1 + 80);
  v43 = v56 != 1;
  v60 = v15;
  v61 = *(v1 + 2);
  v52 = v17;
  v53 = *(v1 + 2);
  sub_21B49CEF0(&v54, &v48);
  sub_21B49CEF0(&v54, &v48);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886A0, &qword_21B4DA2C0);
  sub_21B4C8188();
  v18 = v48;
  v19 = v49;
  v48 = v58;
  LOBYTE(v49) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD885F0, &qword_21B4DA290);
  sub_21B4C8188();
  v39 = *(&v52 + 1);
  v40 = v52;
  v38 = v53;
  v20 = swift_allocObject();
  v21 = v57;
  *(v20 + 48) = v56;
  *(v20 + 64) = v21;
  *(v20 + 80) = v58;
  *(v20 + 96) = v59;
  v22 = v55;
  *(v20 + 16) = v54;
  *(v20 + 32) = v22;
  sub_21B49CEF0(&v54, &v48);
  sub_21B4C7968();
  v52 = v18;
  v53 = v19;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886A8, &unk_21B4DA2C8);
  sub_21B4C80F8();
  LOBYTE(v47) = 0;
  sub_21B4C80F8();
  v23 = *(&v48 + 1);
  v6[136] = v48;
  *(v6 + 18) = v23;
  LOBYTE(v47) = 0;
  sub_21B4C80F8();
  v24 = *(&v48 + 1);
  v6[152] = v48;
  *(v6 + 20) = v24;
  v25 = v4[26];
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD884E8, qword_21B4DA100);
  sub_21B4C80F8();
  *&v6[v25] = v48;
  v26 = v4[27];
  v47 = 0;
  sub_21B4C80F8();
  *&v6[v26] = v48;
  v27 = v41;
  *(v6 + 21) = &unk_21B4DA2B8;
  *(v6 + 22) = v27;
  *(v6 + 23) = sub_21B49CEE8;
  *(v6 + 24) = v13;
  v29 = v44;
  v28 = v45;
  v30 = v37;
  (*(v44 + 16))(&v6[v4[22]], v37, v45);
  v6[v4[24]] = v43;
  v31 = &v6[v4[23]];
  *v31 = sub_21B49CF28;
  v31[1] = v20;
  *&v6[v4[25]] = 200000000;
  *v6 = v18;
  v32 = v39;
  v33 = v40;
  *(v6 + 2) = v19;
  *(v6 + 3) = v33;
  *(v6 + 4) = v32;
  v6[40] = v38;
  v34 = v42;
  MEMORY[0x21CEF18B0](&v48, v42);
  (*(v29 + 8))(v30, v28);

  *(v6 + 6) = v48;
  *(v6 + 7) = 0;
  v48 = v60;
  *&v49 = v61;
  MEMORY[0x21CEF18B0](&v52, v34);
  sub_21B3F1314(&qword_27CD886B0, &qword_27CD88698, &qword_21B4DA298, &protocol conformance descriptor for AsyncSelectionConfirmingPicker<A, B, C>);
  sub_21B4C8008();
  return sub_21B3F2D94(v6, &qword_27CD88698, &qword_21B4DA298);
}

uint64_t sub_21B499308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v5;
  *(v3 + 80) = *(a3 + 64);
  *(v3 + 96) = *(a3 + 80);
  v6 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v6;
  v7 = swift_task_alloc();
  *(v3 + 104) = v7;
  *v7 = v3;
  v7[1] = sub_21B4993C0;

  return sub_21B49DF80(a2);
}

uint64_t sub_21B4993C0(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_21B4994C4(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  *(v4 + 16) = a1;
  v5 = *a2;
  v6 = *a3;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_21B4995C8;

  return v9(v5, v6);
}

uint64_t sub_21B4995C8(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = *(v8 + 8);

  return v6();
}

void sub_21B4996EC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_21B4C6778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87950, &qword_21B4DA910);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D83B88];
  *(v4 + 16) = xmmword_21B4D2830;
  v6 = MEMORY[0x277D83C10];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  v7 = sub_21B4C96D8();
  v9 = v8;

  sub_21B4C6778();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21B4D2830;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v3;
  v11 = sub_21B4C96D8();
  v13 = v12;

  *a2 = v7;
  a2[1] = v9;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = 0;
  a2[5] = 0;
}

uint64_t sub_21B499864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88800, &qword_21B4DA900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - v4;
  if (*(a1 + 32) >= 2uLL)
  {
    v6 = sub_21B4C9EB8();
  }

  else
  {
    v6 = sub_21B4C9EC8();
  }

  v12[11] = v6;
  v7 = swift_allocObject();
  v8 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = *(a1 + 80);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  sub_21B49CEF0(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88808, &qword_21B4DA908);
  sub_21B3F1314(&qword_27CD88810, &qword_27CD88808, &qword_21B4DA908, MEMORY[0x277D83980]);
  sub_21B49CF50(&qword_27CD88818, type metadata accessor for MTPodcastEpisodeLimit, MEMORY[0x277D3DA38]);
  sub_21B4C81B8();
  v12[0] = sub_21B4C6778();
  v12[1] = v10;
  sub_21B49DF04();
  sub_21B3A5DF0();
  sub_21B4C7FD8();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21B499AE0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21B4C7128();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 32) >= 2uLL)
  {
    if (*(a2 + 56) & 1) != 0 && (os_feature_enabled_serial_sort_auto_downloads())
    {
      v10 = MEMORY[0x277D3D8D8];
    }

    else
    {
      v10 = MEMORY[0x277D3D8E8];
    }
  }

  else
  {
    v10 = MEMORY[0x277D3D8E0];
  }

  (*(v6 + 104))(v9, *v10, v5, v7);
  v11 = sub_21B4C9F08();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  v18[0] = v11;
  v18[1] = v13;
  sub_21B3A5DF0();
  result = sub_21B4C7F48();
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v17;
  return result;
}

uint64_t sub_21B499C50(uint64_t *a1, uint64_t *a2)
{
  v2 = sub_21B4C5858();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_21B4C5848();
  sub_21B4C9D48();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21B499D64(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = *(v1 + 24);
  *(v2 + 88) = sub_21B4C9A18();
  *(v2 + 96) = sub_21B4C9A08();
  v4 = sub_21B4C99C8();
  *(v2 + 104) = v4;
  *(v2 + 112) = v3;

  return MEMORY[0x2822009F8](sub_21B499E08, v4, v3);
}

uint64_t sub_21B499E08(__n128 a1)
{
  v2 = v1[10];
  if (v2 >= 2)
  {
    v1[15] = sub_21B4C9A08();
    v5 = swift_task_alloc();
    v1[16] = v5;
    *v5 = v1;
    v5[1] = sub_21B499F30;
    v6 = v1[8];
    v7 = v1[9];

    return MEMORY[0x28219E2B8](v7, v2, v6);
  }

  else
  {
    v1[18] = sub_21B4C9A08();
    v3 = swift_task_alloc();
    v1[19] = v3;
    *v3 = v1;
    v3[1] = sub_21B49A094;
    v4 = v1[8];

    return MEMORY[0x28219E2C8](v4);
  }
}

uint64_t sub_21B499F30(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[17] = v1;

  v5 = sub_21B4C99C8();
  if (v1)
  {
    v6 = sub_21B49A460;
  }

  else
  {
    v6 = sub_21B49A390;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21B49A094(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[20] = v1;

  v5 = sub_21B4C99C8();
  if (v1)
  {
    v6 = sub_21B49A2C8;
  }

  else
  {
    v6 = sub_21B49A1F8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21B49A1F8()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21B49A25C, v1, v2);
}

uint64_t sub_21B49A25C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21B49A2C8()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21B49A32C, v1, v2);
}

uint64_t sub_21B49A32C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B49A390()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21B49A3F4, v1, v2);
}

uint64_t sub_21B49A3F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21B49A460()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21B49A4C4, v1, v2);
}

uint64_t sub_21B49A4C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GlobalSettingsAutoDownloadPickerLink.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_21B4C9EA8();
  sub_21B4C9F38();
  sub_21B4C9708();
  v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  *a1 = sub_21B4C7908();
  v3 = *(type metadata accessor for GlobalSettingsAutoDownloadPickerLink(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886B8, &qword_21B4DA308);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B49A5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B4C7BB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886B8, &qword_21B4DA308);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GlobalSettingsAutoDownloadPickerLink(0);
  sub_21B36C7AC(v1 + *(v10 + 20), v9, &qword_27CD886B8, &qword_21B4DA308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21B4C72F8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21B4C9CF8();
    v13 = sub_21B4C7DB8();
    sub_21B4C7338();

    sub_21B4C7BA8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t GlobalSettingsAutoDownloadPickerLink.body.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v32 = type metadata accessor for AutoDownloadPickerView(0);
  MEMORY[0x28223BE20](v32);
  v3 = (&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886C0, &qword_21B4DA310);
  v34 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v33 = &v31 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886C8, &qword_21B4DA318);
  MEMORY[0x28223BE20](v35);
  v36 = &v31 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886D0, &unk_21B4DA320);
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v31 - v7;
  v9 = sub_21B4C72F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  sub_21B49A5FC(&v31 - v14);
  (*(v10 + 104))(v12, *MEMORY[0x277D40278], v9);
  sub_21B49CF50(&qword_27CD886D8, MEMORY[0x277D40290], MEMORY[0x277D402C8]);
  sub_21B4C98C8();
  sub_21B4C98C8();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v17 = (v16)(v15, v9);
  if (v40 == v42)
  {
    LOBYTE(v40) = 0;
    MEMORY[0x28223BE20](v17);
    *(&v31 - 2) = v1;
    type metadata accessor for AutomaticallyDownloadCellStack(0);
    sub_21B49CF50(&qword_27CD886E0, type metadata accessor for AutomaticallyDownloadCellStack, &unk_21B4DA868);
    sub_21B49CFD4();
    sub_21B4C7A98();
    v18 = v37;
    (*(v6 + 16))(v36, v8, v37);
    swift_storeEnumTagMultiPayload();
    v19 = MEMORY[0x277CDD938];
    sub_21B3F1314(&qword_27CD886F0, &qword_27CD886D0, &unk_21B4DA320, MEMORY[0x277CDD938]);
    sub_21B3F1314(&qword_27CD886F8, &qword_27CD886C0, &qword_21B4DA310, v19);
    sub_21B4C7D48();
    return (*(v6 + 8))(v8, v18);
  }

  else
  {
    MEMORY[0x28223BE20](v17);
    *(&v31 - 2) = v1;
    sub_21B4C7938();
    v31 = v40;
    v21 = v41;
    *v3 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88618, &qword_21B4DA240);
    swift_storeEnumTagMultiPayload();
    v22 = v32;
    v23 = v3 + *(v32 + 24);
    LOBYTE(v42) = 0;
    sub_21B4C80F8();
    v24 = *(&v40 + 1);
    *v23 = v40;
    *(v23 + 1) = v24;
    v25 = v3 + *(v22 + 20);
    *v25 = v31;
    *(v25 + 2) = v21;
    v26 = v3 + *(v22 + 28);
    type metadata accessor for AutomaticallyDownloadCellStack(0);
    sub_21B49CF50(&qword_27CD886E0, type metadata accessor for AutomaticallyDownloadCellStack, &unk_21B4DA868);
    sub_21B49CF50(&qword_27CD886E8, type metadata accessor for AutoDownloadPickerView, &protocol conformance descriptor for AutoDownloadPickerView);
    *v26 = 0u;
    *(v26 + 1) = 0u;
    v26[32] = 0;
    v27 = v33;
    sub_21B4C7A88();
    v28 = v34;
    v29 = v38;
    (*(v34 + 16))(v36, v27, v38);
    swift_storeEnumTagMultiPayload();
    v30 = MEMORY[0x277CDD938];
    sub_21B3F1314(&qword_27CD886F0, &qword_27CD886D0, &unk_21B4DA320, MEMORY[0x277CDD938]);
    sub_21B3F1314(&qword_27CD886F8, &qword_27CD886C0, &qword_21B4DA310, v30);
    sub_21B4C7D48();
    return (*(v28 + 8))(v27, v29);
  }
}

__n128 sub_21B49AF14@<Q0>(uint64_t *a2@<X8>)
{
  sub_21B4C7938();
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD887F8, &qword_21B4DA8C8);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for AutomaticallyDownloadCellStack(0);
  v5 = a2 + *(v4 + 20);
  result = v7;
  *v5 = v7;
  *(v5 + 2) = v8;
  *(a2 + *(v4 + 24)) = 0;
  return result;
}

uint64_t sub_21B49AFB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21B4C7BB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD887F8, &qword_21B4DA8C8);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21B36C7AC(v2, &v13 - v9, &qword_27CD887F8, &qword_21B4DA8C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21B429EE8(v10, a1, &qword_27CD887D0, &qword_21B4DA860);
  }

  sub_21B4C9CF8();
  v12 = sub_21B4C7DB8();
  sub_21B4C7338();

  sub_21B4C7BA8();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

__n128 sub_21B49B198@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD887D0, &qword_21B4DA860);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  sub_21B49AFB4(&v32 - v8);
  v10 = sub_21B4C7D68();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_5;
  }

  sub_21B36C7AC(v9, v6, &qword_27CD887D0, &qword_21B4DA860);
  if ((*(v11 + 88))(v6, v10) != *MEMORY[0x277CE0558])
  {
    (*(v11 + 8))(v6, v10);
LABEL_5:
    v21 = sub_21B4C7C08();
    v40 = 1;
    v22 = type metadata accessor for AutomaticallyDownloadCellStack(0);
    v23 = (v2 + *(v22 + 20));
    v24 = *v23;
    v25 = *(v23 + 2);
    v41 = v24;
    v42.n128_u64[0] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886A0, &qword_21B4DA2C0);
    sub_21B4C8188();
    v26 = v33;
    v27 = *(v2 + *(v22 + 24));
    v28 = v34;
    v29 = v40;
    v40 = 1;
    v33 = v21;
    LOBYTE(v34) = v29;
    v35 = v26;
    v36 = v28;
    v37 = 1;
    v38 = 0;
    LOBYTE(v39) = v27;
    HIBYTE(v39) = 1;
    goto LABEL_6;
  }

  v12 = sub_21B4C7C68();
  v40 = 1;
  v13 = type metadata accessor for AutomaticallyDownloadCellStack(0);
  v14 = (v2 + *(v13 + 20));
  v15 = *v14;
  v16 = *(v14 + 2);
  v41 = v15;
  v42.n128_u64[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886A0, &qword_21B4DA2C0);
  sub_21B4C8188();
  v32 = v33;
  v17 = v34;
  v18 = sub_21B4C7E28();
  v19 = *(v2 + *(v13 + 24));
  v20 = v40;
  v40 = 0;
  v33 = v12;
  LOBYTE(v34) = v20;
  v35 = v32;
  v36 = v17;
  v37 = 0;
  v38 = v18;
  v39 = v19;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD887D8, &qword_21B4DA8B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD887E0, &qword_21B4DA8C0);
  sub_21B3F1314(&qword_27CD887E8, &qword_27CD887D8, &qword_21B4DA8B8, MEMORY[0x277CE1198]);
  sub_21B3F1314(&qword_27CD887F0, &qword_27CD887E0, &qword_21B4DA8C0, MEMORY[0x277CE1138]);
  sub_21B4C7D48();
  sub_21B3F2D94(v9, &qword_27CD887D0, &qword_21B4DA860);
  v30 = v44;
  *(a1 + 32) = v43;
  *(a1 + 48) = v30;
  *(a1 + 64) = v45;
  result = v42;
  *a1 = v41;
  *(a1 + 16) = result;
  return result;
}

double sub_21B49B530@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B4C7128();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B4C6778();
  v40 = v9;
  v41 = v8;
  v10 = *(a1 + 24);
  v38 = v10;
  v43 = *a1;
  v44 = *(a1 + 2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886A0, &qword_21B4DA2C0);
  MEMORY[0x21CEF18B0](&v42, v11);
  v12 = MEMORY[0x277D3D8D8];
  if ((*(a1 + 40) & 1) == 0)
  {
    v12 = MEMORY[0x277D3D8E8];
  }

  (*(v5 + 104))(v7, *v12, v4);
  v39 = v10 & 1;
  v13 = sub_21B4C9F08();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  *&v43 = v13;
  *(&v43 + 1) = v15;
  sub_21B3A5DF0();
  v16 = sub_21B4C7F48();
  v18 = v17;
  v20 = v19;
  v21 = sub_21B4C7F18();
  v23 = v22;
  v25 = v24;
  sub_21B495798(v16, v18, v20 & 1);

  sub_21B4C80A8();
  v26 = sub_21B4C7F08();
  v28 = v27;
  LOBYTE(v15) = v29;
  v31 = v30;

  sub_21B495798(v21, v23, v25 & 1);

  LOBYTE(v43) = 0;
  v32 = v39;
  LOBYTE(v42) = (v38 & 1) == 0;
  v33 = v42;
  v35 = v40;
  v34 = v41;
  *a2 = v41;
  *(a2 + 8) = v35;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = v32;
  *(a2 + 41) = v33;
  *(a2 + 48) = v26;
  *(a2 + 56) = v28;
  *(a2 + 64) = v15 & 1;
  *(a2 + 72) = v31;
  v36 = v34;
  sub_21B49E9C8(v34, v35, 0);

  sub_21B49E9D8(v26, v28, v15 & 1, v31);
  sub_21B49EA1C(v26, v28, v15 & 1, v31);
  sub_21B495798(v36, v35, 0);

  return result;
}

__n128 sub_21B49B82C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6 = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  sub_21B49B530(&v6, v8);
  v4 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v8[4];
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t ShowAutoDownloadPickerLink.init(autoDownloadOption:openGlobalSettingsBlock:uuid:isSerialShow:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
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

uint64_t ShowAutoDownloadPickerLink.body.getter()
{
  v1 = type metadata accessor for AutoDownloadPickerView(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = v0[1];
  v22 = *v0;
  v23 = v4;
  *v24 = v0[2];
  *&v24[9] = *(v0 + 41);
  v20 = v22;
  v21 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886A0, &qword_21B4DA2C0);
  sub_21B4C8188();
  v16 = v18;
  v5 = v19;
  v7 = *&v24[8];
  v6 = *&v24[16];
  v9 = *(&v23 + 1);
  v8 = *v24;
  v10 = v24[24];
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88618, &qword_21B4DA240);
  swift_storeEnumTagMultiPayload();
  v11 = v3 + v1[6];
  LOBYTE(v18) = 0;

  sub_21B4C80F8();
  v12 = *(&v20 + 1);
  *v11 = v20;
  *(v11 + 1) = v12;
  v13 = v3 + v1[5];
  *v13 = v16;
  *(v13 + 2) = v5;
  v14 = v3 + v1[7];
  *v14 = v7;
  *(v14 + 1) = v6;
  *(v14 + 2) = v9;
  *(v14 + 3) = v8;
  v14[32] = v10;
  v17 = &v22;
  type metadata accessor for AutomaticallyDownloadCellStack(0);
  sub_21B49CF50(&qword_27CD886E0, type metadata accessor for AutomaticallyDownloadCellStack, &unk_21B4DA868);
  sub_21B49CF50(&qword_27CD886E8, type metadata accessor for AutoDownloadPickerView, &protocol conformance descriptor for AutoDownloadPickerView);
  return sub_21B4C7A88();
}

__n128 sub_21B49BAE4@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD886A0, &qword_21B4DA2C0);
  sub_21B4C8188();
  LOBYTE(a1) = *(a1 + 56);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD887F8, &qword_21B4DA8C8);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for AutomaticallyDownloadCellStack(0);
  v5 = a2 + *(v4 + 20);
  result = v7;
  *v5 = v7;
  *(v5 + 2) = v8;
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

uint64_t GlobalSettingsDeepLinkState.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448, &qword_21B4DA070);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-v3];
  v5 = OBJC_IVAR____TtC10PodcastsUI27GlobalSettingsDeepLinkState__deepLinkToAutomaticDownloadPicker;
  v7[15] = 0;
  sub_21B4C7728();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

void sub_21B49BCA8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21B4C7768();

  *a2 = v3;
}

uint64_t sub_21B49BD28(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21B4C7778();
}

uint64_t sub_21B49BD9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21B4C7768();

  return v1;
}

uint64_t sub_21B49BE10(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21B4C7778();
}

uint64_t (*sub_21B49BE80(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21B4C7758();
  return sub_21B49BF24;
}

void sub_21B49BF24(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21B49BF8C(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448, &qword_21B4DA070);
  sub_21B4C7738();
  return swift_endAccess();
}

uint64_t sub_21B49C004(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88708, &qword_21B4DA378);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448, &qword_21B4DA070);
  sub_21B4C7748();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_21B49C188()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448, &qword_21B4DA070);
  sub_21B4C7738();
  return swift_endAccess();
}

uint64_t sub_21B49C1FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88708, &qword_21B4DA378);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448, &qword_21B4DA070);
  sub_21B4C7748();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21B49C334(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88708, &qword_21B4DA378);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC10PodcastsUI27GlobalSettingsDeepLinkState__deepLinkToAutomaticDownloadPicker;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448, &qword_21B4DA070);
  sub_21B4C7738();
  swift_endAccess();
  return sub_21B49C4A4;
}

void sub_21B49C4A4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_21B4C7748();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_21B4C7748();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t GlobalSettingsDeepLinkState.deinit()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI27GlobalSettingsDeepLinkState__deepLinkToAutomaticDownloadPicker;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448, &qword_21B4DA070);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GlobalSettingsDeepLinkState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI27GlobalSettingsDeepLinkState__deepLinkToAutomaticDownloadPicker;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448, &qword_21B4DA070);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21B49C720@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GlobalSettingsDeepLinkState(0);
  result = sub_21B4C76A8();
  *a2 = result;
  return result;
}

BOOL GlobalSettingsDeepLinkState.Destination.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B4CA518();

  return v2 != 0;
}

uint64_t sub_21B49C7C4()
{
  sub_21B4CA6E8();
  sub_21B4C9658();
  return sub_21B4CA738();
}

uint64_t sub_21B49C838(uint64_t a1)
{
  sub_21B4CA6E8();
  sub_21B4C9658();
  return sub_21B4CA738();
}

void sub_21B49C88C(BOOL *a2@<X8>)
{
  v3 = sub_21B4CA518();

  *a2 = v3 != 0;
}

unint64_t sub_21B49C928()
{
  result = qword_27CD88630;
  if (!qword_27CD88630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88628, &qword_21B4DA250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88638, &qword_21B4DA258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88640, &qword_21B4DA260);
    sub_21B4C7BF8();
    sub_21B49CA98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21B49CAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88630);
  }

  return result;
}

unint64_t sub_21B49CA98()
{
  result = qword_27CD88648;
  if (!qword_27CD88648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88648);
  }

  return result;
}

unint64_t sub_21B49CAEC()
{
  result = qword_27CD88650;
  if (!qword_27CD88650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88658, &qword_21B4DA268);
    sub_21B49CBA8();
    sub_21B49CF50(&qword_27CD88680, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88650);
  }

  return result;
}

unint64_t sub_21B49CBA8()
{
  result = qword_27CD88660;
  if (!qword_27CD88660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88668, &qword_21B4DA270);
    sub_21B3F1314(&qword_27CD88670, &qword_27CD88678, &qword_21B4DA278, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88660);
  }

  return result;
}

uint64_t sub_21B49CC6C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21B49CD14;

  return sub_21B499308(a1, a2, v2 + 16);
}

uint64_t sub_21B49CD14(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_21B49CE18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21B40998C;

  return sub_21B4994C4(a1, a2, a3, v8);
}

uint64_t sub_21B49CF50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21B49CFD4()
{
  result = qword_27CD88700;
  if (!qword_27CD88700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88700);
  }

  return result;
}

unint64_t sub_21B49D0CC()
{
  result = qword_27CD88710;
  if (!qword_27CD88710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88710);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10PodcastsUI18AutoDownloadPickerV0E4TypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B49D138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 33))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}