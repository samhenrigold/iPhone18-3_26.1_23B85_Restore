uint64_t TodayPage.__deallocating_deinit()
{
  TodayPage.deinit();

  return swift_deallocClassInstance();
}

double sub_24EA74228(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24EA742A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24EA7324C(*a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for TodayPage(uint64_t a1)
{
  result = qword_27F2265F0;
  if (!qword_27F2265F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA74324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EA7436C()
{
  result = qword_27F2265E8;
  if (!qword_27F2265E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F2265E8);
  }

  return result;
}

double keypath_getTm_2@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

void *AdvertAppearanceJournal.__allocating_init(instanceId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = MEMORY[0x277D84F90];
  return result;
}

void *AdvertAppearanceJournal.init(instanceId:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = MEMORY[0x277D84F90];
  return v2;
}

uint64_t AdvertAppearanceJournal.instanceId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for AdvertAppearanceJournal.Entry(uint64_t a1)
{
  result = qword_27F226600;
  if (!qword_27F226600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA74770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA747DC(uint64_t a1, char a2)
{
  v5 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v13 = *(v12 + 28);
  v14 = sub_24F91F648();
  (*(*(v14 - 8) + 16))(&v11[v13], a1, v14);
  *v11 = a2;
  sub_24EA74770(v11, v8);
  swift_beginAccess();
  v15 = *(v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 32) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_24E617FB8(0, v15[2] + 1, 1, v15);
    *(v2 + 32) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_24E617FB8((v17 > 1), v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  sub_24EA74F78(v8, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18);
  *(v2 + 32) = v15;
  swift_endAccess();
  return sub_24EA74FDC(v11);
}

uint64_t AdvertAppearanceJournal.isVisible.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(type metadata accessor for AdvertAppearanceJournal.Entry(0) - 8);
    LOBYTE(v2) = *(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3) ^ 1;
  }

  return v2 & 1;
}

void AdvertAppearanceJournal.lastAppearanceTime.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  swift_beginAccess();
  v13 = *(v1 + 32);
  v14 = *(v13 + 16);

  while (1)
  {
    if (!v14)
    {

      v20 = sub_24F91F648();
      (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
      return;
    }

    if (v14 > *(v13 + 16))
    {
      break;
    }

    --v14;
    v15 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14;
    sub_24EA74770(v15, v6);
    v16 = *v6;
    sub_24EA74FDC(v6);
    if ((v16 & 1) == 0)
    {
      sub_24EA74770(v15, v9);

      sub_24EA74F78(v9, v12);
      v17 = *(v3 + 20);
      v18 = sub_24F91F648();
      v19 = *(v18 - 8);
      (*(v19 + 32))(a1, &v12[v17], v18);
      (*(v19 + 56))(a1, 0, 1, v18);
      return;
    }
  }

  __break(1u);
}

void AdvertAppearanceJournal.lastDisappearanceTime.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  swift_beginAccess();
  v13 = *(v1 + 32);
  v14 = *(v13 + 16);

  while (1)
  {
    if (!v14)
    {

      v20 = sub_24F91F648();
      (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
      return;
    }

    if (v14 > *(v13 + 16))
    {
      break;
    }

    --v14;
    v15 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14;
    sub_24EA74770(v15, v6);
    v16 = *v6;
    sub_24EA74FDC(v6);
    if (v16 == 1)
    {
      sub_24EA74770(v15, v9);

      sub_24EA74F78(v9, v12);
      v17 = *(v3 + 20);
      v18 = sub_24F91F648();
      v19 = *(v18 - 8);
      (*(v19 + 32))(a1, &v12[v17], v18);
      (*(v19 + 56))(a1, 0, 1, v18);
      return;
    }
  }

  __break(1u);
}

uint64_t AdvertAppearanceJournal.deinit()
{

  return v0;
}

uint64_t AdvertAppearanceJournal.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EA74F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA74FDC(uint64_t a1)
{
  v2 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA7509C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24EA75154(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_24F91F648();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EA751F4(uint64_t a1)
{
  result = sub_24F91F648();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EA75284()
{
  result = qword_27F226610;
  if (!qword_27F226610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226610);
  }

  return result;
}

uint64_t sub_24EA752D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E655265676170;
  }

  else
  {
    v3 = 6778732;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v5 = 0x646E655265676170;
  }

  else
  {
    v5 = 6778732;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007265;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EA7537C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA753FC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EA75468()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA754E4@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24EA75544(uint64_t *a1@<X8>)
{
  v2 = 6778732;
  if (*v1)
  {
    v2 = 0x646E655265676170;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007265;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24EA75580()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_allocate_value_buffer(v0, qword_27F226618);
  __swift_project_value_buffer(v0, qword_27F226618);
  return sub_24F928C68();
}

uint64_t sub_24EA7561C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_allocate_value_buffer(v0, qword_27F226630);
  __swift_project_value_buffer(v0, qword_27F226630);
  return sub_24F928C68();
}

uint64_t sub_24EA756B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t getEnumTagSinglePayload for MetricsSamplingLottery(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsSamplingLottery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24EA75808()
{
  result = qword_27F226648;
  if (!qword_27F226648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226648);
  }

  return result;
}

uint64_t sub_24EA7585C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226650, &qword_24F97A670);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v8 = 6778732;
  if (v7)
  {
    v8 = 0x646E655265676170;
    v9 = 0xEA00000000007265;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  v16 = v8;
  v17 = v9;
  v14 = 0xD000000000000022;
  v15 = 0x800000024FA50F10;
  v14 = sub_24F92B3C8();
  v15 = v10;
  sub_24F92B278();

  sub_24F928C68();
  sub_24F928868();

  (*(v4 + 8))(v6, v3);
  if (v17)
  {
    v11 = 1;
  }

  else
  {
    sub_24F91F508();
    v11 = 0;
  }

  v12 = sub_24F91F648();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t sub_24EA75A90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226650, &qword_24F97A670);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *v1;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v8 = 6778732;
  if (v7)
  {
    v8 = 0x646E655265676170;
    v9 = 0xEA00000000007265;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  v19 = v8;
  v20 = v9;
  v17 = 0xD000000000000022;
  v18 = 0x800000024FA50F10;
  v17 = sub_24F92B3C8();
  v18 = v10;
  sub_24F92B278();

  sub_24F928C68();
  sub_24E728A00(a1, v5);
  v11 = sub_24F91F648();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v5, 1, v11);
  if (v13 == 1)
  {
    sub_24E728998(v5);
    v14 = 0;
  }

  else
  {
    sub_24F91F518();
    v14 = v15;
    (*(v12 + 8))(v5, v11);
  }

  v19 = v14;
  LOBYTE(v20) = v13 == 1;
  sub_24F928878();

  return sub_24E728998(a1);
}

uint64_t sub_24EA75D24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - v3;
  v5 = *v0;
  v7 = ASKBuildTypeGetCurrent(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F9479A0;
  *(v8 + 32) = @"debug";
  *(v8 + 40) = @"convergence";
  *(v8 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v9 = @"debug";
  v10 = @"convergence";
  v11 = @"internal";
  v12 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v7, v12);

  if (IsAnyOf)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    if (qword_27F210120 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_27F226618);
    sub_24F928868();

    if (v21 == 2 || (v21 & 1) == 0)
    {
      _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
      v15 = 6778732;
      if (v5)
      {
        v15 = 0x646E655265676170;
        v16 = 0xEA00000000007265;
      }

      else
      {
        v16 = 0xE300000000000000;
      }

      v21 = v15;
      v22 = v16;
      v19 = 0xD00000000000001FLL;
      v20 = 0x800000024FA50EF0;
      v19 = sub_24F92B3C8();
      v20 = v17;
      sub_24F92B278();

      sub_24F928C68();
      sub_24F928868();

      (*(v2 + 8))(v4, v1);
      v14 = v21;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_24EA76044()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v29 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v29 - v18;
  v20 = *v0;
  v22 = v0[1];
  v21 = *(v0 + 2);
  v31 = *v0;
  v32 = v22;
  v33 = v21;
  if (sub_24EA75D24())
  {
    return 1;
  }

  if (v22 <= 0.0)
  {
    return 0;
  }

  if (v22 >= 1.0)
  {
    return 1;
  }

  v31 = v20;
  v32 = v22;
  v33 = v21;
  sub_24EA7585C(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v24 = *(v8 + 32);
    v29[1] = v8 + 32;
    v30 = v24;
    v24(v13, v6, v7);
    sub_24F91F568();
    v25 = *(v8 + 8);
    v25(v13, v7);
    v30(v19, v16, v7);
    sub_24F91F638();
    v26 = sub_24F91F598();
    v25(v10, v7);
    v25(v19, v7);
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }

    return 1;
  }

  sub_24E728998(v6);
LABEL_10:
  v27 = sub_24F18A83C(0x20000000000001uLL);
  result = 0;
  v28 = vcvtd_n_f64_u64(v27, 0x35uLL);
  if (v28 > 0.0 && v28 <= v22)
  {
    v31 = v20;
    v32 = v22;
    v33 = v21;
    sub_24F91F638();
    (*(v8 + 56))(v3, 0, 1, v7);
    sub_24EA75A90(v3);
    return 1;
  }

  return result;
}

uint64_t sub_24EA76370(uint64_t a1)
{
  v1 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F9479A0;
  *(v2 + 32) = @"debug";
  *(v2 + 40) = @"convergence";
  *(v2 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v3 = @"debug";
  v4 = @"convergence";
  v5 = @"internal";
  v6 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v1, v6);

  if (IsAnyOf)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    if (qword_27F210128 != -1)
    {
      swift_once();
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
    __swift_project_value_buffer(v8, qword_27F226630);
    sub_24F928868();

    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t TopChartSegment.__allocating_init(shortName:longName:shelves:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LODWORD(v67) = a6;
  v65 = a3;
  v66 = a4;
  v64 = a2;
  v69 = a10;
  v70 = a8;
  v71 = a9;
  v72 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = sub_24F928818();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v25 = sub_24EEF0A68(a5);
  v27 = v26;

  *(v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = v25;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping) = v27;
  v28 = (v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  v29 = v64;
  v30 = v65;
  *v28 = a1;
  v28[1] = v29;
  v31 = (v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  v32 = v66;
  *v31 = v30;
  v31[1] = v32;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) = v67;
  sub_24E60169C(v72, v24 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0, &unk_24F945320);
  v33 = *(v21 + 16);
  v33(v23, v71, v20);
  sub_24E60169C(a11, v19, &qword_27F2218B0, &unk_24F975980);
  *(v24 + 16) = v70;
  v33((v24 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v23, v20);
  v34 = v68;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v69;
  v35 = v19;
  v36 = v19;
  v37 = v34;
  sub_24E60169C(v36, v34, &qword_27F2218B0, &unk_24F975980);
  v38 = sub_24F9285B8();
  v66 = *(v38 - 8);
  v67 = v38;
  v39 = *(v66 + 48);
  if ((v39)(v37, 1) == 1)
  {
    sub_24E601704(a11, &qword_27F2218B0, &unk_24F975980);
    v40 = *(v21 + 8);
    v40(v71, v20);
    sub_24E601704(v72, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v35, &qword_27F2218B0, &unk_24F975980);
    v40(v23, v20);
    v41 = v37;
  }

  else
  {
    v60 = v39;
    v42 = v37;
    v62 = a11;
    v64 = v23;
    v65 = v21;
    v43 = v35;
    v44 = qword_27F2105F0;

    if (v44 != -1)
    {
      swift_once();
    }

    v61 = v20;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v45, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v46 = v73;
    v48 = v66;
    v47 = v67;
    if (v73)
    {
    }

    v49 = *(v48 + 8);
    v49(v42, v47);
    if (!v46)
    {

      sub_24E601704(v62, &qword_27F2218B0, &unk_24F975980);
      v55 = *(v65 + 8);
      v56 = v61;
      v55(v71, v61);
      sub_24E601704(v72, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v43, &qword_27F2218B0, &unk_24F975980);
      v55(v64, v56);
      return v24;
    }

    v50 = v43;
    v51 = v43;
    v52 = v63;
    sub_24E60169C(v51, v63, &qword_27F2218B0, &unk_24F975980);
    if (v60(v52, 1, v47) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v62, &qword_27F2218B0, &unk_24F975980);
      v57 = *(v65 + 8);
      v58 = v61;
      v57(v71, v61);
      sub_24E601704(v72, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v50, &qword_27F2218B0, &unk_24F975980);
      v57(v64, v58);
      v49(v52, v47);
      return v24;
    }

    sub_24E601704(v62, &qword_27F2218B0, &unk_24F975980);
    v53 = *(v65 + 8);
    v54 = v61;
    v53(v71, v61);
    sub_24E601704(v72, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v50, &qword_27F2218B0, &unk_24F975980);
    v53(v64, v54);
    v41 = v52;
  }

  sub_24E601704(v41, &qword_27F2218B0, &unk_24F975980);
  return v24;
}

uint64_t TopChartSegment.init(shortName:longName:shelves:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LODWORD(v61) = a6;
  v60 = a4;
  v57 = a2;
  v58 = a3;
  v62 = a10;
  v63 = a8;
  v64 = a9;
  v65 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v14 - 8);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v55 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = sub_24F928818();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24EEF0A68(a5);
  v27 = v26;

  *(v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = v25;
  *(v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping) = v27;
  v28 = (v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  v29 = v57;
  v30 = v58;
  *v28 = a1;
  v28[1] = v29;
  v31 = (v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  v32 = v60;
  *v31 = v30;
  v31[1] = v32;
  *(v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) = v61;
  sub_24E60169C(v65, v11 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0, &unk_24F945320);
  v33 = *(v22 + 16);
  v33(v24, v64, v21);
  sub_24E60169C(a11, v20, &qword_27F2218B0, &unk_24F975980);
  *(v11 + 16) = v63;
  v61 = v21;
  v33((v11 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v24, v21);
  v60 = v11;
  *(v11 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v62;
  v34 = v59;
  sub_24E60169C(v20, v59, &qword_27F2218B0, &unk_24F975980);
  v35 = sub_24F9285B8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v34, 1, v35) == 1)
  {
    sub_24E601704(a11, &qword_27F2218B0, &unk_24F975980);
    v38 = *(v22 + 8);
    v39 = v61;
    v38(v64, v61);
    sub_24E601704(v65, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v20, &qword_27F2218B0, &unk_24F975980);
    v38(v24, v39);
    v40 = v34;
  }

  else
  {
    v55 = a11;
    v57 = v24;
    v41 = qword_27F2105F0;

    if (v41 != -1)
    {
      swift_once();
    }

    v58 = v22;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v42, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v43 = v66;
    v44 = v64;
    if (v66)
    {
    }

    v45 = *(v36 + 8);
    v45(v34, v35);
    if (!v43)
    {

      sub_24E601704(v55, &qword_27F2218B0, &unk_24F975980);
      v49 = *(v58 + 8);
      v50 = v61;
      v49(v44, v61);
      sub_24E601704(v65, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v20, &qword_27F2218B0, &unk_24F975980);
      v49(v57, v50);
      return v60;
    }

    v46 = v56;
    sub_24E60169C(v20, v56, &qword_27F2218B0, &unk_24F975980);
    if (v37(v46, 1, v35) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v55, &qword_27F2218B0, &unk_24F975980);
      v51 = *(v58 + 8);
      v52 = v44;
      v53 = v61;
      v51(v52, v61);
      sub_24E601704(v65, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v20, &qword_27F2218B0, &unk_24F975980);
      v51(v57, v53);
      v45(v46, v35);
      return v60;
    }

    sub_24E601704(v55, &qword_27F2218B0, &unk_24F975980);
    v47 = *(v58 + 8);
    v48 = v61;
    v47(v44, v61);
    sub_24E601704(v65, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v20, &qword_27F2218B0, &unk_24F975980);
    v47(v57, v48);
    v40 = v46;
  }

  sub_24E601704(v40, &qword_27F2218B0, &unk_24F975980);
  return v60;
}

void *TopChartSegment.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v88 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v74 - v6;
  v7 = sub_24F92AC28();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v92 = sub_24F9285B8();
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = &v74 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - v16;
  MEMORY[0x28223BE20](v18);
  v87 = &v74 - v19;
  v20 = sub_24F928388();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v81 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v74 - v30;
  v84 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928278();
  v80 = v21;
  v33 = *(v21 + 8);
  v32 = v21 + 8;
  v85 = v20;
  v33(v31, v20);
  v83 = v3;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) = a1 & 1;
  v34 = MEMORY[0x277D84F90];
  v86 = v33;
  if (a1)
  {
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v35, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F928538();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *&v90 = v36;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v37, qword_27F22D8D8);
    sub_24F928528();
  }

  v38 = v84;
  v39 = v87;
  v40 = v77;
  (*(v89 + 32))(v87, v17, v92);
  sub_24F928398();
  sub_24F9282B8();
  v86(v28, v85);
  v41 = v78;
  v42 = v79;
  if ((*(v78 + 48))(v40, 1, v79) == 1)
  {
    sub_24E601704(v40, &qword_27F2213B0, &qword_24F965EC0);
    v43 = v83;
    v44 = MEMORY[0x277D84F90];
    *(v83 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = MEMORY[0x277D84F90];
    v45 = sub_24E60986C(v44);
  }

  else
  {
    (*(v41 + 32))(v11, v40, v42);
    (*(v41 + 16))(v76, v11, v42);
    (*(v89 + 16))(v75, v39, v92);
    type metadata accessor for Shelf(0);
    v84 = v11;
    v46 = v41;
    sub_24EA79A4C();
    v47 = sub_24F92B6A8();
    v48 = sub_24EEF0A68(v47);
    v45 = v49;

    (*(v46 + 8))(v84, v42);
    v50 = v83;
    *(v83 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = v48;
    v43 = v50;
  }

  v51 = v88;
  *(v43 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping) = v45;
  sub_24F928398();
  v52 = sub_24F928348();
  v54 = v53;
  v56 = v85;
  v55 = v86;
  v86(v25, v85);
  v57 = (v43 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  *v57 = v52;
  v57[1] = v54;
  sub_24F928398();
  v58 = sub_24F928348();
  v60 = v59;
  v55(v25, v56);
  v61 = (v43 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  *v61 = v58;
  v61[1] = v60;
  sub_24F928398();
  sub_24F928368();
  v55(v25, v56);
  v62 = (v43 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage);
  v63 = v91;
  *v62 = v90;
  v62[1] = v63;
  v64 = v81;
  (*(v80 + 16))(v81, v38, v56);
  v65 = v89;
  v66 = *(v89 + 16);
  v67 = v82;
  v88 = v32;
  v68 = v51;
  v69 = v51;
  v70 = v92;
  v66(v82, v69, v92);
  v71 = BasePage.init(deserializing:using:)(v64, v67);
  v72 = *(v65 + 8);
  v72(v68, v70);
  v55(v38, v56);
  v72(v87, v70);
  return v71;
}

uint64_t TopChartSegment.shortName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);

  return v1;
}

uint64_t TopChartSegment.longName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);

  return v1;
}

uint64_t TopChartSegment.applyShelfUpdates(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();

  sub_24F159E30(v4, a1);
  v6 = v5;

  *(v1 + v3) = v6;
}

unint64_t TopChartSegment.appending(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v95 - v9;
  MEMORY[0x28223BE20](v11);
  v106 = &v95 - v12;
  MEMORY[0x28223BE20](v13);
  v105 = &v95 - v14;
  v102 = sub_24F928818();
  v108 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v104 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v109 = &v95 - v17;
  v18 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for TopChartSegment);
  v96 = v7;
  v101 = v10;
  if (v18 >> 62)
  {
    goto LABEL_50;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v20 = &unk_27F39B000;
  v21 = &unk_27F39B000;
  v22 = MEMORY[0x277D84F90];
  v107 = v4;
  if (v19 != 1)
  {
    goto LABEL_60;
  }

  v23 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v103 = v23;
  v24 = *(a1 + v23);
  v113 = v22;
  v25 = v22;
  v26 = *(v24 + 16);
  v27 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (v26)
  {
    v28 = 0;
    v29 = v24 + 32;
    v99 = v26 - 1;
    v25 = MEMORY[0x277D84F90];
    v100 = v24 + 32;
LABEL_6:
    v30 = v29 + 40 * v28;
    v4 = v28;
    do
    {
      if (v4 >= *(v24 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v19 = sub_24F92C738();
        goto LABEL_3;
      }

      sub_24E65864C(v30, v112);
      if (*(*(a1 + v27) + 16))
      {

        sub_24E76D934(v112);
        if (v31)
        {

          v32 = sub_24E6585F8(v112);
          MEMORY[0x253050F00](v32);
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v28 = v4 + 1;
          sub_24F92B638();
          v25 = v113;
          v33 = v99 == v4;
          v4 = v107;
          v21 = &unk_27F39B000;
          v29 = v100;
          if (v33)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }
      }

      ++v4;
      sub_24E6585F8(v112);
      v30 += 40;
    }

    while (v26 != v4);
    v4 = v107;
    v21 = &unk_27F39B000;
  }

LABEL_18:

  v34 = v25 >> 62 ? sub_24F92C738() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v20 = &unk_27F39B000;
  v22 = MEMORY[0x277D84F90];
  if (v34 != 1)
  {
    goto LABEL_60;
  }

  v35 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for TopChartSegment);
  if (v35 >> 62)
  {
    v52 = v35;
    v36 = sub_24F92C738();
    v35 = v52;
    if (v36)
    {
LABEL_23:
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v37)
      {
        __break(1u);
      }

      else if ((v35 & 0xC000000000000001) == 0)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v38 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v100 = *(v35 + 8 * v38 + 32);

          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_58;
      }

      v100 = MEMORY[0x253052270](v38);
LABEL_28:

      v39 = *(a1 + v103);
      v113 = v22;
      v25 = v22;
      v40 = *(v39 + 16);

      swift_beginAccess();
      if (v40)
      {
        v41 = 0;
        v42 = v39 + 32;
        v99 = v40 - 1;
        v25 = MEMORY[0x277D84F90];
        v103 = v39 + 32;
        do
        {
          v43 = v42 + 40 * v41;
          v4 = v41;
          while (1)
          {
            if (v4 >= *(v39 + 16))
            {
              goto LABEL_49;
            }

            sub_24E65864C(v43, v112);
            if (!*(*(a1 + v27) + 16))
            {
              goto LABEL_31;
            }

            sub_24E76D934(v112);
            if (v44)
            {
              break;
            }

LABEL_31:
            ++v4;
            sub_24E6585F8(v112);
            v43 += 40;
            if (v40 == v4)
            {
              v4 = v107;
              v21 = &unk_27F39B000;
              goto LABEL_42;
            }
          }

          v45 = sub_24E6585F8(v112);
          MEMORY[0x253050F00](v45);
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v41 = v4 + 1;
          sub_24F92B638();
          v25 = v113;
          v33 = v99 == v4;
          v4 = v107;
          v21 = &unk_27F39B000;
          v42 = v103;
        }

        while (!v33);
      }

LABEL_42:

      if (!(v25 >> 62))
      {
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

LABEL_59:

        v20 = &unk_27F39B000;
        v22 = MEMORY[0x277D84F90];
        goto LABEL_60;
      }

LABEL_58:
      result = sub_24F92C738();
      if (result)
      {
LABEL_44:
        if ((v25 & 0xC000000000000001) != 0)
        {
          MEMORY[0x253052270](0, v25);
        }

        else
        {
          if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_24F941C80;
        *v112 = *(v100 + 24);

        sub_24EA0AEC0(v48);
        v49 = *v112;
        v112[0] = 104;
        v50 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v49, v112, 1, 2);

        v51 = v47;
        *(v47 + 32) = v50;

        goto LABEL_72;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_23;
    }
  }

LABEL_60:
  v103 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for TopChartSegment);
  v53 = v20[233];
  swift_beginAccess();
  v54 = *(a1 + v53);
  v111[0] = v22;
  v55 = *(v54 + 16);
  v56 = v22;
  v57 = v21[234];

  swift_beginAccess();
  if (!v55)
  {
    goto LABEL_71;
  }

  v58 = 0;
  v59 = v54 + 32;
  v99 = v55 - 1;
  v56 = MEMORY[0x277D84F90];
  v100 = v54 + 32;
  do
  {
    v60 = v59 + 40 * v58;
    v61 = v58;
    while (1)
    {
      if (v61 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      sub_24E65864C(v60, v112);
      if (*(*(a1 + v57) + 16))
      {
        break;
      }

LABEL_63:
      ++v61;
      sub_24E6585F8(v112);
      v60 += 40;
      if (v55 == v61)
      {
        goto LABEL_71;
      }
    }

    sub_24E76D934(v112);
    if ((v62 & 1) == 0)
    {

      goto LABEL_63;
    }

    v63 = sub_24E6585F8(v112);
    MEMORY[0x253050F00](v63);
    if (*((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v58 = v61 + 1;
    sub_24F92B638();
    v56 = v111[0];
    v59 = v100;
  }

  while (v99 != v61);
LABEL_71:

  *v112 = v103;
  sub_24EA0AE3C(v56);
  v51 = *v112;
LABEL_72:
  v64 = *(v2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName + 8);
  v99 = *(v2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  v65 = *(v2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName + 8);
  v98 = *(v2 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, v112, &qword_27F2129B0, &unk_24F945320);
  v66 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v97 = *(v108 + 16);
  v58 = v102;
  v97(v109, v2 + v66, v102);
  v100 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v67 = sub_24F9285B8();
  v103 = *(v67 - 8);
  v68 = v105;
  (*(v103 + 56))(v105, 1, 1, v67);
  v69 = swift_allocObject();

  v70 = sub_24EEF0A68(v51);
  v72 = v71;

  *(v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = v70;
  *(v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping) = v72;
  v73 = (v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
  *v73 = v99;
  v73[1] = v64;
  v74 = (v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
  *v74 = v98;
  v74[1] = v65;
  *(v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) = 0;
  sub_24E60169C(v112, v69 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0, &unk_24F945320);
  v75 = v104;
  v76 = v69;
  v77 = v97;
  v97(v104, v109, v58);
  v78 = v68;
  v79 = v68;
  v80 = v106;
  sub_24E60169C(v79, v106, &qword_27F2218B0, &unk_24F975980);
  *(v76 + 16) = 0;
  v77(v76 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v75, v58);
  v107 = v76;
  *(v76 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v100;
  v55 = v101;
  sub_24E60169C(v80, v101, &qword_27F2218B0, &unk_24F975980);
  v56 = *(v103 + 48);
  v2 = v67;
  if (v56(v55, 1, v67) == 1)
  {

    sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
    v81 = *(v108 + 8);
    v81(v75, v58);
    sub_24E601704(v78, &qword_27F2218B0, &unk_24F975980);
    v81(v109, v58);
    goto LABEL_80;
  }

  v82 = qword_27F2105F0;

  if (v82 != -1)
  {
LABEL_86:
    swift_once();
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_project_value_buffer(v83, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  v84 = v55;
  sub_24F9285C8();
  v85 = v110;
  v55 = v96;
  v86 = v108;
  if (v110)
  {
  }

  v87 = *(v103 + 8);
  v87(v84, v2);
  if (!v85)
  {
    sub_24E601704(v106, &qword_27F2218B0, &unk_24F975980);
    v93 = *(v86 + 8);
    v93(v104, v58);
    sub_24E601704(v105, &qword_27F2218B0, &unk_24F975980);
    v93(v109, v58);
    v91 = &qword_27F2129B0;
    v92 = &unk_24F945320;
    v90 = v112;
    goto LABEL_82;
  }

  v88 = v106;
  sub_24E60169C(v106, v55, &qword_27F2218B0, &unk_24F975980);
  if (v56(v55, 1, v2) == 1)
  {
    sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
    v89 = *(v86 + 8);
    v89(v104, v58);
    sub_24E601704(v105, &qword_27F2218B0, &unk_24F975980);
    v89(v109, v58);
LABEL_80:
    sub_24E601704(v112, &qword_27F2129B0, &unk_24F945320);
    v90 = v55;
    v91 = &qword_27F2218B0;
    v92 = &unk_24F975980;
LABEL_82:
    sub_24E601704(v90, v91, v92);
  }

  else
  {
    sub_24ECDF110();
    sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
    v94 = *(v86 + 8);
    v94(v104, v58);
    sub_24E601704(v105, &qword_27F2218B0, &unk_24F975980);
    v94(v109, v58);
    sub_24E601704(v112, &qword_27F2129B0, &unk_24F945320);
    v87(v55, v2);
  }

  return v107;
}

void (*TopChartSegment.mergingWith(_:)(uint64_t a1))(char *, char *, uint64_t)
{
  v2 = v1;
  v79 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v72 - v7;
  MEMORY[0x28223BE20](v8);
  v80 = &v72 - v9;
  MEMORY[0x28223BE20](v10);
  v86 = &v72 - v11;
  v81 = sub_24F928818();
  v87 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v84 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v72 - v14;
  v15 = *&v1[OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName + 8];
  v78 = *&v1[OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName];
  v16 = *&v1[OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName + 8];
  v76 = *&v1[OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName];
  v17 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v18 = *&v2[v17];
  v19 = MEMORY[0x277D84F90];
  v90[0] = MEMORY[0x277D84F90];
  v20 = *(v18 + 16);
  v21 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;
  v75 = v16;

  v77 = v15;

  swift_beginAccess();
  if (!v20)
  {
    v82 = v19;
    goto LABEL_14;
  }

  v22 = 0;
  v23 = v18 + 32;
  v72 = v20 - 1;
  v82 = MEMORY[0x277D84F90];
  v74 = v18 + 32;
  do
  {
    v24 = v23 + 40 * v22;
    v25 = v22;
    while (1)
    {
      if (v25 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_24E65864C(v24, v91);
      if (*(*&v2[v21] + 16))
      {
        break;
      }

LABEL_4:
      ++v25;
      sub_24E6585F8(v91);
      v24 += 40;
      if (v20 == v25)
      {
        goto LABEL_14;
      }
    }

    sub_24E76D934(v91);
    if ((v26 & 1) == 0)
    {

      goto LABEL_4;
    }

    v27 = sub_24E6585F8(v91);
    MEMORY[0x253050F00](v27);
    if (*((v90[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v22 = v25 + 1;
    sub_24F92B638();
    v82 = v90[0];
    v23 = v74;
  }

  while (v72 != v25);
LABEL_14:

  v28 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v18 = *(a1 + v28);
  v89[0] = v19;
  v29 = *(v18 + 16);
  v30 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v29)
  {
LABEL_25:

    v91[0] = v82;
    sub_24EA0AE3C(v19);
    v37 = v91[0];
    sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, v91, &qword_27F2129B0, &unk_24F945320);
    v38 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v82 = *(v87 + 16);
    v39 = v85;
    v40 = v81;
    v82(v85, &v2[v38], v81);
    v74 = *&v2[OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent];
    v41 = sub_24F9285B8();
    v42 = *(v41 - 8);
    v43 = v86;
    (*(v42 + 56))(v86, 1, 1, v41);
    v44 = swift_allocObject();
    v45 = sub_24EEF0A68(v37);
    v47 = v46;

    *(v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering) = v45;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping) = v47;
    v48 = (v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
    v49 = v77;
    *v48 = v78;
    v48[1] = v49;
    v50 = (v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
    v51 = v75;
    *v50 = v76;
    v50[1] = v51;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) = 0;
    sub_24E60169C(v91, v44 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0, &unk_24F945320);
    v52 = v84;
    v53 = v39;
    v54 = v82;
    v82(v84, v53, v40);
    v19 = v80;
    sub_24E60169C(v43, v80, &qword_27F2218B0, &unk_24F975980);
    *(v44 + 16) = 0;
    v54(v44 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v52, v40);
    v82 = v44;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v74;
    v55 = v83;
    sub_24E60169C(v19, v83, &qword_27F2218B0, &unk_24F975980);
    v78 = v42;
    v18 = *(v42 + 48);
    v79 = v41;
    if ((v18)(v55, 1, v41) != 1)
    {
      v2 = v40;
      v60 = qword_27F2105F0;

      if (v60 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    sub_24E601704(v19, &qword_27F2218B0, &unk_24F975980);
    v56 = *(v87 + 8);
    v56(v52, v40);
    sub_24E601704(v86, &qword_27F2218B0, &unk_24F975980);
    v56(v85, v40);
    sub_24E601704(v91, &qword_27F2129B0, &unk_24F945320);
    v57 = v55;
    v58 = &qword_27F2218B0;
    v59 = &unk_24F975980;
    goto LABEL_34;
  }

  v31 = 0;
  v32 = v18 + 32;
  v72 = v29 - 1;
  v19 = MEMORY[0x277D84F90];
  v74 = v18 + 32;
LABEL_16:
  v33 = v32 + 40 * v31;
  v34 = v31;
  while (v34 < *(v18 + 16))
  {
    sub_24E65864C(v33, v91);
    if (*(*(a1 + v30) + 16))
    {

      sub_24E76D934(v91);
      if (v35)
      {

        v36 = sub_24E6585F8(v91);
        MEMORY[0x253050F00](v36);
        if (*((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v31 = v34 + 1;
        sub_24F92B638();
        v19 = v89[0];
        v32 = v74;
        if (v72 != v34)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }
    }

    ++v34;
    sub_24E6585F8(v91);
    v33 += 40;
    if (v29 == v34)
    {
      goto LABEL_25;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_28:
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_project_value_buffer(v61, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  sub_24F9285C8();
  v62 = v88;
  v63 = v73;
  v64 = v87;
  v65 = v79;
  v66 = v78;
  if (v88)
  {
  }

  v67 = *(v66 + 8);
  v67(v83, v65);
  if (!v62)
  {
    sub_24E601704(v19, &qword_27F2218B0, &unk_24F975980);
    v69 = *(v64 + 8);
    v69(v84, v2);
    sub_24E601704(v86, &qword_27F2218B0, &unk_24F975980);
    v69(v85, v2);
    v58 = &qword_27F2129B0;
    v59 = &unk_24F945320;
    v57 = v91;
LABEL_34:
    sub_24E601704(v57, v58, v59);
    return v82;
  }

  sub_24E60169C(v19, v63, &qword_27F2218B0, &unk_24F975980);
  if ((v18)(v63, 1, v65) == 1)
  {
    sub_24E601704(v19, &qword_27F2218B0, &unk_24F975980);
    v68 = *(v64 + 8);
    v68(v84, v2);
    sub_24E601704(v86, &qword_27F2218B0, &unk_24F975980);
    v68(v85, v2);
    sub_24E601704(v91, &qword_27F2129B0, &unk_24F945320);
    v57 = v63;
    v58 = &qword_27F2218B0;
    v59 = &unk_24F975980;
    goto LABEL_34;
  }

  sub_24ECDF110();
  sub_24E601704(v19, &qword_27F2218B0, &unk_24F975980);
  v71 = *(v64 + 8);
  v71(v84, v2);
  sub_24E601704(v86, &qword_27F2218B0, &unk_24F975980);
  v71(v85, v2);
  sub_24E601704(v91, &qword_27F2129B0, &unk_24F945320);
  v67(v63, v65);
  return v82;
}

uint64_t sub_24EA7971C()
{

  return sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0, &unk_24F945320);
}

uint64_t TopChartSegment.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t TopChartSegment.__deallocating_deinit()
{
  TopChartSegment.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EA79928@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = TopChartSegment.appending(contentsOf:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24EA79980(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();

  sub_24F159E30(v4, a1);
  v6 = v5;

  *(v1 + v3) = v6;
}

void (*sub_24EA79A0C@<X0>(uint64_t *a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X8>))(char *, char *, uint64_t)
{
  result = TopChartSegment.mergingWith(_:)(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24EA79A4C()
{
  result = qword_27F2265E0;
  if (!qword_27F2265E0)
  {
    type metadata accessor for Shelf(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2265E0);
  }

  return result;
}

uint64_t type metadata accessor for TopChartSegment(uint64_t a1)
{
  result = qword_27F226658;
  if (!qword_27F226658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FinanceType.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = *v1;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      sub_24F92B0D8();
      sub_24F91F488();

      v24 = sub_24F91F4A8();
      v25 = *(v24 - 8);
      result = (*(v25 + 48))(v11, 1, v24);
      if (result != 1)
      {
        return (*(v25 + 32))(a1, v11, v24);
      }

      __break(1u);
    }

    else
    {
      if (v18 != 3)
      {
        sub_24F92B0D8();
        sub_24F91F488();

        v26 = sub_24F91F4A8();
        v27 = *(v26 - 8);
        result = (*(v27 + 48))(v5, 1, v26);
        if (result != 1)
        {
          return (*(v27 + 32))(a1, v5, v26);
        }

        goto LABEL_19;
      }

      sub_24F92B0D8();
      sub_24F91F488();

      v19 = sub_24F91F4A8();
      v20 = *(v19 - 8);
      result = (*(v20 + 48))(v8, 1, v19);
      if (result != 1)
      {
        return (*(v20 + 32))(a1, v8, v19);
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!*v1)
  {
    sub_24F92B0D8();
    sub_24F91F488();

    v22 = sub_24F91F4A8();
    v23 = *(v22 - 8);
    result = (*(v23 + 48))(v17, 1, v22);
    if (result != 1)
    {
      return (*(v23 + 32))(a1, v17, v22);
    }

    goto LABEL_18;
  }

  sub_24F92B0D8();
  sub_24F91F488();

  v28 = sub_24F91F4A8();
  v29 = *(v28 - 8);
  result = (*(v29 + 48))(v14, 1, v28);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  return (*(v29 + 32))(a1, v14, v28);
}

GameStoreKit::FinanceType_optional __swiftcall FinanceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FinanceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 1952868711;
  v4 = 0x6D6F74737563;
  if (v1 != 3)
  {
    v4 = 0x79746972616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6565646572;
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

unint64_t sub_24EA7A0E4()
{
  result = qword_27F226668;
  if (!qword_27F226668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226668);
  }

  return result;
}

uint64_t sub_24EA7A138()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7A20C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EA7A2CC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EA7A3A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E756F636361;
  v5 = 0xE400000000000000;
  v6 = 1952868711;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (v2 != 3)
  {
    v8 = 0x79746972616863;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D6565646572;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

GameStoreKit::TertiaryIconPlacement_optional __swiftcall TertiaryIconPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TertiaryIconPlacement.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_24EA7A4E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E696C69617274;
  }

  else
  {
    v3 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E696C69617274;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

unint64_t sub_24EA7A594()
{
  result = qword_27F226670[0];
  if (!qword_27F226670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F226670);
  }

  return result;
}

uint64_t sub_24EA7A5E8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7A66C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EA7A6DC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7A75C@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24EA7A7BC(uint64_t *a1@<X8>)
{
  v2 = 0x676E696461656CLL;
  if (*v1)
  {
    v2 = 0x676E696C69617274;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24EA7A854()
{

  return swift_deallocClassInstance();
}

char *AdInteractionAction.__allocating_init(title:adActionMetrics:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *(a3 + 48);
  v14 = *(a3 + 50);
  v15 = &v12[OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics];
  v16 = *(a3 + 16);
  *v15 = *a3;
  *(v15 + 1) = v16;
  *(v15 + 2) = *(a3 + 32);
  v15[50] = v14;
  *(v15 + 24) = v13;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v12[v17], a4, v18);
  v20 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(&v12[v20], 1, 1, v21);
  v22 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v39, &v36);
  if (*(&v37 + 1))
  {
    v24 = v37;
    *v23 = v36;
    *(v23 + 1) = v24;
    *(v23 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v26 = v8;
    v27 = a4;
    v28 = a1;
    v29 = a2;
    v30 = v25;
    v31 = v9;
    v33 = v32;
    (*(v31 + 8))(v11, v26);
    v35[1] = v30;
    v35[2] = v33;
    a2 = v29;
    a1 = v28;
    a4 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v19 + 8))(a4, v18);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  return v12;
}

void *AdInteractionAction.init(title:adActionMetrics:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;
  v32 = sub_24F91F6B8();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_24F928AD8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v15) = *(a3 + 48);
  v17 = *(a3 + 50);
  v18 = v4 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics;
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  *(v18 + 2) = *(a3 + 32);
  v18[50] = v17;
  *(v18 + 24) = v15;
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  (*(v14 + 16))(v16, a4, v13);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v43, &v37);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v31 = v12;
    v23 = a4;
    v25 = v24;
    (*(v7 + 8))(v9, v32);
    v35 = v22;
    v36 = v25;
    a4 = v23;
    v12 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v14 + 8))(a4, v13);
  sub_24E601704(v43, &qword_27F235830, &qword_24F93B8C0);
  v26 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v26 + 4) = v42;
  v27 = v41;
  *v26 = v40;
  *(v26 + 1) = v27;
  sub_24E65E0D4(v12, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v28 = v34;
  v4[2] = v33;
  v4[3] = v28;
  v4[4] = 0;
  v4[5] = 0;
  (*(v14 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16, v13);
  return v4;
}

uint64_t AdInteractionAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = v3;
  v40 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v36 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v42 = sub_24F928388();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v44 = a1;
  sub_24F928398();
  v19 = *(v7 + 16);
  v55 = a2;
  v19(v13, a2, v6);
  v20 = v41;
  AdvertActionMetrics.init(deserializing:using:)(v18, v13, v53);
  if (v20)
  {

    v21 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v22 = 0x6E6F697463416461;
    v22[1] = 0xEF7363697274654DLL;
    v22[2] = v40;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    (*(v7 + 8))(v55, v6);
    (*(v45 + 8))(v44, v42);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v7;
    v51[0] = v53[0];
    v51[1] = v53[1];
    *v52 = v54[0];
    *&v52[15] = *(v54 + 15);
    v40 = 0;
    sub_24EA7B7CC(v51);
    v23 = v44;
    sub_24F928398();
    v24 = v6;
    v25 = v55;
    v19(v37, v55, v24);
    sub_24EA7B820();
    sub_24F929548();
    v26 = v49;
    v27 = v50;
    v21 = v43;
    v28 = v43 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics;
    v29 = v47;
    *v28 = v46;
    *(v28 + 1) = v29;
    *(v28 + 2) = v48;
    v28[50] = v27;
    *(v28 + 24) = v26;
    v30 = v38;
    v31 = v42;
    (*(v45 + 16))(v38, v23, v42);
    v32 = v39;
    v19(v39, v25, v24);
    v33 = v40;
    v34 = Action.init(deserializing:using:)(v30, v32);
    if (!v33)
    {
      v21 = v34;
    }

    v41[1](v55, v24);
    (*(v45 + 8))(v23, v31);
  }

  return v21;
}

double AdInteractionAction.adActionMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 8);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 16);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 24);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 32);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 40);
  v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 50);
  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 50) = v8;
  *(a1 + 48) = v9;
  return sub_24E68FE2C(v2, v3, v4, v5, v6, v7);
}

uint64_t AdInteractionAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  sub_24E687F7C(*(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 40));
  return v0;
}

uint64_t AdInteractionAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  sub_24E687F7C(*(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdInteractionAction_adActionMetrics + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_24EA7B820()
{
  result = qword_27F2266F8;
  if (!qword_27F2266F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2266F8);
  }

  return result;
}

uint64_t type metadata accessor for AdInteractionAction(uint64_t a1)
{
  result = qword_27F226700;
  if (!qword_27F226700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::ProductMedia::DescriptionPlacement_optional __swiftcall ProductMedia.DescriptionPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ProductMedia.DescriptionPlacement.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_24EA7B9DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6F74746F62;
  }

  else
  {
    v3 = 7368564;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6F74746F62;
  }

  else
  {
    v5 = 7368564;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EA7BA78()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7BAF0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EA7BB54()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7BBC8@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24EA7BC28(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 0x6D6F74746F62;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ProductMedia.platformDescription.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ProductMedia.allPlatformsDescription.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ProductMedia.hasPortraitPhoneMedia.getter()
{
  if ((*(*(v0 + 24) + 16) & 0xFD) != 0)
  {
    return 0;
  }

  else
  {
    return ProductMedia.hasPortraitMedia.getter();
  }
}

uint64_t ProductMedia.hasPortraitMedia.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_24F92C738();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x253052270](v3, v1);
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_15:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v6 = *(v1 + 8 * v3 + 32);

          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_15;
          }
        }

        v8 = *(v6 + 16);
        if (v8)
        {

          v5 = *(v8 + 32);
          v4 = *(v8 + 40);
        }

        else
        {
          v9 = *(v6 + 24);

          if (!v9)
          {
            goto LABEL_6;
          }

          v10 = *(v9 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);

          v5 = *(v10 + 32);
          v4 = *(v10 + 40);
        }

        if (v5 <= v4)
        {
          return 1;
        }

LABEL_6:
        ++v3;
      }

      while (v7 != v2);
    }
  }

  return 0;
}

uint64_t ProductMedia.screenshotOnlyItems.getter()
{
  v1 = *(v0 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_24F92C738();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x253052270](i, v1);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_14:
            __break(1u);
            return v7;
          }
        }

        else
        {
          if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v4 = *(v1 + 8 * i + 32);

          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_14;
          }
        }

        if (*(v4 + 24) || !*(v4 + 16))
        {
        }

        else
        {
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
        }

        if (v5 == v2)
        {
          return v7;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t ProductMedia.__allocating_init(id:items:platform:allPlatforms:platformDescription:allPlatformsDescription:allPlatformsDescriptionPlacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v28 = a7;
  v29 = a8;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = *a9;
  sub_24E60169C(a1, &v35, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v36 + 1))
  {
    v18 = v36;
    *(v16 + 80) = v35;
    *(v16 + 96) = v18;
    *(v16 + 112) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v27 = a5;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v33 = v19;
    v34 = v21;
    a5 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v22 = v31;
  *(v16 + 16) = v30;
  *(v16 + 24) = v22;
  *(v16 + 32) = v32;
  *(v16 + 40) = a5;
  v24 = v28;
  v23 = v29;
  *(v16 + 48) = a6;
  *(v16 + 56) = v24;
  *(v16 + 64) = v23;
  *(v16 + 72) = v17;
  return v16;
}

uint64_t ProductMedia.init(id:items:platform:allPlatforms:platformDescription:allPlatformsDescription:allPlatformsDescriptionPlacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v10 = v9;
  v29 = a7;
  v30 = a8;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a9;
  sub_24E60169C(a1, &v36, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v37 + 1))
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v28 = a5;
    v21 = v20;
    (*(v15 + 8))(v17, v14);
    v34 = v19;
    v35 = v21;
    a5 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v22 = v40;
  *(v10 + 80) = v39;
  *(v10 + 96) = v22;
  *(v10 + 112) = v41;
  v23 = v32;
  *(v10 + 16) = v31;
  *(v10 + 24) = v23;
  *(v10 + 32) = v33;
  *(v10 + 40) = a5;
  v25 = v29;
  v24 = v30;
  *(v10 + 48) = a6;
  *(v10 + 56) = v25;
  *(v10 + 64) = v24;
  *(v10 + 72) = v18;
  return v10;
}

char **ProductMedia.__allocating_init(deserializing:using:)(uint64_t a1, char *a2)
{
  v105 = a2;
  v90 = sub_24F91F6B8();
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = (&v85 - v5);
  v97 = sub_24F92AC28();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v92 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v94 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - v11;
  v104 = sub_24F928388();
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v89 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v85 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v85 - v17;
  MEMORY[0x28223BE20](v19);
  v93 = &v85 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  type metadata accessor for MediaPlatform();
  v102 = a1;
  sub_24F928398();
  v100 = v8;
  v27 = *(v8 + 16);
  v103 = v7;
  v27(v12, v105, v7);
  v28 = v99;
  v29 = MediaPlatform.__allocating_init(deserializing:using:)(v26, v12);
  if (v28)
  {
    (*(v101 + 8))(v102, v104);
LABEL_9:
    v40 = v105;
LABEL_10:
    (*(v100 + 8))(v40, v103);
    return v27;
  }

  v86 = v18;
  v99 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225260, &qword_24F974FF0);
  v30 = v102;
  sub_24F928398();
  v27(v94, v105, v103);
  sub_24EA1C42C();
  v85 = v23;
  sub_24F929548();
  if (v111[0])
  {
    v31 = v111[0];
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v32 = v93;
  sub_24F928398();
  v27 = v98;
  sub_24F9282B8();
  v33 = v101 + 8;
  v34 = *(v101 + 8);
  v35 = v104;
  (v34)(v32, v104);
  if ((*(v96 + 6))(v27, 1, v97) == 1)
  {

    sub_24E601704(v98, &qword_27F2213B0, &qword_24F965EC0);
    v36 = sub_24F92AC38();
    sub_24EA7D71C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v37 = 0x736D657469;
    v37[1] = 0xE500000000000000;
    v37[2] = v95;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();

    v38 = v30;
    v39 = v35;
LABEL_8:
    (v34)(v38, v39);
    goto LABEL_9;
  }

  v94 = v31;
  v42 = v96;
  v43 = v92;
  v44 = v97;
  v45 = (*(v96 + 4))(v92, v98, v97);
  v98 = v34;
  MEMORY[0x28223BE20](v45);
  v46 = v105;
  *(&v85 - 2) = v105;
  type metadata accessor for ProductMediaItem();
  v93 = sub_24F92ABB8();
  v47 = v98;
  v42[1](v43, v44);
  v48 = v86;
  sub_24F928398();
  v97 = sub_24F928348();
  v27 = v49;
  v50 = v48;
  v51 = v47;
  (v47)(v50, v104);
  if (!v27)
  {

    v65 = sub_24F92AC38();
    sub_24EA7D71C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v66 = 0xD000000000000013;
    v66[1] = 0x800000024FA4DCE0;
    v66[2] = v95;
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D22530], v65);
    swift_willThrow();

    (v51)(v102, v104);
    v40 = v46;
    goto LABEL_10;
  }

  v96 = v27;
  v34 = v47;
  v52 = v104;
  v27 = 0x800000024FA4DD00;
  v53 = v91;
  v54 = v102;
  sub_24F928398();
  v92 = sub_24F928348();
  v55 = v54;
  v57 = v56;
  (v34)(v53, v52);
  if (!v57)
  {

    v67 = sub_24F92AC38();
    sub_24EA7D71C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v68 = 0xD000000000000017;
    v68[1] = 0x800000024FA4DD00;
    v68[2] = v95;
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x277D22530], v67);
    swift_willThrow();

    v38 = v55;
    v39 = v52;
    goto LABEL_8;
  }

  v101 = v33;
  v58 = v89;
  sub_24F928398();
  v59 = sub_24F928348();
  if (v60)
  {
    *&v108 = v59;
    *(&v108 + 1) = v60;
    sub_24F92C7F8();
    v61 = v104;
    v62 = v98;
    (v98)(v58, v104);
    v63 = v103;
    v64 = v90;
  }

  else
  {
    v69 = v87;
    sub_24F91F6A8();
    v70 = sub_24F91F668();
    v72 = v71;
    v64 = v90;
    (*(v88 + 8))(v69, v90);
    *&v108 = v70;
    *(&v108 + 1) = v72;
    sub_24F92C7F8();
    v61 = v104;
    v62 = v98;
    (v98)(v58, v104);
    v63 = v103;
  }

  v73 = v85;
  sub_24F928398();
  sub_24EA1C4E0();
  sub_24F928208();
  (v62)(v73, v61);
  v74 = v112;
  v27 = swift_allocObject();
  sub_24E60169C(v111, &v108, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v109 + 1))
  {
    v75 = v109;
    *(v27 + 5) = v108;
    *(v27 + 6) = v75;
    *(v27 + 14) = v110;
  }

  else
  {
    v76 = v87;
    sub_24F91F6A8();
    v77 = sub_24F91F668();
    v79 = v78;
    (*(v88 + 8))(v76, v64);
    v106 = v77;
    v107 = v79;
    v63 = v103;
    sub_24F92C7F8();
    sub_24E601704(&v108, &qword_27F235830, &qword_24F93B8C0);
  }

  v80 = v93;
  (v98)(v102, v104);
  sub_24E601704(v111, &qword_27F235830, &qword_24F93B8C0);
  v81 = v99;
  v82 = v100;
  *(v27 + 2) = v80;
  *(v27 + 3) = v81;
  v83 = v97;
  *(v27 + 4) = v94;
  *(v27 + 5) = v83;
  v84 = v92;
  *(v27 + 6) = v96;
  *(v27 + 7) = v84;
  *(v27 + 8) = v57;
  *(v27 + 72) = v74;
  (*(v82 + 8))(v105, v63);
  return v27;
}

uint64_t sub_24EA7CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a2;
  v32 = a1;
  v35 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  v31 = sub_24F92AC38();
  v39 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductMediaItem();
  v16 = v12;
  v17 = v33;
  (*(v13 + 16))(v15, v32, v16);
  (*(v9 + 16))(v11, v17, v8);
  v18 = v34;
  result = ProductMediaItem.__allocating_init(deserializing:using:)(v15, v11);
  if (v18)
  {
    v20 = type metadata accessor for ProductMedia();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24F93DE60;
    *(v21 + 32) = v18;
    *v7 = 0x736D657469;
    v7[1] = 0xE500000000000000;
    v7[2] = v20;
    v7[3] = v21;
    v22 = v31;
    (*(v39 + 104))(v7, *MEMORY[0x277D22540], v31);
    v23 = v18;
    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
    sub_24F9285D8();
    (*(v29 + 8))(v5, v30);
    sub_24E60169C(v38, v36, &qword_27F226730, &unk_24F984CC0);
    if (v37)
    {
      __swift_project_boxed_opaque_existential_1(v36, v37);
      sub_24EA7D71C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      v24 = v22;
      v25 = swift_allocError();
      v26 = v39;
      (*(v39 + 16))(v27, v7, v24);
      sub_24F929EC8();

      sub_24E601704(v38, &qword_27F226730, &unk_24F984CC0);
      (*(v26 + 8))(v7, v24);

      result = __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {

      sub_24E601704(v38, &qword_27F226730, &unk_24F984CC0);
      (*(v39 + 8))(v7, v22);
      result = sub_24E601704(v36, &qword_27F226730, &unk_24F984CC0);
    }

    *v35 = 0;
  }

  else
  {
    *v35 = result;
  }

  return result;
}

uint64_t ProductMedia.deinit()
{

  sub_24E6585F8(v0 + 80);
  return v0;
}

uint64_t ProductMedia.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);

  return swift_deallocClassInstance();
}

char **sub_24EA7D5B0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char ***a3@<X8>)
{
  result = ProductMedia.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _s12GameStoreKit12ProductMediaC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if ((sub_24F0CD880(*(v4 + 16), *(v5 + 16)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 56);
  if (*(v4 + 56))
  {
    if (!*(v5 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 48) != *(v5 + 48))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);

  return sub_24EA16D54(v8, v9);
}

unint64_t sub_24EA7D680()
{
  result = qword_27F226710;
  if (!qword_27F226710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226710);
  }

  return result;
}

uint64_t sub_24EA7D71C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FramedMediaCaptionViewLayout.init(metrics:captionTextView:ordinalTextView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 208);
  *(a4 + 272) = *(a1 + 192);
  *(a4 + 288) = v6;
  *(a4 + 304) = *(a1 + 224);
  v7 = *(a1 + 144);
  *(a4 + 208) = *(a1 + 128);
  *(a4 + 224) = v7;
  v8 = *(a1 + 176);
  *(a4 + 240) = *(a1 + 160);
  *(a4 + 256) = v8;
  v9 = *(a1 + 80);
  *(a4 + 144) = *(a1 + 64);
  *(a4 + 160) = v9;
  v10 = *(a1 + 112);
  *(a4 + 176) = *(a1 + 96);
  *(a4 + 192) = v10;
  v11 = *(a1 + 16);
  *(a4 + 80) = *a1;
  *(a4 + 96) = v11;
  v12 = *(a1 + 48);
  *(a4 + 112) = *(a1 + 32);
  *(a4 + 128) = v12;
  sub_24E612C80(a2, a4 + 40);

  return sub_24E612C80(a3, a4);
}

uint64_t FramedMediaCaptionViewLayout.Metrics.init(topSpace:bottomSpace:ordinalAdjustmentSpace:captionMargin:ordinalVerticalOffset:ordinalMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  sub_24E612C80(a1, a6);
  sub_24E612C80(a2, (a6 + 5));
  sub_24E612C80(a3, (a6 + 10));
  a6[15] = a7;
  a6[16] = a8;
  a6[17] = a9;
  a6[18] = a10;
  sub_24E612C80(a5, (a6 + 19));

  return sub_24E612C80(a4, (a6 + 24));
}

double FramedMediaCaptionViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3 + 5, *(v3 + 8));
  if (!sub_24F922438())
  {
    __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
    if (!sub_24F922438())
    {
      return *MEMORY[0x277D22A78];
    }
  }

  __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
  v11 = 0.0;
  if (sub_24F9221E8())
  {
    __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
    sub_24F922298();
    v13 = v12;
    v14 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1(v4 + 29, *(v4 + 32));
    sub_24E8ED7D8(v14);
    v15 = sub_24F9223A8();
    v16 = *(v8 + 8);
    v16(v10, v7);
    if (v13 + v15 <= a2)
    {
      v11 = v13 + v15;
    }

    else
    {
      v11 = a2;
    }

    v17 = *(v4 + 37);
    __swift_project_boxed_opaque_existential_1(v4 + 34, v17);
    sub_24E8ED7D8(v17);
    v18 = sub_24F9223A8();
    (v16)(v10, v7, v18);
  }

  v19 = v4[26];
  v20 = v4[28];
  v21 = a2 - v19 - v20 - v11;
  __swift_project_boxed_opaque_existential_1(v4 + 5, *(v4 + 8));
  sub_24F922288();
  v25[0] = v22;
  *&v25[1] = a3;
  if (v20 + v19 + v11 + v21 <= a2)
  {
    v23 = v20 + v19 + v11 + v21;
  }

  else
  {
    v23 = a2;
  }

  __swift_project_boxed_opaque_existential_1(v4 + 10, *(v4 + 13));
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v4 + 15, *(v4 + 18));
  sub_24F922398();
  return v23;
}

