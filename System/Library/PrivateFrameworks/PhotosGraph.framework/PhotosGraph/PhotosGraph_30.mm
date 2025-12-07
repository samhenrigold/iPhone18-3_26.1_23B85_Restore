uint64_t sub_22F33FEEC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F742170();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  return sub_22F7421D0();
}

uint64_t sub_22F33FF48(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_22F742170();
  CLLocationCoordinate2D.hash(into:)(v2, v3);
  return sub_22F7421D0();
}

unint64_t sub_22F33FF9C()
{
  result = qword_27DAB3980;
  if (!qword_27DAB3980)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3980);
  }

  return result;
}

id sub_22F340010(unint64_t a1)
{
  if (qword_2810A9AB0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v2 = qword_2810B4DD8;
    *&v3 = CACurrentMediaTime();
    sub_22F1B560C("FlexMusicMaestroKeywordDataFrame", 32, 2u, v3, 0, v2, v64);
    v63 = MEMORY[0x277D84FA0];
    if (a1 >> 62)
    {
      v4 = sub_22F741A00();
      if (!v4)
      {
LABEL_40:
        v6 = MEMORY[0x277D84F98];
        v44 = MEMORY[0x277D84FA0];
        goto LABEL_41;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_40;
      }
    }

    v5 = 0;
    v52 = a1 & 0xC000000000000001;
    v48 = a1 + 32;
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x277D84F98];
    v7 = &off_27888E000;
    v50 = v4;
    v51 = a1;
LABEL_6:
    if (v52)
    {
      v11 = MEMORY[0x2319016F0](v5, a1);
      v12 = __OFADD__(v5, 1);
      v13 = v5 + 1;
      if (!v12)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }

    if (v5 < *(v49 + 16))
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v11 = *(v48 + 8 * v5);
  swift_unknownObjectRetain();
  v12 = __OFADD__(v5, 1);
  v13 = v5 + 1;
  if (v12)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_12:
  v56 = v6;
  v57 = v13;
  v14 = [v11 uid];
  v53 = sub_22F740E20();
  v54 = v15;

  v55 = v11;
  v16 = [v11 v7[280]];
  sub_22F170D8C();
  a1 = sub_22F740CA0();

  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v60 = a1;

  v22 = 0;
  v23 = MEMORY[0x277D84F98];
  v58 = v21;
  v59 = a1 + 64;
  while (v20)
  {
    v24 = v22;
LABEL_23:
    v25 = __clz(__rbit64(v20)) | (v24 << 6);
    v26 = (*(v60 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(*(v60 + 56) + 8 * v25);
    swift_bridgeObjectRetain_n();
    v61 = v29;
    [v61 floatValue];
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v23;
    a1 = v23;
    v34 = sub_22F1229E8(v27, v28);
    v35 = v23[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v38 = v33;
    if (v23[3] >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a1 = &v62;
        sub_22F1350D0();
      }
    }

    else
    {
      sub_22F127068(v37, isUniquelyReferenced_nonNull_native);
      a1 = v62;
      v39 = sub_22F1229E8(v27, v28);
      if ((v38 & 1) != (v40 & 1))
      {
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      v34 = v39;
    }

    v20 &= v20 - 1;
    if (v38)
    {

      v23 = v62;
      *(*(v62 + 56) + 4 * v34) = v31;
    }

    else
    {
      v23 = v62;
      *(v62 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v41 = (v23[6] + 16 * v34);
      *v41 = v27;
      v41[1] = v28;
      *(v23[7] + 4 * v34) = v31;

      v42 = v23[2];
      v12 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v12)
      {
        goto LABEL_35;
      }

      v23[2] = v43;
    }

    v22 = v24;
    v21 = v58;
    v17 = v59;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v22;
    if (v20)
    {
      goto LABEL_23;
    }
  }

  v8 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v56;
  sub_22F132CD0(v23, v53, v54, v8);

  v6 = v62;
  v7 = &off_27888E000;
  v9 = [v55 weightedKeywords];
  v10 = sub_22F740CA0();

  sub_22F2EA928(v10);
  swift_unknownObjectRelease();
  a1 = v51;
  v5 = v57;
  if (v57 != v50)
  {
    goto LABEL_6;
  }

  v44 = v63;
LABEL_41:
  v45 = sub_22F338140(v6, v44);
  if (v47)
  {
  }

  else
  {

    sub_22F1B2BBC(0);
  }

  return v45;
}

id TripTitleAnalyticsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TripTitleAnalyticsHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TripTitleAnalyticsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *_s11PhotosGraph24TripTitleAnalyticsHelperC16analyticsPayload3forSDySSSo8NSObjectCGAA0C16FeatureProcessorC_tFZ_0(uint64_t a1)
{
  v2 = OBJC_IVAR___PGTripFeatureProcessor_scoreModifierNamesMet;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_22F10B348(*(v3 + 16), 0);
    v6 = sub_22F11A438(v21, v5 + 4, v4, v3);
    v7 = v21[0];
    swift_bridgeObjectRetain_n();
    sub_22F1534EC(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v21[0] = v5;
  sub_22F1AB0EC(v21);
  v8 = 1701736270;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v9 = sub_22F740DA0();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3988, &qword_22F786B68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7707D0;
  strcpy((inited + 32), "levelSelected");
  *(inited + 46) = -4864;
  v13 = sub_22F740DF0();

  *(inited + 48) = v13;
  strcpy((inited + 56), "thresholdMet");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v14 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  if (v14)
  {
    v8 = v9;
  }

  else
  {

    v11 = 0xE400000000000000;
  }

  MEMORY[0x231900B10](v8, v11);

  v15 = sub_22F740DF0();

  *(inited + 72) = v15;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000022F792BD0;
  LODWORD(v21[0]) = 5;
  sub_22F742010();
  v16 = sub_22F740DF0();

  *(inited + 96) = v16;
  v17 = sub_22F14E718(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3990, &unk_22F786B70);
  swift_arrayDestroy();
  if (*(a1 + OBJC_IVAR___PGTripFeatureProcessor_currentError + 8))
  {

    v18 = sub_22F740DF0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = v17;
    sub_22F12FEE8(v18, 0x726F727265, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    return v21[0];
  }

  return v17;
}

void sub_22F340A84(const char *a1@<X5>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, SEL *a5@<X3>, Class *a6@<X4>, uint64_t *a7@<X8>, ...)
{
  v45 = a1;
  v46 = a5;
  v47 = a6;
  v48 = a4;
  v49 = a7;
  v9 = sub_22F73F090();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph_];
  v14 = v13;
  v15 = *(a3 + 16);
  v52 = v9;
  v44 = a3;
  if (v15)
  {
    v16 = objc_opt_self();
    v18 = *(v10 + 16);
    v17 = v10 + 16;
    v50 = v18;
    v51 = v16;
    v19 = a3 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    v21 = (v17 - 8);
    do
    {
      v50(v12, v19, v9);
      v22 = sub_22F73F010();
      v23 = [v51 momentNodesInUniversalDateInterval:v22 inGraph:a2];

      v24 = [v14 collectionByFormingUnionWith_];
      v9 = v52;
      (*v21)(v12, v52);
      v19 += v20;
      v14 = v24;
      --v15;
    }

    while (v15);
  }

  else
  {
    v24 = v13;
  }

  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 *v46];
  v28 = [objc_msgSend(v26 graph)];
  swift_unknownObjectRelease();
  v29 = [v28 concreteGraph];

  if (v29)
  {
    v30 = [v26 elementIdentifiers];
    v31 = [v29 adjacencyWithSources:v30 relation:v27];

    v32 = objc_allocWithZone(*v47);
    v33 = [v31 targets];
    v34 = [v32 initWithGraph:v29 elementIdentifiers:v33];

    v35 = [v34 localIdentifiers];
    v36 = sub_22F741420();

    v37 = sub_22F7415C0();
    v38 = [v48 loggingConnection];
    if (os_log_type_enabled(v38, v37))
    {

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53 = v40;
      *v39 = 134218242;
      *(v39 + 4) = *(v36 + 16);

      *(v39 + 12) = 2080;
      v41 = MEMORY[0x231900D40](v44, v52);
      v43 = sub_22F145F20(v41, v42, &v53);

      *(v39 + 14) = v43;
      _os_log_impl(&dword_22F0FC000, v38, v37, v45, v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x2319033A0](v40, -1, -1);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    swift_unknownObjectRelease();
    *v49 = v36;
  }

  else
  {
    sub_22F741D40();
    __break(1u);
  }
}

uint64_t sub_22F340F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v45 = a3;
  v46 = a4;
  v47 = sub_22F73F090();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph_];
  v10 = v9;
  v11 = *(a2 + 16);
  v44 = a2;
  if (v11)
  {
    v12 = objc_opt_self();
    v49 = a1;
    v50 = v12;
    v13 = v6 + 16;
    v48 = *(v6 + 16);
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v16 = (v13 - 8);
    v17 = v47;
    do
    {
      v48(v8, v14, v17);
      v18 = sub_22F73F010();
      v19 = [v50 momentNodesInUniversalDateInterval:v18 inGraph:v49];

      v20 = [v10 collectionByFormingUnionWith_];
      (*v16)(v8, v17);
      v14 += v15;
      v10 = v20;
      --v11;
    }

    while (v11);
  }

  else
  {
    v20 = v9;
  }

  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 memoryOfMoment];
  v24 = [objc_msgSend(v22 graph)];
  swift_unknownObjectRelease();
  v25 = [v24 concreteGraph];

  if (!v25)
  {
    goto LABEL_12;
  }

  v26 = [v22 elementIdentifiers];
  v27 = [v25 adjacencyWithSources:v26 relation:v23];

  v52 = MEMORY[0x277D84FA0];
  v28 = objc_allocWithZone(PGGraphMemoryNodeCollection);
  v29 = [v27 targets];
  v30 = [v28 initWithGraph:v25 elementIdentifiers:v29];

  v31 = swift_allocObject();
  *(v31 + 16) = &v52;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_22F341BE8;
  *(v32 + 24) = v31;
  aBlock[4] = sub_22F1F68E8;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_12_2;
  v33 = _Block_copy(aBlock);

  [v30 enumerateUsingBlock_];

  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  v34 = v47;
  if (v33)
  {
    __break(1u);
LABEL_12:
    result = sub_22F741D40();
    __break(1u);
    return result;
  }

  v35 = sub_22F7415C0();
  v36 = [v45 loggingConnection];
  if (os_log_type_enabled(v36, v35))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 134218242;
    swift_beginAccess();
    *(v37 + 4) = *(v52 + 16);
    *(v37 + 12) = 2080;
    v39 = MEMORY[0x231900D40](v44, v34);
    v41 = sub_22F145F20(v39, v40, aBlock);

    *(v37 + 14) = v41;
    _os_log_impl(&dword_22F0FC000, v36, v35, "Found %ld trip UUIDs in date intervals %s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x2319033A0](v38, -1, -1);
    MEMORY[0x2319033A0](v37, -1, -1);
  }

  swift_unknownObjectRelease();
  swift_beginAccess();
  *v46 = v52;
}

double sub_22F3414D0(void *a1)
{
  v2 = [a1 UUID];
  if (v2)
  {
    v4 = v2;
    v5 = sub_22F740E20();
    v7 = v6;

    if ([a1 memoryCategory] == 19 || objc_msgSend(a1, sel_memoryCategory) == 31)
    {
      sub_22F10BBDC(&v8, v5, v7);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_22F3415A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v45 = a3;
  v46 = a4;
  v47 = sub_22F73F090();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph_];
  v10 = v9;
  v11 = *(a2 + 16);
  v44 = a2;
  if (v11)
  {
    v12 = objc_opt_self();
    v49 = a1;
    v50 = v12;
    v13 = v6 + 16;
    v48 = *(v6 + 16);
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v16 = (v13 - 8);
    v17 = v47;
    do
    {
      v48(v8, v14, v17);
      v18 = sub_22F73F010();
      v19 = [v50 momentNodesInUniversalDateInterval:v18 inGraph:v49];

      v20 = [v10 collectionByFormingUnionWith_];
      (*v16)(v8, v17);
      v14 += v15;
      v10 = v20;
      --v11;
    }

    while (v11);
  }

  else
  {
    v20 = v9;
  }

  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 socialGroupInMoment];
  v24 = [objc_msgSend(v22 graph)];
  swift_unknownObjectRelease();
  v25 = [v24 concreteGraph];

  if (!v25)
  {
    goto LABEL_12;
  }

  v26 = [v22 elementIdentifiers];
  v27 = [v25 adjacencyWithSources:v26 relation:v23];

  v52 = MEMORY[0x277D84FA0];
  v28 = objc_allocWithZone(PGGraphSocialGroupNodeCollection);
  v29 = [v27 targets];
  v30 = [v28 initWithGraph:v25 elementIdentifiers:v29];

  v31 = swift_allocObject();
  *(v31 + 16) = &v52;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_22F341BC8;
  *(v32 + 24) = v31;
  aBlock[4] = sub_22F26B650;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_33;
  v33 = _Block_copy(aBlock);

  [v30 enumerateUsingBlock_];

  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  v34 = v47;
  if (v33)
  {
    __break(1u);
LABEL_12:
    result = sub_22F741D40();
    __break(1u);
    return result;
  }

  v35 = sub_22F7415C0();
  v36 = [v45 loggingConnection];
  if (os_log_type_enabled(v36, v35))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 134218242;
    swift_beginAccess();
    *(v37 + 4) = *(v52 + 16);
    *(v37 + 12) = 2080;
    v39 = MEMORY[0x231900D40](v44, v34);
    v41 = sub_22F145F20(v39, v40, aBlock);

    *(v37 + 14) = v41;
    _os_log_impl(&dword_22F0FC000, v36, v35, "Found %ld social group UUIDs in date intervals %s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x2319033A0](v38, -1, -1);
    MEMORY[0x2319033A0](v37, -1, -1);
  }

  swift_unknownObjectRelease();
  swift_beginAccess();
  *v46 = v52;
}

double sub_22F341B54(void *a1)
{
  v1 = [a1 persistedUUID];
  if (v1)
  {
    v3 = v1;
    v4 = sub_22F740E20();
    v6 = v5;

    sub_22F10BBDC(&v7, v4, v6);
  }

  return result;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22F341C50(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v10 = v9 | (v8 << 6);
        v11 = *(*(a1 + 56) + 8 * v10);
        if (v11[2])
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v13 = (*(a1 + 48) + 16 * v10);
      v31 = v13[1];
      v32 = *v13;
      v29 = v11[4];
      v30 = v11[5];
      v14 = *(v2 + 16);
      if (*(v2 + 24) <= v14)
      {

        sub_22F125154(v14 + 1, 1);
        v2 = v33;
      }

      else
      {
      }

      sub_22F742170();
      sub_22F740D60();
      v15 = sub_22F7421D0();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = v15 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        break;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v30;
LABEL_24:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = 16 * v20;
      v27 = (*(v2 + 48) + v26);
      *v27 = v32;
      v27[1] = v31;
      v28 = (*(v2 + 56) + v26);
      *v28 = v29;
      v28[1] = v21;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v22 = 0;
    v23 = (63 - v17) >> 6;
    v21 = v30;
    while (++v19 != v23 || (v22 & 1) == 0)
    {
      v24 = v19 == v23;
      if (v19 == v23)
      {
        v19 = 0;
      }

      v22 |= v24;
      v25 = *(v16 + 8 * v19);
      if (v25 != -1)
      {
        v20 = __clz(__rbit64(~v25)) + (v19 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v12 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v12);
      ++v8;
      if (v6)
      {
        v8 = v12;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.persistentIDByPlaylistID()()
{
  sub_22F341C50(*v0);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B98, &qword_22F770D10);
    v4 = sub_22F741DF0();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v7 = v4;
  sub_22F342C28(v2, sub_22F34303C, 0, 1, &v7);
  v5 = v7;
  if (v1)
  {
  }

  return v5;
}

uint64_t MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.Filters.PlaylistInfo.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22F341F9C(uint64_t a1)
{
  v2 = sub_22F343080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F341FD8(uint64_t a1)
{
  v2 = sub_22F343080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.Filters.PlaylistInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3998, &qword_22F786BB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F343080();
  sub_22F742200();
  if (!v2)
  {
    v9 = sub_22F741EB0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F3421A0()
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F34221C(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

void sub_22F342274(BOOL *a2@<X8>)
{
  v3 = sub_22F741E30();

  *a2 = v3 != 0;
}

void sub_22F3422C8(uint64_t a1@<X8>)
{
  strcpy(a1, "personal-mix");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void sub_22F34230C(BOOL *a3@<X8>)
{
  v4 = sub_22F741E30();

  *a3 = v4 != 0;
}

uint64_t sub_22F342364(uint64_t a1)
{
  v2 = sub_22F3430D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3423A0(uint64_t a1)
{
  v2 = sub_22F3430D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.Filters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB39A8, &qword_22F786BC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3430D4();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB39B0, &qword_22F786BC8);
    sub_22F343128();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.filters.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void sub_22F3425A0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_22F342628(uint64_t a1)
{
  v2 = sub_22F343234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F342664(uint64_t a1)
{
  v2 = sub_22F343234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB39C0, &qword_22F786BD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F343234();
  sub_22F742200();
  if (!v2)
  {
    sub_22F343288();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double MusicKitPersonalPlaylistsResponse.meta.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t sub_22F342838()
{
  if (*v0)
  {
    return 1635018093;
  }

  else
  {
    return 1635017060;
  }
}

void sub_22F34285C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22F742040();

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

uint64_t sub_22F34292C(uint64_t a1)
{
  v2 = sub_22F3432DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F342968(uint64_t a1)
{
  v2 = sub_22F3432DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void MusicKitPersonalPlaylistsResponse.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB39C8, &unk_22F786BE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3432DC();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F30, &qword_22F777828);
    v12 = 0;
    sub_22F343330(&qword_2810A9310, &qword_27DAB1F30, &qword_22F777828, sub_22F1A8E44);
    sub_22F741F10();
    v9 = v13;
    v12 = 1;
    sub_22F3433AC();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    a2[1] = v10;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

void sub_22F342C28(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v41 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v40 = (63 - v6) >> 6;

  v9 = 0;
  v10 = 0;
  v11 = v8;
  if (v8)
  {
LABEL_9:
    while (1)
    {
      v13 = (v10 << 10) | (16 * __clz(__rbit64(v11)));
      v14 = (*(a1 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(a1 + 56) + v13);
      v18 = *v17;
      v19 = v17[1];
      v50 = v15;
      v51 = v16;
      v52 = v18;
      v53 = v19;

      a2(&v46, &v50);

      v21 = v46;
      v20 = v47;
      v22 = v48;
      v44 = v49;
      v50 = v46;
      v51 = v47;
      v23 = *a5;
      v25 = sub_22F1229E8(v46, v47);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if (a4)
        {
          if (v24)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_22F133E78();
          if (v29)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_22F125154(v28, a4 & 1);
        v30 = sub_22F1229E8(v21, v20);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_26;
        }

        v25 = v30;
        if (v29)
        {
LABEL_20:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3A00, &qword_22F7871F8);
          sub_22F3438A0();
          v38 = swift_allocError();
          swift_willThrow();
          v54 = v38;
          v39 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
          if (swift_dynamicCast())
          {
            goto LABEL_27;
          }

          sub_22F1534EC(a1);

          return;
        }
      }

      v32 = *a5;
      *(*a5 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v33 = (v32[6] + 16 * v25);
      *v33 = v21;
      v33[1] = v20;
      v34 = (v32[7] + 16 * v25);
      *v34 = v22;
      v34[1] = v44;
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_25;
      }

      v32[2] = v37;
      a4 = 1;
      v9 = v10;
      v11 &= v11 - 1;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v9;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v40)
      {
        sub_22F1534EC(a1);

        return;
      }

      v11 = *(v41 + 8 * v10);
      ++v12;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22F7420C0();
  __break(1u);
LABEL_27:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78EFE0);
  sub_22F741C50();
  MEMORY[0x231900B10](39, 0xE100000000000000);
  sub_22F741D40();
  __break(1u);
}

double sub_22F34303C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v2;
  a2[3] = v3;

  return result;
}

unint64_t sub_22F343080()
{
  result = qword_27DAB39A0;
  if (!qword_27DAB39A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39A0);
  }

  return result;
}

unint64_t sub_22F3430D4()
{
  result = qword_2810A9D40;
  if (!qword_2810A9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D40);
  }

  return result;
}

unint64_t sub_22F343128()
{
  result = qword_2810A93A0;
  if (!qword_2810A93A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB39B0, &qword_22F786BC8);
    sub_22F343330(&qword_2810A9308, &qword_27DAB39B8, &qword_22F786BD0, sub_22F3431E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A93A0);
  }

  return result;
}

unint64_t sub_22F3431E0()
{
  result = qword_2810A9D48;
  if (!qword_2810A9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D48);
  }

  return result;
}

unint64_t sub_22F343234()
{
  result = qword_2810A9D60;
  if (!qword_2810A9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D60);
  }

  return result;
}

unint64_t sub_22F343288()
{
  result = qword_2810A9D28;
  if (!qword_2810A9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D28);
  }

  return result;
}

unint64_t sub_22F3432DC()
{
  result = qword_2810A9D18;
  if (!qword_2810A9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D18);
  }

  return result;
}

uint64_t sub_22F343330(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F3433AC()
{
  result = qword_2810A9D20;
  if (!qword_2810A9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D20);
  }

  return result;
}

unint64_t sub_22F343484()
{
  result = qword_27DAB39D0;
  if (!qword_27DAB39D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39D0);
  }

  return result;
}

unint64_t sub_22F3434DC()
{
  result = qword_27DAB39D8;
  if (!qword_27DAB39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39D8);
  }

  return result;
}

unint64_t sub_22F343534()
{
  result = qword_27DAB39E0;
  if (!qword_27DAB39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39E0);
  }

  return result;
}

unint64_t sub_22F34358C()
{
  result = qword_27DAB39E8;
  if (!qword_27DAB39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39E8);
  }

  return result;
}

unint64_t sub_22F3435E4()
{
  result = qword_2810A9D08;
  if (!qword_2810A9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D08);
  }

  return result;
}

unint64_t sub_22F34363C()
{
  result = qword_2810A9D10;
  if (!qword_2810A9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D10);
  }

  return result;
}

