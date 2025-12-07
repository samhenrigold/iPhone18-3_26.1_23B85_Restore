uint64_t sub_1AB1B8E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB1B8EA4, 0, 0);
}

uint64_t sub_1AB1B8EA4()
{
  v0[5] = &type metadata for SystemDateProvider;
  v0[6] = &protocol witness table for SystemDateProvider;
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1AB1B8F54;
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];

  return sub_1AB1B16FC(v3, v4, v2, (v0 + 2));
}

uint64_t sub_1AB1B8F54(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB1B9D10, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 16));
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

void sub_1AB1B90D4(uint64_t a1)
{
  sub_1AB016760(319, &qword_1EB435620, 0x1E696AF80);
  if (v1 <= 0x3F)
  {
    sub_1AB06DC78(319);
    if (v2 <= 0x3F)
    {
      sub_1AB018E60(319);
      if (v3 <= 0x3F)
      {
        sub_1AB1B9198(319, v3, v4, v5);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AB1B9198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB4356A0)
  {
    v4 = type metadata accessor for Promise(0, &type metadata for Bag, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB4356A0);
    }
  }
}

uint64_t sub_1AB1B91E8()
{
  v0 = sub_1AB460134();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E6977AC8], v0, v2);
  sub_1AB460174();
  return (*(v1 + 8))(v4, v0);
}

double sub_1AB1B92DC(uint64_t *a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AB1B6E88(a1, v1 + v4, v6, v7);
}

unint64_t sub_1AB1B93A4()
{
  result = qword_1EB437ED8;
  if (!qword_1EB437ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437ED8);
  }

  return result;
}

uint64_t sub_1AB1B93F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB1B9460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AB1B94C8(uint64_t a1, void *a2, void *a3)
{
  v7 = *(sub_1AB45F764() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_1AB1B5A00(a1, a2, a3, v8, v9);
}

double sub_1AB1B9554(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AB1B6B30(a1, v1 + v4, v6, v7);
}

double sub_1AB1B961C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1AB1B70E4(a1, v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_1AB1B96D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AB1B9730(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1AB027554;

  return sub_1AB1B7B14(a1, v11, v12, v1 + v4, v8, v9, v10, v13);
}

uint64_t sub_1AB1B98A0(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1AB027460;

  return sub_1AB1B7B14(a1, v11, v12, v1 + v4, v8, v9, v10, v13);
}

uint64_t sub_1AB1B9A20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for URLJetPackAssetFetcher(0);
  v13 = *(*(v1 - 8) + 80);
  v2 = (v13 + 32) & ~v13;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v6 = v0 + v2;

  if (*(v0 + v2 + 8))
  {
  }

  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 24);
  v9 = sub_1AB45F764();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v0 + v7 + 8);
  if (v11 >> 60 != 15)
  {
    sub_1AB017254(*(v0 + v7), v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v13 | 7);
}

uint64_t sub_1AB1B9C40(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AB017200(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine27URLJetPackAssetFetcherErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1AB1B9C70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AB1B9CB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

JSContext __swiftcall JSContext.init(name:virtualMachine:)(Swift::String name, JSVirtualMachine virtualMachine)
{
  result.super.isa = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVirtualMachine_];
  if (result.super.isa)
  {
    v4 = result.super.isa;
    v5 = sub_1AB460514();

    [(objc_class *)v4 setName:v5];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id JSContext.propagateExceptionsToErrors<A>(_:)@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  result = a1(v3);
  if (!v4)
  {
    result = [v3 exception];
    if (result)
    {
      v9 = result;
      [v5 setException_];
      sub_1AB0C3EF0();
      swift_allocError();
      v11 = v10;
      v12 = v9;
      JSError.init(_:)(v12, v11);
      swift_willThrow();

      return (*(*(a2 - 8) + 8))(a3, a2);
    }
  }

  return result;
}

void CompoundError.init(_:)(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (!*(result + 16))
  {
    sub_1AB40BED8("JetEngine/CompoundError.swift", 0x1DuLL, 2, 0x15uLL);
  }

  *a2 = result;
}

uint64_t CompoundError.errorDescription.getter()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
    v3 = *(*v0 + 32);
    swift_getErrorValue();
    v4 = v3;
    v2 = sub_1AB462024();
  }

  else if (v1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EE8, &qword_1AB4DA878);
    sub_1AB1BA140();
    v2 = sub_1AB460484();
  }

  else
  {
    return 0x1000000000000026;
  }

  return v2;
}

uint64_t sub_1AB1BA0F8@<X0>(uint64_t *a2@<X8>)
{
  swift_getErrorValue();
  result = sub_1AB462024();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1AB1BA140()
{
  result = qword_1EB432320;
  if (!qword_1EB432320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437EE8, &qword_1AB4DA878);
    sub_1AB1BA1C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432320);
  }

  return result;
}

unint64_t sub_1AB1BA1C4()
{
  result = qword_1EB4323B8;
  if (!qword_1EB4323B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437EF0, &unk_1AB4F2600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4323B8);
  }

  return result;
}

unint64_t CompoundError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = sub_1AB460544();
    v6 = inited + 32;
    *(inited + 40) = v7;
    swift_getErrorValue();
    *(inited + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
LABEL_8:
    v10 = sub_1AB01B220(inited);
    swift_setDeallocating();
    sub_1AB1BA43C(v6);
    return v10;
  }

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = sub_1AB460544();
    v6 = inited + 32;
    *(inited + 40) = v9;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EF0, &unk_1AB4F2600);
    *(inited + 48) = v1;

    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69E7CC0];

  return sub_1AB01B220(v3);
}

uint64_t sub_1AB1BA3C4(uint64_t a1)
{
  v2 = sub_1AB1BA508();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AB1BA400(uint64_t a1)
{
  v2 = sub_1AB1BA508();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1AB1BA43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AB1BA4A4()
{
  result = qword_1EB433938;
  if (!qword_1EB433938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433938);
  }

  return result;
}

unint64_t sub_1AB1BA508()
{
  result = qword_1EB4332F0[0];
  if (!qword_1EB4332F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4332F0);
  }

  return result;
}

void sub_1AB1BA57C(uint64_t a1)
{
  if (*(v1 + 40))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v3 = v55;
    v4 = v56;
    __swift_project_boxed_opaque_existential_1Tm(v54, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    v53 = sub_1AB0168A8(0, 61, 0, MEMORY[0x1E69E7CC0]);
    v6._object = 0x80000001AB501D10;
    v6._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    v52 = MEMORY[0x1E69E6530];
    v51[0] = a1;
    sub_1AB01522C(v51, v47);
    v48 = 0u;
    v49 = 0u;
    sub_1AB0169C4(v47, &v48);
    v50 = 0;
    v7 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    v11 = v48;
    v12 = v49;
    v10[64] = v50;
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    v53 = v7;
    sub_1AB0167A8(v51);
    v13 = "Cannot create child activity ";
    v14 = 0xD000000000000023;
LABEL_18:
    v24 = v13 | 0x8000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(*&v14);
    *(v5 + 32) = v53;
    Logger.error(_:)(v5, v3, v4);

    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    return;
  }

  v15 = v1;
  if (*(*(v1 + 16) + 16))
  {
    sub_1AB016558(a1);
    if (v16)
    {
      if (qword_1EB435768 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v3 = v55;
      v4 = v56;
      __swift_project_boxed_opaque_existential_1Tm(v54, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1AB4D4720;
      v53 = sub_1AB0168A8(0, 64, 0, MEMORY[0x1E69E7CC0]);
      v17._object = 0x80000001AB501D10;
      v17._countAndFlagsBits = 0xD000000000000019;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      v52 = MEMORY[0x1E69E6530];
      v51[0] = a1;
      sub_1AB01522C(v51, v47);
      v48 = 0u;
      v49 = 0u;
      sub_1AB0169C4(v47, &v48);
      v50 = 0;
      v18 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[40 * v20];
      v22 = v48;
      v23 = v49;
      v21[64] = v50;
      *(v21 + 2) = v22;
      *(v21 + 3) = v23;
      v53 = v18;
      sub_1AB0167A8(v51);
      v13 = "Cannot activate activity ";
      v14 = 0xD000000000000026;
      goto LABEL_18;
    }
  }

  sub_1AB460184();
  v25 = sub_1AB460154();

  sub_1AB460124();
  sub_1AB460164();
  if (qword_1EB435768 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v26 = v55;
  v27 = v56;
  __swift_project_boxed_opaque_existential_1Tm(v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1AB4D4720;
  v53 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v29._countAndFlagsBits = 0xD000000000000022;
  v29._object = 0x80000001AB501B50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  v52 = MEMORY[0x1E69E6530];
  v51[0] = a1;
  sub_1AB01522C(v51, v47);
  v48 = 0u;
  v49 = 0u;
  sub_1AB0169C4(v47, &v48);
  v50 = 0;
  v30 = v53;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v33 = &v30[40 * v32];
  v34 = v48;
  v35 = v49;
  v33[64] = v50;
  *(v33 + 2) = v34;
  *(v33 + 3) = v35;
  v53 = v30;
  sub_1AB0167A8(v51);
  v36._countAndFlagsBits = 0x74617265706F202CLL;
  v36._object = 0xEF203A44496E6F69;
  LogMessage.StringInterpolation.appendLiteral(_:)(v36);
  v37 = v15[3];
  v38 = v15[4];
  v52 = MEMORY[0x1E69E6158];
  v51[0] = v37;
  v51[1] = v38;
  sub_1AB01522C(v51, v47);
  v48 = 0u;
  v49 = 0u;

  sub_1AB0169C4(v47, &v48);
  v50 = 0;
  v39 = v53;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_1AB0168A8(0, *(v39 + 2) + 1, 1, v39);
    v53 = v39;
  }

  v41 = *(v39 + 2);
  v40 = *(v39 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = sub_1AB0168A8((v40 > 1), v41 + 1, 1, v39);
  }

  *(v39 + 2) = v41 + 1;
  v42 = &v39[40 * v41];
  v43 = v48;
  v44 = v49;
  v42[64] = v50;
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  v53 = v39;
  sub_1AB0167A8(v51);
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  *(v28 + 32) = v53;
  Logger.debug(_:)(v28, v26, v27);

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54[0] = v15[2];
  sub_1AB1D5B28(v25, a1, isUniquelyReferenced_nonNull_native);
  v15[2] = v54[0];
}

uint64_t sub_1AB1BAC4C(uint64_t a1)
{
  v3 = sub_1AB460134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 40))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v8 = v60;
    v9 = v61;
    __swift_project_boxed_opaque_existential_1Tm(v59, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    v58 = sub_1AB0168A8(0, 61, 0, MEMORY[0x1E69E7CC0]);
    v11._object = 0x80000001AB501CA0;
    v11._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v57 = MEMORY[0x1E69E6530];
    v56[0] = a1;
    sub_1AB01522C(v56, v52);
    v53 = 0u;
    v54 = 0u;
    sub_1AB0169C4(v52, &v53);
    v55 = 0;
    v12 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[40 * v14];
    v16 = v53;
    v17 = v54;
    v15[64] = v55;
    *(v15 + 2) = v16;
    *(v15 + 3) = v17;
    v58 = v12;
    sub_1AB0167A8(v56);
    v18 = "Cannot create child activity ";
    v19 = 0xD000000000000023;
LABEL_29:
    v50 = v18 | 0x8000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(*&v19);
    *(v10 + 32) = v58;
    Logger.error(_:)(v10, v8, v9);

    return __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  v20 = v1;
  if (!*(*(v1 + 16) + 16) || (v21 = v5, sub_1AB016558(a1), (v22 & 1) == 0))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v8 = v60;
    v9 = v61;
    __swift_project_boxed_opaque_existential_1Tm(v59, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    v58 = sub_1AB0168A8(0, 55, 0, MEMORY[0x1E69E7CC0]);
    v43._object = 0x80000001AB501CA0;
    v43._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v43);
    v57 = MEMORY[0x1E69E6530];
    v56[0] = a1;
    sub_1AB01522C(v56, v52);
    v53 = 0u;
    v54 = 0u;
    sub_1AB0169C4(v52, &v53);
    v55 = 0;
    v44 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1AB0168A8(0, *(v44 + 2) + 1, 1, v44);
    }

    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1AB0168A8((v45 > 1), v46 + 1, 1, v44);
    }

    *(v44 + 2) = v46 + 1;
    v47 = &v44[40 * v46];
    v48 = v53;
    v49 = v54;
    v47[64] = v55;
    *(v47 + 2) = v48;
    *(v47 + 3) = v49;
    v58 = v44;
    sub_1AB0167A8(v56);
    v18 = "Cannot complete activity ";
    v19 = 0xD00000000000001DLL;
    goto LABEL_29;
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E6977AC8], v21);

  sub_1AB460174();
  (*(v4 + 8))(v7, v21);
  sub_1AB177204(a1);

  if (qword_1EB435768 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v23 = v60;
  v24 = v61;
  __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1AB4D4720;
  v58 = sub_1AB0168A8(0, 59, 0, MEMORY[0x1E69E7CC0]);
  v26._countAndFlagsBits = 0xD00000000000002ALL;
  v26._object = 0x80000001AB501CE0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  v57 = MEMORY[0x1E69E6530];
  v56[0] = a1;
  sub_1AB01522C(v56, v52);
  v53 = 0u;
  v54 = 0u;
  sub_1AB0169C4(v52, &v53);
  v55 = 0;
  v27 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = &v27[40 * v29];
  v31 = v53;
  v32 = v54;
  v30[64] = v55;
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  v58 = v27;
  sub_1AB0167A8(v56);
  v33._countAndFlagsBits = 0x74617265706F202CLL;
  v33._object = 0xEF203A44496E6F69;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  v34 = *(v20 + 24);
  v35 = *(v20 + 32);
  v57 = MEMORY[0x1E69E6158];
  v56[0] = v34;
  v56[1] = v35;
  sub_1AB01522C(v56, v52);
  v53 = 0u;
  v54 = 0u;

  sub_1AB0169C4(v52, &v53);
  v55 = 0;
  v36 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
    v58 = v36;
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
  }

  *(v36 + 2) = v38 + 1;
  v39 = &v36[40 * v38];
  v40 = v53;
  v41 = v54;
  v39[64] = v55;
  *(v39 + 2) = v40;
  *(v39 + 3) = v41;
  v58 = v36;
  sub_1AB0167A8(v56);
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v42);
  *(v25 + 32) = v58;
  Logger.debug(_:)(v25, v23, v24);

  return __swift_destroy_boxed_opaque_existential_1Tm(v59);
}