uint64_t FramedMediaCaptionViewLayout.placeChildren(relativeTo:in:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v72 = a2;
  v73 = a3;
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[25];
  v16 = v5[26];
  v17 = v5[27];
  v18 = v5[28];
  v19 = [a1 traitCollection];
  v20 = sub_24F92BF88();

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = v16;
  }

  v74 = a4;
  v69 = a4 - v16 - v18;
  v67 = a5 - v15 - v17;
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 3));
  v22 = sub_24F9221E8();
  v70 = 0.0;
  v68 = v21;
  v23 = v21;
  v24 = v15;
  v25 = 0.0;
  v26 = 0.0;
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(v6, *(v6 + 3));
    v27 = v69;
    v28 = v67;
    sub_24F922288();
    v30 = v29;
    v32 = v31;
    __swift_project_boxed_opaque_existential_1(v6 + 10, *(v6 + 13));
    sub_24F9223C8();
    v34 = v33;
    v35 = *(v6 + 37);
    __swift_project_boxed_opaque_existential_1(v6 + 34, v35);
    sub_24E8ED7D8(v35);
    v36 = sub_24F9223A8();
    (*(v11 + 8))(v14, v10);
    v75.origin.x = v68;
    v75.origin.y = v15;
    v75.size.width = v27;
    v75.size.height = v28;
    v23 = floor(CGRectGetMinX(v75));
    v24 = floor(v34 + v36);
    v25 = ceil(v30);
    v26 = ceil(v32);
  }

  v37 = v15;
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 3));
  v66 = a5;
  sub_24F92C1D8();
  sub_24F922228();
  v76.origin.x = v23;
  v76.size.height = v26;
  v38 = v24;
  v76.origin.y = v24;
  v39 = v25;
  v76.size.width = v25;
  height = v76.size.height;
  if (!CGRectIsEmpty(v76))
  {
    v40 = *(v6 + 32);
    __swift_project_boxed_opaque_existential_1(v6 + 29, v40);
    sub_24E8ED7D8(v40);
    v70 = sub_24F9223A8();
    (*(v11 + 8))(v14, v10);
  }

  v41 = v68;
  v42 = v69;
  v77.origin.x = v68;
  v77.origin.y = v37;
  v77.size.width = v69;
  v43 = v67;
  v77.size.height = v67;
  CGRectGetWidth(v77);
  v78.origin.x = v23;
  v78.origin.y = v38;
  v78.size.width = v39;
  v78.size.height = height;
  CGRectGetWidth(v78);
  v64 = v23;
  v44 = v70;
  __swift_project_boxed_opaque_existential_1(v6 + 5, *(v6 + 8));
  v79.origin.x = v41;
  v79.origin.y = v37;
  v79.size.width = v42;
  v79.size.height = v43;
  CGRectGetHeight(v79);
  sub_24F922288();
  v46 = v45;
  v48 = v47;
  v68 = v50;
  v69 = v49;
  __swift_project_boxed_opaque_existential_1(v6 + 10, *(v6 + 13));
  v51 = v46;
  v65 = v46;
  v52 = v48;
  v67 = v48;
  sub_24F9223C8();
  v54 = v53;
  v80.origin.x = v64;
  v80.origin.y = v38;
  v80.size.width = v39;
  v80.size.height = height;
  v55 = v44 + floor(CGRectGetMaxX(v80));
  v56 = ceil(v51);
  v57 = ceil(v52);
  __swift_project_boxed_opaque_existential_1(v6 + 5, *(v6 + 8));
  v59 = v72;
  v58 = v73;
  v60 = v74;
  v61 = v66;
  sub_24F92C1D8();
  sub_24F922228();
  v81.origin.x = v59;
  v81.origin.y = v58;
  v81.size.width = v60;
  v81.size.height = v61;
  CGRectGetWidth(v81);
  v82.origin.x = v55;
  v82.origin.y = floor(v54);
  v82.size.width = v56;
  v82.size.height = v57;
  CGRectGetMaxY(v82);
  __swift_project_boxed_opaque_existential_1(v6 + 15, *(v6 + 18));
  sub_24F922398();
  return sub_24F922128();
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_24EA7E370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_24EA7E3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id UIImageView.symbolConfiguration.getter()
{
  v1 = [v0 preferredSymbolConfiguration];

  return v1;
}