unint64_t sub_22F343694()
{
  result = qword_2810A9D50;
  if (!qword_2810A9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D50);
  }

  return result;
}

unint64_t sub_22F3436EC()
{
  result = qword_2810A9D58;
  if (!qword_2810A9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D58);
  }

  return result;
}

unint64_t sub_22F343744()
{
  result = qword_2810A9D30;
  if (!qword_2810A9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D30);
  }

  return result;
}

unint64_t sub_22F34379C()
{
  result = qword_2810A9D38;
  if (!qword_2810A9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D38);
  }

  return result;
}

unint64_t sub_22F3437F4()
{
  result = qword_27DAB39F0;
  if (!qword_27DAB39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39F0);
  }

  return result;
}

unint64_t sub_22F34384C()
{
  result = qword_27DAB39F8;
  if (!qword_27DAB39F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39F8);
  }

  return result;
}

unint64_t sub_22F3438A0()
{
  result = qword_27DAB3A08[0];
  if (!qword_27DAB3A08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3A00, &qword_22F7871F8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAB3A08);
  }

  return result;
}

uint64_t sub_22F34395C(uint64_t a1)
{
  v2 = sub_22F345B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F343998(uint64_t a1)
{
  v2 = sub_22F345B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F343AD8(uint64_t a1)
{
  v2 = sub_22F345B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F343B14(uint64_t a1)
{
  v2 = sub_22F345B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F343B94(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  v19 = *v5;
  v11 = *(v5 + 4);
  v18 = v5[2];
  v17 = *(v5 + 12);
  v16 = v5[4];
  HIDWORD(v15) = *(v5 + 20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20();
  sub_22F742210();
  v27 = 0;
  v24 = v11;
  v12 = v21;
  sub_22F741F50();
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v13 = BYTE4(v15);
  v26 = 1;
  v23 = v17;
  sub_22F741F50();
  v25 = 2;
  v22 = v13;
  sub_22F741F50();
  return (*(v8 + 8))(v10, v7);
}

uint64_t _s11PhotosGraph13AudioAnalysisV15SavoyAttributesV4hash4intoys6HasherVz_tF_0()
{
  v1 = v0[12];
  v2 = v0[20];
  if (v0[4] == 1)
  {
    sub_22F742190();
    if (!v1)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_22F742190();
    if (!v2)
    {
      goto LABEL_4;
    }

    return sub_22F742190();
  }

  sub_22F742190();
  sub_22F7421B0();
  if (v1)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_22F742190();
  sub_22F7421B0();
  if (!v2)
  {
LABEL_4:
    sub_22F742190();
    return sub_22F7421B0();
  }

  return sub_22F742190();
}

uint64_t sub_22F343E64(uint64_t (*a1)(_DWORD *))
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = *(v1 + 16);
  v7 = *(v1 + 20);
  v9[18] = *v1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  sub_22F742170();
  a1(v9);
  return sub_22F7421D0();
}

uint64_t sub_22F343F24@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v17 = a6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22F742200();
  if (!v6)
  {
    v12 = v17;
    v21 = 0;
    v13 = sub_22F741E80();
    v20 = 1;
    v15 = sub_22F741E80();
    v19 = 2;
    v16 = sub_22F741E80();
    (*(v9 + 8))(v11, v18);
    *v12 = v13;
    *(v12 + 4) = BYTE4(v13) & 1;
    *(v12 + 8) = v15;
    *(v12 + 12) = BYTE4(v15) & 1;
    *(v12 + 16) = v16;
    *(v12 + 20) = BYTE4(v16) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F34413C(uint64_t a1, uint64_t a2, uint64_t (*a3)(_DWORD *))
{
  v5 = *(v3 + 4);
  v6 = *(v3 + 8);
  v7 = *(v3 + 12);
  v8 = *(v3 + 16);
  v9 = *(v3 + 20);
  v11[18] = *v3;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  sub_22F742170();
  a3(v11);
  return sub_22F7421D0();
}

uint64_t sub_22F3441D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_DWORD *))
{
  v6 = *(v4 + 4);
  v7 = *(v4 + 8);
  v8 = *(v4 + 12);
  v9 = *(v4 + 16);
  v10 = *(v4 + 20);
  v12[18] = *v4;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  sub_22F742170();
  a4(v12);
  return sub_22F7421D0();
}

uint64_t sub_22F34427C(uint64_t a1)
{
  v2 = sub_22F345BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3442B8(uint64_t a1)
{
  v2 = sub_22F345BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioAnalysis.TimeSeriesAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3AC0, &qword_22F7872D0);
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = *v1;
  v7 = *(v1 + 4);
  v28 = v1[1];
  v29 = v7;
  v8 = *(v1 + 20);
  v9 = *(v1 + 21);
  v10 = v1[3];
  v26 = v1[4];
  v27 = v10;
  v25 = *(v1 + 44);
  v24 = *(v1 + 10);
  v37 = *(v1 + 45);
  v11 = v1[6];
  v22 = v1[7];
  v23 = v11;
  v21 = *(v1 + 68);
  v20 = *(v1 + 16);
  HIDWORD(v19) = *(v1 + 69);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F345BE4();
  sub_22F742210();
  v32 = v6;
  v33 = v28;
  v35 = v8;
  v34 = v29;
  v36 = v9;
  v38 = 0;
  sub_22F345C38();
  v12 = v31;
  sub_22F741F70();
  if (v12)
  {
    return (*(v30 + 8))(v5, v3);
  }

  v14 = v20;
  v15 = v21;
  v17 = v22;
  v16 = v23;
  v18 = v30;
  v32 = v27;
  v33 = v26;
  v35 = (v24 | (v25 << 32)) >> 32;
  v34 = v24;
  v36 = v37;
  v38 = 1;
  sub_22F741F70();
  v32 = v16;
  v33 = v17;
  v35 = (v14 | (v15 << 32)) >> 32;
  v34 = v14;
  v36 = BYTE4(v19);
  v38 = 2;
  sub_22F741F70();
  return (*(v18 + 8))(v5, v3);
}

uint64_t AudioAnalysis.TimeSeriesAttributes.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16) | (*(v1 + 20) << 32);
  v6 = *(v1 + 21);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) | (*(v1 + 44) << 32);
  v10 = *(v1 + 45);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64) | (*(v1 + 68) << 32);
  v14 = *(v1 + 69);
  sub_22F345A78(a1, v3, v4, v5 | (v6 << 40));
  sub_22F345A78(a1, v7, v8, v9 | (v10 << 40));
  return sub_22F345A78(a1, v11, v12, v13 | (v14 << 40));
}

uint64_t AudioAnalysis.TimeSeriesAttributes.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 21);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40) | (*(v0 + 44) << 32);
  v8 = *(v0 + 45);
  v12 = *(v0 + 56);
  v13 = *(v0 + 48);
  v9 = *(v0 + 64) | (*(v0 + 68) << 32);
  v10 = *(v0 + 69);
  sub_22F742170();
  sub_22F345A78(v14, v1, v2, v3 | (v4 << 40));
  sub_22F345A78(v14, v5, v6, v7 | (v8 << 40));
  sub_22F345A78(v14, v13, v12, v9 | (v10 << 40));
  return sub_22F7421D0();
}

uint64_t AudioAnalysis.TimeSeriesAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3AD8, &qword_22F7872D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F345BE4();
  sub_22F742200();
  if (!v2)
  {
    v32 = 0;
    sub_22F345C8C();
    sub_22F741EA0();
    v26 = *(&v28 + 1);
    v27 = v28;
    v25 = v30;
    v9 = v29;
    v35 = v31;
    v32 = 1;
    sub_22F741EA0();
    v24 = v9;
    v11 = v28;
    v22 = v30;
    v23 = *(&v28 + 1);
    v21 = v29;
    v34 = v31;
    v32 = 2;
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    v12 = v29;
    v13 = v30;
    v14 = v24 | (v25 << 32);
    v15 = v31;
    v33 = v31;
    v16 = v21 | (v22 << 32);
    v17 = v35;
    v18 = v34;
    *a2 = v27;
    *(a2 + 8) = v26;
    *(a2 + 16) = v14;
    *(a2 + 20) = BYTE4(v14);
    *(a2 + 21) = v17;
    v19 = v23;
    *(a2 + 24) = v11;
    *(a2 + 32) = v19;
    *(a2 + 40) = v16;
    *(a2 + 44) = BYTE4(v16);
    *(a2 + 45) = v18;
    *(a2 + 48) = v28;
    *(a2 + 68) = v13;
    *(a2 + 64) = v12;
    *(a2 + 69) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F344A04()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 21);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40) | (*(v0 + 44) << 32);
  v8 = *(v0 + 45);
  v12 = *(v0 + 56);
  v13 = *(v0 + 48);
  v9 = *(v0 + 64) | (*(v0 + 68) << 32);
  v10 = *(v0 + 69);
  sub_22F742170();
  sub_22F345A78(v14, v1, v2, v3 | (v4 << 40));
  sub_22F345A78(v14, v5, v6, v7 | (v8 << 40));
  sub_22F345A78(v14, v13, v12, v9 | (v10 << 40));
  return sub_22F7421D0();
}

uint64_t sub_22F344AEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16) | (*(v1 + 20) << 32);
  v6 = *(v1 + 21);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) | (*(v1 + 44) << 32);
  v10 = *(v1 + 45);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64) | (*(v1 + 68) << 32);
  v14 = *(v1 + 69);
  sub_22F345A78(a1, v3, v4, v5 | (v6 << 40));
  sub_22F345A78(a1, v7, v8, v9 | (v10 << 40));
  return sub_22F345A78(a1, v11, v12, v13 | (v14 << 40));
}

uint64_t sub_22F344BB8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | (*(v1 + 20) << 32);
  v5 = *(v1 + 21);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40) | (*(v1 + 44) << 32);
  v9 = *(v1 + 45);
  v13 = *(v1 + 56);
  v14 = *(v1 + 48);
  v10 = *(v1 + 64) | (*(v1 + 68) << 32);
  v11 = *(v1 + 69);
  sub_22F742170();
  sub_22F345A78(v15, v2, v3, v4 | (v5 << 40));
  sub_22F345A78(v15, v6, v7, v8 | (v9 << 40));
  sub_22F345A78(v15, v14, v13, v10 | (v11 << 40));
  return sub_22F7421D0();
}

__n128 AudioAnalysis.energy.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u32[0];
  v3 = v1[1].n128_u8[4];
  v4 = v1[1].n128_u8[5];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[4] = v3;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[5] = v4;
  return result;
}

__n128 AudioAnalysis.valence.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 44);
  v4 = *(v1 + 45);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[4] = v3;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[5] = v4;
  return result;
}

__n128 AudioAnalysis.loudness.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *(a1 + 32) = *(v1 + 80);
  *(a1 + 48) = v2;
  *(a1 + 63) = *(v1 + 111);
  result = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22F344D34()
{
  v1 = 0x65636E656C6176;
  if (*v0 != 1)
  {
    v1 = 0x7373656E64756F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796772656E65;
  }
}

uint64_t sub_22F344D8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F3466EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F344DB4(uint64_t a1)
{
  v2 = sub_22F345EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F344DF0(uint64_t a1)
{
  v2 = sub_22F345EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioAnalysis.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3AE8, &qword_22F7872E0);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v8 = *v2;
  v7 = v2[1];
  v21 = *(v2 + 4);
  v9 = *(v2 + 20);
  v28 = *(v2 + 21);
  v10 = v2[3];
  v18 = v2[4];
  v19 = v10;
  v17 = *(v2 + 44);
  v16 = *(v2 + 10);
  v20 = *(v2 + 45);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F345EA8();
  sub_22F742210();
  *&v24 = v8;
  *(&v24 + 1) = v7;
  BYTE4(v25) = v9;
  LODWORD(v25) = v21;
  BYTE5(v25) = v28;
  v29 = 0;
  sub_22F345EFC();
  v11 = v23;
  sub_22F741F70();
  if (v11)
  {
    return (*(v22 + 8))(v6, v4);
  }

  v13 = v22;
  *&v24 = v19;
  *(&v24 + 1) = v18;
  BYTE4(v25) = (v16 | (v17 << 32)) >> 32;
  LODWORD(v25) = v16;
  BYTE5(v25) = v20;
  v29 = 1;
  sub_22F741F70();
  v14 = *(v2 + 6);
  v26 = *(v2 + 5);
  v27[0] = v14;
  *(v27 + 15) = *(v2 + 111);
  v15 = *(v2 + 4);
  v24 = *(v2 + 3);
  v25 = v15;
  v29 = 2;
  sub_22F345F50();
  sub_22F741F70();
  return (*(v13 + 8))(v6, v4);
}

uint64_t AudioAnalysis.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32);
  v8 = *(v1 + 45);
  v20 = *(v1 + 56);
  v21 = *(v1 + 48);
  v17 = *(v1 + 68);
  v9 = *(v1 + 64);
  v24 = *(v1 + 72);
  v23 = *(v1 + 80);
  v16 = *(v1 + 92);
  v10 = *(v1 + 88);
  v18 = *(v1 + 69);
  v19 = *(v1 + 93);
  v25 = *(v1 + 104);
  v26 = *(v1 + 96);
  v11 = *(v1 + 116);
  v12 = *(v1 + 112);
  v22 = *(v1 + 117);
  v13 = *(v1 + 16) | (*(v1 + 20) << 32) | (*(v1 + 21) << 40);
  v14 = *(v1 + 118);
  sub_22F345A78(a1, v3, v4, v13);
  sub_22F345A78(a1, v5, v6, v7 | (v8 << 40));
  if (v14)
  {
    return sub_22F742190();
  }

  sub_22F742190();
  sub_22F345A78(a1, v21, v20, (v9 | (v17 << 32)) & 0xFFFFFFFFFFLL | ((v18 & 1) << 40));
  sub_22F345A78(a1, v24, v23, (v10 | (v16 << 32)) & 0xFFFFFFFFFFLL | ((v19 & 1) << 40));
  return sub_22F345A78(a1, v26, v25, (v12 | (v11 << 32)) & 0xFFFFFFFFFFLL | ((v22 & 1) << 40));
}

uint64_t AudioAnalysis.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 21);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40) | (*(v0 + 44) << 32);
  v8 = *(v0 + 45);
  v19 = *(v0 + 56);
  v20 = *(v0 + 48);
  v16 = *(v0 + 68);
  v13 = *(v0 + 64);
  v22 = *(v0 + 80);
  v23 = *(v0 + 72);
  v15 = *(v0 + 92);
  v9 = *(v0 + 88);
  v17 = *(v0 + 69);
  v18 = *(v0 + 93);
  v24 = *(v0 + 104);
  v25 = *(v0 + 96);
  v14 = *(v0 + 116);
  v12 = *(v0 + 112);
  v21 = *(v0 + 117);
  v10 = *(v0 + 118);
  sub_22F742170();
  sub_22F345A78(v26, v1, v2, v3 | (v4 << 40));
  sub_22F345A78(v26, v6, v5, v7 | (v8 << 40));
  sub_22F742190();
  if ((v10 & 1) == 0)
  {
    sub_22F345A78(v26, v20, v19, (v13 | (v16 << 32)) & 0xFFFFFFFFFFLL | ((v17 & 1) << 40));
    sub_22F345A78(v26, v23, v22, (v9 | (v15 << 32)) & 0xFFFFFFFFFFLL | ((v18 & 1) << 40));
    sub_22F345A78(v26, v25, v24, (v12 | (v14 << 32)) & 0xFFFFFFFFFFLL | ((v21 & 1) << 40));
  }

  return sub_22F7421D0();
}

uint64_t AudioAnalysis.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3B08, &qword_22F7872E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F345EA8();
  sub_22F742200();
  if (!v2)
  {
    v31 = 0;
    sub_22F345FA4();
    sub_22F741EA0();
    v35 = v27;
    v25 = BYTE4(v28);
    v26 = *(&v27 + 1);
    v9 = v28;
    v34 = BYTE5(v28);
    v31 = 1;
    sub_22F741EA0();
    v24 = v9;
    v23 = *(&v27 + 1);
    v11 = v27;
    v22 = BYTE4(v28);
    v12 = v28;
    v33 = BYTE5(v28);
    v31 = 2;
    sub_22F345FF8();
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    *&v32[50] = *v30;
    *&v32[65] = *&v30[15];
    *&v32[34] = v29;
    *&v32[18] = v28;
    *&v32[2] = v27;
    v13 = *&v32[48];
    *(a2 + 78) = *&v32[32];
    v14 = *v32;
    *(a2 + 62) = *&v32[16];
    *(a2 + 94) = v13;
    *(a2 + 103) = *&v32[57];
    v15 = v24 | (v25 << 32);
    v16 = v12 | (v22 << 32);
    v17 = v34;
    v18 = v33;
    v19 = v26;
    *a2 = v35;
    *(a2 + 8) = v19;
    *(a2 + 16) = v15;
    *(a2 + 20) = BYTE4(v15);
    *(a2 + 21) = v17;
    v20 = v23;
    *(a2 + 24) = v11;
    *(a2 + 32) = v20;
    *(a2 + 40) = v16;
    *(a2 + 44) = BYTE4(v16);
    *(a2 + 45) = v18;
    *(a2 + 46) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F345700(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32);
  v8 = *(v1 + 45);
  v20 = *(v1 + 56);
  v21 = *(v1 + 48);
  v17 = *(v1 + 68);
  v9 = *(v1 + 64);
  v24 = *(v1 + 72);
  v23 = *(v1 + 80);
  v16 = *(v1 + 92);
  v10 = *(v1 + 88);
  v18 = *(v1 + 69);
  v19 = *(v1 + 93);
  v25 = *(v1 + 104);
  v26 = *(v1 + 96);
  v11 = *(v1 + 116);
  v12 = *(v1 + 112);
  v22 = *(v1 + 117);
  v13 = *(v1 + 16) | (*(v1 + 20) << 32) | (*(v1 + 21) << 40);
  v14 = *(v1 + 118);
  sub_22F345A78(a1, v3, v4, v13);
  sub_22F345A78(a1, v5, v6, v7 | (v8 << 40));
  if (v14)
  {
    return sub_22F742190();
  }

  sub_22F742190();
  sub_22F345A78(a1, v21, v20, (v9 | (v17 << 32)) & 0xFFFFFFFFFFLL | ((v18 & 1) << 40));
  sub_22F345A78(a1, v24, v23, (v10 | (v16 << 32)) & 0xFFFFFFFFFFLL | ((v19 & 1) << 40));
  return sub_22F345A78(a1, v26, v25, (v12 | (v11 << 32)) & 0xFFFFFFFFFFLL | ((v22 & 1) << 40));
}