uint64_t sub_1AB1BB3A8(uint64_t a1)
{
  if (*(v1 + 40))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v2 = v42;
    v3 = v43;
    __swift_project_boxed_opaque_existential_1Tm(v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    *(&v36 + 1) = MEMORY[0x1E69E6158];
    *&v35 = 0xD00000000000003FLL;
    *(&v35 + 1) = 0x80000001AB501C60;
    *(v5 + 48) = 0u;
    *(v5 + 32) = 0u;
    sub_1AB0169C4(&v35, v5 + 32);
    *(v5 + 64) = 0;
    *(v4 + 32) = v5;
    Logger.error(_:)(v4, v2, v3);
  }

  else
  {
    v6 = v1;
    v7 = *(v1 + 16);
    if (*(v7 + 16))
    {
      if (qword_1EB435768 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v8 = v42;
      v9 = v43;
      __swift_project_boxed_opaque_existential_1Tm(v41, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D4720;
      v40 = sub_1AB0168A8(0, 77, 0, MEMORY[0x1E69E7CC0]);
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v12 = *(v7 + 16);
      v39 = MEMORY[0x1E69E6530];
      v38[0] = v12;
      sub_1AB01522C(v38, v34);
      v35 = 0u;
      v36 = 0u;
      sub_1AB0169C4(v34, &v35);
      v37 = 0;
      v13 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[40 * v15];
      v17 = v35;
      v18 = v36;
      v16[64] = v37;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      v40 = v13;
      sub_1AB0167A8(v38);
      v19._countAndFlagsBits = 0xD00000000000004CLL;
      v19._object = 0x80000001AB501BD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      *(v10 + 32) = v40;
      Logger.warning(_:)(v10, v8, v9);

      __swift_destroy_boxed_opaque_existential_1Tm(v41);
    }

    sub_1AB460174();
    if (*v6)
    {
      sub_1AB460174();
    }

    *(v6 + 40) = 1;
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v20 = v42;
    v21 = v43;
    __swift_project_boxed_opaque_existential_1Tm(v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AB4D4720;
    v40 = sub_1AB0168A8(0, 60, 0, MEMORY[0x1E69E7CC0]);
    v23._object = 0x80000001AB501C20;
    v23._countAndFlagsBits = 0xD00000000000003BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    v24 = *(v6 + 24);
    v25 = *(v6 + 32);
    v39 = MEMORY[0x1E69E6158];
    v38[0] = v24;
    v38[1] = v25;
    sub_1AB01522C(v38, v34);
    v35 = 0u;
    v36 = 0u;

    sub_1AB0169C4(v34, &v35);
    v37 = 0;
    v26 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
      v40 = v26;
    }

    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v29 = &v26[40 * v28];
    v30 = v35;
    v31 = v36;
    v29[64] = v37;
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    v40 = v26;
    sub_1AB0167A8(v38);
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v32);
    *(v22 + 32) = v40;
    Logger.debug(_:)(v22, v20, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v41);
}

uint64_t sub_1AB1BB8CC(uint64_t a1)
{
  if (*(v1 + 40))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v3 = v46;
    v4 = v47;
    __swift_project_boxed_opaque_existential_1Tm(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    v44 = sub_1AB0168A8(0, 65, 0, MEMORY[0x1E69E7CC0]);
    v6._object = 0x80000001AB501B80;
    v6._countAndFlagsBits = 0xD00000000000001DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    v43 = MEMORY[0x1E69E6530];
    v42[0] = a1;
    sub_1AB01522C(v42, v38);
    v39 = 0u;
    v40 = 0u;
    sub_1AB0169C4(v38, &v39);
    v41 = 0;
    v7 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    v11 = v39;
    v12 = v40;
    v10[64] = v41;
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    v44 = v7;
    sub_1AB0167A8(v42);
    v13._countAndFlagsBits = 0xD000000000000023;
    v13._object = 0x80000001AB501BA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v5 + 32) = v44;
    Logger.error(_:)(v5, v3, v4);

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    return 0;
  }

  else
  {
    v15 = v1;
    sub_1AB460184();
    v16 = sub_1AB460154();

    v17 = v16;
    sub_1AB460124();
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v18 = v46;
    v19 = v47;
    __swift_project_boxed_opaque_existential_1Tm(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AB4D4720;
    v44 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v21._countAndFlagsBits = 0xD000000000000022;
    v21._object = 0x80000001AB501B50;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v43 = MEMORY[0x1E69E6530];
    v42[0] = a1;
    sub_1AB01522C(v42, v38);
    v39 = 0u;
    v40 = 0u;
    sub_1AB0169C4(v38, &v39);
    v41 = 0;
    v22 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[40 * v24];
    v26 = v39;
    v27 = v40;
    v25[64] = v41;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v44 = v22;
    sub_1AB0167A8(v42);
    v28._countAndFlagsBits = 0x74617265706F202CLL;
    v28._object = 0xEF203A44496E6F69;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v29 = *(v15 + 24);
    v30 = *(v15 + 32);
    v43 = MEMORY[0x1E69E6158];
    v42[0] = v29;
    v42[1] = v30;
    sub_1AB01522C(v42, v38);
    v39 = 0u;
    v40 = 0u;

    sub_1AB0169C4(v38, &v39);
    v41 = 0;
    v31 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
      v44 = v31;
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[40 * v33];
    v35 = v39;
    v36 = v40;
    v34[64] = v41;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    v44 = v31;
    sub_1AB0167A8(v42);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v20 + 32) = v44;
    Logger.debug(_:)(v20, v18, v19);

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    return v17;
  }
}

uint64_t sub_1AB1BBDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB1BBE18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AB014B20();
  result = MEMORY[0x1AC59C180](v2, &type metadata for OpaqueMetatype, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1AB2497C8(&v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t PageMetrics.InvocationPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
    v5 = sub_1AB461DB4();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t PageMetrics.InvocationPoint.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1AB461E34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t PageMetrics.InvocationPoint.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1AB1BC11C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
    v5 = sub_1AB461DB4();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t PageMetrics.Instruction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v28);
  *&v25 = v6;
  MetricsData.init(deserializing:using:)(v28, &v25, &v29);
  if (!v3)
  {
    v7 = *(&v29 + 1);
    v21 = v29;
    v20 = v30;
    v8 = *(&v30 + 1);
    v9 = v31;
    v10 = v32;
    v33 = 0x80000001AB4FDD30;
    JSONObject.subscript.getter(0xD000000000000010, 0x80000001AB4FDD30, v28);
    sub_1AB014A58(v28, v22, &qword_1EB436BA0, &qword_1AB4D4F40);
    v11 = v23;
    if (v23)
    {
      v19 = v7;
      v12 = v24;
      __swift_project_boxed_opaque_existential_1Tm(v22, v23);
      (*(v12 + 152))(&v25, v11, v12);
      sub_1AB066D84(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      if (*(&v26 + 1))
      {
        v29 = v25;
        v30 = v26;
        v13 = v27;
        v31 = v27;
        v14 = *(&v26 + 1);
        __swift_project_boxed_opaque_existential_1Tm(&v29, *(&v26 + 1));
        v15 = (*(v13 + 56))(sub_1AB1BC4E8, 0, &type metadata for PageMetrics.InvocationPoint, v14, v13);
        v16 = sub_1AB1BEFC8(v15, sub_1AB1BFD20, &type metadata for PageMetrics.InvocationPoint, sub_1AB248AD8);

        sub_1AB066D84(a1);
        result = sub_1AB06A37C(&v29);
        *a3 = v21;
        *(a3 + 8) = v19;
        *(a3 + 16) = v20;
        *(a3 + 24) = v8;
        *(a3 + 32) = v9;
        *(a3 + 40) = v10;
        *(a3 + 48) = v16;
        return result;
      }
    }

    else
    {

      sub_1AB066D84(v28);
      sub_1AB014AC0(v22, &qword_1EB436BA0, &qword_1AB4D4F40);
      v25 = 0u;
      v26 = 0u;
      v27 = 0;
    }

    sub_1AB014AC0(&v25, &qword_1EB437EF8, &qword_1AB4DBA50);
    sub_1AB163664();
    swift_allocError();
    *v18 = 0xD000000000000010;
    v18[1] = v33;
    v18[2] = 0x20000001F1FFAAC8uLL;
    v18[3] = 0;
    swift_willThrow();
  }

  return sub_1AB066D84(a1);
}

uint64_t sub_1AB1BC4E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AB014A58(a1, v9, &qword_1EB436BA0, &qword_1AB4D4F40);
  v3 = v10;
  if (v10)
  {
    v4 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v5 = (*(v4 + 24))(v3, v4);
    v7 = v6;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
    if (v7)
    {
      *a2 = v5;
      a2[1] = v7;
      return result;
    }
  }

  else
  {
    result = sub_1AB014AC0(v9, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

__n128 PageMetrics.Instruction.init(data:invocationPoints:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 24);
  *(a3 + 24) = result;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

uint64_t PageMetrics.Instruction.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

__n128 PageMetrics.Instruction.data.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[5];

  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  result = *(a1 + 3);
  *(v1 + 24) = result;
  *(v1 + 40) = v6;
  return result;
}

uint64_t PageMetrics.Instruction.invocationPoints.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t PageMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x7463757274736E69, 0xEC000000736E6F69, &v23);

  v6 = sub_1AB37F884(&v23, v5);
  JSONObject.subscript.getter(0x6C65694665676170, 0xEA00000000007364, v22);
  sub_1AB014A58(v22, v19, &qword_1EB436BA0, &qword_1AB4D4F40);
  v7 = v20;
  if (v20)
  {
    v8 = v21;
    __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    (*(v8 + 160))(&v23, v7, v8);
    sub_1AB066D84(v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v9 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
      v10 = v25;
      __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
      v11 = (*(v10 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v9, v10);
      sub_1AB07CDB0(&v23);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AB066D84(v22);
    sub_1AB014AC0(v19, &qword_1EB436BA0, &qword_1AB4D4F40);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

  sub_1AB014AC0(&v23, &qword_1EB436BC0, &qword_1AB4D52B0);
  v11 = 0;
LABEL_6:
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, &v23);
  v19[0] = v5;
  ScalarDictionary.init(tryDeserializing:using:)(&v23, v19, v22);
  v12 = v22[0];
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB4FDD10, v22);
  sub_1AB014A58(v22, v19, &qword_1EB436BA0, &qword_1AB4D4F40);
  v13 = v20;
  if (!v20)
  {
    sub_1AB066D84(v22);
    sub_1AB014AC0(v19, &qword_1EB436BA0, &qword_1AB4D4F40);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_11;
  }

  v14 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  (*(v14 + 160))(&v23, v13, v14);
  sub_1AB066D84(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v15 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
LABEL_11:
    sub_1AB014AC0(&v23, &qword_1EB436BC0, &qword_1AB4D52B0);
    goto LABEL_12;
  }

  v16 = v25;
  __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
  v17 = (*(v16 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v15, v16);
  sub_1AB07CDB0(&v23);
  if (!v17)
  {
LABEL_12:
    v17 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    sub_1AB066D84(a1);

    goto LABEL_13;
  }

  result = sub_1AB066D84(a1);
LABEL_13:
  *a3 = v6;
  a3[1] = v11;
  a3[2] = v12;
  a3[3] = v17;
  return result;
}

unint64_t static PageMetrics.notInstrumented.getter@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC8];
  a1[3] = result;
  return result;
}

uint64_t PageMetrics.instructions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PageMetrics.pageFields.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PageMetrics.custom.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t PageMetrics.clickLocationFields.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t PageMetrics.mergingWith(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *v2;
  v9 = v2[2];
  v15 = MEMORY[0x1E69E7CC0];

  sub_1AB164E04(v8);
  sub_1AB164E04(v4);
  v10 = v15;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_1AB1A16CC(v7, sub_1AB1794AC, 0, isUniquelyReferenced_nonNull_native, &v14);

  v12 = v14;

  *a2 = v10;
  a2[1] = v5;
  a2[2] = v12;
  a2[3] = v6;
  return result;
}

uint64_t PageMetrics._isEqual(to:)(uint64_t *a1)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  if ((sub_1AB1BCE80(*a1, v5) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AB3B1A34(v6, v2, 3uLL, 0) & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1AB171280(v8, v4);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return sub_1AB3B1A34(v7, v3, 3uLL, 0);
}

uint64_t sub_1AB1BCE80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a1 + 16))
  {
    v3 = 0;
    v33 = a1 + 32;
    v34 = a2 + 32;
    v32 = *(a2 + 16);
    while (2)
    {
      if (v3 == v2)
      {
        return 1;
      }

      v4 = (v34 + 56 * v3);
      v6 = v4[5];
      v5 = v4[6];
      v8 = v4[3];
      v7 = v4[4];
      v9 = *(v4 + 16);
      v11 = *v4;
      v10 = v4[1];

      if (!v8)
      {
        return 1;
      }

      v37 = v5;
      v12 = v33 + 56 * v3;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      v39 = *(v12 + 40);
      v40 = *(v12 + 32);
      v38 = *(v12 + 48);
      if (v10)
      {
        if (!v13 || (v11 == *v12 ? (v16 = v10 == v13) : (v16 = 0), !v16 && (sub_1AB461DA4() & 1) == 0))
        {
LABEL_42:

LABEL_43:

          return 0;
        }
      }

      else if (v13)
      {
        goto LABEL_42;
      }

      if (v9 == v14)
      {

        if (sub_1AB3C7A90(v15, v8))
        {
          v35 = v6;
          v36 = v7;
          ++v3;
          v17 = 1 << *(v8 + 32);
          if (v17 < 64)
          {
            v18 = ~(-1 << v17);
          }

          else
          {
            v18 = -1;
          }

          v19 = v18 & *(v8 + 64);
          v20 = (v17 + 63) >> 6;

          v21 = 0;
          while (v19)
          {
LABEL_27:
            v24 = __clz(__rbit64(v19)) | (v21 << 6);
            v25 = (*(v8 + 48) + 16 * v24);
            v26 = *v25;
            v27 = v25[1];
            sub_1AB0165C4(*(v8 + 56) + 32 * v24, v45);
            v44[0] = v26;
            v44[1] = v27;
            sub_1AB0165C4(v45, v43);
            if (*(v15 + 16))
            {

              v28 = sub_1AB014DB4(v26, v27);
              if (v29)
              {
                sub_1AB0165C4(*(v15 + 56) + 32 * v28, &v41);
              }

              else
              {
                v41 = 0u;
                v42 = 0u;
              }
            }

            else
            {
              v41 = 0u;
              v42 = 0u;
            }

            v19 &= v19 - 1;
            v22 = sub_1AB3B1C48(v43, &v41, 3uLL, 0);
            sub_1AB014AC0(&v41, &unk_1EB437E60, &qword_1AB4D4730);
            sub_1AB014AC0(v43, &unk_1EB437E60, &qword_1AB4D4730);
            sub_1AB014AC0(v44, &qword_1EB43A620, &qword_1AB4D6B68);
            if ((v22 & 1) == 0)
            {

              goto LABEL_43;
            }
          }

          while (1)
          {
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
              goto LABEL_42;
            }

            if (v23 >= v20)
            {
              break;
            }

            v19 = *(v8 + 64 + 8 * v23);
            ++v21;
            if (v19)
            {
              v21 = v23;
              goto LABEL_27;
            }
          }

          if ((sub_1AB1BED5C(v36, v40) & 1) == 0 || (sub_1AB1BED5C(v35, v39) & 1) == 0)
          {

            goto LABEL_43;
          }

          v30 = sub_1AB1BED5C(v37, v38);

          v2 = v32;
          if (v30)
          {
            continue;
          }

          return 0;
        }
      }

      goto LABEL_42;
    }
  }

  return 0;
}