void UIImageView.symbolConfiguration.setter(void *a1)
{
  [v1 setPreferredSymbolConfiguration_];
}

void (*UIImageView.symbolConfiguration.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 preferredSymbolConfiguration];
  return sub_24EA7E51C;
}

void sub_24EA7E51C(id *a1)
{
  v1 = *a1;
  [a1[1] setPreferredSymbolConfiguration_];
}

void sub_24EA7E57C()
{
  v1 = [v0 layer];
  LayerVisualEffect.apply(to:)(v1);
}

id sub_24EA7E5F0()
{
  v1 = [*v0 image];

  return v1;
}

void sub_24EA7E628(void *a1)
{
  [*v1 setImage_];
}

void (*sub_24EA7E670(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 image];
  return sub_24EA7E6CC;
}

void sub_24EA7E6CC(id *a1)
{
  v1 = *a1;
  [a1[1] setImage_];
}

id (*sub_24EA7E734(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 alpha];
  *a1 = v4;
  return sub_24EA7E788;
}

void sub_24EA7E7B8()
{
  v1 = [*v0 layer];
  LayerVisualEffect.apply(to:)(v1);
}

id sub_24EA7E830()
{
  v1 = [*v0 preferredSymbolConfiguration];

  return v1;
}

void sub_24EA7E868(void *a1)
{
  [*v1 setPreferredSymbolConfiguration_];
}

void (*sub_24EA7E8B0(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 preferredSymbolConfiguration];
  return sub_24EA7E51C;
}

id sub_24EA7E90C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredSymbolConfiguration];
  *a2 = result;
  return result;
}

uint64_t ShelfFooterStyle.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X8>)
{
  v67 = a2;
  v66 = a3;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v70 = a1;
  sub_24F928398();
  v16 = sub_24F928348();
  v18 = v17;
  v19 = *(v5 + 8);
  v71 = v4;
  v69 = v5 + 8;
  v19(v15, v4);
  if (!v18)
  {
    v66 = v19;
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24F93DE60;
    *(v26 + 32) = swift_allocError();
    *v27 = 1701869940;
    v27[1] = 0xE400000000000000;
    v27[2] = &type metadata for ShelfFooterStyle;
    v28 = *(*(v23 - 8) + 104);
    v28(v27, *MEMORY[0x277D22530], v23);
    *v25 = &type metadata for ShelfFooterStyle;
    v25[1] = v26;
    v28(v25, *MEMORY[0x277D22538], v23);
LABEL_15:
    swift_willThrow();
    v47 = sub_24F9285B8();
    (*(*(v47 - 8) + 8))(v67, v47);
    return v66(v70, v71);
  }

  if (v16 == 0x73656D6167 && v18 == 0xE500000000000000)
  {

LABEL_10:
    sub_24F928398();
    sub_24F928348();
    v30 = v29;
    v19(v12, v71);
    if (!v30)
    {
LABEL_14:
      v66 = v19;
      v38 = sub_24F92AC38();
      sub_24E8F2E6C();
      v68 = swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_24F9479A0;
      *(v41 + 32) = swift_allocError();
      *v42 = 0x4449656C646E7562;
      v42[1] = 0xE800000000000000;
      v42[2] = &type metadata for ShelfFooterStyle;
      v43 = *MEMORY[0x277D22530];
      v44 = *(*(v38 - 8) + 104);
      v44(v42, v43, v38);
      *(v41 + 40) = swift_allocError();
      *v45 = 0x6874646977;
      v45[1] = 0xE500000000000000;
      v45[2] = &type metadata for ShelfFooterStyle;
      v44(v45, v43, v38);
      *(v41 + 48) = swift_allocError();
      *v46 = 0x746867696568;
      v46[1] = 0xE600000000000000;
      v46[2] = &type metadata for ShelfFooterStyle;
      v44(v46, v43, v38);
      *v40 = &type metadata for ShelfFooterStyle;
      v40[1] = v41;
      v44(v40, *MEMORY[0x277D22538], v38);
      goto LABEL_15;
    }

    sub_24F928398();
    *&v31 = COERCE_DOUBLE(sub_24F928308());
    v33 = v32;
    v19(v9, v71);
    if (v33 & 1) != 0 || (v34 = v65, sub_24F928398(), *&v35 = COERCE_DOUBLE(sub_24F928308()), v37 = v36, v19(v34, v71), (v37))
    {

      goto LABEL_14;
    }

    v49 = *&v31;
    v50 = *&v35;
    v51 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v52 = sub_24F92B098();

    v53 = [v51 initWithBundleIdentifier_];

    v54 = [objc_opt_self() mainScreen];
    [v54 scale];
    v56 = v55;

    v57 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v49 scale:{v50, v56}];
    v58 = [v53 imageForDescriptor_];
    if (v58)
    {
      v59 = v58;
      if ([v58 placeholder])
      {
        v22 = [v53 prepareImageForDescriptor_];

        v59 = v22;
        if (!v22)
        {

          goto LABEL_25;
        }
      }

      v60 = [v59 CGImage];
      if (v60)
      {
        v61 = v60;
        [v59 scale];
        v22 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v61 scale:0 orientation:v62];

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
    }

    v22 = 0;
    goto LABEL_26;
  }

  v21 = sub_24F92CE08();

  if (v21)
  {
    goto LABEL_10;
  }

  v22 = 0;
LABEL_26:
  v63 = sub_24F9285B8();
  (*(*(v63 - 8) + 8))(v67, v63);
  result = v19(v70, v71);
  *v66 = v22;
  return result;
}

uint64_t sub_24EA7F210(uint64_t *a1, unsigned int a2)
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

uint64_t sub_24EA7F260(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24EA7F2B4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

GameStoreKit::ProductPageTheme_optional __swiftcall ProductPageTheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ProductPageTheme.rawValue.getter()
{
  v1 = 0x7265666E69;
  v2 = 0x65676E61726FLL;
  if (*v0 != 2)
  {
    v2 = 0x6574696877;
  }

  if (*v0)
  {
    v1 = 1702194274;
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

uint64_t sub_24EA7F3AC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7F45C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EA7F4F8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EA7F5B0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7265666E69;
  v4 = 0xE600000000000000;
  v5 = 0x65676E61726FLL;
  if (*v1 != 2)
  {
    v5 = 0x6574696877;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1702194274;
    v2 = 0xE400000000000000;
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

uint64_t ProductPageExpandedOfferDetails.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductPageExpandedOfferDetails.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *ProductPageExpandedOfferDetails.__allocating_init(title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ProductPageExpandedOfferDetails.init(title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t ProductPageExpandedOfferDetails.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductPageExpandedOfferDetails.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ProductPageExpandedOfferDetails.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v28 = a2;
  v26 = *v2;
  v27 = v3;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v16(v12, v6);
  if (v15)
  {
    v4[2] = v13;
    v4[3] = v15;
    sub_24F928398();
    v17 = sub_24F928348();
    v19 = v18;
    v20 = sub_24F9285B8();
    (*(*(v20 - 8) + 8))(v28, v20);
    v16(a1, v6);
    v16(v9, v6);
    v4[4] = v17;
    v4[5] = v19;
  }

  else
  {
    v21 = sub_24F92AC38();
    sub_24EA849AC(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v22 = 0x656C746974;
    v23 = v26;
    v22[1] = 0xE500000000000000;
    v22[2] = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    v24 = sub_24F9285B8();
    (*(*(v24 - 8) + 8))(v28, v24);
    v16(a1, v6);
    type metadata accessor for ProductPageExpandedOfferDetails();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t ProductPageExpandedOfferDetails.deinit()
{

  return v0;
}

uint64_t ProductPageExpandedOfferDetails.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24EA7FAE8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductPageExpandedOfferDetails();
  v7 = swift_allocObject();
  result = ProductPageExpandedOfferDetails.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EA7FBE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_24EA7FC4C()
{
  swift_beginAccess();

  return result;
}

void *ProductPage.pageTopBackgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor);
  v2 = v1;
  return v1;
}

void *ProductPage.pageBottomBackgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor);
  v2 = v1;
  return v1;
}

void ProductPage.askToBuy.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 40);
  v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 48);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_24E901B80(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t ProductPage.mediaSectionTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);

  return v1;
}

double sub_24EA7FD90@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 240);
  if (v2)
  {
    sub_24E60169C(v2 + 144, a1, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t ProductPage.regularPriceFormatted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);

  return v1;
}

uint64_t ProductPage.updateBuyParams.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);

  return v1;
}