uint64_t sub_22F345890(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | (*(v1 + 20) << 32);
  v5 = *(v1 + 21);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40) | (*(v1 + 44) << 32);
  v9 = *(v1 + 45);
  v20 = *(v1 + 56);
  v21 = *(v1 + 48);
  v17 = *(v1 + 68);
  v14 = *(v1 + 64);
  v23 = *(v1 + 80);
  v24 = *(v1 + 72);
  v16 = *(v1 + 92);
  v10 = *(v1 + 88);
  v18 = *(v1 + 69);
  v19 = *(v1 + 93);
  v25 = *(v1 + 104);
  v26 = *(v1 + 96);
  v15 = *(v1 + 116);
  v13 = *(v1 + 112);
  v22 = *(v1 + 117);
  v11 = *(v1 + 118);
  sub_22F742170();
  sub_22F345A78(v27, v2, v3, v4 | (v5 << 40));
  sub_22F345A78(v27, v7, v6, v8 | (v9 << 40));
  sub_22F742190();
  if ((v11 & 1) == 0)
  {
    sub_22F345A78(v27, v21, v20, (v14 | (v17 << 32)) & 0xFFFFFFFFFFLL | ((v18 & 1) << 40));
    sub_22F345A78(v27, v24, v23, (v10 | (v16 << 32)) & 0xFFFFFFFFFFLL | ((v19 & 1) << 40));
    sub_22F345A78(v27, v26, v25, (v13 | (v15 << 32)) & 0xFFFFFFFFFFLL | ((v22 & 1) << 40));
  }

  return sub_22F7421D0();
}

uint64_t sub_22F345A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x10000000000) != 0)
  {
    return sub_22F742190();
  }

  sub_22F742190();
  if ((a2 & 0x100000000) == 0)
  {
    sub_22F742190();
    sub_22F7421B0();
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_22F742190();
    sub_22F7421B0();
    if ((a4 & 0x100000000) != 0)
    {
      return sub_22F742190();
    }

    goto LABEL_8;
  }

  sub_22F742190();
  if ((a3 & 0x100000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_22F742190();
  if ((a4 & 0x100000000) != 0)
  {
    return sub_22F742190();
  }

LABEL_8:
  sub_22F742190();
  return sub_22F7421B0();
}

unint64_t sub_22F345B3C()
{
  result = qword_27DAB3A98;
  if (!qword_27DAB3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3A98);
  }

  return result;
}

unint64_t sub_22F345B90()
{
  result = qword_27DAB3AB0;
  if (!qword_27DAB3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AB0);
  }

  return result;
}

unint64_t sub_22F345BE4()
{
  result = qword_27DAB3AC8;
  if (!qword_27DAB3AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AC8);
  }

  return result;
}

unint64_t sub_22F345C38()
{
  result = qword_27DAB3AD0;
  if (!qword_27DAB3AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AD0);
  }

  return result;
}

unint64_t sub_22F345C8C()
{
  result = qword_27DAB3AE0;
  if (!qword_27DAB3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AE0);
  }

  return result;
}

uint64_t _s11PhotosGraph13AudioAnalysisV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 118);
  v4 = a2[3];
  v3 = a2[4];
  v5 = *(a2 + 118);
  if (*(a1 + 21))
  {
    if ((*(a2 + 21) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (*(a2 + 21))
    {
      goto LABEL_39;
    }

    v8 = *a2;
    v7 = a2[1];
    if (*(a1 + 4))
    {
      if ((v8 & 0x100000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v6 = 0;
      if ((v8 & 0x100000000) != 0 || *a1 != *&v8)
      {
        return v6 & 1;
      }
    }

    if (*(a1 + 12))
    {
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v6 = 0;
      if ((v7 & 0x100000000) != 0 || *(a1 + 8) != *&v7)
      {
        return v6 & 1;
      }
    }

    v9 = *(a2 + 4) | (*(a2 + 20) << 32);
    if (*(a1 + 20))
    {
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v6 = 0;
      if ((v9 & 0x100000000) != 0 || *(a1 + 16) != *(a2 + 4))
      {
        return v6 & 1;
      }
    }
  }

  if (*(a1 + 45))
  {
    if ((*(a2 + 45) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_5;
  }

  if (*(a2 + 45))
  {
    goto LABEL_39;
  }

  if (*(a1 + 28))
  {
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v6 = 0;
    if ((v4 & 0x100000000) != 0 || *(a1 + 24) != *&v4)
    {
      return v6 & 1;
    }
  }

  if (*(a1 + 36))
  {
    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v6 = 0;
    if ((v3 & 0x100000000) != 0 || *(a1 + 32) != *&v3)
    {
      return v6 & 1;
    }
  }

  v14 = *(a2 + 10) | (*(a2 + 44) << 32);
  if (*(a1 + 44))
  {
    if ((v14 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v14 & 0x100000000) == 0 && *(a1 + 40) == *(a2 + 10))
  {
LABEL_5:
    if (*(a1 + 118))
    {
      v6 = *(a2 + 118);
      return v6 & 1;
    }

    v10 = *(a1 + 96);
    v18[2] = *(a1 + 80);
    *v19 = v10;
    *&v19[14] = *(a1 + 110);
    v11 = *(a1 + 64);
    v18[0] = *(a1 + 48);
    v18[1] = v11;
    v20 = v2;
    if ((v5 & 1) == 0)
    {
      v12 = *(a2 + 6);
      v16[2] = *(a2 + 5);
      v17[0] = v12;
      *(v17 + 14) = *(a2 + 110);
      v13 = *(a2 + 4);
      v16[0] = *(a2 + 3);
      v16[1] = v13;
      v6 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hi10TimeSeriesL0V2eeoiySbAM_AMtFZ_0(v18, v16);
      return v6 & 1;
    }

LABEL_39:
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_22F345EA8()
{
  result = qword_27DAB3AF0;
  if (!qword_27DAB3AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AF0);
  }

  return result;
}

unint64_t sub_22F345EFC()
{
  result = qword_27DAB3AF8;
  if (!qword_27DAB3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AF8);
  }

  return result;
}

unint64_t sub_22F345F50()
{
  result = qword_27DAB3B00;
  if (!qword_27DAB3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B00);
  }

  return result;
}

unint64_t sub_22F345FA4()
{
  result = qword_27DAB3B10;
  if (!qword_27DAB3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B10);
  }

  return result;
}

unint64_t sub_22F345FF8()
{
  result = qword_27DAB3B18;
  if (!qword_27DAB3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B18);
  }

  return result;
}

unint64_t sub_22F346050()
{
  result = qword_27DAB3B20;
  if (!qword_27DAB3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B20);
  }

  return result;
}

unint64_t sub_22F3460A8()
{
  result = qword_27DAB3B28;
  if (!qword_27DAB3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B28);
  }

  return result;
}

unint64_t sub_22F346100()
{
  result = qword_27DAB3B30;
  if (!qword_27DAB3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B30);
  }

  return result;
}

unint64_t sub_22F346158()
{
  result = qword_27DAB3B38;
  if (!qword_27DAB3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B38);
  }

  return result;
}

__n128 __swift_memcpy119_4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22F3461D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 119))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F3461F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 118) = 0;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 119) = v3;
  return result;
}

unint64_t sub_22F3462D0()
{
  result = qword_27DAB3B40;
  if (!qword_27DAB3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B40);
  }

  return result;
}

unint64_t sub_22F346328()
{
  result = qword_27DAB3B48;
  if (!qword_27DAB3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B48);
  }

  return result;
}

unint64_t sub_22F346380()
{
  result = qword_27DAB3B50;
  if (!qword_27DAB3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B50);
  }

  return result;
}

unint64_t sub_22F3463D8()
{
  result = qword_27DAB3B58;
  if (!qword_27DAB3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B58);
  }

  return result;
}

unint64_t sub_22F346430()
{
  result = qword_27DAB3B60;
  if (!qword_27DAB3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B60);
  }

  return result;
}

unint64_t sub_22F346488()
{
  result = qword_27DAB3B68;
  if (!qword_27DAB3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B68);
  }

  return result;
}

unint64_t sub_22F3464E0()
{
  result = qword_27DAB3B70;
  if (!qword_27DAB3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B70);
  }

  return result;
}

unint64_t sub_22F346538()
{
  result = qword_27DAB3B78;
  if (!qword_27DAB3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B78);
  }

  return result;
}

unint64_t sub_22F346590()
{
  result = qword_27DAB3B80;
  if (!qword_27DAB3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B80);
  }

  return result;
}

unint64_t sub_22F3465E8()
{
  result = qword_27DAB3B88;
  if (!qword_27DAB3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B88);
  }

  return result;
}

unint64_t sub_22F346640()
{
  result = qword_27DAB3B90;
  if (!qword_27DAB3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B90);
  }

  return result;
}

unint64_t sub_22F346698()
{
  result = qword_27DAB3B98;
  if (!qword_27DAB3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B98);
  }

  return result;
}

uint64_t sub_22F3466EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796772656E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E656C6176 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373656E64756F6CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

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

double static CollectionCuration.rewrite(curation:keySongAdamID:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[4];
  v9 = a1[5];
  type metadata accessor for CollectionCuration(0);

  sub_22F73F680();
  *a4 = v8;
  a4[1] = v7;
  a4[2] = a2;
  a4[3] = a3;
  a4[4] = v10;
  a4[5] = v9;

  return result;
}

uint64_t CollectionCuration.init(collectionId:keySongAdamID:keySongFlexUID:curationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  v10 = *(type metadata accessor for CollectionCuration(0) + 28);
  v11 = sub_22F73F690();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a8[v10], a7, v11);
}

