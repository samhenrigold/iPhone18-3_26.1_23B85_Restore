uint64_t sub_1E15EA3DC()
{
  v1 = *(v0 + 759);
  v2 = *(v0 + 688);
  sub_1E1AF690C();
  *(v0 + 704) = v2;
  if (v1 == *(v0 + 750))
  {
    v5 = *(v0 + 758);
  }

  else
  {
    v3 = *(v0 + 759);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_1E15EAF18(v3);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 328) = v7;
    *(v0 + 304) = v4;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 304);
    sub_1E1AF387C();
    *(v0 + 360) = MEMORY[0x1E69E6370];
    *(v0 + 336) = v3;
    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 336);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v5 = 1;
  }

  *(v0 + 760) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E15EA5CC, 0, 0);
}

uint64_t sub_1E15EA5CC()
{
  v1 = [*(v0 + 640) sharedConnection];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 584);
    *(v0 + 761) = [v1 isAccountModificationAllowed];

    v1 = sub_1E15EA668;
    v2 = v5;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E15EA668()
{
  v1 = *(v0 + 761);
  v2 = *(v0 + 704);
  sub_1E1AF690C();
  *(v0 + 712) = v2;
  if (v1 == *(v0 + 751))
  {
    v6 = *(v0 + 632);
    v4 = *(v0 + 584);
    v3 = 1;
    v7 = (*(v0 + 761) & 1) == 0;
    sub_1E15EAF18(v7);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 424) = v6;
    *(v0 + 400) = v4;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 400);
    sub_1E1AF387C();
    *(v0 + 456) = MEMORY[0x1E69E6370];
    *(v0 + 432) = v7;
    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 432);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  else
  {
    v3 = *(v0 + 760);
  }

  *(v0 + 762) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E15EA860, 0, 0);
}

uint64_t sub_1E15EA860()
{
  v1 = swift_task_alloc();
  v0[90] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6908, &qword_1E1B1CD70);
  v0[91] = v2;
  *v1 = v0;
  v1[1] = sub_1E15EA94C;
  v3 = v0[87];

  return MEMORY[0x1EEE6DDE0](v0 + 71, 0, 0, 0xD00000000000001BLL, 0x80000001E1B69690, sub_1E15EBE24, v3, v2);
}

uint64_t sub_1E15EA94C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E15EAA48, 0, 0);
}

uint64_t sub_1E15EAA48()
{
  v1 = v0[73];
  v0[92] = v0[71];
  return MEMORY[0x1EEE6DFA0](sub_1E15EAA6C, v1, 0);
}

uint64_t sub_1E15EAA6C()
{
  v1 = *(v0 + 736);
  sub_1E1AF690C();
  sub_1E14F9EC0(v1, *(v0 + 576));
  LOBYTE(v1) = v2;

  if (v1)
  {
    v3 = *(v0 + 762);
  }

  else
  {
    v4 = *(v0 + 736);
    v12 = *(v0 + 632);
    v5 = *(v0 + 584);

    sub_1E15EC18C(v6);

    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 488) = v12;
    *(v0 + 464) = v5;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 464);
    sub_1E1AF387C();
    v7 = *(v4 + 16);

    *(v0 + 520) = MEMORY[0x1E69E6530];
    *(v0 + 496) = v7;
    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 496);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
    v3 = 1;
  }

  v13 = v3;
  v8 = *(v0 + 632);
  v9 = *(v0 + 584);

  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(v0 + 552) = v8;
  *(v0 + 528) = v9;

  sub_1E1AF385C();
  sub_1E13E44F8(v0 + 528);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  *(v9 + 128) = 0;

  v10 = *(v0 + 8);

  return v10(v13);
}

uint64_t sub_1E15EAD60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF320C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF31FC();
  v13 = v8;
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v11 = v2;
  v12 = &v14;
  sub_1E1AF68FC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E15EAF18(char a1)
{
  v2 = v1;
  v4 = sub_1E1AF320C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF31FC();
  v13 = v8;
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v11 = v2;
  v12 = &v14;
  sub_1E1AF68FC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E15EB268()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6908, &qword_1E1B1CD70);
  sub_1E1AF690C();
  return v1;
}

void Restrictions.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void Restrictions.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1E15EB820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6908, &qword_1E1B1CD70);
  sub_1E1AF690C();
  return v1;
}

double sub_1E15EBE2C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  *(a1 + 24) = v3;

  return result;
}

void *sub_1E15EBE90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  swift_defaultActor_initialize();
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 120) = MEMORY[0x1E69E7CC0];
  *(v1 + 128) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6910, &unk_1E1B1CEC0);
  swift_allocObject();
  *(v1 + 136) = sub_1E14C5D90();
  sub_1E159F538(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4A10, &qword_1E1B10230);
  swift_allocObject();
  *(v1 + 144) = sub_1E14C5D90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6918, &qword_1E1B1CED0);
  swift_allocObject();
  *(v1 + 152) = sub_1E14C51E8(1);
  swift_allocObject();
  *(v1 + 160) = sub_1E14C51E8(1);
  swift_allocObject();
  *(v1 + 168) = sub_1E14C51E8(0);
  swift_allocObject();
  *(v1 + 176) = sub_1E14C51E8(0);
  swift_allocObject();
  *(v1 + 184) = sub_1E14C51E8(0);
  *(v1 + 112) = a1;
  v7 = type metadata accessor for Restrictions();
  v15.receiver = v1;
  v15.super_class = v7;

  v8 = objc_msgSendSuper2(&v15, sel_init);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = v8;

  v11 = sub_1E1400E4C(sub_1E15EC458, v9);

  v10[15] = v11;

  sub_1E1AF645C();
  v12 = sub_1E1AF649C();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v10;
  sub_1E154B274(0, 0, v5, &unk_1E1B1CEE0, v13);

  return v10;
}

uint64_t sub_1E15EC18C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF320C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF31FC();
  v13 = v8;
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v11 = v2;
  v12 = &v14;
  sub_1E1AF68FC();
  return (*(v5 + 8))(v7, v4);
}

void sub_1E15EC360()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  swift_beginAccess();
  *(v1 + 24) = v2;
}

void sub_1E15EC3B4()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  swift_beginAccess();
  *(v1 + 24) = v2;
}

double sub_1E15EC408@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 24);

  return result;
}

uint64_t sub_1E15EC460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E130B5DC;

  return sub_1E15E9118(a1);
}

uint64_t sub_1E15EC514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5D8;

  return sub_1E15E8C98(a1, v4, v5, v6);
}

unint64_t sub_1E15EC5C8()
{
  result = qword_1ECEB6920;
  if (!qword_1ECEB6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6920);
  }

  return result;
}

AppStoreKit::IconArtworkIntent __swiftcall IconArtworkIntent.init(adamIds:)(Swift::OpaquePointer adamIds)
{
  v1->_rawValue = 0xD000000000000011;
  v1[1]._rawValue = 0x80000001E1B1CEE0;
  v1[2]._rawValue = adamIds._rawValue;
  result.kind._countAndFlagsBits = adamIds._rawValue;
  return result;
}

uint64_t IconArtworkIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall IconArtworkIntent.makeValue(in:)(JSContext in)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1E135C088(0, v4, 0);
    v5 = (v3 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v16 + 16);
      v9 = *(v16 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1E135C088((v9 > 1), v8 + 1, 1);
      }

      *(v16 + 16) = v8 + 1;
      v10 = v16 + 16 * v8;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v11 = objc_opt_self();
  result.super.isa = [v11 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    v14 = isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
    v15 = [v11 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v15)
    {

      sub_1E1AF6C5C();

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E15EC870()
{
  result = qword_1ECEB6928;
  if (!qword_1ECEB6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6928);
  }

  return result;
}

unint64_t sub_1E15EC8CC()
{
  result = qword_1ECEB6930;
  if (!qword_1ECEB6930)
  {
    type metadata accessor for ArtworkLookupResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6930);
  }

  return result;
}

uint64_t PrivacyDefinitionLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t PrivacyDefinitionLayout.Metrics.definitionTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t PrivacyDefinitionLayout.Metrics.bottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t PrivacyDefinitionLayout.Metrics.init(titleTopSpace:definitionTopSpace:bottomMargin:maxTextWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 152) = 0;
  *(a5 + 136) = 0u;
  *(a5 + 120) = 0u;
  v9 = a5 + 120;
  sub_1E1308EC0(a1, a5);
  sub_1E1308EC0(a2, a5 + 40);
  sub_1E1308EC0(a3, a5 + 80);

  return sub_1E13BC4E4(a4, v9);
}

uint64_t PrivacyDefinitionLayout.init(metrics:titleLabel:definitionLabel:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = a1[7];
  a4[6] = a1[6];
  a4[7] = v6;
  v7 = a1[9];
  a4[8] = a1[8];
  a4[9] = v7;
  v8 = a1[3];
  a4[2] = a1[2];
  a4[3] = v8;
  v9 = a1[5];
  a4[4] = a1[4];
  a4[5] = v9;
  v10 = a1[1];
  *a4 = *a1;
  a4[1] = v10;
  sub_1E1308EC0(a2, (a4 + 10));

  return sub_1E1308EC0(a3, a4 + 200);
}

double static PrivacyDefinitionLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v27 = a2;
  v5 = sub_1E1AF162C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF165C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v25 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF745C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E141E104(a1 + 120, v28);
  v15 = v29;
  if (v29)
  {
    v23 = a1;
    v24 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    sub_1E13BC274(v15);
    a1 = v23;
    v9 = v24;
    sub_1E1AF12DC();
    (*(v12 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_1E141E174(v28);
  }

  (*(v6 + 104))(v26, *MEMORY[0x1E69AB970], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0, &unk_1E1B038F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E1B02CD0;
  sub_1E1300B24(a1, v28);
  v17 = sub_1E1AF1A1C();
  v18 = MEMORY[0x1E69ABA90];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  __swift_allocate_boxed_opaque_existential_0((v16 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 40, v28);
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  __swift_allocate_boxed_opaque_existential_0((v16 + 72));
  sub_1E1AF1A2C();
  v19 = v25;
  sub_1E1AF163C();
  sub_1E1AF161C();
  v21 = v20;
  (*(v9 + 8))(v19, v8);
  return v21;
}

void PrivacyDefinitionLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_1E1AF745C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E15ED1A4(&v16);
  v11 = v16;
  v12 = v17;
  sub_1E141E104(v3 + 120, &v16);
  v13 = v18;
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v16, v18);
    sub_1E13BC274(v13);
    v14 = sub_1E1AF12DC();
    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    if (v14 <= a2)
    {
      a2 = v14;
    }
  }

  else
  {
    sub_1E141E174(&v16);
  }

  LOBYTE(v16) = v11;
  v17 = v12;
  _VerticalFlowLayout.measurements(fitting:in:)(a1, a2, a3);
}

double sub_1E15ED1A4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  v4 = v1[23];
  v5 = v1[24];
  v6 = __swift_project_boxed_opaque_existential_1Tm(v1 + 20, v4);
  *(&v33 + 1) = v4;
  *&v34 = *(v5 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v6, v4);
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  sub_1E1300B24(&v32, v41);
  sub_1E1300B24(v1, v43);
  v42 = 1;
  v46 = 8;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  sub_1E149BCE4(v41, &v32);
  v8 = sub_1E172D4E0(0, 1, 1, v3);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1E172D4E0((v9 > 1), v10 + 1, 1, v8);
  }

  sub_1E149BD40(v41);
  *(v8 + 2) = v10 + 1;
  v11 = &v8[136 * v10];
  v12 = v36;
  v14 = v33;
  v13 = v34;
  *(v11 + 5) = v35;
  *(v11 + 6) = v12;
  *(v11 + 3) = v14;
  *(v11 + 4) = v13;
  v16 = v38;
  v15 = v39;
  v17 = v37;
  *(v11 + 20) = v40;
  *(v11 + 8) = v16;
  *(v11 + 9) = v15;
  *(v11 + 7) = v17;
  *(v11 + 2) = v32;
  *(a1 + 8) = v8;
  v18 = v1[28];
  v19 = v1[29];
  v20 = __swift_project_boxed_opaque_existential_1Tm(v1 + 25, v18);
  *(&v33 + 1) = v18;
  *&v34 = *(v19 + 8);
  v21 = __swift_allocate_boxed_opaque_existential_0(&v32);
  (*(*(v18 - 8) + 16))(v21, v20, v18);
  sub_1E1300B24((v1 + 10), v44);
  sub_1E1300B24(&v32, v41);
  sub_1E1300B24((v1 + 5), v43);
  v42 = 1;
  v46 = 8;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  sub_1E149BCE4(v41, &v32);
  v23 = *(v8 + 2);
  v22 = *(v8 + 3);
  if (v23 >= v22 >> 1)
  {
    v8 = sub_1E172D4E0((v22 > 1), v23 + 1, 1, v8);
  }

  sub_1E149BD40(v41);
  *(v8 + 2) = v23 + 1;
  v24 = &v8[136 * v23];
  v25 = v36;
  v27 = v33;
  v26 = v34;
  *(v24 + 5) = v35;
  *(v24 + 6) = v25;
  *(v24 + 3) = v27;
  *(v24 + 4) = v26;
  v29 = v38;
  v28 = v39;
  v30 = v37;
  *(v24 + 20) = v40;
  *(v24 + 8) = v29;
  *(v24 + 9) = v28;
  *(v24 + 7) = v30;
  result = *&v32;
  *(v24 + 2) = v32;
  *(a1 + 8) = v8;
  return result;
}

void PrivacyDefinitionLayout.placeChildren(relativeTo:in:)(CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, uint64_t x8_0@<X8>)
{
  v12 = sub_1E1AF745C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E15ED1A4(&v22);
  v16 = v22;
  v17 = v23;
  sub_1E141E104(v6 + 120, &v22);
  v18 = v24;
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v22, v24);
    sub_1E13BC274(v18);
    v19 = sub_1E1AF12DC();
    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(&v22);
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    Width = CGRectGetWidth(v25);
    if (Width >= v19)
    {
      a4 = v19;
    }

    else
    {
      a4 = Width;
    }
  }

  else
  {
    sub_1E141E174(&v22);
  }

  LOBYTE(v22) = v16;
  v23 = v17;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(x8_0, a2, a3, a4, a5);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
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
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1E15ED688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1E15ED6D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1E15ED788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1E15ED7D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DynamicUIRequestInfo.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DynamicUIRequestInfo.init(deserializing:using:)(a1, a2);
  return v4;
}

void *DynamicUIRequestInfo.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_1E1AF380C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v43 = a1;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v19 = *(v4 + 8);
  v39 = v3;
  v41 = v19;
  v42 = v4 + 8;
  v19(v12, v3);
  v20 = sub_1E1AF40DC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v18, 1, v20) == 1)
  {
    sub_1E146F8C4(v18);
    v23 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6938, &qword_1E1B1D1C0);
    v23 = sub_1E1AF40BC();
    (*(v21 + 8))(v18, v20);
  }

  v24 = v40;
  v40[2] = v23;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v25 = v9;
  v26 = v39;
  v41(v25, v39);
  if (v22(v15, 1, v20) == 1)
  {
    sub_1E146F8C4(v15);
    v27 = 0;
  }

  else
  {
    v27 = sub_1E1AF40BC();
    (*(v21 + 8))(v15, v20);
  }

  v24[3] = v27;
  type metadata accessor for Action(0);
  v28 = v43;
  sub_1E1AF381C();
  v29 = v38;
  v30 = static Action.tryToMakeInstance(byDeserializing:using:)(v6, v38);
  v31 = v41;
  v41(v6, v26);
  v24[4] = v30;
  sub_1E1AF381C();
  v32 = static Action.tryToMakeInstance(byDeserializing:using:)(v6, v29);
  v31(v6, v26);
  v24[5] = v32;
  sub_1E1AF381C();
  v33 = static Action.tryToMakeInstance(byDeserializing:using:)(v6, v29);
  v31(v6, v26);
  v24[6] = v33;
  sub_1E1AF381C();
  v34 = static Action.tryToMakeInstance(byDeserializing:using:)(v6, v29);
  v31(v6, v26);
  v24[7] = v34;
  sub_1E1AF381C();
  v35 = static Action.tryToMakeInstance(byDeserializing:using:)(v6, v29);
  v36 = sub_1E1AF39DC();
  (*(*(v36 - 8) + 8))(v29, v36);
  v31(v28, v26);
  v31(v6, v26);
  v24[8] = v35;
  return v24;
}

void *DynamicUIRequestInfo.deinit()
{

  return v0;
}

uint64_t DynamicUIRequestInfo.__deallocating_deinit()
{
  DynamicUIRequestInfo.deinit();

  return swift_deallocClassInstance();
}

void *sub_1E15EDEC0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for DynamicUIRequestInfo();
  v7 = swift_allocObject();
  result = DynamicUIRequestInfo.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E15EE018(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E15EE084(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

double sub_1E15EE124(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1E15EE18C()
{
  swift_beginAccess();

  return result;
}

double sub_1E15EE1D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t SearchHintsPresenter.init(objectGraph:searchTextPresenter:searchGhostHintTracker:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5570, &unk_1E1B16220);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7];
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_hints) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_precedingFetch) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_searchBarCancelAction) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_searchFieldClearAction) = 0;
  v9 = (v3 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_term);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_searchTextPresenter) = a2;

  v11 = sub_1E138C578(v10, 0, 0, 0);

  if (a3)
  {
    v12 = type metadata accessor for SearchGhostHintMetricsTracker();
    v13 = &protocol witness table for SearchGhostHintMetricsTracker;
    v14 = a3;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  v22[0] = v14;
  v23 = v12;
  v24 = v13;
  v15 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_searchGhostHintData;
  swift_beginAccess();

  sub_1E15EFC34(v22, v11 + v15);
  swift_endAccess();
  if (a2)
  {
    v16 = sub_1E1361A80();

    v17 = sub_1E1AF68EC();
    v23 = v16;
    v24 = MEMORY[0x1E69AB720];
    v22[0] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6940, qword_1E1B21A90);
    type metadata accessor for SearchHintsPresenter(0);
    sub_1E1302CD4(&qword_1EE1E3C50, &qword_1ECEB6940, qword_1E1B21A90, MEMORY[0x1E69AAEC8]);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(v22);
    v18 = 0;
  }

  else
  {

    v18 = 1;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  (*(*(v19 - 8) + 56))(v8, v18, 1, v19);
  sub_1E1308058(v8, &qword_1ECEB5570, &unk_1E1B16220);
  return v11;
}

void sub_1E15EE700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_1E15EE818(1);
}