uint64_t sub_1AB1BD370(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001AB4FDD30;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0x80000001AB4FDD30;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB1BD414()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1BD494(uint64_t a1)
{
  sub_1AB460684();
}

uint64_t sub_1AB1BD500(uint64_t a1)
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1BD57C@<X0>(char *a2@<X8>)
{
  v3 = sub_1AB4619B4();

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

void sub_1AB1BD5DC(unint64_t *a1@<X8>)
{
  v2 = 0x80000001AB4FDD30;
  v3 = 1635017060;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1AB1BD618()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1AB1BD650@<X0>(char *a3@<X8>)
{
  v4 = sub_1AB4619B4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AB1BD6B4(uint64_t a1)
{
  v2 = sub_1AB1BF334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB1BD6F0(uint64_t a1)
{
  v2 = sub_1AB1BF334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PageMetrics.Instruction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F00, &qword_1AB4DAA68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1BF334();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = 0;
  sub_1AB1A1A3C();
  sub_1AB461AC4();
  v9 = v21;
  v26 = v22;
  v19 = v23;
  v17 = v20;
  v18 = v24;
  v10 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F10, &qword_1AB4DAA70);
  v27 = 1;
  sub_1AB1BF388();
  sub_1AB461AC4();
  v11 = sub_1AB1BEFC8(v20, sub_1AB1BFD20, &type metadata for PageMetrics.InvocationPoint, sub_1AB248AD8);
  v16 = v9;
  v12 = v11;

  (*(v6 + 8))(v8, v5);
  v13 = v16;
  *a2 = v17;
  *(a2 + 8) = v13;
  *(a2 + 16) = v26;
  v14 = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v14;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t PageMetrics.Instruction.encode(to:)(void *a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F38, &qword_1AB4DAA80);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v17 - v3;
  v5 = v1[1];
  v20 = *v1;
  v29 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v18 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1BF334();

  sub_1AB462274();
  v9 = v21;
  v23 = v20;
  v24 = v5;
  v10 = v4;
  LOBYTE(v25) = v29;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v30 = 0;
  sub_1AB1A1BB4();
  v11 = v22;
  sub_1AB461BF4();

  if (v11)
  {
    return (*(v19 + 8))(v4, v9);
  }

  v13 = *(v18 + 2);
  if (v13)
  {
    v20 = v4;
    v14 = sub_1AB1B0044(v13, 0);
    v22 = sub_1AB1B1164();
    v15 = v23;

    result = sub_1AB0309A4(v15);
    if (v22 != v13)
    {
      __break(1u);
      return result;
    }

    v16 = v19;
    v10 = v20;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    v16 = v19;
  }

  v23 = v14;
  v30 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F10, &qword_1AB4DAA70);
  sub_1AB1BF4E4();
  sub_1AB461BF4();

  return (*(v16 + 8))(v10, v9);
}

uint64_t sub_1AB1BDD30()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1BDE00(uint64_t a1)
{
  sub_1AB460684();
}

uint64_t sub_1AB1BDEBC(uint64_t a1)
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

unint64_t sub_1AB1BDF88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB1BF0F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AB1BDFB8(unint64_t *a1@<X8>)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74737563;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001AB4FDD10;
  }

  if (*v1)
  {
    v3 = 0x6C65694665676170;
    v2 = 0xEA00000000007364;
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

unint64_t sub_1AB1BE044()
{
  v1 = 0x7463757274736E69;
  v2 = 0x6D6F74737563;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x6C65694665676170;
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

unint64_t sub_1AB1BE0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB1BF0F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB1BE0F4(uint64_t a1)
{
  v2 = sub_1AB1BF640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB1BE130(uint64_t a1)
{
  v2 = sub_1AB1BF640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PageMetrics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F58, &qword_1AB4DAA88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1BF640();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v32) = 0;
  if (sub_1AB461AF4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F68, &qword_1AB4DAA90);
    LOBYTE(v29) = 0;
    sub_1AB1BF6E8();
    sub_1AB461AC4();
    v10 = v32;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v32) = 1;
  if ((sub_1AB461AF4() & 1) == 0)
  {
    v35 = 0;
    goto LABEL_15;
  }

  LOBYTE(v29) = 1;
  sub_1AB1BF694();
  sub_1AB461AC4();
  v25 = v10;
  sub_1AB014A58(&v32, v26, &qword_1EB436BA0, &qword_1AB4D4F40);
  v11 = v27;
  if (!v27)
  {
    sub_1AB014AC0(v26, &qword_1EB436BA0, &qword_1AB4D4F40);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_13;
  }

  v12 = v28;
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  (*(v12 + 160))(&v29, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v13 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
LABEL_13:
    sub_1AB066D84(&v32);
    sub_1AB014AC0(&v29, &qword_1EB436BC0, &qword_1AB4D52B0);
    v35 = 0;
    goto LABEL_14;
  }

  v14 = v31;
  __swift_project_boxed_opaque_existential_1Tm(&v29, *(&v30 + 1));
  v35 = (*(v14 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v13, v14);
  sub_1AB066D84(&v32);
  sub_1AB07CDB0(&v29);
LABEL_14:
  v10 = v25;
LABEL_15:
  LOBYTE(v32) = 2;
  if (sub_1AB461AF4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B40, &qword_1AB4D9870);
    LOBYTE(v29) = 2;
    sub_1AB1A1C08(qword_1EB4329D0, &protocol witness table for ScalarDictionary, &protocol conformance descriptor for <A> DiscardOnError<A>);
    sub_1AB461AC4();
    v25 = v10;
    v15 = v32;
  }

  else
  {
    v25 = v10;
    v15 = MEMORY[0x1E69E7CC8];
  }

  v24 = v15;
  v16 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  LOBYTE(v32) = 3;
  if (sub_1AB461AF4())
  {

    LOBYTE(v26[0]) = 3;
    sub_1AB1BF694();
    sub_1AB461AC4();
    sub_1AB014A58(&v29, v26, &qword_1EB436BA0, &qword_1AB4D4F40);
    v18 = v27;
    v17 = v25;
    if (v27)
    {
      v19 = v28;
      __swift_project_boxed_opaque_existential_1Tm(v26, v27);
      (*(v19 + 160))(&v32, v18, v19);
      sub_1AB066D84(&v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v20 = *(&v33 + 1);
      if (*(&v33 + 1))
      {
        v21 = v34;
        __swift_project_boxed_opaque_existential_1Tm(&v32, *(&v33 + 1));
        v16 = (*(v21 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v20, v21);
        sub_1AB07CDB0(&v32);
        if (v16)
        {
          (*(v6 + 8))(v8, v5);
          goto LABEL_28;
        }

LABEL_27:
        v16 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
        (*(v6 + 8))(v8, v5);

        goto LABEL_28;
      }
    }

    else
    {
      sub_1AB066D84(&v29);
      sub_1AB014AC0(v26, &qword_1EB436BA0, &qword_1AB4D4F40);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
    }

    sub_1AB014AC0(&v32, &qword_1EB436BC0, &qword_1AB4D52B0);
    goto LABEL_27;
  }

  (*(v6 + 8))(v8, v5);
  v17 = v25;
LABEL_28:
  v22 = v35;
  *a2 = v17;
  a2[1] = v22;
  a2[2] = v24;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t PageMetrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F90, &qword_1AB4DAA98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = *v1;
  v29 = v1[1];
  v7 = v1[3];
  v23 = v1[2];
  v8 = a1[3];
  v9 = a1;
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1Tm(v9, v8);
  sub_1AB1BF640();

  v12 = v4;
  sub_1AB462274();
  v26[0] = v6;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437F68, &qword_1AB4DAA90);
  sub_1AB1BF844();
  sub_1AB461BF4();
  if (v2)
  {

    return (*(v5 + 8))(v11, v4);
  }

  v14 = v23;

  v15 = v29;
  if (!v29)
  {
    v24 = 0u;
    v25 = 0u;
    v17 = v5;
    v18 = v7;
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
  *&v24 = v15;
  *(&v25 + 1) = v16;
  v17 = v5;
  v18 = v7;
  if (!v16)
  {
LABEL_7:

    sub_1AB014AC0(&v24, &unk_1EB437E60, &qword_1AB4D4730);
    v21 = 0;
    v20 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  v19 = swift_allocObject();
  sub_1AB014B78(&v24, (v19 + 16));

  v20 = &off_1F1FFB5A8;
  v21 = &type metadata for FoundationValue;
LABEL_8:
  v26[0] = v19;
  v26[1] = 0;
  v26[2] = 0;
  v27 = v21;
  v28 = v20;
  LOBYTE(v24) = 1;
  sub_1AB1BF9A0();
  sub_1AB461BF4();
  sub_1AB066D84(v26);
  v26[0] = v14;
  LOBYTE(v24) = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B40, &qword_1AB4D9870);
  sub_1AB1A1C08(&qword_1EB437B90, &protocol witness table for ScalarDictionary, &protocol conformance descriptor for <A> DiscardOnError<A>);
  sub_1AB461BF4();

  *(&v25 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
  *&v24 = v18;
  v27 = &type metadata for FoundationValue;
  v28 = &off_1F1FFB5A8;
  v26[0] = swift_allocObject();
  sub_1AB014B78(&v24, (v26[0] + 16));
  LOBYTE(v24) = 3;

  sub_1AB461BF4();
  sub_1AB066D84(v26);
  return (*(v17 + 8))(v11, v12);
}

uint64_t PageMetrics.Instruction._isEqual(to:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[3];
  v12 = v1[4];
  v14 = v1[5];
  v13 = v1[6];
  v23 = *v1;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = v14;
  v18[0] = v2;
  v18[1] = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v8;

  v15 = MetricsData._isEqual(to:)(v18);

  if (v15)
  {
    v16 = sub_1AB1BED5C(v13, v7);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1AB1BED5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1AB4620A4();

    sub_1AB460684();
    v16 = sub_1AB462104();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1AB461DA4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t PageMetrics.init(instructions:pageFields:custom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  result = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v7;
  a4[3] = result;
  return result;
}

uint64_t sub_1AB1BEFC8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1AC59C180](v7, a3, v8);
  v14 = result;
  if (v7)
  {
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      a4(v13, v12, v11);

      v10 += 2;
      --v7;
    }

    while (v7);
    return v14;
  }

  return result;
}

uint64_t sub_1AB1BF06C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AB1BFD74();
  result = MEMORY[0x1AC59C180](v2, &type metadata for JSONBridgingConfiguration.ModelDescriptor, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;

      sub_1AB248AF4(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1AB1BF0F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AB4619B4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AB1BF140(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC59C180](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1AB248C34(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1AB1BF1D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AB1BFC24();
  result = MEMORY[0x1AC59C180](v2, &type metadata for MetricsIdentifierScheme, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v14 = *(v5 + 64);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_1AB09DF1C(v13, v10);
      sub_1AB249330(v8, v13);
      v10[2] = v8[2];
      v10[3] = v8[3];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      sub_1AB09DEB0(v10);
      v5 += 72;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_1AB1BF2A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC59C180](v2, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1AB02B4BC(v4, v5);
      sub_1AB2498C4(v6, v5);
      sub_1AB02B2E4(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1AB1BF334()
{
  result = qword_1EB437F08;
  if (!qword_1EB437F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F08);
  }

  return result;
}

unint64_t sub_1AB1BF388()
{
  result = qword_1EB437F18;
  if (!qword_1EB437F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F10, &qword_1AB4DAA70);
    sub_1AB1BF40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F18);
  }

  return result;
}

unint64_t sub_1AB1BF40C()
{
  result = qword_1EB437F20;
  if (!qword_1EB437F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F28, &qword_1AB4DAA78);
    sub_1AB1BF490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F20);
  }

  return result;
}

unint64_t sub_1AB1BF490()
{
  result = qword_1EB437F30;
  if (!qword_1EB437F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F30);
  }

  return result;
}

unint64_t sub_1AB1BF4E4()
{
  result = qword_1EB437F40;
  if (!qword_1EB437F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F10, &qword_1AB4DAA70);
    sub_1AB1BF568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F40);
  }

  return result;
}

unint64_t sub_1AB1BF568()
{
  result = qword_1EB437F48;
  if (!qword_1EB437F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F28, &qword_1AB4DAA78);
    sub_1AB1BF5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F48);
  }

  return result;
}

unint64_t sub_1AB1BF5EC()
{
  result = qword_1EB437F50;
  if (!qword_1EB437F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F50);
  }

  return result;
}

unint64_t sub_1AB1BF640()
{
  result = qword_1EB437F60;
  if (!qword_1EB437F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F60);
  }

  return result;
}

unint64_t sub_1AB1BF694()
{
  result = qword_1EB433400;
  if (!qword_1EB433400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433400);
  }

  return result;
}

unint64_t sub_1AB1BF6E8()
{
  result = qword_1EB437F70;
  if (!qword_1EB437F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F68, &qword_1AB4DAA90);
    sub_1AB1BF76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F70);
  }

  return result;
}

unint64_t sub_1AB1BF76C()
{
  result = qword_1EB437F78;
  if (!qword_1EB437F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F80, &unk_1AB4EFAC0);
    sub_1AB1BF7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F78);
  }

  return result;
}

unint64_t sub_1AB1BF7F0()
{
  result = qword_1EB437F88;
  if (!qword_1EB437F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F88);
  }

  return result;
}

unint64_t sub_1AB1BF844()
{
  result = qword_1EB437F98;
  if (!qword_1EB437F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F68, &qword_1AB4DAA90);
    sub_1AB1BF8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437F98);
  }

  return result;
}

unint64_t sub_1AB1BF8C8()
{
  result = qword_1EB437FA0;
  if (!qword_1EB437FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437F80, &unk_1AB4EFAC0);
    sub_1AB1BF94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FA0);
  }

  return result;
}

unint64_t sub_1AB1BF94C()
{
  result = qword_1EB437FA8;
  if (!qword_1EB437FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FA8);
  }

  return result;
}

unint64_t sub_1AB1BF9A0()
{
  result = qword_1EB433408;
  if (!qword_1EB433408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433408);
  }

  return result;
}

unint64_t sub_1AB1BFA18()
{
  result = qword_1EB437FB0;
  if (!qword_1EB437FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FB0);
  }

  return result;
}

unint64_t sub_1AB1BFA70()
{
  result = qword_1EB437FB8;
  if (!qword_1EB437FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FB8);
  }

  return result;
}

unint64_t sub_1AB1BFAC8()
{
  result = qword_1EB437FC0;
  if (!qword_1EB437FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FC0);
  }

  return result;
}

unint64_t sub_1AB1BFB20()
{
  result = qword_1EB437FC8;
  if (!qword_1EB437FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FC8);
  }

  return result;
}

unint64_t sub_1AB1BFB78()
{
  result = qword_1EB437FD0;
  if (!qword_1EB437FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FD0);
  }

  return result;
}

unint64_t sub_1AB1BFBD0()
{
  result = qword_1EB437FD8;
  if (!qword_1EB437FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FD8);
  }

  return result;
}

unint64_t sub_1AB1BFC24()
{
  result = qword_1EB4325C8[0];
  if (!qword_1EB4325C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4325C8);
  }

  return result;
}

unint64_t sub_1AB1BFC78()
{
  result = qword_1ED4D0498;
  if (!qword_1ED4D0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0498);
  }

  return result;
}

unint64_t sub_1AB1BFCCC()
{
  result = qword_1ED4D0490;
  if (!qword_1ED4D0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0490);
  }

  return result;
}

unint64_t sub_1AB1BFD20()
{
  result = qword_1EB435600;
  if (!qword_1EB435600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435600);
  }

  return result;
}

unint64_t sub_1AB1BFD74()
{
  result = qword_1EB437FE0;
  if (!qword_1EB437FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437FE0);
  }

  return result;
}

uint64_t sub_1AB1BFE18@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1AB460054();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid;
  swift_beginAccess();
  sub_1AB014A58(v1 + v6, &v48, &qword_1EB437FE8, &qword_1AB4DB028);
  if (v49)
  {
    return sub_1AB0149B0(&v48, a1);
  }

  v39 = a1;
  sub_1AB014AC0(&v48, &qword_1EB437FE8, &qword_1AB4DB028);
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v49;
  v40 = v50;
  __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4720;
  v51 = sub_1AB0168A8(0, 26, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001AB502170;
  v10._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = *(v1 + 128);
  v12 = *(v1 + 136);
  v47 = MEMORY[0x1E69E6158];
  v46[0] = v11;
  v46[1] = v12;
  sub_1AB014A58(v46, v42, &unk_1EB437E60, &qword_1AB4D4730);
  v43 = 0u;
  v44 = 0u;

  sub_1AB017CC4(v42, &v43, &unk_1EB437E60, &qword_1AB4D4730);
  v45 = 0;
  v13 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
    v51 = v13;
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v43;
  v18 = v44;
  v16[64] = v45;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v51 = v13;
  sub_1AB014AC0(v46, &unk_1EB437E60, &qword_1AB4D4730);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v9 + 32) = v51;
  Logger.info(_:)(v9, v8, v40);

  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if (byte_1EB435998 != 1 || (v20 = *(v3 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory)) == 0)
  {
    v23 = sub_1AB460084();
    v24 = *(v3 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_workQueue);

    v25 = v24;

    sub_1AB460044();
    v26 = sub_1AB460034();
    if (v2)
    {
      goto LABEL_16;
    }

    v49 = v23;
    v50 = &protocol witness table for XPCSession;
    *&v48 = v26;
LABEL_23:
    sub_1AB0149B0(&v48, v39);
    sub_1AB01494C(v39, &v48);
    swift_beginAccess();
    sub_1AB017CC4(&v48, v3 + v6, &qword_1EB437FE8, &qword_1AB4DB028);
    return swift_endAccess();
  }

  v21 = *(v3 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory + 8);

  v20(&v48, v22);
  if (!v2)
  {
    sub_1AB0177B8(v20, v21);
    goto LABEL_23;
  }

  sub_1AB0177B8(v20, v21);
LABEL_16:
  sub_1AB4622E4();
  v27 = v49;
  v28 = v50;
  __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AB4D4720;
  v51 = sub_1AB0168A8(0, 43, 0, MEMORY[0x1E69E7CC0]);
  v30._countAndFlagsBits = 0xD00000000000002ALL;
  v30._object = 0x80000001AB502190;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  swift_getErrorValue();
  v47 = v41;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
  (*(*(v41 - 8) + 16))(boxed_opaque_existential_0);
  sub_1AB014A58(v46, v42, &unk_1EB437E60, &qword_1AB4D4730);
  v43 = 0u;
  v44 = 0u;
  sub_1AB017CC4(v42, &v43, &unk_1EB437E60, &qword_1AB4D4730);
  v45 = 0;
  v32 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
    v51 = v32;
  }

  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1AB0168A8((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = &v32[40 * v34];
  v36 = v43;
  v37 = v44;
  v35[64] = v45;
  *(v35 + 2) = v36;
  *(v35 + 3) = v37;
  v51 = v32;
  sub_1AB014AC0(v46, &unk_1EB437E60, &qword_1AB4D4730);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v38);
  *(v29 + 32) = v51;
  Logger.error(_:)(v29, v27, v28);

  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
  return swift_willThrow();
}

uint64_t sub_1AB1C04D0(uint64_t a1)
{
  v2 = v1;
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v4 = *(&v26 + 1);
  v5 = v27;
  __swift_project_boxed_opaque_existential_1Tm(&v25, *(&v26 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  v24 = sub_1AB0168A8(0, 41, 0, MEMORY[0x1E69E7CC0]);
  v7._object = 0x80000001AB5021C0;
  v7._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = sub_1AB4600A4();
  v23[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);
  sub_1AB014A58(v23, v19, &unk_1EB437E60, &qword_1AB4D4730);
  v20 = 0u;
  v21 = 0u;
  sub_1AB017CC4(v19, &v20, &unk_1EB437E60, &qword_1AB4D4730);
  v22 = 0;
  v10 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = v20;
  v15 = v21;
  v13[64] = v22;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v24 = v10;
  sub_1AB014AC0(v23, &unk_1EB437E60, &qword_1AB4D4730);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v6 + 32) = v24;
  Logger.error(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v17 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid;
  swift_beginAccess();
  sub_1AB017CC4(&v25, v2 + v17, &qword_1EB437FE8, &qword_1AB4DB028);
  return swift_endAccess();
}

uint64_t DaemonSessionImplementation.__allocating_init(xpcServiceName:signposter:requestSizeLimit:timeout:xpcSessionProviderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v34 = a6;
  v35 = a7;
  v30 = a5;
  v31 = a4;
  v29[0] = a3;
  v33 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v33);
  v32 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v29[1] = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AB461114();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v20 = v19 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  *(v19 + 128) = a1;
  *(v19 + 136) = a2;
  v21 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_signposter;
  v22 = sub_1AB45FFC4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v19 + v21, a3, v22);
  v24 = 0x100000;
  if ((v30 & 1) == 0)
  {
    v24 = v31;
  }

  *(v19 + 112) = v24;
  *(v19 + 120) = a8;
  v31 = sub_1AB015664();
  v36 = a1;
  v37 = a2;

  MEMORY[0x1AC59BA20](0x6575516B726F772ELL, 0xEA00000000006575);
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8098], v15);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1AB01CA48(&qword_1ED4D1F50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB033860();
  sub_1AB4614E4();
  v25 = sub_1AB461154();
  (*(v23 + 8))(v29[0], v22);
  *(v19 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_workQueue) = v25;
  v26 = (v19 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory);
  v27 = v35;
  *v26 = v34;
  v26[1] = v27;
  return v19;
}

uint64_t DaemonSessionImplementation.init(xpcServiceName:signposter:requestSizeLimit:timeout:xpcSessionProviderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v36 = a6;
  v37 = a7;
  v32 = a5;
  v33 = a4;
  v31 = a3;
  v35 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v30 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AB461114();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v21 = v9 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  *(v9 + 128) = a1;
  *(v9 + 136) = a2;
  v22 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_signposter;
  v23 = sub_1AB45FFC4();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v9 + v22, a3, v23);
  v25 = 0x100000;
  if ((v32 & 1) == 0)
  {
    v25 = v33;
  }

  *(v9 + 112) = v25;
  *(v9 + 120) = a8;
  v33 = sub_1AB015664();
  v38 = a1;
  v39 = a2;

  MEMORY[0x1AC59BA20](0x6575516B726F772ELL, 0xEA00000000006575);
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8098], v17);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1AB01CA48(&qword_1ED4D1F50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB033860();
  sub_1AB4614E4();
  v26 = sub_1AB461154();
  (*(v24 + 8))(v31, v23);
  *(v9 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_workQueue) = v26;
  v27 = (v9 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory);
  v28 = v37;
  *v27 = v36;
  v27[1] = v28;
  return v9;
}