uint64_t type metadata accessor for CollectionCuration(uint64_t a1)
{
  result = qword_27DAB3BA8;
  if (!qword_27DAB3BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double static CollectionCuration.rewrite(curation:keySongFlexUID:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  type metadata accessor for CollectionCuration(0);

  sub_22F73F680();
  *a4 = v8;
  a4[1] = v7;
  a4[2] = v10;
  a4[3] = v9;
  a4[4] = a2;
  a4[5] = a3;

  return result;
}

uint64_t CollectionCuration.hash(into:)(uint64_t a1)
{
  sub_22F740D60();
  if (!*(v1 + 24))
  {
    sub_22F742190();
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_22F742190();
    goto LABEL_6;
  }

  sub_22F742190();
  sub_22F740D60();
  if (!*(v1 + 40))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_22F742190();
  sub_22F740D60();
LABEL_6:
  type metadata accessor for CollectionCuration(0);
  sub_22F73F690();
  sub_22F347044(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_22F740D50();
}

uint64_t CollectionCuration.hashValue.getter()
{
  sub_22F742170();
  sub_22F740D60();
  if (!*(v0 + 24))
  {
    sub_22F742190();
    if (*(v0 + 40))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_22F742190();
    goto LABEL_6;
  }

  sub_22F742190();
  sub_22F740D60();
  if (!*(v0 + 40))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_22F742190();
  sub_22F740D60();
LABEL_6:
  type metadata accessor for CollectionCuration(0);
  sub_22F73F690();
  sub_22F347044(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22F740D50();
  return sub_22F7421D0();
}

uint64_t sub_22F346C3C(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();
  if (!*(v1 + 24))
  {
    sub_22F742190();
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_22F742190();
    goto LABEL_6;
  }

  sub_22F742190();
  sub_22F740D60();
  if (!*(v1 + 40))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_22F742190();
  sub_22F740D60();
LABEL_6:
  sub_22F73F690();
  sub_22F347044(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22F740D50();
  return sub_22F7421D0();
}

uint64_t CollectionCuration.description.getter()
{
  sub_22F741B00();
  MEMORY[0x231900B10](0x697463656C6C6F63, 0xEE00203A64496E6FLL);
  MEMORY[0x231900B10](*v0, v0[1]);
  MEMORY[0x231900B10](0xD000000000000011, 0x800000022F79B7C0);
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v0[3];
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x231900B10](v2, v3);

  MEMORY[0x231900B10](0xD000000000000012, 0x800000022F79B7E0);
  v4 = v0[5];
  if (v4)
  {
    v5 = v0[4];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v0[5];
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x231900B10](v5, v6);

  MEMORY[0x231900B10](8236, 0xE200000000000000);
  type metadata accessor for CollectionCuration(0);
  sub_22F73F690();
  sub_22F347044(&qword_2810AC6F8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v7 = sub_22F742010();
  MEMORY[0x231900B10](v7);

  return 0;
}

uint64_t _s11PhotosGraph18CollectionCurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_22F742040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_22F742040() & 1) != 0))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_20:
  type metadata accessor for CollectionCuration(0);

  return sub_22F73F630();
}

uint64_t sub_22F347044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22F3470B4(uint64_t a1)
{
  sub_22F1F208C();
  if (v1 <= 0x3F)
  {
    sub_22F73F690();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_22F347148(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F3471B0()
{
  swift_beginAccess();

  return result;
}

double sub_22F3471F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_22F3472B0()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_22F3472F4(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_22F3473A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F34740C()
{
  swift_beginAccess();

  return result;
}

double sub_22F347454(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t *sub_22F34750C(char *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22F740460();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F740560();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_22F73F690();
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v55 - v18;
  v19 = *a1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults) = 0;
  *(v3 + 16) = 2 - v19;
  v60 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults) = MEMORY[0x277D84F90];
  v21 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  v22 = (*(v20 + 16))(v21, v20);
  if (v22)
  {
    v23 = v22;
    v57 = v6;
    v24 = a2[3];
    v25 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v24);
    v26 = (*(v25 + 24))(v24, v25);
    sub_22F29A0E8(v13);

    if ((*(v66 + 48))(v13, 1, v67) == 1)
    {
      sub_22F15FCF0(v13);
      v27 = sub_22F740B70();
      v28 = sub_22F7415E0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_22F0FC000, v27, v28, "Unable to get first date in library", v29, 2u);
        MEMORY[0x2319033A0](v29, -1, -1);
      }
    }

    else
    {
      v56 = v23;
      v37 = v65;
      v38 = v66;
      v39 = v67;
      (*(v66 + 32))(v65, v13, v67);
      LOBYTE(v68[0]) = v19;
      v40 = a2[3];
      v41 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v40);
      (*(v41 + 8))(v40, v41);
      v42 = HistoricalInterval.annualDateIntervals(startDate:currentDate:)(v37, v16);
      v66 = *(v38 + 8);
      v43 = (v66)(v16, v39);
      MEMORY[0x28223BE20](v43);
      v44 = v56;
      *(&v55 - 2) = v42;
      *(&v55 - 1) = v44;
      v45 = v44;
      sub_22F2A1FCC(sub_22F348128, (&v55 - 4));

      v46 = a2[3];
      v47 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v46);
      (*(v47 + 24))(v46, v47);
      (*(v58 + 104))(v61, *MEMORY[0x277D3C570], v59);
      sub_22F740570();
      swift_allocObject();
      sub_22F740550();
      sub_22F73FE90();
      v48 = sub_22F7404F0();

      v50 = v62;
      v49 = v63;
      v51 = v64;
      (*(v63 + 104))(v62, *MEMORY[0x277D3C448], v64);
      v52 = static CollectionTrigger.generateTriggerResults(from:type:)(v48, v50);

      (*(v49 + 8))(v50, v51);
      (v66)(v65, v67);
      v53 = v60;
      swift_beginAccess();
      *(v3 + v53) = v52;
    }
  }

  else
  {
    v30 = sub_22F740B70();
    v31 = sub_22F7415C0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v68[0] = v33;
      *v32 = 136315138;
      v34 = sub_22F742240();
      v36 = sub_22F145F20(v34, v35, v68);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_22F0FC000, v30, v31, "GraphWorkingContext not available. Skipping %s trigger", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x2319033A0](v33, -1, -1);
      MEMORY[0x2319033A0](v32, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

uint64_t HistoricalTrips.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t HistoricalTrips.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_22F347D70()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F347DBC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

double sub_22F347E04()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for HistoricalTrips(uint64_t a1)
{
  result = qword_27DAB3BB8;
  if (!qword_27DAB3BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F347EA4(uint64_t a1)
{
  result = sub_22F740B90();
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

uint64_t ScoredGraphEntityPhotoKitPersister.init(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for ScoredGraphEntityPhotoKitPersister(0) + 20);
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v5 = sub_22F740B90();
  v6 = __swift_project_value_buffer(v5, qword_2810B4CE0);
  result = (*(*(v5 - 8) + 16))(&a2[v4], v6, v5);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ScoredGraphEntityPhotoKitPersister(uint64_t a1)
{
  result = qword_2810AC4F0;
  if (!qword_2810AC4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoredGraphEntityPhotoKitPersister.persist(scoredEntities:progressReporter:)(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v5 = qword_2810B4DF0;
  *&v6 = CACurrentMediaTime();
  sub_22F1B560C("ScoredGraphEntityPhotoKitPersister.persist", 42, 2u, v6, 0, v5, v15);
  v7 = *v2;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v14[4] = sub_22F348724;
  v14[5] = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22F33A524;
  v14[3] = &block_descriptor_34;
  v9 = _Block_copy(v14);

  v10 = a2;

  v14[0] = 0;
  LODWORD(v7) = [v7 performCancellableChangesAndWait:v9 error:v14];
  _Block_release(v9);
  if (v7)
  {
    v11 = v14[0];
    sub_22F7416A0();
  }

  else
  {
    v12 = v14[0];
    sub_22F73F370();

    swift_willThrow();
  }

  sub_22F1B2BBC(0);
}

void sub_22F348428(uint64_t a1, uint64_t a2)
{
  v12 = [objc_opt_self() creationRequestForNewSearchRankings];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 32);
    do
    {
      v7 = v5[1];
      v14[0] = *v5;
      v14[1] = v7;
      v8 = v5[3];
      v15 = v5[2];
      v16 = v8;
      ++v4;
      v17[0] = v14[0];
      v17[1] = v7;
      v18 = v15;
      v19 = v8;
      sub_22F3229A4(v14, v13);
      sub_22F741680();
      v9 = qword_22F787C38[SLOBYTE(v17[0])];
      v10 = sub_22F740DF0();
      if (v18)
      {

        v11 = sub_22F740DF0();

        if (!*(&v19 + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11 = 0;
        if (!*(&v19 + 1))
        {
LABEL_9:
          v6 = 0;
          goto LABEL_4;
        }
      }

      v6 = sub_22F740DF0();

LABEL_4:

      sub_22F322A00(v17);
      v5 += 4;
    }

    while (v3 != v4);
  }
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F34876C(uint64_t a1)
{
  result = sub_22F3487F0();
  if (v2 <= 0x3F)
  {
    result = sub_22F740B90();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22F3487F0()
{
  result = qword_2810A9198;
  if (!qword_2810A9198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A9198);
  }

  return result;
}

unint64_t static ImportantEntitiesPetProcessor.processUserPets(inGraph:parameters:progressBlock:reportToCoreAnalytics:withProcessInferredPetNodeClosure:)(void *a1, _OWORD *a2, void (*a3)(double), uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v18[0] = *a2;
  v18[1] = v13;
  v18[2] = a2[2];
  type metadata accessor for ImportantEntitiesPetContainer(0);
  v14 = swift_allocObject();
  v15 = a1;

  sub_22F349914(v15, a3, a4, a6, a7);
  v16 = sub_22F24B998(v14, v18, a3, a4, a5);

  return v16;
}

uint64_t type metadata accessor for ImportantEntitiesPetContainer(uint64_t a1)
{
  result = qword_2810AA108;
  if (!qword_2810AA108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double static ImportantEntitiesPetProcessor.defaultParameters()@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  [v2 usersPetsInferenceRecencyThresholdFromLatestMomentDateYears];
  v4 = v3 * 31557600.0;
  [v2 usersPetsInferenceMinimumLifespanYears];
  *a1 = v4;
  *(a1 + 8) = v5 * 31557600.0;
  *(a1 + 16) = 10;
  result = 0.05;
  *(a1 + 24) = xmmword_22F787CC0;
  *(a1 + 40) = 0;
  return result;
}

void sub_22F3489DC(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [a1 meNode];
  if (!v8)
  {
    v16 = sub_22F740B70();
    v17 = sub_22F7415E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22F0FC000, v16, v17, "Error! Could not find a me node in the graph.", v18, 2u);
      MEMORY[0x2319033A0](v18, -1, -1);
    }

    *swift_slowAlloc() = 0;
    a2(1.0);
    return;
  }

  v9 = v8;
  v10 = [v8 collection];
  v11 = [v10 homeNodes];

  v12 = v11;
  v13 = sub_22F740B70();
  v14 = sub_22F7415D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = [v12 count];

    _os_log_impl(&dword_22F0FC000, v13, v14, "Found %ld home nodes connected to the me node.", v15, 0xCu);
    MEMORY[0x2319033A0](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  v19 = [v12 addressNodes];
  v20 = [v19 momentNodes];

  v21 = v20;
  v22 = sub_22F740B70();
  v23 = sub_22F7415D0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = [v21 count];

    _os_log_impl(&dword_22F0FC000, v22, v23, "Found %ld moments at the me node's home address.", v24, 0xCu);
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  else
  {

    v22 = v21;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22F34AD48;
  *(v26 + 24) = v25;
  v53 = sub_22F2D4D54;
  v54 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_76;
  v27 = _Block_copy(&aBlock);

  [v21 enumerateUsingBlock:v27];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v28 = [a1 largeFrequentLocationNodes];
  sub_22F120634(0, &qword_2810A8FE0, off_27887AD90);
  sub_22F34ACCC();
  v29 = sub_22F741420();

  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = sub_22F741A00();
  }

  else
  {
    v30 = *(v29 + 16);
  }

  if (v30 < 1)
  {

    return;
  }

  v31 = [a1 largeFrequentLocationNodes];
  v32 = sub_22F741420();

  sub_22F10A0A8(v32);

  v33 = objc_allocWithZone(PGGraphFrequentLocationNodeCollection);
  v34 = sub_22F741410();

  v35 = [v33 initWithSet:v34 graph:a1];

  v36 = [v35 addressNodes];
  v37 = [v36 momentNodes];

  v38 = v35;
  v39 = v37;
  v40 = sub_22F740B70();
  v41 = sub_22F7415D0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    *(v42 + 4) = [v38 count];

    *(v42 + 12) = 2048;
    *(v42 + 14) = [v39 count];

    _os_log_impl(&dword_22F0FC000, v40, v41, "Found %ld large frequent locations and %ld moments at large frequent locations.", v42, 0x16u);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  else
  {

    v40 = v39;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = a5;
  *(v43 + 24) = a6;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_22F34AD48;
  *(v44 + 24) = v43;
  v53 = sub_22F2D4D54;
  v54 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_87;
  v45 = _Block_copy(&aBlock);

  [v39 enumerateUsingBlock:v45];

  _Block_release(v45);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_23;
  }
}

void sub_22F349118(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [a1 meNode];
  if (!v8)
  {
    v16 = sub_22F740B70();
    v17 = sub_22F7415E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22F0FC000, v16, v17, "Error! Could not find a me node in the graph.", v18, 2u);
      MEMORY[0x2319033A0](v18, -1, -1);
    }

    *swift_slowAlloc() = 0;
    a2(1.0);
    return;
  }

  v9 = v8;
  v10 = [v8 collection];
  v11 = [v10 homeNodes];

  v12 = v11;
  v13 = sub_22F740B70();
  v14 = sub_22F7415D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = [v12 count];

    _os_log_impl(&dword_22F0FC000, v13, v14, "Found %ld home nodes connected to the me node.", v15, 0xCu);
    MEMORY[0x2319033A0](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  v19 = [v12 addressNodes];
  v20 = [v19 momentNodes];

  v21 = v20;
  v22 = sub_22F740B70();
  v23 = sub_22F7415D0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = [v21 count];

    _os_log_impl(&dword_22F0FC000, v22, v23, "Found %ld moments at the me node's home address.", v24, 0xCu);
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  else
  {

    v22 = v21;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22F34ACC4;
  *(v26 + 24) = v25;
  v53 = sub_22F2D4D54;
  v54 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_55;
  v27 = _Block_copy(&aBlock);

  [v21 enumerateUsingBlock:v27];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v28 = [a1 largeFrequentLocationNodes];
  sub_22F120634(0, &qword_2810A8FE0, off_27887AD90);
  sub_22F34ACCC();
  v29 = sub_22F741420();

  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = sub_22F741A00();
  }

  else
  {
    v30 = *(v29 + 16);
  }

  if (v30 < 1)
  {

    return;
  }

  v31 = [a1 largeFrequentLocationNodes];
  v32 = sub_22F741420();

  sub_22F10A0A8(v32);

  v33 = objc_allocWithZone(PGGraphFrequentLocationNodeCollection);
  v34 = sub_22F741410();

  v35 = [v33 initWithSet:v34 graph:a1];

  v36 = [v35 addressNodes];
  v37 = [v36 momentNodes];

  v38 = v35;
  v39 = v37;
  v40 = sub_22F740B70();
  v41 = sub_22F7415D0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    *(v42 + 4) = [v38 count];

    *(v42 + 12) = 2048;
    *(v42 + 14) = [v39 count];

    _os_log_impl(&dword_22F0FC000, v40, v41, "Found %ld large frequent locations and %ld moments at large frequent locations.", v42, 0x16u);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  else
  {

    v40 = v39;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = a5;
  *(v43 + 24) = a6;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_22F34ACC4;
  *(v44 + 24) = v43;
  v53 = sub_22F2D4D54;
  v54 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_65_0;
  v45 = _Block_copy(&aBlock);

  [v39 enumerateUsingBlock:v45];

  _Block_release(v45);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_23;
  }
}

uint64_t sub_22F349894()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_2810B4EB0);
  __swift_project_value_buffer(v0, qword_2810B4EB0);
  return sub_22F740B80();
}

void *sub_22F349914(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v46 = a2;
  v47 = a3;
  v10 = sub_22F73F690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  v6[2] = a1;
  v6[3] = v14;
  v15 = a1;
  v16 = sub_22F14E72C(v14);
  v6[5] = v14;
  v17 = v6 + 5;
  v6[4] = v16;
  v18 = (v6 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_processInferredPetNode);
  *v18 = a4;
  v18[1] = a5;
  v48 = a5;

  sub_22F73F650();
  v19 = OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime;
  (*(v11 + 32))(v6 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime, v13, v10);
  v20 = v15;
  v21 = [v15 momentNodesSortedByDate];
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v22 = sub_22F741180();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_20:

    if (qword_2810AA120 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  v23 = sub_22F741A00();
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_3:
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v26 = MEMORY[0x2319016F0](v25, v22);
    goto LABEL_8;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_21:
    v43 = sub_22F740B90();
    __swift_project_value_buffer(v43, qword_2810B4EB0);
    v27 = sub_22F740B70();
    v44 = sub_22F7415E0();
    if (os_log_type_enabled(v27, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22F0FC000, v27, v44, "Couldn't find latest moment in the graph!", v45, 2u);
      MEMORY[0x2319033A0](v45, -1, -1);
    }

    goto LABEL_23;
  }

  v26 = *(v22 + 8 * v25 + 32);
LABEL_8:
  v27 = v26;

  v28 = [v27 universalEndDate];
  sub_22F73F640();

  swift_beginAccess();
  (*(v11 + 40))(v6 + v19, v13, v10);
  swift_endAccess();
  v29 = swift_slowAlloc();
  *v29 = 0;
  v31 = v46;
  v30 = v47;
  v46(0.0);
  if (*v29)
  {
    goto LABEL_23;
  }

  if (qword_2810AA120 != -1)
  {
    swift_once();
  }

  v32 = sub_22F740B90();
  v33 = __swift_project_value_buffer(v32, qword_2810B4EB0);
  sub_22F349118(v20, v31, v30, v33, sub_22F34AC94, v6);

  v34 = sub_22F740B70();
  v35 = sub_22F7415D0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    swift_beginAccess();
    v37 = *v17 >> 62 ? sub_22F741A00() : *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v36 + 4) = v37;

    _os_log_impl(&dword_22F0FC000, v34, v35, "Found %ld moments at the me node's home address and frequent locations.", v36, 0xCu);
    MEMORY[0x2319033A0](v36, -1, -1);
  }

  else
  {
  }

  (v31)(v29, 0.5);
  if (*v29)
  {
    goto LABEL_23;
  }

  sub_22F120634(0, &unk_2810A9010, off_27887B270);
  v39 = [swift_getObjCClassFromMetadata(v38) nodesInGraph_];
  v40 = swift_allocObject();
  *(v40 + 16) = sub_22F34AC9C;
  *(v40 + 24) = v6;
  aBlock[4] = sub_22F1DAF34;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_35;
  v41 = _Block_copy(aBlock);

  [v39 enumerateUsingBlock:v41];
  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if ((v41 & 1) == 0)
  {
    (v31)(v29, 1.0);

    v27 = v39;
LABEL_23:

    return v6;
  }

  __break(1u);
  return result;
}

void sub_22F349F40(void *a1, uint64_t a2)
{
  v4 = [a1 bestAddressNode];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ImportantEntitiesGraphInferenceMoment();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = v5;
    swift_beginAccess();
    v7 = v5;
    v8 = a1;

    MEMORY[0x231900D00](v9);
    if (*((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
    swift_endAccess();
  }

  else
  {
    if (qword_2810AA120 != -1)
    {
      swift_once();
    }

    v10 = sub_22F740B90();
    __swift_project_value_buffer(v10, qword_2810B4EB0);
    oslog = sub_22F740B70();
    v11 = sub_22F7415E0();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22F0FC000, oslog, v11, "Couldn't find best address node for moment node!", v12, 2u);
      MEMORY[0x2319033A0](v12, -1, -1);
    }
  }
}

double sub_22F34A11C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 localIdentifier];
  v6 = sub_22F740E20();
  v8 = v7;

  type metadata accessor for ImportantEntitiesPetProcessorEntity();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v6;
  v9[4] = v8;
  swift_beginAccess();
  v10 = a1;

  MEMORY[0x231900D00](v11);
  if (*((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  sub_22F741220();
  swift_endAccess();
  v12 = [v10 collection];
  v13 = [v12 momentNodes];

  v34 = MEMORY[0x277D84F90];
  v14 = swift_allocObject();
  *(v14 + 16) = &v34;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22F34ACBC;
  *(v15 + 24) = v14;
  aBlock[4] = sub_22F250854;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_45;
  v16 = _Block_copy(aBlock);

  [v13 enumerateUsingBlock_];
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v17 = v9[3];
    v18 = v9[4];

    v20 = sub_22F151C88(v19);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(a3 + 32);
    *(a3 + 32) = 0x8000000000000000;
    sub_22F131768(v20, v17, v18, isUniquelyReferenced_nonNull_native);

    *(a3 + 32) = v32;
    swift_endAccess();
    if (qword_2810AA120 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v22 = sub_22F740B90();
  __swift_project_value_buffer(v22, qword_2810B4EB0);

  v23 = sub_22F740B70();
  v24 = sub_22F7415D0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136315394;
    v27 = v9[3];
    v28 = v9[4];

    v29 = sub_22F145F20(v27, v28, &v32);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2048;
    swift_beginAccess();
    if (v34 >> 62)
    {
      v30 = sub_22F741A00();
    }

    else
    {
      v30 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v25 + 14) = v30;
    _os_log_impl(&dword_22F0FC000, v23, v24, "Pet entity %s has %ld moments.", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x2319033A0](v26, -1, -1);
    MEMORY[0x2319033A0](v25, -1, -1);
  }

  return result;
}

uint64_t sub_22F34A590(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 bestAddressNode];
  type metadata accessor for ImportantEntitiesGraphInferenceMoment();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
  MEMORY[0x231900D00](a1);
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  return sub_22F741220();
}

unint64_t sub_22F34A638(unint64_t result, uint64_t (*a2)(char *, double))
{
  v3 = v2;
  v4 = result;
  v5 = (result >> 62);
  if (result >> 62)
  {
LABEL_20:
    result = sub_22F741A00();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  v7 = swift_slowAlloc();
  *v7 = 0;
  result = (a2)(0.0);
  if ((*v7 & 1) == 0)
  {
    v8 = v6;
    if (v5)
    {
      v9 = sub_22F741A00();
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    v5 = (v3 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_processInferredPetNode);
    v11 = 0.0;
    v12 = 1.0 / v8;
    do
    {
      if (v9 == v10)
      {
        return a2(v7, 1.0);
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x2319016F0](v10, v4);
        if (__OFADD__(v10, 1))
        {
LABEL_16:
          __break(1u);
          return a2(v7, 1.0);
        }
      }

      else
      {
        if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v3 = *(v4 + 8 * v10 + 32);

        if (__OFADD__(v10, 1))
        {
          goto LABEL_16;
        }
      }

      v13 = *v5;
      v14 = *(v3 + 16);
      v13();

      v11 = v12 + v11;
      a2(v7, v11);
      v15 = *v7;

      ++v10;
    }

    while ((v15 & 1) == 0);
  }

  return result;
}

uint64_t sub_22F34A7F0()
{

  v1 = OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime;
  v2 = sub_22F73F690();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22F34A8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime;
  swift_beginAccess();
  v5 = sub_22F73F690();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

id ImportantEntitiesPetProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImportantEntitiesPetProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportantEntitiesPetProcessor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ImportantEntitiesPetProcessor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ImportantEntitiesPetProcessor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s11PhotosGraph29ImportantEntitiesPetProcessorC15processUserPets02inB013progressBlock019withProcessInferredE11NodeClosureySo7PGGraphC_ySd_Spy10ObjectiveC8ObjCBoolVGSgtXEySo0reP0CctFZ_0(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  [v10 usersPetsInferenceRecencyThresholdFromLatestMomentDateYears];
  v12 = v11 * 31557600.0;
  [v10 usersPetsInferenceMinimumLifespanYears];
  *v17 = v12;
  *&v17[1] = v13 * 31557600.0;
  v17[2] = 10;
  v18 = xmmword_22F787CC0;
  v19 = 0;
  type metadata accessor for ImportantEntitiesPetContainer(0);
  v14 = swift_allocObject();
  v15 = a1;

  sub_22F349914(v15, a2, a3, a4, a5);
  sub_22F24B998(v14, v17, a2, a3, 1);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F34ACCC()
{
  result = qword_2810A8FD0;
  if (!qword_2810A8FD0)
  {
    sub_22F120634(255, &qword_2810A8FE0, off_27887AD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A8FD0);
  }

  return result;
}

CLLocation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CLLocation.init(geohash:)(Swift::String geohash)
{
  object = geohash._object;
  countAndFlagsBits = geohash._countAndFlagsBits;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  sub_22F34B9D8(countAndFlagsBits, object, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (!v1)
  {
    object = [objc_allocWithZone(swift_getObjCClassFromMetadata(v14)) initWithLatitude:(v7 + v9) * 0.5 longitude:(v11 + v13) * 0.5];
  }

  swift_setDeallocating();

  v16 = object;
  result._internal = v15;
  result.super.isa = v16;
  return result;
}

Swift::String __swiftcall CLLocation.geohash(length:)(Swift::Int length)
{
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [v1 coordinate];
  v5 = v4;
  [v1 coordinate];
  sub_22F34AF8C(length, v5, v6);
  v8 = v7;
  v10 = v9;
  swift_setDeallocating();

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t Geohash.Error.hashValue.getter()
{
  sub_22F742170();
  MEMORY[0x231901D30](0);
  return sub_22F7421D0();
}

void sub_22F34AF8C(uint64_t a1, double a2, double a3)
{
  v3 = ceil(a1 * 5.0 * 0.5);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v4 = v3;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v121 = v3;
    if (!v4)
    {
      v6 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v5 = sub_22F741200();
    v6 = v5;
    *(v5 + 16) = v4;
    v7 = (v5 + 32);
    if (v4 >= 4)
    {
      v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      v7 += v4 & 0x7FFFFFFFFFFFFFFCLL;
      v9 = a2;
      v10 = vdupq_lane_s64(*&a2, 0);
      v11 = (v5 + 48);
      v12 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v11[-1] = v10;
        *v11 = v10;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v8 == v4)
      {
LABEL_14:
        v14 = *(v6 + 16);
        if (v14)
        {
          v15 = 0;
          v16 = MEMORY[0x277D84F90];
          v17 = 90.0;
          v18 = -90.0;
          do
          {
            v19 = v17;
            v20 = v16;
            v21 = v15;
            while (1)
            {
              if (v21 >= *(v6 + 16))
              {
                __break(1u);
                goto LABEL_108;
              }

              v15 = v21 + 1;
              v22 = *(v6 + 32 + 8 * v21);
              v17 = (v19 + v18) * 0.5;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v24 = v20;
              if (v22 < v17)
              {
                break;
              }

              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v24 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
              }

              v26 = *(v24 + 2);
              v25 = *(v24 + 3);
              if (v26 >= v25 >> 1)
              {
                v24 = sub_22F13E1A8((v25 > 1), v26 + 1, 1, v24);
              }

              *(v24 + 2) = v26 + 1;
              v27 = &v24[16 * v26];
              *(v27 + 4) = 49;
              *(v27 + 5) = 0xE100000000000000;
              v28 = v24;

              v16 = v28;
              v18 = (v19 + v18) * 0.5;
              v20 = v28;
              ++v21;
              if (v14 == v15)
              {
                goto LABEL_32;
              }
            }

            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v24 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
            }

            v30 = *(v24 + 2);
            v29 = *(v24 + 3);
            if (v30 >= v29 >> 1)
            {
              v24 = sub_22F13E1A8((v29 > 1), v30 + 1, 1, v24);
            }

            *(v24 + 2) = v30 + 1;
            v31 = &v24[16 * v30];
            *(v31 + 4) = 48;
            *(v31 + 5) = 0xE100000000000000;
            v32 = v24;

            v16 = v32;
          }

          while (v14 - 1 != v21);
        }

        else
        {
          v16 = MEMORY[0x277D84F90];
        }

LABEL_32:
        v119 = v16;

        if (!v121)
        {
          v34 = MEMORY[0x277D84F90];
          goto LABEL_41;
        }

        v33 = sub_22F741200();
        v34 = v33;
        *(v33 + 16) = v121;
        v35 = (v33 + 32);
        if (v121 >= 4)
        {
          v36 = v121 & 0x7FFFFFFFFFFFFFFCLL;
          v35 += v121 & 0x7FFFFFFFFFFFFFFCLL;
          v37 = a3;
          v38 = vdupq_lane_s64(*&a3, 0);
          v39 = (v33 + 48);
          v40 = v121 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v39[-1] = v38;
            *v39 = v38;
            v39 += 2;
            v40 -= 4;
          }

          while (v40);
          if (v36 == v121)
          {
LABEL_41:
            v42 = *(v34 + 16);
            if (v42)
            {
              v43 = 0;
              v44 = MEMORY[0x277D84F90];
              v45 = 180.0;
              v46 = -180.0;
LABEL_43:
              v47 = v45;
              v48 = v44;
              v49 = v43;
              while (v49 < *(v34 + 16))
              {
                v43 = v49 + 1;
                v50 = *(v34 + 32 + 8 * v49);
                v45 = (v47 + v46) * 0.5;

                v51 = swift_isUniquelyReferenced_nonNull_native();
                v44 = v48;
                if (v50 < v45)
                {
                  if ((v51 & 1) == 0)
                  {
                    v44 = sub_22F13E1A8(0, *(v48 + 2) + 1, 1, v48);
                  }

                  v56 = *(v44 + 2);
                  v55 = *(v44 + 3);
                  if (v56 >= v55 >> 1)
                  {
                    v44 = sub_22F13E1A8((v55 > 1), v56 + 1, 1, v44);
                  }

                  *(v44 + 2) = v56 + 1;
                  v57 = &v44[16 * v56];
                  *(v57 + 4) = 48;
                  *(v57 + 5) = 0xE100000000000000;

                  if (v42 - 1 != v49)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_59;
                }

                if ((v51 & 1) == 0)
                {
                  v44 = sub_22F13E1A8(0, *(v48 + 2) + 1, 1, v48);
                }

                v53 = *(v44 + 2);
                v52 = *(v44 + 3);
                if (v53 >= v52 >> 1)
                {
                  v44 = sub_22F13E1A8((v52 > 1), v53 + 1, 1, v44);
                }

                *(v44 + 2) = v53 + 1;
                v54 = &v44[16 * v53];
                *(v54 + 4) = 49;
                *(v54 + 5) = 0xE100000000000000;

                v46 = (v47 + v46) * 0.5;
                v48 = v44;
                ++v49;
                if (v42 == v43)
                {
                  goto LABEL_59;
                }
              }

LABEL_108:
              __break(1u);
            }

            else
            {
              v44 = MEMORY[0x277D84F90];
LABEL_59:

              v117 = *(v44 + 2);
              if (!v117)
              {
                v61 = MEMORY[0x277D84F90];
LABEL_75:

                v120 = *(v61 + 2);
                if (!v120)
                {
                  v80 = MEMORY[0x277D84F90];
LABEL_94:

                  v97 = *(v80 + 16);
                  if (!v97)
                  {
LABEL_106:

                    sub_22F39A078();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3BC8, &qword_22F787DC0);
                    sub_22F16BC6C(&unk_2810A8CF0, &qword_27DAB3BC8, &qword_22F787DC0, MEMORY[0x277D83FB0]);
                    sub_22F741030();
                    return;
                  }

                  v98 = 0;
                  v99 = v80 + 40;
                  v100 = MEMORY[0x277D84F90];
LABEL_96:
                  v101 = (v99 + 16 * v98);
                  v102 = v98;
                  while (v102 < *(v80 + 16))
                  {
                    v103 = *(v101 - 1);
                    v104 = *v101;

                    v106 = sub_22F34C238(v105);
                    if (v106[2])
                    {
                      v107 = sub_22F1229E8(v103, v104);
                      if (v108)
                      {
                        v109 = (v106[7] + 16 * v107);
                        v111 = *v109;
                        v110 = v109[1];

                        v112 = v80;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v100 = sub_22F13E2DC(0, *(v100 + 2) + 1, 1, v100);
                        }

                        v114 = *(v100 + 2);
                        v113 = *(v100 + 3);
                        if (v114 >= v113 >> 1)
                        {
                          v100 = sub_22F13E2DC((v113 > 1), v114 + 1, 1, v100);
                        }

                        v98 = v102 + 1;
                        *(v100 + 2) = v114 + 1;
                        v115 = &v100[16 * v114];
                        *(v115 + 4) = v111;
                        *(v115 + 5) = v110;
                        v80 = v112;
                        if (v97 - 1 != v102)
                        {
                          goto LABEL_96;
                        }

                        goto LABEL_106;
                      }
                    }

                    ++v102;

                    v101 += 2;
                    if (v97 == v102)
                    {
                      goto LABEL_106;
                    }
                  }

                  goto LABEL_115;
                }

                v77 = 0;
                v78 = 0;
                v79 = v61 + 40;
                v80 = MEMORY[0x277D84F90];
                while (v78 < *(v61 + 2))
                {
                  swift_bridgeObjectRetain_n();

                  v82 = sub_22F741040();
                  v84 = v83;
                  if (v77 + 5 * (v78 / 5))
                  {
                    if (!*(v80 + 16))
                    {
                      goto LABEL_116;
                    }

                    v85 = v80;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v86 = *(v80 + 16);
                      if (!v86)
                      {
                        goto LABEL_117;
                      }
                    }

                    else
                    {
                      v85 = sub_22F2F2C80(v80);
                      v86 = *(v85 + 2);
                      if (!v86)
                      {
                        goto LABEL_117;
                      }
                    }

                    v87 = v86 - 1;
                    v88 = &v85[16 * v87];
                    v90 = *(v88 + 4);
                    v89 = *(v88 + 5);
                    *(v85 + 2) = v87;
                    v123 = v90;
                    v124 = v89;
                    MEMORY[0x231900B10](v82, v84);

                    v92 = *(v85 + 2);
                    v91 = *(v85 + 3);
                    if (v92 >= v91 >> 1)
                    {
                      v85 = sub_22F13E1A8((v91 > 1), v92 + 1, 1, v85);
                    }

                    *(v85 + 2) = v92 + 1;
                    v81 = &v85[16 * v92];
                    *(v81 + 4) = v123;
                    *(v81 + 5) = v124;
                    v80 = v85;
                  }

                  else
                  {
                    v93 = v80;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v93 = sub_22F13E1A8(0, *(v80 + 16) + 1, 1, v80);
                    }

                    v95 = *(v93 + 2);
                    v94 = *(v93 + 3);
                    if (v95 >= v94 >> 1)
                    {
                      v93 = sub_22F13E1A8((v94 > 1), v95 + 1, 1, v93);
                    }

                    *(v93 + 2) = v95 + 1;
                    v96 = &v93[16 * v95];
                    *(v96 + 4) = v82;
                    *(v96 + 5) = v84;
                    v80 = v93;
                  }

                  ++v78;
                  --v77;
                  v79 += 16;
                  if (v120 == v78)
                  {
                    goto LABEL_94;
                  }
                }

LABEL_114:
                __break(1u);
LABEL_115:
                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }

              v58 = 0;
              v59 = v119 + 40;
              v60 = v44 + 40;
              v61 = MEMORY[0x277D84F90];
              while (v58 < *(v44 + 2))
              {
                v62 = *(v60 - 1);
                v63 = *v60;
                v122 = v60;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_22F770DF0;
                *(inited + 32) = v62;
                *(inited + 40) = v63;
                if (v58 >= *(v119 + 2))
                {
                  goto LABEL_110;
                }

                v65 = v44;
                v66 = v59;
                v67 = *(v59 - 1);
                v68 = *v59;
                *(inited + 48) = v67;
                *(inited + 56) = v68;
                v69 = *(v61 + 2);
                v70 = v69 + 2;
                if (__OFADD__(v69, 2))
                {
                  goto LABEL_111;
                }

                v71 = swift_isUniquelyReferenced_nonNull_native();
                if (!v71 || (v72 = *(v61 + 3) >> 1, v72 < v70))
                {
                  if (v69 <= v70)
                  {
                    v73 = v69 + 2;
                  }

                  else
                  {
                    v73 = v69;
                  }

                  v61 = sub_22F13E1A8(v71, v73, 1, v61);
                  v72 = *(v61 + 3) >> 1;
                }

                v44 = v65;
                if (v72 - *(v61 + 2) < 2)
                {
                  goto LABEL_112;
                }

                swift_arrayInitWithCopy();

                v74 = *(v61 + 2);
                v75 = __OFADD__(v74, 2);
                v76 = v74 + 2;
                if (v75)
                {
                  goto LABEL_113;
                }

                ++v58;
                *(v61 + 2) = v76;
                v59 = v66 + 2;
                v60 = v122 + 2;
                if (v117 == v58)
                {
                  goto LABEL_75;
                }
              }
            }

            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }
        }

        else
        {
          v36 = 0;
          v37 = a3;
        }

        v41 = v121 - v36;
        do
        {
          *v35++ = v37;
          --v41;
        }

        while (v41);
        goto LABEL_41;
      }
    }

    else
    {
      v8 = 0;
      v9 = a2;
    }

    v13 = v4 - v8;
    do
    {
      *v7++ = v9;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

LABEL_121:
  __break(1u);
}

void sub_22F34B9D8(unint64_t a1, unint64_t a2, __n128 a3)
{
  v6 = sub_22F740F10();
  if (v6)
  {
    v7 = v6;
    v8 = sub_22F34C770(v6, 0);

    v9 = sub_22F34C6A8(&v42, v8 + 4, v7, a1, a2);

    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_5:
  v10 = 0xE000000000000000;
  v42.n128_u64[0] = 0;
  v42.n128_u64[1] = 0xE000000000000000;
  v11 = v8[2];
  if (v11)
  {
    v45 = v3;
    v12 = 0;
    v13 = v8 + 5;
    while (v12 < v8[2])
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      v17 = sub_22F34BE38(v16);
      if (v17[2])
      {
        v18 = sub_22F122C24(v15, v14);
        if (v19)
        {
          v20 = (v17[7] + 16 * v18);
          v21 = *v20;
          v22 = v20[1];

          MEMORY[0x231900B10](v21, v22);
        }
      }

      ++v12;

      v13 += 2;
      if (v11 == v12)
      {
        v10 = v42.n128_u64[1];
        v23 = v42.n128_u64[0];
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v23 = 0;
LABEL_14:

  if (0xCCCCCCCCCCCCCCCDLL * sub_22F740F10() + 0x1999999999999999 > 0x3333333333333332)
  {

    sub_22F34C7F4();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v24 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v24 = v23 & 0xFFFFFFFFFFFFLL;
  }

  v42.n128_u64[0] = v23;
  v42.n128_u64[1] = v10;
  v43 = 0;
  v44 = v24;

  v25 = sub_22F740F80();
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    while (!__OFADD__(v28, 1))
    {
      MEMORY[0x231900B00](v25, v27);

      v25 = sub_22F740F80();
      v27 = v29;
      ++v28;
      if (!v29)
      {
        goto LABEL_22;
      }
    }

LABEL_40:
    __break(1u);
    return;
  }

LABEL_22:

  v42.n128_u64[0] = 0;
  v42.n128_u64[1] = 0xE000000000000000;
  v43 = 0;
  v44 = 0;

  v30 = sub_22F740F80();
  if (v31)
  {
    v32 = -90.0;
    v33 = 90.0;
    do
    {
      v35 = (v32 + v33) * 0.5;
      if (v30 == 49 && v31 == 0xE100000000000000)
      {
      }

      else
      {
        v34 = sub_22F742040();

        if ((v34 & 1) == 0)
        {
          v33 = (v32 + v33) * 0.5;
          v35 = v32;
        }
      }

      v30 = sub_22F740F80();
      v32 = v35;
    }

    while (v31);
  }

  v42.n128_u64[0] = 0;
  v42.n128_u64[1] = 0xE000000000000000;
  v43 = 0;
  v44 = 0;

  v36 = sub_22F740F80();
  if (v37)
  {
    v38 = -180.0;
    v39 = 180.0;
    do
    {
      v41 = (v38 + v39) * 0.5;
      if (v36 == 49 && v37 == 0xE100000000000000)
      {
      }

      else
      {
        v40 = sub_22F742040();

        if ((v40 & 1) == 0)
        {
          v39 = (v38 + v39) * 0.5;
          v41 = v38;
        }
      }

      v36 = sub_22F740F80();
      v38 = v41;
    }

    while (v37);
  }
}

void *sub_22F34BE38(__n128 a1)
{
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = sub_22F34BE94(a1);
    *(v1 + 16) = v2;
  }

  return v2;
}

void *sub_22F34BE94(__n128 a1)
{
  v1 = sub_22F740F80();
  if (!v2)
  {
    v6 = MEMORY[0x277D84F98];
LABEL_29:

    return v6;
  }

  v3 = v1;
  v4 = v2;
  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    sub_22F34C924();
    v11 = sub_22F741010();
    v13 = v12;
    v14 = sub_22F740F10();
    if ((5 - v14 % 5) >= 5)
    {
      v15 = -(v14 % 5);
    }

    else
    {
      v15 = 5 - v14 % 5;
    }

    v40 = v10;
    if (v15)
    {
      v16 = sub_22F741200();
      *(v16 + 16) = v15;
      v17 = (v16 + 32);
      if (v15 < 4)
      {
        v18 = 0;
LABEL_16:
        v21 = v15 - v18;
        do
        {
          *v17 = 48;
          v17[1] = 0xE100000000000000;
          v17 += 2;
          --v21;
        }

        while (v21);
        goto LABEL_18;
      }

      v18 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v17 += 2 * (v15 & 0xFFFFFFFFFFFFFFFCLL);
      v19 = (v16 + 64);
      v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v19 - 2) = xmmword_22F787DB0;
        *(v19 - 1) = xmmword_22F787DB0;
        *v19 = xmmword_22F787DB0;
        v19[1] = xmmword_22F787DB0;
        v19 += 4;
        v20 -= 4;
      }

      while (v20);
      if (v15 != v18)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F16BC6C(&qword_2810A92E0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277D83958]);
    v22 = sub_22F740DA0();
    v24 = v23;

    MEMORY[0x231900B10](v11, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_22F122C24(v3, v4);
    v28 = v6[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v6[3] < v31)
    {
      sub_22F12CDFC(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_22F122C24(v3, v4);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v38 = v26;
    sub_22F138464();
    v26 = v38;
    if (v32)
    {
LABEL_3:
      v7 = v26;

      v8 = (v6[7] + 16 * v7);
      *v8 = v22;
      v8[1] = v24;

      goto LABEL_4;
    }

LABEL_24:
    v6[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v6[6] + 16 * v26);
    *v34 = v3;
    v34[1] = v4;
    v35 = (v6[7] + 16 * v26);
    *v35 = v22;
    v35[1] = v24;

    v36 = v6[2];
    v30 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v6[2] = v37;
LABEL_4:
    v3 = sub_22F740F80();
    v4 = v9;
    v5 = v40;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void *sub_22F34C238(__n128 a1)
{
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = sub_22F34C294(a1);
    *(v1 + 24) = v2;
  }

  return v2;
}

void *sub_22F34C294(__n128 a1)
{
  v1 = sub_22F740F80();
  if (!v2)
  {
    v6 = MEMORY[0x277D84F98];
LABEL_29:

    return v6;
  }

  v3 = v1;
  v4 = v2;
  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  while (!__OFADD__(v5, 1))
  {
    v41 = v5 + 1;
    sub_22F34C924();
    v10 = sub_22F741010();
    v12 = v11;
    v13 = sub_22F740F10();
    if ((5 - v13 % 5) >= 5)
    {
      v14 = -(v13 % 5);
    }

    else
    {
      v14 = 5 - v13 % 5;
    }

    v42 = v3;
    if (v14)
    {
      v15 = sub_22F741200();
      *(v15 + 16) = v14;
      v16 = (v15 + 32);
      if (v14 < 4)
      {
        v17 = 0;
LABEL_16:
        v20 = v14 - v17;
        do
        {
          *v16 = 48;
          v16[1] = 0xE100000000000000;
          v16 += 2;
          --v20;
        }

        while (v20);
        goto LABEL_18;
      }

      v17 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v16 += 2 * (v14 & 0xFFFFFFFFFFFFFFFCLL);
      v18 = (v15 + 64);
      v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v18 - 2) = xmmword_22F787DB0;
        *(v18 - 1) = xmmword_22F787DB0;
        *v18 = xmmword_22F787DB0;
        v18[1] = xmmword_22F787DB0;
        v18 += 4;
        v19 -= 4;
      }

      while (v19);
      if (v14 != v17)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F16BC6C(&qword_2810A92E0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277D83958]);
    v21 = sub_22F740DA0();
    v23 = v22;

    MEMORY[0x231900B10](v10, v12);

    v24 = v23;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_22F1229E8(v21, v24);
    v28 = v6[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v6[3] < v31)
    {
      sub_22F12CB3C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_22F1229E8(v21, v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      v34 = v42;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v39 = v26;
    sub_22F1382EC();
    v26 = v39;
    v34 = v42;
    if (v32)
    {
LABEL_3:
      v7 = v26;

      v8 = (v6[7] + 16 * v7);
      *v8 = v34;
      v8[1] = v4;

      goto LABEL_4;
    }

LABEL_24:
    v6[(v26 >> 6) + 8] |= 1 << v26;
    v35 = (v6[6] + 16 * v26);
    *v35 = v21;
    v35[1] = v24;
    v36 = (v6[7] + 16 * v26);
    *v36 = v34;
    v36[1] = v4;

    v37 = v6[2];
    v30 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v6[2] = v38;
LABEL_4:
    v3 = sub_22F740F80();
    v4 = v9;
    v5 = v41;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t Geohash.deinit()
{

  return v0;
}

uint64_t Geohash.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__n128 *sub_22F34C6A8(__n128 *result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  v16.n128_u64[0] = 0;
  v16.n128_u64[1] = v6;
  v7.n128_u64[0] = 0;
  v7.n128_u64[1] = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    v5->n128_u64[0] = a4;
    v5->n128_u64[1] = a5;
    v5[1] = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_22F740F80();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22F34C770(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0D80, &qword_22F771120);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_22F34C7F4()
{
  result = qword_27DAB3BD0;
  if (!qword_27DAB3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3BD0);
  }

  return result;
}

unint64_t sub_22F34C84C()
{
  result = qword_27DAB3BD8;
  if (!qword_27DAB3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3BD8);
  }

  return result;
}

unint64_t sub_22F34C924()
{
  result = qword_2810A93B8;
  if (!qword_2810A93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A93B8);
  }

  return result;
}

void *sub_22F34C978(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v41[1] = a4;
  v41[0] = type metadata accessor for Song(0);
  v45 = *(v41[0] - 8);
  MEMORY[0x28223BE20](v41[0]);
  v47 = (v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v44 = v41 - v9;
  if (qword_2810A9BE0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v10 = qword_2810B4E98;
  *&v11 = CACurrentMediaTime();
  sub_22F1B560C("Topic Ranker", 12, 2u, v11, 0, v10, v48);
  v12 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_configuration + 332);
  v13 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID);
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  a2 = MEMORY[0x277D84F98];
  v42 = a1 + 56;
  v43 = a1;
  while (v17)
  {
    v20 = v19;
LABEL_12:
    v21 = *(a1 + 48);
    a1 = v44;
    v46 = *(v45 + 72);
    sub_22F15CAA0(v21 + v46 * (__clz(__rbit64(v17)) | (v20 << 6)), v44);
    sub_22F15CAA0(a1, v47);
    v23 = *a1;
    v22 = *(a1 + 8);

    sub_22F15CBD8(a1);
    if (*(v13 + 16))
    {
      v24 = sub_22F1229E8(v23, v22);
      a1 = v25;

      v26 = v12;
      if (a1)
      {
        v26 = *(*(v13 + 56) + 4 * v24);
      }
    }

    else
    {

      v26 = v12;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = a2;
    a3 = a2;
    v29 = sub_22F122A14(v47);
    v30 = a2[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v33 = v28;
    if (a2[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a3 = &v49;
        sub_22F134678();
      }
    }

    else
    {
      sub_22F125F5C(v32, isUniquelyReferenced_nonNull_native);
      a3 = v49;
      v34 = sub_22F122A14(v47);
      if ((v33 & 1) != (v35 & 1))
      {
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      v29 = v34;
    }

    v17 &= v17 - 1;
    a2 = v49;
    if (v33)
    {
      *(v49[7] + 4 * v29) = v26;
      sub_22F15CBD8(v47);
    }

    else
    {
      v49[(v29 >> 6) + 8] |= 1 << v29;
      a1 = v47;
      sub_22F15CAA0(v47, a2[6] + v29 * v46);
      *(a2[7] + 4 * v29) = v26;
      sub_22F15CBD8(a1);
      v36 = a2[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_30;
      }

      a2[2] = v38;
    }

    v19 = v20;
    v14 = v42;
    a1 = v43;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  sub_22F1B2BBC(0);
  v39 = v41[2];
  sub_22F7416A0();

  if (v39)
  {
  }

  return a2;
}

unint64_t sub_22F34CE98(unint64_t a1, id a2, unint64_t a3, unint64_t a4)
{
  v6 = v4;
  if (qword_2810A9BD0 != -1)
  {
LABEL_35:
    swift_once();
  }

  sub_22F1B560C("MusicCurator - extractMusicCurationFeaturesForAssets", 52, 2u, 0, 1, qword_2810B4E90, v55);
  if (a1 >> 62)
  {
    if (!sub_22F741A00())
    {
      goto LABEL_37;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x2319016F0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v5 = [v11 photoLibrary];

  if (!v5)
  {
LABEL_37:
    sub_22F34D5BC();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
LABEL_58:
    sub_22F1B2BBC(0);

    return a1;
  }

  v53 = a2;
  v13 = [v5 librarySpecificFetchOptions];
  [v13 setWantsIncrementalChangeDetails_];
  v14 = objc_opt_self();
  sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  a2 = sub_22F741160();
  v15 = [v14 fetchAssetCollectionsContainingAssets:a2 withType:3 options:v13];

  v16 = [v15 fetchedObjects];
  if (!v16)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v25 = sub_22F740B90();
    __swift_project_value_buffer(v25, qword_2810B4D90);
    v26 = sub_22F740B70();
    v27 = sub_22F7415E0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22F0FC000, v26, v27, "[MemoriesMusic] [FeatureExtraction] Extracted moments backing asset collection: NO", v28, 2u);
      MEMORY[0x2319033A0](v28, -1, -1);
    }

    sub_22F34D5BC();
    swift_allocError();
    *v29 = a1;
    swift_willThrow();

    goto LABEL_58;
  }

  v48 = a3;
  v49 = v6;
  v50 = v13;
  sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
  a3 = sub_22F741180();

  a4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (!(a3 >> 62))
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v5;
    v52 = a1;
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_41:
    v54 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

LABEL_40:
  v6 = sub_22F741A00();
  v51 = v5;
  v52 = a1;
  if (!v6)
  {
    goto LABEL_41;
  }

LABEL_11:
  a1 = 0;
  v54 = MEMORY[0x277D84F90];
  do
  {
    v5 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2319016F0](v5, a3);
        a1 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v5 >= *(a4 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(a3 + 8 * v5 + 32);
        a1 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      a2 = v17;
      v18 = [a2 uuid];
      if (v18)
      {
        break;
      }

      ++v5;
      if (a1 == v6)
      {
        goto LABEL_42;
      }
    }

    v19 = v18;
    v20 = sub_22F740E20();
    v47 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_22F13E1A8(0, *(v54 + 2) + 1, 1, v54);
    }

    v23 = *(v54 + 2);
    v22 = *(v54 + 3);
    a2 = (v23 + 1);
    if (v23 >= v22 >> 1)
    {
      v54 = sub_22F13E1A8((v22 > 1), v23 + 1, 1, v54);
    }

    *(v54 + 2) = a2;
    v24 = &v54[16 * v23];
    *(v24 + 4) = v20;
    *(v24 + 5) = v47;
  }

  while (a1 != v6);
LABEL_42:
  a1 = v53;
  if (v53)
  {
    v31 = objc_opt_self();
    v32 = v53;
    a1 = v54;
    v33 = sub_22F741160();

    v34 = [v31 momentNodesForArrayOfUUIDs:v33 inGraph:v32];
  }

  else
  {

    v34 = 0;
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v35 = sub_22F740B90();
  __swift_project_value_buffer(v35, qword_2810B4D90);
  v36 = v34;
  v37 = sub_22F740B70();
  v38 = sub_22F7415C0();

  if (os_log_type_enabled(v37, v38))
  {
    a1 = v36;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v56 = v40;
    *v39 = 136315138;
    if (v34)
    {
      v41 = 5457241;
    }

    else
    {
      v41 = 20302;
    }

    if (v34)
    {
      v42 = 0xE300000000000000;
    }

    else
    {
      v42 = 0xE200000000000000;
    }

    v43 = sub_22F145F20(v41, v42, &v56);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_22F0FC000, v37, v38, "[MemoriesMusic] [FeatureExtraction] Extracted moment nodes for moments: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x2319033A0](v40, -1, -1);
    v44 = v39;
    v36 = a1;
    MEMORY[0x2319033A0](v44, -1, -1);
  }

  v45 = sub_22F3EC34C(0, 0, 0, v34, v53, a3, v52, v48);
  if (v49)
  {

    goto LABEL_58;
  }

  a1 = v45;

  sub_22F7416A0();

  sub_22F1B2BBC(0);

  return a1;
}

unint64_t sub_22F34D5BC()
{
  result = qword_27DAB3BE0;
  if (!qword_27DAB3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3BE0);
  }

  return result;
}

uint64_t sub_22F34D610(uint64_t *a1, unsigned int a2)
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

uint64_t sub_22F34D660(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_22F34D6B4(void *result, int a2)
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

id MusicForArtistElector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForArtistElector.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForArtistElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F34D844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_2810A9B20 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("Music For Artist Elector", 24, 2u, 0, 1, qword_2810B4E20, v17);
  if (*(a1 + OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers))
  {
    v7 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    v9 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v19 = v3;
  v9 = sub_22F10B348(v8, 0);
  v10 = sub_22F11A438(v15, v9 + 4, v8, v7);
  v11 = v15[0];

  result = sub_22F1534EC(v11);
  if (v10 == v8)
  {
    v4 = v19;
    if (v9[2])
    {
LABEL_9:
      v15[0] = 0;
      v15[1] = 0;
      LOWORD(v16) = 1;
      v13 = MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(v9, v15);
      if (v4)
      {

        a3 = v18;

LABEL_16:

        return a3;
      }

      v14 = v13;

      sub_22F7416A0();
      sub_22F1B2BBC(0);
      a3 = sub_22F151734(v14);

      goto LABEL_17;
    }

LABEL_12:

    sub_22F7416A0();
    if (v4)
    {

      goto LABEL_16;
    }

    sub_22F1B2BBC(1);
    a3 = MEMORY[0x277D84FA0];
LABEL_17:

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t MomentBasedEventLabelWriter.performWrite(clustersWithScoredLabels:progressReporter:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_27DAAFD90 != -1)
  {
LABEL_48:
    swift_once();
  }

  v6 = qword_27DAD0E80;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("WriteLabels", 11, 2u, v7, 0, v6, v64);
  v8 = v4[4];
  v9 = v4[5];
  __swift_project_boxed_opaque_existential_1(v4 + 1, v8);
  v10 = v9[2](v8, v9);
  if (!*(v10 + 16))
  {

LABEL_43:
    v50 = 0;
    goto LABEL_46;
  }

  v63[9] = MEMORY[0x277D84FA0];
  v57 = *(a1 + 16);
  v60 = v4;
  if (v57)
  {
    v11 = v3;
    v12 = (a1 + 40);
    v13 = *(a1 + 16);
    do
    {
      v14 = *(v12 - 1);
      v15 = *v12;

      sub_22F10BBDC(v63, v14, v15);

      v12 += 3;
      --v13;
    }

    while (v13);
    v3 = v11;
  }

  v16 = objc_opt_self();
  v17 = sub_22F741410();

  v55 = *v60;
  v18 = [*v60 graph];
  v19 = [v16 momentNodesForUUIDs:v17 inGraph:v18];

  v52 = v19;
  v20 = [v19 momentNodeByMomentUUID];
  sub_22F2E57E8();
  v21 = sub_22F740CA0();

  v22 = v57;
  if (!v57)
  {
    v4 = v3;
LABEL_40:

    sub_22F7416A0();
    if (v4)
    {
      v48 = 0;
      v49 = v52;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v23 = 0;
  v56 = a1 + 32;
  v24 = v10 + 56;
  v4 = v3;
  v53 = v21;
  while (1)
  {
    v25 = v23++;
    if (!*(v21 + 16))
    {
      goto LABEL_10;
    }

    v59 = v23;
    v26 = (v56 + 24 * v25);
    v27 = v26[1];
    v28 = v26[2];
    v29 = *v26;
    swift_bridgeObjectRetain_n();

    v30 = sub_22F1229E8(v29, v27);
    a1 = v31;

    if (a1)
    {
      break;
    }

    v22 = v57;
    v23 = v59;
LABEL_10:
    if (v23 == v22)
    {
      goto LABEL_40;
    }
  }

  v58 = *(*(v21 + 56) + 8 * v30);

  v32 = v28;
  v62 = *(v28 + 16);
  if (v62)
  {
    v54 = v4;
    v3 = 0;
    v61 = v32 + 4;
    while (1)
    {
      if (v3 >= v32[2])
      {
        __break(1u);
        goto LABEL_48;
      }

      v33 = *&v61[2 * v3++ + 1];
      v34 = sub_22F740E20();
      v36 = v35;
      if (*(v10 + 16))
      {
        break;
      }

LABEL_16:
      if (v3 == v62)
      {

        v4 = v54;
        goto LABEL_36;
      }
    }

    v37 = v34;
    v4 = v32;
    sub_22F742170();
    sub_22F740D60();
    v38 = sub_22F7421D0();
    v39 = -1 << *(v10 + 32);
    v40 = v38 & ~v39;
    if ((*(v24 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
    {
      a1 = ~v39;
      while (1)
      {
        v41 = (*(v10 + 48) + 16 * v40);
        v42 = *v41 == v37 && v41[1] == v36;
        if (v42 || (sub_22F742040() & 1) != 0)
        {
          break;
        }

        v40 = (v40 + 1) & a1;
        if (((*(v24 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      a1 = v60[4];
      v43 = v60[5];
      __swift_project_boxed_opaque_existential_1(v60 + 1, a1);
      v44 = v43[3](v37, v36, a1, v43);
      if (v44)
      {
        if (*&v44[OBJC_IVAR___PGMeaningThresholds_highRecallThreshold] <= v33)
        {
          v45 = *&v44[OBJC_IVAR___PGMeaningThresholds_highPrecisionThreshold] <= v33;
          v46 = v44;
          a1 = v58;
          v47 = sub_22F740DF0();

          [v55 addMeaningToMeaningfulEventNode:a1 meaningLabel:v47 meaningConfidence:v45 meaningIsHighPrecision:0 isV1Algorithm:v33];

          goto LABEL_33;
        }
      }
    }

LABEL_27:

LABEL_33:
    v32 = v4;
    goto LABEL_16;
  }

LABEL_36:
  v23 = v59;
  v22 = v57;
  sub_22F741680();
  if (!v4)
  {

    v21 = v53;
    goto LABEL_10;
  }

  v48 = 1;
  v49 = v58;
LABEL_45:

  v50 = v48;
LABEL_46:
  sub_22F1B2BBC(v50);
}

PGGraphMeaningNodeCollection __swiftcall MomentBasedEventLabelWriter.meaningNodes(for:confidenceThreshold:)(Swift::OpaquePointer a1, Swift::Double confidenceThreshold)
{
  v4 = objc_opt_self();
  v5 = [*v2 graph];
  v6 = [v4 meaningEdgesWithConfidenceThreshold:v5 inGraph:confidenceThreshold];

  v8 = sub_22F1515F8(v7);

  v9 = [v6 meaningNodes];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22F34E7D8;
  *(v11 + 24) = v10;
  v17[4] = sub_22F34E7F8;
  v17[5] = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F34E4FC;
  v17[3] = &block_descriptor_36;
  v12 = _Block_copy(v17);

  v13 = [v9 filteredCollectionUsingBlock_];

  _Block_release(v12);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
  }

  result.super.super.super._elementIdentifiers = v16;
  result.super.super.super._graphReference = v15;
  result.super.super.super.super.isa = v14;
  return result;
}

uint64_t sub_22F34E4FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

PGGraphMeaningNodeCollection __swiftcall MomentBasedEventLabelWriter.alternativeMeaningNodes(for:confidenceThreshold:)(Swift::OpaquePointer a1, Swift::Double confidenceThreshold)
{
  v4 = objc_opt_self();
  v5 = [*v2 graph];
  v6 = [v4 meaningEdgesWithConfidenceThreshold:v5 inGraph:confidenceThreshold];

  v8 = sub_22F1515F8(v7);

  v9 = [v6 meaningNodes];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22F34E858;
  *(v11 + 24) = v10;
  v17[4] = sub_22F34E854;
  v17[5] = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F34E4FC;
  v17[3] = &block_descriptor_13_2;
  v12 = _Block_copy(v17);

  v13 = [v9 filteredCollectionUsingBlock_];

  _Block_release(v12);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
  }

  result.super.super.super._elementIdentifiers = v16;
  result.super.super.super._graphReference = v15;
  result.super.super.super.super.isa = v14;
  return result;
}

BOOL sub_22F34E73C(void *a1, uint64_t a2)
{
  v3 = [a1 labels];
  v4 = sub_22F741420();

  sub_22F3F2848(a2, v4);
  LOBYTE(a2) = v5;

  return (a2 & 1) == 0;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id FeatureExtractorAssetAverage.__allocating_init(with:skipAssetsWithErrors:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor] = a1;
  v5[OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FeatureExtractorAssetAverage.init(with:skipAssetsWithErrors:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor] = a1;
  v2[OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

char *FeatureExtractorAssetAverage.floatVector(withEntity:)(void *a1)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor);
  v4 = [v3 featureLength];
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    v7 = sub_22F741200();
    *(v7 + 16) = v6;
    v57 = v7;
    bzero((v7 + 32), 4 * v6);
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
  }

  v8 = [a1 count];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
  }

  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v52 = a1;
    v53 = OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors;
    v12 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
    v13 = &selRef_appleMusicID;
    v50 = v8;
    v51 = v3;
    do
    {
      v14 = [a1 v12[94]];
      v59[0] = 0;
      v58 = [v3 v13[45]];

      if (v59[0])
      {
        if (*(v54 + v53) != 1)
        {
          v46 = v59[0];

          swift_willThrow();

          return v9;
        }
      }

      else
      {
        v15 = __OFADD__(v10, 1);
        v16 = v10 + 1;
        if (v15)
        {
          goto LABEL_55;
        }

        v55 = v11;
        v56 = v16;
        v17 = [v58 wrapper];
        v18 = [v17 array];

        v19 = sub_22F741180();
        if (*(v19 + 16) >= *(v57 + 2))
        {
          v20 = *(v57 + 2);
        }

        else
        {
          v20 = *(v19 + 16);
        }

        v59[0] = v5;
        sub_22F1464F4(0, v20, 0);
        v21 = v59[0];
        if (v20)
        {
          v22 = 0;
          v23 = *(v57 + 2);
          v24 = v57;
          while (v23 != v22)
          {
            if (v22 >= *(v24 + 2))
            {
              goto LABEL_50;
            }

            v25 = *(v19 + 16);
            if (v22 == v25)
            {
              goto LABEL_51;
            }

            if (v22 >= v25)
            {
              goto LABEL_52;
            }

            v26 = v57[v22 + 8];
            v27 = *(v19 + 32 + 4 * v22);
            v59[0] = v21;
            v29 = v21[2];
            v28 = v21[3];
            if (v29 >= v28 >> 1)
            {
              sub_22F1464F4((v28 > 1), v29 + 1, 1);
              v24 = v57;
              v21 = v59[0];
            }

            ++v22;
            v21[2] = v29 + 1;
            *(v21 + v29 + 8) = v26 + v27;
            if (v20 == v22)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v24 = v57;
LABEL_28:
        v30 = *(v24 + 2);
        if (v20 != v30)
        {
          v31 = v24 + 8;
          while (v20 < v30)
          {
            v32 = *(v19 + 16);
            if (v20 == v32)
            {
              goto LABEL_8;
            }

            if (v20 >= v32)
            {
              goto LABEL_54;
            }

            v33 = v31[v20];
            v34 = *(v19 + 32 + 4 * v20);
            v59[0] = v21;
            v36 = v21[2];
            v35 = v21[3];
            if (v36 >= v35 >> 1)
            {
              sub_22F1464F4((v35 > 1), v36 + 1, 1);
              v24 = v57;
              v21 = v59[0];
            }

            ++v20;
            v21[2] = v36 + 1;
            *(v21 + v36 + 8) = v33 + v34;
            v30 = *(v24 + 2);
            if (v20 == v30)
            {
              goto LABEL_8;
            }
          }

LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

LABEL_8:

        v57 = v21;
        v3 = v51;
        a1 = v52;
        v5 = MEMORY[0x277D84F90];
        v11 = v55;
        v10 = v56;
        v9 = v50;
        v12 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
        v13 = &selRef_appleMusicID;
      }

      ++v11;
    }

    while (v11 != v9);
    if (!v10)
    {
      goto LABEL_44;
    }

    v37 = *(v57 + 2);
    if (v37)
    {
      v59[0] = v5;
      sub_22F1464F4(0, v37, 0);
      v38 = v57;
      v39 = v10;
      v40 = v59[0];
      v41 = *(v59[0] + 2);
      v42 = 8;
      do
      {
        v43 = v38[v42];
        v59[0] = v40;
        v44 = v40[3];
        if (v41 >= v44 >> 1)
        {
          sub_22F1464F4((v44 > 1), v41 + 1, 1);
          v38 = v57;
          v40 = v59[0];
        }

        v40[2] = v41 + 1;
        *(v40 + v41 + 8) = v43 / v39;
        ++v42;
        ++v41;
        --v37;
      }

      while (v37);
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    v47 = objc_allocWithZone(sub_22F73FBE0());
    v48 = MEMORY[0x2318FF780](v40);
    v9 = [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];
  }

  else
  {
LABEL_44:

    sub_22F34F3B0();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();
  }

  return v9;
}

uint64_t FeatureExtractorAssetAverage.featureNames.getter()
{
  v1 = [*(v0 + OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor) featureNames];
  v2 = sub_22F741180();

  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    sub_22F146454(0, v3, 0);
    v4 = v15;
    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v13 = sub_22F740E20();
      v14 = v8;

      MEMORY[0x231900B10](95, 0xE100000000000000);
      MEMORY[0x231900B10](v6, v7);

      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_22F146454((v9 > 1), v10 + 1, 1);
      }

      *(v15 + 16) = v10 + 1;
      v11 = v15 + 16 * v10;
      *(v11 + 32) = v13;
      *(v11 + 40) = v14;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t FeatureExtractorAssetAverage.name.getter()
{
  v1 = [*(v0 + OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor) name];
  v2 = sub_22F740E20();
  v4 = v3;

  v6 = sub_22F740E20();
  MEMORY[0x231900B10](95, 0xE100000000000000);
  MEMORY[0x231900B10](v2, v4);

  return v6;
}

id FeatureExtractorAssetAverage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureExtractorAssetAverage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F34F3B0()
{
  result = qword_27DAB3BF8;
  if (!qword_27DAB3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3BF8);
  }

  return result;
}

unint64_t sub_22F34F468()
{
  result = qword_27DAB3C00;
  if (!qword_27DAB3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C00);
  }

  return result;
}

uint64_t PGManagerWorkingContext.read<A>(block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v22 = a4;
  v23 = sub_22F741860();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *(a3 - 8);
  (*(v16 + 56))(&v22 - v14, 1, 1, a3, v13);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = v15;
  v17[4] = a1;
  v17[5] = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22F350034;
  *(v18 + 24) = v17;
  aBlock[4] = sub_22F350040;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F22F7B0;
  aBlock[3] = &block_descriptor_37;
  v19 = _Block_copy(aBlock);

  [v5 performSynchronousConcurrentGraphReadUsingBlock_];
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    isEscapingClosureAtFileLocation = v23;
    (*(v9 + 16))(v11, v15, v23);
    if ((*(v16 + 48))(v11, 1, a3) != 1)
    {
      (*(v16 + 32))(v22, v11, a3);
      (*(v9 + 8))(v15, isEscapingClosureAtFileLocation);
    }
  }

  (*(v9 + 8))(v11, isEscapingClosureAtFileLocation);
  result = sub_22F741D40();
  __break(1u);
  return result;
}

{
  v29 = a2;
  v25 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1518, &qword_22F77A7E0);
  v6 = sub_22F7421E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = sub_22F741860();
  v27 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  (*(v7 + 56))(&v25 - v17, 1, 1, v6, v16);
  v19 = swift_allocObject();
  v26 = a3;
  v19[2] = a3;
  v19[3] = v18;
  v20 = v29;
  v19[4] = a1;
  v19[5] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_22F350080;
  *(v21 + 24) = v19;
  aBlock[4] = sub_22F350094;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F22F7B0;
  aBlock[3] = &block_descriptor_13_3;
  v22 = _Block_copy(aBlock);

  [aBlock[7] performSynchronousConcurrentGraphReadUsingBlock_];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
    goto LABEL_8;
  }

  v21 = v27;
  (*(v27 + 16))(v14, v18, v12);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
LABEL_8:
    (*(v21 + 8))(v14, v12);
    result = sub_22F741D40();
    __break(1u);
    return result;
  }

  (*(v7 + 32))(v11, v14, v6);
  v23 = v28;
  (*(v7 + 16))(v28, v11, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_willThrow();
    (*(v7 + 8))(v11, v6);
    (*(v21 + 8))(v18, v12);
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    (*(*(v26 - 8) + 32))(v25, v23);
    (*(v21 + 8))(v18, v12);
  }
}

uint64_t sub_22F34FCC4(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1518, &qword_22F77A7E0);
  v8 = sub_22F7421E0();
  v9 = sub_22F741860();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v16 - v12;
  v14 = [a1 graph];
  a3();

  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v13, 0, 1, v8);
  return (*(v10 + 40))(a2, v13, v9);
}

uint64_t sub_22F34FEF0(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_22F741860();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v16 - v12;
  v14 = [a1 graph];
  a3();

  (*(*(a5 - 8) + 56))(v13, 0, 1, a5);
  return (*(v10 + 40))(a2, v13, v9);
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id EventLabelingConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void EventLabelingConfiguration.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22F73FA60();
  v42[3] = v3;
  v42[4] = sub_22F350D8C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A810], v3);
  LOBYTE(v3) = sub_22F73FA20();
  __swift_destroy_boxed_opaque_existential_0(v42);
  if ((v3 & 1) == 0 || !PFOSVariantHasInternalDiagnostics())
  {
LABEL_13:
    *&v1[OBJC_IVAR___PGEventLabelingConfiguration_thresholdsByMeaningLabel] = sub_22F150240(MEMORY[0x277D84F90]);
    *&v1[OBJC_IVAR___PGEventLabelingConfiguration_meaningLabels] = MEMORY[0x277D84FA0];
    *&v1[OBJC_IVAR___PGEventLabelingConfiguration_modelVersion] = 0;
LABEL_14:
    v41.receiver = v1;
    v41.super_class = ObjectType;
    objc_msgSendSuper2(&v41, sel_init, v35);
    return;
  }

  v5 = sub_22F350DE4();
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v6 = sub_22F1229E8(0x7374757074756FLL, 0xE700000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_22F13A100(*(v5 + 56) + 32 * v6, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3C20, &qword_22F7880E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = v40;
  v9 = sub_22F350DE4();
  if (!*(v9 + 16) || (v10 = sub_22F1229E8(0x6E6F6973726576, 0xE700000000000000), (v11 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_22F13A100(*(v9 + 56) + 32 * v10, v42);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
  v35 = v40;
  v40 = MEMORY[0x277D84FA0];
  v13 = v8 + 64;
  v14 = 1 << *(v8 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v8 + 64);
  v17 = (v14 + 63) >> 6;
  v38 = MEMORY[0x277D84F98];
  v36 = v8;
  while (v16)
  {
LABEL_24:
    v25 = __clz(__rbit64(v16)) | (v12 << 6);
    v26 = *(v8 + 56);
    v27 = (*(v8 + 48) + 16 * v25);
    v28 = *v27;
    v29 = *(v26 + 8 * v25);
    v30 = *(v29 + 16);
    v37 = v27[1];

    if (v30)
    {
      v31 = sub_22F1229E8(0xD000000000000013, 0x800000022F79BB30);
      v19 = 1.0;
      v18 = 1.0;
      if (v32)
      {
        v18 = *(*(v29 + 56) + 8 * v31);
      }

      if (*(v29 + 16))
      {
        v33 = sub_22F1229E8(0xD000000000000016, 0x800000022F79BB50);
        if (v34)
        {
          v19 = *(*(v29 + 56) + 8 * v33);
        }
      }
    }

    else
    {
      v18 = 1.0;
      v19 = 1.0;
    }

    v16 &= v16 - 1;

    v20 = type metadata accessor for MeaningThresholds();
    v21 = objc_allocWithZone(v20);
    *&v21[OBJC_IVAR___PGMeaningThresholds_highRecallThreshold] = v18;
    *&v21[OBJC_IVAR___PGMeaningThresholds_highPrecisionThreshold] = v19;
    v39.receiver = v21;
    v39.super_class = v20;
    v22 = objc_msgSendSuper2(&v39, sel_init);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = v38;
    sub_22F132E7C(v22, v28, v37, isUniquelyReferenced_nonNull_native);
    v38 = v42[0];
    sub_22F10BBDC(v42, v28, v37);

    v8 = v36;
  }

  while (1)
  {
    v24 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v24 >= v17)
    {

      *&v1[OBJC_IVAR___PGEventLabelingConfiguration_thresholdsByMeaningLabel] = v38;
      *&v1[OBJC_IVAR___PGEventLabelingConfiguration_meaningLabels] = v40;
      *&v1[OBJC_IVAR___PGEventLabelingConfiguration_modelVersion] = v35;
      goto LABEL_14;
    }

    v16 = *(v13 + 8 * v24);
    ++v12;
    if (v16)
    {
      v12 = v24;
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t static EventLabelingConfiguration.isEventLabelingEnabled.getter()
{
  v0 = sub_22F73FA60();
  v3[3] = v0;
  v3[4] = sub_22F350D8C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A810], v0);
  LOBYTE(v0) = sub_22F73FA20();
  __swift_destroy_boxed_opaque_existential_0(v3);
  if (v0)
  {
    return PFOSVariantHasInternalDiagnostics();
  }

  else
  {
    return 0;
  }
}

void *EventLabelingConfiguration.thresholds(by:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___PGEventLabelingConfiguration_thresholdsByMeaningLabel);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_22F1229E8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

Swift::Bool __swiftcall EventLabelingConfiguration.useEventLabelingToInfer(meaningLabel:)(Swift::String meaningLabel)
{
  object = meaningLabel._object;
  countAndFlagsBits = meaningLabel._countAndFlagsBits;
  v4 = sub_22F73FA60();
  v8[3] = v4;
  v8[4] = sub_22F350D8C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A810], v4);
  LOBYTE(v4) = sub_22F73FA20();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if (v4)
  {
    HasInternalDiagnostics = PFOSVariantHasInternalDiagnostics();
    if (HasInternalDiagnostics)
    {
      LOBYTE(HasInternalDiagnostics) = sub_22F15E910(countAndFlagsBits, object, *(v1 + OBJC_IVAR___PGEventLabelingConfiguration_meaningLabels));
    }
  }

  else
  {
    LOBYTE(HasInternalDiagnostics) = 0;
  }

  return HasInternalDiagnostics & 1;
}

id EventLabelingConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22F73F470();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-v5];
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-v8];
  v10 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v21[0] = 0;
  v11 = [v10 URLForDirectory:5 inDomain:8 appropriateForURL:0 create:0 error:v21];
  v12 = v21[0];
  if (v11)
  {
    v13 = v11;
    sub_22F73F430();
    v14 = v12;

    (*(v1 + 32))(v9, v6, v0);
    sub_22F73F410();
    v15 = sub_22F73F450();

    v16 = *(v1 + 8);
    v16(v3, v0);
    v16(v9, v0);
  }

  else
  {
    v17 = v21[0];
    v18 = sub_22F73F370();

    swift_willThrow();
    return 0;
  }

  return v15;
}

unint64_t sub_22F350D8C()
{
  result = qword_2810A9510;
  if (!qword_2810A9510)
  {
    sub_22F73FA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9510);
  }

  return result;
}

unint64_t sub_22F350DE4()
{
  v30[4] = *MEMORY[0x277D85DE8];
  v0 = sub_22F73F470();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v29 - v5;
  _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0();
  if (v7)
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v9 = sub_22F740DF0();

    v10 = [v8 initWithPath_];

    if (v10)
    {
      v11 = sub_22F740DF0();
      v12 = sub_22F740DF0();
      v13 = [v10 URLForResource:v11 withExtension:v12];

      if (v13)
      {
        sub_22F73F430();

        (*(v1 + 32))(v6, v3, v0);
        v20 = sub_22F73F480();
        v22 = v21;
        v23 = objc_opt_self();
        v24 = sub_22F73F4F0();
        v30[0] = 0;
        v25 = [v23 propertyListWithData:v24 options:0 format:0 error:v30];

        if (v25)
        {
          v26 = v30[0];
          sub_22F741920();

          sub_22F133BF0(v20, v22);
          swift_unknownObjectRelease();
          (*(v1 + 8))(v6, v0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
          if (swift_dynamicCast())
          {
            return v29[1];
          }
        }

        else
        {
          v27 = v30[0];
          v28 = sub_22F73F370();

          swift_willThrow();
          sub_22F133BF0(v20, v22);

          (*(v1 + 8))(v6, v0);
        }
      }

      else
      {
      }
    }
  }

  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  __swift_project_value_buffer(v14, qword_2810B4CB0);
  v15 = sub_22F740B70();
  v16 = sub_22F7415E0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_22F145F20(0x62614C746E657645, 0xEF3256676E696C65, v30);
    _os_log_impl(&dword_22F0FC000, v15, v16, "[EventLabelingConfiguration] Unable to get the plist data from %s.plist", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2319033A0](v18, -1, -1);
    MEMORY[0x2319033A0](v17, -1, -1);
  }

  return sub_22F14EA28(MEMORY[0x277D84F90]);
}

uint64_t sub_22F3512A0()
{
  v0 = sub_22F73F9B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_2810AAD90);
  v5 = __swift_project_value_buffer(v0, qword_2810AAD90);
  v6 = [objc_opt_self() currentCalendar];
  sub_22F73F900();

  return (*(v1 + 32))(v5, v3, v0);
}

NSObject *static MusicForTimeElector.electMusic(for:context:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v49 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  if (qword_2810A9B40 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("Music For Time Elector", 22, 2u, 0, 1, qword_2810B4E38, v60);
  v19 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration + 8);
  v58 = a3;
  if (v19 == 1)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v20 = sub_22F740B90();
    __swift_project_value_buffer(v20, qword_2810B4D90);
    v12 = sub_22F740B70();
    v21 = sub_22F7415C0();
    v22 = os_log_type_enabled(v12, v21);
    v23 = v59;
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22F0FC000, v12, v21, "[MemoriesMusic] Moment collection duration failed to extract properly: defaulting to value of a year in the MusicForTimeElector to force yearly summary.", v24, 2u);
      MEMORY[0x2319033A0](v24, -1, -1);
    }

    v25 = sub_22F7416B0();
    v27 = v26;
    v28 = 31557600.0;
  }

  else
  {
    v56 = v7;
    v28 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration);
    v25 = sub_22F7416B0();
    v57 = v29;
    if (v28 <= 2629800.0)
    {
      v55 = v6;
      v31 = sub_22F7416B0();
      v33 = v32;
      sub_22F351CC4(v18, v15, a1, v31);
      if (v3)
      {

        goto LABEL_22;
      }

      v49 = a1;
      v50 = v25;
      v52 = v31;
      v53 = v33;
      if (qword_2810AAD88 != -1)
      {
        swift_once();
      }

      v34 = sub_22F73F9B0();
      v51 = __swift_project_value_buffer(v34, qword_2810AAD90);
      sub_22F73F5A0();
      sub_22F73F800();
      v35 = v55;
      v36 = v56;
      v37 = (v56 + 1);
      v38 = v56[1];
      v54 = v38;
      v38(v9, v55);
      v38(v18, v35);
      v39 = v36[4];
      v56 = v36 + 4;
      v39(v18, v12, v35);
      sub_22F73F5A0();
      sub_22F73F800();
      v40 = v54;
      v54(v9, v35);
      v51 = v37;
      v40(v15, v35);
      v39(v15, v12, v35);
      v23 = v59;
      v41 = v53;
      sub_22F35275C(v18, v15, v59, v53);
      v43 = sub_22F352BC0(v42, v18, v15);
      v44 = v52;
      v25 = v50;
      v56 = v43;

      v46 = v54;
      v45 = v55;
      v54(v15, v55);
      v46(v18, v45);
      v30 = v56;
      v27 = v57;
      a1 = v49;
      if (!v56[2])
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }

    v23 = v59;
    v27 = v57;
  }

  v30 = sub_22F351A54(a1, v23);
  if (v3)
  {

LABEL_22:

    return v12;
  }

  if (!*(v30 + 16))
  {
LABEL_14:
    if (v28 <= 2629800.0)
    {

      v30 = sub_22F351A54(a1, v23);
    }
  }

LABEL_21:
  v47 = v30;
  sub_22F1B2BBC(0);
  sub_22F7416A0();
  v12 = sub_22F151734(v47);

  return v12;
}