uint64_t (*sub_1E15EE774(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E15F01A4;
  *(v2 + 24) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1E15F01AC;
  *(v3 + 24) = v2;

  return sub_1E15F01D4;
}

void sub_1E15EE818(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    if (sub_1E1AF71CC())
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        return;
      }
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = v2 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v7 = *(v6 + 8), v8 = swift_getObjectType(), LOBYTE(v7) = (*(v7 + 24))(v8, v7), swift_unknownObjectRelease(), (v7 & 1) != 0))
  {
    swift_beginAccess();
    *(v2 + 32) = 1;
    v9 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_precedingFetch;
    v10 = *(v2 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_precedingFetch);
    if (v10)
    {
      v11 = *(v10 + 16);

      [v11 lock];
      if ((*(v10 + 32) & 1) == 0)
      {

        v12 = sub_1E1AF57BC();

        if ((v12 & 1) == 0)
        {
          *(v10 + 32) = 1;
          sub_1E15EFCF0();
          v13 = swift_allocError();

          sub_1E1AF584C();
        }
      }

      [v11 unlock];
    }

    v14 = (v2 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_term);
    swift_beginAccess();
    v15 = v14[1];
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = *v14;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = *v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      type metadata accessor for JSIntentDispatcher();
      v18 = *(v2 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
      sub_1E1AF421C();

      sub_1E1AF55EC();

      sub_1E13683A0(v16, v15, v18, "AppStoreKit/SearchHintsPresenter.swift", 38, 2);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6948, "<]\a");
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29F0, &qword_1E1B03190);

      *(v19 + 24) = sub_1E1AF588C();
      *(v19 + 16) = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
      *(v19 + 32) = 0;
      v30 = sub_1E1AF470C();
      v31 = MEMORY[0x1E69AB218];
      __swift_allocate_boxed_opaque_existential_0(v29);
      swift_retain_n();
      sub_1E1AF46FC();
      sub_1E1302CD4(&unk_1EE1D2800, &qword_1ECEB29F0, &qword_1E1B03190, MEMORY[0x1E69AB658]);
      sub_1E1AF545C();

      __swift_destroy_boxed_opaque_existential_1(v29);
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = v16;
      v21[4] = v15;
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = v16;
      v23[4] = v15;
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v30 = v24;
      v31 = MEMORY[0x1E69AB720];
      v29[0] = v25;

      sub_1E1AF57FC();

      __swift_destroy_boxed_opaque_existential_1(v29);

      *(v2 + v9) = v19;
    }

    else
    {
LABEL_19:
      *(v2 + v4) = MEMORY[0x1E69E7CC0];

      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        (*(*(v27 + 16) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      *(v2 + 32) = 0;
    }
  }

  else
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v26 = sub_1E1AF591C();
    __swift_project_value_buffer(v26, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF38CC();
    sub_1E1AF382C();
    sub_1E1AF548C();
  }
}

uint64_t sub_1E15EEEA4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1E1AF3C1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v11 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = (result + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_term);
    swift_beginAccess();
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14 == a3 && v15 == a4;
      if (v16 || (sub_1E1AF74AC() & 1) != 0)
      {
        v17 = v11[2];
        v18 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_hints;
        swift_beginAccess();
        *(v13 + v18) = v17;

        v32[3] = type metadata accessor for SearchHintSet(0);
        v32[4] = &protocol witness table for SearchHintSet;
        v32[5] = sub_1E15F014C(v19);
        v32[0] = v11;
        swift_beginAccess();

        sub_1E13891EC(v32, v13 + 40);
        swift_endAccess();
        sub_1E138B568();
        sub_1E1308058(v32, &qword_1ECEB2588, &unk_1E1B05C10);
        sub_1E1AF3C0C();
        sub_1E183B75C(v10);
        (*(v8 + 8))(v10, v7);
        v20 = v11[4];
        if (v20)
        {
          v21 = v11[3];
          if (!UIAccessibilityIsVoiceOverRunning())
          {
            if (*(v13 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_searchTextPresenter))
            {

              v22._countAndFlagsBits = a3;
              v22._object = a4;
              v23._countAndFlagsBits = v21;
              v23._object = v20;
              SearchTextPresenter.suggestGhostHint(toExpand:to:)(v22, v23);
            }
          }
        }

        v24 = *(v11 + OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_searchClearAction);
        v25 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_searchFieldClearAction;
        swift_beginAccess();
        *(v13 + v25) = v24;

        v26 = *(v11 + OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_searchCancelAction);
        v27 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_searchBarCancelAction;
        swift_beginAccess();
        *(v13 + v27) = v26;

        v28 = v13 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v29 = *(v28 + 8);
          ObjectType = swift_getObjectType();
          (*(*(v29 + 16) + 8))(ObjectType);
          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        *(v13 + 32) = 0;
      }
    }
  }

  return result;
}

void sub_1E15EF210(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
  if (!swift_dynamicCast())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = (Strong + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_term);
      swift_beginAccess();
      v10 = v9[1];
      if (v10)
      {
        v11 = *v9 == a3 && v10 == a4;
        if (v11 || (sub_1E1AF74AC() & 1) != 0)
        {
          if (qword_1EE1D27B0 != -1)
          {
            swift_once();
          }

          v12 = sub_1E1AF591C();
          __swift_project_value_buffer(v12, qword_1EE215450);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = xmmword_1E1B03760;

          sub_1E1AF38CC();

          sub_1E1AF382C();
          swift_getErrorValue();
          v19[3] = v18;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
          (*(*(v18 - 8) + 16))(boxed_opaque_existential_0);
          sub_1E1AF383C();
          sub_1E1308058(v19, &qword_1ECEB2DF0, &unk_1E1B02CE0);
          sub_1E1AF54AC();

          v14 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_hints;
          swift_beginAccess();
          *(v8 + v14) = MEMORY[0x1E69E7CC0];

          v15 = v8 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v16 = *(v15 + 8);
            ObjectType = swift_getObjectType();
            (*(*(v16 + 16) + 8))(ObjectType);
            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          *(v8 + 32) = 0;
        }
      }
    }
  }
}

void sub_1E15EF55C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  sub_1E15EE818(1);
}

uint64_t sub_1E15EF5D8()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1E15EF630(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_1E15EE818(1);
}

uint64_t sub_1E15EF6AC()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_1E1AF71CC();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1E15EF714(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1E68FFD80](a1, v4);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1E15EF7C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    result = sub_1E1AF71CC();
    if (result <= a1)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result <= a1)
    {
      return result;
    }
  }

  v6 = *(v1 + v3);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v7 = *(v6 + 8 * a1 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v7 = MEMORY[0x1E68FFD80](a1, v6);

LABEL_7:
  v8 = v1 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v13[3] = type metadata accessor for SearchHintsPresenter(0);
  v13[0] = v1;
  v11 = *(v9 + 8);
  v12 = *(v11 + 8);

  v12(v7, v13, ObjectType, v11);

  swift_unknownObjectRelease();
  return sub_1E1308058(v13, &qword_1ECEB2DF0, &unk_1E1B02CE0);
}

double sub_1E15EF994()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view);

  return result;
}

uint64_t SearchHintsPresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view);

  return v0;
}

uint64_t SearchHintsPresenter.__deallocating_deinit()
{
  SearchHintsPresenter.deinit();

  return swift_deallocClassInstance();
}

id sub_1E15EFB30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  [v3 lock];
  if ((*(a2 + 32) & 1) == 0)
  {

    sub_1E1AF584C();
  }

  return [v3 unlock];
}

id sub_1E15EFBB4(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  [v3 lock];
  if ((*(a2 + 32) & 1) == 0)
  {

    sub_1E1AF586C();
  }

  return [v3 unlock];
}

uint64_t sub_1E15EFC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B70, &qword_1E1B14250);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SearchHintsPresenter(uint64_t a1)
{
  result = qword_1EE1DB988;
  if (!qword_1EE1DB988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E15EFCF0()
{
  result = qword_1EE1DB9D0;
  if (!qword_1EE1DB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DB9D0);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_1E15F014C(__n128 a1)
{
  result = qword_1EE1E0260;
  if (!qword_1EE1E0260)
  {
    type metadata accessor for SearchHintSet(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0260);
  }

  return result;
}

AppStoreKit::EditorialPageKey_optional __swiftcall EditorialPageKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EditorialPageKey.rawValue.getter()
{
  v1 = 0x736275732D6E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6269726373627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1E15F02C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x736275732D6E6F6ELL;
  v4 = 0xEE00726562697263;
  if (v2 != 1)
  {
    v3 = 0x6269726373627573;
    v4 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x736275732D6E6F6ELL;
  v8 = 0xEE00726562697263;
  if (*a2 != 1)
  {
    v7 = 0x6269726373627573;
    v8 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

void sub_1E15F03F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEE00726562697263;
  v5 = 0x736275732D6E6F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6269726373627573;
    v4 = 0xEA00000000007265;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1E15F0464()
{
  result = qword_1ECEB6950;
  if (!qword_1ECEB6950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6958, &qword_1E1B1D3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6950);
  }

  return result;
}

unint64_t sub_1E15F04DC()
{
  result = qword_1EE1DF1B0;
  if (!qword_1EE1DF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF1B0);
  }

  return result;
}

uint64_t sub_1E15F0530()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E15F05E4(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E15F0684(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

unint64_t sub_1E15F07F4()
{
  result = qword_1ECEB6960;
  if (!qword_1ECEB6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6960);
  }

  return result;
}

double sub_1E15F0974()
{
  if (qword_1EE1E3BC8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
  __swift_project_value_buffer(v0, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
  sub_1E1AF39EC();
  if (v7)
  {
    swift_beginAccess();
    v2 = *(v7 + 16);

    if (*(v2 + 16))
    {
      v3 = [objc_opt_self() defaultCenter];
      if (qword_1EE1E66E0 != -1)
      {
        swift_once();
      }

      v4 = qword_1EE1E66E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98, &qword_1E1B09130);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E1B02CC0;
      sub_1E1AF6F6C();
      *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6970, &unk_1E1B40250);
      *(inited + 72) = v2;
      sub_1E13609A4(inited);
      swift_setDeallocating();
      sub_1E15F0ED4(inited + 32);
      v6 = sub_1E1AF5C6C();

      [v3 postNotificationName:v4 object:0 userInfo:{v6, 0x7364496D616461, 0xE700000000000000}];
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E15F0BA4()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E66E8 = result;
  return result;
}

id static RemotePersonalizationNotificationDetails.notificationName.getter()
{
  if (qword_1EE1E66E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1E66E8;

  return v1;
}

uint64_t sub_1E15F0C60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
  __swift_allocate_value_buffer(v0, qword_1EE1E3BD0);
  __swift_project_value_buffer(v0, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
  return sub_1E1AF39AC();
}

uint64_t sub_1E15F0CEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6968, &qword_1E1B1D550);
  __swift_allocate_value_buffer(v0, qword_1EE2161D0);
  __swift_project_value_buffer(v0, qword_1EE2161D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0, &unk_1E1B1C8F0);
  return sub_1E1AF39AC();
}

void *sub_1E15F0D78(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_1EE1E3BC8 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
  __swift_project_value_buffer(v3, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
  result = sub_1E1AF39EC();
  if (v10)
  {
    swift_beginAccess();
    v5 = *(v10 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1E172DC1C(0, *(v5 + 2) + 1, 1, v5);
      *(v10 + 16) = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_1E172DC1C((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[16 * v8];
    *(v9 + 4) = v2;
    *(v9 + 5) = v1;
    *(v10 + 16) = v5;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E15F0ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCAA0, &unk_1E1B02C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980, &qword_1E1B0F300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E1B03760;
  *(v4 + 32) = @"debug";
  *(v4 + 40) = @"convergence";
  *(v4 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v5 = @"debug";
  v6 = @"convergence";
  v7 = @"internal";
  v8 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v3, v8);

  if (!IsAnyOf || (v10 = byte_1ECEB5980, byte_1ECEB5980 == 7))
  {
    sub_1E1300B24(&v1[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger], &v58);
    __swift_project_boxed_opaque_existential_1Tm(&v58, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B070F0;
    sub_1E1AF382C();
    v57 = &type metadata for EntitlementRefeshCondition;
    v51 = v2;
    LOBYTE(v54) = v2;
    sub_1E1AF38BC();
    v52 = v1;
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    v13 = &v1[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v14 = *v13;
    v53 = v13[8];
    sub_1E1361A40(*v13, v53);
    v15 = ArcadeState.summary.getter();
    v17 = v16;
    v57 = MEMORY[0x1E69E6158];
    sub_1E1361A60(v14, v53);
    v54 = v15;
    v55 = v17;
    sub_1E1AF38BC();
    v18 = v52;
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    v19 = *&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId + 8];
    if (v19)
    {
      v20 = *&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId];
      v21 = MEMORY[0x1E69E6158];
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v56 = 0;
    }

    v54 = v20;
    v55 = v19;
    v57 = v21;

    sub_1E1AF38DC();
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF548C();

    __swift_destroy_boxed_opaque_existential_1(&v58);
    v23 = MEMORY[0x1E69AB218];
    if (v51 >> 6 <= 1 || v51 >> 6 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69A0, &qword_1E1B1D558);
      v24 = sub_1E1AF588C();
      v25 = *&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
      v26 = *&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
      __swift_project_boxed_opaque_existential_1Tm(&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v25);
      v27 = *(v26 + 16);

      v28 = v26;
      v18 = v52;
      v27(1, sub_1E15F8CFC, v24, v25, v28);
      v29 = swift_allocObject();
      *(v29 + 16) = v52;
      *(v29 + 24) = v51 & 1;
      v60 = sub_1E1AF470C();
      v61 = v23;
      __swift_allocate_boxed_opaque_existential_0(&v58);
      v30 = v52;
      sub_1E1AF46FC();
      sub_1E1302CD4(&unk_1EE1E3650, &qword_1ECEB69A0, &qword_1E1B1D558, MEMORY[0x1E69AB658]);
      sub_1E1AF585C();

      __swift_destroy_boxed_opaque_existential_1(&v58);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69A0, &qword_1E1B1D558);
      v31 = sub_1E1AF588C();
      if (v51 == 192)
      {
        v32 = *&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
        v33 = *&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
        __swift_project_boxed_opaque_existential_1Tm(&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v32);
        v34 = *(v33 + 16);
        swift_retain_n();
        v34(1, sub_1E15F6DFC, v31, v32, v33);
      }

      else
      {
        v37 = swift_allocObject();
        *(v37 + 16) = 1;
        *(v37 + 24) = v52;
        *(v37 + 32) = v31;
        v38 = *&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
        v39 = *&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
        __swift_project_boxed_opaque_existential_1Tm(&v52[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v38);
        v40 = *(v39 + 8);
        swift_retain_n();
        v41 = v52;
        v40(1, 1, sub_1E15F79D4, v37, v38, v39);
      }
    }

    *(swift_allocObject() + 16) = v18;
    v60 = sub_1E1AF470C();
    v61 = v23;
    __swift_allocate_boxed_opaque_existential_0(&v58);
    v42 = v18;
    sub_1E1AF46FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB69B0, &qword_1E1B1D560);
    sub_1E1302CD4(&unk_1EE1E3608, &unk_1ECEB69B0, &qword_1E1B1D560, MEMORY[0x1E69AB658]);
    sub_1E1AF585C();

    __swift_destroy_boxed_opaque_existential_1(&v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69C0, &qword_1E1B1D568);
    v43 = sub_1E1AF588C();
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = v43;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1E15F7764;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = v43;
    v49 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    swift_retain_n();

    v50 = sub_1E1AF68EC();
    v60 = v49;
    v61 = MEMORY[0x1E69AB720];
    v58 = v50;
    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1(&v58);

    return v43;
  }

  else
  {
    if (byte_1ECEB5980 <= 2u)
    {
      if (byte_1ECEB5980 == 1)
      {
        v22 = -127;
      }

      else
      {
        v22 = -64;
      }

      v11 = 0;
      if (byte_1ECEB5980)
      {
        v12 = v22;
      }

      else
      {
        v12 = -126;
      }
    }

    else if (byte_1ECEB5980 > 4u)
    {
      if (byte_1ECEB5980 == 5)
      {
        v12 = 0;
        v11 = 2;
      }

      else
      {
        v11 = swift_allocObject();
        *(v11 + 16) = 2;
        *(v11 + 24) = 0;
        v12 = 64;
      }
    }

    else
    {
      v11 = 1;
      if (byte_1ECEB5980 == 3)
      {
        v12 = -64;
      }

      else
      {
        v12 = 0;
      }
    }

    v54 = v11;
    LOBYTE(v55) = v12;
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v54, 1, &v58);
    sub_1E1361A60(v11, v12);
    sub_1E1361A60(v58, v59);
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v10 = 0;
          v35 = -127;
        }

        else
        {
          v10 = 0;
          v35 = -64;
        }
      }

      else
      {
        v35 = -126;
      }
    }

    else if (v10 > 4)
    {
      if (v10 == 5)
      {
        v35 = 0;
        v10 = 2;
      }

      else
      {
        v10 = swift_allocObject();
        *(v10 + 16) = 2;
        *(v10 + 24) = 0;
        v35 = 64;
      }
    }

    else
    {
      if (v10 == 3)
      {
        v35 = -64;
      }

      else
      {
        v35 = 0;
      }

      v10 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69C0, &qword_1E1B1D568);
    v58 = v10;
    v59 = v35;
    return sub_1E1AF582C();
  }
}

id ArcadeSubscriptionManager.addSubscriptionStateObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock);
  [v7 lock];
  sub_1E15F6384(a1, a2, a3, v3);

  return [v7 unlock];
}

uint64_t ArcadeState.shortSummary.getter()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if ((v2 & 0x3F) == 1)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0x6269726373627553;
    }

    if (v1)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = 0x6E776F6E6B6E55;
    }

    if (v3 == 2)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (v1 == 1)
    {
      v4 = 0xD000000000000023;
    }

    else
    {
      v4 = 0xD000000000000022;
    }

    if (v3)
    {
      return 0x6973616863727550;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t ArcadeState.summary.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8) >> 6;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      sub_1E1AF6FEC();

      v6 = 0xD00000000000001ELL;
      if (v1)
      {
        v4 = 1702195828;
      }

      else
      {
        v4 = 0x65736C6166;
      }

      if (v1)
      {
        v5 = 0xE400000000000000;
      }

      else
      {
        v5 = 0xE500000000000000;
      }

      MEMORY[0x1E68FECA0](v4, v5);

      return v6;
    }

    v6 = 0;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD000000000000021, 0x80000001E1B69AE0);
  }

  else
  {
    if (v2)
    {
      return 0x6973616863727550;
    }

    v6 = 0;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD00000000000001FLL, 0x80000001E1B69B10);
  }

  sub_1E1AF714C();
  return v6;
}

uint64_t ArcadeState.nextState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v2)
    {
      v8 = 0;
    }

    else
    {
      v8 = -64;
    }

    if (v4 == 2)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    if (v4 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }
  }

  else if (v4)
  {
    result = 0;
    v7 = 0x80;
  }

  else if (v2 == 1)
  {
    v5 = a1;
    result = swift_allocObject();
    a1 = v5;
    *(result + 16) = v2;
    *(result + 24) = v3;
    v7 = 64;
  }

  else
  {
    result = 0;
    v7 = -64;
  }

  *a1 = result;
  *(a1 + 8) = v7;
  return result;
}