uint64_t sub_24EA7FF10(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_24E76D644(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_24EA7FFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  *(v3 + v7) = 0x8000000000000000;
  sub_24E81E6DC(a3, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + v7) = v10;
  return swift_endAccess();
}

void sub_24EA80068()
{
  v11 = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_24ED7E294(&v10, *(*(*(v2 + 56) + ((v8 << 9) | (8 * v9))) + 16));
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t ProductPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductPage.init(deserializing:using:)(char *a1, char *a2)
{
  v3 = v2;
  v246 = a2;
  v255 = a1;
  v207 = sub_24F928818();
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v235 = v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v5 - 8);
  v238 = v204 - v6;
  v240 = sub_24F928E68();
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v217 = v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v218 = v204 - v9;
  v10 = sub_24F9285B8();
  v245 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v211 = v204 - v14;
  MEMORY[0x28223BE20](v15);
  v209 = v204 - v16;
  MEMORY[0x28223BE20](v17);
  v234 = v204 - v18;
  MEMORY[0x28223BE20](v19);
  v244 = v204 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v204 - v22;
  MEMORY[0x28223BE20](v24);
  v252 = v204 - v25;
  v26 = sub_24F928388();
  v248 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v214 = v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v213 = v204 - v30;
  MEMORY[0x28223BE20](v31);
  v212 = v204 - v32;
  MEMORY[0x28223BE20](v33);
  v210 = v204 - v34;
  MEMORY[0x28223BE20](v35);
  v208 = v204 - v36;
  MEMORY[0x28223BE20](v37);
  v205 = v204 - v38;
  MEMORY[0x28223BE20](v39);
  v233 = v204 - v40;
  MEMORY[0x28223BE20](v41);
  v237 = v204 - v42;
  MEMORY[0x28223BE20](v43);
  v243 = v204 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = v204 - v46;
  v48 = MEMORY[0x277D84F90];
  v241 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_media) = MEMORY[0x277D84F90];
  v49 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  v50 = sub_24E609890(v48);
  v242 = v49;
  *(v3 + v49) = v50;
  sub_24F928398();
  LOBYTE(v49) = sub_24F928278();
  v215 = v27;
  v249 = *(v27 + 8);
  v250 = v27 + 8;
  v249(v47, v26);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) = v49 & 1;
  v216 = v12;
  if (v49)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    v51 = swift_allocObject();
    *(v51 + 16) = v48;
    v257 = v51;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v52, qword_27F22D8D8);
    sub_24F928528();
  }

  else
  {
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v53, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F928538();
  }

  v54 = v243;
  v55 = v252;
  (*(v245 + 32))(v252, v23, v10);
  v56 = type metadata accessor for Action(0);
  sub_24F928398();
  v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v54, v55);
  v254 = v10;
  v58 = v248;
  v59 = v249;
  (v249)(v54);
  v60 = v247;
  v232 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction;
  *(v247 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction) = v57;
  v61 = v60;
  sub_24F928398();
  v62 = v252;
  v63 = static Action.tryToMakeInstance(byDeserializing:using:)(v54, v252);
  v59(v54, v58);
  v231 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction) = v63;
  sub_24F928398();
  v204[1] = v56;
  v64 = static Action.tryToMakeInstance(byDeserializing:using:)(v54, v62);
  v59(v54, v58);
  v230 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction) = v64;
  sub_24F928398();
  sub_24EA848B8();
  sub_24F928208();
  v59(v54, v58);
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle) = v257;
  v65 = v61;
  v66 = type metadata accessor for Artwork(0);
  sub_24F928398();
  v67 = *(v245 + 16);
  v253 = v245 + 16;
  v68 = v244;
  v69 = v252;
  v70 = v254;
  v67(v244, v252, v254);
  v71 = sub_24EA849AC(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v260 = v66;
  v256 = v71;
  sub_24F929548();
  v229 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork) = v257;
  sub_24F928398();
  v67(v68, v69, v70);
  sub_24F929548();
  v228 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay;
  v72 = v65;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay) = v257;
  type metadata accessor for Video(0);
  sub_24F928398();
  v73 = v252;
  v67(v68, v252, v254);
  v251 = v67;
  sub_24EA849AC(&qword_27F221590, 255, type metadata accessor for Video, &protocol conformance descriptor for Video);
  v74 = v68;
  v75 = v254;
  sub_24F929548();
  v227 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo) = v257;
  sub_24F928398();
  v67(v74, v73, v75);
  sub_24F929548();
  v226 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork) = v257;
  sub_24F928398();
  v76 = v251;
  v251(v74, v73, v75);
  sub_24F929548();
  v225 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork) = v257;
  sub_24F928398();
  v76(v74, v73, v75);
  type metadata accessor for Badge(0);
  sub_24EA849AC(&qword_27F2144A0, 255, type metadata accessor for Badge, &protocol conformance descriptor for Badge);
  v77 = sub_24F92B698();
  v224 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges) = v77;
  type metadata accessor for ProductPageExpandedOfferDetails();
  sub_24F928398();
  v76(v74, v73, v75);
  sub_24EA849AC(&qword_27F226740, v78, type metadata accessor for ProductPageExpandedOfferDetails, &protocol conformance descriptor for ProductPageExpandedOfferDetails);
  sub_24F929548();
  v223 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails) = v257;
  sub_24F928398();
  v79 = sub_24F928348();
  v81 = v80;
  v82 = v248;
  v83 = v249;
  v249(v54, v248);
  v84 = (v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
  *v84 = v79;
  v84[1] = v81;
  v222 = v84;
  sub_24F928398();
  sub_24EA8490C();
  sub_24F928208();
  v83(v54, v82);
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme) = v257;
  sub_24F928398();
  v85 = sub_24F928258();
  LOBYTE(v81) = v86;
  v83(v54, v82);
  v87 = v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier;
  *v87 = v85;
  *(v87 + 8) = v81 & 1;
  sub_24F928398();
  v88 = sub_24F928348();
  v90 = v89;
  v83(v54, v82);
  v91 = (v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
  *v91 = v88;
  v91[1] = v90;
  v221 = v91;
  sub_24F928398();
  v92 = JSONObject.appStoreColor.getter();
  v83(v54, v82);
  v220 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor) = v92;
  sub_24F928398();
  v93 = JSONObject.appStoreColor.getter();
  v83(v54, v82);
  v219 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor) = v93;
  sub_24F928398();
  LOBYTE(v93) = sub_24F928278();
  v83(v54, v82);
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle) = v93;
  sub_24F928398();
  v94 = v244;
  v95 = v252;
  v96 = v254;
  v97 = v251;
  v251(v244, v252, v254);
  type metadata accessor for ProductMedia();
  sub_24EA849AC(&qword_27F226330, 255, type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  v98 = sub_24F92B698();
  v99 = v241;
  swift_beginAccess();
  *(v72 + v99) = v98;

  sub_24F928398();
  v100 = v94;
  v101 = v94;
  v102 = v95;
  v103 = v95;
  v104 = v96;
  v97(v101, v102, v96);
  type metadata accessor for ProductPageSection();
  sub_24EA849AC(&qword_27F226750, 255, type metadata accessor for ProductPageSection, &protocol conformance descriptor for ProductPageSection);
  v105 = v100;
  v106 = sub_24F92B698();
  sub_24F928398();
  v251(v100, v103, v104);
  v260 = sub_24F92B698();
  v107 = v237;
  sub_24F928398();
  v108 = v238;
  sub_24F9281F8();
  v249(v107, v248);
  v109 = v239;
  v110 = v240;
  if ((v239[6])(v108, 1, v240) == 1)
  {
    sub_24E601704(v108, qword_27F221C40, &unk_24F967D80);
    v111 = sub_24E609890(MEMORY[0x277D84F90]);
  }

  else
  {
    v112 = v218;
    (v109[4])(v218, v108, v110);
    (v109[2])(v217, v112, v110);
    v251(v105, v252, v254);
    type metadata accessor for Shelf(0);
    sub_24EA849AC(&qword_27F2265E0, 255, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v111 = sub_24F92AE68();
    (v109[1])(v112, v110);
  }

  v113 = v247;
  v114 = v242;
  swift_beginAccess();
  *(v113 + v114) = v111;

  swift_beginAccess();
  v256 = *(v113 + v114);
  v257 = MEMORY[0x277D84F90];
  if (v106 >> 62)
  {
    goto LABEL_55;
  }

  v115 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
  swift_bridgeObjectRetain_n();
  v116 = MEMORY[0x277D84F90];
  if (v115)
  {
    v117 = 0;
    v113 = v106 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v106 & 0xC000000000000001) != 0)
      {
        v118 = MEMORY[0x253052270](v117, v106);
        v119 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          v123 = v257;
          v113 = v247;
          v116 = MEMORY[0x277D84F90];
          goto LABEL_33;
        }
      }

      else
      {
        if (v117 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v115 = sub_24F92C738();
          goto LABEL_13;
        }

        v118 = *(v106 + 8 * v117 + 32);

        v119 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
          goto LABEL_30;
        }
      }

      if (*(v118 + 16) > 2u)
      {
        break;
      }

      v120 = sub_24F92CE08();

      if ((v120 & 1) == 0)
      {
        goto LABEL_27;
      }

      v121 = *(v118 + 32);
      if (v121)
      {
        goto LABEL_25;
      }

LABEL_15:

LABEL_16:
      ++v117;
      if (v119 == v115)
      {
        goto LABEL_31;
      }
    }

    v121 = *(v118 + 32);
    if (!v121)
    {
      goto LABEL_15;
    }

LABEL_25:
    if (*(v256 + 16))
    {
      sub_24E76D644(*(v118 + 24), v121);
      if (v122)
      {
LABEL_27:
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  v123 = MEMORY[0x277D84F90];
LABEL_33:

  v240 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering) = v123;
  v257 = v116;
  v124 = v260;
  if (v260 >> 62)
  {
    v125 = sub_24F92C738();
    v124 = v260;
    if (v125)
    {
      goto LABEL_35;
    }

LABEL_57:
    v133 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v125 = *((v260 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v125)
  {
    goto LABEL_57;
  }

LABEL_35:
  v106 = 0;
  v126 = v124 & 0xC000000000000001;
  v127 = v124 & 0xFFFFFFFFFFFFFF8;
  v113 = v256;
  while (v126)
  {
    v128 = MEMORY[0x253052270](v106, v124);
    v129 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      goto LABEL_51;
    }

LABEL_41:
    if (*(v128 + 16) > 2u)
    {

      v131 = *(v128 + 32);
      if (!v131)
      {
        goto LABEL_36;
      }

LABEL_46:
      if (*(v113 + 16))
      {
        sub_24E76D644(*(v128 + 24), v131);
        if (v132)
        {
LABEL_48:
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
          goto LABEL_37;
        }
      }

      goto LABEL_36;
    }

    v130 = sub_24F92CE08();

    if ((v130 & 1) == 0)
    {
      goto LABEL_48;
    }

    v131 = *(v128 + 32);
    if (v131)
    {
      goto LABEL_46;
    }

LABEL_36:

LABEL_37:
    ++v106;
    v124 = v260;
    if (v129 == v125)
    {
      goto LABEL_52;
    }
  }

  if (v106 >= *(v127 + 16))
  {
    goto LABEL_54;
  }

  v128 = *(v124 + 8 * v106 + 32);

  v129 = v106 + 1;
  if (!__OFADD__(v106, 1))
  {
    goto LABEL_41;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v133 = v257;
  v113 = v247;
LABEL_58:

  v260 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
  *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering) = v133;
  v134 = (v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  *v134 = 0u;
  *(v134 + 1) = 0u;
  *(v134 + 2) = 0u;
  v134[6] = 0;
  v135 = v243;
  sub_24F928398();
  v136 = sub_24F928348();
  v138 = v137;
  v139 = v248;
  v140 = v249;
  v249(v135, v248);
  v141 = (v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
  *v141 = v136;
  v141[1] = v138;
  v239 = v141;
  sub_24F928398();
  v251(v234, v246, v254);
  v142 = v235;
  v143 = v236;
  sub_24F928788();
  if (!v143)
  {
    (*(v206 + 32))(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics, v142, v207);
    type metadata accessor for PageRenderMetricsEvent();
    v260 = 0;
    sub_24F928398();
    v146 = v244;
    v147 = v246;
    v148 = v251;
    v251(v244, v246, v254);
    sub_24EA849AC(&qword_27F2218C0, 255, type metadata accessor for PageRenderMetricsEvent, &protocol conformance descriptor for PageRenderMetricsEvent);
    sub_24F929548();
    *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent) = v257;
    type metadata accessor for OfferDisplayProperties();
    sub_24F928398();
    v149 = v147;
    v150 = v254;
    v148(v146, v149, v254);
    sub_24EA849AC(&qword_27F225B10, 255, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_24F929548();
    *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties) = v257;
    v151 = v205;
    sub_24F928398();
    v152 = v209;
    v153 = v246;
    v251(v209, v246, v150);
    type metadata accessor for Banner();
    swift_allocObject();
    v154 = v260;
    v155 = Banner.init(deserializing:using:)(v151, v152);
    v156 = v154;
    if (v154)
    {

      v155 = 0;
      v156 = 0;
    }

    v157 = v249;
    v158 = v211;
    v159 = v208;
    *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner) = v155;
    sub_24F928398();
    v251(v158, v153, v254);
    swift_allocObject();
    v160 = Banner.init(deserializing:using:)(v159, v158);
    v161 = v156;
    if (v156)
    {

      v160 = 0;
      v161 = 0;
    }

    v162 = v212;
    v163 = v210;
    *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner) = v160;
    sub_24F928398();
    v164 = static Action.makeInstance(byDeserializing:using:)(v163, v153);
    if (v161)
    {

      v165 = 0;
    }

    else
    {
      v165 = v164;
    }

    v139 = v248;
    v157(v163, v248);
    *(v247 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction) = v165;
    v166 = v255;
    sub_24F928398();
    v167 = static Action.makeInstance(byDeserializing:using:)(v162, v153);
    v168 = v153;
    v260 = 0;
    v169 = v249;
    v249(v162, v139);
    v170 = v247;
    *(v247 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction) = v167;
    type metadata accessor for PageRefreshPolicy(0);
    sub_24F928398();
    v171 = v168;
    v172 = v254;
    v251(v244, v171, v254);
    sub_24EA849AC(&qword_27F2218B8, 255, type metadata accessor for PageRefreshPolicy, &protocol conformance descriptor for PageRefreshPolicy);
    sub_24F929548();
    *(v170 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy) = v257;
    v173 = v213;
    sub_24F928398();
    LOBYTE(v167) = sub_24F928278();
    v169(v173, v139);
    *(v170 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews) = v167 & 1;
    v174 = v214;
    (*(v215 + 16))(v214, v166, v139);
    v175 = v216;
    v176 = v252;
    v251(v216, v252, v172);
    v177 = v260;
    v178 = Lockup.init(deserializing:using:)(v174, v175);
    if (v177)
    {
      swift_bridgeObjectRelease_n();
      v179 = *(v245 + 8);
      v179(v246, v172);
      v249(v166, v139);
      v179(v176, v172);
      return v139;
    }

    v139 = v178;
    v260 = 0;
    v180 = v246;
    if (*(v178 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) == 1)
    {
      v181 = qword_27F2105F0;

      if (v181 != -1)
      {
        swift_once();
      }

      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v182, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      sub_24F9285C8();
      if (v257)
      {

        sub_24ECDF110();
      }
    }

    else
    {
    }

    v183 = *(v139 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner);
    if (v183)
    {
      v184 = *(v139 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner);
      if (v184)
      {
        v185 = qword_27F2105D0;

        if (v185 != -1)
        {
          swift_once();
        }

        v253 = sub_24F92AAE8();
        v251 = __swift_project_value_buffer(v253, qword_27F22D7F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F942000;
        sub_24F928448();
        sub_24F9283A8();
        v187 = *(v183 + 16);
        v186 = *(v183 + 24);
        v259 = MEMORY[0x277D837D0];
        v257 = v187;
        v258 = v186;

        sub_24F928438();
        sub_24E601704(&v257, &qword_27F2129B0, &unk_24F945320);
        sub_24F9283A8();
        v189 = *(v184 + 16);
        v188 = *(v184 + 24);
        v259 = MEMORY[0x277D837D0];
        v257 = v189;
        v258 = v188;

        sub_24F928438();
        sub_24E601704(&v257, &qword_27F2129B0, &unk_24F945320);
        sub_24F92A588();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v195 = qword_27F2105D0;

        if (v195 != -1)
        {
          swift_once();
        }

        v196 = sub_24F92AAE8();
        __swift_project_value_buffer(v196, qword_27F22D7F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F9479A0;
        sub_24F928448();
        sub_24F9283A8();
        v198 = *(v183 + 16);
        v197 = *(v183 + 24);
        v259 = MEMORY[0x277D837D0];
        v257 = v198;
        v258 = v197;

        sub_24F928438();
        sub_24E601704(&v257, &qword_27F2129B0, &unk_24F945320);
        sub_24F92A588();
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      v190 = *(v139 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner);
      if (!v190)
      {

        v199 = v255;
        goto LABEL_88;
      }

      v191 = qword_27F2105D0;

      if (v191 != -1)
      {
        swift_once();
      }

      v192 = sub_24F92AAE8();
      __swift_project_value_buffer(v192, qword_27F22D7F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F9479A0;
      sub_24F928448();
      sub_24F9283A8();
      v194 = *(v190 + 16);
      v193 = *(v190 + 24);
      v259 = MEMORY[0x277D837D0];
      v257 = v194;
      v258 = v193;

      sub_24F928438();
      sub_24E601704(&v257, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A588();
      swift_bridgeObjectRelease_n();
    }

    v199 = v255;
    v180 = v246;
LABEL_88:
    v200 = v248;

    v201 = *(v245 + 8);
    v202 = v254;
    v201(v180, v254);
    v249(v199, v200);
    v201(v252, v202);

    return v139;
  }

  swift_bridgeObjectRelease_n();
  v144 = *(v245 + 8);
  v145 = v254;
  v144(v246, v254);
  v140(v255, v139);
  v144(v252, v145);

  sub_24E901BD0(*v134, v134[1], v134[2], v134[3], v134[4], v134[5], v134[6]);

  type metadata accessor for ProductPage(0);
  swift_deallocPartialClassInstance();
  return v139;
}

uint64_t ProductPage.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:buttonAction:offerDisplayProperties:titleOfferDisplayProperties:clickAction:shareAction:developerAction:ageRatingAction:uberArtwork:uberArtworkForCompactDisplay:uberVideo:uberStyle:logoArtwork:navigationBarIconArtwork:media:badges:isComplete:pageTopBackgroundColor:pageBottomBackgroundColor:hasDarkUserInterfaceStyle:purchasedOrdering:notPurchasedOrdering:shelfMapping:askToBuy:mediaSectionTitle:pageMetrics:pageRenderEvent:expandedOfferDetails:regularPriceFormatted:theme:externalVersionIdentifier:updateBuyParams:banner:secondaryBanner:descriptionHeader:description:fullProductFetchedAction:appPromotionDetailPageAction:pageRefreshPolicy:alwaysAllowReviews:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, void *a30, void *a31, unsigned __int8 a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unsigned __int8 *a44, uint64_t a45, unsigned __int8 a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned __int8 a57)
{
  v149 = a8;
  v148 = a7;
  v147 = a6;
  v146 = a5;
  v145 = a4;
  v144 = a3;
  v143 = a2;
  v135 = a57;
  v142 = a56;
  v141 = a55;
  v140 = a54;
  v139 = a50;
  v154 = a49;
  v133 = a48;
  v132 = a47;
  v131 = a46;
  v130 = a45;
  v129 = a42;
  v151 = a41;
  v150 = a40;
  v163 = a39;
  v128 = a38;
  v127 = a37;
  v161 = a31;
  v162 = a30;
  v160 = a23;
  v164 = a22;
  v156 = a16;
  v126 = a34;
  v125 = a33;
  LODWORD(v124) = a32;
  LODWORD(v122) = a29;
  v121 = a28;
  v158 = a26;
  v120 = a27;
  v123 = a43;
  v119 = a35;
  v157 = a25;
  v138 = a53;
  v109 = sub_24F91F6B8();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v107 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v59 - 8);
  v155 = &v107 - v60;

  v61 = swift_allocObject();
  v62 = a1[1];
  v137 = *a1;
  v136 = v62;
  v63 = *a24;
  v64 = *a36;
  v115 = a36[1];
  v116 = v64;
  v65 = *(a36 + 5);
  v114 = *(a36 + 4);
  v113 = v65;
  v112 = *(a36 + 6);
  v117 = *a44;
  v66 = MEMORY[0x277D84F90];
  v67 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  v68 = (v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping);
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_media) = MEMORY[0x277D84F90];
  v69 = sub_24E609890(v66);
  v111 = v68;
  v110 = v69;
  *v68 = v69;
  v159 = a18;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction) = a18;
  v70 = v157;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction) = a19;
  v71 = v119;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction) = a20;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork) = a21;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay) = v164;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo) = v160;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle) = v63;
  v72 = v158;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork) = v70;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork) = v72;
  swift_beginAccess();
  *(v61 + v67) = v120;
  v73 = v162;
  v74 = v121;
  if (!v121)
  {
    v74 = v66;
  }

  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges) = v74;
  v75 = v161;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) = v122;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor) = v73;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor) = v75;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle) = v124;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering) = v125;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering) = v126;
  v153 = a20;
  v152 = a21;
  v134 = a19;
  v76 = v75;

  v77 = v73;
  if (!v71)
  {
    v71 = sub_24E609890(MEMORY[0x277D84F90]);
  }

  v126 = a17;
  v125 = a15;
  v124 = a14;
  v122 = a13;
  v119 = a12;
  v118 = a11;
  v121 = a10;
  v120 = a9;
  v78 = v111;
  swift_beginAccess();
  *v78 = v71;

  v79 = v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
  v80 = v115;
  *v79 = v116;
  *(v79 + 16) = v80;
  v81 = v113;
  *(v79 + 32) = v114;
  *(v79 + 40) = v81;
  *(v79 + 48) = v112;
  v82 = (v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
  v83 = v128;
  *v82 = v127;
  v82[1] = v83;
  v84 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v85 = sub_24F928818();
  v127 = *(v85 - 8);
  v86 = *(v127 + 16);
  v128 = v85;
  v86(v61 + v84, v163);
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent) = v150;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails) = v151;
  v87 = (v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
  v88 = v123;
  *v87 = v129;
  v87[1] = v88;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme) = v117;
  v89 = v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier;
  *v89 = v130;
  *(v89 + 8) = v131 & 1;
  v90 = (v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
  v91 = v133;
  *v90 = v132;
  v90[1] = v91;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties) = v156;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner) = v154;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner) = v139;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction) = v140;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction) = v141;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy) = v142;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews) = v135 & 1;
  v92 = sub_24F929608();
  memset(v170, 0, sizeof(v170));
  v171 = 0;
  (*(*(v92 - 8) + 56))(v155, 1, 1, v92);
  *(v61 + 424) = 4;
  sub_24E60169C(v170, &v167, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v168 + 1))
  {
    v93 = v168;
    *(v61 + 448) = v167;
    *(v61 + 464) = v93;
    *(v61 + 480) = v169;
  }

  else
  {

    v94 = v107;
    sub_24F91F6A8();
    v95 = sub_24F91F668();
    v97 = v96;
    (*(v108 + 8))(v94, v109);
    v165 = v95;
    v166 = v97;
    sub_24F92C7F8();
    sub_24E601704(&v167, &qword_27F235830, &qword_24F93B8C0);
  }

  v98 = v155;
  sub_24E60169C(v155, v61 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  v99 = v136;
  *(v61 + 16) = v137;
  *(v61 + 24) = v99;
  v100 = v144;
  *(v61 + 32) = v143;
  *(v61 + 40) = v100;
  *(v61 + 48) = v145;
  *(v61 + 56) = 0;
  v101 = v119;
  *(v61 + 64) = v118;
  *(v61 + 72) = v101;
  v102 = v147;
  *(v61 + 80) = v146;
  *(v61 + 88) = v102;
  v103 = v149;
  *(v61 + 96) = v148;
  *(v61 + 104) = v103;
  v104 = v121;
  *(v61 + 112) = v120;
  *(v61 + 120) = v104;
  *(v61 + 128) = 0;
  *(v61 + 136) = 2;
  *(v61 + 144) = 0;
  *(v61 + 152) = 0;
  *(v61 + 184) = 0u;
  *(v61 + 200) = 0u;
  *(v61 + 216) = 0u;
  *(v61 + 376) = 0u;
  *(v61 + 392) = 0u;
  *(v61 + 408) = 0x8000;
  *(v61 + 360) = 0;
  *(v61 + 416) = 0;
  *(v61 + 432) = MEMORY[0x277D84FA0];
  *(v61 + 160) = v122;
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 248) = 0;
  *(v61 + 256) = 0;
  v105 = v125;
  *(v61 + 232) = v124;
  *(v61 + 240) = v105;
  *(v61 + 264) = v126;
  *(v61 + 272) = 0u;
  *(v61 + 288) = 0u;
  *(v61 + 304) = 0u;
  *(v61 + 320) = 0u;
  *(v61 + 336) = 0;

  (*(v127 + 8))(v163, v128);
  sub_24E601704(v98, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v170, &qword_27F235830, &qword_24F93B8C0);
  *(v61 + 344) = MEMORY[0x277D84F90];
  *(v61 + 352) = 0;
  *(v61 + 440) = 0;
  *(v61 + 368) = 0;
  return v61;
}