uint64_t DaemonSessionImplementation.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[117] = v4;
  v5[116] = a4;
  v5[115] = a3;
  v5[114] = a2;
  v5[113] = a1;
  v7 = sub_1AB4600A4();
  v5[118] = v7;
  v5[119] = *(v7 - 8);
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for DaemonResponse(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v5[122] = v11;
  v5[123] = *(v11 - 8);
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v12 = sub_1AB45FF84();
  v5[126] = v12;
  v5[127] = *(v12 - 8);
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v5[130] = *(a3 - 8);
  v5[131] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB1C10E4, v4, 0);
}

uint64_t sub_1AB1C10E4()
{
  v52 = v0;
  v50 = *(*(v0 + 1040) + 16);
  v50(*(v0 + 1048), *(v0 + 912), *(v0 + 920));
  sub_1AB45FF74();
  v1 = sub_1AB45FFA4();
  v2 = sub_1AB461234();
  v3 = sub_1AB461314();
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  if (v3)
  {
    v6 = *(v0 + 920);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v51 = v8;
    *v7 = 136315138;
    v9 = sub_1AB461C44();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1AB030D2C(v9, v11, &v51);

    *(v7 + 4) = v12;
    v13 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v1, v2, v13, "DaemonSession.send", "request=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1AC59F020](v8, -1, -1);
    MEMORY[0x1AC59F020](v7, -1, -1);
  }

  else
  {
    v14 = *(v0 + 920);

    (*(v5 + 8))(v4, v14);
  }

  v15 = *(v0 + 1032);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 928);
  v19 = *(v0 + 920);
  (*(v16 + 16))(*(v0 + 1024), v15, v17);
  sub_1AB460014();
  swift_allocObject();
  v20 = sub_1AB460004();
  *(v0 + 1056) = v20;
  (*(v16 + 8))(v15, v17);
  v21 = (*(v18 + 96))(v19, v18);
  if ((v22 & 1) != 0 || (v23 = *(v0 + 936), v24 = *(v23 + 112), v24 >= v21))
  {
    if (qword_1EB433A50 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 920);
    v28 = *(v0 + 912);
    *(v0 + 1064) = qword_1EB433A40;
    sub_1AB4622E4();
    v29 = *(v0 + 200);
    v30 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v29);
    *(v0 + 1072) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1AB4D4720;
    v51 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v32._countAndFlagsBits = 0xD00000000000001BLL;
    v32._object = 0x80000001AB501DB0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v32);
    *(v0 + 816) = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 792));
    v50(boxed_opaque_existential_0, v28, v27);
    sub_1AB014A58(v0 + 792, v0 + 728, &unk_1EB437E60, &qword_1AB4D4730);
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    sub_1AB017CC4(v0 + 728, v0 + 336, &unk_1EB437E60, &qword_1AB4D4730);
    *(v0 + 368) = 0;
    v34 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[40 * v36];
    v38 = *(v0 + 336);
    v39 = *(v0 + 352);
    v37[64] = *(v0 + 368);
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    v51 = v34;
    sub_1AB014AC0(v0 + 792, &unk_1EB437E60, &qword_1AB4D4730);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v31 + 32) = v51;
    Logger.debug(_:)(v31, v29, v30);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    sub_1AB1BFE18(v0 + 56);
    v41 = *(v0 + 936);
    v42 = *(v0 + 912);
    v43 = sub_1AB01CA48(&qword_1EB433AA8, type metadata accessor for DaemonSessionImplementation, &protocol conformance descriptor for DaemonSessionImplementation);
    v44 = swift_task_alloc();
    *(v0 + 1080) = v44;
    *(v44 + 16) = *(v0 + 920);
    *(v44 + 32) = v41;
    *(v44 + 40) = v0 + 56;
    *(v44 + 48) = v42;
    v45 = swift_task_alloc();
    *(v0 + 1088) = v45;
    *v45 = v0;
    v45[1] = sub_1AB1C2120;
    v46 = *(v0 + 992);
    v47 = *(v0 + 976);

    return MEMORY[0x1EEE6DE38](v46, v41, v43, 0x293A5F28646E6573, 0xE800000000000000, sub_1AB1C5DEC, v44, v47);
  }

  else
  {
    v25 = v21;
    type metadata accessor for DaemonError(0);
    sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    *v26 = v25;
    v26[1] = v24;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1AB1C39FC(v23, "DaemonSession.send", 18, 2, v20);

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_1AB1C2120()
{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  v3 = *(v2 + 936);

  if (v0)
  {
    v4 = sub_1AB1C2FB8;
  }

  else
  {
    v4 = sub_1AB1C2268;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1AB1C2268()
{
  v1 = *(v0 + 976);
  (*(*(v0 + 984) + 32))(*(v0 + 1000), *(v0 + 992), v1);
  sub_1AB4622E4();
  v2 = *(v0 + 280);
  v98 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v103 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001AB501E50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = sub_1AB36ED2C(v1);
  *(v0 + 784) = MEMORY[0x1E69E6158];
  *(v0 + 760) = v5;
  *(v0 + 768) = v6;
  sub_1AB014A58(v0 + 760, v0 + 824, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  sub_1AB017CC4(v0 + 824, v0 + 416, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 448) = 0;
  v7 = v103;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v103 + 2) + 1, 1, v103);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 1096);
  v11 = *(v0 + 976);
  v12 = *(v0 + 904);
  *(v7 + 2) = v9 + 1;
  v13 = &v7[40 * v9];
  v14 = *(v0 + 416);
  v15 = *(v0 + 432);
  v13[64] = *(v0 + 448);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1AB014AC0(v0 + 760, &unk_1EB437E60, &qword_1AB4D4730);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v3 + 32) = v7;
  Logger.info(_:)(v3, v2, v98);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  _s9JetEngine14DaemonResponseO3getxyAA0cD12CodableErrorVYKF(v11, (v0 + 16), v12);
  if (!v10)
  {
    v44 = *(v0 + 1056);
    v45 = *(v0 + 936);
    (*(*(v0 + 984) + 8))(*(v0 + 1000), *(v0 + 976));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    sub_1AB1C39FC(v45, "DaemonSession.send", 18, 2, v44);

    v46 = *(v0 + 8);
    goto LABEL_29;
  }

  v17 = *(v0 + 1000);
  v18 = *(v0 + 984);
  v19 = *(v0 + 976);
  v20 = *(v0 + 48);
  sub_1AB1C5D4C();
  v96 = *(v0 + 32);
  v99 = *(v0 + 16);
  v21 = swift_allocError();
  *v22 = v99;
  *(v22 + 16) = v96;
  *(v22 + 32) = v20;
  (*(v18 + 8))(v17, v19);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  *(v0 + 888) = v21;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 968);
    v25 = *(v0 + 960);
    v26 = *(v0 + 952);
    v27 = *(v0 + 944);

    (*(v26 + 32))(v25, v24, v27);
    sub_1AB4622E4();
    v97 = *(v0 + 328);
    v100 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v100);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1AB4D4720;
    v104 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v29._object = 0x80000001AB501E30;
    v29._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    *(v0 + 656) = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v94 = *(v26 + 16);
    v94(boxed_opaque_existential_0, v25, v27);
    sub_1AB014A58(v0 + 632, v0 + 696, &unk_1EB437E60, &qword_1AB4D4730);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1AB017CC4(v0 + 696, v0 + 456, &unk_1EB437E60, &qword_1AB4D4730);
    *(v0 + 488) = 0;
    v31 = v104;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1AB0168A8(0, *(v104 + 2) + 1, 1, v104);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
    }

    v34 = *(v0 + 960);
    v35 = *(v0 + 952);
    v36 = *(v0 + 944);
    v90 = *(v0 + 1056);
    v92 = *(v0 + 936);
    *(v31 + 2) = v33 + 1;
    v37 = &v31[40 * v33];
    v38 = *(v0 + 456);
    v39 = *(v0 + 472);
    v37[64] = *(v0 + 488);
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    sub_1AB014AC0(v0 + 632, &unk_1EB437E60, &qword_1AB4D4730);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v28 + 32) = v31;
    Logger.error(_:)(v28, v100, v97);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
    type metadata accessor for DaemonError(0);
    sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v94(v41, v34, v36);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v35 + 8))(v34, v36);
    v42 = v90;
    v43 = *(v0 + 888);
  }

  else
  {

    *(v0 + 880) = v21;
    v47 = v21;
    if (!swift_dynamicCast())
    {

      sub_1AB4622E4();
      v66 = *(v0 + 160);
      v102 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v66);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1AB4D4720;
      v106 = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v68._countAndFlagsBits = 0xD00000000000002FLL;
      v68._object = 0x80000001AB501DD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v68);
      swift_getErrorValue();
      v69 = *(v0 + 856);
      v70 = *(v0 + 864);
      *(v0 + 688) = v70;
      v71 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v70 - 8) + 16))(v71, v69, v70);
      sub_1AB014A58(v0 + 664, v0 + 536, &unk_1EB437E60, &qword_1AB4D4730);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1AB017CC4(v0 + 536, v0 + 376, &unk_1EB437E60, &qword_1AB4D4730);
      *(v0 + 408) = 0;
      v72 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_1AB0168A8(0, *(v106 + 2) + 1, 1, v106);
      }

      v74 = *(v72 + 2);
      v73 = *(v72 + 3);
      if (v74 >= v73 >> 1)
      {
        v72 = sub_1AB0168A8((v73 > 1), v74 + 1, 1, v72);
      }

      v75 = *(v0 + 1056);
      v76 = *(v0 + 936);
      *(v72 + 2) = v74 + 1;
      v77 = &v72[40 * v74];
      v42 = v75;
      v78 = *(v0 + 376);
      v79 = *(v0 + 392);
      v77[64] = *(v0 + 408);
      *(v77 + 2) = v78;
      *(v77 + 3) = v79;
      sub_1AB014AC0(v0 + 664, &unk_1EB437E60, &qword_1AB4D4730);
      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v80);
      *(v67 + 32) = v72;
      Logger.error(_:)(v67, v66, v102);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      type metadata accessor for DaemonError(0);
      sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      v82 = v81;
      v83 = v21;
      sub_1AB19EFF8(v21, v82);
      swift_willThrow();

      v84 = v76;
      goto LABEL_28;
    }

    v49 = *(v0 + 96);
    v48 = *(v0 + 104);
    v51 = *(v0 + 112);
    v50 = *(v0 + 120);
    v52 = *(v0 + 128);
    sub_1AB4622E4();
    v91 = *(v0 + 248);
    v93 = *(v0 + 240);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v93);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1AB4D4720;
    v105 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
    v54._countAndFlagsBits = 0xD000000000000027;
    v54._object = 0x80000001AB501E00;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    *(v0 + 592) = &type metadata for DaemonResponseCodableError;
    v55 = swift_allocObject();
    *(v0 + 568) = v55;
    v101 = v49;
    v55[2] = v49;
    v55[3] = v48;
    v55[4] = v51;
    v55[5] = v50;
    v95 = v50;
    v55[6] = v52;
    sub_1AB014A58(v0 + 568, v0 + 600, &unk_1EB437E60, &qword_1AB4D4730);
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;

    sub_1AB017CC4(v0 + 600, v0 + 496, &unk_1EB437E60, &qword_1AB4D4730);
    *(v0 + 528) = 0;
    v56 = v105;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1AB0168A8(0, *(v105 + 2) + 1, 1, v105);
    }

    v58 = *(v56 + 2);
    v57 = *(v56 + 3);
    if (v58 >= v57 >> 1)
    {
      v56 = sub_1AB0168A8((v57 > 1), v58 + 1, 1, v56);
    }

    *(v56 + 2) = v58 + 1;
    v59 = &v56[40 * v58];
    v60 = *(v0 + 496);
    v61 = *(v0 + 512);
    v59[64] = *(v0 + 528);
    *(v59 + 2) = v60;
    *(v59 + 3) = v61;
    sub_1AB014AC0(v0 + 568, &unk_1EB437E60, &qword_1AB4D4730);
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v62);
    *(v53 + 32) = v56;
    Logger.error(_:)(v53, v93, v91);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
    v63 = sub_1AB36EF94();
    v42 = *(v0 + 1056);
    v92 = *(v0 + 936);
    if (v63)
    {
      v64 = v63;

      type metadata accessor for DaemonError(0);
      sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      *v65 = v64;
    }

    else
    {
      type metadata accessor for DaemonError(0);
      sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      v86 = v85;
      v87 = swift_allocError();
      *v88 = v101;
      v88[1] = v48;
      v88[2] = v51;
      v88[3] = v95;
      v88[4] = v52;
      *v86 = v87;
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v43 = *(v0 + 880);
  }

  v84 = v92;
LABEL_28:
  sub_1AB1C39FC(v84, "DaemonSession.send", 18, 2, v42);

  v46 = *(v0 + 8);
LABEL_29:

  return v46();
}

uint64_t sub_1AB1C2FB8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 1096);
  *(v0 + 888) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 968);
    v4 = *(v0 + 960);
    v5 = *(v0 + 952);
    v6 = *(v0 + 944);

    (*(v5 + 32))(v4, v3, v6);
    sub_1AB4622E4();
    v73 = *(v0 + 328);
    v74 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v74);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v77 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001AB501E30;
    v8._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    *(v0 + 656) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v69 = *(v5 + 16);
    v69(boxed_opaque_existential_0, v4, v6);
    sub_1AB014A58(v0 + 632, v0 + 696, &unk_1EB437E60, &qword_1AB4D4730);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1AB017CC4(v0 + 696, v0 + 456, &unk_1EB437E60, &qword_1AB4D4730);
    *(v0 + 488) = 0;
    v10 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v77 + 2) + 1, 1, v77);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    v13 = *(v0 + 960);
    v14 = *(v0 + 952);
    v15 = *(v0 + 944);
    v67 = *(v0 + 1056);
    v68 = *(v0 + 936);
    *(v10 + 2) = v12 + 1;
    v16 = &v10[40 * v12];
    v17 = *(v0 + 456);
    v18 = *(v0 + 472);
    v16[64] = *(v0 + 488);
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    sub_1AB014AC0(v0 + 632, &unk_1EB437E60, &qword_1AB4D4730);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v7 + 32) = v10;
    Logger.error(_:)(v7, v74, v73);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
    type metadata accessor for DaemonError(0);
    sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v69(v20, v13, v15);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v21 = v15;
    v22 = v67;
    (*(v14 + 8))(v13, v21);

    v23 = v68;
  }

  else
  {

    *(v0 + 880) = v1;
    v24 = v1;
    if (swift_dynamicCast())
    {
      v75 = (v0 + 880);

      v26 = *(v0 + 96);
      v25 = *(v0 + 104);
      v28 = *(v0 + 112);
      v27 = *(v0 + 120);
      v29 = *(v0 + 128);
      sub_1AB4622E4();
      v70 = *(v0 + 248);
      v71 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v71);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1AB4D4720;
      v78 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
      v31._countAndFlagsBits = 0xD000000000000027;
      v31._object = 0x80000001AB501E00;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      *(v0 + 592) = &type metadata for DaemonResponseCodableError;
      v32 = swift_allocObject();
      *(v0 + 568) = v32;
      v32[2] = v26;
      v32[3] = v25;
      v32[4] = v28;
      v32[5] = v27;
      v32[6] = v29;
      sub_1AB014A58(v0 + 568, v0 + 600, &unk_1EB437E60, &qword_1AB4D4730);
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;

      sub_1AB017CC4(v0 + 600, v0 + 496, &unk_1EB437E60, &qword_1AB4D4730);
      *(v0 + 528) = 0;
      v33 = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v78 + 2) + 1, 1, v78);
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = *(v0 + 496);
      v38 = *(v0 + 512);
      v36[64] = *(v0 + 528);
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      sub_1AB014AC0(v0 + 568, &unk_1EB437E60, &qword_1AB4D4730);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v30 + 32) = v33;
      Logger.error(_:)(v30, v71, v70);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
      v40 = sub_1AB36EF94();
      v22 = *(v0 + 1056);
      v41 = *(v0 + 936);
      if (v40)
      {
        v42 = v40;

        type metadata accessor for DaemonError(0);
        sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        *v43 = v42;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v23 = v41;
      }

      else
      {
        type metadata accessor for DaemonError(0);
        sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        v72 = v41;
        v62 = v61;
        sub_1AB1C5D4C();
        v63 = swift_allocError();
        *v64 = v26;
        v64[1] = v25;
        v64[2] = v28;
        v64[3] = v27;
        v64[4] = v29;
        *v62 = v63;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v23 = v72;
      }
    }

    else
    {

      sub_1AB4622E4();
      v44 = *(v0 + 160);
      v76 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v44);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1AB4D4720;
      v79 = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v46._countAndFlagsBits = 0xD00000000000002FLL;
      v46._object = 0x80000001AB501DD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      swift_getErrorValue();
      v47 = *(v0 + 856);
      v48 = *(v0 + 864);
      *(v0 + 688) = v48;
      v49 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v48 - 8) + 16))(v49, v47, v48);
      sub_1AB014A58(v0 + 664, v0 + 536, &unk_1EB437E60, &qword_1AB4D4730);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1AB017CC4(v0 + 536, v0 + 376, &unk_1EB437E60, &qword_1AB4D4730);
      *(v0 + 408) = 0;
      v50 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1AB0168A8(0, *(v79 + 2) + 1, 1, v79);
      }

      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = sub_1AB0168A8((v51 > 1), v52 + 1, 1, v50);
      }

      v22 = *(v0 + 1056);
      v53 = *(v0 + 936);
      *(v50 + 2) = v52 + 1;
      v54 = &v50[40 * v52];
      v55 = *(v0 + 376);
      v56 = *(v0 + 392);
      v54[64] = *(v0 + 408);
      *(v54 + 2) = v55;
      *(v54 + 3) = v56;
      sub_1AB014AC0(v0 + 664, &unk_1EB437E60, &qword_1AB4D4730);
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v57);
      *(v45 + 32) = v50;
      Logger.error(_:)(v45, v44, v76);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      type metadata accessor for DaemonError(0);
      sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      v59 = v58;
      v60 = v1;
      sub_1AB19EFF8(v1, v59);
      swift_willThrow();

      v23 = v53;
    }
  }

  sub_1AB1C39FC(v23, "DaemonSession.send", 18, 2, v22);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1AB1C39FC(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v21 = sub_1AB461224();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1AB460024();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1AC59F020](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1AB1C3CA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a4;
  v60 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v59 = &v45 - v10;
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = a6;
  v13 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for DaemonResponse(255, v11, AssociatedConformanceWitness, v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0, &qword_1AB4D4300);
  v55 = v14;
  v62 = sub_1AB460B24();
  v15 = *(v62 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v45 - v20;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = swift_allocObject();
  v61 = v22;
  *(v22 + 16) = 0;
  v45 = v22 + 16;
  *(v22 + 20) = 0;
  v23 = sub_1AB460BE4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1AB01494C(a3, &v63);
  v24 = *(v15 + 16);
  v50 = v15 + 16;
  v53 = v24;
  v52 = v21;
  v24(v18, v60, v62);
  v25 = sub_1AB01CA48(&qword_1EB433AA8, type metadata accessor for DaemonSessionImplementation, &protocol conformance descriptor for DaemonSessionImplementation);
  v26 = *(v15 + 80);
  v27 = swift_allocObject();
  v49 = v16;
  v28 = v27;
  v27[2] = a2;
  v27[3] = v25;
  v46 = a5;
  v27[4] = a5;
  v29 = v54;
  v27[5] = v54;
  v27[6] = a2;
  v48 = sub_1AB1C60A0;
  v30 = v61;
  v27[7] = sub_1AB1C60A0;
  v27[8] = v30;
  sub_1AB0149B0(&v63, (v27 + 9));
  v31 = *(v15 + 32);
  v31(v28 + ((v26 + 112) & ~v26), v18, v62);
  swift_retain_n();
  swift_retain_n();
  v32 = sub_1AB2313A4(0, 0, v52, &unk_1AB4DB190, v28);
  v52 = a3[3];
  v47 = a3[4];
  v51 = __swift_project_boxed_opaque_existential_1Tm(a3, v52);
  v33 = v46;
  (*(v29 + 88))(v46, v29);
  v34 = v62;
  v53(v18, v60, v62);
  v35 = (v26 + 56) & ~v26;
  v36 = swift_allocObject();
  v36[2] = v33;
  v36[3] = v29;
  v36[4] = v48;
  v36[5] = v30;
  v36[6] = v32;
  v31(v36 + v35, v18, v34);
  v37 = v47;
  v38 = *(v47 + 8);
  v39 = AssociatedTypeWitness;
  v40 = swift_getAssociatedConformanceWitness();

  v41 = v55;
  WitnessTable = swift_getWitnessTable();
  v43 = v59;
  v38(v59, sub_1AB1C6270, v36, v39, v41, v40, WitnessTable, v52, v37);
  (*(v57 + 8))(v43, v39);
}

uint64_t sub_1AB1C4624(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 20);
  if ((v2 & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v2 ^ 1u;
}

uint64_t sub_1AB1C4668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[62] = v13;
  v8[63] = v14;
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1AB4617E4();
  v8[64] = v10;
  v8[65] = *(v10 - 8);
  v8[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB1C4740, a4, 0);
}

uint64_t sub_1AB1C4740()
{
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 536) = qword_1EB433A40;
  sub_1AB4622E4();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v2);
  *(v0 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB502030;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 552) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1AB014A58(v0 + 256, v0 + 288, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1AB017CC4(v0 + 288, v0 + 176, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 208) = 0;
  v7 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v10[64] = *(v0 + 208);
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  sub_1AB014AC0(v0 + 256, &unk_1EB437E60, &qword_1AB4D4730);
  v13._countAndFlagsBits = 0x73646E6F63657320;
  v13._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v14 = sub_1AB462284();
  v16 = v15;
  sub_1AB461FF4();
  v17 = swift_task_alloc();
  *(v0 + 560) = v17;
  *v17 = v0;
  v17[1] = sub_1AB1C4A44;

  return sub_1AB23D90C(v14, v16, 0, 0, 1);
}