uint64_t static ArcadeState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v6 == 2)
    {
      if ((v5 & 0xC0) == 0x80)
      {
        if (v2)
        {
          if (!v4)
          {
            sub_1E1361A40(0, *(a2 + 8));
            sub_1E1361A40(0, v5);
            sub_1E1361A40(v2, v3);
            sub_1E1361A60(v2, v3);
            v14 = 0;
            goto LABEL_20;
          }

          sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
          sub_1E1361A40(v4, v5);
          sub_1E1361A40(v4, v5);
          sub_1E1361A40(v2, v3);
          v8 = sub_1E1AF6D0C();
          sub_1E1361A60(v4, v5);
          if ((v8 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v4)
          {
            sub_1E1361A40(*a2, *(a2 + 8));
            sub_1E1361A40(0, v3);
            v13 = 0;
            goto LABEL_19;
          }

          sub_1E1361A40(0, *(a2 + 8));
          sub_1E1361A40(0, v5);
          sub_1E1361A40(0, v3);
        }

        sub_1E1361A60(v2, v3);
        sub_1E1361A60(v4, v5);
        v7 = ((v5 ^ v3) & 0x3F) == 0;
        return v7 & 1;
      }

      v12 = v2;
    }

    else if (v5 > 0xBF)
    {
      sub_1E1361A60(*a1, v3);
      sub_1E1361A60(v4, v5);
      v7 = v4 ^ v2 ^ 1;
      return v7 & 1;
    }

    goto LABEL_17;
  }

  if (v6)
  {
    if ((v5 & 0xC0) == 0x40)
    {
      v9 = *(v2 + 24);
      v10 = *(v4 + 2);
      v11 = *(v4 + 24);
      v18 = *(v2 + 2);
      v19 = v9;
      v16 = v10;
      v17 = v11;
      sub_1E1361A40(v4, v5);
      sub_1E1361A40(v2, v3);
      v7 = static ArcadeState.== infix(_:_:)(&v18, &v16);
      sub_1E1361A60(v2, v3);
      sub_1E1361A60(v4, v5);
      return v7 & 1;
    }

    goto LABEL_17;
  }

  if (v5 >= 0x40)
  {
LABEL_17:
    sub_1E1361A40(v4, v5);
LABEL_18:
    v13 = v2;
LABEL_19:
    sub_1E1361A60(v13, v3);
    v14 = v4;
LABEL_20:
    sub_1E1361A60(v14, v5);
    v7 = 0;
    return v7 & 1;
  }

  sub_1E1361A60(*a1, v3);
  sub_1E1361A60(v4, v5);
  v7 = v4 == v2;
  return v7 & 1;
}

uint64_t sub_1E15F2280(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1E15F234C;
  v10[3] = &block_descriptor_93;
  v8 = _Block_copy(v10);

  [v7 getSubscriptionEntitlementsForSegment:a1 ignoreCaches:a2 & 1 withCacheInfoResultHandler:v8];
  _Block_release(v8);
}

double sub_1E15F234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1E13006E4(0, &qword_1EE1E3350, 0x1E698B558);
    v8 = sub_1E1AF621C();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);

  return result;
}

uint64_t sub_1E15F240C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E15F24C8;
  v8[3] = &block_descriptor_90;
  v6 = _Block_copy(v8);

  [v5 getCachedSubscriptionEntitlementsForSegment:a1 withResultHandler:v6];
  _Block_release(v6);
}

uint64_t sub_1E15F24DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1E15F2590;
  v6[3] = &block_descriptor_87;
  v4 = _Block_copy(v6);

  [v3 getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler_];
  _Block_release(v4);
}

double sub_1E15F25A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1E13006E4(0, a5, a6);
    v8 = sub_1E1AF621C();
  }

  v10 = a4;
  v9(v8, a3, a4);

  return result;
}

id ACAccountStore.ams_DSID.getter()
{
  v1 = [v0 ams_activeiTunesAccount];
  v2 = [v1 ams_DSID];

  return v2;
}

id sub_1E15F26A0()
{
  v1 = [*v0 ams_activeiTunesAccount];
  v2 = [v1 ams_DSID];

  return v2;
}

unint64_t EntitlementRefeshCondition.description.getter()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 != 2)
    {
      if (v1 == 192)
      {
        return 0xD000000000000013;
      }

      else
      {
        return 0xD000000000000014;
      }
    }

    v8 = 0;
    sub_1E1AF6FEC();
    v3 = "always refresh cache";
    v4 = 0xD00000000000003DLL;
    goto LABEL_7;
  }

  if (v2)
  {
    v8 = 0;
    sub_1E1AF6FEC();
    v3 = "s unsubscribed, (may prompt: ";
    v4 = 0xD00000000000003BLL;
LABEL_7:
    MEMORY[0x1E68FECA0](v4, v3 | 0x8000000000000000);
    goto LABEL_8;
  }

  sub_1E1AF6FEC();

  v8 = 0xD00000000000002ALL;
LABEL_8:
  if (v1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E68FECA0](v5, v6);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return v8;
}

id ArcadeStateChange.oldState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1E1361A40(v2, v3);
}

id ArcadeStateChange.newState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1E1361A40(v2, v3);
}

uint64_t ArcadeSubscriptionManager.PaymentCallbacks.init(success:failure:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void sub_1E15F28B4(void *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentQueue;
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentQueue);
  if (v4)
  {
    [v4 removeTransactionObserver_];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v8 = a1;

  v6 = *(v1 + v3);
  if (v6)
  {
    v7 = v6;
    [v7 addTransactionObserver_];
  }
}

id ArcadeSubscriptionManager.subscriptionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_1E1361A40(v4, v5);
}