uint64_t ProductPage.init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:buttonAction:offerDisplayProperties:titleOfferDisplayProperties:clickAction:shareAction:developerAction:ageRatingAction:uberArtwork:uberArtworkForCompactDisplay:uberVideo:uberStyle:logoArtwork:navigationBarIconArtwork:media:badges:isComplete:pageTopBackgroundColor:pageBottomBackgroundColor:hasDarkUserInterfaceStyle:purchasedOrdering:notPurchasedOrdering:shelfMapping:askToBuy:mediaSectionTitle:pageMetrics:pageRenderEvent:expandedOfferDetails:regularPriceFormatted:theme:externalVersionIdentifier:updateBuyParams:banner:secondaryBanner:descriptionHeader:description:fullProductFetchedAction:appPromotionDetailPageAction:pageRefreshPolicy:alwaysAllowReviews:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, void *a30, void *a31, unsigned __int8 a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unsigned __int8 *a44, uint64_t a45, unsigned __int8 a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned __int8 a57)
{
  v58 = v57;
  v148 = a8;
  v147 = a7;
  v145 = a6;
  v144 = a5;
  v143 = a4;
  v142 = a3;
  v141 = a2;
  LODWORD(v138) = a57;
  v168 = a56;
  v167 = a55;
  v158 = a54;
  v164 = a50;
  v156 = a49;
  v137 = a48;
  v136 = a47;
  v135 = a46;
  v134 = a45;
  v131 = a42;
  v155 = a41;
  v153 = a40;
  v157 = a39;
  v123 = a38;
  v122 = a37;
  v165 = a31;
  v166 = a30;
  v163 = a23;
  v160 = a22;
  v152 = a16;
  v133 = a34;
  v132 = a33;
  LODWORD(v130) = a32;
  LODWORD(v129) = a29;
  v127 = a28;
  v161 = a26;
  v151 = a27;
  v128 = a43;
  v126 = a35;
  v159 = a25;
  v154 = a53;
  v114 = sub_24F91F6B8();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v111 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v61 - 8);
  v162 = &v111 - v62;

  v63 = a1[1];
  v140 = *a1;
  v139 = v63;
  v64 = *a24;
  v65 = *a36;
  v119 = a36[1];
  v120 = v65;
  v66 = *(a36 + 5);
  v118 = *(a36 + 4);
  v117 = v66;
  v116 = *(a36 + 6);
  v121 = *a44;
  v67 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  v68 = MEMORY[0x277D84F90];
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_media) = MEMORY[0x277D84F90];
  v69 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  v70 = sub_24E609890(v68);
  v115 = v69;
  *(v58 + v69) = v70;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction) = a18;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction) = a19;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction) = a20;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork) = a21;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay) = v160;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo) = v163;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle) = v64;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork) = v159;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork) = v161;
  swift_beginAccess();
  v125 = *(v58 + v67);
  *(v58 + v67) = v151;
  v71 = v126;

  v146 = a18;

  v149 = a19;

  v150 = a20;

  v151 = a21;

  v72 = v127;
  if (!v127)
  {
    v72 = MEMORY[0x277D84F90];
  }

  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges) = v72;
  v73 = v165;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) = v129;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor) = v166;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor) = v73;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle) = v130;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering) = v132;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering) = v133;
  v74 = v73;
  v75 = v166;
  if (!v71)
  {
    v71 = sub_24E609890(MEMORY[0x277D84F90]);
  }

  v133 = a17;
  v132 = a15;
  v130 = a14;
  v129 = a13;
  v125 = a12;
  v124 = a11;
  v127 = a10;
  v126 = a9;
  v76 = v115;
  swift_beginAccess();
  *(v58 + v76) = v71;

  v77 = v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
  v78 = v119;
  *v77 = v120;
  *(v77 + 16) = v78;
  v79 = v117;
  *(v77 + 32) = v118;
  *(v77 + 40) = v79;
  *(v77 + 48) = v116;
  v80 = (v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
  v81 = v123;
  *v80 = v122;
  v80[1] = v81;
  v82 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v83 = sub_24F928818();
  v84 = *(v83 - 8);
  v85 = v58 + v82;
  v86 = v83;
  v87 = v157;
  (*(v84 + 16))(v85, v157, v83);
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent) = v153;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails) = v155;
  v88 = (v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
  v89 = v128;
  *v88 = v131;
  v88[1] = v89;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme) = v121;
  v90 = v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier;
  *v90 = v134;
  *(v90 + 8) = v135 & 1;
  v91 = (v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
  v92 = v137;
  *v91 = v136;
  v91[1] = v92;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties) = v152;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner) = v156;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner) = v164;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction) = v158;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction) = v167;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy) = v168;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews) = v138 & 1;
  v93 = sub_24F929608();
  memset(v177, 0, sizeof(v177));
  v178 = 0;
  (*(*(v93 - 8) + 56))(v162, 1, 1, v93);
  *(v58 + 424) = 4;
  sub_24E60169C(v177, &v171, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v172 + 1))
  {
    v174 = v171;
    v175 = v172;
    v176 = v173;
  }

  else
  {

    v138 = v84;
    v94 = v87;
    v95 = v86;
    v96 = v112;
    sub_24F91F6A8();
    v97 = sub_24F91F668();
    v99 = v98;
    v100 = v96;
    v86 = v95;
    v87 = v94;
    v84 = v138;
    (*(v113 + 8))(v100, v114);
    v169 = v97;
    v170 = v99;
    sub_24F92C7F8();
    sub_24E601704(&v171, &qword_27F235830, &qword_24F93B8C0);
  }

  v101 = v175;
  *(v58 + 448) = v174;
  *(v58 + 464) = v101;
  *(v58 + 480) = v176;
  v102 = v162;
  sub_24E60169C(v162, v58 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v103 = v139;
  *(v58 + 16) = v140;
  *(v58 + 24) = v103;
  v104 = v142;
  *(v58 + 32) = v141;
  *(v58 + 40) = v104;
  *(v58 + 48) = v143;
  *(v58 + 56) = 0;
  v105 = v125;
  *(v58 + 64) = v124;
  *(v58 + 72) = v105;
  v106 = v145;
  *(v58 + 80) = v144;
  *(v58 + 88) = v106;
  v107 = v148;
  *(v58 + 96) = v147;
  *(v58 + 104) = v107;
  v108 = v127;
  *(v58 + 112) = v126;
  *(v58 + 120) = v108;
  *(v58 + 128) = 0;
  *(v58 + 136) = 2;
  *(v58 + 144) = 0;
  *(v58 + 152) = 0;
  *(v58 + 216) = 0u;
  *(v58 + 200) = 0u;
  *(v58 + 184) = 0u;
  *(v58 + 376) = 0u;
  *(v58 + 392) = 0u;
  *(v58 + 408) = 0x8000;
  *(v58 + 360) = 0;
  *(v58 + 416) = 0;
  *(v58 + 432) = MEMORY[0x277D84FA0];
  *(v58 + 160) = v129;
  *(v58 + 168) = 0;
  *(v58 + 176) = 0;
  *(v58 + 248) = 0;
  *(v58 + 256) = 0;
  v109 = v132;
  *(v58 + 232) = v130;
  *(v58 + 240) = v109;
  *(v58 + 264) = v133;
  *(v58 + 272) = 0u;
  *(v58 + 288) = 0u;
  *(v58 + 304) = 0u;
  *(v58 + 320) = 0u;
  *(v58 + 336) = 0;

  (*(v84 + 8))(v87, v86);
  sub_24E601704(v102, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v177, &qword_27F235830, &qword_24F93B8C0);
  *(v58 + 344) = MEMORY[0x277D84F90];
  *(v58 + 352) = 0;
  *(v58 + 440) = 0;
  *(v58 + 368) = 0;
  return v58;
}

double sub_24EA84320()
{

  sub_24E901BD0(*(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 48));

  v1 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

uint64_t ProductPage.deinit()
{
  v0 = Lockup.deinit();

  sub_24E901BD0(*(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 48));

  v1 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ProductPage.__deallocating_deinit()
{
  ProductPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA847F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_24EA8486C@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*v1 + 240);
  if (v2)
  {
    sub_24E60169C(v2 + 144, a1, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

unint64_t sub_24EA848B8()
{
  result = qword_27F226738;
  if (!qword_27F226738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226738);
  }

  return result;
}

unint64_t sub_24EA8490C()
{
  result = qword_27F226748;
  if (!qword_27F226748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226748);
  }

  return result;
}

uint64_t type metadata accessor for ProductPage(uint64_t a1)
{
  result = qword_27F226760;
  if (!qword_27F226760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA849AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EA849F8()
{
  result = qword_27F226758;
  if (!qword_27F226758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226758);
  }

  return result;
}

double sub_24EA84A4C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_24EA84B18(uint64_t a1)
{
  result = sub_24F928818();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of ProductPage.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:buttonAction:offerDisplayProperties:titleOfferDisplayProperties:clickAction:shareAction:developerAction:ageRatingAction:uberArtwork:uberArtworkForCompactDisplay:uberVideo:uberStyle:logoArtwork:navigationBarIconArtwork:media:badges:isComplete:pageTopBackgroundColor:pageBottomBackgroundColor:hasDarkUserInterfaceStyle:purchasedOrdering:notPurchasedOrdering:shelfMapping:askToBuy:mediaSectionTitle:pageMetrics:pageRenderEvent:expandedOfferDetails:regularPriceFormatted:theme:externalVersionIdentifier:updateBuyParams:banner:secondaryBanner:descriptionHeader:description:fullProductFetchedAction:appPromotionDetailPageAction:pageRefreshPolicy:alwaysAllowReviews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v38 = *(v37 + 832);

  return v38(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

double WriteReviewAction.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId);
  a1[1] = v2;

  return result;
}

uint64_t WriteReviewAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WriteReviewAction.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appName);

  return v1;
}

uint64_t WriteReviewAction.itemDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_itemDescription);

  return v1;
}

void *WriteReviewAction.__allocating_init(title:artwork:adamId:url:appName:appIcon:itemDescription:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v56 = a2;
  v57 = a3;
  v55 = a1;
  v51 = a6;
  v52 = a10;
  v50 = a9;
  v49 = sub_24F91F6B8();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = a4[1];
  v23 = (v21 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId);
  *v23 = *a4;
  v23[1] = v22;
  v24 = OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url;
  v25 = sub_24F91F4A8();
  v26 = *(v25 - 8);
  v27 = v21 + v24;
  v28 = a5;
  (*(v26 + 16))(v27, a5, v25);
  v29 = (v21 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appName);
  v30 = v53;
  *v29 = v51;
  v29[1] = v30;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon) = v54;
  v31 = (v21 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_itemDescription);
  v32 = v52;
  *v31 = v50;
  v31[1] = v32;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v33 = a11;
  (*(v18 + 16))(v20, a11, v17);
  v34 = sub_24F929608();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v35 = (v21 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v35 = 0u;
  v35[1] = 0u;
  v36 = v21 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v63, &v60);
  if (*(&v61 + 1))
  {
    v37 = v61;
    *v36 = v60;
    *(v36 + 1) = v37;
    *(v36 + 4) = v62;
  }

  else
  {
    v52 = v17;
    v38 = v47;
    sub_24F91F6A8();
    v53 = a11;
    v54 = v16;
    v39 = v20;
    v40 = sub_24F91F668();
    v41 = v28;
    v43 = v42;
    v44 = v38;
    v17 = v52;
    (*(v48 + 8))(v44, v49);
    v58 = v40;
    v59 = v43;
    v20 = v39;
    v28 = v41;
    v33 = v53;
    v16 = v54;
    sub_24F92C7F8();
    sub_24E601704(&v60, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v18 + 8))(v33, v17);
  (*(v26 + 8))(v28, v25);
  sub_24E601704(v63, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v16, v21 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v45 = v56;
  v21[2] = v55;
  v21[3] = v45;
  v21[4] = v57;
  v21[5] = 0;
  (*(v18 + 32))(v21 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v21;
}

void *WriteReviewAction.init(title:artwork:adamId:url:appName:appIcon:itemDescription:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char *a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v53 = a8;
  v52 = a7;
  v50 = a6;
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v15 = a11;
  v51 = a10;
  v49 = a9;
  v48 = sub_24F91F6B8();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v46 - v18;
  v20 = sub_24F928AD8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a4[1];
  v25 = (v12 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId);
  *v25 = *a4;
  v25[1] = v24;
  v26 = OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url;
  v27 = sub_24F91F4A8();
  v28 = *(v27 - 8);
  v29 = v12 + v26;
  v30 = a5;
  (*(v28 + 16))(v29, a5, v27);
  v31 = (v12 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appName);
  v32 = v52;
  *v31 = v50;
  v31[1] = v32;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon) = v53;
  v33 = (v12 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_itemDescription);
  v34 = v51;
  *v33 = v49;
  v33[1] = v34;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  (*(v21 + 16))(v23, a11, v20);
  v35 = sub_24F929608();
  (*(*(v35 - 8) + 56))(v19, 1, 1, v35);
  v36 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v36 = 0u;
  v36[1] = 0u;
  sub_24E65E064(v65, &v59);
  if (*(&v60 + 1))
  {
    v62 = v59;
    v63 = v60;
    v64 = v61;
  }

  else
  {
    v37 = v46;
    sub_24F91F6A8();
    v53 = v23;
    v52 = v19;
    v38 = sub_24F91F668();
    v39 = v30;
    v41 = v40;
    (*(v47 + 8))(v37, v48);
    v57 = v38;
    v58 = v41;
    v30 = v39;
    v15 = a11;
    v19 = v52;
    v23 = v53;
    sub_24F92C7F8();
    sub_24E601704(&v59, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v21 + 8))(v15, v20);
  (*(v28 + 8))(v30, v27);
  sub_24E601704(v65, &qword_27F235830, &qword_24F93B8C0);
  v42 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v42 + 4) = v64;
  v43 = v63;
  *v42 = v62;
  *(v42 + 1) = v43;
  sub_24E65E0D4(v19, v12 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v44 = v55;
  v12[2] = v54;
  v12[3] = v44;
  v12[4] = v56;
  v12[5] = 0;
  (*(v21 + 32))(v12 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v23, v20);
  return v12;
}

uint64_t WriteReviewAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v80 = v3;
  v72 = *v3;
  v5 = sub_24F9285B8();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v63 - v10;
  v12 = sub_24F91F4A8();
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v71 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v66 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v63 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  v25 = a1;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v27;
  v67 = v15;
  v29 = *(v15 + 8);
  v30 = v24;
  v31 = v14;
  v29(v30, v14);
  v78 = v25;
  v79 = v15 + 8;
  if (!v28)
  {
    v32 = 0x64496D616461;
    v34 = v75;
    v35 = v73;
    v33 = 0xE600000000000000;
    goto LABEL_5;
  }

  v64 = v26;
  sub_24F928398();
  sub_24F928268();
  v29(v21, v14);
  if ((*(v76 + 48))(v11, 1, v77) == 1)
  {
    v32 = 7107189;

    sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
    v33 = 0xE300000000000000;
    v34 = v75;
    v35 = v73;
LABEL_5:
    v36 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v37 = v32;
    v37[1] = v33;
    v37[2] = v72;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    (*(v35 + 8))(v34, v74);
    v29(v78, v31);
    swift_deallocPartialClassInstance();
    return v36;
  }

  v38 = v76;
  v39 = v71;
  v40 = v77;
  (*(v76 + 32))(v71, v11, v77);
  v41 = v80;
  v42 = &v80[OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId];
  *v42 = v64;
  v42[1] = v28;
  v43 = v41;
  (*(v38 + 16))(&v41[OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url], v39, v40);
  v44 = v65;
  sub_24F928398();
  v45 = sub_24F928348();
  v47 = v46;
  v29(v44, v31);
  v48 = &v43[OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appName];
  *v48 = v45;
  v48[1] = v47;
  sub_24F928398();
  v49 = sub_24F928348();
  v51 = v50;
  v29(v44, v31);
  v52 = &v43[OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_itemDescription];
  *v52 = v49;
  v52[1] = v51;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v72 = v29;
  v54 = v73;
  v53 = v74;
  v55 = *(v73 + 16);
  v56 = v75;
  v55(v68, v75, v74);
  sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v57 = v53;
  sub_24F929548();
  *&v80[OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon] = v81;
  v58 = v66;
  v59 = *(v67 + 16);
  v68 = v31;
  v59(v66, v78, v31);
  v36 = v69;
  v55(v69, v56, v57);
  v60 = v70;
  v61 = Action.init(deserializing:using:)(v58, v36);
  if (!v60)
  {
    v36 = v61;
  }

  (*(v54 + 8))(v56, v57);
  v72(v78, v68);
  (*(v76 + 8))(v71, v77);
  return v36;
}

double sub_24EA86258()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