uint64_t sub_22F351A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F73F690();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-1] - v8;
  v10 = sub_22F7416B0();
  v12 = v11;
  v13 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_musicBag);
  v14 = v22;
  sub_22F351CC4(v9, v6, a1, v10);
  if (v14)
  {
  }

  else
  {
    v15 = v19;
    v16 = sub_22F352468(v9, v6, v13);
    v22 = v9;
    v20[0] = 0;
    v20[1] = 0;
    v21 = 1;
    v13 = MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(v16, v20);

    v18 = *(v15 + 8);
    v18(v6, v4);
    v18(v22, v4);
  }

  return v13;
}

uint64_t sub_22F351CC4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v72 = a4;
  v67 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = &v66 - v11;
  v79 = sub_22F73F690();
  v12 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v71 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v66 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  sub_22F73F570();
  result = sub_22F73F550();
  v26 = 0;
  v27 = *(a3 + OBJC_IVAR___PGMusicCurationFeatures_curatorEvents);
  v68 = v27 + 32;
  v85 = (v12 + 48);
  v81 = v27;
  v80 = *(v27 + 16);
  v78 = (v12 + 32);
  v28 = (v12 + 8);
  v69 = (v12 + 16);
  v73 = v21;
  v76 = v24;
  v75 = a2;
  v90 = v18;
  while (1)
  {
    v29 = 0uLL;
    v30 = v80;
    v31 = 0uLL;
    v32 = 0uLL;
    if (v26 == v80)
    {
      goto LABEL_5;
    }

    if (v26 >= *(v81 + 16))
    {
      break;
    }

    v30 = v26 + 1;
    *&v86 = v26;
    sub_22F15C30C(v68 + 40 * v26, &v86 + 8);
    v29 = v86;
    v31 = v87;
    v32 = v88;
LABEL_5:
    v89[0] = v29;
    v89[1] = v31;
    v89[2] = v32;
    if (!v32)
    {
      return (*v78)(v67, v24, v79);
    }

    v84 = v29;
    v83 = v30;
    sub_22F162700((v89 + 8), &v86);
    v33 = *(&v87 + 1);
    v34 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
    v35 = v33;
    v36 = v77;
    (*(v34 + 8))(v35, v34);
    v37 = *v85;
    v38 = v79;
    if ((*v85)(v36, 1, v79) == 1)
    {
      sub_22F15FCF0(v36);
      v52 = *(&v87 + 1);
      v53 = v88;
      __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
      v54 = (*(v53 + 32))(v52, v53);
      v56 = v55;
      sub_22F353048();
      swift_allocError();
      *v57 = v54;
      *(v57 + 8) = v56;
      *(v57 + 16) = 0;
      swift_willThrow();
      v58 = *v28;
      (*v28)(v75, v38);
      goto LABEL_19;
    }

    v82 = v5;
    v39 = *v78;
    (*v78)(v21, v36, v38);
    v40 = *(&v87 + 1);
    v41 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
    v42 = v40;
    v43 = v74;
    (*(v41 + 16))(v42, v41);
    if (v37(v43, 1, v38) == 1)
    {
      sub_22F15FCF0(v43);
      v59 = *(&v87 + 1);
      v60 = v88;
      __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
      v61 = (*(v60 + 32))(v59, v60);
      v63 = v62;
      sub_22F353048();
      swift_allocError();
      *v64 = v61;
      *(v64 + 8) = v63;
      *(v64 + 16) = 1;
      swift_willThrow();
      v58 = *v28;
      (*v28)(v21, v38);
      v58(v75, v38);
LABEL_19:
      v65 = v76;
LABEL_21:
      v58(v65, v38);
      return __swift_destroy_boxed_opaque_existential_0(&v86);
    }

    v39(v90, v43, v38);
    sub_22F173D18();
    v24 = v76;
    v44 = sub_22F740DB0();
    v45 = v75;
    if (v44)
    {
      (*v28)(v24, v38);
      v46 = v70;
      (*v69)(v70, v21, v38);
    }

    else
    {
      v46 = v70;
      v39(v70, v24, v38);
    }

    v47 = v71;
    v39(v24, v46, v38);
    v48 = v38;
    v49 = v90;
    if (sub_22F740DC0())
    {
      (*v28)(v45, v48);
      (*v69)(v47, v49, v48);
    }

    else
    {
      v39(v47, v45, v48);
    }

    v38 = v48;
    v39(v45, v47, v48);
    v50 = v82;
    sub_22F741680();
    v5 = v50;
    if (v50)
    {
      v58 = *v28;
      (*v28)(v90, v48);
      v58(v73, v48);
      v58(v45, v48);
      v65 = v24;
      goto LABEL_21;
    }

    v51 = *v28;
    (*v28)(v90, v48);
    v21 = v73;
    v51(v73, v48);
    result = __swift_destroy_boxed_opaque_existential_0(&v86);
    v26 = v83;
  }

  __break(1u);
  return result;
}