id ArcadeSubscriptionManager.__allocating_init(arcadeSubscriptionFamilyId:subscriptionEntitlements:activeStoreAccountProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = a4[3];
  v13 = a4[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v15 = sub_1E15F7EB8(a1, a2, v11, v14, v4, v9, v12, v10, v13);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v15;
}

id ArcadeSubscriptionManager.init(arcadeSubscriptionFamilyId:subscriptionEntitlements:activeStoreAccountProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3[3];
  v8 = a3[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = a4[3];
  v15 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1E15F79E0(a1, a2, v13, v20, v24[1], v9, v16, v8, v15);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v22;
}

id ArcadeSubscriptionManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentQueue];
  if (v2)
  {
    [v2 removeTransactionObserver_];
  }

  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void ArcadeSubscriptionManager.purchaseSubscription(product:appAdamId:decorator:paymentMetricsOverlay:callbacks:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v12 = a3[1];
  v32 = *a3;
  v14 = *a6;
  v13 = a6[1];
  v15 = a6[2];
  v16 = a6[3];
  v17 = *(v7 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_dialogHandler);
  *(v7 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_dialogHandler) = a7;

  sub_1E15F805C(a4, &v38);
  v33 = a1;
  if (v38)
  {
    v45 = v40;
    v46 = v41;
    v47 = v42;
    v43 = v38;
    v44 = v39;
    v18 = a7;
    ArcadeSubscriptionDecorator.decorate()();
    v19 = swift_allocObject();
    v19[2] = v35;
    v19[3] = a5;
    v19[4] = v14;
    v19[5] = v13;
    v19[6] = v15;
    v19[7] = v16;
    v20 = swift_allocObject();
    v20[2] = v35;
    v20[3] = a1;
    v21 = a2;
    v20[4] = a2;
    v20[5] = v32;
    v20[6] = v12;
    v20[7] = a5;
    v20[8] = v14;
    v20[9] = v13;
    v20[10] = v15;
    v20[11] = v16;
    v22 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);

    v23 = v35;
    sub_1E15F812C(v14, v13, v15, v16);
    v24 = v23;

    sub_1E15F812C(v14, v13, v15, v16);

    v25 = sub_1E1AF68EC();
    *(&v39 + 1) = v22;
    *&v40 = MEMORY[0x1E69AB720];
    *&v38 = v25;
    sub_1E1AF57FC();

    sub_1E15F8178(&v43);
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    v26 = a7;
    sub_1E1308058(&v38, &qword_1ECEB69E8, &unk_1E1B1D570);
    *&v38 = v32;
    *(&v38 + 1) = v12;
    *&v43 = v14;
    *(&v43 + 1) = v13;
    *&v44 = v15;
    *(&v44 + 1) = v16;
    v27 = a1;
    v21 = a2;
    sub_1E15F3278(v27, a2, &v38, 0, a5, &v43);
  }

  __swift_project_boxed_opaque_existential_1Tm(&v35[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger], *&v35[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger + 24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  *(&v44 + 1) = MEMORY[0x1E69E6158];
  *&v43 = v33;
  *(&v43 + 1) = v21;

  sub_1E1AF38BC();
  sub_1E1308058(&v43, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  v28 = swift_allocObject();
  v29 = &v35[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v30 = *v29;
  *(v28 + 16) = *v29;
  v31 = v29[8];
  *(v28 + 24) = v31;
  v36 = v28;
  v37 = 64;
  sub_1E1361A40(v30, v31);
  ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v36, 1, &v38);
  sub_1E1361A60(v28, 0x40u);
  sub_1E1361A60(v38, BYTE8(v38));
}

double sub_1E15F31EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = *(*a1 + 24);
  v12 = *(*a1 + 32);
  v11 = *(*a1 + 40);
  v16[0] = v12;
  v16[1] = v11;
  v13 = *(v8 + 48);
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;

  sub_1E15F3278(v9, v10, v16, v13, a3, v15);

  return result;
}

void sub_1E15F3278(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  v12 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = *a3;
  v56 = *a6;
  v57 = a3[1];
  v54 = a6[2];
  v55 = a6[1];
  v53 = a6[3];
  v14 = *(v7 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentQueue);
  v15 = &off_1E8711000;
  if (v14)
  {
    v16 = a4;
    v17 = v14;
    v18 = [v17 paymentQueueClient];
    v19 = [v18 storeItemIdentifier];

    v51 = v13;
    *&v60 = v13;
    *(&v60 + 1) = v57;
    AdamId.numberValue.getter();
    v21 = v20;
    if (v19)
    {
      if (v20)
      {
        sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
        v22 = sub_1E1AF6D0C();

        if ((v22 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_8:
        v58 = v17;
        a4 = v16;
        v15 = &off_1E8711000;
        goto LABEL_21;
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_8;
      }

      v17 = v21;
    }

LABEL_10:

    a4 = v16;
    v15 = &off_1E8711000;
    v13 = v51;
  }

  v52 = a5;
  v23 = [objc_opt_self() mainBundle];
  v24 = [objc_allocWithZone(MEMORY[0x1E697BA88]) v15[500]];
  v25 = [v23 bundleIdentifier];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1E1AF5DFC();
    v29 = v28;

    if (v27 == 0x6C7070612E6D6F63 && v29 == 0xEF73656D61672E65)
    {

      v15 = &off_1E8711000;
    }

    else
    {
      v31 = sub_1E1AF74AC();

      v15 = &off_1E8711000;
      if ((v31 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v34 = sub_1E1AF5DBC();
    [v24 setBundleIdentifier_];

    v33 = sub_1E1AF5DBC();
    goto LABEL_20;
  }

LABEL_17:
  v32 = [v23 bundleIdentifier];
  [v24 setBundleIdentifier_];

  sub_1E15F3CB4();
  v33 = sub_1E1AF5DBC();

LABEL_20:
  [v24 setBundleVersion_];

  [v24 setDelegate_];
  [v24 setEnvironmentType_];
  *&v60 = v13;
  *(&v60 + 1) = v57;
  AdamId.numberValue.getter();
  v36 = v35;
  [v24 setStoreItemIdentifier_];

  sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
  v37 = sub_1E1AF6CEC();
  [v24 setStoreExternalVersion_];

  v38 = [objc_allocWithZone(MEMORY[0x1E697BA80]) initWithPaymentQueueClient_];
  v58 = v38;
  sub_1E15F28B4(v38);

  a5 = v52;
LABEL_21:
  v39 = [objc_allocWithZone(MEMORY[0x1E697BA70]) v15[500]];
  v40 = sub_1E1AF5DBC();
  [v39 setProductIdentifier_];

  if (a4)
  {
    v41 = sub_1E1AF5C6C();
  }

  else
  {
    v41 = 0;
  }

  [v39 setRequestParameters_];

  if (a5)
  {
    v42 = sub_1E1AF5C6C();
    [v39 setMetricsOverlay_];
  }

  sub_1E1300B24(v7 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger, &v60);
  __swift_project_boxed_opaque_existential_1Tm(&v60, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  if (a4)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
    v44 = a4;
  }

  else
  {
    v44 = 0;
    v43 = 0;
    v59[1] = 0;
    v59[2] = 0;
  }

  v59[0] = v44;
  v59[3] = v43;

  sub_1E1AF384C();
  sub_1E1308058(v59, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  __swift_destroy_boxed_opaque_existential_1(&v60);
  v45 = [v39 productIdentifier];
  v46 = sub_1E1AF5DFC();
  v48 = v47;

  v49 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentCallbacks;
  swift_beginAccess();
  if (v56)
  {
    sub_1E15F812C(v56, v55, v54, v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60 = *(v7 + v49);
    sub_1E159AAEC(v56, v55, v54, v53, v46, v48, isUniquelyReferenced_nonNull_native);

    *(v7 + v49) = v60;
  }

  else
  {
    sub_1E1496D3C(v46, v48, &v60);

    sub_1E15F8BD4(v60, *(&v60 + 1), v61, v62);
  }

  swift_endAccess();
  [v58 addPayment_];
}

__n128 sub_1E15F39E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v14[0] = a5;
  v14[1] = a6;
  v11 = a8;
  v12 = a9;
  v13 = a10;
  sub_1E15F3278(a3, a4, v14, 0, a7, &v11);
  return result;
}

void ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v19 = *a1;
  LOBYTE(v20) = v7;
  v8 = v3 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 8);
  v22 = v9;
  v23 = v10;
  sub_1E1361A40(v9, v10);
  v11 = static ArcadeState.== infix(_:_:)(&v19, &v22);
  sub_1E1361A60(v9, v10);
  v12 = *v8;
  v13 = *(v8 + 8);
  if (v11)
  {
    *a3 = v12;
    *(a3 + 8) = v13;
    sub_1E1361A40(v12, v13);
  }

  else
  {
    *v8 = v6;
    *(v8 + 8) = v7;
    sub_1E1361A40(v12, v13);
    sub_1E1361A40(v6, v7);
    sub_1E1361A60(v12, v13);
    if (a2)
    {
      v19 = v12;
      LOBYTE(v20) = v13;
      sub_1E15F4448(&v19);
    }

    __swift_project_boxed_opaque_existential_1Tm((v3 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger), *(v3 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v14 = *v8;
    v15 = *(v8 + 8);
    v22 = v14;
    v23 = v15;
    sub_1E1361A40(v14, v15);
    v16 = ArcadeState.summary.getter();
    v18 = v17;
    v21 = MEMORY[0x1E69E6158];
    sub_1E1361A60(v14, v15);
    v19 = v16;
    v20 = v18;
    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF548C();

    *a3 = v12;
    *(a3 + 8) = v13;
  }
}

void sub_1E15F3CB4()
{
  if (*MEMORY[0x1E695E500])
  {
    if ([v0 objectForInfoDictionaryKey_])
    {
      sub_1E1AF6EBC();
      swift_unknownObjectRelease();
    }

    else
    {
      v1 = 0u;
      v2 = 0u;
    }

    v3[0] = v1;
    v3[1] = v2;
    if (*(&v2 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_1E1308058(v3, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E15F3D88()
{
  __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger), *(v0 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v1 = sub_1E1AF5DFC();
  v4[3] = MEMORY[0x1E69E6158];
  v4[0] = v1;
  v4[1] = v2;
  sub_1E1AF38BC();
  sub_1E1308058(v4, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  LOBYTE(v4[0]) = 0;
  ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(v4);
}

uint64_t sub_1E15F3F4C(unint64_t a1)
{
  v3 = sub_1E1AEFE6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - v7;
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  if (!a1)
  {
    goto LABEL_31;
  }

  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_30:
    v13 = sub_1E1AF71CC();
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_31:
    v34 = 0;
    v33 = 0;
    return v33 | v34;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_31;
  }

LABEL_4:
  v14 = 0;
  v45 = v1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId;
  v43 = v13;
  v44 = a1 & 0xC000000000000001;
  v37 = (v4 + 32);
  v40 = v12;
  v41 = v11;
  v42 = (v4 + 8);
  while (1)
  {
    if (v44)
    {
      v15 = MEMORY[0x1E68FFD80](v14, a1, v9);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v4 = v15;
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v1 = *(v45 + 1);
    if (!v1)
    {
      goto LABEL_5;
    }

    v17 = v3;
    v18 = a1;
    v19 = *v45;
    v20 = [v15 familyID];
    v21 = [v20 stringValue];

    v22 = sub_1E1AF5DFC();
    v24 = v23;

    if (v22 == v19 && v1 == v24)
    {

      a1 = v18;
      v3 = v17;
      v12 = v40;
      v11 = v41;
    }

    else
    {
      v26 = sub_1E1AF74AC();

      a1 = v18;
      v3 = v17;
      v12 = v40;
      v11 = v41;
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v27 = [v4 expiryDate];
    if (!v27)
    {
      goto LABEL_24;
    }

    v28 = v27;
    v29 = v38;
    sub_1E1AEFE3C();

    (*v37)(v11, v29, v3);
    v30 = v39;
    sub_1E1AEFE5C();
    LOBYTE(v29) = sub_1E1AEFDCC();
    v1 = *v42;
    (*v42)(v30, v3);
    if (v29)
    {
      break;
    }

    v31 = [v4 isInGracePeriod];
    v1(v11, v3);
    if (v31)
    {
      goto LABEL_24;
    }

LABEL_5:

    ++v14;
    if (v16 == v43)
    {
      goto LABEL_31;
    }
  }

  v1(v11, v3);
LABEL_24:
  v32 = [v4 isTrialPeriod];

  if (v32)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  v34 = 1;
  return v33 | v34;
}

BOOL sub_1E15F42D4(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (v1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId);
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId + 8);
  if (!v3)
  {
    return 0;
  }

  v5 = *v2;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_23:
    v18 = sub_1E1AF71CC();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v18 != v7;
    if (v18 == v7)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E68FFD80](v7, a1);
    }

    else
    {
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = [v9 stringValue];
    v12 = sub_1E1AF5DFC();
    v14 = v13;

    if (v12 == v5 && v3 == v14)
    {

      return 1;
    }

    v16 = sub_1E1AF74AC();

    ++v7;
  }

  while ((v16 & 1) == 0);
  return v8;
}

uint64_t sub_1E15F4448(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF320C();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF324C();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v12 = sub_1E1AF68EC();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  aBlock[4] = sub_1E15F8B28;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_112;
  v14 = _Block_copy(aBlock);
  v15 = v2;
  sub_1E1361A40(v10, v11);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E1302A4C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v9, v6, v14);
  _Block_release(v14);

  (*(v18 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v17);
}

void ArcadeSubscriptionManager.handle(_:resultHandler:)(void *a1, void (*a2)(void, id), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_dialogHandler);
  if (v6)
  {
    v13 = v6;
    CommerceDialogHandler.handle(_:resultHandler:)(a1, a2, a3);
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 bundleIdentifier];

    if (v9)
    {
      sub_1E1AF5DFC();
    }

    v10 = sub_1E1AF5DBC();

    v11 = sub_1E1AF5DBC();
    v12 = sub_1E1AF5DBC();
    v13 = AMSCustomError();

    a2(0, v13);
  }
}

id ArcadeSubscriptionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall ArcadeSubscriptionManager.paymentQueue(_:updatedTransactions:)(SKPaymentQueue _, Swift::OpaquePointer updatedTransactions)
{
  v3 = v2;
  internal = _._internal;
  isa = _.super.isa;
  v120 = sub_1E1AF320C();
  v5 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1E1AF324C();
  v7 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (internal >> 62)
  {
    v9 = sub_1E1AF71CC();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((internal & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 >= 1)
  {
    v142 = &v3[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger];
    v129 = &v3[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider];
    v10 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentCallbacks;
    v141 = internal & 0xC000000000000001;
    v135 = &v3[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v11 = 0;
    v128 = "deSubscriptionManager";
    v127 = "ansaction restored";
    v126 = "Transaction purchasing";
    v125 = "Transaction purchased";
    v124 = "allbacks complete";
    v121 = *MEMORY[0x1E697BAD8];
    v116 = "Transaction failed";
    v123 = "titlement update.";
    v115 = &v149;
    v114 = (v5 + 8);
    v113 = (v7 + 8);
    v138 = xmmword_1E1B02CD0;
    v122 = xmmword_1E1B03760;
    v112 = xmmword_1E1B02CC0;
    v137 = v3;
    v143 = internal;
    v140 = v9;
    v139 = v10;
    while (1)
    {
      v15 = v141 ? MEMORY[0x1E68FFD80](v11, internal) : *(internal + 8 * v11 + 32);
      v144 = v15;
      v16 = [v15 transactionState];
      if (v16 <= 1)
      {
        if (!v16)
        {
          sub_1E1300B24(v142, &aBlock);
          v134 = v151;
          __swift_project_boxed_opaque_existential_1Tm(&aBlock, v150);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = v138;
          sub_1E1AF382C();
          v45 = [v144 transactionIdentifier];
          if (v45)
          {
            v46 = v45;
            v47 = sub_1E1AF5DFC();
            v49 = v48;

            *(&v146 + 1) = MEMORY[0x1E69E6158];
            *&v145 = v47;
            *(&v145 + 1) = v49;
            internal = v143;
            v3 = v137;
          }

          else
          {
            v145 = 0u;
            v146 = 0u;
          }

          sub_1E1AF38BC();
          sub_1E1308058(&v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
          sub_1E1AF548C();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v9 = v140;
          v10 = v139;
          goto LABEL_8;
        }

        if (v16 == 1)
        {
          sub_1E1300B24(v142, &aBlock);
          v132 = v151;
          v131 = __swift_project_boxed_opaque_existential_1Tm(&aBlock, v150);
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
          v23 = *(sub_1E1AF38EC() - 8);
          v24 = *(v23 + 72);
          v25 = *(v23 + 80);
          v134 = v22;
          v133 = (((v25 + 32) & ~v25) + 2 * v24);
          *(swift_allocObject() + 16) = v138;
          sub_1E1AF382C();
          v26 = [v144 transactionIdentifier];
          if (v26)
          {
            v27 = v26;
            v28 = sub_1E1AF5DFC();
            v130 = v25;
            v29 = v28;
            v31 = v30;

            *(&v146 + 1) = MEMORY[0x1E69E6158];
            *&v145 = v29;
            *(&v145 + 1) = v31;
          }

          else
          {
            v145 = 0u;
            v146 = 0u;
          }

          sub_1E1AF38BC();
          sub_1E1308058(&v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
          sub_1E1AF548C();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v3 = v137;
          v90 = v144;
          sub_1E15F5EFC(v137, v144, &unk_1F5C3FEC0, sub_1E15F89FC, &block_descriptor_99);
          sub_1E1300B24(v142, &aBlock);
          __swift_project_boxed_opaque_existential_1Tm(&aBlock, v150);
          *(swift_allocObject() + 16) = v138;
          sub_1E1AF382C();
          v91 = [v90 transactionIdentifier];
          if (v91)
          {
            v92 = v91;
            v93 = sub_1E1AF5DFC();
            v95 = v94;

            *(&v146 + 1) = MEMORY[0x1E69E6158];
            *&v145 = v93;
            *(&v145 + 1) = v95;
            v3 = v137;
          }

          else
          {
            v145 = 0u;
            v146 = 0u;
          }

          sub_1E1AF38BC();
          sub_1E1308058(&v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
          sub_1E1AF548C();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v96 = *(v129 + 3);
          v97 = *(v129 + 4);
          __swift_project_boxed_opaque_existential_1Tm(v129, v96);
          v98 = (*(v97 + 8))(v96, v97);
          *&v145 = v98;
          BYTE8(v145) = 0x80;
          ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v145, 1, &aBlock);
          sub_1E1361A60(v98, 0x80u);
          v88 = aBlock;
          v89 = v148;
LABEL_56:
          sub_1E1361A60(v88, v89);
LABEL_57:
          v9 = v140;
          v10 = v139;
LABEL_58:
          v99 = v144;
          [(objc_class *)isa finishTransaction:v144];
          v100 = [v99 payment];
          v101 = [v100 productIdentifier];

          v102 = sub_1E1AF5DFC();
          v104 = v103;

          swift_beginAccess();
          v105 = sub_1E13018F8(v102, v104);
          internal = v143;
          if (v106)
          {
            v107 = v105;
            v108 = v9;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v110 = *&v3[v10];
            *&v145 = v110;
            *&v3[v10] = 0x8000000000000000;
            v111 = v10;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1E1418C10();
              v110 = v145;
            }

            v12 = *(v110 + 56) + 32 * v107;
            v13 = *(v12 + 16);
            v14 = *(v12 + 24);

            sub_1E1361B18(v13, v14);
            sub_1E1412DF0(v107, v110);
            *&v3[v111] = v110;
            v10 = v111;
            v9 = v108;
            internal = v143;
          }

          swift_endAccess();

          goto LABEL_7;
        }
      }

      else
      {
        switch(v16)
        {
          case 2:
            sub_1E1300B24(v142, &aBlock);
            v134 = v151;
            v133 = __swift_project_boxed_opaque_existential_1Tm(&aBlock, v150);
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
            v33 = *(sub_1E1AF38EC() - 8);
            v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
            v132 = v32;
            *(swift_allocObject() + 16) = v122;
            v131 = v34;
            sub_1E1AF382C();
            v35 = [v144 transactionIdentifier];
            if (v35)
            {
              v36 = v35;
              v37 = sub_1E1AF5DFC();
              v39 = v38;

              *(&v146 + 1) = MEMORY[0x1E69E6158];
              *&v145 = v37;
              *(&v145 + 1) = v39;
            }

            else
            {
              v145 = 0u;
              v146 = 0u;
            }

            sub_1E1AF38BC();
            sub_1E1308058(&v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
            v73 = [v144 error];
            if (v73)
            {
              v74 = v73;
              swift_getErrorValue();
              v75 = sub_1E1AF75AC();
              v77 = v76;
              *(&v146 + 1) = MEMORY[0x1E69E6158];

              *&v145 = v75;
              *(&v145 + 1) = v77;
            }

            else
            {
              v145 = 0u;
              v146 = 0u;
            }

            v9 = v140;
            sub_1E1AF38BC();
            sub_1E1308058(&v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
            sub_1E1AF548C();

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            v3 = v137;
            sub_1E15F5EFC(v137, v144, &unk_1F5C3FF10, sub_1E15F8D04, &block_descriptor_106);
            v78 = v135[8];
            if ((v78 & 0xC0) == 0x40)
            {
              v79 = *v135;
              v80 = *(*v135 + 24);
              *&v145 = *(*v135 + 16);
              BYTE8(v145) = v80;

              ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v145, 1, &aBlock);
              sub_1E1361A60(aBlock, v148);
              sub_1E1361A60(v79, v78);
            }

            else
            {
              *&v145 = 0;
              BYTE8(v145) = -64;
              ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v145, 1, &aBlock);
              sub_1E1361A60(aBlock, v148);
              LOBYTE(aBlock) = -63;
              ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);
            }

            v10 = v139;
            v81 = [v144 error];
            if (v81)
            {
              v82 = v81;
              v83 = sub_1E1AEFB1C();
              IsEqual = AMSErrorIsEqual();

              if (IsEqual)
              {
                __swift_project_boxed_opaque_existential_1Tm(v142, *(v142 + 3));
                *(swift_allocObject() + 16) = v112;
                sub_1E1AF382C();
                v10 = v139;
                sub_1E1AF548C();
                v9 = v140;

                LOBYTE(aBlock) = -63;
                ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);
              }
            }

            goto LABEL_58;
          case 3:
            sub_1E1300B24(v142, &aBlock);
            __swift_project_boxed_opaque_existential_1Tm(&aBlock, v150);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
            sub_1E1AF38EC();
            *(swift_allocObject() + 16) = v138;
            sub_1E1AF382C();
            v40 = [v144 transactionIdentifier];
            if (v40)
            {
              v41 = v40;
              v42 = sub_1E1AF5DFC();
              v44 = v43;

              *(&v146 + 1) = MEMORY[0x1E69E6158];
              *&v145 = v42;
              *(&v145 + 1) = v44;
              v3 = v137;
            }

            else
            {
              v145 = 0u;
              v146 = 0u;
            }

            sub_1E1AF38BC();
            sub_1E1308058(&v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
            sub_1E1AF54BC();

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            sub_1E15F5EFC(v3, v144, &unk_1F5C3FEC0, sub_1E15F89FC, &block_descriptor_99);
            LOBYTE(aBlock) = -63;
LABEL_50:
            ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);

            goto LABEL_57;
          case 4:
            sub_1E1300B24(v142, &aBlock);
            __swift_project_boxed_opaque_existential_1Tm(&aBlock, v150);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
            sub_1E1AF38EC();
            *(swift_allocObject() + 16) = v138;
            sub_1E1AF382C();
            v17 = [v144 transactionIdentifier];
            if (v17)
            {
              v18 = v17;
              v19 = sub_1E1AF5DFC();
              v21 = v20;

              *(&v146 + 1) = MEMORY[0x1E69E6158];
              *&v145 = v19;
              *(&v145 + 1) = v21;
              v3 = v137;
            }

            else
            {
              v145 = 0u;
              v146 = 0u;
            }

            sub_1E1AF38BC();
            sub_1E1308058(&v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
            sub_1E1AF548C();

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            sub_1E15F5EFC(v3, v144, &unk_1F5C3FEC0, sub_1E15F89FC, &block_descriptor_99);
            v85 = v135[8];
            if ((v85 & 0xC0) == 0x40)
            {
              v86 = *v135;
              v87 = *(*v135 + 24);
              *&v145 = *(*v135 + 16);
              BYTE8(v145) = v87;

              ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v145, 1, &aBlock);
              sub_1E1361A60(aBlock, v148);
              v88 = v86;
              v89 = v85;
              goto LABEL_56;
            }

            *&v145 = 0;
            BYTE8(v145) = -64;
            ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v145, 1, &aBlock);
            sub_1E1361A60(aBlock, v148);
            LOBYTE(aBlock) = -63;
            goto LABEL_50;
        }
      }

      v50 = [v144 payment];
      v51 = [v50 productIdentifier];

      v52 = sub_1E1AF5DFC();
      v54 = v53;

      swift_beginAccess();
      v55 = *&v3[v10];
      if (!*(v55 + 16))
      {
        break;
      }

      v56 = sub_1E13018F8(v52, v54);
      v58 = v57;

      if ((v58 & 1) == 0)
      {
        goto LABEL_62;
      }

      v59 = (*(v55 + 56) + 32 * v56);
      v60 = *v59;
      v61 = v59[1];
      v63 = v59[2];
      v62 = v59[3];
      swift_endAccess();
      sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);

      sub_1E1300E34(v63, v62);
      v134 = sub_1E1AF68EC();
      v64 = swift_allocObject();
      v64[2] = v3;
      v64[3] = v60;
      v64[4] = v61;
      v64[5] = v63;
      v133 = v62;
      v64[6] = v62;
      v151 = sub_1E15F81CC;
      v152 = v64;
      aBlock = MEMORY[0x1E69E9820];
      v148 = 1107296256;
      v149 = sub_1E1302D64;
      v150 = &block_descriptor_34;
      v65 = _Block_copy(&aBlock);

      sub_1E1300E34(v63, v62);
      v66 = v3;

      v67 = v117;
      sub_1E1AF322C();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1E1302A4C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
      sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
      v68 = v119;
      v69 = v120;
      sub_1E1AF6EEC();
      v70 = v134;
      MEMORY[0x1E68FF640](0, v67, v68, v65);
      v71 = v65;
      internal = v143;
      _Block_release(v71);
      v9 = v140;

      sub_1E1361B18(v63, v133);
      (*v114)(v68, v69);
      v72 = v67;
      v10 = v139;
      (*v113)(v72, v118);
LABEL_7:

LABEL_8:
      if (v9 == ++v11)
      {
        return;
      }
    }

LABEL_62:
    swift_endAccess();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1E15F5EFC(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v7 = sub_1E1AF320C();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF324C();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 payment];
  v15 = [v14 productIdentifier];

  v16 = sub_1E1AF5DFC();
  v18 = v17;

  v19 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentCallbacks;
  swift_beginAccess();
  v20 = *&a1[v19];
  if (*(v20 + 16))
  {
    v21 = sub_1E13018F8(v16, v18);
    v23 = v22;

    if (v23)
    {
      v24 = (*(v20 + 56) + 32 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      swift_endAccess();
      sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);

      sub_1E1300E34(v27, v28);
      v37 = sub_1E1AF68EC();
      v29 = swift_allocObject();
      v29[2] = a1;
      v29[3] = v25;
      v29[4] = v26;
      v29[5] = v27;
      v36 = v27;
      v29[6] = v28;
      v30 = v28;
      aBlock[4] = v39;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E1302D64;
      aBlock[3] = v40;
      v31 = _Block_copy(aBlock);

      sub_1E1300E34(v27, v30);
      v32 = a1;

      sub_1E1AF322C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E1302A4C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
      sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
      sub_1E1AF6EEC();
      v33 = v37;
      MEMORY[0x1E68FF640](0, v13, v9, v31);
      _Block_release(v31);

      sub_1E1361B18(v36, v30);
      (*(v38 + 8))(v9, v7);
      return (*(v41 + 8))(v13, v42);
    }
  }

  else
  {
  }

  return swift_endAccess();
}

uint64_t sub_1E15F6384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v25 = a2;
  v26 = a3;
  sub_1E15F8B34(v24, v23);
  v8 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_observers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a4 + v8);
  *(a4 + v8) = 0x8000000000000000;
  v12 = sub_1E131A7E8(a1);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(a4 + v8) = v10;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1E1418DA8();
      *(a4 + v8) = v10;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_1E165F7E8(v12, a1, MEMORY[0x1E69E7CC0], v10);
    goto LABEL_9;
  }

  sub_1E168E044(v15, isUniquelyReferenced_nonNull_native);
  v17 = sub_1E131A7E8(a1);
  if ((v16 & 1) != (v18 & 1))
  {
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

  v12 = v17;
  *(a4 + v8) = v10;
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a4 = v10[7];
  v10 = *(a4 + 8 * v12);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 8 * v12) = v10;
  if ((v19 & 1) == 0)
  {
LABEL_14:
    v10 = sub_1E172E9D4(0, v10[2] + 1, 1, v10);
    *(a4 + 8 * v12) = v10;
  }

  v21 = v10[2];
  v20 = v10[3];
  if (v21 >= v20 >> 1)
  {
    v10 = sub_1E172E9D4((v20 > 1), v21 + 1, 1, v10);
    *(a4 + 8 * v12) = v10;
  }

  v10[2] = v21 + 1;
  sub_1E15F8B9C(v23, &v10[3 * v21 + 4]);
  swift_endAccess();
  return sub_1E15F8B6C(v24);
}

id ArcadeSubscriptionManager.removeSubscriptionStateActions(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock);
  [v3 lock];
  swift_beginAccess();
  sub_1E13878AC(0, a1);
  swift_endAccess();
  return [v3 unlock];
}

id sub_1E15F6614(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock);
  [v6 lock];
  sub_1E15F66B8(a1, a2, v3);

  return [v6 unlock];
}

void sub_1E15F66B8(uint64_t a1, void *a2, int a3)
{
  v54 = a3;
  v4 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_observers;
  swift_beginAccess();
  v37 = v4;
  v38 = a1;
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = v5 + 64;
  v8 = -1;
  if (v6 < 64)
  {
    v8 = ~(-1 << v6);
  }

  v9 = v8 & *(v5 + 64);
  v46 = a1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  v10 = (v6 + 63) >> 6;
  v43 = v5;

  v11 = 0;
  v39 = MEMORY[0x1E69E7CC8];
  v40 = v7;
  v41 = v10;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v44 = v12;
    v45 = v9;
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v42 = *(*(v43 + 48) + v13);
    v14 = *(*(v43 + 56) + v13);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 32;

      swift_beginAccess();
      v17 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1E15F8B34(v16, v52);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          v18 = *v46;
          v19 = *(v46 + 8);
          v20 = v53;
          v48 = a2;
          v21 = v54;
          v49 = v54;
          v50 = v18;
          v51 = v19;
          sub_1E1361A40(v18, v19);
          sub_1E1361A40(a2, v21);
          v20(&v48);
          sub_1E15F8B34(v52, &v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1E172E9D4(0, v17[2] + 1, 1, v17);
          }

          v23 = v17[2];
          v22 = v17[3];
          if (v23 >= v22 >> 1)
          {
            v17 = sub_1E172E9D4((v22 > 1), v23 + 1, 1, v17);
          }

          sub_1E1361A60(a2, v54);
          sub_1E1361A60(v18, v19);
          v17[2] = v23 + 1;
          sub_1E15F8B9C(&v48, &v17[3 * v23 + 4]);
        }

        sub_1E15F8B6C(v52);
        v16 += 24;
        --v15;
      }

      while (v15);

      v7 = v40;
      v10 = v41;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v9 = (v45 - 1) & v45;
    if (v17[2])
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v39;
      v25 = sub_1E131A7E8(v42);
      v27 = v39[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_35;
      }

      v31 = v26;
      if (v39[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v25;
          sub_1E1418DA8();
          v25 = v36;
          v9 = (v45 - 1) & v45;
        }
      }

      else
      {
        sub_1E168E044(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_1E131A7E8(v42);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_37;
        }
      }

      v33 = v48;
      v39 = v48;
      if (v31)
      {
        *(v48[7] + 8 * v25) = v17;
      }

      else
      {
        v48[(v25 >> 6) + 8] |= 1 << v25;
        *(v33[6] + 8 * v25) = v42;
        *(v33[7] + 8 * v25) = v17;
        v34 = v33[2];
        v29 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v29)
        {
          goto LABEL_36;
        }

        v33[2] = v35;
      }

      v10 = v41;
      v11 = v44;
    }

    else
    {

      v11 = v44;
    }
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

      *(v38 + v37) = v39;

      return;
    }

    v9 = *(v7 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1E1AF757C();
  __break(1u);
}

void sub_1E15F6AA4(uint64_t a1, char a2, char a3, id a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    if (a5 & 1) != 0 && (a2 & 1) != 0 && (a3)
    {
      type metadata accessor for Code(0);
      v10 = a4;
      sub_1E1302A4C(&qword_1ECEB2110, type metadata accessor for Code, &unk_1E1B01D8C);
      if (sub_1E1AEF98C())
      {
        __swift_project_boxed_opaque_existential_1Tm((a6 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger), *(a6 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger + 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF382C();
        sub_1E1AF548C();

        v11 = *(a6 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24);
        v12 = *(a6 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32);
        __swift_project_boxed_opaque_existential_1Tm((a6 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements), v11);
        v13 = *(v12 + 8);

        v13(1, 1, sub_1E15F8C20, a7, v11, v12);

        return;
      }
    }

    else
    {
      v14 = a4;
    }

    sub_1E1AF584C();
  }

  else
  {
    sub_1E1AF586C();
  }
}

void sub_1E15F6CFC(uint64_t a1, char a2, char a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    sub_1E1AF584C();
  }

  else
  {
    sub_1E1AF586C();
  }
}

void sub_1E15F6D7C(uint64_t a1, char a2, id a3)
{
  if (a3)
  {
    v4 = a3;
    sub_1E1AF584C();
  }

  else
  {
    sub_1E1AF586C();
  }
}

uint64_t sub_1E15F6E04(uint64_t *a1, char *a2, char a3)
{
  if (*(a1 + 9) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69A0, &qword_1E1B1D558);
    v5 = sub_1E1AF588C();
    v6 = swift_allocObject();
    *(v6 + 16) = a3 & 1;
    *(v6 + 24) = a2;
    *(v6 + 32) = v5;
    v7 = *&a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
    v8 = *&a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
    __swift_project_boxed_opaque_existential_1Tm(&a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v7);
    v9 = *(v8 + 8);
    v10 = a2;

    v9(1, 1, sub_1E15F8D08, v6, v7, v8);

    return v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69A0, &qword_1E1B1D558);

    return sub_1E1AF582C();
  }
}