uint64_t WriteReviewAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  v3 = OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t WriteReviewAction.__deallocating_deinit()
{
  WriteReviewAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA864C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for WriteReviewAction(uint64_t a1)
{
  result = qword_27F226770;
  if (!qword_27F226770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA8655C(uint64_t a1)
{
  result = sub_24F91F4A8();
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

id UIView.highlightedTintColor.getter()
{
  result = [v0 tintColor];
  if (result)
  {
    v2 = result;
    v3 = [result colorWithAlphaComponent_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSDiffableDataSourceSnapshot.surroundingSections(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  NSDiffableDataSourceSnapshot.section(at:)(result, a4, a1);
  result = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return NSDiffableDataSourceSnapshot.section(at:)(result, a4, a2);
}

uint64_t NSDiffableDataSourceSnapshot.section(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || sub_24F922DF8() <= a1)
  {
    v9 = *(a2 + 16);
    v6 = *(*(v9 - 8) + 56);
    v7 = a3;
    v8 = 1;
  }

  else
  {
    sub_24F922E18();
    v5 = *(a2 + 16);
    sub_24F92B758();

    v6 = *(*(v5 - 8) + 56);
    v7 = a3;
    v8 = 0;
    v9 = v5;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t FramedMedia.init(id:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v32 = a6;
  LODWORD(v13) = a2;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v35, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v30 = a7;
    v20 = a3;
    v21 = a5;
    v22 = v19;
    v31 = v13;
    v13 = a4;
    v24 = v23;
    (*(v16 + 8))(v18, v15);
    v33 = v22;
    v34 = v24;
    a5 = v21;
    a3 = v20;
    a7 = v30;
    a4 = v13;
    LOBYTE(v13) = v31;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v25 = v8 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  v26 = v39;
  *v25 = v38;
  *(v25 + 16) = v26;
  *(v25 + 32) = v40;
  sub_24E6009C8(a7, v8 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v8 + 17) = v13 & 1;
  *(v8 + 16) = a3 & 1;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v27 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v28 = sub_24F91F008();
  (*(*(v28 - 8) + 56))(v8 + v27, 1, 1, v28);
  return v8;
}

uint64_t FramedMedia.init(deserializing:using:)(char *a1, uint64_t a2, __n128 a3)
{
  v96 = a2;
  v85 = sub_24F91EE98();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_24F91EEA8();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v6 - 8);
  v78 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v75 - v9;
  v10 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v76 = &v75 - v17;
  v95 = sub_24F9285B8();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v19 - 8);
  v88 = &v75 - v20;
  v21 = sub_24F91F6B8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24F928388();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v90 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v89 = &v75 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v75 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v75 - v34;
  v103 = a1;
  sub_24F928398();
  v36 = sub_24F928348();
  if (v37)
  {
    *&v97[0] = v36;
    *(&v97[0] + 1) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    (*(v22 + 8))(v24, v21);
    *&v97[0] = v38;
    *(&v97[0] + 1) = v40;
  }

  sub_24F92C7F8();
  v41 = *(v26 + 8);
  v41(v35, v25);
  v42 = v93;
  v43 = v93 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  v44 = v99;
  *v43 = v98;
  *(v43 + 16) = v44;
  *(v43 + 32) = v100;
  sub_24F929608();
  sub_24F928398();
  (*(v94 + 16))(v91, v96, v95);
  v45 = v88;
  sub_24F929548();
  sub_24E6009C8(v45, v42 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24F928398();
  v87 = sub_24F928348();
  v91 = v46;
  v47 = v25;
  v41(v32, v25);
  sub_24F928398();
  sub_24EA87AA4();
  sub_24F928208();
  v41(v32, v25);
  LODWORD(v88) = v98;
  v48 = v89;
  sub_24F928398();
  v49 = sub_24F928278();
  v41(v48, v47);
  *(v42 + 17) = v49 & 1;
  v50 = v90;
  sub_24F928398();
  v51 = sub_24F928278();
  v41(v50, v47);
  *(v42 + 16) = (v51 == 2) | v51 & 1;
  sub_24F928398();
  v52 = sub_24F928348();
  v54 = v53;
  v41(v32, v47);
  v55 = v88;
  *(v42 + 24) = v52;
  *(v42 + 32) = v54;
  if (v55)
  {
    if (v55 == 1)
    {
      v56 = [objc_opt_self() systemFontOfSize_];
      v57 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
      v58 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
      v59 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

      *&v98 = 10;
      *(&v98 + 1) = 0xE100000000000000;
      *&v99 = v56;
      *(&v99 + 1) = v57;
      *&v100 = 161644770;
      *(&v100 + 1) = 0xA400000000000000;
      *&v101 = v58;
      *(&v101 + 1) = 606245;
      *&v102 = 0xE300000000000000;
      *(&v102 + 1) = v59;
      v60 = v91;
      if (v91)
      {
        v97[2] = v100;
        v97[3] = v101;
        v97[4] = v102;
        v97[0] = v98;
        v97[1] = v99;
        v61 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
        v62 = sub_24ECB3C7C(v87, v60, v97);
        v63 = v86;
        sub_24ECB3F40(v86);

        v64 = 0;
      }

      else
      {
        sub_24E951D6C(&v98);
        v64 = 1;
        v63 = v86;
      }

LABEL_16:
      (*(v94 + 8))(v96, v95);
      v41(v103, v47);
      v73 = sub_24F91F008();
      (*(*(v73 - 8) + 56))(v63, v64, 1, v73);
      v67 = v42 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
      v68 = v63;
      goto LABEL_17;
    }

    v69 = v92;
    if (v91)
    {
      v90 = ((v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v70 = sub_24F91F4A8();
      (*(*(v70 - 8) + 56))(v77, 1, 1, v70);
      (*(v80 + 104))(v81, *MEMORY[0x277CC8BB0], v82);
      (*(v84 + 104))(v83, *MEMORY[0x277CC8B98], v85);
      sub_24F91EEB8();
      v63 = v79;
      sub_24F91EFC8();
      if (v69)
      {

        v64 = 1;
      }

      else
      {
        v64 = 0;
      }

      goto LABEL_16;
    }
  }

  else if (v91)
  {
    sub_24F91F0B8();
    v65 = v76;
    sub_24F91F018();
    (*(v94 + 8))(v96, v95);
    v41(v103, v47);
    v66 = sub_24F91F008();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    v67 = v42 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
    v68 = v65;
LABEL_17:
    sub_24E6009C8(v68, v67, &qword_27F215340, &qword_24F943530);
    return v42;
  }

  (*(v94 + 8))(v96, v95);
  v41(v103, v47);
  v71 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v72 = sub_24F91F008();
  (*(*(v72 - 8) + 56))(v42 + v71, 1, 1, v72);
  return v42;
}

uint64_t FramedMedia.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340, &qword_24F943530);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t FramedMedia.__allocating_init(id:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v28 = a6;
  v29 = a7;
  LODWORD(v9) = a3;
  LODWORD(v10) = a2;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  sub_24E60169C(a1, &v32, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v33 + 1))
  {
    v18 = v33;
    *v17 = v32;
    *(v17 + 16) = v18;
    *(v17 + 32) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v26 = v10;
    v27 = v9;
    v9 = a5;
    v20 = v19;
    v10 = a4;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v30 = v20;
    v31 = v22;
    a5 = v9;
    a4 = v10;
    LOBYTE(v10) = v26;
    LOBYTE(v9) = v27;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E6009C8(v29, v16 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v16 + 17) = v10 & 1;
  *(v16 + 16) = v9 & 1;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  v23 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v24 = sub_24F91F008();
  (*(*(v24 - 8) + 56))(v16 + v23, 1, 1, v24);
  return v16;
}

uint64_t FramedMedia.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FramedMedia.init(deserializing:using:)(a1, a2, v5);
  return v4;
}

unint64_t sub_24EA87AA4()
{
  result = qword_27F226780;
  if (!qword_27F226780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226780);
  }

  return result;
}

uint64_t FramedMedia.ordinal.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FramedMedia.__deallocating_deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340, &qword_24F943530);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EA87C90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_24EA87D0C()
{
  result = qword_27F226788;
  if (!qword_27F226788)
  {
    type metadata accessor for FramedMedia(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226788);
  }

  return result;
}

uint64_t type metadata accessor for FramedMedia(uint64_t a1)
{
  result = qword_27F226790;
  if (!qword_27F226790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA87DB8(uint64_t a1)
{
  sub_24E9523E0(319, &qword_27F215338, MEMORY[0x277CC8C40]);
  if (v1 <= 0x3F)
  {
    sub_24E9523E0(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t ResetRequestReviewPropertiesIfNeededAction.requestReviewPropertiesLastResetAppVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResetRequestReviewPropertiesIfNeededAction.currentAppVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ResetRequestReviewPropertiesIfNeededAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0) + 24);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(uint64_t a1)
{
  result = qword_27F2267B8;
  if (!qword_27F2267B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ResetRequestReviewPropertiesIfNeededAction.appLaunch(actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_24F005CF0(v4);
  v7 = v6;

  v8 = [objc_opt_self() mainBundle];
  v9 = sub_24F76084C();
  v11 = v10;

  v12 = *(type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0) + 24);
  v13 = sub_24F928AD8();
  result = (*(*(v13 - 8) + 16))(a2 + v12, a1, v13);
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  return result;
}

unint64_t sub_24EA88148()
{
  v1 = 0x654D6E6F69746361;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

uint64_t sub_24EA881BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EA88C8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EA881E4(uint64_t a1)
{
  v2 = sub_24EA88464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA88220(uint64_t a1)
{
  v2 = sub_24EA88464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResetRequestReviewPropertiesIfNeededAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2267A0, &qword_24F97B220);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA88464();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCA8();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0);
    v8[13] = 2;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EA88464()
{
  result = qword_27F2267A8;
  if (!qword_27F2267A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267A8);
  }

  return result;
}

uint64_t ResetRequestReviewPropertiesIfNeededAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_24F928AD8();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2267B0, &qword_24F97B228);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EA88464();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v14 = v24;
  v15 = v12;
  v29 = 0;
  *v12 = sub_24F92CBC8();
  v12[1] = v16;
  v21 = v16;
  v28 = 1;
  v12[2] = sub_24F92CC28();
  v12[3] = v17;
  v27 = 2;
  sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
  v18 = v6;
  v19 = v25;
  sub_24F92CC68();
  (*(v14 + 8))(v9, v19);
  (*(v22 + 32))(v15 + *(v10 + 24), v18, v4);
  sub_24EA8880C(v15, v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_24EA88870(v15);
}

uint64_t sub_24EA8880C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA88870(uint64_t a1)
{
  v2 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA888CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24EA88984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA88A44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EA88AE8(uint64_t a1)
{
  sub_24E6BCB04();
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24EA88B88()
{
  result = qword_27F2267C8;
  if (!qword_27F2267C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267C8);
  }

  return result;
}

unint64_t sub_24EA88BE0()
{
  result = qword_27F2267D0;
  if (!qword_27F2267D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267D0);
  }

  return result;
}

unint64_t sub_24EA88C38()
{
  result = qword_27F2267D8;
  if (!qword_27F2267D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267D8);
  }

  return result;
}

uint64_t sub_24EA88C8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000002ALL && 0x800000024FA514C0 == a2;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA514F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t static ProductShelfOrderingId.defaultOrdering.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F2267E0;
  return result;
}

uint64_t static ProductShelfOrderingId.defaultOrdering.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F2267E0 = v1;
  return result;
}

GameStoreKit::ProductShelfOrderingId_optional __swiftcall ProductShelfOrderingId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ProductShelfOrderingId.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000021;
    v7 = 0xD00000000000001BLL;
    if (v2 != 10)
    {
      v7 = 0xD000000000000029;
    }

    if (v2 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000013;
    if (v2 == 7)
    {
      v8 = 0xD000000000000027;
    }

    if (v2 == 6)
    {
      v8 = 0xD000000000000019;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD00000000000001FLL;
    v4 = 0xD00000000000001CLL;
    if (v2 != 4)
    {
      v4 = 0xD00000000000002ALL;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    if (v2 == 1)
    {
      v1 = 0xD000000000000022;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000014;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24EA89058()
{
  v0 = ProductShelfOrderingId.rawValue.getter();
  v2 = v1;
  if (v0 == ProductShelfOrderingId.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24EA890F4()
{
  sub_24F92D068();
  ProductShelfOrderingId.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA8915C(uint64_t a1)
{
  ProductShelfOrderingId.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24EA891C0()
{
  sub_24F92D068();
  ProductShelfOrderingId.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24EA89230@<X0>(unint64_t *a1@<X8>)
{
  result = ProductShelfOrderingId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24EA89258@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F2267E0;
  return result;
}

_BYTE *ShelfBasedProductPage.init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v142 = a2;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v130 = &v117[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v124 = &v117[-v8];
  MEMORY[0x28223BE20](v9);
  v122 = &v117[-v10];
  MEMORY[0x28223BE20](v11);
  v141 = &v117[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v117[-v14];
  v137 = sub_24F928388();
  v132 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v129 = &v117[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v128 = &v117[-v18];
  MEMORY[0x28223BE20](v19);
  v127 = &v117[-v20];
  MEMORY[0x28223BE20](v21);
  v126 = &v117[-v22];
  MEMORY[0x28223BE20](v23);
  v125 = &v117[-v24];
  MEMORY[0x28223BE20](v25);
  v123 = &v117[-v26];
  MEMORY[0x28223BE20](v27);
  v29 = &v117[-v28];
  MEMORY[0x28223BE20](v30);
  v32 = &v117[-v31];
  v33 = qword_27F39B8D0;
  v136 = v2;
  *(v2 + qword_27F39B8D0) = MEMORY[0x277D84F90];
  type metadata accessor for Lockup(0);
  v144 = a1;
  sub_24F928398();
  v133 = v5;
  v34 = v5 + 16;
  v35 = *(v5 + 16);
  v36 = v142;
  v139 = v35;
  v140 = v34;
  v35(v15);
  sub_24EA90A1C(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  v134 = v15;
  sub_24F929548();
  v37 = v145;
  if (v145)
  {
    v38 = MEMORY[0x277D84F90];
    v120 = v33;
    v143 = v4;
    *(v136 + qword_27F39B8D8) = v145;
    v121 = v37;

    sub_24F928398();
    v39 = sub_24F928278();
    v135 = *(v132 + 8);
    v138 = v132 + 8;
    v135(v29, v137);
    if (v39 == 2 || (v39 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      v42 = swift_allocObject();
      *(v42 + 16) = v38;
      v145 = v42;
      v40 = v122;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v43, qword_27F22D8D8);
      sub_24F928528();

      v118 = 0;
    }

    else
    {
      v40 = v122;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v41, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      sub_24F928538();
      v118 = 1;
    }

    v44 = v141;
    (*(v133 + 32))(v141, v40, v143);
    v45 = type metadata accessor for Action(0);
    sub_24F928398();
    v46 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v44);
    v47 = v137;
    v48 = v135;
    v135(v32, v137);
    v49 = v136;
    *(v136 + qword_27F39B8E0) = v46;
    sub_24F928398();
    v50 = v141;
    v51 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v141);
    v48(v32, v47);
    *(v49 + qword_27F39B8E8) = v51;
    sub_24F928398();
    v122 = v45;
    v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v50);
    v48(v32, v47);
    *(v49 + qword_27F39B8F0) = v52;
    v53 = v123;
    sub_24F928398();
    v54 = v124;
    v55 = v143;
    v139(v124, v142);
    type metadata accessor for Uber();
    swift_allocObject();
    v56 = v131;
    Uber.init(deserializing:using:)(v53, v54);
    if (v56)
    {

      v57 = 0;
    }

    v124 = 0;
    v61 = v136;
    *(v136 + qword_27F39B8F8) = v57;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v62 = v134;
    v63 = v141;
    (v139)(v134, v141, v55);
    v131 = sub_24EA90A1C(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    *(v61 + qword_27F39B900) = v145;
    v123 = 0xD000000000000018;
    sub_24F928398();
    v64 = v63;
    v65 = v143;
    v66 = v139;
    (v139)(v62, v64, v143);
    sub_24F929548();
    *(v61 + qword_27F39B908) = v145;
    sub_24F928398();
    v67 = v141;
    v66(v62, v141, v65);
    type metadata accessor for Badge(0);
    sub_24EA90A1C(&qword_27F2144A0, type metadata accessor for Badge, &protocol conformance descriptor for Badge);
    *(v61 + qword_27F39B910) = sub_24F92B698();
    type metadata accessor for ProductPageExpandedOfferDetails();
    sub_24F928398();
    v66(v62, v67, v65);
    sub_24EA90A1C(&qword_27F226740, type metadata accessor for ProductPageExpandedOfferDetails, &protocol conformance descriptor for ProductPageExpandedOfferDetails);
    sub_24F929548();
    v68 = v136;
    *(v136 + qword_27F39B918) = v145;
    v119 = 0xD000000000000015;
    sub_24F928398();
    v69 = sub_24F928348();
    v71 = v70;
    v72 = v137;
    v73 = v135;
    v135(v32, v137);
    v74 = (v68 + qword_27F39B920);
    *v74 = v69;
    v74[1] = v71;
    sub_24F928398();
    sub_24EA8490C();
    sub_24F928208();
    v73(v32, v72);
    *(v68 + qword_27F39B928) = v145;
    sub_24F928398();
    v75 = sub_24F928258();
    LOBYTE(v71) = v76;
    v73(v32, v72);
    v77 = v68 + qword_27F39B930;
    *v77 = v75;
    *(v77 + 8) = v71 & 1;
    sub_24F928398();
    v78 = sub_24F928348();
    v80 = v79;
    v73(v32, v72);
    v81 = (v68 + qword_27F39B938);
    *v81 = v78;
    v81[1] = v80;
    sub_24F928398();
    v82 = JSONObject.appStoreColor.getter();
    v73(v32, v72);
    *(v68 + qword_27F39B940) = v82;
    sub_24F928398();
    v83 = JSONObject.appStoreColor.getter();
    v73(v32, v72);
    *(v68 + qword_27F39B948) = v83;
    sub_24F928398();
    LOBYTE(v83) = sub_24F928278();
    v73(v32, v72);
    *(v68 + qword_27F39B950) = v83;
    sub_24F928398();
    (v139)(v134, v141, v143);
    type metadata accessor for ProductMedia();
    sub_24EA90A1C(&qword_27F226330, type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
    v84 = sub_24F92B698();
    v85 = v120;
    swift_beginAccess();
    *(v68 + v85) = v84;

    v86 = v68 + qword_27F39B958;
    *v86 = 0u;
    *(v86 + 16) = 0u;
    *(v86 + 32) = 0u;
    *(v86 + 48) = 0;
    sub_24F928398();
    v87 = sub_24F928348();
    v89 = v88;
    v73(v32, v72);
    v90 = (v68 + qword_27F39B960);
    *v90 = v87;
    v90[1] = v89;
    type metadata accessor for OfferDisplayProperties();
    sub_24F928398();
    v91 = v134;
    v92 = v143;
    v93 = v139;
    (v139)(v134, v142, v143);
    sub_24EA90A1C(&qword_27F225B10, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_24F929548();
    *(v68 + qword_27F39B968) = v146;
    v131 = type metadata accessor for Banner();
    sub_24F928398();
    v94 = v142;
    v93(v91, v142, v92);
    v120 = sub_24EA90A1C(&qword_27F2258D8, type metadata accessor for Banner, &protocol conformance descriptor for Banner);
    sub_24F929548();
    *(v68 + qword_27F39B970) = v146;
    type metadata accessor for AppStateBanner();
    sub_24F928398();
    v93(v91, v94, v143);
    sub_24EA90A1C(&qword_27F2267E8, type metadata accessor for AppStateBanner, &protocol conformance descriptor for AppStateBanner);
    sub_24F929548();
    *(v68 + qword_27F39B978) = v146;
    sub_24F928398();
    v93(v91, v94, v143);
    sub_24F929548();
    *(v68 + qword_27F39B980) = v146;
    v95 = v125;
    sub_24F928398();
    v96 = v124;
    v97 = static Action.makeInstance(byDeserializing:using:)(v95, v94);
    if (v96)
    {

      v98 = 0;
    }

    else
    {
      v98 = v97;
    }

    v99 = v127;
    v100 = v126;
    v101 = v95;
    v102 = v137;
    v103 = v135;
    v135(v101, v137);
    *(v68 + qword_27F39B988) = v98;
    sub_24F928398();
    v104 = static Action.makeInstance(byDeserializing:using:)(v100, v94);
    v103(v100, v102);
    *(v68 + qword_27F39B990) = v104;
    sub_24F928398();
    v105 = static Action.makeInstance(byDeserializing:using:)(v99, v94);
    v103(v99, v102);
    *(v68 + qword_27F39B998) = v105;
    v106 = v128;
    v107 = v144;
    sub_24F928398();
    LOBYTE(v105) = sub_24F928278();
    v103(v106, v102);
    *(v68 + qword_27F39B9A0) = v105 & 1;
    v108 = v129;
    (*(v132 + 16))(v129, v107, v102);
    v109 = v130;
    (v139)(v130, v141, v143);
    v15 = sub_24EA8A8D0(v108, v109);
    if (v118)
    {

      v111 = v142;
      v110 = v143;
      v112 = v144;
    }

    else
    {
      v113 = qword_27F2105F0;

      v111 = v142;
      v112 = v144;
      if (v113 != -1)
      {
        swift_once();
      }

      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v114, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      sub_24F9285C8();
      if (v146)
      {

        sub_24ECDF110();
      }

      v110 = v143;
    }

    v115 = *(v133 + 8);
    v115(v111, v110);
    v135(v112, v102);
    v115(v141, v110);
  }

  else
  {
    v58 = sub_24F92AC38();
    sub_24EA90A1C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v60 = v59;
    *v59 = type metadata accessor for ShelfBasedProductPage(0);
    v60[1] = MEMORY[0x277D84F90];
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D22538], v58);
    swift_willThrow();
    (*(v133 + 8))(v36, v4);
    (*(v132 + 8))(v144, v137);

    swift_deallocPartialClassInstance();
  }

  return v15;
}

void *sub_24EA8A8D0(char *a1, uint64_t a2)
{
  v86 = a2;
  v3 = sub_24F9285B8();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v81 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v78 = &v72 - v18;
  MEMORY[0x28223BE20](v19);
  v77 = &v72 - v20;
  MEMORY[0x28223BE20](v21);
  v75 = &v72 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  v26 = sub_24F928E68();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v73 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v72 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v72 - v33;
  v83 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v80 = v13;
  v36 = *(v13 + 8);
  v35 = v13 + 8;
  v87 = v12;
  v36(v25, v12);
  v74 = *(v27 + 48);
  v37 = v74(v11, 1, v26);
  v92 = v36;
  if (v37 == 1)
  {
    sub_24E601704(v11, qword_27F221C40, &unk_24F967D80);
    v38 = sub_24E60986C(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v27 + 32))(v34, v11, v26);
    (*(v27 + 16))(v31, v34, v26);
    (*(v84 + 16))(v72, v86, v85);
    type metadata accessor for Shelf(0);
    sub_24EA90A1C(&qword_27F2265E0, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v39 = sub_24F92AE68();
    v38 = sub_24F1A3A24(v39);

    (*(v27 + 8))(v34, v26);
  }

  *(v89 + qword_27F39DC30) = v38;
  v40 = v75;
  v41 = v83;
  sub_24F928398();
  v42 = v76;
  sub_24F9281F8();
  v43 = v40;
  v44 = v35;
  v92(v43, v87);
  if (v74(v42, 1, v26) == 1)
  {
    sub_24E601704(v42, qword_27F221C40, &unk_24F967D80);
    v45 = sub_24E6098B8(MEMORY[0x277D84F90]);
  }

  else
  {
    v46 = v73;
    (*(v27 + 32))(v73, v42, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0, &qword_24F9664A0);
    sub_24EA906C0();
    v47 = v88;
    v45 = sub_24F928E38();
    v88 = v47;
    (*(v27 + 8))(v46, v26);
  }

  v48 = v86;
  v49 = v84;
  *(v89 + qword_27F39DC38) = v45;
  v50 = v77;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v54 = v87;
  v92(v50, v87);
  if (!v53 || (v55._countAndFlagsBits = v51, v55._object = v53, ProductShelfOrderingId.init(rawValue:)(v55), v56 = v90, v90 == 12))
  {
    swift_beginAccess();
    v56 = byte_27F2267E0;
  }

  v57 = v89;
  *(v89 + *(*v89 + 184)) = v56;
  v58 = v78;
  sub_24F928398();
  v59 = sub_24F928278();
  v60 = v58;
  v61 = v92;
  v92(v60, v54);
  *(v57 + *(*v57 + 200)) = v59 & 1;
  v62 = v79;
  sub_24F928398();
  sub_24F928368();
  v86 = v44;
  v61(v62, v54);
  v63 = (v57 + *(*v57 + 192));
  v64 = v91;
  *v63 = v90;
  v63[1] = v64;
  sub_24F928398();
  *(v57 + *(*v57 + 208)) = _sSo26ASKPagePresentationOptionsV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v62);
  v65 = v81;
  (*(v80 + 16))(v81, v41, v54);
  v66 = v49;
  v67 = *(v49 + 16);
  v68 = v82;
  v69 = v85;
  v67(v82, v48, v85);
  v70 = BasePage.init(deserializing:using:)(v65, v68);
  (*(v66 + 8))(v48, v69);
  v61(v41, v54);
  return v70;
}

void *sub_24EA8B1BC(char *a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v94 = sub_24F9285B8();
  v87 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v84 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  v13 = sub_24F928388();
  v89 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v83 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v73 - v16;
  MEMORY[0x28223BE20](v17);
  v81 = &v73 - v18;
  MEMORY[0x28223BE20](v19);
  v80 = &v73 - v20;
  MEMORY[0x28223BE20](v21);
  v78 = &v73 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  v26 = sub_24F928E68();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v76 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v73 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v73 - v33;
  v85 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v35 = v27;
  v36 = *(v89 + 8);
  v90 = v13;
  v37 = v13;
  v38 = v36;
  v88 = v89 + 8;
  v36(v25, v37);
  v39 = *(v27 + 48);
  v40 = v39(v12, 1, v26);
  v77 = v35;
  if (v40 == 1)
  {
    sub_24E601704(v12, qword_27F221C40, &unk_24F967D80);
    v41 = sub_24E60986C(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v35 + 32))(v34, v12, v26);
    (*(v35 + 16))(v31, v34, v26);
    v42 = *(v87 + 16);
    v74 = v39;
    v42(v75, v86, v94);
    type metadata accessor for Shelf(0);
    v43 = v35;
    sub_24EA90A1C(&qword_27F2265E0, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v39 = v74;
    v44 = sub_24F92AE68();
    v41 = sub_24F1A3A24(v44);

    (*(v43 + 8))(v34, v26);
  }

  *(v3 + qword_27F39DC30) = v41;
  v45 = v78;
  v46 = v85;
  sub_24F928398();
  v47 = v79;
  sub_24F9281F8();
  v48 = v45;
  v49 = v38;
  v38(v48, v90);
  if (v39(v47, 1, v26) == 1)
  {
    sub_24E601704(v47, qword_27F221C40, &unk_24F967D80);
    v50 = sub_24E6099AC(MEMORY[0x277D84F90]);
  }

  else
  {
    v51 = v76;
    v52 = v77;
    (*(v77 + 32))(v76, v47, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0, &qword_24F9664A0);
    sub_24EA909C8();
    v53 = v91;
    v50 = sub_24F928E38();
    v91 = v53;
    (*(v52 + 8))(v51, v26);
  }

  v54 = v87;
  *(v3 + qword_27F39DC38) = v50;
  v55 = v80;
  sub_24F928398();
  v56 = sub_24F928348();
  v58 = v57;
  v59 = v90;
  v49(v55, v90);
  v60 = 0x4F746C7561666564;
  if (v58)
  {
    v60 = v56;
  }

  v61 = 0xEF676E6972656472;
  if (v58)
  {
    v61 = v58;
  }

  v62 = (v3 + *(*v3 + 184));
  *v62 = v60;
  v62[1] = v61;
  v63 = v81;
  sub_24F928398();
  v64 = sub_24F928278();
  v49(v63, v59);
  *(v3 + *(*v3 + 200)) = v64 & 1;
  v65 = v82;
  sub_24F928398();
  sub_24F928368();
  v49(v65, v59);
  v66 = (v3 + *(*v3 + 192));
  v67 = v93;
  *v66 = v92;
  v66[1] = v67;
  sub_24F928398();
  *(v3 + *(*v3 + 208)) = _sSo26ASKPagePresentationOptionsV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v65);
  v68 = v83;
  (*(v89 + 16))(v83, v46, v59);
  v69 = v84;
  v70 = v86;
  (*(v54 + 16))(v84, v86, v94);
  v71 = BasePage.init(deserializing:using:)(v68, v69);
  (*(v54 + 8))(v70, v94);
  v49(v46, v59);
  return v71;
}

void *sub_24EA8BA70(uint64_t a1)
{

  return _s12GameStoreKit21ShelfBasedProductPageC4from04fullF13FetchedActionACSgAF_AA0K0CtcfC_0(v2, a1);
}

double sub_24EA8BB00@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*(v1 + qword_27F39B8D8) + 240);
  if (v2)
  {
    sub_24E60169C(v2 + 144, a1, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t ShelfBasedProductPage.regularPriceFormatted.getter()
{
  v1 = *(v0 + qword_27F39B920);

  return v1;
}

uint64_t ShelfBasedProductPage.updateBuyParams.getter()
{
  v1 = *(v0 + qword_27F39B938);

  return v1;
}

void ShelfBasedProductPage.askToBuy.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + qword_27F39B958);
  v3 = *(v1 + qword_27F39B958 + 8);
  v4 = *(v1 + qword_27F39B958 + 16);
  v5 = *(v1 + qword_27F39B958 + 24);
  v6 = *(v1 + qword_27F39B958 + 32);
  v7 = *(v1 + qword_27F39B958 + 40);
  v8 = *(v1 + qword_27F39B958 + 48);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_24E901B80(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t ShelfBasedProductPage.mediaSectionTitle.getter()
{
  v1 = *(v0 + qword_27F39B960);

  return v1;
}

uint64_t sub_24EA8BCA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39B8D0;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_24EA8BD08()
{
  swift_beginAccess();

  return result;
}

void *ShelfBasedProductPage.pageTopBackgroundColor.getter()
{
  v1 = *(v0 + qword_27F39B940);
  v2 = v1;
  return v1;
}

void *ShelfBasedProductPage.pageBottomBackgroundColor.getter()
{
  v1 = *(v0 + qword_27F39B948);
  v2 = v1;
  return v1;
}

double sub_24EA8BE44()
{

  sub_24E901BD0(*(v0 + qword_27F39B958), *(v0 + qword_27F39B958 + 8), *(v0 + qword_27F39B958 + 16), *(v0 + qword_27F39B958 + 24), *(v0 + qword_27F39B958 + 32), *(v0 + qword_27F39B958 + 40), *(v0 + qword_27F39B958 + 48));

  return result;
}

char *ShelfBasedProductPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + *(*v0 + 192), &qword_27F2129B0, &unk_24F945320);

  sub_24E901BD0(*(v0 + qword_27F39B958), *(v0 + qword_27F39B958 + 8), *(v0 + qword_27F39B958 + 16), *(v0 + qword_27F39B958 + 24), *(v0 + qword_27F39B958 + 32), *(v0 + qword_27F39B958 + 40), *(v0 + qword_27F39B958 + 48));

  return v0;
}

uint64_t ShelfBasedProductPage.__deallocating_deinit()
{
  ShelfBasedProductPage.deinit();

  return swift_deallocClassInstance();
}

double sub_24EA8C2A8@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*(*v1 + qword_27F39B8D8) + 240);
  if (v2)
  {
    sub_24E60169C(v2 + 144, a1, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

char sub_24EA8C300@<W0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  result = ProductShelfOrderingId.init(rawValue:)(v9).value;
  if (v16 == 12)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    *a3 = v16;
    sub_24F9282B8();
    v11 = sub_24F92AC28();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_24E601704(v8, &qword_27F2213B0, &qword_24F965EC0);
      v13 = MEMORY[0x277D84F90];
    }

    else
    {
      v13 = sub_24F92ABB8();
      (*(v12 + 8))(v8, v11);
    }

    v14 = sub_24E8E8074(v13);

    a3[1] = v14;
  }

  return result;
}

uint64_t sub_24EA8C4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  *a3 = a1;
  a3[1] = a2;

  sub_24F9282B8();
  v9 = sub_24F92AC28();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F2213B0, &qword_24F965EC0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = sub_24F92ABB8();
    (*(v10 + 8))(v8, v9);
  }

  v12 = sub_24E8E8074(v11);

  a3[2] = v12;
  return result;
}

void *_s12GameStoreKit21ShelfBasedProductPageC4fromACSgAA0fG0CSg_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v2 - 8);
  v235 = &v220[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v251 = &v220[-v5];
  MEMORY[0x28223BE20](v6);
  v252 = &v220[-v7];
  v259 = sub_24F928818();
  v257 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v256 = &v220[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v220[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v220[-v13];
  v15 = sub_24F91F4A8();
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v245 = &v220[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v248 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v263 = &v220[-v18];
  v266 = sub_24F91F6B8();
  *&v261 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v250 = &v220[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v220[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v220[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v220[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v31 = &v220[-v30];
  if (!a1)
  {
    return 0;
  }

  v247 = v11;
  v258 = v14;
  v32 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();
  v260 = a1;
  v33 = *(a1 + v32);
  v295 = 0;
  memset(v294, 0, sizeof(v294));
  v34 = *(v16 + 7);
  v255 = v31;
  v34(v31, 1, 1, v15);
  v35 = sub_24F91F648();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  v36 = sub_24F929608();
  (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  v254 = v28;
  v34(v28, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50, &unk_24F97B600);
  swift_allocObject();
  v246 = v33;

  v253 = sub_24F9280D8();
  v262 = type metadata accessor for Shelf(0);
  v265 = swift_allocObject();
  sub_24E60169C(v294, &v288, &qword_27F235830, &qword_24F93B8C0);
  v243 = v16;
  v244 = v15;
  if (*(&v289 + 1))
  {
    v291 = v288;
    v292 = v289;
    v293 = v290;
  }

  else
  {
    v38 = v250;
    sub_24F91F6A8();
    v39 = sub_24F91F668();
    v41 = v40;
    (*(v261 + 8))(v38, v266);
    *&v284 = v39;
    *(&v284 + 1) = v41;
    sub_24F92C7F8();
    sub_24E601704(&v288, &qword_27F235830, &qword_24F93B8C0);
  }

  v42 = v265;
  v43 = v265 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v44 = v292;
  *v43 = v291;
  *(v43 + 16) = v44;
  *(v43 + 32) = v293;
  v250 = v22;
  sub_24E60169C(v22, v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v42 + 16) = 26624;
  *(v42 + 18) = 0;
  v45 = MEMORY[0x277D84F90];
  *(v42 + 24) = MEMORY[0x277D84F90];
  LOBYTE(v284) = 0;
  *(v42 + 32) = sub_24F2EBA74(v45, &v284);
  sub_24E60169C(v255, v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = 0;
  v46 = (v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  *v46 = 0x6E6F6D6D6F63;
  v46[1] = 0xE600000000000000;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = 0;
  *(v42 + 40) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = 0;
  v47 = v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 32) = 0u;
  *(v47 + 56) = 0;
  *(v47 + 64) = 0;
  *(v47 + 48) = 3221225472;
  v48 = (v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v48 = 0;
  v48[1] = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
  v249 = v25;
  sub_24E60169C(v25, v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v254, v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = 1;
  v49 = v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0x8000;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v253;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v45;
  v50 = *(v42 + 24);
  v51 = sub_24EA90A64();

  v52 = 0;
  v287 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v51);
  v266 = v50 + 32;
  v261 = xmmword_24F950E90;
  v53 = &qword_27F226840;
  while (2)
  {
    while (2)
    {
      v54 = 0uLL;
      v55 = *(v50 + 16);
      if (v52 == v55)
      {
LABEL_8:
        v273 = 0;
        v52 = v55;
        v271 = v54;
        v272 = v54;
        goto LABEL_12;
      }

      while (1)
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v52 >= *(v50 + 16))
        {
          goto LABEL_39;
        }

        sub_24E615E00(v266 + 40 * v52++, &v271);
LABEL_12:
        v269[0] = v271;
        v269[1] = v272;
        v270 = v273;
        if (!*(&v272 + 1))
        {
          memset(v274, 0, 24);
          *(&v274[1] + 8) = v261;
LABEL_20:
          sub_24E601704(v274, &qword_27F226830, &unk_24F97B610);
          v280 = 0;
          v278 = 0u;
          v279 = 0u;
LABEL_21:
          sub_24E601704(&v278, &qword_27F222730, &unk_24F9E1470);
          v284 = 0u;
          v285 = 0u;
          v286 = 0;
          goto LABEL_22;
        }

        sub_24E612C80(v269, v268);
        sub_24E615E00(v268, &v267);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v274, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v268);
        if (*(&v274[1] + 1) == 1)
        {
          goto LABEL_20;
        }

        v275 = v274[0];
        v276 = v274[1];
        v277 = *&v274[2];
        if (*(&v274[1] + 1))
        {
          break;
        }

        sub_24E601704(&v275, &qword_27F222730, &unk_24F9E1470);
        v54 = 0uLL;
        if (v52 == v55)
        {
          goto LABEL_8;
        }
      }

      *(&v276 + 1) = *(&v274[1] + 1);
      result = sub_24E60169C(&v275, v274, &qword_27F222730, &unk_24F9E1470);
      if (!*(&v274[1] + 1))
      {
        goto LABEL_155;
      }

      sub_24E612C80(v274, &v278);
      sub_24E601704(&v275, &qword_27F222730, &unk_24F9E1470);
      if (!*(&v279 + 1))
      {
        goto LABEL_21;
      }

      sub_24E612C80(&v278, &v281);
      v58 = *(&v282 + 1);
      v59 = v283;
      v60 = __swift_project_boxed_opaque_existential_1(&v281, *(&v282 + 1));
      v61 = v58;
      v51 = v60;
      if ((PersonalizableModel.needsClientPersonalization.getter(v61, v59) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v281);
        continue;
      }

      break;
    }

    sub_24E612C80(&v281, &v284);
LABEL_22:
    v281 = v284;
    v282 = v285;
    v283 = v286;
    if (*(&v285 + 1))
    {
      sub_24E612C80(&v281, &v278);
      v56 = *(&v279 + 1);
      v57 = v280;
      __swift_project_boxed_opaque_existential_1(&v278, *(&v279 + 1));
      (*(v57 + 16))(&v275, v56, v57);
      LOBYTE(v57) = v275;
      __swift_destroy_boxed_opaque_existential_1(&v278);
      v51 = &v287;
      sub_24ED7CC74(&v284, v57);
      continue;
    }

    break;
  }

  v62 = v265;
  *(v265 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v287;
  v63 = (v62 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  *v63 = 0u;
  v63[1] = 0u;
  v51 = *(v62 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (v51 >> 62)
  {
LABEL_40:
    v64 = sub_24F92C738();
    v66 = v249;
    v65 = v250;
    if (v64)
    {
      goto LABEL_31;
    }

LABEL_41:

    goto LABEL_42;
  }

  v64 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v66 = v249;
  v65 = v250;
  if (!v64)
  {
    goto LABEL_41;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
  if (v64 < 1)
  {
    goto LABEL_150;
  }

  v266 = v51 & 0xC000000000000001;
  v67 = (v248 + 8);

  v68 = 0;
  v69 = v51;
  do
  {
    if (v266)
    {
      MEMORY[0x253052270](v68, v51);
    }

    else
    {
    }

    ++v68;
    sub_24EA90AB8();
    sub_24F9288B8();
    v70 = v263;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v284);
    (*v67)(v70, v264);
    v51 = v69;
  }

  while (v64 != v68);

  v66 = v249;
  v65 = v250;
LABEL_42:
  sub_24E601704(v254, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v65, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v66, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v255, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v294, &qword_27F235830, &qword_24F93B8C0);
  v71 = v246;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v284 = v71;
  sub_24E81E6DC(v265, 0x756B636F4C706F74, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v73 = v284;
  *&v275 = sub_24E6098B8(MEMORY[0x277D84F90]);
  v65 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  v53 = *(v260 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering);
  v265 = v73;
  if (!v53)
  {
    v75 = 0;
    goto LABEL_71;
  }

  if (v53 >> 62)
  {
    goto LABEL_151;
  }

  v74 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
  v75 = MEMORY[0x277D84F90];
  if (!v74)
  {
LABEL_71:
    v91 = v260;
    sub_24E989C48(v75, 2);
    v92 = *(v91 + v65);
    if (v92)
    {
      if (v92 >> 62)
      {
        v93 = sub_24F92C738();
      }

      else
      {
        v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v94 = MEMORY[0x277D84F90];
      if (v93)
      {
        *&v278 = MEMORY[0x277D84F90];
        result = sub_24F457B3C(0, v93 & ~(v93 >> 63), 0);
        if (v93 < 0)
        {
          goto LABEL_154;
        }

        v95 = 0;
        v94 = v278;
        do
        {
          if ((v92 & 0xC000000000000001) != 0)
          {
            v96 = MEMORY[0x253052270](v95, v92);
            v97 = *(v96 + 32);
            if (!v97)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v96 = *(v92 + 8 * v95 + 32);

            v97 = *(v96 + 32);
            if (!v97)
            {
LABEL_81:
              v100 = *(v96 + 16);
              v101 = 0x68736E6565726373;
              if (v100 != 2)
              {
                v101 = 0x666C656873;
              }

              v102 = 0xEB0000000073746FLL;
              if (v100 != 2)
              {
                v102 = 0xE500000000000000;
              }

              v103 = 0x756B636F4C706F74;
              if (!*(v96 + 16))
              {
                v103 = 0x7975426F546B7361;
              }

              v104 = 0xE900000000000070;
              if (!*(v96 + 16))
              {
                v104 = 0xEF74736575716552;
              }

              if (*(v96 + 16) <= 1u)
              {
                v98 = v103;
              }

              else
              {
                v98 = v101;
              }

              if (*(v96 + 16) <= 1u)
              {
                v99 = v104;
              }

              else
              {
                v99 = v102;
              }

              goto LABEL_95;
            }
          }

          v98 = *(v96 + 24);
          v99 = v97;
LABEL_95:
          *&v281 = v98;
          *(&v281 + 1) = v99;

          sub_24F92C7F8();

          *&v278 = v94;
          v106 = *(v94 + 16);
          v105 = *(v94 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_24F457B3C((v105 > 1), v106 + 1, 1);
            v94 = v278;
          }

          ++v95;
          *(v94 + 16) = v106 + 1;
          v107 = v94 + 40 * v106;
          v108 = v284;
          v109 = v285;
          *(v107 + 64) = v286;
          *(v107 + 32) = v108;
          *(v107 + 48) = v109;
        }

        while (v93 != v95);
      }
    }

    else
    {
      v94 = 0;
    }

    v110 = v260;
    sub_24E989C48(v94, 0);
    v111 = *(v110 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay);
    v112 = *(v110 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle);
    v113 = *(v110 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork);
    v114 = *(v110 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo);
    v65 = *(v110 + 48);
    v255 = type metadata accessor for Uber();
    v253 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226848, &unk_24F9FAA20);
    v115 = swift_allocObject();
    if (v113)
    {
      v116 = *(v113 + 16);

      v115[4] = v116;
      v115[5] = v117;
      if (v111)
      {
LABEL_102:
        v118 = *(v111 + 16);

LABEL_105:
        v115[6] = v118;
        v115[7] = v119;
        v120 = *&aBackgrou[8 * v112 + 8];
        v115[8] = *&aAbove_3[8 * v112];
        v115[9] = v120;
        v246 = v111;
        v266 = v65;
        v263 = v114;
        v264 = v113;
        if (v114)
        {
          v262 = v112;
          v121 = v243;
          v122 = v244;
          *&v261 = *(v243 + 2);
          v123 = v245;
          (v261)(v245, v114 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v244);

          swift_retain_n();
          swift_retain_n();

          v124 = sub_24F91F398();
          v126 = v125;
          v127 = *(v121 + 1);
          v127(v123, v122);
          v115[10] = v124;
          v115[11] = v126;
          (v261)(v123, v114 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v122);
          v114 = sub_24F91F398();
          v129 = v128;
          v130 = v122;
          v65 = v266;
          v127(v123, v130);
          LOBYTE(v112) = v262;
        }

        else
        {
          v115[10] = 0;
          v115[11] = 0;

          swift_retain_n();

          v129 = 0;
        }

        v112 = v112;
        v115[12] = v114;
        v115[13] = v129;
        if (v65)
        {
          v131 = *(v65 + 16);
        }

        else
        {
          v131 = 0;
          v132 = 0;
        }

        v133 = v246;
        v53 = 0;
        v115[14] = v131;
        v115[15] = v132;
        v115[16] = 0;
        v115[17] = 0;
        v134 = MEMORY[0x277D84F90];
        while (1)
        {
          v135 = 7;
          if (v53 > 7)
          {
            v135 = v53;
          }

          v136 = (v135 + 1);
          v137 = 16 * v53 + 40;
          do
          {
            if (v53 == 7)
            {
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v146 = sub_24F92B708();

              *&v281 = v146;
              sub_24F92C7F8();
              v147 = v285;
              v148 = v253;
              *(v253 + 80) = v284;
              *(v148 + 96) = v147;
              *(v148 + 112) = v286;
              *(v148 + 16) = v112;
              v150 = v263;
              v149 = v264;
              *(v148 + 24) = v264;
              v151 = v133;
              if (!v133)
              {

                v151 = v149;
              }

              v152 = v150 != 0;
              *(v148 + 32) = v151;
              *(v148 + 40) = v150;
              *(v148 + 48) = v150;
              *(v148 + 56) = v65;
              *(v148 + 64) = 0;
              *(v148 + 72) = 0;
              v153 = v150 | v149;
              v154 = v257;
              v155 = v260;
              if (v153)
              {
LABEL_133:
                *(v148 + 17) = v152;
                v234 = 40;
              }

              else
              {
                if (v65)
                {

                  v156 = ASKDeviceTypeGetCurrent();
                  v157 = sub_24F92B0D8();
                  v159 = v158;
                  if (v157 == sub_24F92B0D8() && v159 == v160)
                  {

                    goto LABEL_132;
                  }

                  v161 = sub_24F92CE08();

                  if (v161)
                  {
LABEL_132:
                    v152 = 2;
                    v148 = v253;
                    goto LABEL_133;
                  }

                  v148 = v253;
                }

                sub_24E6585F8(v148 + 80);
                swift_deallocPartialClassInstance();
                v234 = 0;
                v253 = 0;
              }

              sub_24E954344(v265);
              v227 = v162;

              v284 = 0u;
              v285 = 0u;
              LODWORD(v233) = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete);
              v226 = v275;
              v241 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy);
              v163 = *(v154 + 16);
              v224 = v154 + 16;
              v225 = v163;
              v163(v258, (v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics), v259);
              v242 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent);
              v255 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner);
              v263 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner);
              v240 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges);
              v264 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails);
              v164 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted + 8);
              v232 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
              v239 = v164;
              v231 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier);
              LODWORD(v230) = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier + 8);
              *&v261 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties);
              v165 = v155;
              v166 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams + 8);
              v229 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
              v245 = v166;
              v167 = v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
              v262 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork);
              v265 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork);
              v168 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
              v237 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
              v238 = v168;
              v223 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme);
              v222 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle);
              v169 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
              v236 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
              v243 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor);
              v244 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor);
              v171 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32);
              v170 = *(v167 + 40);
              v266 = *(v165 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction);
              v172 = *(v167 + 48);
              v254 = *(v165 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction);
              v250 = *(v165 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction);
              v249 = *(v165 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction);
              v248 = *(v165 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction);
              v173 = *(v165 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle + 8);
              v228 = *(v165 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
              v221 = *(v165 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews);
              type metadata accessor for ShelfBasedProductPage(0);
              v174 = swift_allocObject();
              v175 = qword_27F39B8D0;
              v176 = MEMORY[0x277D84F90];
              *(v174 + qword_27F39B8D0) = MEMORY[0x277D84F90];
              *(v174 + qword_27F39B8D8) = v165;
              *(v174 + qword_27F39B970) = v255;
              *(v174 + qword_27F39B978) = 0;
              *(v174 + qword_27F39B980) = v263;
              *(v174 + qword_27F39B910) = v240;
              *(v174 + qword_27F39B918) = v264;
              v177 = (v174 + qword_27F39B920);
              v178 = v239;
              *v177 = v232;
              v177[1] = v178;
              v179 = v174 + qword_27F39B930;
              *v179 = v231;
              v179[8] = v230;
              v180 = (v174 + qword_27F39B938);
              v181 = v245;
              *v180 = v229;
              v180[1] = v181;
              *(v174 + qword_27F39B968) = v261;
              v182 = (v174 + qword_27F39B958);
              v183 = v238;
              *v182 = v237;
              v182[1] = v183;
              v182[2] = v236;
              v182[3] = v169;
              v231 = v170;
              v232 = v169;
              v229 = v172;
              v230 = v171;
              v182[4] = v171;
              v182[5] = v170;
              v182[6] = v172;
              *(v174 + qword_27F39B8F8) = v253;
              *(v174 + qword_27F39B900) = v262;
              *(v174 + qword_27F39B908) = v265;
              v184 = (v174 + qword_27F39B960);
              *v184 = v228;
              v184[1] = v173;
              v228 = v173;
              swift_beginAccess();
              *(v174 + v175) = v176;
              v185 = v222;
              *(v174 + qword_27F39B928) = v223;
              *(v174 + qword_27F39B950) = v185;
              v186 = v244;
              *(v174 + qword_27F39B940) = v243;
              *(v174 + qword_27F39B948) = v186;
              *(v174 + qword_27F39B8E0) = v266;
              *(v174 + qword_27F39B8E8) = v254;
              v187 = v249;
              *(v174 + qword_27F39B8F0) = v250;
              *(v174 + qword_27F39B988) = v187;
              *(v174 + qword_27F39B990) = 0;
              *(v174 + qword_27F39B998) = v248;
              *(v174 + qword_27F39B9A0) = v221;
              sub_24E60169C(&v284, &v281, &qword_27F2129B0, &unk_24F945320);
              v188 = v247;
              v189 = v259;
              v190 = v225;
              v225(v247, v258, v259);
              v191 = v226;
              *(v174 + qword_27F39DC30) = v227;
              *(v174 + qword_27F39DC38) = v191;
              *(v174 + *(*v174 + 184)) = 0;
              sub_24E60169C(&v281, v174 + *(*v174 + 192), &qword_27F2129B0, &unk_24F945320);
              *(v174 + *(*v174 + 200)) = (v233 & 1) == 0;
              *(v174 + *(*v174 + 208)) = v234;
              v192 = v256;
              v190(v256, v188, v189);
              v193 = sub_24F9285B8();
              v194 = *(v193 - 8);
              v195 = v252;
              (*(v194 + 56))(v252, 1, 1, v193);
              v174[2] = v241;
              v190(v174 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v192, v189);
              v233 = v174;
              *(v174 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v242;
              v196 = v251;
              sub_24E60169C(v195, v251, &qword_27F2218B0, &unk_24F975980);
              v234 = v194;
              v197 = *(v194 + 48);
              v227 = v193;
              LODWORD(v193) = v197(v196, 1, v193);

              v198 = v243;
              v199 = v244;

              if (v193 == 1)
              {

                sub_24E901B80(v237, v238, v236, v232, v230, v231, v229);

                v200 = &qword_27F2218B0;
                v201 = &unk_24F975980;
                sub_24E601704(v195, &qword_27F2218B0, &unk_24F975980);
                v202 = *(v257 + 8);
                v203 = v259;
                v202(v256, v259);
                v202(v247, v203);
                sub_24E601704(&v281, &qword_27F2129B0, &unk_24F945320);
                v202(v258, v203);
                sub_24E601704(&v284, &qword_27F2129B0, &unk_24F945320);
                v204 = v196;
                goto LABEL_144;
              }

              v243 = v197;

              v244 = v198;
              v245 = v199;

              sub_24E901B80(v237, v238, v236, v232, v230, v231, v229);
              v205 = qword_27F2105F0;

              if (v205 != -1)
              {
                swift_once();
              }

              v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
              __swift_project_value_buffer(v206, qword_27F22D8D8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
              v207 = v251;
              sub_24F9285C8();
              v208 = *&v274[0];
              if (*&v274[0])
              {
              }

              v209 = *(v234 + 8);
              v210 = v227;
              v234 += 8;
              v209(v207, v227);
              if (v208)
              {
                v211 = v252;
                v212 = v235;
                sub_24E60169C(v252, v235, &qword_27F2218B0, &unk_24F975980);
                if (v243(v212, 1, v210) == 1)
                {

                  v213 = v212;
                  v200 = &qword_27F2218B0;
                  v201 = &unk_24F975980;
                  sub_24E601704(v211, &qword_27F2218B0, &unk_24F975980);
                  v214 = *(v257 + 8);
                  v215 = v259;
                  v214(v256, v259);
                  v214(v247, v215);
                  sub_24E601704(&v281, &qword_27F2129B0, &unk_24F945320);
                  v214(v258, v215);
                  sub_24E601704(&v284, &qword_27F2129B0, &unk_24F945320);
                  v204 = v213;
                  goto LABEL_144;
                }

                sub_24ECDF110();

                sub_24E601704(v211, &qword_27F2218B0, &unk_24F975980);
                v218 = *(v257 + 8);
                v219 = v259;
                v218(v256, v259);
                v218(v247, v219);
                sub_24E601704(&v281, &qword_27F2129B0, &unk_24F945320);
                v218(v258, v219);
                sub_24E601704(&v284, &qword_27F2129B0, &unk_24F945320);
                v209(v235, v210);
              }

              else
              {

                sub_24E601704(v252, &qword_27F2218B0, &unk_24F975980);
                v216 = *(v257 + 8);
                v217 = v259;
                v216(v256, v259);
                v216(v247, v217);
                v200 = &qword_27F2129B0;
                v201 = &unk_24F945320;
                sub_24E601704(&v281, &qword_27F2129B0, &unk_24F945320);
                v216(v258, v217);
                v204 = &v284;
LABEL_144:
                sub_24E601704(v204, v200, v201);
              }

              return v233;
            }

            v53 = (v53 + 1);
            if (v136 == v53)
            {
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              v74 = sub_24F92C738();
              goto LABEL_45;
            }

            v138 = v137 + 16;
            v139 = *(v115 + v137);
            v137 += 16;
          }

          while (!v139);
          v140 = v133;
          v141 = v112;
          v142 = *(v115 + v138 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_24E615CF4(0, *(v134 + 2) + 1, 1, v134);
          }

          v144 = *(v134 + 2);
          v143 = *(v134 + 3);
          if (v144 >= v143 >> 1)
          {
            v134 = sub_24E615CF4((v143 > 1), v144 + 1, 1, v134);
          }

          *(v134 + 2) = v144 + 1;
          v145 = &v134[16 * v144];
          *(v145 + 4) = v142;
          *(v145 + 5) = v139;
          v112 = v141;
          v133 = v140;
          v65 = v266;
        }
      }
    }

    else
    {
      v115[4] = 0;
      v115[5] = 0;
      if (v111)
      {
        goto LABEL_102;
      }
    }

    v118 = 0;
    v119 = 0;
    goto LABEL_105;
  }

  v266 = v65;
  *&v278 = MEMORY[0x277D84F90];
  result = sub_24F457B3C(0, v74 & ~(v74 >> 63), 0);
  if ((v74 & 0x8000000000000000) == 0)
  {
    v76 = 0;
    v75 = v278;
    while (1)
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x253052270](v76, v53);
        v78 = *(v77 + 32);
        if (!v78)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v77 = v53[v76 + 4];

        v78 = *(v77 + 32);
        if (!v78)
        {
LABEL_52:
          v81 = *(v77 + 16);
          v82 = 0x68736E6565726373;
          if (v81 != 2)
          {
            v82 = 0x666C656873;
          }

          v83 = 0xEB0000000073746FLL;
          if (v81 != 2)
          {
            v83 = 0xE500000000000000;
          }

          v84 = 0x756B636F4C706F74;
          if (!*(v77 + 16))
          {
            v84 = 0x7975426F546B7361;
          }

          v85 = 0xE900000000000070;
          if (!*(v77 + 16))
          {
            v85 = 0xEF74736575716552;
          }

          if (*(v77 + 16) <= 1u)
          {
            v79 = v84;
          }

          else
          {
            v79 = v82;
          }

          if (*(v77 + 16) <= 1u)
          {
            v80 = v85;
          }

          else
          {
            v80 = v83;
          }

          goto LABEL_66;
        }
      }

      v79 = *(v77 + 24);
      v80 = v78;
LABEL_66:
      *&v281 = v79;
      *(&v281 + 1) = v80;

      sub_24F92C7F8();

      *&v278 = v75;
      v87 = *(v75 + 16);
      v86 = *(v75 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_24F457B3C((v86 > 1), v87 + 1, 1);
        v75 = v278;
      }

      ++v76;
      *(v75 + 16) = v87 + 1;
      v88 = v75 + 40 * v87;
      v89 = v284;
      v90 = v285;
      *(v88 + 64) = v286;
      *(v88 + 32) = v89;
      *(v88 + 48) = v90;
      if (v74 == v76)
      {
        v65 = v266;
        goto LABEL_71;
      }
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

void *_s12GameStoreKit21ShelfBasedProductPageC4from04fullF13FetchedActionACSgAF_AA0K0CtcfC_0(uint64_t a1, uint64_t a2)
{
  v205 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v3 - 8);
  v176 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v198 = (&v147 - v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v147 - v8;
  v10 = sub_24F928818();
  v203 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v199 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v147 - v13;
  MEMORY[0x28223BE20](v15);
  v204 = &v147 - v16;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v193 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v208 = &v147 - v17;
  v211 = sub_24F91F6B8();
  *&v206 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v19 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v147 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v147 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v147 - v30;
  if (a1)
  {
    v194 = v9;
    v195 = v14;
    v202 = v10;
    v32 = qword_27F39DC30;
    swift_beginAccess();
    v33 = *(a1 + v32);
    *&v239[0] = 0x756B636F4C706F74;
    *(&v239[0] + 1) = 0xE900000000000070;

    v192 = v33;

    sub_24F92C7F8();
    v34 = sub_24F91F4A8();
    memset(v239, 0, sizeof(v239));
    v240 = 0;
    v35 = *(*(v34 - 8) + 56);
    v197 = v31;
    v35(v31, 1, 1, v34);
    v36 = sub_24F91F648();
    v37 = *(*(v36 - 8) + 56);
    v200 = v25;
    v37(v25, 1, 1, v36);
    v38 = sub_24F929608();
    v39 = *(*(v38 - 8) + 56);
    v201 = v22;
    v39(v22, 1, 1, v38);
    v35(v28, 1, 1, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50, &unk_24F97B600);
    swift_allocObject();
    v40 = sub_24F9280D8();
    v207 = type metadata accessor for Shelf(0);
    v210 = swift_allocObject();
    sub_24E60169C(v239, &v233, &qword_27F235830, &qword_24F93B8C0);
    v196 = a1;
    if (*(&v234 + 1))
    {
      v236 = v233;
      v237 = v234;
      v238 = v235;
    }

    else
    {
      sub_24F91F6A8();
      v42 = sub_24F91F668();
      v44 = v43;
      (*(v206 + 8))(v19, v211);
      *&v229 = v42;
      *(&v229 + 1) = v44;
      sub_24F92C7F8();
      sub_24E601704(&v233, &qword_27F235830, &qword_24F93B8C0);
    }

    v45 = v210;
    v46 = v210 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
    v47 = v237;
    *v46 = v236;
    *(v46 + 16) = v47;
    *(v46 + 32) = v238;
    sub_24E60169C(v201, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
    *(v45 + 16) = 26624;
    *(v45 + 18) = 0;
    v48 = MEMORY[0x277D84F90];
    *(v45 + 24) = MEMORY[0x277D84F90];
    LOBYTE(v229) = 0;
    *(v45 + 32) = sub_24F2EBA74(v48, &v229);
    sub_24E60169C(v197, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = 0;
    v49 = (v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
    *v49 = 0x6E6F6D6D6F63;
    v49[1] = 0xE600000000000000;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = 0;
    *(v45 + 40) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = 0;
    v50 = v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
    *v50 = 0u;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    *(v50 + 48) = 3221225472;
    v51 = (v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    *v51 = 0;
    v51[1] = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
    sub_24E60169C(v200, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
    v191 = v28;
    sub_24E60169C(v28, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = 1;
    v52 = v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
    *v52 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = 0x8000;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v40;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v48;
    v53 = *(v45 + 24);
    v54 = sub_24EA90A64();
    v190 = v40;

    v55 = 0;
    v232 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v54);
    v211 = v53 + 32;
    v206 = xmmword_24F950E90;
    while (2)
    {
      v56 = 0uLL;
      v57 = *(v53 + 16);
      if (v55 == v57)
      {
LABEL_8:
        v218 = 0;
        v55 = v57;
        v216 = v56;
        v217 = v56;
        goto LABEL_12;
      }

      while (1)
      {
        if ((v55 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v55 >= *(v53 + 16))
        {
          goto LABEL_56;
        }

        sub_24E615E00(v211 + 40 * v55++, &v216);
LABEL_12:
        v214[0] = v216;
        v214[1] = v217;
        v215 = v218;
        if (!*(&v217 + 1))
        {
          memset(v219, 0, 24);
          *(&v219[1] + 8) = v206;
LABEL_24:
          sub_24E601704(v219, &qword_27F226830, &unk_24F97B610);
          v225 = 0;
          v223 = 0u;
          v224 = 0u;
          goto LABEL_25;
        }

        sub_24E612C80(v214, v213);
        sub_24E615E00(v213, &v212);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v219, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v213);
        if (*(&v219[1] + 1) == 1)
        {
          goto LABEL_24;
        }

        v220 = v219[0];
        v221 = v219[1];
        v222 = *&v219[2];
        if (*(&v219[1] + 1))
        {
          break;
        }

        sub_24E601704(&v220, &qword_27F222730, &unk_24F9E1470);
        v56 = 0uLL;
        if (v55 == v57)
        {
          goto LABEL_8;
        }
      }

      *(&v221 + 1) = *(&v219[1] + 1);
      result = sub_24E60169C(&v220, v219, &qword_27F222730, &unk_24F9E1470);
      if (*(&v219[1] + 1))
      {
        sub_24E612C80(v219, &v223);
        sub_24E601704(&v220, &qword_27F222730, &unk_24F9E1470);
        if (*(&v224 + 1))
        {
          sub_24E612C80(&v223, &v226);
          v58 = *(&v227 + 1);
          v59 = v228;
          v60 = __swift_project_boxed_opaque_existential_1(&v226, *(&v227 + 1));
          v61 = v58;
          v54 = v60;
          if ((PersonalizableModel.needsClientPersonalization.getter(v61, v59) & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(&v226);
            continue;
          }

          sub_24E612C80(&v226, &v229);
LABEL_26:
          v226 = v229;
          v227 = v230;
          v228 = v231;
          if (*(&v230 + 1))
          {
            sub_24E612C80(&v226, &v223);
            v62 = *(&v224 + 1);
            v63 = v225;
            __swift_project_boxed_opaque_existential_1(&v223, *(&v224 + 1));
            (*(v63 + 16))(&v220, v62, v63);
            LOBYTE(v62) = v220;
            __swift_destroy_boxed_opaque_existential_1(&v223);
            v54 = &v232;
            sub_24ED7CC74(&v229, v62);
            continue;
          }

          v64 = v210;
          *(v210 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v232;
          v65 = (v64 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
          *v65 = 0u;
          v65[1] = 0u;
          v54 = *(v64 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
          if (!(v54 >> 62))
          {
            v66 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_31;
          }

LABEL_57:
          v66 = sub_24F92C738();
LABEL_31:
          v67 = v203;
          v68 = v196;
          v70 = v200;
          v69 = v201;
          if (!v66)
          {

            goto LABEL_40;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
          if (v66 < 1)
          {
            __break(1u);
          }

          else
          {
            v211 = v54 & 0xC000000000000001;
            v71 = (v193 + 8);

            v72 = 0;
            v73 = v54;
            do
            {
              if (v211)
              {
                MEMORY[0x253052270](v72, v54);
              }

              else
              {
              }

              ++v72;
              sub_24EA90AB8();
              sub_24F9288B8();
              v74 = v208;
              sub_24F9288C8();

              __swift_destroy_boxed_opaque_existential_1(&v229);
              (*v71)(v74, v209);
              v54 = v73;
            }

            while (v66 != v72);

            v67 = v203;
            v68 = v196;
            v70 = v200;
            v69 = v201;
LABEL_40:
            sub_24E601704(v191, &qword_27F228530, &unk_24F93C6E0);
            sub_24E601704(v69, &qword_27F213E68, &unk_24F93BC80);
            sub_24E601704(v70, &unk_27F22EC30, &qword_24F939880);
            sub_24E601704(v197, &qword_27F228530, &unk_24F93C6E0);
            sub_24E601704(v239, &qword_27F235830, &qword_24F93B8C0);
            v75 = v192;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v229 = v75;
            sub_24E81C630(v210, v241, isUniquelyReferenced_nonNull_native);
            sub_24E6585F8(v241);
            v175 = v229;
            v77 = qword_27F39DC38;
            swift_beginAccess();
            v174 = *(v68 + v77);

            v78 = *(v68 + qword_27F39B8F8);
            v211 = v78;
            if (v78)
            {
              v173 = *(v78 + 32);

              v172 = 40;
            }

            else
            {
              v172 = 0;
              v173 = 0;
            }

            v79 = v204;
            v229 = 0u;
            v230 = 0u;
            v210 = *(v68 + 16);
            v80 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
            swift_beginAccess();
            v81 = *(v67 + 16);
            v169 = (v67 + 16);
            v170 = v81;
            v81(v79, (v68 + v80), v202);
            v190 = *(v68 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
            v148 = qword_27F39B970;
            v149 = qword_27F39B8D8;
            v151 = qword_27F39B910;
            v152 = qword_27F39B980;
            v150 = qword_27F39B918;
            v167 = qword_27F39B920;
            v82 = *(v68 + qword_27F39B920 + 8);
            v168 = *(v68 + qword_27F39B920);
            v187 = v82;
            v164 = qword_27F39B930;
            v166 = *(v68 + qword_27F39B930);
            v165 = *(v68 + qword_27F39B930 + 8);
            v162 = qword_27F39B938;
            v83 = *(v68 + qword_27F39B938 + 8);
            v163 = *(v68 + qword_27F39B938);
            v177 = v83;
            v153 = qword_27F39B968;
            v159 = qword_27F39B958;
            v178 = *(v68 + qword_27F39B958);
            v181 = *(v68 + qword_27F39B958 + 8);
            v186 = *(v68 + qword_27F39B958 + 16);
            v185 = *(v68 + qword_27F39B958 + 24);
            v184 = *(v68 + qword_27F39B958 + 32);
            v84 = *(v68 + qword_27F39B958 + 40);
            v182 = *(v68 + qword_27F39B958 + 48);
            v183 = v84;
            v154 = qword_27F39B908;
            v155 = qword_27F39B900;
            v156 = qword_27F39B960;
            v85 = *(v68 + qword_27F39B960 + 8);
            v157 = *(v68 + qword_27F39B960);
            v189 = v85;
            v161 = *(v68 + qword_27F39B928);
            v160 = *(v68 + qword_27F39B950);
            v179 = *(v68 + qword_27F39B940);
            v180 = *(v68 + qword_27F39B948);
            *&v206 = *(v68 + qword_27F39B8E0);
            v207 = *(v68 + qword_27F39B8E8);
            v200 = *(v68 + qword_27F39B8F0);
            v201 = *(v68 + qword_27F39B998);
            v158 = *(v68 + qword_27F39B9A0);
            v188 = *(v68 + qword_27F39B8D8);
            v86 = v188;
            v88 = *(v68 + qword_27F39B980);
            v191 = *(v68 + qword_27F39B970);
            v87 = v191;
            v192 = v88;
            v171 = *(v68 + qword_27F39B910);
            v89 = v171;
            v193 = *(v68 + qword_27F39B918);
            v90 = v193;
            v197 = *(v68 + qword_27F39B968);
            v91 = v197;
            v92 = *(v68 + qword_27F39B908);
            v208 = *(v68 + qword_27F39B900);
            v209 = v92;
            type metadata accessor for ShelfBasedProductPage(0);
            v93 = swift_allocObject();
            v94 = qword_27F39B8D0;
            *(v93 + qword_27F39B8D0) = MEMORY[0x277D84F90];
            v95 = v148;
            *(v93 + v149) = v86;
            *(v93 + v95) = v87;
            *(v93 + qword_27F39B978) = 0;
            v96 = v151;
            *(v93 + v152) = v88;
            *(v93 + v96) = v89;
            *(v93 + v150) = v90;
            v97 = (v93 + v167);
            v98 = v187;
            *v97 = v168;
            v97[1] = v98;
            v99 = v93 + v164;
            *v99 = v166;
            v99[8] = v165;
            v100 = (v93 + v162);
            v102 = v177;
            v101 = v178;
            *v100 = v163;
            v100[1] = v102;
            *(v93 + v153) = v91;
            v103 = (v93 + v159);
            *v103 = v101;
            v104 = v185;
            v105 = v186;
            v103[1] = v181;
            v103[2] = v105;
            v103[3] = v104;
            v106 = v183;
            v103[4] = v184;
            v103[5] = v106;
            v103[6] = v182;
            *(v93 + qword_27F39B8F8) = v211;
            v107 = v209;
            v108 = v154;
            *(v93 + v155) = v208;
            *(v93 + v108) = v107;
            v109 = (v93 + v156);
            v110 = v189;
            *v109 = v157;
            v109[1] = v110;
            swift_beginAccess();
            *(v93 + v94) = MEMORY[0x277D84F90];
            v111 = v160;
            *(v93 + qword_27F39B928) = v161;
            *(v93 + qword_27F39B950) = v111;
            v112 = v180;
            *(v93 + qword_27F39B940) = v179;
            *(v93 + qword_27F39B948) = v112;
            *(v93 + qword_27F39B8E0) = v206;
            *(v93 + qword_27F39B8E8) = v207;
            *(v93 + qword_27F39B8F0) = v200;
            *(v93 + qword_27F39B988) = v205;
            *(v93 + qword_27F39B990) = 0;
            *(v93 + qword_27F39B998) = v201;
            *(v93 + qword_27F39B9A0) = v158;
            sub_24E60169C(&v229, &v226, &qword_27F2129B0, &unk_24F945320);
            v113 = v195;
            v114 = v202;
            v115 = v170;
            v170(v195, v204, v202);
            v116 = v174;
            *(v93 + qword_27F39DC30) = v175;
            *(v93 + qword_27F39DC38) = v116;
            *(v93 + *(*v93 + 184)) = 0;
            sub_24E60169C(&v226, v93 + *(*v93 + 192), &qword_27F2129B0, &unk_24F945320);
            *(v93 + *(*v93 + 200)) = 0;
            *(v93 + *(*v93 + 208)) = v172;
            v117 = v199;
            v115(v199, v113, v114);
            v118 = v115;
            v119 = sub_24F9285B8();
            v120 = *(v119 - 8);
            v121 = v194;
            (*(v120 + 56))(v194, 1, 1, v119);
            v93[2] = v210;
            v118(v93 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v117, v114);
            v174 = v93;
            *(v93 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v190;
            v122 = v198;
            sub_24E60169C(v121, v198, &qword_27F2218B0, &unk_24F975980);
            v175 = v120;
            v169 = *(v120 + 48);
            v170 = v119;
            LODWORD(v172) = v169(v122, 1, v119);

            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            v123 = v179;
            v124 = v180;
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            v125 = v123;
            v126 = v124;

            sub_24E901B80(v178, v181, v186, v185, v184, v183, v182);
            if (v172 == 1)
            {

              v127 = &qword_27F2218B0;
              v128 = &unk_24F975980;
              sub_24E601704(v194, &qword_27F2218B0, &unk_24F975980);
              v129 = v202;
              v130 = *(v203 + 8);
              v130(v199, v202);
              v130(v195, v129);
              sub_24E601704(&v226, &qword_27F2129B0, &unk_24F945320);
              v130(v204, v129);
              sub_24E601704(&v229, &qword_27F2129B0, &unk_24F945320);
              v131 = v198;
              goto LABEL_52;
            }

            v69 = v125;
            v187 = v126;
            v132 = qword_27F2105F0;

            if (v132 == -1)
            {
LABEL_46:
              v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
              __swift_project_value_buffer(v133, qword_27F22D8D8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
              v134 = v198;
              sub_24F9285C8();
              v135 = v216;
              v136 = v176;
              v137 = v170;
              if (v216)
              {
              }

              v138 = *(v175 + 8);
              v175 += 8;
              v198 = v138;
              (v138)(v134, v137);
              if (v135)
              {
                v139 = v194;
                sub_24E60169C(v194, v136, &qword_27F2218B0, &unk_24F975980);
                if (v169(v136, 1, v137) == 1)
                {

                  v140 = v136;
                  v127 = &qword_27F2218B0;
                  v128 = &unk_24F975980;
                  sub_24E601704(v139, &qword_27F2218B0, &unk_24F975980);
                  v141 = v202;
                  v142 = *(v203 + 8);
                  v142(v199, v202);
                  v142(v195, v141);
                  sub_24E601704(&v226, &qword_27F2129B0, &unk_24F945320);
                  v142(v204, v141);
                  sub_24E601704(&v229, &qword_27F2129B0, &unk_24F945320);
                  v131 = v140;
                  goto LABEL_52;
                }

                sub_24ECDF110();

                sub_24E601704(v139, &qword_27F2218B0, &unk_24F975980);
                v145 = v202;
                v146 = *(v203 + 8);
                v146(v199, v202);
                v146(v195, v145);
                sub_24E601704(&v226, &qword_27F2129B0, &unk_24F945320);
                v146(v204, v145);
                sub_24E601704(&v229, &qword_27F2129B0, &unk_24F945320);
                (v198)(v176, v137);
              }

              else
              {

                sub_24E601704(v194, &qword_27F2218B0, &unk_24F975980);
                v143 = v202;
                v144 = *(v203 + 8);
                v144(v199, v202);
                v144(v195, v143);
                v127 = &qword_27F2129B0;
                v128 = &unk_24F945320;
                sub_24E601704(&v226, &qword_27F2129B0, &unk_24F945320);
                v144(v204, v143);
                v131 = &v229;
LABEL_52:
                sub_24E601704(v131, v127, v128);
              }

              return v174;
            }
          }

          swift_once();
          goto LABEL_46;
        }

LABEL_25:
        sub_24E601704(&v223, &qword_27F222730, &unk_24F9E1470);
        v229 = 0u;
        v230 = 0u;
        v231 = 0;
        goto LABEL_26;
      }

      break;
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}