char *sub_22F352468(uint64_t a1, char *a2, uint64_t a3)
{
  v21 = a3;
  v25 = a2;
  v3 = sub_22F73F990();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F73F9B0();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F970();
  v10 = *MEMORY[0x277CC9988];
  v24 = *(v4 + 104);
  v24(v6, v10, v3);
  v11 = sub_22F73F9A0();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v24(v6, v10, v3);
  v25 = v9;
  v13 = sub_22F73F9A0();
  result = (v12)(v6, v3);
  if (v13 < v11)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v16 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    v15 = MEMORY[0x277D84F90];
    if (v11 < v16)
    {
      while (1)
      {
        v17 = MusicBag.yearlySummaryIdentifier(for:)(v11);
        if (v18)
        {
          break;
        }

        if (v17.value._object)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_22F13E1A8(0, *(v15 + 2) + 1, 1, v15);
          }

          v20 = *(v15 + 2);
          v19 = *(v15 + 3);
          if (v20 >= v19 >> 1)
          {
            v15 = sub_22F13E1A8((v19 > 1), v20 + 1, 1, v15);
          }

          *(v15 + 2) = v20 + 1;
          *&v15[16 * v20 + 32] = v17;
        }

        if (v16 == ++v11)
        {
          goto LABEL_14;
        }
      }

      (*(v22 + 8))(v25, v23);

      return v15;
    }