uint64_t sub_1AB1C4A44()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *(*v1 + 520);
  v5 = *(*v1 + 512);
  *(*v1 + 568) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1AB1C50B0;
  }

  else
  {
    v7 = sub_1AB1C4BCC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1AB1C4BCC()
{
  v1 = *(v0 + 552);
  sub_1AB4622E4();
  v2 = *(v0 + 120);
  v29 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v30 = sub_1AB0168A8(0, 80, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001AB5020B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 376) = MEMORY[0x1E69E63B0];
  *(v0 + 352) = v1;
  sub_1AB014A58(v0 + 352, v0 + 384, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1AB017CC4(v0 + 384, v0 + 216, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 248) = 0;
  v5 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 464);
  *(v5 + 2) = v7 + 1;
  v9 = &v5[40 * v7];
  v10 = *(v0 + 216);
  v11 = *(v0 + 232);
  v9[64] = *(v0 + 248);
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  sub_1AB014AC0(v0 + 352, &unk_1EB437E60, &qword_1AB4D4730);
  v12._object = 0x80000001AB5020E0;
  v12._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v5;
  Logger.error(_:)(v3, v2, v29);

  v13 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  if (v8(v13))
  {
    v14 = *(v0 + 552);
    v15 = *(v0 + 480);
    sub_1AB4622E4();
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v16);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AB4D4720;
    *(v0 + 440) = MEMORY[0x1E69E6158];
    *(v0 + 416) = 0xD000000000000023;
    *(v0 + 424) = 0x80000001AB502110;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1AB017CC4(v0 + 416, v19 + 32, &unk_1EB437E60, &qword_1AB4D4730);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    v20 = v15[3];
    v21 = v15[4];
    __swift_project_boxed_opaque_existential_1Tm(v15, v20);
    (*(v21 + 16))(0xD000000000000024, 0x80000001AB502140, v20, v21);
    type metadata accessor for DaemonError(0);
    sub_1AB01CA48(qword_1EB432BB8, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    v22 = swift_allocError();
    *v23 = v14;
    swift_storeEnumTagMultiPayload();
    *(v0 + 448) = v22;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = swift_getAssociatedConformanceWitness();
    type metadata accessor for DaemonResponse(255, AssociatedTypeWitness, AssociatedConformanceWitness, v26);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0, &qword_1AB4D4300);
    sub_1AB460B24();
    sub_1AB460B04();
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1AB1C50B0()
{
  v1 = v0[71];
  sub_1AB4622E4();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v0[43] = MEMORY[0x1E69E6158];
  v0[40] = 0xD00000000000004BLL;
  v0[41] = 0x80000001AB502060;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1AB017CC4((v0 + 40), v5 + 32, &unk_1EB437E60, &qword_1AB4D4730);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1AB1C5224(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a5;
  v47 = a4;
  v50 = a3;
  v51 = a2;
  v49 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v45 = type metadata accessor for DaemonResponse(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0, &qword_1AB4D4300);
  v43 = sub_1AB462184();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v11 = (&v42 - v10);
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v12 = v62;
  v13 = v63;
  __swift_project_boxed_opaque_existential_1Tm(v61, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v14 = swift_allocObject();
  v52 = xmmword_1AB4D4720;
  *(v14 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v15 = swift_allocObject();
  *(v15 + 16) = v52;
  *(&v55 + 1) = MEMORY[0x1E69E6158];
  *&v54 = 0xD00000000000002DLL;
  *(&v54 + 1) = 0x80000001AB501F80;
  *(v15 + 48) = 0u;
  *(v15 + 32) = 0u;
  sub_1AB017CC4(&v54, v15 + 32, &unk_1EB437E60, &qword_1AB4D4730);
  *(v15 + 64) = 0;
  *(v14 + 32) = v15;
  Logger.debug(_:)(v14, v12, v13);

  v16 = __swift_destroy_boxed_opaque_existential_1Tm(v61);
  if ((v51(v16) & 1) == 0)
  {
    sub_1AB4622E4();
    v37 = v62;
    v38 = v63;
    __swift_project_boxed_opaque_existential_1Tm(v61, v62);
    v39 = swift_allocObject();
    *(v39 + 16) = v52;
    v40 = swift_allocObject();
    *(v40 + 16) = v52;
    *(&v55 + 1) = MEMORY[0x1E69E6158];
    *&v54 = 0xD000000000000044;
    *(&v54 + 1) = 0x80000001AB501FB0;
    *(v40 + 48) = 0u;
    *(v40 + 32) = 0u;
    sub_1AB017CC4(&v54, v40 + 32, &unk_1EB437E60, &qword_1AB4D4730);
    *(v40 + 64) = 0;
    *(v39 + 32) = v40;
    Logger.debug(_:)(v39, v37, v38);
LABEL_11:

    return __swift_destroy_boxed_opaque_existential_1Tm(v61);
  }

  sub_1AB460CA4();
  v17 = sub_1AB460B24();
  v18 = v49;
  sub_1AB1C58BC(v49, v17);
  v19 = v46;
  v20 = v18;
  v21 = v43;
  (*(v46 + 16))(v11, v20, v43);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v11;
    sub_1AB4622E4();
    v23 = v62;
    v24 = v63;
    __swift_project_boxed_opaque_existential_1Tm(v61, v62);
    v25 = swift_allocObject();
    *(v25 + 16) = v52;
    v60 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v26._object = 0x80000001AB502000;
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    swift_getErrorValue();
    v27 = v57;
    v28 = v58;
    v59[3] = v58;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
    (*(*(v28 - 8) + 16))(boxed_opaque_existential_0, v27, v28);
    sub_1AB014A58(v59, v53, &unk_1EB437E60, &qword_1AB4D4730);
    v54 = 0u;
    v55 = 0u;
    sub_1AB017CC4(v53, &v54, &unk_1EB437E60, &qword_1AB4D4730);
    v56 = 0;
    v30 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
      v60 = v30;
    }

    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    v33 = &v30[40 * v32];
    v34 = v54;
    v35 = v55;
    v33[64] = v56;
    *(v33 + 2) = v34;
    *(v33 + 3) = v35;
    v60 = v30;
    sub_1AB014AC0(v59, &unk_1EB437E60, &qword_1AB4D4730);
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v25 + 32) = v60;
    Logger.error(_:)(v25, v23, v24);

    goto LABEL_11;
  }

  return (*(v19 + 8))(v11, v21);
}

uint64_t sub_1AB1C58BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB462184();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    return sub_1AB460B04();
  }

  else
  {
    (*(v4 + 32))(v6, v16, v3);
    return sub_1AB460B14();
  }
}

uint64_t DaemonSessionImplementation.deinit()
{

  v1 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_signposter;
  v2 = sub_1AB45FFC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AB014AC0(v0 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid, &qword_1EB437FE8, &qword_1AB4DB028);

  sub_1AB0177B8(*(v0 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory), *(v0 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DaemonSessionImplementation.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_signposter;
  v2 = sub_1AB45FFC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AB014AC0(v0 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_sessionIfValid, &qword_1EB437FE8, &qword_1AB4DB028);

  sub_1AB0177B8(*(v0 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory), *(v0 + OBJC_IVAR____TtC9JetEngine27DaemonSessionImplementation_xpcSessionProviderFactory + 8));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AB1C5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return DaemonSessionImplementation.send<A>(_:)(a1, a2, a3, a4);
}

unint64_t sub_1AB1C5D4C()
{
  result = qword_1EB432EC8;
  if (!qword_1EB432EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432EC8);
  }

  return result;
}

uint64_t type metadata accessor for DaemonSessionImplementation(uint64_t a1)
{
  result = qword_1EB433A98;
  if (!qword_1EB433A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of DaemonSession.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027460;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1AB1C5F9C(uint64_t a1)
{
  result = sub_1AB45FFC4();
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

uint64_t sub_1AB1C60A8(uint64_t a1)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0, &qword_1AB4D4300);
  v7 = *(sub_1AB460B24() - 8);
  v8 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[8];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1AB027460;

  return sub_1AB1C4668(a1, v9, v10, v11, v12, v13, (v1 + 9), v1 + v8);
}

uint64_t sub_1AB1C6270(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0, &qword_1AB4D4300);
  v8 = *(sub_1AB460B24() - 8);
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return sub_1AB1C5224(a1, v9, v10, v11, v12, v3, v4);
}

uint64_t JSRoute.service.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JSRoute.function.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JSRoute.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1AC59BA20](46, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v1, v2);
  return v4;
}

uint64_t static JSRoute.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1AB461DA4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1AB461DA4();
    }
  }

  return result;
}

__n128 _JSONObjectDecoder.init(wrapping:with:at:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t _JSONObjectDecoder.unkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  sub_1AB0B9254(v1, v10);
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  a1[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
  a1[4] = sub_1AB1C692C();
  v7 = swift_allocObject();
  *a1 = v7;

  result = sub_1AB1C663C(v10, v6, v5, (v7 + 16), v8);
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_2(a1);
  }

  return result;
}

uint64_t sub_1AB1C663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v9 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, a2, a5);
  if (v9 == 2 || (v9 & 1) == 0)
  {
    sub_1AB01EC0C(a1, &v28);
    v15 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
      v16 = v30;
      __swift_project_boxed_opaque_existential_1Tm(&v28, *(&v29 + 1));
      (v16[19])(&v31, v15, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
      v17 = *(&v32 + 1);
      if (*(&v32 + 1))
      {
        result = sub_1AB066D84(a1);
        v18 = *(&v31 + 1);
        v19 = v31;
        v20 = v32;
        v21 = v33;
LABEL_11:
        *a4 = v19;
        a4[1] = v18;
        a4[2] = v20;
        a4[3] = v17;
        a4[4] = v21;
        goto LABEL_12;
      }
    }

    else
    {
      sub_1AB014AC0(&v28, &qword_1EB436BA0, &qword_1AB4D4F40);
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438018, &qword_1AB4DBA48);
    result = sub_1AB066D84(a1);
    v20 = 0;
    v21 = &off_1F2000AF8;
    v18 = sub_1AB384CF0;
    goto LABEL_11;
  }

  sub_1AB01EC0C(a1, v25);
  v10 = v26;
  if (v26)
  {
    v11 = v27;
    __swift_project_boxed_opaque_existential_1Tm(v25, v26);
    (*(v11 + 152))(&v28, v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    if (*(&v29 + 1))
    {
      result = sub_1AB066D84(a1);
      v13 = v30;
      v33 = v30;
      v14 = v29;
      v31 = v28;
      v32 = v29;
      *a4 = v28;
      *(a4 + 1) = v14;
      a4[4] = v13;
LABEL_12:
      a4[5] = a2;
      a4[6] = a3;
      a4[7] = 0;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v25, &qword_1EB436BA0, &qword_1AB4D4F40);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
  }

  sub_1AB014AC0(&v28, &qword_1EB437EF8, &qword_1AB4DBA50);
  v22 = sub_1AB4616B4();
  swift_allocError();
  v24 = v23;
  sub_1AB461694();
  (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B00], v22);
  swift_willThrow();
  return sub_1AB066D84(a1);
}

unint64_t sub_1AB1C692C()
{
  result = qword_1EB432E90;
  if (!qword_1EB432E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432E90);
  }

  return result;
}

uint64_t _JSONObjectDecoder.singleValueContainer()@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for _JSONObjectSingleValueDecodingContainer;
  a1[4] = sub_1AB0BCFE8();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_1AB0B9254(v1, v3 + 16);
  v4 = *(v1 + 48);
  *(v3 + 56) = *(v1 + 40);
  *(v3 + 64) = v4;
}

uint64_t sub_1AB1C6A08@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  sub_1AB0B9254(v1, v10);
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  a1[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
  a1[4] = sub_1AB1C692C();
  v7 = swift_allocObject();
  *a1 = v7;

  result = sub_1AB1C663C(v10, v6, v5, (v7 + 16), v8);
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_2(a1);
  }

  return result;
}