uint64_t sub_1E15F6F48(uint64_t a1, char *a2, char a3)
{
  v5 = *(a1 + 9);
  if (*(a1 + 8) == 1)
  {
    if ((sub_1E15F3F4C(*a1) & 1) == 0 && (v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a1 + 9))
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69A0, &qword_1E1B1D558);

    return sub_1E1AF582C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69A0, &qword_1E1B1D558);
  v7 = sub_1E1AF588C();
  v8 = swift_allocObject();
  *(v8 + 16) = a3 & 1;
  *(v8 + 24) = a2;
  *(v8 + 32) = v7;
  v9 = *&a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
  v10 = *&a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
  __swift_project_boxed_opaque_existential_1Tm(&a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v9);
  v11 = *(v10 + 8);
  v12 = a2;

  v11(1, 1, sub_1E15F8D08, v8, v9, v10);

  return v7;
}

uint64_t sub_1E15F70A4(uint64_t a1, char *a2, char a3)
{
  v5 = *(a1 + 9);
  if (*(a1 + 8) == 1)
  {
    if ((sub_1E15F3F4C(*a1) & 1) != 0 && (v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a1 + 9))
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69A0, &qword_1E1B1D558);

    return sub_1E1AF582C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69A0, &qword_1E1B1D558);
  v7 = sub_1E1AF588C();
  v8 = swift_allocObject();
  *(v8 + 16) = a3 & 1;
  *(v8 + 24) = a2;
  *(v8 + 32) = v7;
  v9 = *&a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
  v10 = *&a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
  __swift_project_boxed_opaque_existential_1Tm(&a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v9);
  v11 = *(v10 + 8);
  v12 = a2;

  v11(1, 1, sub_1E15F8D08, v8, v9, v10);

  return v7;
}

uint64_t sub_1E15F7200(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB69B0, &qword_1E1B1D560);
  v6 = sub_1E1AF588C();
  v7 = (a2 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements);
  v8 = *(a2 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24);
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1Tm(v7, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v3;
  *(v10 + 32) = v4;
  *(v10 + 33) = v5;
  v11 = *(v9 + 24);

  v11(sub_1E15F8CC4, v10, v8, v9);

  return v6;
}

double sub_1E15F72FC(uint64_t a1, int a2, id a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v6 = a3;
    sub_1E1AF584C();
  }

  else
  {

    sub_1E1AF586C();
  }

  return result;
}

void sub_1E15F739C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E1300B24(Strong + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger, v33);
    __swift_project_boxed_opaque_existential_1Tm(v33, v33[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    if (a1)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6B00, &qword_1E1B1DB08);
      v8 = a1;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v30 = 0;
      v31 = 0;
    }

    v29 = v8;
    v32 = v7;

    sub_1E1AF38DC();
    sub_1E1308058(&v29, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    if (a2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6AF8, &qword_1E1B1DB00);
      v10 = a2;
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v30 = 0;
      v31 = 0;
    }

    v29 = v10;
    v32 = v9;

    sub_1E1AF38DC();
    sub_1E1308058(&v29, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF548C();

    __swift_destroy_boxed_opaque_existential_1(v33);
    v11 = &v6[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[8];
    sub_1E1361A40(*v11, v13);
    v14 = sub_1E15F3F4C(a1);
    if (v14)
    {
      v15 = v14;
      v16 = *&v6[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider + 24];
      v17 = *&v6[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider + 32];
      __swift_project_boxed_opaque_existential_1Tm(&v6[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider], v16);
      v18 = (*(v17 + 8))(v16, v17);
      v27 = v18;
      if ((v15 & 0x100) != 0)
      {
        v19 = -127;
      }

      else
      {
        v19 = -126;
      }

      v28 = v19;
      ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v27, 0, &v29);
      sub_1E1361A60(v12, v13);
      v20 = v18;
      v21 = v19;
    }

    else
    {
      v22 = sub_1E15F42D4(a2);
      v23 = 1;
      if (v22)
      {
        v23 = 2;
      }

      v27 = v23;
      v28 = 0;
      ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v27, 0, &v29);
      v20 = v12;
      v21 = v13;
    }

    sub_1E1361A60(v20, v21);
    v24 = v29;
    v25 = v30;
    v26 = v11[8];
    v29 = *v11;
    LOBYTE(v30) = v26;
    sub_1E1361A40(v29, v26);
    sub_1E1AF586C();
    sub_1E1361A60(v29, v30);
    v29 = v24;
    LOBYTE(v30) = v25;
    sub_1E1361A40(v24, v25);
    sub_1E15F4448(&v29);

    sub_1E1361A60(v24, v25);
    sub_1E1361A60(v29, v30);
  }
}

void sub_1E15F779C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v11 = 1;
    v12 = -64;
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v11, 0, &v8);
    v4 = v8;
    v5 = v9;
    sub_1E1AF584C();
    v8 = v4;
    LOBYTE(v9) = v5;
    sub_1E15F4448(&v8);
    __swift_project_boxed_opaque_existential_1Tm(&v3[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger], *&v3[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v6 = sub_1E1AF75AC();
    v10 = MEMORY[0x1E69E6158];
    v8 = v6;
    v9 = v7;
    sub_1E1AF38BC();
    sub_1E1308058(&v8, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54AC();

    sub_1E1361A60(v4, v5);
  }
}

id sub_1E15F79E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a8;
  v42 = a3;
  v47 = a1;
  v48 = a2;
  v43 = a9;
  v44 = a4;
  ObjectType = swift_getObjectType();
  v46 = sub_1E1AF428C();
  v12 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF58EC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1E1AF591C();
  v19 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[3] = a6;
  v52[4] = v41;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, v42, a6);
  v51[3] = a7;
  v51[4] = v43;
  v23 = __swift_allocate_boxed_opaque_existential_0(v51);
  (*(*(a7 - 8) + 32))(v23, v44, a7);
  *&a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentQueue] = 0;
  *&a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_dialogHandler] = 0;
  v24 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_observers;
  *&a5[v24] = sub_1E15A12D8(MEMORY[0x1E69E7CC0]);
  v25 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock;
  *&a5[v25] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *&a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentCallbacks] = MEMORY[0x1E69E7CC8];
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_1EE2160F8);
  (*(v16 + 16))(v18, v26, v15);
  sub_1E1AF590C();
  v27 = v46;
  (*(v12 + 104))(v14, *MEMORY[0x1E69AB100], v46);
  v28 = v45;
  v29 = sub_1E1AF547C();
  (*(v12 + 8))(v14, v27);
  (*(v19 + 8))(v21, v28);
  v30 = &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger];
  v31 = sub_1E1AF410C();
  v32 = MEMORY[0x1E69AB0B0];
  *(v30 + 3) = v31;
  *(v30 + 4) = v32;
  *v30 = v29;
  v33 = &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId];
  v34 = v48;
  *v33 = v47;
  *(v33 + 1) = v34;
  sub_1E1300B24(v52, &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements]);
  v35 = &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
  *v35 = 0;
  v35[8] = -64;
  sub_1E1300B24(v51, &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider]);
  v50.receiver = a5;
  v50.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v50, sel_init);
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 defaultCenter];
  [v39 addObserver:v38 selector:sel_entitlementsDidChange name:*MEMORY[0x1E698B470] object:0];

  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v38;
}

id sub_1E15F7EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a2;
  v27 = a8;
  v25 = a1;
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(v21);
  (*(v17 + 16))(v20, a3, a6);
  (*(v13 + 16))(v15, a4, a7);
  return sub_1E15F79E0(v25, v26, v20, v15, v22, a6, a7, v27, a9);
}

uint64_t sub_1E15F805C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB69E8, &unk_1E1B1D570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E15F80DC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v7[0] = *(v0 + 40);
  v7[1] = v4;
  v5 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v5;
  sub_1E15F3278(v1, v2, v7, 0, v3, v6);
}

uint64_t sub_1E15F812C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1E1300E34(a3, a4);
  }

  return result;
}

unint64_t sub_1E15F81D4()
{
  result = qword_1ECEB6A10;
  if (!qword_1ECEB6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6A10);
  }

  return result;
}

unint64_t sub_1E15F822C()
{
  result = qword_1ECEB6A18;
  if (!qword_1ECEB6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6A18);
  }

  return result;
}

uint64_t sub_1E15F828C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 9))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E15F82DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntitlementRefeshCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for EntitlementRefeshCondition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E15F8530(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 1) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_1E15F855C(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 ^ 0xC1;
  }

  return result;
}

uint64_t sub_1E15F8598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 25))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E15F85E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1E15F86A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E15F86E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1E15F875C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E15F87B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1E15F881C(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v4 = *(a2 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_dialogHandler);
  if (v4)
  {
    v14 = v4;
    sub_1E167E90C(a1, v14, a3);
  }

  else
  {
    v6 = objc_opt_self();
    _Block_copy(a3);
    v7 = [v6 mainBundle];
    v8 = [v7 bundleIdentifier];

    if (v8)
    {
      sub_1E1AF5DFC();
    }

    v9 = sub_1E1AF5DBC();

    v10 = sub_1E1AF5DBC();
    v11 = sub_1E1AF5DBC();
    v12 = AMSCustomError();

    v13 = sub_1E1AEFB1C();
    (a3)[2](a3, 0, v13);

    _Block_release(a3);
  }
}

id sub_1E15F89FC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock);
  (*(v0 + 24))([v1 lock]);

  return [v1 unlock];
}

uint64_t objectdestroy_42Tm()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

id sub_1E15F8AB8()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock);
  v3 = [v2 lock];
  if (v1)
  {
    v1(v3);
  }

  return [v2 unlock];
}

uint64_t sub_1E15F8BD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1E1361B18(a3, a4);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t TodayWidgetContainerTemplate.refreshDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit28TodayWidgetContainerTemplate_refreshDate;
  v4 = sub_1E1AEFE6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayWidgetContainerTemplate.originalResponseDate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28TodayWidgetContainerTemplate_originalResponseDate);

  return v1;
}

uint64_t TodayWidgetContainerTemplate.originalResponseHash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28TodayWidgetContainerTemplate_originalResponseHash);

  return v1;
}

uint64_t TodayWidgetContainerTemplate.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayWidgetContainerTemplate.init(deserializing:using:)(a1, a2);
  return v4;
}

void *TodayWidgetContainerTemplate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v78 = v3;
  v76 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v65 - v6;
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v65 - v11;
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  v22 = sub_1E1AF5A6C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v26 = v22;
  v29 = *(v14 + 8);
  v28 = v14 + 8;
  v27 = v29;
  v29(v21, v13);
  if ((*(v23 + 48))(v12, 1, v26) == 1)
  {
    sub_1E1308058(v12, &qword_1ECEB1F90, &qword_1E1B00D30);
    v30 = sub_1E1AF5A7C();
    sub_1E15F9C40(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v31 = 0x697463656C6C6F63;
    v32 = v76;
    v31[1] = 0xEB00000000736E6FLL;
    v31[2] = v32;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x1E69AB690], v30);
    swift_willThrow();
    v27(v77, v13);
    v33 = v79;
    v34 = v78;
    goto LABEL_6;
  }

  v67 = v28;
  v68 = v23;
  v35 = *(v23 + 32);
  v69 = v26;
  v36 = v35(v25, v12, v26);
  MEMORY[0x1EEE9AC00](v36);
  *(&v65 - 2) = v79;
  type metadata accessor for TodayWidgetCardCollectionTemplate(0);
  v37 = v71;
  v38 = sub_1E1AF59FC();
  if (!v37)
  {
    v71 = v25;
    v39 = v77;
    v40 = v78;
    v78[2] = v38;
    sub_1E1AF381C();
    v41 = v72;
    sub_1E1AF371C();
    v66 = v13;
    v42 = v13;
    v43 = v27;
    v27(v18, v42);
    v44 = v74;
    v45 = v75;
    if ((*(v75 + 48))(v41, 1, v74) != 1)
    {
      v50 = v73;
      (*(v45 + 32))(v73, v41, v44);
      (*(v45 + 16))(v40 + OBJC_IVAR____TtC11AppStoreKit28TodayWidgetContainerTemplate_refreshDate, v50, v44);
      v51 = v40;
      v52 = v70;
      v53 = v66;
      v76 = 0;
      sub_1E1AF381C();
      v54 = sub_1E1AF37CC();
      v55 = v39;
      v57 = v56;
      v43(v52, v53);
      v58 = (v51 + OBJC_IVAR____TtC11AppStoreKit28TodayWidgetContainerTemplate_originalResponseDate);
      *v58 = v54;
      v58[1] = v57;
      sub_1E1AF381C();
      v59 = sub_1E1AF37CC();
      v61 = v60;
      v43(v55, v53);
      v43(v52, v53);
      (*(v75 + 8))(v73, v44);
      (*(v68 + 8))(v71, v69);
      v34 = v78;
      v62 = (v78 + OBJC_IVAR____TtC11AppStoreKit28TodayWidgetContainerTemplate_originalResponseHash);
      *v62 = v59;
      v62[1] = v61;
      v63 = sub_1E1AF39DC();
      (*(*(v63 - 8) + 8))(v79, v63);
      return v34;
    }

    sub_1E1308058(v41, &unk_1ECEBB780, &unk_1E1B029A0);
    v46 = sub_1E1AF5A7C();
    sub_1E15F9C40(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v47 = 0x4468736572666572;
    v48 = v76;
    v47[1] = 0xEB00000000657461;
    v47[2] = v48;
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x1E69AB690], v46);
    swift_willThrow();
    v43(v39, v66);
    (*(v68 + 8))(v71, v69);

    v33 = v79;
    v34 = v40;
LABEL_6:
    swift_deallocPartialClassInstance();
    v49 = sub_1E1AF39DC();
    (*(*(v49 - 8) + 8))(v33, v49);
    return v34;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E15F9744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayWidgetCardCollectionTemplate(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E15F9C40(&qword_1ECEB6B20, type metadata accessor for TodayWidgetCardCollectionTemplate, &protocol conformance descriptor for TodayWidgetCardCollectionTemplate);
  return sub_1E1AF464C();
}