LABEL_14:
    (*(v22 + 8))(v25, v23);
    return v15;
  }

  __break(1u);
  return result;
}

void sub_22F35275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v7 = sub_22F740AD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_cache);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22F771EB0;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22F740DF0();
  v14 = [v12 initWithKey:v13 ascending:0];

  *(v11 + 32) = v14;
  started = _s11PhotosGraph26MusicForTimeBackfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(a1, a2);
  sub_22F25F004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22F7727B0;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v18 = sub_22F153470();
  *(v16 + 32) = 0x696669746E656469;
  *(v16 + 40) = 0xEA00000000007265;
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 64) = v18;
  strcpy((v16 + 72), "MusicForTime");
  *(v16 + 85) = 0;
  *(v16 + 86) = -5120;
  *(v16 + 136) = v17;
  *(v16 + 144) = v18;
  *(v16 + 112) = 1702125924;
  *(v16 + 120) = 0xE400000000000000;
  v19 = sub_22F161070(started);

  *(v16 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DB8, &unk_22F7771C0);
  *(v16 + 184) = sub_22F352FE4();
  *(v16 + 152) = v19;
  v20 = sub_22F741560();
  v31 = v20;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v21 = *(v8 + 8);
  v30[1] = v8 + 8;
  v21(v10, v7);
  v22 = sub_22F7416B0();
  v33 = v7;
  v24 = v23;
  v35 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v22);
  v30[-10] = v20;
  v30[-9] = v25;
  v30[-8] = v26;
  v30[-7] = v24;
  v30[-6] = 0;
  v30[-5] = &v35;
  v30[-4] = v11;
  v30[-3] = 6000;
  LOWORD(v30[-2]) = 256;
  v27 = v34;
  sub_22F7417A0();
  if (v27)
  {

    v28 = v31;
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v29 = v31;

    v21(v10, v33);
  }
}