uint64_t sub_1AB1C6AD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1AB1C6B20(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1AB1C6B80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB1C6BC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB1C6C14(uint64_t a1)
{
  v2 = v1;
  sub_1AB01EC0C(v1, v12);
  v3 = v13;
  if (!v13)
  {
LABEL_6:
    sub_1AB014AC0(v12, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_7;
  }

  v4 = v14;
  __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  v5 = (*(v4 + 96))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (v5)
  {
    sub_1AB01EC0C(v2, v12);
    v6 = v13;
    if (v13)
    {
      v7 = v14;
      __swift_project_boxed_opaque_existential_1Tm(v12, v13);
      LOBYTE(v8) = (*(v7 + 88))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      if (v8 != 2)
      {
        return v8 & 1;
      }

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:
  v8 = sub_1AB4616B4();
  swift_allocError();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
  *v10 = MEMORY[0x1E69E6370];

  sub_1AB461694();
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6AF8], v8);
  swift_willThrow();
  return v8 & 1;
}

double sub_1AB1C6DE4(uint64_t a1, uint64_t a2)
{
  sub_1AB01EC0C(v2, v23);
  v4 = v24;
  if (!v24)
  {
    sub_1AB014AC0(v23, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_16;
  }

  v5 = v25;
  __swift_project_boxed_opaque_existential_1Tm(v23, v24);
  v6 = (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (!v6)
  {
LABEL_16:
    v12 = sub_1AB4616B4();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v14 = MEMORY[0x1E69E63B0];

    sub_1AB461694();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6AF8], v12);
    swift_willThrow();
    return v3;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v7 = v6 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = 0;
  }

  if (v7 || (*MEMORY[0x1E695E4C0] ? (v8 = v6 == *MEMORY[0x1E695E4C0]) : (v8 = 0), v8))
  {

    goto LABEL_16;
  }

  v23[0] = v6;
  v9 = v6;
  swift_getAtKeyPath();

  v3 = v26;
  v10 = sub_1AB460DE4();
  sub_1AB083ACC();
  v11 = v9;
  LOBYTE(v9) = sub_1AB4612C4();

  if ((v9 & 1) == 0)
  {
    v16 = sub_1AB4616B4();
    swift_allocError();
    v18 = v17;
    v23[0] = 0;
    v23[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v23, "Parsed number ");
    HIBYTE(v23[1]) = -18;
    v19 = [v11 description];
    v20 = sub_1AB460544();
    v22 = v21;

    MEMORY[0x1AC59BA20](v20, v22);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](0x656C62756F44, 0xE600000000000000);
    sub_1AB461694();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
    swift_willThrow();
  }

  return v3;
}

float sub_1AB1C7158(uint64_t a1, uint64_t a2)
{
  sub_1AB01EC0C(v2, v23);
  v4 = v24;
  if (!v24)
  {
    sub_1AB014AC0(v23, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_16;
  }

  v5 = v25;
  __swift_project_boxed_opaque_existential_1Tm(v23, v24);
  v6 = (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (!v6)
  {
LABEL_16:
    v12 = sub_1AB4616B4();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v14 = MEMORY[0x1E69E6448];

    sub_1AB461694();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6AF8], v12);
    swift_willThrow();
    return v3;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v7 = v6 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = 0;
  }

  if (v7 || (*MEMORY[0x1E695E4C0] ? (v8 = v6 == *MEMORY[0x1E695E4C0]) : (v8 = 0), v8))
  {

    goto LABEL_16;
  }

  v23[0] = v6;
  v9 = v6;
  swift_getAtKeyPath();

  v3 = v26;
  v10 = sub_1AB460E24();
  sub_1AB083ACC();
  v11 = v9;
  LOBYTE(v9) = sub_1AB4612C4();

  if ((v9 & 1) == 0)
  {
    v16 = sub_1AB4616B4();
    swift_allocError();
    v18 = v17;
    v23[0] = 0;
    v23[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v23, "Parsed number ");
    HIBYTE(v23[1]) = -18;
    v19 = [v11 description];
    v20 = sub_1AB460544();
    v22 = v21;

    MEMORY[0x1AC59BA20](v20, v22);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](0x74616F6C46, 0xE500000000000000);
    sub_1AB461694();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1AB1C74CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  sub_1AB01EC0C(v6, v31);
  v12 = v32;
  if (!v32)
  {
    sub_1AB014AC0(v31, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_16;
  }

  v30 = a6;
  v13 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  v14 = (*(v13 + 32))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!v14)
  {
LABEL_16:
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v22 = a3;

    sub_1AB461694();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    return a1;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v15 = v14 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = 0;
  }

  if (v15 || (*MEMORY[0x1E695E4C0] ? (v16 = v14 == *MEMORY[0x1E695E4C0]) : (v16 = 0), v16))
  {

    goto LABEL_16;
  }

  v31[0] = v14;
  v17 = v14;
  swift_getAtKeyPath();

  a1 = v34;
  v18 = a4(v34);
  sub_1AB083ACC();
  v19 = v17;
  LOBYTE(v17) = sub_1AB4612C4();

  if ((v17 & 1) == 0)
  {
    v24 = sub_1AB4616B4();
    swift_allocError();
    a1 = v25;
    v31[0] = 0;
    v31[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v31, "Parsed number ");
    HIBYTE(v31[1]) = -18;
    v26 = [v19 description];
    v27 = sub_1AB460544();
    v29 = v28;

    MEMORY[0x1AC59BA20](v27, v29);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](a5, v30);
    sub_1AB461694();
    (*(*(v24 - 8) + 104))(a1, *MEMORY[0x1E69E6B00], v24);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1AB1C7848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  sub_1AB01EC0C(v6, v31);
  v12 = v32;
  if (!v32)
  {
    sub_1AB014AC0(v31, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_16;
  }

  v30 = a6;
  v13 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  v14 = (*(v13 + 32))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!v14)
  {
LABEL_16:
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v22 = a3;

    sub_1AB461694();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    return a1;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v15 = v14 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = 0;
  }

  if (v15 || (*MEMORY[0x1E695E4C0] ? (v16 = v14 == *MEMORY[0x1E695E4C0]) : (v16 = 0), v16))
  {

    goto LABEL_16;
  }

  v31[0] = v14;
  v17 = v14;
  swift_getAtKeyPath();

  a1 = v34;
  v18 = a4(v34);
  sub_1AB083ACC();
  v19 = v17;
  LOBYTE(v17) = sub_1AB4612C4();

  if ((v17 & 1) == 0)
  {
    v24 = sub_1AB4616B4();
    swift_allocError();
    a1 = v25;
    v31[0] = 0;
    v31[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v31, "Parsed number ");
    HIBYTE(v31[1]) = -18;
    v26 = [v19 description];
    v27 = sub_1AB460544();
    v29 = v28;

    MEMORY[0x1AC59BA20](v27, v29);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](a5, v30);
    sub_1AB461694();
    (*(*(v24 - 8) + 104))(a1, *MEMORY[0x1E69E6B00], v24);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1AB1C7BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  sub_1AB01EC0C(v6, v31);
  v12 = v32;
  if (!v32)
  {
    sub_1AB014AC0(v31, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_16;
  }

  v30 = a6;
  v13 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  v14 = (*(v13 + 32))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!v14)
  {
LABEL_16:
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v22 = a3;

    sub_1AB461694();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    return a1;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v15 = v14 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = 0;
  }

  if (v15 || (*MEMORY[0x1E695E4C0] ? (v16 = v14 == *MEMORY[0x1E695E4C0]) : (v16 = 0), v16))
  {

    goto LABEL_16;
  }

  v31[0] = v14;
  v17 = v14;
  swift_getAtKeyPath();

  a1 = v34;
  v18 = a4(v34);
  sub_1AB083ACC();
  v19 = v17;
  LOBYTE(v17) = sub_1AB4612C4();

  if ((v17 & 1) == 0)
  {
    v24 = sub_1AB4616B4();
    swift_allocError();
    a1 = v25;
    v31[0] = 0;
    v31[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v31, "Parsed number ");
    HIBYTE(v31[1]) = -18;
    v26 = [v19 description];
    v27 = sub_1AB460544();
    v29 = v28;

    MEMORY[0x1AC59BA20](v27, v29);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](a5, v30);
    sub_1AB461694();
    (*(*(v24 - 8) + 104))(a1, *MEMORY[0x1E69E6B00], v24);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1AB1C7F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  sub_1AB01EC0C(v6, v31);
  v12 = v32;
  if (!v32)
  {
    sub_1AB014AC0(v31, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_16;
  }

  v30 = a6;
  v13 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  v14 = (*(v13 + 32))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!v14)
  {
LABEL_16:
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v22 = a3;

    sub_1AB461694();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    return a1;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v15 = v14 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = 0;
  }

  if (v15 || (*MEMORY[0x1E695E4C0] ? (v16 = v14 == *MEMORY[0x1E695E4C0]) : (v16 = 0), v16))
  {

    goto LABEL_16;
  }

  v31[0] = v14;
  v17 = v14;
  swift_getAtKeyPath();

  a1 = v34;
  v18 = a4(v34);
  sub_1AB083ACC();
  v19 = v17;
  LOBYTE(v17) = sub_1AB4612C4();

  if ((v17 & 1) == 0)
  {
    v24 = sub_1AB4616B4();
    swift_allocError();
    a1 = v25;
    v31[0] = 0;
    v31[1] = 0xE000000000000000;

    sub_1AB4615D4();

    strcpy(v31, "Parsed number ");
    HIBYTE(v31[1]) = -18;
    v26 = [v19 description];
    v27 = sub_1AB460544();
    v29 = v28;

    MEMORY[0x1AC59BA20](v27, v29);

    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB5022E0);
    MEMORY[0x1AC59BA20](a5, v30);
    sub_1AB461694();
    (*(*(v24 - 8) + 104))(a1, *MEMORY[0x1E69E6B00], v24);
    swift_willThrow();
  }

  return a1;
}

double sub_1AB1C82BC()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C6DE4(KeyPath, *(v0 + 48));

  return v2;
}

float sub_1AB1C8318()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7158(KeyPath, *(v0 + 48));

  return v2;
}

uint64_t sub_1AB1C8374()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C74CC(KeyPath, *(v0 + 48), MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  return v2;
}

uint64_t sub_1AB1C83F8()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7848(KeyPath, *(v0 + 48), MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  return v2;
}

uint64_t sub_1AB1C847C()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7BC4(KeyPath, *(v0 + 48), MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  return v2;
}

uint64_t sub_1AB1C8504()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7F40(KeyPath, *(v0 + 48), MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  return v2;
}

uint64_t sub_1AB1C858C()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C74CC(KeyPath, *(v0 + 48), MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  return v2;
}

uint64_t sub_1AB1C862C()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C74CC(KeyPath, *(v0 + 48), MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  return v2;
}

uint64_t sub_1AB1C86B0()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7848(KeyPath, *(v0 + 48), MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  return v2;
}

uint64_t sub_1AB1C8738()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7BC4(KeyPath, *(v0 + 48), MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  return v2;
}

uint64_t sub_1AB1C87C0()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C7F40(KeyPath, *(v0 + 48), MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  return v2;
}

uint64_t sub_1AB1C8848()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1AB1C74CC(KeyPath, *(v0 + 48), MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  return v2;
}