uint64_t TodayWidgetContainerTemplate.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit28TodayWidgetContainerTemplate_refreshDate;
  v2 = sub_1E1AEFE6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TodayWidgetContainerTemplate.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit28TodayWidgetContainerTemplate_refreshDate;
  v2 = sub_1E1AEFE6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1E15F9A98@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TodayWidgetContainerTemplate.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t type metadata accessor for TodayWidgetContainerTemplate(uint64_t a1)
{
  result = qword_1ECEB6B10;
  if (!qword_1ECEB6B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15F9B54(uint64_t a1)
{
  result = sub_1E1AEFE6C();
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

uint64_t sub_1E15F9C40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

AppStoreKit::ProductMedia::DescriptionPlacement __swiftcall ProductMedia.descriptionPlacement(when:)(AppStoreKit::ProductMedia::DescriptionPlacement when)
{
  if (when)
  {
    *v1 = 1;
  }

  else
  {
    *v1 = *(v2 + 72);
  }

  return when;
}

AppStoreKit::ProductMedia::DescriptionPlacement __swiftcall ProductMediaMetadata.descriptionPlacement(when:)(AppStoreKit::ProductMedia::DescriptionPlacement when)
{
  if (when)
  {
    *v1 = 1;
  }

  else
  {
    *v1 = *(v2 + 48);
  }

  return when;
}

uint64_t IdentifiableSearchResult.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit24IdentifiableSearchResult_id;
  v4 = sub_1E1AEFEAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_1E15F9D40(uint64_t a1)
{
  sub_1E1AEFE7C();
  sub_1E1AF5F0C();

  return result;
}

uint64_t IdentifiableSearchResult.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit24IdentifiableSearchResult_id;
  v2 = sub_1E1AEFEAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t IdentifiableSearchResult.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit24IdentifiableSearchResult_id;
  v2 = sub_1E1AEFEAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15F9EBC()
{
  sub_1E1AF762C();
  sub_1E1AEFE7C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E15F9F24@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit24IdentifiableSearchResult_id;
  v5 = sub_1E1AEFEAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E15F9FA0()
{
  sub_1E1AF762C();
  sub_1E1AEFE7C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E15FA00C(uint64_t a1)
{
  sub_1E1AEFE7C();
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E15FA0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for IdentifiableSearchResult(uint64_t a1)
{
  result = qword_1EE1D95D8;
  if (!qword_1EE1D95D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15FA190(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AEFE7C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E15FA21C(uint64_t a1)
{
  result = sub_1E1AEFEAC();
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

uint64_t Shadow.init(color:blurRadius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

UIImage_optional __swiftcall Wordmark.asset(in:)(UITraitCollection in)
{
  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EE1E3200;
  v3 = sub_1E1AF5DBC();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2 compatibleWithTraitCollection:in.super.isa];

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t Wordmark.hashValue.getter()
{
  sub_1E1AF762C();
  MEMORY[0x1E6900360](0);
  return sub_1E1AF767C();
}

unint64_t sub_1E15FA54C()
{
  result = qword_1ECEB6B28;
  if (!qword_1ECEB6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6B28);
  }

  return result;
}

uint64_t CornerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E15FA640()
{
  result = qword_1ECEB6B30;
  if (!qword_1ECEB6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6B30);
  }

  return result;
}

uint64_t ImpressionsAppendixFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ImpressionsAppendixFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void ImpressionsAppendixFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1EE1D28D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8, qword_1E1B1DE50);
  __swift_project_value_buffer(v2, qword_1EE1D28D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB0, &unk_1E1B14410);
  sub_1E1AF4AAC();
  if (v7)
  {
    ObjectType = swift_getObjectType();
    v4 = (*(v8 + 16))(ObjectType, v8);
    if (*(v4 + 16))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
      v7 = v4;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_1E1AF4A1C();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v7);
      return;
    }

    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v6 = sub_1E1AF591C();
    __swift_project_value_buffer(v6, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v5 = sub_1E1AF591C();
    __swift_project_value_buffer(v5, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t type metadata accessor for ImpressionsAppendixFieldsProvider(uint64_t a1)
{
  result = qword_1EE1E7820;
  if (!qword_1EE1E7820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArtworkLookupResponse.__allocating_init(artworkMap:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1E15FAC64()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1E15A47D8();
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t ArtworkLookupResponse.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArtworkLookupResponse.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ArtworkLookupResponse.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1E1AF40DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF368C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1E146F8C4(v8);
    v13 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v14 = 0x6B726F77747261;
    v14[1] = 0xE700000000000000;
    v14[2] = v5;
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E69AB690], v13);
    swift_willThrow();
    v15 = sub_1E1AF380C();
    (*(*(v15 - 8) + 8))(a1, v15);
    type metadata accessor for ArtworkLookupResponse();
    swift_deallocPartialClassInstance();
LABEL_5:
    v20 = sub_1E1AF39DC();
    (*(*(v20 - 8) + 8))(v23, v20);
    return v2;
  }

  v16 = (*(v10 + 32))(v12, v8, v9);
  MEMORY[0x1EEE9AC00](v16);
  *(&v22 - 2) = v23;
  type metadata accessor for Artwork(0);
  sub_1E13C4F1C();
  v17 = sub_1E1AF40AC();
  if (!v3)
  {
    v18 = v17;
    v19 = sub_1E1AF380C();
    (*(*(v19 - 8) + 8))(a1, v19);
    (*(v10 + 8))(v12, v9);
    v2[2] = v18;
    goto LABEL_5;
  }

  type metadata accessor for ArtworkLookupResponse();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_1E15FB0E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22 = a2;
  v23 = a4;
  v21 = a1;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artwork(0);
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, v23, v7);
  v15 = v24;
  v16 = Artwork.__allocating_init(deserializing:using:)(v14, v10);
  if (v15)
  {

    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v19 = v16;

    v17 = v21;
  }

  *a5 = v17;
  a5[1] = v18;
  a5[2] = v19;
}

uint64_t ArtworkLookupResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_1E15FB310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArtworkLookupResponse();
  v7 = swift_allocObject();
  result = ArtworkLookupResponse.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E15FB430()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E1AF5DBC();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_1E1AF621C();

    v4 = sub_1E1679410(v3);

    if (v4)
    {
      if (v4[2])
      {
        v5 = v4[4];
        v6 = v4[5];

        v9 = 0;
        v7 = sub_1E1ADD008(v5, v6, &v9);

        if (v7)
        {
          return v9;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

AppStoreKit::BagOfflinePolicy __swiftcall BagOfflinePolicy.init(defaultMaxAge:offlineMaxAge:)(Swift::Double defaultMaxAge, Swift::Double offlineMaxAge)
{
  *v2 = defaultMaxAge;
  v2[1] = offlineMaxAge;
  result._offlineMaxAge = offlineMaxAge;
  result._defaultMaxAge = defaultMaxAge;
  return result;
}

BOOL BagOfflinePolicy.isWithinDefaultMaxAge(bagExpirationDate:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v19 - v4;
  v6 = sub_1E1AEFE6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);
  sub_1E1380BEC(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E153DF88(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_1E1AEFDFC();
    v14 = v13;
    *v19 = v10;
    v19[1] = v11;
    *&v15 = COERCE_DOUBLE(sub_1E15FB430());
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = *&v15;
    if (v17)
    {
      v18 = v10;
    }

    return v18 > -v14;
  }
}

double sub_1E15FB72C()
{
  result = 86400.0;
  xmmword_1ECEB6B38 = xmmword_1E1B1DF90;
  return result;
}

double static BagOfflinePolicy.standard.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ECEB0ED8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1ECEB6B38;
  *a1 = xmmword_1ECEB6B38;
  return result;
}

uint64_t sub_1E15FB7AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1919251317;
  if (v2 != 1)
  {
    v4 = 0x7553776569766572;
    v3 = 0xED00007972616D6DLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4373726F74696465;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006563696F68;
  }

  v7 = 0xE400000000000000;
  v8 = 1919251317;
  if (*a2 != 1)
  {
    v8 = 0x7553776569766572;
    v7 = 0xED00007972616D6DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x4373726F74696465;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006563696F68;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E15FB8C0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E15FB974(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E15FBA14(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

unint64_t sub_1E15FBAC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E15FC338(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E15FBAF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006563696F68;
  v4 = 0xE400000000000000;
  v5 = 1919251317;
  if (v2 != 1)
  {
    v5 = 0x7553776569766572;
    v4 = 0xED00007972616D6DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4373726F74696465;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ProductReview.__allocating_init(id:componentType:source:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19[-v11 - 8];
  v13 = swift_allocObject();
  LOBYTE(a2) = *a2;
  v14 = *a3;
  v15 = (v13 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender);
  *v15 = 0u;
  v15[1] = 0u;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_source) = v14;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_flowPreviewActionsConfiguration) = a4;
  sub_1E134FD1C(a1, v19, &unk_1ECEB5670, qword_1E1B03EC0);
  HIBYTE(v18) = a2;
  sub_1E134FD1C(a5, v12, &unk_1ECEB1770, &unk_1E1AFED20);
  v16 = sub_1E1A572C0(v19, &v18 + 7, v12);
  sub_1E1308058(a5, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  return v16;
}

uint64_t ProductReview.init(id:componentType:source:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19[-v12 - 8];
  LOBYTE(a2) = *a2;
  v14 = *a3;
  v15 = (v5 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender);
  *v15 = 0u;
  v15[1] = 0u;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_source) = v14;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_flowPreviewActionsConfiguration) = a4;
  sub_1E134FD1C(a1, v19, &unk_1ECEB5670, qword_1E1B03EC0);
  HIBYTE(v18) = a2;
  sub_1E134FD1C(a5, v13, &unk_1ECEB1770, &unk_1E1AFED20);
  v16 = sub_1E1A572C0(v19, &v18 + 7, v13);
  sub_1E1308058(a5, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  return v16;
}

unint64_t ProductReview.source.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_source);
  *a1 = v2;
  return sub_1E15FCD34(v2);
}

uint64_t sub_1E15FBE4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_source) >> 62;
  if (!v1)
  {
    swift_beginAccess();
  }

  if (v1 == 1)
  {
  }

  return 0;
}

uint64_t sub_1E15FBEC8(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v6, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender;
  swift_beginAccess();
  sub_1E137F818(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1E15FBF3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB2DF0, &unk_1E1B02CE0);
}

uint64_t sub_1E15FBFA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender;
  swift_beginAccess();
  sub_1E137F818(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E15FC074()
{
  sub_1E15FCD64(*(v0 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_source));
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
}

uint64_t ProductReview.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E15FCD64(*(v0 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_source));
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t ProductReview.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_source);

  sub_1E15FCD64(v1);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15FC238()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_source) >> 62;
  if (!v1)
  {
    swift_beginAccess();
  }

  if (v1 == 1)
  {
  }

  return 0;
}

uint64_t sub_1E15FC2B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a1, &qword_1ECEB2DF0, &unk_1E1B02CE0);
}

unint64_t sub_1E15FC338(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E1AF72FC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void (*sub_1E15FC384(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v100 = a2;
  v88 = sub_1E1AEFEAC();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v94 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1E1AF39DC();
  v99 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v91 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v79 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v79 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v79 - v16;
  v17 = sub_1E1AF380C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v79 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v79 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v95 = &v79 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v79 - v33;
  sub_1E1AF381C();
  sub_1E15FCFC4();
  v35 = v98;
  sub_1E1AF36AC();
  if (v35)
  {
    (*(v99 + 8))(v100, v101);
    v36 = *(v18 + 8);
    v36(a1, v17);
    v36(v34, v17);
    return v36;
  }

  v80 = v29;
  v81 = v26;
  v82 = v23;
  v83 = v20;
  v98 = 0;
  v36 = *(v18 + 8);
  v85 = v17;
  v84 = v18 + 8;
  v36(v34, v17);
  v37 = v104[0];
  sub_1E1AF46DC();
  v86 = a1;
  sub_1E1AF381C();
  v38 = *(v99 + 16);
  v38(v97, v100, v101);
  v39 = v96;
  sub_1E1AF464C();
  if (v37)
  {
    v97 = v36;
    if (v37 == 1)
    {
      v40 = v81;
      v41 = v86;
      sub_1E1AF381C();
      v42 = v90;
      v43 = v38;
      v45 = v100;
      v44 = v101;
      v43(v90, v100, v101);
      type metadata accessor for Review(0);
      swift_allocObject();
      v46 = v98;
      v47 = Review.init(deserializing:using:)(v40, v42);
      v48 = v85;
      v49 = v94;
      if (v46)
      {
        v50 = *(v99 + 8);
        v51 = v45;
LABEL_11:
        v63 = v44;
        v36 = v46;
        v50(v51, v63);
        (v97)(v41, v48);
        sub_1E1308058(v39, &unk_1ECEB1770, &unk_1E1AFED20);
        return v36;
      }

      v98 = 0;
      v64 = *(v47 + OBJC_IVAR____TtC11AppStoreKit6Review_flowPreviewActionsConfiguration);
      v95 = (v47 | 0x4000000000000000);
      swift_retain_n();
      v65 = v99;
    }

    else
    {
      v59 = v82;
      v41 = v86;
      sub_1E1AF381C();
      v60 = v91;
      v61 = v100;
      v44 = v101;
      v38(v91, v100, v101);
      type metadata accessor for ReviewSummary(0);
      swift_allocObject();
      v46 = v98;
      v62 = ReviewSummary.init(deserializing:using:)(v59, v60);
      v48 = v85;
      if (v46)
      {
        v50 = *(v99 + 8);
        v51 = v61;
        goto LABEL_11;
      }

      v98 = 0;
      v64 = *&v62[OBJC_IVAR____TtC11AppStoreKit13ReviewSummary_flowPreviewActionsConfiguration];
      v95 = (v62 | 0x8000000000000000);
      swift_retain_n();
      v45 = v61;
      v65 = v99;
      v49 = v94;
    }
  }

  else
  {
    v52 = v80;
    v53 = v86;
    sub_1E1AF381C();
    v54 = v89;
    v55 = v38;
    v45 = v100;
    v56 = v101;
    v55(v89, v100, v101);
    v57 = v98;
    v58 = sub_1E14A9B88(v52, v54);
    v98 = v57;
    v49 = v94;
    if (v57)
    {
      (*(v99 + 8))(v45, v56);
      v36(v53, v85);
      sub_1E1308058(v39, &unk_1ECEB1770, &unk_1E1AFED20);
      return v36;
    }

    v95 = v58;
    v97 = v36;
    v64 = 0;
    v65 = v99;
    v48 = v85;
  }

  v66 = v83;
  sub_1E1AF381C();
  v67 = sub_1E1AF37CC();
  if (v68)
  {
    v102 = v67;
    v103 = v68;
  }

  else
  {
    sub_1E1AEFE9C();
    v69 = sub_1E1AEFE7C();
    v70 = v49;
    v72 = v71;
    (*(v87 + 8))(v70, v88);
    v102 = v69;
    v103 = v72;
  }

  sub_1E1AF6F6C();
  v73 = v97;
  (v97)(v66, v48);
  v74 = v93;
  sub_1E134FD1C(v39, v93, &unk_1ECEB1770, &unk_1E1AFED20);
  type metadata accessor for ProductReview(0);
  v75 = swift_allocObject();
  v76 = (v75 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender);
  *v76 = 0u;
  v76[1] = 0u;
  *(v75 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_source) = v95;
  *(v75 + OBJC_IVAR____TtC11AppStoreKit13ProductReview_flowPreviewActionsConfiguration) = v64;
  sub_1E134FD1C(v104, &v102, &unk_1ECEB5670, qword_1E1B03EC0);
  v105 = 4;
  v77 = v92;
  sub_1E134FD1C(v74, v92, &unk_1ECEB1770, &unk_1E1AFED20);
  v36 = sub_1E1A572C0(&v102, &v105, v77);

  (*(v65 + 8))(v45, v101);
  v73(v86, v85);
  sub_1E1308058(v74, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v104, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v39, &unk_1ECEB1770, &unk_1E1AFED20);
  return v36;
}

unint64_t sub_1E15FCD34(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

unint64_t sub_1E15FCD64(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t type metadata accessor for ProductReview(uint64_t a1)
{
  result = qword_1EE1F4C10;
  if (!qword_1EE1F4C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15FCF08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E15FCF64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1E15FCFC4()
{
  result = qword_1EE1F4C30;
  if (!qword_1EE1F4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F4C30);
  }

  return result;
}

unint64_t sub_1E15FD02C()
{
  result = qword_1ECEB6B48;
  if (!qword_1ECEB6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6B48);
  }

  return result;
}

uint64_t ShareSheetAppEventMetadata.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetAppEventMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ShareSheetAppEventMetadata.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetAppEventMetadata.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t *ShareSheetAppEventMetadata.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v31 = *v3;
  v33 = sub_1E1AF39DC();
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v35 = a1;
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v3[2] = v14;
    v3[3] = v16;
    v18 = v35;
    sub_1E1AF381C();
    v19 = sub_1E1AF37CC();
    v21 = v20;
    v30 = v17;
    v17(v10, v7);
    v3[4] = v19;
    v3[5] = v21;
    type metadata accessor for Artwork(0);
    sub_1E1AF381C();
    v22 = *(v5 + 16);
    v31 = v7;
    v24 = v33;
    v23 = v34;
    v22(v32, v34, v33);
    sub_1E13ECC08(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_1E1AF464C();
    (*(v5 + 8))(v23, v24);
    v30(v18, v31);
    v3[6] = v36;
  }

  else
  {
    v25 = sub_1E1AF5A7C();
    sub_1E13ECC08(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v26 = 1954047348;
    v27 = v31;
    v26[1] = 0xE400000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    (*(v5 + 8))(v34, v33);
    v17(v35, v7);
    type metadata accessor for ShareSheetAppEventMetadata();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *ShareSheetAppEventMetadata.__allocating_init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *ShareSheetAppEventMetadata.init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

void *ShareSheetAppEventMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetAppEventMetadata.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_1E15FD658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetAppEventMetadata();
  v7 = swift_allocObject();
  result = ShareSheetAppEventMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E15FD718()
{
  result = sub_1E1AF5DBC();
  qword_1EE1ED788 = result;
  return result;
}

uint64_t sub_1E15FD750()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE216A00);
  __swift_project_value_buffer(v4, qword_1EE216A00);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t NWPathNetworkInquiry.__allocating_init(evaluator:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6B50, &unk_1E1B1E290);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-v4];
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = OBJC_IVAR____TtC11AppStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v16 = 0;
  sub_1E1AF1FFC();
  (*(v3 + 32))(v6 + v7, v5, v2);
  *(v6 + 16) = a1;
  v15 = a1;
  swift_getKeyPath(byte_1E1B1E2A0);
  swift_allocObject();
  swift_weakInit();
  v8 = a1;
  v9 = sub_1E1AEFB6C();

  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [*(v6 + 16) path];
  v12 = [v11 status];

  swift_getKeyPath(byte_1E1B1E2C8);
  swift_getKeyPath(byte_1E1B1E2F0);
  v14[15] = (v12 & 0xFFFFFFFFFFFFFFFDLL) != 1;

  sub_1E1AF204C();

  return v6;
}

uint64_t NWPathNetworkInquiry.init(evaluator:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6B50, &unk_1E1B1E290);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-v6];
  *(v2 + 24) = 0;
  v8 = OBJC_IVAR____TtC11AppStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v17 = 0;
  sub_1E1AF1FFC();
  (*(v5 + 32))(v2 + v8, v7, v4);
  *(v2 + 16) = a1;
  v16 = a1;
  swift_getKeyPath(byte_1E1B1E2A0);
  swift_allocObject();
  swift_weakInit();
  v9 = a1;
  v10 = sub_1E1AEFB6C();

  v11 = *(v2 + 24);
  *(v2 + 24) = v10;

  v12 = [*(v2 + 16) path];
  v13 = [v12 status];

  swift_getKeyPath(byte_1E1B1E2C8);
  swift_getKeyPath(byte_1E1B1E2F0);
  v15[15] = (v13 & 0xFFFFFFFFFFFFFFFDLL) != 1;

  sub_1E1AF204C();

  return v2;
}

uint64_t sub_1E15FDCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    NWPathNetworkInquiry.notify()();
  }

  return result;
}

Swift::Void __swiftcall NWPathNetworkInquiry.notify()()
{
  v1 = v0;
  if (qword_1EE1DB9E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE216A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B070F0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF382C();
  v3 = *(v0 + 16);
  v4 = [v3 path];
  v5 = [v4 status];

  v10 = MEMORY[0x1E69E6370];
  LOBYTE(v9[0]) = (v5 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  sub_1E1AF38BC();
  sub_1E13E44F8(v9);
  sub_1E1AF382C();
  v10 = &type metadata for NetworkInterface;
  NWPathNetworkInquiry.interface.getter(v9);
  sub_1E1AF38BC();
  sub_1E13E44F8(v9);
  sub_1E1AF549C();

  v6 = [v3 path];
  v7 = [v6 status];

  swift_getKeyPath(byte_1E1B1E2C8);
  swift_getKeyPath(byte_1E1B1E2F0);
  LOBYTE(v9[0]) = (v7 & 0xFFFFFFFFFFFFFFFDLL) != 1;

  sub_1E1AF204C();
  v8 = [objc_opt_self() defaultCenter];
  if (qword_1EE1ED780 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_1EE1ED788 object:v1];
}

BOOL NWPathNetworkInquiry.isLikelyReachable.getter()
{
  v1 = [*(v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

uint64_t NWPathNetworkInquiry.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    sub_1E1AEFA8C();
  }

  v4 = OBJC_IVAR____TtC11AppStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6B50, &unk_1E1B1E290);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t NWPathNetworkInquiry.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    sub_1E1AEFA8C();
  }

  v4 = OBJC_IVAR____TtC11AppStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6B50, &unk_1E1B1E290);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t NWPathNetworkInquiry.isInternetOffline.getter()
{
  swift_getKeyPath(byte_1E1B1E2C8);
  swift_getKeyPath(byte_1E1B1E2F0);
  sub_1E1AF203C();

  return v1;
}

uint64_t sub_1E15FE2B8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_1E1B1E2C8);
  swift_getKeyPath(byte_1E1B1E2F0);
  sub_1E1AF203C();

  *a2 = v4;
  return result;
}

uint64_t sub_1E15FE338(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_1E1B1E2C8);
  swift_getKeyPath(byte_1E1B1E2F0);

  return sub_1E1AF204C();
}

uint64_t NWPathNetworkInquiry.$isInternetOffline.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6B50, &unk_1E1B1E290);
  sub_1E1AF200C();
  return swift_endAccess();
}