void *sub_22F352BC0(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v37 = a2;
  v39 = sub_22F73F690();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v32 = type metadata accessor for Song(0);
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if (qword_2810A9168 != -1)
  {
LABEL_24:
    swift_once();
  }

  v31 = a1[2];
  if (v31)
  {
    v14 = 0;
    v38 = qword_2810A9170;
    v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v30 = a1 + v26;
    v33 = v9[9];
    v15 = (v4 + 32);
    v16 = (v4 + 8);
    v28 = MEMORY[0x277D84F90];
    v29 = v13;
    while (1)
    {
      sub_22F15CAA0(&v30[v33 * v14], v13);
      v4 = *&v13[*(v32 + 68)];
      if (!v4)
      {
        sub_22F15CBD8(v13);
        goto LABEL_5;
      }

      v34 = v14;
      v13 = *(v4 + 16);
      if (!v13)
      {
LABEL_4:
        v13 = v29;
        sub_22F15CBD8(v29);
        v14 = v34;
        goto LABEL_5;
      }

      v17 = 0;
      a1 = (v4 + 40);
      while (1)
      {
        if (v17 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v18 = sub_22F740DF0();

        v9 = [v38 dateFromString_];

        if (v9)
        {
          break;
        }

LABEL_10:
        ++v17;
        a1 += 10;
        if (v13 == v17)
        {
          goto LABEL_4;
        }
      }

      v19 = v36;
      sub_22F73F640();

      (*v15)(v8, v19, v39);
      if (sub_22F73F660() == -1 || sub_22F73F660() == 1)
      {
        break;
      }

      v13 = v29;
      sub_22F15CAA0(v29, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_22F13E558(0, v28[2] + 1, 1, v28);
      }

      v14 = v34;
      v21 = v28[2];
      v20 = v28[3];
      v9 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        v28 = sub_22F13E558((v20 > 1), v21 + 1, 1, v28);
      }

      (*v16)(v8, v39);
      sub_22F15CBD8(v13);
      v22 = v27;
      v23 = v28;
      v28[2] = v9;
      sub_22F15CB04(v22, v23 + v26 + v21 * v33);
LABEL_5:
      if (++v14 == v31)
      {
        return v28;
      }
    }

    (*v16)(v8, v39);
    goto LABEL_10;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22F352FE4()
{
  result = qword_2810A92A0;
  if (!qword_2810A92A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1DB8, &unk_22F7771C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92A0);
  }

  return result;
}

unint64_t sub_22F353048()
{
  result = qword_27DAB3C28;
  if (!qword_27DAB3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C28);
  }

  return result;
}

double sub_22F3530B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F353120()
{
  swift_beginAccess();

  return result;
}

double sub_22F353168(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_22F353220()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_22F353264(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_22F353314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F35337C()
{
  swift_beginAccess();

  return result;
}

double sub_22F3533C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t *sub_22F35347C(char *a1, void *a2)
{
  v3 = v2;
  v68 = *v3;
  v6 = sub_22F740460();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F740560();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F73F990();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F73F9B0();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73F690();
  v69 = *(v15 - 8);
  v70 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - v19;
  v21 = sub_22F73F090();
  v22 = *(v21 - 8);
  v74 = v21;
  v75 = v22;
  MEMORY[0x28223BE20](v21);
  v73 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  *(v3 + 16) = 1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults) = 0;
  v61 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults) = MEMORY[0x277D84F90];
  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v27 = (*(v26 + 16))(v25, v26);
  if (v27)
  {
    v28 = v27;
    v29 = a2[3];
    v30 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v29);
    (*(v30 + 8))(v29, v30);
    sub_22F73F970();
    if (v24)
    {
      sub_22F73F890();
    }

    else
    {
      v39 = v58;
      v38 = v59;
      v40 = v60;
      (*(v59 + 104))(v58, *MEMORY[0x277CC9940], v60);
      sub_22F73F8C0();
      (*(v38 + 8))(v39, v40);
    }

    (*(v71 + 8))(v14, v72);
    (*(v69 + 8))(v17, v70);
    v42 = v74;
    v41 = v75;
    if ((*(v75 + 48))(v20, 1, v74) == 1)
    {

      sub_22F1EDFCC(v20);
    }

    else
    {
      v43 = v73;
      (*(v41 + 32))(v73, v20, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E68, &qword_22F771210);
      v44 = v41;
      v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_22F771340;
      v47 = (*(v44 + 16))(v46 + v45, v43, v42);
      MEMORY[0x28223BE20](v47);
      *(&v58 - 2) = v46;
      *(&v58 - 1) = v28;
      v48 = v28;
      sub_22F2A1FCC(sub_22F348128, (&v58 - 4));

      v49 = a2[3];
      v50 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v49);
      (*(v50 + 24))(v49, v50);
      (*(v62 + 104))(v64, *MEMORY[0x277D3C570], v63);
      sub_22F740570();
      swift_allocObject();
      sub_22F740550();
      sub_22F73FE90();
      v51 = sub_22F7404F0();

      v53 = v65;
      v52 = v66;
      v54 = v67;
      (*(v66 + 104))(v65, *MEMORY[0x277D3C448], v67);
      v55 = static CollectionTrigger.generateTriggerResults(from:type:)(v51, v53);

      (*(v52 + 8))(v53, v54);
      (*(v75 + 8))(v73, v42);
      v56 = v61;
      swift_beginAccess();
      *(v3 + v56) = v55;
    }
  }

  else
  {
    v31 = sub_22F740B70();
    v32 = sub_22F7415C0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v76[0] = v34;
      *v33 = 136315138;
      v35 = sub_22F742240();
      v37 = sub_22F145F20(v35, v36, v76);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_22F0FC000, v31, v32, "GraphWorkingContext not available. Skipping %s trigger", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x2319033A0](v34, -1, -1);
      MEMORY[0x2319033A0](v33, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

uint64_t RecentTrips.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t RecentTrips.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_22F353E54()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F353EA0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

double sub_22F353EE8()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for RecentTrips(uint64_t a1)
{
  result = qword_27DAB3C30;
  if (!qword_27DAB3C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F353F88(uint64_t a1)
{
  result = sub_22F740B90();
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

void sub_22F35420C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v97[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v97[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v97[-v14];
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v97[-v18];
  v20 = [v4 adamID];
  if (!v20)
  {
    sub_22F355188();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    return;
  }

  v109 = a1;
  v21 = v20;
  v108 = sub_22F740E20();
  v110 = v22;

  v23 = [v4 duration];
  v112 = v3;
  v107 = v23;
  if (v23)
  {
    v24 = v23;
    [v23 doubleValue];
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v28 = sub_22F73F7C0();
  v29 = *(*(v28 - 8) + 56);
  v29(v19, 1, 1, v28);
  v30 = [v4 audioLocaleIdentifier];
  v111 = v4;
  v113 = v19;
  if (v30)
  {
    v31 = v30;
    sub_22F740E20();
    v106 = v29;

    v4 = v111;
    v32 = v113;
    sub_22F73F6E0();
    sub_22F2C0884(v32);
    v106(v15, 0, 1, v28);
    sub_22F1207AC(v15, v32, &qword_27DAB0C90, &unk_22F785B70);
  }

  v33 = [v4 genreNamesAsData];
  if (v33)
  {
    v34 = v33;
    v35 = sub_22F73F510();
    v37 = v36;

    sub_22F73F310();
    swift_allocObject();
    sub_22F73F300();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92D8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v38 = v112;
    sub_22F73F2F0();
    v39 = v38;
    if (v38)
    {
      sub_22F2C0884(v113);

      sub_22F133BF0(v35, v37);

      return;
    }

    sub_22F133BF0(v35, v37);

    v105 = v114;
    v4 = v111;
  }

  else
  {
    v105 = 0;
    v39 = v112;
  }

  v40 = [v4 title];
  if (v40)
  {
    v41 = v40;
    v42 = sub_22F740E20();
    v103 = v43;
    v104 = v42;
  }

  else
  {
    v103 = 0;
    v104 = 0;
  }

  v44 = [v4 artist];
  if (v44)
  {
    v45 = v44;
    v46 = sub_22F740E20();
    v101 = v47;
    v102 = v46;
  }

  else
  {
    v101 = 0;
    v102 = 0;
  }

  v48 = [v4 album];
  if (v48)
  {
    v49 = v48;
    v50 = sub_22F740E20();
    v99 = v51;
    v100 = v50;
  }

  else
  {
    v99 = 0;
    v100 = 0;
  }

  v112 = v39;
  v52 = [v4 isExplicit];
  if (v52)
  {
    v53 = v52;
    v98 = [v52 BOOLValue];
  }

  else
  {
    v98 = 2;
  }

  v54 = v113;
  v55 = [v4 preferenceScore];
  v56 = v55;
  if (v55)
  {
    [v55 floatValue];
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  sub_22F13BA9C(v54, v12, &qword_27DAB0C90, &unk_22F785B70);
  v59 = [v4 lastRefreshAttemptDate];
  if (v59)
  {
    v60 = v59;
    sub_22F73F640();

    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = sub_22F73F690();
  (*(*(v62 - 8) + 56))(v9, v61, 1, v62);
  v63 = [v4 arousal];
  v64 = v63;
  v65 = 0;
  v66 = 0;
  if (v63)
  {
    [v63 floatValue];
    v66 = v67;
  }

  v106 = v9;
  v68 = [v4 valence];
  v69 = v68;
  if (v68)
  {
    [v68 floatValue];
    v65 = v70;
  }

  v71 = v12;
  v72 = [v111 unitagMemoryAppropriateScore];
  v73 = v72;
  v74 = 0;
  v75 = 0;
  if (v72)
  {
    [v72 floatValue];
    v75 = v76;
  }

  v77 = [v111 unitagMemoryNotAppropriateScore];
  v78 = v77;
  if (v77)
  {
    [v77 floatValue];
    v74 = v79;
  }

  v80 = v78 == 0;
  v81 = v73 == 0;
  v82 = v64 == 0;
  v83 = v107 == 0;
  sub_22F2C0884(v113);
  v84 = v110;
  *a2 = v108;
  *(a2 + 8) = v84;
  v85 = v103;
  *(a2 + 16) = v104;
  *(a2 + 24) = v85;
  v86 = v101;
  *(a2 + 32) = v102;
  *(a2 + 40) = v86;
  v87 = v99;
  *(a2 + 48) = v100;
  *(a2 + 56) = v87;
  *(a2 + 64) = v105;
  *(a2 + 72) = v98;
  *(a2 + 80) = v26;
  *(a2 + 88) = v83;
  *(a2 + 92) = v58;
  *(a2 + 96) = v56 == 0;
  v88 = type metadata accessor for Song(0);
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  sub_22F1207AC(v71, a2 + v88[15], &qword_27DAB0C90, &unk_22F785B70);
  v89 = a2 + v88[26];
  *v89 = 1;
  *(v89 + 8) = 0u;
  *(v89 + 24) = 0u;
  *(v89 + 37) = 0;
  sub_22F1207AC(v106, a2 + v88[16], &qword_27DAB0920, &qword_22F770B20);
  *(a2 + v88[17]) = v109;
  v90 = a2 + v88[18];
  *v90 = v66;
  *(v90 + 4) = v82;
  v91 = a2 + v88[19];
  *v91 = v65;
  *(v91 + 4) = v69 == 0;
  v92 = a2 + v88[20];
  *v92 = v75;
  *(v92 + 4) = v81;
  v93 = a2 + v88[21];
  *v93 = v74;
  *(v93 + 4) = v80;
  v94 = a2 + v88[22];
  *v94 = 0;
  *(v94 + 4) = 1;
  v95 = a2 + v88[23];
  *v95 = 0;
  *(v95 + 4) = 1;
  *(a2 + v88[24]) = 0;
  v96 = (a2 + v88[25]);
  *v96 = 0;
  v96[1] = 0;
}

void sub_22F354A34(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  *&v9 = MEMORY[0x28223BE20](v8 - 8).n128_u64[0];
  v11 = v43 - v10;
  v12 = [v1 adamID];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = sub_22F740E20();
  v16 = v15;

  if (v14 == *a1 && v16 == *(a1 + 8))
  {
  }

  else
  {
    v18 = sub_22F742040();

    if ((v18 & 1) == 0)
    {
LABEL_7:
      sub_22F355188();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      return;
    }
  }

  if (*(a1 + 24))
  {
    v20 = sub_22F740DF0();
  }

  else
  {
    v20 = 0;
  }

  [v3 setTitle_];

  if (*(a1 + 40))
  {
    v21 = sub_22F740DF0();
  }

  else
  {
    v21 = 0;
  }

  [v3 setArtist_];

  if (*(a1 + 56))
  {
    v22 = sub_22F740DF0();
  }

  else
  {
    v22 = 0;
  }

  [v3 setAlbum_];

  v23 = *(a1 + 64);
  if (v23)
  {
    sub_22F73F350();
    swift_allocObject();
    sub_22F73F340();
    v43[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    v24 = sub_22F73F330();
    v26 = v25;

    if (v2)
    {
      return;
    }

    v27 = sub_22F73F4F0();
    sub_22F133BF0(v24, v26);
  }

  else
  {
    v27 = 0;
  }

  [v3 setGenreNamesAsData_];

  if (*(a1 + 72) == 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_22F7412C0();
  }

  [v3 setIsExplicit_];

  if (*(a1 + 88))
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_22F741350();
  }

  [v3 setDuration_];

  if (*(a1 + 96))
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_22F7413C0();
  }

  [v3 setPreferenceScore_];

  v31 = type metadata accessor for Song(0);
  v32 = 0;
  if ((*(a1 + v31[20] + 4) & 1) == 0)
  {
    v32 = sub_22F7413C0();
  }

  [v3 setUnitagMemoryAppropriateScore_];

  if (*(a1 + v31[21] + 4))
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_22F7413C0();
  }

  [v3 setUnitagMemoryNotAppropriateScore_];

  sub_22F13BA9C(a1 + v31[15], v11, &qword_27DAB0C90, &unk_22F785B70);
  v34 = sub_22F73F7C0();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v11, 1, v34) == 1)
  {
    sub_22F2C0884(v11);
    v36 = 0;
  }

  else
  {
    sub_22F73F6F0();
    (*(v35 + 8))(v11, v34);
    v36 = sub_22F740DF0();
  }

  [v3 setAudioLocaleIdentifier_];

  sub_22F13BA9C(a1 + v31[16], v7, &qword_27DAB0920, &qword_22F770B20);
  v37 = sub_22F73F690();
  v38 = *(v37 - 8);
  v39 = 0;
  if ((*(v38 + 48))(v7, 1, v37) != 1)
  {
    v39 = sub_22F73F5B0();
    (*(v38 + 8))(v7, v37);
  }

  [v3 setLastRefreshAttemptDate_];

  if (*(a1 + v31[18] + 4))
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_22F7413C0();
  }

  [v3 setArousal_];

  if (*(a1 + v31[19] + 4))
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_22F7413C0();
  }

  [v3 setValence_];

  sub_22F170D8C();
  v42 = sub_22F7417E0();
  [v3 setClearedForPhotosMemoriesExport_];
}

id sub_22F3550F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SongEntry();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22F355150()
{
  v0 = *aSong_1;

  return v0;
}

unint64_t sub_22F355188()
{
  result = qword_27DAB3C50;
  if (!qword_27DAB3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C50);
  }

  return result;
}

id sub_22F3551DC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v39 - v9;
  v11 = objc_opt_self();

  v12 = sub_22F740DF0();

  v13 = [v11 entityForName:v12 inManagedObjectContext:a1];

  if (v13)
  {
    v11 = [objc_allocWithZone(type metadata accessor for SongEntry()) initWithEntity:v13 insertIntoManagedObjectContext:a1];

    v14 = sub_22F740DF0();
    [v11 setAdamID_];

    if (*(a2 + 24))
    {
      v15 = sub_22F740DF0();
    }

    else
    {
      v15 = 0;
    }

    [v11 setTitle_];

    if (*(a2 + 40))
    {
      v16 = sub_22F740DF0();
    }

    else
    {
      v16 = 0;
    }

    [v11 setArtist_];

    if (*(a2 + 56))
    {
      v17 = sub_22F740DF0();
    }

    else
    {
      v17 = 0;
    }

    [v11 setAlbum_];

    v18 = *(a2 + 64);
    if (v18)
    {
      sub_22F73F350();
      swift_allocObject();
      sub_22F73F340();
      v39[1] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F1BA494(&qword_2810A92E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
      v19 = sub_22F73F330();
      v21 = v20;

      if (v2)
      {

        return v11;
      }

      v22 = sub_22F73F4F0();
      sub_22F133BF0(v19, v21);
    }

    else
    {
      v22 = 0;
    }

    [v11 setGenreNamesAsData_];

    if (*(a2 + 72) == 2)
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_22F7412C0();
    }

    [v11 setIsExplicit_];

    if (*(a2 + 88))
    {
      v24 = 0;
    }

    else
    {
      v24 = sub_22F741350();
    }

    [v11 setDuration_];

    if (*(a2 + 96))
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_22F7413C0();
    }

    [v11 setPreferenceScore_];

    v26 = type metadata accessor for Song(0);
    sub_22F13BA9C(a2 + v26[15], v10, &qword_27DAB0C90, &unk_22F785B70);
    v27 = sub_22F73F7C0();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v10, 1, v27) == 1)
    {
      sub_22F2C0884(v10);
      v29 = 0;
    }

    else
    {
      sub_22F73F6F0();
      (*(v28 + 8))(v10, v27);
      v29 = sub_22F740DF0();
    }

    [v11 setAudioLocaleIdentifier_];

    sub_22F13BA9C(a2 + v26[16], v7, &qword_27DAB0920, &qword_22F770B20);
    v30 = sub_22F73F690();
    v31 = *(v30 - 8);
    v32 = 0;
    if ((*(v31 + 48))(v7, 1, v30) != 1)
    {
      v32 = sub_22F73F5B0();
      (*(v31 + 8))(v7, v30);
    }

    [v11 setLastRefreshAttemptDate_];

    if (*(a2 + v26[18] + 4))
    {
      v33 = 0;
    }

    else
    {
      v33 = sub_22F7413C0();
    }

    [v11 setArousal_];

    if (*(a2 + v26[19] + 4))
    {
      v34 = 0;
    }

    else
    {
      v34 = sub_22F7413C0();
    }

    [v11 setValence_];

    if (*(a2 + v26[20] + 4))
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_22F7413C0();
    }

    [v11 setUnitagMemoryAppropriateScore_];

    if (*(a2 + v26[21] + 4))
    {
      v36 = 0;
    }

    else
    {
      v36 = sub_22F7413C0();
    }

    [v11 setUnitagMemoryNotAppropriateScore_];

    sub_22F170D8C();
    v37 = sub_22F7417E0();
    [v11 setClearedForPhotosMemoriesExport_];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return v11;
}

unint64_t sub_22F3558AC()
{
  result = qword_27DAB3C58;
  if (!qword_27DAB3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C58);
  }

  return result;
}

double sub_22F355900()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3C60, &qword_22F788398);
  v0 = swift_allocObject();
  *&result = 6;
  *(v0 + 16) = xmmword_22F777170;
  *(v0 + 32) = &type metadata for NegativeUserFeedbackMusicFilter;
  *(v0 + 40) = &off_2843EE2D8;
  *(v0 + 48) = &type metadata for ExplicitMusicFilter;
  *(v0 + 56) = &off_2843E9058;
  *(v0 + 64) = &type metadata for BlocklistMusicFilter;
  *(v0 + 72) = &off_2843EF8B0;
  *(v0 + 80) = &type metadata for DurationMusicFilter;
  *(v0 + 88) = &off_2843EA1F0;
  *(v0 + 96) = &type metadata for RecentlyUsedFilter;
  *(v0 + 104) = &off_2843E2A30;
  *(v0 + 112) = &type metadata for GenreMusicFilter;
  *(v0 + 120) = &off_2843E2A60;
  return result;
}

void sub_22F3559B8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  sub_22F7416F0();
  v11 = a4(v10, a2, a3);
  if (v5)
  {
  }

  else
  {
    v18 = v11;
    v17 = a4(a1[1], a2, a3);
    v16 = a4(a1[2], a2, a3);
    v12 = a4(a1[3], a2, a3);
    v13 = a4(a1[4], a2, a3);
    v15 = a4(a1[5], a2, a3);
    v14 = a4(a1[6], a2, a3);

    *a5 = v18;
    a5[1] = v17;
    a5[2] = v16;
    a5[3] = v12;
    a5[4] = v13;
    a5[5] = v15;
    a5[6] = v14;
  }
}