uint64_t sub_1AB1C88E8(uint64_t a1)
{
  v2 = v1;
  sub_1AB01EC0C(v1, v12);
  v3 = v13;
  if (!v13)
  {
    sub_1AB014AC0(v12, &qword_1EB436BA0, &qword_1AB4D4F40);
    return sub_1AB4609A4();
  }

  v4 = v14;
  __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  v5 = (*(v4 + 104))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if ((v5 & 1) == 0)
  {
    return sub_1AB4609A4();
  }

  sub_1AB01EC0C(v2, v12);
  v6 = v13;
  if (v13)
  {
    v7 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    v8 = (*(v7 + 112))(v6, v7);
    v9 = __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v9 = sub_1AB014AC0(v12, &qword_1EB436BA0, &qword_1AB4D4F40);
    v8 = MEMORY[0x1E69E7CC0];
  }

  v12[0] = v8;
  MEMORY[0x1EEE9AC00](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
  sub_1AB1CC6E4();
  v11 = sub_1AB460814();

  return v11;
}

uint64_t sub_1AB1C8AAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AB462294();
  JSONObject.subscript.getter(v2, v3, v12);

  sub_1AB01EC0C(v12, v9);
  v4 = v10;
  if (v10)
  {
    v5 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v6 = (*(v5 + 128))(v4, v5);
    sub_1AB066D84(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v7 = v6 ^ 1;
  }

  else
  {
    sub_1AB066D84(v12);
    sub_1AB014AC0(v9, &qword_1EB436BA0, &qword_1AB4D4F40);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1AB1C8B8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AB462294();
  JSONObject.subscript.getter(v2, v3, v11);

  sub_1AB01EC0C(v11, v8);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v6 = (*(v5 + 128))(v4, v5);
    sub_1AB066D84(v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_1AB066D84(v11);
    sub_1AB014AC0(v8, &qword_1EB436BA0, &qword_1AB4D4F40);
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_1AB1C8C70(uint64_t a1, uint64_t a2)
{
  sub_1AB0BBD60(a1, sub_1AB1C8CC8, 0, a2);
  if (!v2)
  {
    v3 = v5;
  }

  return v3 & 1;
}

uint64_t sub_1AB1C8CC8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_1AB1C6C14(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1AB1C8D00(uint64_t a1, uint64_t a2)
{
  result = sub_1AB0BBD60(a1, sub_1AB1C8D54, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1AB1C8D54@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  sub_1AB01EC0C(a1, v13);
  v4 = v14;
  if (v14)
  {
    v5 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v6 = (*(v5 + 24))(v4, v5);
    v8 = v7;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
    if (v8)
    {
      *a3 = v6;
      a3[1] = v8;
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v13, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v10 = sub_1AB4616B4();
  swift_allocError();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
  *v12 = MEMORY[0x1E69E6158];

  sub_1AB461694();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6AF8], v10);
  return swift_willThrow();
}

double sub_1AB1C8EC8(uint64_t a1, uint64_t a2)
{
  sub_1AB0BBD60(a1, sub_1AB1C8F1C, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void sub_1AB1C8F1C(uint64_t a1@<X1>, double *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C6DE4(KeyPath, a1);

  if (!v2)
  {
    *a2 = v6;
  }
}

float sub_1AB1C8F9C(uint64_t a1, uint64_t a2)
{
  sub_1AB0BBD60(a1, sub_1AB1C8FF0, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void sub_1AB1C8FF0(uint64_t a1@<X1>, float *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7158(KeyPath, a1);

  if (!v2)
  {
    *a2 = v6;
  }
}

void sub_1AB1C9070(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C74CC(KeyPath, a1, MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  if (!v2)
  {
    *a2 = v6;
  }
}

void sub_1AB1C9110(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7848(KeyPath, a1, MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  if (!v2)
  {
    *a2 = v6;
  }
}

void sub_1AB1C91B0(uint64_t a1@<X1>, _WORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7BC4(KeyPath, a1, MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }
}

void sub_1AB1C9254(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7F40(KeyPath, a1, MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }
}

void sub_1AB1C92F8(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C74CC(KeyPath, a1, MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }
}

void sub_1AB1C939C(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C74CC(KeyPath, a1, MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  if (!v2)
  {
    *a2 = v6;
  }
}

uint64_t sub_1AB1C943C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  result = sub_1AB0BBD60(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

void sub_1AB1C947C(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7848(KeyPath, a1, MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }
}

uint64_t sub_1AB1C9520(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  result = sub_1AB0BBD60(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

void sub_1AB1C9560(uint64_t a1@<X1>, _WORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7BC4(KeyPath, a1, MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  if (!v2)
  {
    *a2 = v6;
  }
}

uint64_t sub_1AB1C9604(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  result = sub_1AB0BBD60(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

void sub_1AB1C9644(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C7F40(KeyPath, a1, MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  if (!v2)
  {
    *a2 = v6;
  }
}

uint64_t sub_1AB1C96E8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  result = sub_1AB0BBD60(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

void sub_1AB1C9728(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1AB1C74CC(KeyPath, a1, MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  if (!v2)
  {
    *a2 = v6;
  }
}

uint64_t sub_1AB1C97CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 24);
  v9[2] = *(a3 + 16);
  v9[3] = a4;
  v9[4] = v7;
  v9[5] = a5;
  v9[7] = a1;
  sub_1AB461B04();
  return sub_1AB0BBD60(a2, sub_1AB1CC5C4, v9, a3);
}

uint64_t sub_1AB1C9858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = a1;
  sub_1AB01EC0C(a1, v28);
  v15 = v29;
  if (v29)
  {
    v31 = v14;
    v16 = v30;
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    v9 = v8;
    v14 = v31;
    v17 = (*(v16 + 128))(v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v28, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v19 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(a3 + 40), v18);
  if (v19 != 2 && (v19 & 1) != 0)
  {
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v22 = a4;

    sub_1AB461694();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B08], v20);
    return swift_willThrow();
  }

LABEL_8:
  sub_1AB0B9254(v14, v27);
  v24 = *(a3 + 40);

  result = sub_1AB0BBAE0(v27, v24, a2, a8, v28);
  if (!v9)
  {
    type metadata accessor for _JSONObjectKeyedDecodingContainer(0, a6, a8, v25);
    swift_getWitnessTable();
    return sub_1AB461B14();
  }

  return result;
}

uint64_t sub_1AB1C9AE8(uint64_t a1, uint64_t a2)
{
  v5[1] = *(a2 + 16);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438008, &unk_1AB4DB780);
  return sub_1AB0BBD60(a1, sub_1AB1CC5A4, v5, a2);
}

uint64_t sub_1AB1C9B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v31 = a4;
  v8 = v7;
  sub_1AB01EC0C(a1, v28);
  v14 = v29;
  if (v29)
  {
    v15 = v30;
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    v16 = (*(v15 + 128))(v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v28, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v18 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(a3 + 40), v17);
  if (v18 != 2 && (v18 & 1) != 0)
  {
    v19 = sub_1AB4616B4();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438010, &qword_1AB4E6310);
    v21[3] = a5;
    v21[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, v31, a5);

    sub_1AB461694();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF0], v19);
    return swift_willThrow();
  }

LABEL_8:
  sub_1AB0B9254(a1, v28);
  v24 = *(a3 + 40);
  a7[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
  a7[4] = sub_1AB1C692C();
  v25 = swift_allocObject();
  *a7 = v25;

  result = sub_1AB1C663C(v28, v24, a2, (v25 + 16), v26);
  if (v8)
  {
    return __swift_deallocate_boxed_opaque_existential_2(a7);
  }

  return result;
}

uint64_t sub_1AB1C9DE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  JSONObject.subscript.getter(0x7265707573, 0xE500000000000000, v20);
  v4 = sub_1AB1F3034(0x7265707573, 0xE500000000000000, 1, *(v1 + 48));
  sub_1AB01EC0C(v20, v17);
  v5 = v18;
  if (v18)
  {
    v6 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v7 = (*(v6 + 128))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v17, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v9 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v2 + 40), v8);
  if (v9 != 2 && (v9 & 1) != 0)
  {
    v10 = sub_1AB4616B4();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000, &unk_1AB4F4C20);
    sub_1AB461694();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B08], v10);
    swift_willThrow();
    return sub_1AB066D84(v20);
  }

LABEL_8:
  a1[3] = &type metadata for _JSONObjectDecoder;
  a1[4] = sub_1AB0BB6F8();
  v14 = swift_allocObject();
  *a1 = v14;
  v15 = v20[1];
  *(v14 + 16) = v20[0];
  *(v14 + 32) = v15;
  v16 = *(v2 + 40);
  *(v14 + 48) = v21;
  *(v14 + 56) = v16;
  *(v14 + 64) = v4;
}

uint64_t sub_1AB1CA028(uint64_t a1, uint64_t a2)
{
  v5[1] = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000, &unk_1AB4F4C20);
  return sub_1AB0BBD60(a1, sub_1AB1CC584, v5, a2);
}

uint64_t sub_1AB1CA0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1AB01EC0C(a1, v18);
  v8 = v19;
  if (v19)
  {
    v9 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v10 = (*(v9 + 128))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v18, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v12 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(a3 + 40), v11);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    v13 = sub_1AB4616B4();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000, &unk_1AB4F4C20);

    sub_1AB461694();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B08], v13);
    return swift_willThrow();
  }

LABEL_8:
  a4[3] = &type metadata for _JSONObjectDecoder;
  a4[4] = sub_1AB0BB6F8();
  v17 = swift_allocObject();
  *a4 = v17;
  sub_1AB0B9254(a1, v17 + 16);
  *(v17 + 56) = *(a3 + 40);
  *(v17 + 64) = a2;
}

uint64_t sub_1AB1CA5B4()
{
  result = sub_1AB461ED4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CA604()
{
  result = sub_1AB461EE4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CA6AC()
{
  result = sub_1AB461F14();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CA6FC()
{
  result = sub_1AB461EF4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CA83C()
{
  result = sub_1AB461F24();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CA88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

void *sub_1AB1CA954(double a1)
{
  v2 = *(v1 + 56);
  v3 = sub_1AB1F3034(v2, 0, 0, *(v1 + 48));
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v1, v4);
  if (v2 >= (*(v5 + 16))(v4, v5))
  {
    v8 = sub_1AB4616B4();
    swift_allocError();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v10 = MEMORY[0x1E69E7CA0] + 8;
    sub_1AB461694();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
    swift_willThrow();
  }

  else
  {
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1Tm(v1, v6);
    (*(v7 + 24))(v2, v6, v7);
  }

  return v3;
}

uint64_t sub_1AB1CAAE4()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v0, v3);
  if (v2 >= (*(v4 + 16))(v3, v4))
  {
    sub_1AB1F3034(v2, 0, 0, *(v0 + 48));
    v11 = sub_1AB4616B4();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v13 = MEMORY[0x1E69E7CA0] + 8;
    sub_1AB461694();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B08], v11);
    swift_willThrow();
    return v10 & 1;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v0, v5);
  (*(v6 + 24))(v18, v2, v5, v6);
  sub_1AB01EC0C(v18, v15);
  v7 = v16;
  if (!v16)
  {
    sub_1AB066D84(v18);
    sub_1AB014AC0(v15, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_7;
  }

  v8 = v17;
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  v9 = (*(v8 + 128))(v7, v8);
  sub_1AB066D84(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (v9)
  {
LABEL_7:
    *(v1 + 56) = v2 + 1;
    v10 = 1;
    return v10 & 1;
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1AB1CAD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v79 = a1;
  v80 = a4;
  v81 = *(a2 - 8);
  v82 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v77 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  MEMORY[0x1EEE9AC00](v76);
  v8 = v68 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v68 - v10;
  v12 = sub_1AB461354();
  v78 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v68 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v68 - v20;
  v22 = v92;
  result = sub_1AB1CA954(v19);
  if (v22)
  {
    return result;
  }

  v74 = v21;
  v68[1] = v11;
  v69 = v17;
  v70 = v14;
  v71 = v8;
  v72 = v12;
  v92 = v4;
  v75 = result;
  v73 = 0;
  sub_1AB01EC0C(v91, v86);
  v24 = v87;
  if (v87)
  {
    v25 = v88;
    __swift_project_boxed_opaque_existential_1Tm(v86, v87);
    v26 = (*(v25 + 128))(v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    if ((v26 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1AB014AC0(v86, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v28 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v92 + 5), v27);
  if (v28 != 2 && (v28 & 1) != 0)
  {

    v29 = sub_1AB4616B4();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v31 = v79;

    sub_1AB461694();
    v32 = MEMORY[0x1E69E6B08];
    goto LABEL_34;
  }

LABEL_9:
  sub_1AB0B9254(v91, v86);
  v33 = v74;
  v34 = a2;
  if (swift_dynamicCast())
  {
    sub_1AB066D84(v91);

    v35 = v81;
    (*(v81 + 56))(v33, 0, 1, a2);
    result = (*(v35 + 32))(v80, v33, a2);
    v36 = v92;
    v37 = *(v92 + 7);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (!v38)
    {
LABEL_11:
      *(v36 + 7) = v39;
      return result;
    }

    __break(1u);
    goto LABEL_37;
  }

  v82 = *(v81 + 56);
  v82(v33, 1, 1, a2);
  v40 = v78 + 8;
  v41 = v72;
  v78 = *(v78 + 8);
  (v78)(v33, v72);
  v42 = sub_1AB45F764();
  v43 = v79;
  v44 = v92;
  if (v42 == v79)
  {
    v49 = v42;
    sub_1AB01EC0C(v91, v86);
    v50 = v87;
    if (v87)
    {
      v34 = v40;
      v41 = v88;
      __swift_project_boxed_opaque_existential_1Tm(v86, v87);
      (*(v41 + 24))(v50, v41);
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      if (v52)
      {
        sub_1AB45F714();

        v44 = v69;
        if (swift_dynamicCast())
        {
          sub_1AB066D84(v91);

          v82(v44, 0, 1, a2);
          result = (*(v81 + 32))(v80, v44, a2);
          v36 = v92;
          v53 = *(v92 + 7);
          v38 = __OFADD__(v53, 1);
          v39 = v53 + 1;
          if (!v38)
          {
            goto LABEL_11;
          }

          __break(1u);
          goto LABEL_24;
        }

        v82(v44, 1, 1, a2);
        (v78)(v44, v72);
        v29 = sub_1AB4616B4();
        swift_allocError();
        v31 = v67;
        sub_1AB461694();
        v32 = MEMORY[0x1E69E6B00];
LABEL_34:
        (*(*(v29 - 8) + 104))(v31, *v32, v29);
        swift_willThrow();
        return sub_1AB066D84(v91);
      }
    }

    else
    {
      sub_1AB014AC0(v86, &qword_1EB436BA0, &qword_1AB4D4F40);
    }

    v29 = sub_1AB4616B4();
    swift_allocError();
    v31 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v31 = v49;
    sub_1AB461694();
    v32 = MEMORY[0x1E69E6AF8];
    goto LABEL_34;
  }

  result = sub_1AB45F9B4();
  if (result == v43)
  {
LABEL_24:
    v54 = result;
    sub_1AB01EC0C(v91, v86);
    v55 = v87;
    if (v87)
    {
      v56 = v88;
      __swift_project_boxed_opaque_existential_1Tm(v86, v87);
      v57 = *(v56 + 144);
      v58 = v56;
      v44 = v92;
      v57(v55, v58);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
    }

    else
    {
      sub_1AB014AC0(v86, &qword_1EB436BA0, &qword_1AB4D4F40);
      (*(*(v54 - 8) + 56))(v71, 1, 1, v54);
    }

    v60 = v80;
    v61 = v70;
    if (!swift_dynamicCast())
    {
      v82(v61, 1, 1, v34);
      (v78)(v61, v41);
      v64 = sub_1AB4616B4();
      swift_allocError();
      v66 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
      *v66 = v54;
      sub_1AB461694();
      (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69E6AF8], v64);
      swift_willThrow();
      return sub_1AB066D84(v91);
    }

    sub_1AB066D84(v91);

    v82(v61, 0, 1, v34);
    result = (*(v81 + 32))(v60, v61, v34);
    v62 = *(v44 + 7);
    v38 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (!v38)
    {
      *(v44 + 7) = v63;
      return result;
    }

    goto LABEL_38;
  }

  sub_1AB0B9254(v91, v86);
  v89 = *(v44 + 5);
  v90 = v75;
  v84 = &type metadata for _JSONObjectDecoder;
  v85 = sub_1AB0BB6F8();
  v83 = swift_allocObject();
  sub_1AB0BB74C(v86, v83 + 16);

  v45 = v77;
  v46 = v73;
  sub_1AB460E14();
  sub_1AB0BCB6C(v86);
  result = sub_1AB066D84(v91);
  if (!v46)
  {
    v47 = *(v44 + 7);
    v38 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    if (!v38)
    {
      *(v44 + 7) = v48;
      return (*(v81 + 32))(v80, v45, a2);
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB1CB7C0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = v4;
  result = sub_1AB1CA954(a4);
  if (!v5)
  {
    v11 = result;
    v32 = 0;
    sub_1AB01EC0C(v31, v28);
    v12 = v29;
    if (v29)
    {
      v13 = v30;
      __swift_project_boxed_opaque_existential_1Tm(v28, v29);
      v14 = (*(v13 + 128))(v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      if ((v14 & 1) == 0)
      {
LABEL_9:
        sub_1AB0B9254(v31, v27);
        v20 = *(v6 + 40);

        v21 = v20;
        v22 = v32;
        sub_1AB0BBAE0(v27, v21, v11, a3, v28);
        if (v22)
        {
          return sub_1AB066D84(v31);
        }

        type metadata accessor for _JSONObjectKeyedDecodingContainer(0, a2, a3, v23);
        swift_getWitnessTable();
        sub_1AB461B14();
        result = sub_1AB066D84(v31);
        v24 = *(v6 + 56);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          __break(1u);
        }

        else
        {
          *(v6 + 56) = v26;
        }

        return result;
      }
    }

    else
    {
      sub_1AB014AC0(v28, &qword_1EB436BA0, &qword_1AB4D4F40);
    }

    v16 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v6 + 40), v15);
    if (v16 != 2 && (v16 & 1) != 0)
    {

      v17 = sub_1AB4616B4();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
      *v19 = a1;

      sub_1AB461694();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
      swift_willThrow();
      return sub_1AB066D84(v31);
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1AB1CBA50@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v4 = v2;
  result = sub_1AB1CA954(a2);
  if (!v3)
  {
    v7 = result;
    sub_1AB01EC0C(v29, &v25);
    v8 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v9 = v27;
      __swift_project_boxed_opaque_existential_1Tm(&v25, *(&v26 + 1));
      v10 = (*(v9 + 128))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(&v25);
      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1AB014AC0(&v25, &qword_1EB436BA0, &qword_1AB4D4F40);
    }

    v12 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v4 + 40), v11);
    if (v12 != 2 && (v12 & 1) != 0)
    {
      v13 = sub_1AB4616B4();
      swift_allocError();
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
      *v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438008, &unk_1AB4DB780);
      sub_1AB461694();
      (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B08], v13);
      swift_willThrow();
      return sub_1AB066D84(v29);
    }

LABEL_9:
    sub_1AB0B9254(v29, v24);
    v16 = *(v4 + 40);

    result = sub_1AB1C663C(v24, v16, v7, &v25, v17);
    v18 = *(v4 + 56);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
      return result;
    }

    *(v4 + 56) = v20;
    a1[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
    a1[4] = sub_1AB1C692C();
    v21 = swift_allocObject();
    *a1 = v21;
    v22 = v26;
    v21[1] = v25;
    v21[2] = v22;
    v23 = v28;
    v21[3] = v27;
    v21[4] = v23;
    return sub_1AB066D84(v29);
  }

  return result;
}

uint64_t sub_1AB1CBCC4@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v4 = v2;
  result = sub_1AB1CA954(a2);
  if (!v3)
  {
    v7 = result;
    sub_1AB01EC0C(v23, v20);
    v8 = v21;
    if (v21)
    {
      v9 = v22;
      __swift_project_boxed_opaque_existential_1Tm(v20, v21);
      v10 = (*(v9 + 128))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      if ((v10 & 1) == 0)
      {
LABEL_9:
        a1[3] = &type metadata for _JSONObjectDecoder;
        a1[4] = sub_1AB0BB6F8();
        v16 = swift_allocObject();
        *a1 = v16;
        sub_1AB0B9254(v23, v16 + 16);
        *(v16 + 56) = *(v4 + 40);
        *(v16 + 64) = v7;

        result = sub_1AB066D84(v23);
        v17 = *(v4 + 56);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
        }

        else
        {
          *(v4 + 56) = v19;
        }

        return result;
      }
    }

    else
    {
      sub_1AB014AC0(v20, &qword_1EB436BA0, &qword_1AB4D4F40);
    }

    v12 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v4 + 40), v11);
    if (v12 != 2 && (v12 & 1) != 0)
    {
      v13 = sub_1AB4616B4();
      swift_allocError();
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
      *v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000, &unk_1AB4F4C20);
      sub_1AB461694();
      (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B08], v13);
      swift_willThrow();
      return sub_1AB066D84(v23);
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1AB1CBEFC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

BOOL sub_1AB1CBF54()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v2);
  return v1 >= (*(v3 + 16))(v2, v3);
}

uint64_t sub_1AB1CBFD8(double a1)
{
  v3 = v1;
  v4 = sub_1AB1CA954(a1);
  if (v2)
  {
    return v1 & 1;
  }

  LOBYTE(v1) = sub_1AB1C6C14(v4);
  sub_1AB066D84(v9);

  v6 = *(v3 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v3 + 56) = v8;
    return v1 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CC20C()
{
  result = sub_1AB461CC4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CC25C()
{
  result = sub_1AB461CD4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CC304()
{
  result = sub_1AB461D04();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CC354()
{
  result = sub_1AB461CE4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CC494()
{
  result = sub_1AB461D14();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AB1CC4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

unint64_t sub_1AB1CC6E4()
{
  result = qword_1EB4334A0;
  if (!qword_1EB4334A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4366C8, &qword_1AB4D4400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4334A0);
  }

  return result;
}

uint64_t sub_1AB1CC748(double a1)
{
  v3 = v1;
  sub_1AB1CA954(a1);
  if (v2)
  {
    return v1;
  }

  sub_1AB01EC0C(v17, v14);
  v4 = v15;
  if (!v15)
  {
    sub_1AB014AC0(v14, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_7;
  }

  v5 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  v1 = (*(v5 + 24))(v4, v5);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (!v7)
  {
LABEL_7:
    v1 = sub_1AB4616B4();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v13 = MEMORY[0x1E69E6158];
    sub_1AB461694();
    (*(*(v1 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v1);
    swift_willThrow();
    sub_1AB066D84(v17);
    return v1;
  }

  sub_1AB066D84(v17);

  v9 = *(v3 + 56);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v3 + 56) = v11;
    return v1;
  }

  __break(1u);
  return result;
}

void sub_1AB1CC8FC()
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954(v3);
  if (v1)
  {
  }

  else
  {
    sub_1AB1C6DE4(KeyPath, v4);

    sub_1AB066D84(v8);
    v5 = *(v0 + 56);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 56) = v7;
    }
  }
}

void sub_1AB1CC9C4()
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1AB1CA954(v3);
  if (v1)
  {
  }

  else
  {
    sub_1AB1C7158(KeyPath, v4);

    sub_1AB066D84(v8);
    v5 = *(v0 + 56);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 56) = v7;
    }
  }
}

uint64_t sub_1AB1CCA8C()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_1AB1CA954(v4);
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C74CC(KeyPath, v5, MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  result = sub_1AB066D84(v10);
  v7 = *(v2 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 56) = v9;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CCB7C()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_1AB1CA954(v4);
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7848(KeyPath, v5, MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  result = sub_1AB066D84(v10);
  v7 = *(v2 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 56) = v9;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CCC6C()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_1AB1CA954(v4);
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7BC4(KeyPath, v5, MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  result = sub_1AB066D84(v10);
  v7 = *(v2 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 56) = v9;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CCD60()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_1AB1CA954(v4);
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7F40(KeyPath, v5, MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  result = sub_1AB066D84(v10);
  v7 = *(v2 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 56) = v9;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CCE54()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_1AB1CA954(v4);
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C74CC(KeyPath, v5, MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  result = sub_1AB066D84(v10);
  v7 = *(v2 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 56) = v9;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CCF48()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_1AB1CA954(v4);
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C74CC(KeyPath, v5, MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  result = sub_1AB066D84(v10);
  v7 = *(v2 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 56) = v9;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CD038()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_1AB1CA954(v4);
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7848(KeyPath, v5, MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  result = sub_1AB066D84(v10);
  v7 = *(v2 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 56) = v9;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CD12C()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_1AB1CA954(v4);
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7BC4(KeyPath, v5, MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  result = sub_1AB066D84(v10);
  v7 = *(v2 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 56) = v9;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CD220()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_1AB1CA954(v4);
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C7F40(KeyPath, v5, MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  result = sub_1AB066D84(v10);
  v7 = *(v2 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 56) = v9;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1CD314()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_1AB1CA954(v4);
  if (v1)
  {

    return v0;
  }

  v0 = sub_1AB1C74CC(KeyPath, v5, MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  result = sub_1AB066D84(v10);
  v7 = *(v2 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 56) = v9;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.init(_partiallyDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AB0B9254(a1, v11);
  v10 = *a2;

  v8 = Array<A>.init(tryDeserializing:using:)(v11, &v10, a3, a4);

  sub_1AB066D84(a1);
  return v8;
}

uint64_t sub_1AB1CD494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.init(_partiallyDeserializing:using:)(a1, a2, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t Dictionary<>.init(_partiallyDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AB014A58(a1, &v27, &qword_1EB436BA0, &qword_1AB4D4F40);
  v8 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    sub_1AB014AC0(&v27, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_7;
  }

  v9 = v29;
  __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
  v10 = (*(v9 + 128))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  if (v10)
  {
LABEL_7:
    v13 = sub_1AB4602A4();

    sub_1AB066D84(a1);
    return v13;
  }

  sub_1AB014A58(a1, v21, &qword_1EB436BA0, &qword_1AB4D4F40);
  v11 = v22;
  if (v22)
  {
    v12 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    (*(v12 + 160))(&v24, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    if (*(&v25 + 1))
    {
      v27 = v24;
      v28 = v25;
      v29 = v26;
      sub_1AB163BD0(&v27, &v24);
      v21[0] = *a2;

      v13 = Dictionary<>.init(tryDeserializing:using:)(&v24, v21, a3, a4);

      sub_1AB066D84(a1);
      sub_1AB07CDB0(&v27);
      return v13;
    }
  }

  else
  {
    sub_1AB014AC0(v21, &qword_1EB436BA0, &qword_1AB4D4F40);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  sub_1AB014AC0(&v24, &qword_1EB436BC0, &qword_1AB4D52B0);
  v14 = sub_1AB4603C4();
  sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, *a2, &v27);
  sub_1AB014A58(&v27, &v24, &qword_1EB436EC0, &qword_1AB4D6B20);
  v15 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v16 = v26;
    __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
    sub_1AB163664();
    v17 = swift_allocError();
    v18 = MEMORY[0x1E69E7CC0];
    *v19 = v14;
    v19[1] = v18;
    v19[2] = 0;
    v19[3] = 0;
    (*(v16 + 8))(v14, v17, v15, v16);

    __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  }

  else
  {
    sub_1AB014AC0(&v24, &qword_1EB436EC0, &qword_1AB4D6B20);
  }

  v13 = sub_1AB4602A4();

  sub_1AB066D84(a1);
  sub_1AB014AC0(&v27, &qword_1EB436EC0, &qword_1AB4D6B20);
  return v13;
}

uint64_t sub_1AB1CD808@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Dictionary<>.init(_partiallyDeserializing:using:)(a1, a2, *(a3 + 24), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t Optional<A>.init(_partiallyDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AB0B9254(a1, v11);
  v10 = *a2;
  v8 = *(a4 + 16);

  v8(v11, &v10, a3, a4);

  return sub_1AB066D84(a1);
}

JetEngine::JSONContext __swiftcall JSONContext.init(userInfo:)(Swift::OpaquePointer userInfo)
{
  v60 = v1;
  v71 = sub_1AB461864();
  v3 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438020, &qword_1AB4DBB08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v59 - v12;
  v75 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
  sub_1AB460344();
  v13 = 0;
  v63 = v3;
  rawValue = userInfo._rawValue;
  v16 = *(userInfo._rawValue + 8);
  v15 = userInfo._rawValue + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v61 = v3 + 16;
  v69 = v5;
  v70 = (v3 + 32);
  v21 = (v3 + 8);
  v22 = v10;
  v65 = v20;
  v66 = v21;
  v68 = v10;
  while (v19)
  {
    v25 = v13;
LABEL_16:
    v29 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v30 = v29 | (v25 << 6);
    v32 = v63;
    v31 = rawValue;
    v33 = v62;
    v34 = v71;
    (*(v63 + 16))(v62, rawValue[6] + *(v63 + 72) * v30, v71);
    sub_1AB0165C4(v31[7] + 32 * v30, v74);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438028, &unk_1AB4F4C40);
    v36 = *(v35 + 48);
    v37 = *(v32 + 32);
    v22 = v68;
    v37(v68, v33, v34);
    sub_1AB014B78(v74, (v22 + v36));
    (*(*(v35 - 8) + 56))(v22, 0, 1, v35);
    v28 = v67;
    v5 = v69;
LABEL_17:
    sub_1AB1DA624(v22, v28);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438028, &unk_1AB4F4C40);
    if ((*(*(v38 - 8) + 48))(v28, 1, v38) == 1)
    {

      *v60 = v75;
      return result;
    }

    v39 = *(v38 + 48);
    (*v70)(v5, v28, v71);
    sub_1AB014B78((v28 + v39), v74);
    v40 = sub_1AB461854();
    v42 = v41;
    sub_1AB0165C4(v74, v73);
    v43 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v43;
    v75 = 0x8000000000000000;
    v46 = sub_1AB014DB4(v40, v42);
    v47 = *(v43 + 16);
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_32;
    }

    v50 = v45;
    if (*(v43 + 24) >= v49)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v45)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1AB0676CC();
        if (v50)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1AB01AF68(v49, isUniquelyReferenced_nonNull_native);
      v51 = sub_1AB014DB4(v40, v42);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_34;
      }

      v46 = v51;
      if (v50)
      {
LABEL_4:

        v23 = v72;
        v24 = (v72[7] + 32 * v46);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        sub_1AB014B78(v73, v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        v5 = v69;
        (*v66)(v69, v71);
        goto LABEL_5;
      }
    }

    v23 = v72;
    v72[(v46 >> 6) + 8] |= 1 << v46;
    v53 = (v23[6] + 16 * v46);
    *v53 = v40;
    v53[1] = v42;
    sub_1AB014B78(v73, (v23[7] + 32 * v46));
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    v5 = v69;
    (*v66)(v69, v71);
    v54 = v23[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_33;
    }

    v23[2] = v56;
LABEL_5:

    v75 = v23;
    v22 = v68;
    v20 = v65;
  }

  if (v20 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = v20;
  }

  v27 = v26 - 1;
  v28 = v67;
  while (1)
  {
    v25 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438028, &unk_1AB4F4C40);
      (*(*(v57 - 8) + 56))(v22, 1, 1, v57);
      v19 = 0;
      v13 = v27;
      goto LABEL_17;
    }

    v19 = *&v15[8 * v25];
    ++v13;
    if (v19)
    {
      v13 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result.storage._rawValue = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB1CDED8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1AB014B78(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1AB1D5700(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1AB02B2E4(a2);
    *v2 = v6;
  }

  else
  {
    sub_1AB014AC0(a1, &unk_1EB437E60, &qword_1AB4D4730);
    sub_1AB177018(a2, v7);
    sub_1AB02B2E4(a2);
    return sub_1AB014AC0(v7, &unk_1EB437E60, &qword_1AB4D4730);
  }

  return result;
}

uint64_t sub_1AB1CDF94(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AB0771E0(a1, a2, isUniquelyReferenced_nonNull_native, &qword_1EB4381C0, &qword_1AB4DBD20);
    result = sub_1AB1B0358(a2);
    *v2 = v12;
  }

  else
  {
    sub_1AB077384(a2);
    v9 = v8;
    result = sub_1AB1B0358(a2);
    if (v9)
    {
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v13 = *v3;
      if (!v10)
      {
        sub_1AB1DA370(&qword_1EB4381C0, &qword_1AB4DBD20);
        v11 = v13;
      }

      result = sub_1AB191868();
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1AB1CE0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1AB0149B0(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v7 = v17;
    v8 = v18;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    v10 = MEMORY[0x1EEE9AC00](v9);
    v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v12, v10);
    sub_1AB220408(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v15, v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);

    *v3 = v15;
  }

  else
  {
    sub_1AB014AC0(a1, &qword_1EB438160, &qword_1AB4DF040);
    sub_1AB177328(a2, a3, v16);

    return sub_1AB014AC0(v16, &qword_1EB438160, &qword_1AB4DF040);
  }

  return result;
}

uint64_t sub_1AB1CE244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1AB1D5DFC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1AB014DB4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1AB1DA064(&qword_1EB436EE8, &unk_1AB4D6B50);
        v14 = v16;
      }

      result = sub_1AB19037C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1AB1CE34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40, &qword_1AB4DA720);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for JetPackAsset(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1AB014AC0(a1, &qword_1EB437E40, &qword_1AB4DA720);
    sub_1AB177368(a2, a3, v9);

    return sub_1AB014AC0(v9, &qword_1EB437E40, &qword_1AB4DA720);
  }

  else
  {
    sub_1AB05DB9C(a1, v13, type metadata accessor for JetPackAsset);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1AB1D5F98(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

_OWORD *sub_1AB1CE520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1AB014B78(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AB1D60FC(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1AB014AC0(a1, &unk_1EB437E60, &qword_1AB4D4730);
    v7 = sub_1AB1D0ECC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AB1D8F68();
        v11 = v13;
      }

      sub_1AB014B78((*(v11 + 56) + 32 * v9), v14);
      sub_1AB190718(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1AB014AC0(v14, &unk_1EB437E60, &qword_1AB4D4730);
  }

  return result;
}

_OWORD *sub_1AB1CE624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1AB014B78(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AB1D6228(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1AB014AC0(a1, &unk_1EB437E60, &qword_1AB4D4730);
    v7 = sub_1AB016558(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AB01A034();
        v11 = v13;
      }

      sub_1AB014B78((*(v11 + 56) + 32 * v9), v14);
      sub_1AB0951B0(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1AB014AC0(v14, &unk_1EB437E60, &qword_1AB4D4730);
  }

  return result;
}

uint64_t sub_1AB1CE728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1AB1D6508(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1AB014AC0(a1, &qword_1EB438078, &qword_1AB4DBBF8);
    sub_1AB1774C0(a2, a3, v10);

    return sub_1AB014AC0(v10, &qword_1EB438078, &qword_1AB4DBBF8);
  }

  return result;
}

uint64_t sub_1AB1CE800(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1852793705;
    }

    else
    {
      v3 = 0x6E6572646C696863;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE400000000000000;
  v8 = 1852793705;
  if (a2 != 2)
  {
    v8 = 0x6E6572646C696863;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v6 = 0x656C746974;
    v5 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB1CE924(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726575516C7275;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79646F426E6F736ALL;
    }

    else
    {
      v4 = 0x79646F426D726F66;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x726564616568;
    }

    else
    {
      v4 = 0x79726575516C7275;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x79646F426E6F736ALL;
  if (a2 != 2)
  {
    v7 = 0x79646F426D726F66;
  }

  if (a2)
  {
    v2 = 0x726564616568;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1AB461DA4();
  }

  return v10 & 1;
}

uint64_t sub_1AB1CEA60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1954047348;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D754E656E6F6870;
    }

    else
    {
      v4 = 0x506C616D69636564;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726562;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C69616D65;
    }

    else
    {
      v4 = 1954047348;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (a2 != 2)
  {
    v7 = 0x506C616D69636564;
    v8 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6C69616D65;
    v6 = 0xE500000000000000;
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
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB1CEBAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x74696157636E7973;
  v5 = 0xEC000000656D6954;
  if (a1 != 5)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001AB4FE460;
  }

  v6 = 0xE500000000000000;
  v7 = 0x7465736572;
  if (a1 != 3)
  {
    v7 = 0x676E697473697865;
    v6 = 0xEC000000796C6E4FLL;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656D695474696177;
  if (a1 != 1)
  {
    v9 = 0x6C6F506568636163;
    v8 = 0xEB00000000796369;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1702125924;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x656D695474696177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEB00000000796369;
        if (v10 != 0x6C6F506568636163)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1702125924)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7465736572)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x676E697473697865;
    v14 = 2037149263;
LABEL_34:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v10 != v13)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 == 5)
  {
    v13 = 0x74696157636E7973;
    v14 = 1701669204;
    goto LABEL_34;
  }

  v12 = 0x80000001AB4FE460;
  if (v10 != 0xD000000000000012)
  {
LABEL_39:
    v15 = sub_1AB461DA4();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_1AB1CEDEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7470697263736564;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v2)
    {
      v3 = 0xEB000000006E6F69;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6E696C5F706C6568;
    v3 = 0xE90000000000006BLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x64656C646E6168;
  }

  else
  {
    v4 = 0x69746568746E7973;
    v3 = 0xE900000000000063;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7470697263736564;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xEB000000006E6F69;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x64656C646E6168;
    if (a2 != 3)
    {
      v6 = 0x69746568746E7973;
      v5 = 0xE900000000000063;
    }

    if (a2 == 2)
    {
      v7 = 0x6E696C5F706C6568;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE90000000000006BLL;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1AB461DA4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1AB1CEF98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x63617073656D616ELL;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x6E6170736566696CLL;
  v7 = 0x74616C6572726F63;
  v8 = 0xEC000000736E6F69;
  if (a1 != 4)
  {
    v7 = 0x6E6F697461746F72;
    v8 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1701869940;
  if (a1 != 1)
  {
    v10 = 0x736369706F74;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x63617073656D616ELL;
    v9 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6E6170736566696CLL)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC000000736E6F69;
      if (v11 != 0x74616C6572726F63)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6E6F697461746F72)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1701869940)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x736369706F74;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1AB461DA4();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1AB1CF168(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656D697270;
    }

    else
    {
      v4 = 0x6D726F6674616C70;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
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
      v4 = 0x746C7561666564;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x656D697270;
  if (a2 != 2)
  {
    v8 = 0x6D726F6674616C70;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x746C7561666564;
    v6 = 0xE700000000000000;
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
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB1CF29C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x657373696D736964;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6669636570736E75;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000646569;
    }

    else
    {
      v6 = 0x80000001AB4FE3A0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x756F72676B636162;
    }

    else
    {
      v5 = 0x657373696D736964;
    }

    if (v4)
    {
      v6 = 0xEA0000000000646ELL;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6669636570736E75;
  v8 = 0x80000001AB4FE3A0;
  if (a2 == 2)
  {
    v8 = 0xEB00000000646569;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEA0000000000646ELL;
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
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB1CF3F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6449746E65726170;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7865646E496E6FLL;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x6973736572706D69;
    }

    else
    {
      v6 = 0x4449657571696E75;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE200000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 25705;
    }

    else
    {
      v6 = 0x6449746E65726170;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6973736572706D69;
  v10 = 0xEF7865646E496E6FLL;
  if (a2 != 2)
  {
    v9 = 0x4449657571696E75;
    v10 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 25705;
    v8 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1AB461DA4();
  }

  return v13 & 1;
}

uint64_t sub_1AB1CF538(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73646C656966;
    }

    else
    {
      v5 = 25705;
    }

    if (v2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v3 = 0x69466E6F6D6D6F63;
    v4 = 0xEC00000073646C65;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
      v4 = 0x80000001AB4FDD10;
    }

    if (a1 == 2)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x73646C656966;
    }

    else
    {
      v11 = 25705;
    }

    if (a2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x69466E6F6D6D6F63;
    v8 = 0x80000001AB4FDD10;
    if (a2 == 3)
    {
      v8 = 0xEC00000073646C65;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v9 = 0x6D6F74737563;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1AB461DA4();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1AB1CF6BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656D616E656C6966;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F6E656E696CLL;
    }

    else
    {
      v4 = 0x6F6E6C6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F6974636E7566;
    }

    else
    {
      v4 = 0x656D616E656C6966;
    }

    v5 = 0xE800000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6F6E656E696CLL;
  if (a2 != 2)
  {
    v7 = 0x6F6E6C6F63;
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E6F6974636E7566;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1AB461DA4();
  }

  return v10 & 1;
}

uint64_t sub_1AB1CF7F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE800000000000000;
      v5 = 0x6D6574497473696CLL;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000013;
      }

      else
      {
        v5 = 0xD000000000000010;
      }

      if (v2 == 4)
      {
        v6 = 0x80000001AB4FDE50;
      }

      else
      {
        v6 = 0x80000001AB4FDE70;
      }
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x63696D616E7964;
    if (a1 != 1)
    {
      v4 = 0x6F6C61646E617473;
      v3 = 0xEA0000000000656ELL;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE800000000000000;
      if (v5 != 0x6D6574497473696CLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v8 = 0xD000000000000013;
      }

      else
      {
        v8 = 0xD000000000000010;
      }

      if (a2 == 4)
      {
        v7 = 0x80000001AB4FDE50;
      }

      else
      {
        v7 = 0x80000001AB4FDE70;
      }

      if (v5 != v8)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xE700000000000000;
      if (v5 != 0x63696D616E7964)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = 0xEA0000000000656ELL;
      if (v5 != 0x6F6C61646E617473)
      {
LABEL_39:
        v9 = sub_1AB461DA4();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x6E776F6E6B6E75)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_1AB1CF9F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x695F646165726874;
  v5 = 0xE900000000000064;
  v6 = 0x6172746B63617473;
  v7 = 0xEA00000000006563;
  if (a1 != 4)
  {
    v6 = 0x73696E616863656DLL;
    v7 = 0xE90000000000006DLL;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x65756C6176;
  if (a1 != 1)
  {
    v9 = 0x656C75646F6DLL;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x695F646165726874)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000006563;
      if (v10 != 0x6172746B63617473)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE90000000000006DLL;
      if (v10 != 0x73696E616863656DLL)
      {
LABEL_34:
        v13 = sub_1AB461DA4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65756C6176)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C75646F6DLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701869940)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1AB1CFBE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x80000001AB4FDD10;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C65694665676170;
    }

    else
    {
      v5 = 0x7463757274736E69;
    }

    if (v4)
    {
      v6 = 0xEA00000000007364;
    }

    else
    {
      v6 = 0xEC000000736E6F69;
    }
  }

  v7 = 0x6D6F74737563;
  v8 = 0x80000001AB4FDD10;
  if (a2 == 2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0x6C65694665676170;
    v2 = 0xEA00000000007364;
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
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}