uint64_t sub_1E15FE420(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6B50, &unk_1E1B1E290);
  sub_1E1AF200C();
  return swift_endAccess();
}

uint64_t sub_1E15FE498(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6B58, qword_1E1B1E3C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6B50, &unk_1E1B1E290);
  sub_1E1AF201C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

void NWPathNetworkInquiry.interface.getter(char *a1@<X8>)
{
  v3 = [*(v1 + 16) path];
  v4 = [v3 interface];

  if (v4)
  {
    v5 = [v4 type];

    if (v5 > 4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 + 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

id sub_1E15FE6D0(SEL *a1)
{
  v3 = [*(v1 + 16) path];
  v4 = [v3 *a1];

  return v4;
}

uint64_t NWPathNetworkInquiry.observe(on:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (qword_1EE1ED780 != -1)
  {
    v14 = a1;
    swift_once();
    a1 = v14;
  }

  v8 = qword_1EE1ED788;
  sub_1E1300B24(a1, v15);
  v9 = type metadata accessor for CommonNetworkObservation();
  v10 = swift_allocObject();
  sub_1E1300B24(v15, v10 + 16);
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  [v12 addObserver:v10 selector:sel_networkStateDidChange_ name:v8 object:v4];

  result = __swift_destroy_boxed_opaque_existential_1(v15);
  a4[3] = v9;
  a4[4] = &off_1F5C4FC48;
  *a4 = v10;
  return result;
}

BOOL sub_1E15FE850()
{
  v1 = [*(*v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

id sub_1E15FE8E8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*(*v3 + 16) path];
  v6 = [v5 *a3];

  return v6;
}

uint64_t sub_1E15FE960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1AF1FEC();
  *a1 = result;
  return result;
}

uint64_t PersonalizationTransparencyPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationTransparencyPage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *PersonalizationTransparencyPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v54 = v4;
  v49 = *v4;
  v50 = v3;
  v7 = sub_1E1AF3C3C();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF39DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v41 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = v40 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v47 = v40 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - v17;
  v53 = sub_1E1AF380C();
  v19 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v40[2] = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v40 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v46 = v40 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v40 - v27;
  v55 = a1;
  sub_1E1AF381C();
  v29 = *(v10 + 16);
  v51 = a2;
  v52 = v9;
  v48 = v29;
  v29(v18, a2, v9);
  type metadata accessor for GenericAccountPage(0);
  swift_allocObject();
  v30 = v50;
  v31 = GenericAccountPage.init(deserializing:using:)(v28, v18);
  if (v30)
  {
    (*(v10 + 8))(v51, v52);
    (*(v19 + 8))(v55, v53);
    v32 = v54;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v40[1] = v23;
    v50 = v19;
    v54[2] = v31;
    v33 = v46;
    sub_1E1AF381C();
    v34 = v47;
    v36 = v51;
    v35 = v52;
    v48(v47, v51, v52);
    swift_allocObject();
    v37 = GenericAccountPage.init(deserializing:using:)(v33, v34);
    v32 = v54;
    v54[3] = v37;
    sub_1E1AF381C();
    v48(v44, v36, v35);
    v38 = v45;
    sub_1E1AF3BAC();
    (*(v42 + 32))(v32 + OBJC_IVAR____TtC11AppStoreKit31PersonalizationTransparencyPage_pageMetrics, v38, v43);
    type metadata accessor for PageRenderMetricsEvent();
    sub_1E1AF381C();
    v48(v41, v36, v35);
    sub_1E15FF364();
    sub_1E1AF464C();
    (*(v10 + 8))(v36, v35);
    (*(v50 + 8))(v55, v53);
    *(v32 + OBJC_IVAR____TtC11AppStoreKit31PersonalizationTransparencyPage_pageRenderEvent) = v56;
  }

  return v32;
}

uint64_t PersonalizationTransparencyPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalizationTransparencyPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PersonalizationTransparencyPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1E15FF26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = PersonalizationTransparencyPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E15FF2E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_1E15FF364()
{
  result = qword_1EE1EC280;
  if (!qword_1EE1EC280)
  {
    type metadata accessor for PageRenderMetricsEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EC280);
  }

  return result;
}

uint64_t type metadata accessor for PersonalizationTransparencyPage(uint64_t a1)
{
  result = qword_1ECEB6B60;
  if (!qword_1ECEB6B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15FF410(uint64_t a1)
{
  result = sub_1E1AF3C3C();
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

uint64_t NSCopying.makeCopy()(uint64_t a1)
{
  [v1 copyWithZone_];
  sub_1E1AF6EBC();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v3;
}

uint64_t WidgetTodayCardTemplate.storyId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WidgetTodayCardTemplate.heading.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WidgetTodayCardTemplate.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *WidgetTodayCardTemplate.backgroundColor.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t WidgetTodayCardTemplate.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  WidgetTodayCardTemplate.init(deserializing:using:)(a1, a2);
  return v4;
}

void *WidgetTodayCardTemplate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v69 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v60 - v8;
  v9 = sub_1E1AF39DC();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v60 - v12;
  v13 = sub_1E1AF5A6C();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  v70 = a1;
  sub_1E1AF381C();
  v27 = sub_1E1AF37CC();
  v29 = v28;
  v30 = v26;
  v31 = v15;
  v32 = *(v16 + 8);
  v32(v30, v31);
  if (!v29)
  {
    v48 = sub_1E1AF5A7C();
    sub_1E1601440(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v49 = 0x644979726F7473;
    v49[1] = 0xE700000000000000;
    v49[2] = v69;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x1E69AB690], v48);
    swift_willThrow();
    v32(v70, v31);
    v47 = v75;
    goto LABEL_5;
  }

  v3[2] = v27;
  v3[3] = v29;
  v33 = v3;
  v34 = v70;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  v37 = v36;
  v32(v23, v31);
  v33[4] = v35;
  v33[5] = v37;
  sub_1E1AF381C();
  v38 = sub_1E1AF37CC();
  v40 = v39;
  v32(v23, v31);
  v33[6] = v38;
  v33[7] = v40;
  sub_1E1AF381C();
  LOBYTE(v38) = sub_1E1AF370C();
  v32(v20, v31);
  *(v33 + 64) = (v38 == 2) | v38 & 1;
  v41 = v66;
  sub_1E1AF381C();
  v42 = v67;
  sub_1E1AF374C();
  v66 = v31;
  v32(v41, v31);
  v43 = v34;
  if ((*(v71 + 48))(v42, 1, v72) == 1)
  {
    sub_1E1308058(v42, &qword_1ECEB1F90, &qword_1E1B00D30);
    v44 = sub_1E1AF5A7C();
    sub_1E1601440(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v45 = 0x777472416E6F6369;
    v46 = v69;
    v45[1] = 0xEB000000006B726FLL;
    v45[2] = v46;
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x1E69AB690], v44);
    swift_willThrow();
    v32(v34, v66);

    v47 = v75;
    v3 = v33;
LABEL_5:
    swift_deallocPartialClassInstance();
    (*(v73 + 8))(v47, v74);
    return v3;
  }

  v3 = v33;
  v61 = v32;
  v50 = (*(v71 + 32))(v68, v42, v72);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v75;
  *(&v60 - 2) = v75;
  type metadata accessor for Artwork(0);
  v52 = v63;
  v53 = sub_1E1AF59FC();
  if (!v52)
  {
    v33[9] = v53;
    sub_1E1AF381C();
    (*(v73 + 16))(v62, v51, v74);
    sub_1E1601440(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_1E1AF464C();
    v33[10] = v76;
    sub_1E1AF381C();
    v54 = JSONObject.appStoreColor.getter();
    v55 = v66;
    v56 = v61;
    v61(v23, v66);
    v3[11] = v54;
    sub_1E1AF381C();
    v57 = v64;
    sub_1E1AF36FC();
    v56(v23, v55);
    sub_1E137F600(v57, v3 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_url, &unk_1ECEB4B60, &unk_1E1B02620);
    sub_1E1AF381C();
    v58 = v65;
    sub_1E1AF371C();
    v56(v43, v55);
    v56(v23, v55);
    (*(v71 + 8))(v68, v72);
    sub_1E137F600(v58, v3 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_eventStartDate, &unk_1ECEBB780, &unk_1E1B029A0);
    (*(v73 + 8))(v75, v74);
    return v3;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E16001A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artwork(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E1601440(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  return sub_1E1AF464C();
}

uint64_t WidgetTodayCardTemplate.hash(into:)(uint64_t a1)
{
  v2 = sub_1E1AEFE6C();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1E1AEFCCC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  sub_1E1AF5F0C();
  if (*(v1 + 40))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
    if (*(v1 + 56))
    {
LABEL_3:
      sub_1E1AF764C();
      sub_1E1AF5F0C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E1AF764C();
    if (*(v1 + 56))
    {
      goto LABEL_3;
    }
  }

  sub_1E1AF764C();
LABEL_6:
  v14 = v20;
  sub_1E1AF764C();
  sub_1E134FD1C(v1 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_url, v13, &unk_1ECEB4B60, &unk_1E1B02620);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_1E1AF764C();
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_1E1AF764C();
    sub_1E1601440(&qword_1EE1E2330, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E1AF5D1C();
    (*(v8 + 8))(v10, v7);
  }

  sub_1E134FD1C(v1 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_eventStartDate, v6, &unk_1ECEBB780, &unk_1E1B029A0);
  v15 = v21;
  if ((*(v14 + 48))(v6, 1, v21) == 1)
  {
    return sub_1E1AF764C();
  }

  v17 = v19;
  (*(v14 + 32))(v19, v6, v15);
  sub_1E1AF764C();
  sub_1E1601440(&qword_1ECEB6B70, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E1AF5D1C();
  return (*(v14 + 8))(v17, v15);
}

uint64_t WidgetTodayCardTemplate.deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_url, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_eventStartDate, &unk_1ECEBB780, &unk_1E1B029A0);
  return v0;
}

uint64_t WidgetTodayCardTemplate.__deallocating_deinit()
{
  WidgetTodayCardTemplate.deinit();

  return swift_deallocClassInstance();
}

uint64_t WidgetTodayCardTemplate.hashValue.getter()
{
  sub_1E1AF762C();
  WidgetTodayCardTemplate.hash(into:)(v1);
  return sub_1E1AF767C();
}

void *sub_1E16008FC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = WidgetTodayCardTemplate.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E1600964()
{
  sub_1E1AF762C();
  WidgetTodayCardTemplate.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E16009CC(uint64_t a1)
{
  sub_1E1AF762C();
  WidgetTodayCardTemplate.hash(into:)(v2);
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit23WidgetTodayCardTemplateC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFE6C();
  v54 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D58, &unk_1E1B04B40);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v48 - v10;
  v11 = sub_1E1AEFCCC();
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35F0, &unk_1E1B1E690);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  if (*(a1 + 16) != *(a2 + 16) && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_43;
  }

  v20 = *(a1 + 40);
  v21 = *(a2 + 40);
  if (v20)
  {
    if (!v21 || (*(a1 + 32) != *(a2 + 32) || v20 != v21) && (sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v21)
  {
    goto LABEL_43;
  }

  v22 = *(a1 + 56);
  v23 = *(a2 + 56);
  if (v22)
  {
    if (!v23 || (*(a1 + 48) != *(a2 + 48) || v22 != v23) && (sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v23)
  {
    goto LABEL_43;
  }

  if (*(a1 + 64) != *(a2 + 64) || (sub_1E156EA28(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    goto LABEL_43;
  }

  v51 = v4;
  v24 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!v24)
    {
      goto LABEL_43;
    }

    v50 = *(a1 + 80);

    LODWORD(v50) = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v50, v24, v25);

    if ((v50 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v24)
  {
    goto LABEL_43;
  }

  v26 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!v26)
    {
      goto LABEL_43;
    }

    v49 = *(a1 + 88);
    v50 = sub_1E1355E88();
    v48 = v26;
    v49 = v49;
    v27 = sub_1E1AF6D0C();

    if ((v27 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v26)
  {
    goto LABEL_43;
  }

  v28 = OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_url;
  v29 = *(v17 + 48);
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_url, v19, &unk_1ECEB4B60, &unk_1E1B02620);
  v50 = v29;
  sub_1E134FD1C(a2 + v28, &v19[v29], &unk_1ECEB4B60, &unk_1E1B02620);
  v30 = *(v55 + 48);
  if (v30(v19, 1, v11) == 1)
  {
    if (v30(&v19[v50], 1, v11) == 1)
    {
      sub_1E1308058(v19, &unk_1ECEB4B60, &unk_1E1B02620);
      goto LABEL_36;
    }

LABEL_34:
    v31 = &qword_1ECEB35F0;
    v32 = &unk_1E1B1E690;
    v33 = v19;
LABEL_42:
    sub_1E1308058(v33, v31, v32);
    goto LABEL_43;
  }

  sub_1E134FD1C(v19, v16, &unk_1ECEB4B60, &unk_1E1B02620);
  if (v30(&v19[v50], 1, v11) == 1)
  {
    (*(v55 + 8))(v16, v11);
    goto LABEL_34;
  }

  v34 = v55;
  (*(v55 + 32))(v13, &v19[v50], v11);
  sub_1E1601440(&qword_1EE1E2328, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  LODWORD(v50) = sub_1E1AF5DAC();
  v35 = *(v34 + 8);
  v35(v13, v11);
  v35(v16, v11);
  sub_1E1308058(v19, &unk_1ECEB4B60, &unk_1E1B02620);
  if ((v50 & 1) == 0)
  {
LABEL_43:
    v43 = 0;
    return v43 & 1;
  }

LABEL_36:
  v36 = OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_eventStartDate;
  v37 = *(v9 + 48);
  v38 = a1 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_eventStartDate;
  v39 = v53;
  sub_1E134FD1C(v38, v53, &unk_1ECEBB780, &unk_1E1B029A0);
  sub_1E134FD1C(a2 + v36, v39 + v37, &unk_1ECEBB780, &unk_1E1B029A0);
  v40 = v54;
  v41 = *(v54 + 48);
  v42 = v51;
  if (v41(v39, 1, v51) != 1)
  {
    sub_1E134FD1C(v39, v8, &unk_1ECEBB780, &unk_1E1B029A0);
    if (v41(v39 + v37, 1, v42) != 1)
    {
      v45 = v39 + v37;
      v46 = v52;
      (*(v40 + 32))(v52, v45, v42);
      sub_1E1601440(&unk_1ECEB2D60, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v43 = sub_1E1AF5DAC();
      v47 = *(v40 + 8);
      v47(v46, v42);
      v47(v8, v42);
      sub_1E1308058(v39, &unk_1ECEBB780, &unk_1E1B029A0);
      return v43 & 1;
    }

    (*(v40 + 8))(v8, v42);
    goto LABEL_41;
  }

  if (v41(v39 + v37, 1, v42) != 1)
  {
LABEL_41:
    v31 = &qword_1ECEB2D58;
    v32 = &unk_1E1B04B40;
    v33 = v39;
    goto LABEL_42;
  }

  sub_1E1308058(v39, &unk_1ECEBB780, &unk_1E1B029A0);
  v43 = 1;
  return v43 & 1;
}

uint64_t type metadata accessor for WidgetTodayCardTemplate(uint64_t a1)
{
  result = qword_1ECEB6B80;
  if (!qword_1ECEB6B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1601270(uint64_t a1)
{
  sub_1E16013EC(319, &qword_1EE1FADD0, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1E16013EC(319, &qword_1EE1FADB8, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E16013EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E1601440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FastImpressionsTracker.__allocating_init(mainQueueName:fastQueueName:impressionableThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1E1AF4EAC();
  swift_allocObject();
  *(v6 + 40) = sub_1E1AF4E8C();
  swift_allocObject();
  *(v6 + 48) = sub_1E1AF4E8C();
  *(v6 + 32) = a5;
  return v6;
}

uint64_t FastImpressionsTracker.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*FastImpressionsTracker.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E14EDCAC;
}

uint64_t FastImpressionsTracker.init(mainQueueName:fastQueueName:impressionableThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1E1AF4EAC();
  swift_allocObject();
  *(v5 + 40) = sub_1E1AF4E8C();
  swift_allocObject();
  *(v5 + 48) = sub_1E1AF4E8C();
  *(v5 + 32) = a5;
  return v5;
}

uint64_t FastImpressionsTracker.elementDidEnterView(_:on:with:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v6 = sub_1E1AF45FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF4E5C();
  sub_1E1AF46CC();
  v10 = sub_1E1AF45BC();
  result = (*(v7 + 8))(v9, v6);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = *(v5 + 24);
      sub_1E1AF4E5C();
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(ObjectType, v12);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t FastImpressionsTracker.elementDidLeaveView(_:on:with:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = sub_1E1AF45FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF4E6C();
  sub_1E1AF46CC();
  v8 = sub_1E1AF45BC();
  result = (*(v5 + 8))(v7, v4);
  if (v8 != 2 && (v8 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_unknownObjectRelease();
      return sub_1E1AF4E6C();
    }
  }

  return result;
}

uint64_t FastImpressionsTracker.deinit()
{
  sub_1E1337DEC(v0 + 16);

  return v0;
}

uint64_t FastImpressionsTracker.__deallocating_deinit()
{
  sub_1E1337DEC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1601D24()
{
  v1 = *(v0 + 8);
  sub_1E1AF762C();
  sub_1E1AF764C();
  if (v1)
  {
    sub_1E1AF5F0C();
  }

  sub_1E1AF6D1C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1601DC0(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  sub_1E1AF6D1C();

  return sub_1E1AF5F0C();
}

uint64_t sub_1E1601E5C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1E1AF762C();
  sub_1E1AF764C();
  if (v2)
  {
    sub_1E1AF5F0C();
  }

  sub_1E1AF6D1C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1601EF4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[3];
  v8 = a2[4];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1E1AF74AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_1E13006E4(0, &qword_1EE1E31E0, 0x1E69E58C0);
  if ((sub_1E1AF6D0C() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_1E1AF74AC();
}

uint64_t sub_1E1601FE8()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB6B90);
  __swift_project_value_buffer(v4, qword_1ECEB6B90);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

void *sub_1E1602144()
{
  sub_1E15A0E48(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BD0, &qword_1E1B1E840);
  swift_allocObject();
  result = sub_1E14C5D90();
  off_1ECEB6BA8 = result;
  return result;
}

void *sub_1E16021A4()
{
  sub_1E15A1060(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BF8, &qword_1E1B1E880);
  swift_allocObject();
  result = sub_1E14C5D90();
  off_1EE1E1908 = result;
  return result;
}

void *sub_1E1602204()
{
  sub_1E15A0D0C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BE0, &unk_1E1B1E858);
  swift_allocObject();
  result = sub_1E14C5D90();
  off_1ECEB6BB0 = result;
  return result;
}

uint64_t MetricsIdStore.__allocating_init(accountStore:bag:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1E1608528(a1, a2);

  return v4;
}

uint64_t MetricsIdStore.init(accountStore:bag:)(void *a1, uint64_t a2)
{
  v3 = sub_1E1608528(a1, a2);

  return v3;
}

uint64_t sub_1E1602308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_1E1AF320C();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1602438, 0, 0);
}

uint64_t sub_1E1602438()
{
  v1 = *(v0 + 112);
  if (!v1)
  {
    v2 = sub_1E1AF5DBC();
    v1 = [objc_opt_self() keyWithName:v2 crossDeviceSync:1 isActiveITunesAccountRequired:1];

    if (qword_1EE1E2E60 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 176);
    sub_1E1AF536C();
    sub_1E1AF532C();
    (*(v4 + 8))(v3, v5);
  }

  *(v0 + 200) = v1;
  v6 = *(v0 + 136);
  if (v6)
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
  }

  else
  {
    v9 = *(v0 + 112);
    v10 = sub_1E1AF5DBC();
    v11 = [objc_opt_self() keyWithName:v10 crossDeviceSync:1 isActiveITunesAccountRequired:1];

    if (qword_1EE1E2E60 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    sub_1E1AF536C();
    sub_1E1AF532C();
    (*(v13 + 8))(v12, v14);

    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
  }

  *(v0 + 208) = v6;
  v15 = *(v0 + 120);
  if (v15)
  {

    v16 = v15;
    v17 = v15;
  }

  else
  {
    v18 = *(*(v0 + 144) + 16);

    v19 = [v18 ams_activeiTunesAccount];
    v17 = v19;
    if (!v19)
    {
      v25 = v1;

      goto LABEL_19;
    }

    v15 = *(v0 + 120);
    v16 = v19;
  }

  v20 = v15;
  v21 = v1;

  v22 = v20;
  v23 = [v16 identifier];
  if (v23)
  {
    v24 = v23;
    sub_1E1AF5DEC();
  }

LABEL_19:
  *(v0 + 216) = 0;
  *(v0 + 224) = v17;
  v26 = *(v0 + 144);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = v7;
  *(v0 + 48) = v6;
  if (*(v26 + 24) == 1)
  {
    if (qword_1EE1E1900 != -1)
    {
      swift_once();
    }

    v27 = off_1EE1E1908;
    v28 = swift_task_alloc();
    *(v28 + 16) = v0 + 16;
    v29 = swift_task_alloc();
    v29[2] = sub_1E1608894;
    v29[3] = v28;
    v29[4] = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
    sub_1E1AF690C();

    v30 = *(v0 + 88);
    v31 = *(v0 + 96);

    if (v31)
    {

      swift_bridgeObjectRelease_n();
      v32 = *(v0 + 224);

      v33 = *(v0 + 8);

      return v33(v30, v31);
    }

    v35 = swift_task_alloc();
    *(v0 + 232) = v35;
    *v35 = v0;
    v36 = sub_1E1602990;
  }

  else
  {
    v35 = swift_task_alloc();
    *(v0 + 256) = v35;
    *v35 = v0;
    v36 = sub_1E1602E00;
  }

  v35[1] = v36;

  return sub_1E1605310(v17, v1, v7, v6);
}

uint64_t sub_1E1602990(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_1E1602AD4;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_1E1602B78;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E1602AD4()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E1602B78()
{
  v1 = v0[31];
  v16 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = [v1 identifierForKey_];

  v6 = sub_1E1AF5DFC();
  v17 = v7;
  v18 = v6;
  v8 = v7;

  v9 = off_1EE1E1908;
  v10 = swift_task_alloc();
  v10[2] = v0 + 2;
  v10[3] = v6;
  v10[4] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v0[13] = v11;
  sub_1E1302A94(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v12 = swift_task_alloc();
  v12[2] = sub_1E16088B0;
  v12[3] = v10;
  v12[4] = v9;
  sub_1E1AF68FC();

  (*(v2 + 8))(v3, v4);

  v13 = v0[28];

  v14 = v0[1];

  return v14(v18, v17);
}

uint64_t sub_1E1602E00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_1E160302C;
  }

  else
  {
    *(v4 + 272) = a1;
    v5 = sub_1E1602F44;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E1602F44()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = [v1 identifierForKey_];

  v4 = sub_1E1AF5DFC();
  v6 = v5;

  v7 = v0[28];

  v8 = v0[1];

  return v8(v4, v6);
}

uint64_t sub_1E160302C()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t *sub_1E16030D0(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v9 = sub_1E1AF320C();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  if (a1)
  {
    v16 = a1;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v65 = v16;
    v22 = a1;
    v23 = sub_1E1AF5DBC();
    v24 = [objc_opt_self() keyWithName:v23 crossDeviceSync:1 isActiveITunesAccountRequired:1];

    if (qword_1EE1E2E60 != -1)
    {
      swift_once();
    }

    sub_1E1AF536C();
    sub_1E1AF532C();
    (*(v13 + 8))(v15, v12);

    a3 = v66;
    v18 = v67;
    v16 = v65;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v64 = a3;
  v21 = sub_1E1AF5DBC();
  v65 = [objc_opt_self() keyWithName:v21 crossDeviceSync:1 isActiveITunesAccountRequired:1];

  if (qword_1EE1E2E60 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF532C();
  (*(v13 + 8))(v15, v12);

  a3 = v64;
  v16 = v65;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v17 = a1;
  v18 = a4;
  if (a2)
  {
LABEL_4:

    v19 = a2;
    v20 = a2;
    goto LABEL_13;
  }

LABEL_11:
  v25 = *(v4 + 16);

  v26 = [v25 ams_activeiTunesAccount];
  v20 = v26;
  if (!v26)
  {
    v35 = v16;

    goto LABEL_19;
  }

  v19 = v26;
LABEL_13:
  v27 = a2;
  v28 = v16;

  v29 = v27;
  v30 = [v19 identifier];
  if (!v30)
  {

LABEL_19:
    v33 = 0;
    v34 = 0;
    goto LABEL_20;
  }

  v66 = 0;
  v67 = 0;
  v31 = v30;
  sub_1E1AF5DEC();

  v33 = v66;
  v34 = v67;
  if (!v67)
  {
    v33 = 0;
  }

LABEL_20:
  v68[0] = v33;
  v68[1] = v34;
  v68[2] = v16;
  v68[3] = a3;
  v68[4] = v18;
  if (*(v4 + 24) != 1)
  {
    v40 = v69;
    v41 = sub_1E1605D50(v20, v16, a3, v18);
    if (!v40)
    {
      v42 = v41;

      v43 = [v42 identifierForKey_];

      a3 = sub_1E1AF5DFC();

      return a3;
    }

LABEL_28:

    swift_bridgeObjectRelease_n();

    return a3;
  }

  v64 = a3;
  v65 = v20;
  v60 = v4;
  if (qword_1EE1E1900 != -1)
  {
    v32 = swift_once();
  }

  a3 = &v57;
  v36 = off_1EE1E1908;
  MEMORY[0x1EEE9AC00](v32);
  *(&v57 - 2) = v68;
  MEMORY[0x1EEE9AC00](v37);
  *(&v57 - 4) = sub_1E1608A48;
  *(&v57 - 3) = v38;
  *(&v57 - 2) = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
  v39 = v69;
  sub_1E1AF690C();

  if (!v67)
  {
    v20 = v65;
    v44 = sub_1E1605D50(v65, v16, v64, v18);
    if (!v39)
    {
      v46 = v44;

      v47 = [v46 identifierForKey_];

      a3 = sub_1E1AF5DFC();
      v49 = v48;

      v64 = &v57;
      v69 = off_1EE1E1908;
      MEMORY[0x1EEE9AC00](v50);
      v59 = &v57 - 6;
      *(&v57 - 4) = v68;
      *(&v57 - 3) = a3;
      *(&v57 - 2) = v49;
      v60 = *(v51 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1E1B02CC0;

      sub_1E1AF31FC();
      v66 = v52;
      v58 = sub_1E1302A94(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
      sub_1E13FE650();
      v53 = v61;
      v54 = v62;
      v55 = sub_1E1AF6EEC();
      v58 = &v57;
      MEMORY[0x1EEE9AC00](v55);
      v56 = v59;
      *(&v57 - 4) = sub_1E1608A64;
      *(&v57 - 3) = v56;
      *(&v57 - 2) = v69;
      sub_1E1AF68FC();

      (*(v63 + 8))(v53, v54);

      return a3;
    }

    goto LABEL_28;
  }

  a3 = v66;
  swift_bridgeObjectRelease_n();

  return a3;
}

uint64_t sub_1E1603944(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = v8;
  sub_1E16087BC(&v15, v13);
  v10 = v9;
  sub_1E15A42EC(&v14, v13);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *a1;
  sub_1E159AD90(a3, a4, a2, isUniquelyReferenced_nonNull_native);
  sub_1E1308058(&v15, &unk_1ECEB5D40, &unk_1E1B02B90);

  result = sub_1E1455104(&v14);
  *a1 = v13[0];
  return result;
}

void sub_1E1603A14(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_1E1595B78(a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a3 = v7;
  a3[1] = v8;
}

uint64_t sub_1E1603A6C(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E1603A90, 0, 0);
}

uint64_t sub_1E1603A90()
{
  v1 = v0[30];
  v2 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  if (v1)
  {
    v3 = v0[30];
    v4 = v3;
  }

  else
  {
    v4 = [*(v0[31] + 16) ams_activeiTunesAccount];
    v3 = v0[30];
  }

  v0[32] = v4;
  v5 = v0[29];
  v6 = v5[2];
  v0[33] = v6;
  v7 = v3;
  if (v6)
  {
    v0[34] = v2;
    v0[35] = 0;
    v8 = v5[4];
    v0[36] = v8;
    v9 = v5[6];
    v0[37] = v9;
    v10 = v5[5];
    v11 = v8;

    v12 = swift_task_alloc();
    v0[38] = v12;
    *v12 = v0;
    v12[1] = sub_1E1603C0C;
    v13 = v0[32];

    return sub_1E1604230(v11, v10, v9, v13);
  }

  else
  {

    v15 = v0[1];

    return v15(v2);
  }
}

uint64_t sub_1E1603C0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {

    v4 = sub_1E16041BC;
  }

  else
  {
    v4 = sub_1E1603D28;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1E1603D28()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 224) = v2;
  v53 = (v0 + 16);
  v54 = (v0 + 64);
  v4 = (v0 + 112);
  v50 = (v0 + 160);
  v55 = (v0 + 192);
  v5 = v1 + 64;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 64);
  v9 = *(v0 + 272);
  v49 = (63 - v7) >> 6;
  v51 = v1;

  v10 = 0;
  for (i = v1 + 64; ; v5 = i)
  {
    if (!v8)
    {
      if (v49 <= v10 + 1)
      {
        v13 = v10 + 1;
      }

      else
      {
        v13 = v49;
      }

      v14 = v13 - 1;
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v49)
        {
          v8 = 0;
          *(v0 + 80) = 0u;
          *(v0 + 96) = 0u;
          v10 = v14;
          *v54 = 0u;
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v12);
        ++v10;
        if (v8)
        {
          v10 = v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v12 = v10;
LABEL_16:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v51 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1E137A5C4(*(v51 + 56) + 32 * v16, v50);
    *(v0 + 64) = v19;
    *(v0 + 72) = v18;
    sub_1E1301CF0(v50, (v0 + 80));

LABEL_17:
    v20 = *(v0 + 80);
    *v4 = *v54;
    v4[1] = v20;
    v4[2] = *(v0 + 96);
    v21 = *(v0 + 120);
    if (!v21)
    {
      break;
    }

    v22 = *(v0 + 112);
    sub_1E137A5C4(v0 + 128, v0 + 32);
    *(v0 + 16) = v22;
    *(v0 + 24) = v21;

    sub_1E1308058(v4, &qword_1ECEB6BF0, &unk_1E1B1E870);
    v23 = *(v0 + 24);
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = *v53;
    sub_1E1301CF0((v0 + 32), v55);
    v26 = sub_1E13018F8(v24, v23);
    v27 = v9[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_41;
    }

    v30 = v25;
    if (v9[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E14154D8();
      }
    }

    else
    {
      sub_1E168807C(v29, isUniquelyReferenced_nonNull_native & 1);
      v31 = sub_1E13018F8(v24, v23);
      if ((v30 & 1) != (v32 & 1))
      {

        sub_1E1AF757C();
        return;
      }

      v26 = v31;
    }

    v9 = *(v0 + 224);
    if (v30)
    {

      v11 = (v9[7] + 32 * v26);
      __swift_destroy_boxed_opaque_existential_1(v11);
      sub_1E1301CF0(v55, v11);
    }

    else
    {
      v9[(v26 >> 6) + 8] |= 1 << v26;
      v33 = (v9[6] + 16 * v26);
      *v33 = v24;
      v33[1] = v23;
      sub_1E1301CF0(v55, (v9[7] + 32 * v26));
      v34 = v9[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_42;
      }

      v9[2] = v36;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v4 = (v0 + 112);
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *v53 = 0u;
LABEL_30:
  v37 = *(v0 + 288);
  v38 = *(v0 + 280);
  v39 = *(v0 + 264);

  if (v38 + 1 == v39)
  {

    v40 = *(v0 + 8);

    v40(v9);
  }

  else
  {
    v41 = *(v0 + 280);
    *(v0 + 272) = v9;
    *(v0 + 280) = v41 + 1;
    v42 = (*(v0 + 232) + 24 * v41);
    v43 = v42[7];
    *(v0 + 288) = v43;
    v44 = v42[9];
    *(v0 + 296) = v44;
    v45 = v42[8];
    v46 = v43;

    v47 = swift_task_alloc();
    *(v0 + 304) = v47;
    *v47 = v0;
    v47[1] = sub_1E1603C0C;
    v48 = *(v0 + 256);

    sub_1E1604230(v46, v45, v44, v48);
  }
}

uint64_t sub_1E16041BC()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E1604230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_1E1AF320C();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16042F8, 0, 0);
}

uint64_t sub_1E16042F8()
{
  v1 = *(v0 + 96);
  if (!v1)
  {
    v1 = [*(*(v0 + 104) + 16) ams_activeiTunesAccount];
  }

  *(v0 + 136) = v1;
  if (*(*(v0 + 104) + 24) == 1)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 72);
    if (v1)
    {
      v4 = v2;
      v5 = v3;

      v6 = v1;
      v7 = [v6 identifier];
      if (v7)
      {
        v8 = v7;
        sub_1E1AF5DEC();
      }
    }

    else
    {
      v12 = v2;
      v13 = v3;
    }

    *(v0 + 144) = 0;
    v14 = *(v0 + 88);
    v15 = *(v0 + 72);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v15;
    *(v0 + 48) = v14;
    if (qword_1ECEB0EF8 != -1)
    {
      swift_once();
    }

    v16 = off_1ECEB6BB0;
    v17 = swift_task_alloc();
    *(v17 + 16) = v0 + 16;
    v18 = swift_task_alloc();
    v18[2] = sub_1E1608864;
    v18[3] = v17;
    v18[4] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BD8, &qword_1E1B1E850);
    sub_1E1AF690C();

    v19 = *(v0 + 56);

    if (v19)
    {

      v20 = *(v0 + 8);

      return v20(v19);
    }

    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v11 = sub_1E160461C;
  }

  else
  {
    v9 = *(v0 + 96);
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v11 = sub_1E1604A18;
  }

  v10[1] = v11;
  v22 = *(v0 + 104);
  v23 = *(v0 + 80);
  v24 = *(v0 + 88);
  v25 = *(v0 + 72);

  return sub_1E160793C(v22, v1, v25, v23, v24);
}

uint64_t sub_1E160461C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1E1604988;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_1E1604744;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E1604744()
{
  v1 = v0[21];
  v13 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v12 = v0[9];
  v5 = off_1ECEB6BB0;
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 2;
  *(v6 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v0[8] = v7;
  sub_1E1302A94(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v8 = swift_task_alloc();
  v8[2] = sub_1E160886C;
  v8[3] = v6;
  v8[4] = v5;
  sub_1E1AF68FC();

  (*(v3 + 8))(v2, v4);

  v9 = v0[21];

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1E1604988()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E1604A18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1E1604BB4;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_1E1604B40;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E1604B40()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E1604BB4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E1604C20(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 16) && (sub_1E1595B78(a2), (v4 & 1) != 0))
  {
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1E1604C70(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = v6;
  sub_1E16087BC(&v13, v11);
  v8 = v7;
  sub_1E15A42EC(&v12, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[0] = *a1;
  sub_1E159AF04(a3, a2, isUniquelyReferenced_nonNull_native);
  sub_1E1308058(&v13, &unk_1ECEB5D40, &unk_1E1B02B90);

  result = sub_1E1455104(&v12);
  *a1 = v11[0];
  return result;
}

uint64_t sub_1E1604D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1604E04, 0, 0);
}

uint64_t sub_1E1604E04()
{
  v1 = sub_1E1AF5DBC();
  v2 = objc_opt_self();
  v13 = [v2 keyWithName:v1 crossDeviceSync:1 isActiveITunesAccountRequired:1];
  v0[11] = v13;

  if (qword_1EE1E2E60 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  sub_1E1AF536C();
  sub_1E1AF532C();
  v6 = *(v3 + 8);
  v6(v4, v5);

  v7 = sub_1E1AF5DBC();
  v8 = [v2 keyWithName:v7 crossDeviceSync:1 isActiveITunesAccountRequired:1];

  sub_1E1AF536C();
  sub_1E1AF532C();
  v6(v4, v5);

  v10 = v0[4];
  v9 = v0[5];
  v0[12] = v9;
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1E1605050;

  return sub_1E1605310(0, v13, v10, v9);
}

uint64_t sub_1E1605050(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_1E16051F4;
  }

  else
  {
    v6 = *(v4 + 88);

    *(v4 + 120) = a1;
    v5 = sub_1E1605184;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E1605184()
{
  **(v0 + 48) = *(v0 + 120);

  v1 = *(v0 + 8);

  return v1();
}