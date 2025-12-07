uint64_t sub_22614B7B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22616F828();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22614B7DC()
{
  MEMORY[0x22AA77CD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22614B814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_22614B86C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22614B8B0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22614B8F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22614B938()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22614B974()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22614B9AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22614B9FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_22614BA24(void *a1)
{
  v3 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v3[-1].Description;
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType;
  if ((dispatch thunk of MapsIntelligenceClientSignal.isOfType(_:)(v1 + OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType, v7, v8) & 1) == 0)
  {
    return [objc_opt_self() undefinedFeatureValueWithType_];
  }

  Description[2](v6, v1 + v9, v3);
  v10 = (Description[11])(v6, v3);
  if (!v10)
  {
    return [objc_opt_self() undefinedFeatureValueWithType_];
  }

  if (v10 == 1)
  {
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    result = dispatch thunk of MapsIntelligenceClientSignal.signalOfType(_:)(v1 + v9, v12, v13);
    if (v26)
    {
      sub_22614C5B0(v25, v27);
      sub_22614C5C0();
      swift_dynamicCast();
      v14 = v24;
      [v24 doubleValue];
      v16 = [objc_opt_self() featureValueWithDouble_];
LABEL_8:
      v17 = v16;

      return v17;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v10 != 2)
  {
    if (v10 == 3)
    {
      v22 = a1[3];
      v23 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v22);
      result = dispatch thunk of MapsIntelligenceClientSignal.signalOfType(_:)(v1 + v9, v22, v23);
      if (v26)
      {
        sub_22614C5B0(v25, v27);
        sub_22614C5C0();
        swift_dynamicCast();
        v14 = v24;
        v16 = [objc_opt_self() featureValueWithInt64_];
        goto LABEL_8;
      }

      goto LABEL_19;
    }

    v21 = [objc_opt_self() undefinedFeatureValueWithType_];
    (Description[1])(v6, v3);
    return v21;
  }

  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  result = dispatch thunk of MapsIntelligenceClientSignal.signalOfType(_:)(v1 + v9, v18, v19);
  if (v26)
  {
    sub_22614C5B0(v25, v27);
    swift_dynamicCast();
    v20 = sub_22616F7F8();

    v21 = [objc_opt_self() featureValueWithString_];

    return v21;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_22614BE48()
{

  v1 = OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType;
  v2 = type metadata accessor for MapsIntelligenceClientSignalType();
  (*(v2[-1].Description + 1))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MapsIntelligencePassThruTransformer(uint64_t a1)
{
  result = qword_28136CA80;
  if (!qword_28136CA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22614BFC4(uint64_t a1, id *a2)
{
  result = sub_22616F808();
  *a2 = 0;
  return result;
}

uint64_t sub_22614C03C(uint64_t a1, id *a2)
{
  v3 = sub_22616F818();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22614C0BC@<X0>(uint64_t *a2@<X8>)
{
  sub_22616F828();
  v3 = sub_22616F7F8();

  *a2 = v3;
  return result;
}

uint64_t sub_22614C100()
{
  v0 = sub_22616F828();
  v1 = MEMORY[0x22AA772E0](v0);

  return v1;
}

uint64_t sub_22614C13C(uint64_t a1)
{
  sub_22616F828();
  sub_22616F8B8();
}

uint64_t sub_22614C190(uint64_t a1)
{
  sub_22616F828();
  sub_22616FCB8();
  sub_22616F8B8();
  v1 = sub_22616FCD8();

  return v1;
}

uint64_t sub_22614C204(void *a1, uint64_t *a2)
{
  v2 = sub_22616F828();
  v4 = v3;
  if (v2 == sub_22616F828() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22616FC68();
  }

  return v7 & 1;
}

uint64_t sub_22614C28C(uint64_t a1)
{
  v2 = sub_22614C4DC(&qword_27D78CED0, type metadata accessor for FileAttributeKey, &unk_2261707D8);
  v3 = sub_22614C4DC(&qword_27D78CED8, type metadata accessor for FileAttributeKey, &unk_22617072C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22614C348@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22616F7F8();

  *a2 = v3;
  return result;
}

uint64_t sub_22614C390(uint64_t a1)
{
  v2 = sub_22614C4DC(&qword_27D78CEA0, type metadata accessor for MLModelMetadataKey, &unk_226170644);
  v3 = sub_22614C4DC(&qword_27D78CEA8, type metadata accessor for MLModelMetadataKey, &unk_226170598);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22614C4DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_22614C5B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22614C5C0()
{
  result = qword_28136C380;
  if (!qword_28136C380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136C380);
  }

  return result;
}

void sub_22614C620(uint64_t a1, unint64_t *a2, uint64_t a3)
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

char *sub_22614C76C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v4[-1].Description;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v9 = v6;
    v10 = sub_226155B2C(0x6C616E676973, 0xE600000000000000);
    if (v11)
    {
      sub_22614D234(*(a1 + 56) + 32 * v10, &v42);
      sub_22614D290();
      if (swift_dynamicCast())
      {
        v12 = v40;
        *&v40 = 1701667182;
        *(&v40 + 1) = 0xE400000000000000;
        v13 = [v12 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v13)
        {
          sub_22616FB28();
          swift_unknownObjectRelease();
        }

        else
        {
          v40 = 0u;
          v41 = 0u;
        }

        v42 = v40;
        v43 = v41;
        if (*(&v41 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_30;
          }

          v15 = v39;
          v36 = v38;
          *&v40 = 1701869940;
          *(&v40 + 1) = 0xE400000000000000;
          v16 = sub_22616FC78();
          v37 = v12;
          v17 = [v12 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v17)
          {
            sub_22616FB28();
            swift_unknownObjectRelease();
          }

          else
          {
            v40 = 0u;
            v41 = 0u;
          }

          v42 = v40;
          v43 = v41;
          v12 = v37;
          if (*(&v41 + 1))
          {
            if (swift_dynamicCast())
            {
              v18 = v39;
              if (*(a1 + 16))
              {
                v19 = v38;
                v20 = sub_226155B2C(0x74757074756FLL, 0xE600000000000000);
                if (v21)
                {
                  sub_22614D234(*(a1 + 56) + 32 * v20, &v42);

                  if (swift_dynamicCast())
                  {
                    v22 = v40;
                    *&v40 = 1701667182;
                    *(&v40 + 1) = 0xE400000000000000;
                    v23 = sub_22616FC78();
                    v35 = v22;
                    v24 = [v22 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v24)
                    {
                      sub_22616FB28();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v40 = 0u;
                      v41 = 0u;
                    }

                    v42 = v40;
                    v43 = v41;
                    if (*(&v41 + 1))
                    {
                      if ((swift_dynamicCast() & 1) == 0)
                      {
LABEL_50:

                        goto LABEL_32;
                      }

                      v33 = v38;
                      v34 = v39;
                      *&v40 = 1701869940;
                      *(&v40 + 1) = 0xE400000000000000;
                      v25 = [v35 __swift_objectForKeyedSubscript_];
                      swift_unknownObjectRelease();
                      if (v25)
                      {
                        sub_22616FB28();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v40 = 0u;
                        v41 = 0u;
                      }

                      v42 = v40;
                      v43 = v41;
                      if (*(&v41 + 1))
                      {
                        if (swift_dynamicCast())
                        {
                          v26 = v38;
                          v27 = v39;
                          v28 = v34;
                          *(v2 + 2) = v33;
                          *(v2 + 3) = v28;
                          *(v2 + 4) = v36;
                          *(v2 + 5) = v15;
                          if (v19 == 0x676E69727453 && v18 == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
                          {

                            v29 = &enum case for MapsIntelligenceClientSignalType.string(_:);
                          }

                          else if (v19 == 0x656C62756F44 && v18 == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
                          {

                            v29 = &enum case for MapsIntelligenceClientSignalType.double(_:);
                          }

                          else
                          {
                            if (v19 != 7630409 || v18 != 0xE300000000000000)
                            {
                              v31 = sub_22616FC68();

                              if (v31)
                              {
                                v29 = &enum case for MapsIntelligenceClientSignalType.int64(_:);
                              }

                              else
                              {
                                v29 = &enum case for MapsIntelligenceClientSignalType.unknown(_:);
                              }

                              goto LABEL_46;
                            }

                            v29 = &enum case for MapsIntelligenceClientSignalType.int64(_:);
                            v35 = v37;
                          }

LABEL_46:
                          Description[13](v8, *v29, v9);
                          (Description)[4](&v2[OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType], v8, v9);
                          v30 = &v2[OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType];
                          *v30 = v26;
                          *(v30 + 1) = v27;
                          return v2;
                        }

                        goto LABEL_50;
                      }
                    }

                    goto LABEL_26;
                  }
                }

                else
                {
                }

LABEL_32:

                goto LABEL_7;
              }
            }

LABEL_30:

            goto LABEL_7;
          }
        }

LABEL_26:
        sub_22614D2DC(&v42);
        goto LABEL_7;
      }
    }
  }

LABEL_7:
  type metadata accessor for MapsIntelligenceBaseTransformer(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_22614CE4C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBFEF8]);

  return [v0 init];
}

MapsIntelligenceClientInterface::MapsIntelligenceClientSignalType __swiftcall MapsIntelligenceSignalTypeFromNSString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  if (a1._countAndFlagsBits == 0x676E69727453 && a1._object == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
  {
    v5 = &enum case for MapsIntelligenceClientSignalType.string(_:);
  }

  else if (countAndFlagsBits == 0x656C62756F44 && object == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
  {
    v5 = &enum case for MapsIntelligenceClientSignalType.double(_:);
  }

  else
  {
    v5 = &enum case for MapsIntelligenceClientSignalType.int64(_:);
    if ((countAndFlagsBits != 7630409 || object != 0xE300000000000000) && (sub_22616FC68() & 1) == 0)
    {
      v5 = &enum case for MapsIntelligenceClientSignalType.unknown(_:);
    }
  }

  v6 = *v5;
  v7 = type metadata accessor for MapsIntelligenceClientSignalType();
  v8 = *(v7[-1].Description + 13);

  return v8(v4, v6, v7);
}

uint64_t sub_22614CFD8()
{

  v1 = OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType;
  v2 = type metadata accessor for MapsIntelligenceClientSignalType();
  (*(v2[-1].Description + 1))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22614D0DC()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_22614D110()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t type metadata accessor for MapsIntelligenceBaseTransformer(uint64_t a1)
{
  result = qword_28136CD28;
  if (!qword_28136CD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22614D198(uint64_t a1)
{
  result = type metadata accessor for MapsIntelligenceClientSignalType();
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

uint64_t sub_22614D234(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22614D290()
{
  result = qword_28136C3A0;
  if (!qword_28136C3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136C3A0);
  }

  return result;
}

uint64_t sub_22614D2DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEE0, &unk_226170C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_22614D38C(unint64_t a1)
{
  if (a1 < 5 && ((0x17u >> a1) & 1) != 0)
  {
    return 0x300020100uLL >> (8 * a1);
  }

  if (qword_27D78CE70 != -1)
  {
    swift_once();
  }

  v3 = sub_22616F788();
  __swift_project_value_buffer(v3, qword_27D78DCB0);
  v4 = sub_22616F768();
  v5 = sub_22616FA98();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_22614A000, v4, v5, "Unknown GEOTransportTypePreference: %ld", v6, 0xCu);
    MEMORY[0x22AA77C50](v6, -1, -1);
  }

  return 0;
}

uint64_t sub_22614D4A4()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_27D78DCB0);
  __swift_project_value_buffer(v0, qword_27D78DCB0);
  return sub_22616F778();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_22614D5C0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_22614D5D0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__matchValue) = 0;
  *(v1 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__matchingValue) = 0;
  *(v1 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__nonMatchingValue) = 0;

  v4 = sub_22614C76C(v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (!*(a1 + 16) || (v5 = v4, v6 = sub_226155B2C(0x6C616E676973, 0xE600000000000000), (v7 & 1) == 0) || (sub_22614D234(*(a1 + 56) + 32 * v6, &v31), sub_22614D290(), (swift_dynamicCast() & 1) == 0))
  {

LABEL_8:

    return 0;
  }

  v8 = v27;
  *&v28 = 0x65756C6176;
  *(&v28 + 1) = 0xE500000000000000;
  v9 = [v8 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_22616FB28();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v30 = 0u;
  }

  v31 = v28;
  v32 = v30;
  if (!*(&v30 + 1))
  {

LABEL_21:
    sub_22614E1F4(&v31, &qword_27D78CEE0, &unk_226170C20);
LABEL_24:

    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v24 = v8;
  *&v31 = 0;
  v11 = sub_22614DFC0(v25, v26, &v31);

  v12 = *&v31;
  if (!v11)
  {
    v12 = 0.0;
  }

  *(v5 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__matchValue) = v12;
  if (!*(a1 + 16) || (v13 = sub_226155B2C(0x74757074756FLL, 0xE600000000000000), (v14 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_22614D234(*(a1 + 56) + 32 * v13, &v31);

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_40:

    return 0;
  }

  v15 = v28;
  *&v29 = 0x65756C6176;
  *(&v29 + 1) = 0xE500000000000000;
  v16 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_22616FB28();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {

    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEE8, &unk_2261708D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_39:

    goto LABEL_40;
  }

  if (v25[2] != 2)
  {

    goto LABEL_39;
  }

  v17 = v25[6];
  v18 = v25[7];
  *&v31 = 0;

  LOBYTE(v17) = sub_22614DFC0(v17, v18, &v31);

  v19 = *&v31;
  if ((v17 & 1) == 0)
  {
    v19 = 0.0;
  }

  *(v5 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__matchingValue) = v19;
  if (v25[2])
  {
    v20 = v25[4];
    v21 = v25[5];

    *&v31 = 0;
    v22 = sub_22614DFC0(v20, v21, &v31);

    v23 = *&v31;
    if (!v22)
    {
      v23 = 0.0;
    }

    result = v5;
    *(v5 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__nonMatchingValue) = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22614DA2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v4[-1].Description;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  dispatch thunk of MapsIntelligenceClientSignal.type()(v11, v12);
  Description[13](v8, 1, v4);
  sub_22614E138();
  v13 = sub_22616F7E8();
  v14 = Description[1];
  (v14)(v8, v4);
  (v14)(v10, v4);
  if ((v13 & 1) == 0)
  {
    v19 = [objc_opt_self() featureValueWithDouble_];
    return v19;
  }

  sub_22614E190(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF8, &qword_2261708E0);
  if (!swift_dynamicCast())
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_22614E1F4(v22, &qword_27D78CF00, &qword_2261708E8);
    v19 = [objc_opt_self() undefinedFeatureValueWithType_];
    return v19;
  }

  sub_22614B9FC(v22, v25);
  v15 = v26;
  v16 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  dispatch thunk of MapsIntelligenceClientDoubleSignal.doubleValue()(v15, v16);
  if (vabdd_f64(v17, *(v2 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__matchValue)) >= 0.001)
  {
    v18 = [objc_opt_self() featureValueWithDouble_];
  }

  else
  {
    v18 = [objc_opt_self() featureValueWithDouble_];
  }

  v21 = v18;
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

uint64_t type metadata accessor for MapsIntelligenceDoubleMatchTransformer(uint64_t a1)
{
  result = qword_28136C808;
  if (!qword_28136C808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22614DDD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_226155B2C(0x6C616E676973, 0xE600000000000000);
    if (v3)
    {
      sub_22614D234(*(a1 + 56) + 32 * v2, v15);
      sub_22614D290();
      if (swift_dynamicCast())
      {
        v4 = v12;
        *&v13 = 1701869940;
        *(&v13 + 1) = 0xE400000000000000;
        v5 = [v4 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v5)
        {
          sub_22616FB28();
          swift_unknownObjectRelease();
        }

        else
        {
          v13 = 0u;
          v14 = 0u;
        }

        v15[0] = v13;
        v15[1] = v14;
        if (*(&v14 + 1))
        {
          if (swift_dynamicCast())
          {
            if (v10 == 0x656C62756F44 && v11 == 0xE600000000000000)
            {

LABEL_14:
              type metadata accessor for MapsIntelligenceDoubleMatchTransformer(0);
              swift_allocObject();

              v8 = sub_22614D5D0(v7);

              return v8;
            }

            v6 = sub_22616FC68();

            if (v6)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {

          sub_22614E1F4(v15, &qword_27D78CEE0, &unk_226170C20);
        }
      }
    }
  }

  return 0;
}

BOOL sub_22614DFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_22616FB98();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_22614E0B8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_22614E138()
{
  result = qword_28136C3C0;
  if (!qword_28136C3C0)
  {
    type metadata accessor for MapsIntelligenceClientSignalType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136C3C0);
  }

  return result;
}

uint64_t sub_22614E190(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22614E1F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_22614E2A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF18, &unk_226170A20);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF20, &qword_226170DB0);
  v16 = *(*(v0 - 8) + 72);
  v1 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226170910;
  v3 = v2 + v1;
  v15 = *(v0 + 48);
  v4 = type metadata accessor for ModuleType();
  v5 = *(v4[-1].Description + 13);
  v5(v3, 0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF28, &unk_226170A30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226170910;
  *(v6 + 32) = 0xD000000000000021;
  *(v6 + 40) = 0x80000002261719E0;
  *(v6 + 72) = 1;
  v7 = type metadata accessor for MIFPersonalizedAutocompleteRankerModule();
  v8 = swift_allocObject();
  *(v6 + 104) = v7;
  *(v6 + 112) = sub_22614F7BC(qword_28136C4D8, type metadata accessor for MIFPersonalizedAutocompleteRankerModule, &unk_2261712B8);
  *(v6 + 80) = v8;
  *(v3 + v15) = v6;
  *(v6 + 120) = 0;
  v9 = *(v0 + 48);
  v5(v3 + v16, 1, v4);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226170920;
  v11 = type metadata accessor for MIFTransportModePredictonModule();
  v12 = swift_allocObject();
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_22614F7BC(qword_28136C5A8, type metadata accessor for MIFTransportModePredictonModule, &unk_226170BCC);
  *(v10 + 32) = v12;
  *(v10 + 72) = 0;
  *(v3 + v16 + v9) = v10;
  v13 = sub_226159898(v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_28136C698 = v13;
  return result;
}

uint64_t sub_22614E588@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF40, &unk_226170A48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for ModuleType();
  Description = v7[-1].Description;
  MEMORY[0x28223BE20](v7);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v9 = [a1 bundleIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22616F828();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = a1;
  result = [a1 infoDictionary];
  if (result)
  {
    v15 = result;
    v16 = sub_22616F7B8();

    if (*(v16 + 16) && (v17 = sub_226155B2C(0xD000000000000024, 0x8000000226171A50), (v18 & 1) != 0))
    {
      sub_22614D234(*(v16 + 56) + 32 * v17, v40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEE8, &unk_2261708D0);
      result = swift_dynamicCast();
      if (result)
      {
        v19 = v41;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_11:
  v34 = a2;
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = (Description + 48);
    v38 = (Description + 32);
    v23 = (v19 + 40);
    v24 = MEMORY[0x277D84F90];
    v35 = v20;
    v36 = v7;
    while (v21 < *(v19 + 16))
    {
      v26 = *(v23 - 1);
      v25 = *v23;

      v27._countAndFlagsBits = v26;
      v27._object = v25;
      ModuleType.init(rawValue:)(v27);
      if ((*v22)(v6, 1, v7) == 1)
      {
        result = sub_22614E1F4(v6, &qword_27D78CF40, &unk_226170A48);
      }

      else
      {
        v28 = v19;
        v29 = *v38;
        (*v38)(v39, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_22616B26C(0, v24[2] + 1, 1, v24);
        }

        v31 = v24[2];
        v30 = v24[3];
        if (v31 >= v30 >> 1)
        {
          v24 = sub_22616B26C((v30 > 1), v31 + 1, 1, v24);
        }

        v24[2] = v31 + 1;
        v32 = v24 + ((Description[80] + 32) & ~Description[80]) + *(Description + 9) * v31;
        v7 = v36;
        result = (v29)(v32, v39, v36);
        v19 = v28;
        v20 = v35;
      }

      ++v21;
      v23 += 2;
      if (v20 == v21)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
LABEL_23:

    *(v34 + 24) = v24;
  }

  return result;
}

double sub_22614E944@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_226150DB0(v2 + 32, v13, &qword_27D78CF10, &qword_226170A18);
  v5 = v14;
  sub_22614E1F4(v13, &qword_27D78CF10, &qword_226170A18);
  if (!v5 && [*(v2 + 16) principalClass])
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v10 = swift_conformsToProtocol2();
    if (v10 && ObjCClassMetadata != 0)
    {
      v14 = ObjCClassMetadata;
      v15 = v10;
      v12 = v10;
      __swift_allocate_boxed_opaque_existential_1(v13);
      dispatch thunk of ModuleBundleProviding.init()(ObjCClassMetadata, v12);
      sub_22614F74C(v13, v2 + 32);
    }
  }

  if (*(v2 + 56))
  {
    sub_22614E190(v2 + 32, v13);
    v6 = v14;
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    dispatch thunk of ModuleBundleProviding.module(for:)(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_22614EA8C()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles;
  if (*(v0 + OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles);
  }

  else
  {
    v2 = sub_226150968();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22614EAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for ModuleType();
  Description = v3[-1].Description;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v60 = &v56 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v13 = &v56 - v12;
  if (qword_28136C690 != -1)
  {
LABEL_31:
    v55 = v10;
    swift_once();
    v10 = v55;
  }

  v65 = v10;
  v14 = off_28136C698;
  v15 = *(off_28136C698 + 2);
  v61 = v7;
  v59 = v13;
  if (v15 && (v10 = sub_226155BA4(a1), (v16 & 1) != 0))
  {
    v17 = *(v14[7] + 8 * v10);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v69 = *(v17 + 16);
  if (v69)
  {
    v13 = 0;
    v68 = OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry_logger;
    v18 = v17 + 32;
    v19 = (Description + 16);
    v62 = (Description + 8);
    *&v11 = 136315138;
    v64 = v11;
    *&v11 = 136315394;
    v58 = v11;
    v67 = a1;
    v63 = v17;
    v66 = (Description + 16);
    do
    {
      if (v13 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_22614F648(v18, v79);
      if ((v80 & 1) == 0)
      {

        v54 = v79;
        return sub_22614B9FC(v54, v57);
      }

      v20 = v79[0];
      Description = v79[1];
      v21 = sub_22614EA8C();
      if (!*(v21 + 16) || (v22 = sub_226155B2C(v20, Description), (v23 & 1) == 0))
      {

        v37 = sub_22616F768();
        v7 = sub_22616FA88();

        if (os_log_type_enabled(v37, v7))
        {
          v38 = swift_slowAlloc();
          v39 = v19;
          v40 = swift_slowAlloc();
          *&v77[0] = v40;
          *v38 = v64;
          v41 = sub_2261555F8(v20, Description, v77);

          *(v38 + 4) = v41;
          _os_log_impl(&dword_22614A000, v37, v7, "No matching bundle for identifier %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          v42 = v40;
          v19 = v39;
          MEMORY[0x22AA77C50](v42, -1, -1);
          v43 = v38;
          a1 = v67;
          MEMORY[0x22AA77C50](v43, -1, -1);
        }

        else
        {
        }

        goto LABEL_10;
      }

      sub_22614F680(*(v21 + 56) + 72 * v22, &v72);

      v77[2] = v74;
      v77[3] = v75;
      v78 = v76;
      v77[0] = v72;
      v77[1] = v73;
      if (sub_22614F2CC(a1, *(&v73 + 1)))
      {
        sub_22614E944(a1, &v70);
        if (v71)
        {
          sub_22614F6B8(v77);

          sub_22614B9FC(&v70, &v72);
          v54 = &v72;
          return sub_22614B9FC(v54, v57);
        }

        sub_22614E1F4(&v70, &qword_27D78CF08, &qword_226170A10);
        v24 = *v19;
        v7 = v59;
        v25 = v65;
        (*v19)(v59, a1, v65);

        v26 = sub_22616F768();
        v27 = sub_22616FA98();

        if (!os_log_type_enabled(v26, v27))
        {
LABEL_24:

          (*v62)(v7, v25);
          goto LABEL_25;
        }

        v28 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v72 = v56;
        *v28 = v58;
        v29 = sub_2261555F8(v20, Description, &v72);

        *(v28 + 4) = v29;
        *(v28 + 12) = 2080;
        v24(v60, v7, v25);
        v30 = sub_22616F868();
        v32 = v31;
        (*v62)(v7, v25);
        v33 = sub_2261555F8(v30, v32, &v72);

        *(v28 + 14) = v33;
        v34 = v27;
        v35 = v26;
        v36 = "Bundle %s does not contain a module for type %s";
      }

      else
      {
        v44 = *v19;
        v7 = v61;
        v25 = v65;
        (*v19)(v61, a1, v65);

        v26 = sub_22616F768();
        v45 = sub_22616FA98();

        if (!os_log_type_enabled(v26, v45))
        {
          goto LABEL_24;
        }

        v28 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v72 = v56;
        *v28 = v58;
        v46 = sub_2261555F8(v20, Description, &v72);

        *(v28 + 4) = v46;
        *(v28 + 12) = 2080;
        v44(v60, v7, v25);
        v47 = sub_22616F868();
        v49 = v48;
        (*v62)(v7, v25);
        v50 = sub_2261555F8(v47, v49, &v72);

        *(v28 + 14) = v50;
        v34 = v45;
        v35 = v26;
        v36 = "Bundle %s does not support module type %s";
      }

      _os_log_impl(&dword_22614A000, v35, v34, v36, v28, 0x16u);
      Description = v56;
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](Description, -1, -1);
      v51 = v28;
      a1 = v67;
      MEMORY[0x22AA77C50](v51, -1, -1);

LABEL_25:
      v10 = sub_22614F6B8(v77);
      v17 = v63;
      v19 = v66;
LABEL_10:
      ++v13;
      v18 += 48;
    }

    while (v69 != v13);
  }

  v53 = v57;
  *(v57 + 32) = 0;
  *v53 = 0u;
  v53[1] = 0u;
  return result;
}

BOOL sub_22614F2CC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for ModuleType();
    ++v2;
    sub_22614F7BC(&qword_28136C3B0, type metadata accessor for ModuleType, &protocol conformance descriptor for ModuleType);
  }

  while ((sub_22616F7E8() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_22614F3D8()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry_logger;
  v2 = sub_22616F788();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ModuleRegistry(uint64_t a1)
{
  result = qword_28136C680;
  if (!qword_28136C680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22614F4B4(uint64_t a1)
{
  result = sub_22616F788();
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

uint64_t get_enum_tag_for_layout_string_31MapsIntelligenceClientInterface21ModuleBundleProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22614F594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22614F5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22614F74C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF10, &qword_226170A18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22614F7BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22614F804(uint64_t a1, char a2, void *a3)
{
  v48 = *(a1 + 16);
  if (!v48)
  {
    goto LABEL_22;
  }

  sub_226150DB0(a1 + 32, &v56, &qword_27D78CF48, &qword_226170A58);
  v7 = v56;
  v6 = v57;
  v54 = v56;
  v55 = v57;
  v51 = v60;
  v52 = v61;
  v53 = v62;
  v49 = v58;
  v50 = v59;
  v8 = *a3;
  v9 = sub_226155B2C(v56, v57);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_226150110(v14, a2 & 1);
    v9 = sub_226155B2C(v7, v6);
    if ((v15 & 1) != (v16 & 1))
    {
LABEL_5:
      sub_22616FC98();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v19 = v9;
  sub_22614FC38();
  v9 = v19;
  if (v15)
  {
LABEL_9:
    v17 = swift_allocError();
    swift_willThrow();
    v63 = v17;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF50, &unk_226170A60);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_22614F6B8(&v49);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  v21 = (v20[6] + 16 * v9);
  *v21 = v7;
  v21[1] = v6;
  v22 = v20[7] + 72 * v9;
  *v22 = v49;
  v23 = v50;
  v24 = v51;
  v25 = v52;
  *(v22 + 64) = v53;
  *(v22 + 32) = v24;
  *(v22 + 48) = v25;
  *(v22 + 16) = v23;
  v26 = v20[2];
  v13 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v13)
  {
    v20[2] = v27;
    if (v48 == 1)
    {
LABEL_22:

      return;
    }

    v28 = a1 + 120;
    v29 = 1;
    while (v29 < *(a1 + 16))
    {
      sub_226150DB0(v28, &v56, &qword_27D78CF48, &qword_226170A58);
      v31 = v56;
      v30 = v57;
      v54 = v56;
      v55 = v57;
      v51 = v60;
      v52 = v61;
      v53 = v62;
      v49 = v58;
      v50 = v59;
      v32 = *a3;
      v33 = sub_226155B2C(v56, v57);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v13 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v13)
      {
        goto LABEL_23;
      }

      v38 = v34;
      if (v32[3] < v37)
      {
        sub_226150110(v37, 1);
        v33 = sub_226155B2C(v31, v30);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v38)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v41 = (v40[6] + 16 * v33);
      *v41 = v31;
      v41[1] = v30;
      v42 = v40[7] + 72 * v33;
      *v42 = v49;
      v43 = v50;
      v44 = v51;
      v45 = v52;
      *(v42 + 64) = v53;
      *(v42 + 32) = v44;
      *(v42 + 48) = v45;
      *(v42 + 16) = v43;
      v46 = v40[2];
      v13 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v13)
      {
        goto LABEL_24;
      }

      ++v29;
      v40[2] = v47;
      v28 += 88;
      if (v48 == v29)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22616FBA8();
  MEMORY[0x22AA77270](0xD00000000000001BLL, 0x8000000226171AB0);
  sub_22616FBC8();
  MEMORY[0x22AA77270](39, 0xE100000000000000);
  sub_22616FBD8();
  __break(1u);
}

void *sub_22614FC38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF30, &unk_226170DC0);
  v2 = *v0;
  v3 = sub_22616FBE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 72 * v17;
        sub_22614F680(*(v2 + 56) + 72 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        *v24 = v29[0];
        v25 = v29[1];
        v26 = v29[2];
        v27 = v29[3];
        *(v24 + 64) = v30;
        *(v24 + 32) = v26;
        *(v24 + 48) = v27;
        *(v24 + 16) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_22614FDFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF58, &qword_226170DE0);
  v2 = *v0;
  v3 = sub_22616FBE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_22614E190(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22614B9FC(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_22614FFA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF60, &qword_226170A70);
  v2 = *v0;
  v3 = sub_22616FBE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_226150110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF30, &unk_226170DC0);
  v40 = v4;
  result = sub_22616FBF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 72 * v24;
      if (v40)
      {
        v41 = *v28;
        v29 = *(v28 + 16);
        v30 = *(v28 + 32);
        v31 = *(v28 + 48);
        v45 = *(v28 + 64);
        v43 = v30;
        v44 = v31;
        v42 = v29;
      }

      else
      {
        sub_22614F680(v28, &v41);
      }

      sub_22616FCB8();
      sub_22616F8B8();
      result = sub_22616FCD8();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v44;
      *(v17 + 64) = v45;
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_226150400(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF58, &qword_226170DE0);
  v33 = v4;
  result = sub_22616FBF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_22614B9FC(v24, v34);
      }

      else
      {
        sub_22614E190(v24, v34);
      }

      sub_22616FCB8();
      sub_22616F8B8();
      result = sub_22616FCD8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_22614B9FC(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2261506C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF60, &qword_226170A70);
  v35 = v4;
  result = sub_22616FBF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_22616FCB8();
      sub_22616F8B8();
      result = sub_22616FCD8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_226150968()
{
  v0 = sub_22616F6F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModuleRegistry(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_22616F7F8();
  v7 = sub_22616F7F8();
  v8 = [v5 URLsForResourcesWithExtension:v6 subdirectory:v7];

  if (v8)
  {
    v9 = sub_22616F9A8();

    v10 = *(v9 + 16);
    if (v10)
    {
      v33 = v5;
      v11 = v1 + 16;
      v37 = *(v1 + 16);
      v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v32 = v9;
      v13 = v9 + v12;
      v36 = *(v11 + 56);
      v14 = (v11 - 8);
      v34 = v11;
      v35 = MEMORY[0x277D84F90];
      v15 = 0x277CCA000uLL;
      v37(v3, v9 + v12, v0);
      while (1)
      {
        v16 = objc_allocWithZone(*(v15 + 2264));
        v17 = sub_22616F688();
        v18 = [v16 initWithURL_];

        if (v18)
        {
          sub_22614E588(v18, v38);
          (*v14)(v3, v0);
          v19 = v38[0];
          v40 = v38[1];
          v41 = v38[2];
          v42 = v38[3];
          v43 = v39;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v20 = v35;
          }

          else
          {
            v20 = sub_22616B444(0, v35[2] + 1, 1, v35);
          }

          v22 = v20[2];
          v21 = v20[3];
          if (v22 >= v21 >> 1)
          {
            v20 = sub_22616B444((v21 > 1), v22 + 1, 1, v20);
          }

          v20[2] = v22 + 1;
          v35 = v20;
          v23 = &v20[11 * v22];
          *(v23 + 2) = v19;
          *(v23 + 3) = v19;
          v24 = v40;
          v25 = v41;
          v26 = v42;
          v23[14] = v43;
          *(v23 + 5) = v25;
          *(v23 + 6) = v26;
          *(v23 + 4) = v24;
          v15 = 0x277CCA000;
        }

        else
        {
          (*v14)(v3, v0);
        }

        v13 += v36;
        if (!--v10)
        {
          break;
        }

        v37(v3, v13, v0);
      }

      v5 = v33;
      v27 = v35;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    if (v27[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF30, &unk_226170DC0);
      v30 = sub_22616FC08();
    }

    else
    {
      v30 = MEMORY[0x277D84F98];
    }

    *&v38[0] = v30;

    sub_22614F804(v31, 1, v38);

    return *&v38[0];
  }

  else
  {
    v28 = sub_226159A80(MEMORY[0x277D84F90]);

    return v28;
  }
}

uint64_t sub_226150DB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_226150E38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226150E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_226150EC4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

void *MapsIntelligenceBaseManager.init(trialProjectId:trialNamespaceName:modelFactor:defaultModel:signalResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel];
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  v17 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelSemaphore;
  *&v8[v18] = dispatch_semaphore_create(1);
  v19 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__signalResource];
  *v19 = a7;
  *(v19 + 1) = a8;
  swift_beginAccess();

  v38 = a6;
  sub_226151384(a6, v16);
  result = swift_endAccess();
  v21 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelFactor];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__namespaceName];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__projectId];
  *v23 = a1;
  v23[4] = BYTE4(a1) & 1;
  if ((a1 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {

    v24 = [objc_opt_self() clientWithIdentifier_];
    *&v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__trialClient] = v24;
    v44.receiver = v8;
    v44.super_class = type metadata accessor for MapsIntelligenceBaseManager();
    v25 = objc_msgSendSuper2(&v44, sel_init);
    v26 = v25;
    v27 = *&v25[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__trialClient];
    if (v27 && (v25[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__projectId + 4] & 1) == 0 && *&v25[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__namespaceName + 8] && *&v25[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelFactor + 8])
    {
      v28 = v27;

      v29 = sub_22616F7F8();

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = sub_226151E30;
      v43 = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_226151630;
      v41 = &block_descriptor;
      v31 = _Block_copy(aBlock);

      v32 = [v28 addUpdateHandlerForNamespaceName:v29 usingBlock:v31];
      _Block_release(v31);
      swift_unknownObjectRelease();

      sub_226151694();
      sub_226151488(v38);
    }

    else
    {
      v33 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
      swift_beginAccess();
      sub_226151418(v26 + v33, aBlock);
      if (v41)
      {
        sub_226151488(a6);
        sub_226151488(aBlock);
      }

      else
      {
        sub_226151488(aBlock);
        if (qword_28136C3D0 != -1)
        {
          swift_once();
        }

        v34 = sub_22616F788();
        __swift_project_value_buffer(v34, qword_28136D488);
        v35 = sub_22616F768();
        v36 = sub_22616FA98();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_22614A000, v35, v36, "Failed to load model and default Model", v37, 2u);
          MEMORY[0x22AA77C50](v37, -1, -1);
        }

        else
        {
        }

        sub_226151488(v38);
        return 0;
      }
    }

    return v26;
  }

  return result;
}

uint64_t sub_226151384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF88, &unk_226170B00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_226151418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF88, &unk_226170B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226151488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF88, &unk_226170B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2261514F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x277D85000] & Strong->isa) + 0xE0))();
  }

  else
  {
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v4 = sub_22616F788();
    __swift_project_value_buffer(v4, qword_28136D488);
    v3 = sub_22616F768();
    v5 = sub_22616FA98();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22614A000, v3, v5, "StrongSelf went away in MIBaseManager", v6, 2u);
      MEMORY[0x22AA77C50](v6, -1, -1);
    }
  }
}

uint64_t sub_226151630(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_226151694()
{
  if ((*(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__projectId + 4) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__namespaceName + 8);
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelFactor + 8);
      if (v2)
      {
        v3 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__projectId);
        v4 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__namespaceName);
        v5 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelFactor);
        v6 = v0;
        sub_22616FAA8();
        v7 = type metadata accessor for MapsIntelligenceTrialModel(0);
        swift_allocObject();

        v8 = sub_22615ABD4(v3, v4, v1, v5, v2);
        if (v8)
        {
          v9 = &off_283958F88;
        }

        else
        {
          v7 = 0;
          v9 = 0;
          v19[1] = 0;
          v19[2] = 0;
        }

        v19[0] = v8;
        v20 = v7;
        v21 = v9;
        v17 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model;
        swift_beginAccess();
        sub_226152438(v19, v6 + v17);
        swift_endAccess();
        sub_22616FAB8();
        if (qword_28136C3D0 != -1)
        {
          swift_once();
        }

        v18 = sub_22616F788();
        __swift_project_value_buffer(v18, qword_28136D488);
        v13 = sub_22616F768();
        v14 = sub_22616FA98();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_17;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Succeeded in loading model";
        goto LABEL_16;
      }
    }
  }

  v10 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226151418(v0 + v10, v19);
  v11 = v20;
  sub_226151488(v19);
  if (v11)
  {
    return;
  }

  if (qword_28136C3D0 != -1)
  {
    swift_once();
  }

  v12 = sub_22616F788();
  __swift_project_value_buffer(v12, qword_28136D488);
  v13 = sub_22616F768();
  v14 = sub_22616FA98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Failed to load model and default Model";
LABEL_16:
    _os_log_impl(&dword_22614A000, v13, v14, v16, v15, 2u);
    MEMORY[0x22AA77C50](v15, -1, -1);
  }

LABEL_17:
}

uint64_t sub_22615195C()
{
  v1 = v0;
  sub_22616FAA8();
  v2 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model;
  swift_beginAccess();
  sub_226151418(v1 + v2, &v18);
  if (v19)
  {
    sub_22614B9FC(&v18, v20);
    v3 = v21;
    v4 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v5 = (*(v4 + 16))(v3, v4);
    sub_22616FAB8();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v5;
  }

  sub_226151488(&v18);
  sub_22616FAB8();
  v6 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226151418(v1 + v6, &v18);
  if (v19)
  {
    sub_22614B9FC(&v18, v20);
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v7 = sub_22616F788();
    __swift_project_value_buffer(v7, qword_28136D488);
    v8 = sub_22616F768();
    v9 = sub_22616FA88();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22614A000, v8, v9, "metadata from default model", v10, 2u);
      MEMORY[0x22AA77C50](v10, -1, -1);
    }

    v11 = v21;
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v5 = (*(v12 + 16))(v11, v12);
    goto LABEL_9;
  }

  sub_226151488(&v18);
  if (qword_28136C3D0 != -1)
  {
    swift_once();
  }

  v14 = sub_22616F788();
  __swift_project_value_buffer(v14, qword_28136D488);
  v15 = sub_22616F768();
  v16 = sub_22616FA98();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22614A000, v15, v16, "No Models were loaded, no metadata", v17, 2u);
    MEMORY[0x22AA77C50](v17, -1, -1);
  }

  sub_22614D290();
  return sub_22616FA58();
}

id MapsIntelligenceBaseManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsIntelligenceBaseManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsIntelligenceBaseManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226151DB0()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D488);
  __swift_project_value_buffer(v0, qword_28136D488);
  return sub_22616F778();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226151E50(uint64_t a1, uint64_t a2)
{
  sub_22616FAA8();
  v4 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model;
  swift_beginAccess();
  sub_226151418(a2 + v4, &v28);
  if (v29)
  {
    sub_22614B9FC(&v28, v30);
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v5 = sub_22616F788();
    __swift_project_value_buffer(v5, qword_28136D488);
    v6 = sub_22616F768();
    v7 = sub_22616FA88();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22614A000, v6, v7, "Predicting with loaded model", v8, 2u);
      MEMORY[0x22AA77C50](v8, -1, -1);
    }

    v9 = v31;
    v10 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v11 = (*(v10 + 8))(a1, v9, v10);
    v12 = v31;
    v13 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v13 + 16))(v12, v13);
    sub_22616FAB8();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v11;
  }

  sub_226151488(&v28);
  sub_22616FAB8();
  v14 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226151418(a2 + v14, &v28);
  if (v29)
  {
    sub_22614B9FC(&v28, v30);
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v15 = sub_22616F788();
    __swift_project_value_buffer(v15, qword_28136D488);
    v16 = sub_22616F768();
    v17 = sub_22616FA88();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22614A000, v16, v17, "Predicting with default model", v18, 2u);
      MEMORY[0x22AA77C50](v18, -1, -1);
    }

    v19 = v31;
    v20 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v11 = (*(v20 + 8))(a1, v19, v20);
    v21 = v31;
    v22 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v22 + 16))(v21, v22);
    goto LABEL_13;
  }

  sub_226151488(&v28);
  if (qword_28136C3D0 != -1)
  {
    swift_once();
  }

  v24 = sub_22616F788();
  __swift_project_value_buffer(v24, qword_28136D488);
  v25 = sub_22616F768();
  v26 = sub_22616FA98();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22614A000, v25, v26, "No Models were loaded, not predicting", v27, 2u);
    MEMORY[0x22AA77C50](v27, -1, -1);
  }

  return 0;
}

uint64_t sub_22615224C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226151418(a2 + v4, &v11);
  if (v12)
  {
    sub_22614B9FC(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 8))(a1, v5, v6);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v9 + 16))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_226151488(&v11);
    return 0;
  }

  return v7;
}

uint64_t sub_226152438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF88, &unk_226170B00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static TransportModePredictor.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ModuleType();
  v3 = *(v2[-1].Description + 13);

  return v3(a1, 1, v2);
}

unint64_t sub_226152578(uint64_t a1)
{
  result = sub_2261525A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261525A0()
{
  result = qword_28136C5A8[0];
  if (!qword_28136C5A8[0])
  {
    type metadata accessor for MIFTransportModePredictonModule();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136C5A8);
  }

  return result;
}

uint64_t sub_226152678()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D4D0);
  __swift_project_value_buffer(v0, qword_28136D4D0);
  return sub_22616F778();
}

uint64_t sub_2261526F8(uint64_t a1, uint64_t a2)
{
  sub_22616FAA8();
  v4 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model;
  swift_beginAccess();
  sub_226150DB0(a2 + v4, &v28, &qword_27D78CF88, &unk_226170B00);
  if (v29)
  {
    sub_22614B9FC(&v28, v30);
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v5 = sub_22616F788();
    __swift_project_value_buffer(v5, qword_28136D488);
    v6 = sub_22616F768();
    v7 = sub_22616FA88();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22614A000, v6, v7, "Predicting with loaded model", v8, 2u);
      MEMORY[0x22AA77C50](v8, -1, -1);
    }

    v9 = v31;
    v10 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v11 = (*(v10 + 8))(a1, v9, v10);
    v12 = v31;
    v13 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v13 + 16))(v12, v13);
    sub_22616FAB8();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v11;
  }

  sub_22614E1F4(&v28, &qword_27D78CF88, &unk_226170B00);
  sub_22616FAB8();
  v14 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226150DB0(a2 + v14, &v28, &qword_27D78CF88, &unk_226170B00);
  if (v29)
  {
    sub_22614B9FC(&v28, v30);
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v15 = sub_22616F788();
    __swift_project_value_buffer(v15, qword_28136D488);
    v16 = sub_22616F768();
    v17 = sub_22616FA88();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22614A000, v16, v17, "Predicting with default model", v18, 2u);
      MEMORY[0x22AA77C50](v18, -1, -1);
    }

    v19 = v31;
    v20 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v11 = (*(v20 + 8))(a1, v19, v20);
    v21 = v31;
    v22 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v22 + 16))(v21, v22);
    goto LABEL_13;
  }

  sub_22614E1F4(&v28, &qword_27D78CF88, &unk_226170B00);
  if (qword_28136C3D0 != -1)
  {
    swift_once();
  }

  v24 = sub_22616F788();
  __swift_project_value_buffer(v24, qword_28136D488);
  v25 = sub_22616F768();
  v26 = sub_22616FA98();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22614A000, v25, v26, "No Models were loaded, not predicting", v27, 2u);
    MEMORY[0x22AA77C50](v27, -1, -1);
  }

  return 0;
}

uint64_t sub_226152B40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MapsIntelligenceFeatureProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84FA0];
  v5 = MEMORY[0x277D84F90];
  v70 = v4;
  *(v4 + 24) = sub_22615A090(MEMORY[0x277D84F90]);
  v6 = (v4 + 24);
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = v5;
  }

  v73 = v7;
  v8 = *(v7 + 16);

  v72 = v8;
  if (!v8)
  {
LABEL_20:

    return v70;
  }

  v9 = 0;
  v10 = v73 + 32;
  v71 = a2;
  while (1)
  {
    if (v9 >= *(v73 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    result = sub_22614E190(v10, v81);
    if (!a2)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v20 = v82;
    v21 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v22 = (*(v21 + 40))(v20, v21);
    v24 = v23;
    swift_beginAccess();
    v25 = *(a2 + 16);
    if (!*(v25 + 16) || (, v26 = sub_226155B2C(v22, v24), v28 = v27, , (v28 & 1) == 0))
    {

      v80 = 0;
      v78 = 0u;
      v79 = 0u;
      sub_22614E1F4(&v78, &qword_27D78CFB0, &unk_226170C10);
      if (qword_28136C3E8 != -1)
      {
        swift_once();
      }

      v42 = sub_22616F788();
      __swift_project_value_buffer(v42, qword_28136D4D0);
      sub_22614E190(v81, &v78);
      v43 = sub_22616F768();
      v44 = sub_22616FA98();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v75 = v46;
        *v45 = 136315138;
        v48 = *(&v79 + 1);
        v47 = v80;
        __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
        v49 = (*(v47 + 40))(v48, v47);
        v51 = v50;
        __swift_destroy_boxed_opaque_existential_1(&v78);
        v52 = sub_2261555F8(v49, v51, &v75);

        *(v45 + 4) = v52;
        _os_log_impl(&dword_22614A000, v43, v44, "signal %s not found", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x22AA77C50](v46, -1, -1);
        MEMORY[0x22AA77C50](v45, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v78);
      }

      v11 = [objc_opt_self() undefinedFeatureValueWithType_];
      v12 = v82;
      v13 = v83;
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v14 = (*(v13 + 24))(v12, v13);
      v16 = v15;
      swift_beginAccess();

      v17 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = *v6;
      sub_2261589A4(v17, v14, v16, isUniquelyReferenced_nonNull_native);

      *v6 = v75;
      swift_endAccess();
      swift_beginAccess();
      sub_226158CC0(&v75, v14, v16);
      swift_endAccess();

      a2 = v71;
      goto LABEL_8;
    }

    sub_22614E190(*(v25 + 56) + 40 * v26, &v78);

    sub_22614E1F4(&v78, &qword_27D78CFB0, &unk_226170C10);
    v29 = v82;
    v30 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v32 = v82;
    v31 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v33 = (*(v31 + 40))(v32, v31);
    sub_226154CAC(v33, v34, 1, &v78);

    if (!*(&v79 + 1))
    {
      goto LABEL_29;
    }

    v35 = (*(v30 + 16))(&v78, v29, v30);
    __swift_destroy_boxed_opaque_existential_1(&v78);
    if (!v35)
    {
      break;
    }

    v36 = v82;
    v37 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v38 = (*(v37 + 24))(v36, v37);
    v40 = v39;
    swift_beginAccess();
    v41 = v35;

    sub_226154AA8(v35, v38, v40);
    swift_endAccess();
    swift_beginAccess();
    sub_226158CC0(&v75, v38, v40);
    swift_endAccess();

LABEL_8:
    ++v9;
    __swift_destroy_boxed_opaque_existential_1(v81);
    v10 += 40;
    if (v72 == v9)
    {
      goto LABEL_20;
    }
  }

  if (qword_28136C3E8 == -1)
  {
    goto LABEL_22;
  }

LABEL_27:
  swift_once();
LABEL_22:
  v53 = sub_22616F788();
  __swift_project_value_buffer(v53, qword_28136D4D0);
  sub_22614E190(v81, &v78);
  sub_22614E190(v81, &v75);
  v54 = sub_22616F768();
  v55 = sub_22616FA98();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v74 = v57;
    *v56 = 136315394;
    v58 = *(&v79 + 1);
    v59 = v80;
    __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
    v60 = (*(v59 + 40))(v58, v59);
    v62 = v61;
    __swift_destroy_boxed_opaque_existential_1(&v78);
    v63 = sub_2261555F8(v60, v62, &v74);

    *(v56 + 4) = v63;
    *(v56 + 12) = 2080;
    v64 = v76;
    v65 = v77;
    __swift_project_boxed_opaque_existential_1(&v75, v76);
    v66 = (*(v65 + 24))(v64, v65);
    v68 = v67;
    __swift_destroy_boxed_opaque_existential_1(&v75);
    v69 = sub_2261555F8(v66, v68, &v74);

    *(v56 + 14) = v69;
    _os_log_impl(&dword_22614A000, v54, v55, "unable to transform signal %s with to %s! Aborting tranformation", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA77C50](v57, -1, -1);
    MEMORY[0x22AA77C50](v56, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v78);
    __swift_destroy_boxed_opaque_existential_1(&v75);
  }

  __swift_destroy_boxed_opaque_existential_1(v81);
  return 0;
}

void sub_226153324(void *a1)
{
  if (!a1)
  {
    if (qword_28136C3E8 != -1)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

  v1 = [swift_unknownObjectRetain() featureNames];
  v2 = sub_22616FA38();

  v3 = 0;
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = (v5 + 63) >> 6;
  v79 = v2;
  while (v7)
  {
    v9 = v3;
LABEL_11:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    v14 = sub_22616F7F8();
    v15 = [a1 featureValueForName_];

    if (v15)
    {
      v16 = [v15 type];
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          if (qword_28136C3E8 != -1)
          {
            swift_once();
          }

          v57 = sub_22616F788();
          __swift_project_value_buffer(v57, qword_28136D4D0);

          v58 = v15;
          v59 = sub_22616F768();
          v60 = sub_22616FA78();
          v76 = v58;

          v21 = v59;
          v61 = v60;

          if (os_log_type_enabled(v21, v60))
          {
            v32 = swift_slowAlloc();
            logb = swift_slowAlloc();
            p_isa = &logb->isa;
            *v32 = 136315394;
            v62 = sub_2261555F8(v13, v12, &p_isa);

            *(v32 + 4) = v62;
            *(v32 + 12) = 2080;
            v63 = [v76 stringValue];
            v64 = sub_22616F828();
            v66 = v65;

            v67 = sub_2261555F8(v64, v66, &p_isa);

            *(v32 + 14) = v67;
            v2 = v79;
            _os_log_impl(&dword_22614A000, v21, v61, "Prediction feature: %s value: %s", v32, 0x16u);
            v39 = logb;
            goto LABEL_37;
          }

LABEL_38:

          v3 = v9;
        }

        else
        {
          if (v16 != 6)
          {
LABEL_25:
            if (qword_28136C3E8 != -1)
            {
              swift_once();
            }

            v40 = sub_22616F788();
            __swift_project_value_buffer(v40, qword_28136D4D0);

            v41 = sub_22616F768();
            v42 = sub_22616FA78();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v77 = v41;
              v44 = swift_slowAlloc();
              p_isa = v44;
              *v43 = 136315138;
              v45 = sub_2261555F8(v13, v12, &p_isa);

              *(v43 + 4) = v45;
              _os_log_impl(&dword_22614A000, v77, v42, "unsupported Prediction feature type: %s", v43, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v44);
              MEMORY[0x22AA77C50](v44, -1, -1);
              MEMORY[0x22AA77C50](v43, -1, -1);
            }

            else
            {
            }

            goto LABEL_44;
          }

          if (qword_28136C3E8 != -1)
          {
            swift_once();
          }

          v29 = sub_22616F788();
          __swift_project_value_buffer(v29, qword_28136D4D0);

          v30 = v15;
          v21 = sub_22616F768();
          v31 = sub_22616FA78();
          v76 = v30;

          if (os_log_type_enabled(v21, v31))
          {
            v32 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            p_isa = v72;
            *v32 = 136315394;
            v33 = sub_2261555F8(v13, v12, &p_isa);

            *(v32 + 4) = v33;
            *(v32 + 12) = 2080;
            v34 = [v76 dictionaryValue];
            sub_226154868(0, &qword_28136C380, 0x277CCABB0);
            sub_22616F7B8();

            v35 = sub_22616F7C8();
            v37 = v36;

            v38 = sub_2261555F8(v35, v37, &p_isa);

            *(v32 + 14) = v38;
            v2 = v79;
            _os_log_impl(&dword_22614A000, v21, v31, "Prediction feature: %s value: %s", v32, 0x16u);
            v39 = v72;
LABEL_37:
            swift_arrayDestroy();
            MEMORY[0x22AA77C50](v39, -1, -1);
            MEMORY[0x22AA77C50](v32, -1, -1);

            v68 = v76;
            goto LABEL_42;
          }

          v68 = v21;
LABEL_42:

          v3 = v9;
        }
      }

      else if (v16 == 1)
      {
        if (qword_28136C3E8 != -1)
        {
          swift_once();
        }

        v46 = sub_22616F788();
        __swift_project_value_buffer(v46, qword_28136D4D0);

        v47 = v15;
        v48 = sub_22616F768();
        v49 = sub_22616FA78();
        v50 = v47;

        if (os_log_type_enabled(v48, v49))
        {
          v78 = v49;
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          p_isa = v52;
          *v51 = 136315394;
          loga = v48;
          v53 = sub_2261555F8(v13, v12, &p_isa);

          *(v51 + 4) = v53;
          *(v51 + 12) = 2080;
          [v50 int64Value];
          v54 = sub_22616FC48();
          v56 = sub_2261555F8(v54, v55, &p_isa);

          *(v51 + 14) = v56;
          _os_log_impl(&dword_22614A000, loga, v78, "Prediction feature: %s value: %s", v51, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA77C50](v52, -1, -1);
          MEMORY[0x22AA77C50](v51, -1, -1);
        }

        else
        {
        }

LABEL_44:
        v3 = v9;
        v2 = v79;
      }

      else
      {
        if (v16 != 2)
        {
          goto LABEL_25;
        }

        if (qword_28136C3E8 != -1)
        {
          swift_once();
        }

        v17 = sub_22616F788();
        __swift_project_value_buffer(v17, qword_28136D4D0);

        v18 = v15;
        v19 = sub_22616F768();
        v20 = sub_22616FA78();
        v76 = v18;

        v21 = v19;
        v22 = v20;

        if (!os_log_type_enabled(v21, v20))
        {
          goto LABEL_38;
        }

        v23 = swift_slowAlloc();
        log = swift_slowAlloc();
        p_isa = &log->isa;
        *v23 = 136315394;
        v24 = sub_2261555F8(v13, v12, &p_isa);

        *(v23 + 4) = v24;
        *(v23 + 12) = 2080;
        [v76 doubleValue];
        v25 = sub_22616FA08();
        v27 = sub_2261555F8(v25, v26, &p_isa);

        *(v23 + 14) = v27;
        _os_log_impl(&dword_22614A000, v21, v22, "Prediction feature: %s value: %s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA77C50](log, -1, -1);
        v28 = v23;
        v2 = v79;
        MEMORY[0x22AA77C50](v28, -1, -1);

        v3 = v9;
      }
    }

    else
    {

      v3 = v9;
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

      swift_unknownObjectRelease();
      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_53:
  swift_once();
LABEL_47:
  v69 = sub_22616F788();
  __swift_project_value_buffer(v69, qword_28136D4D0);
  v81 = sub_22616F768();
  v70 = sub_22616FA78();
  if (os_log_type_enabled(v81, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_22614A000, v81, v70, "Prediction feature: No features", v71, 2u);
    MEMORY[0x22AA77C50](v71, -1, -1);
  }
}

void sub_226153DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_226152B40(a1, a2);
  if (!v5)
  {
    sub_226154868(0, &qword_28136C3A0, 0x277CBEAC0);
    sub_22616FA58();
LABEL_42:
    v32 = 1;
    goto LABEL_43;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 featureValueWithDouble_];
  swift_beginAccess();
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v6 + 24);
  *(v6 + 24) = 0x8000000000000000;
  sub_2261589A4(v9, 0xD000000000000020, 0x8000000226171C70, isUniquelyReferenced_nonNull_native);
  *(v6 + 24) = v62;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v62, 0xD000000000000020, 0x8000000226171C70);
  swift_endAccess();

  v11 = [v7 featureValueWithDouble_];
  swift_beginAccess();
  v12 = v11;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v6 + 24);
  *(v6 + 24) = 0x8000000000000000;
  sub_2261589A4(v12, 0xD000000000000020, 0x8000000226171C70, v13);
  *(v6 + 24) = v62;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v62, 0xD000000000000020, 0x8000000226171C70);
  swift_endAccess();

  sub_226158508();

  v15 = sub_2261526F8(v14, a3);

  if (!v15)
  {
    goto LABEL_16;
  }

  swift_unknownObjectRetain();
  v16 = sub_22616F7F8();
  v17 = [v15 featureValueForName_];

  swift_unknownObjectRelease();
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = swift_unknownObjectRetain();
  sub_226153324(v18);
  v19 = sub_22616BE00(v15);
  swift_unknownObjectRelease();
  if (v19 != 3)
  {

    swift_unknownObjectRelease();

    v32 = 0;
LABEL_43:
    LOBYTE(v59) = v32;
    return;
  }

  if (!a2)
  {
    if (qword_28136C3E8 != -1)
    {
      swift_once();
    }

    v33 = sub_22616F788();
    __swift_project_value_buffer(v33, qword_28136D4D0);
    v34 = sub_22616F768();
    v35 = sub_22616FA98();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22614A000, v34, v35, "Predicted Cycling but we don't have signals, Falling back to default Model", v36, 2u);
      MEMORY[0x22AA77C50](v36, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  swift_beginAccess();
  v20 = *(a2 + 16);
  v21 = *(v20 + 16);

  if (!v21)
  {
    goto LABEL_29;
  }

  v22 = sub_226155B2C(0xD00000000000001ELL, 0x8000000226171CC0);
  if ((v23 & 1) == 0)
  {

LABEL_29:
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    sub_22614E1F4(&v59, &qword_27D78CFB0, &unk_226170C10);
    if (qword_28136C3E8 != -1)
    {
      swift_once();
    }

    v37 = sub_22616F788();
    __swift_project_value_buffer(v37, qword_28136D4D0);
    v34 = sub_22616F768();
    v38 = sub_22616FA98();
    if (!os_log_type_enabled(v34, v38))
    {
      goto LABEL_39;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Predicted Cycling but we don't know the user preference, Falling back to default Model";
    goto LABEL_38;
  }

  sub_22614E190(*(v20 + 56) + 40 * v22, &v59);

  sub_22614E1F4(&v59, &qword_27D78CFB0, &unk_226170C10);
  sub_226154CAC(0xD00000000000001ELL, 0x8000000226171CC0, 1, &v59);
  if (!*(&v60 + 1))
  {
    sub_22614E1F4(&v59, &qword_27D78CFB0, &unk_226170C10);
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
  type metadata accessor for MapsIntelligenceDoubleSignal(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    if (qword_28136C3E8 != -1)
    {
      swift_once();
    }

    v41 = sub_22616F788();
    __swift_project_value_buffer(v41, qword_28136D4D0);
    v34 = sub_22616F768();
    v38 = sub_22616FA98();
    if (!os_log_type_enabled(v34, v38))
    {
      goto LABEL_39;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Predicted Cycling but unable to retrieve the user preference, Falling back to default Model";
LABEL_38:
    _os_log_impl(&dword_22614A000, v34, v38, v40, v39, 2u);
    MEMORY[0x22AA77C50](v39, -1, -1);
LABEL_39:

    swift_unknownObjectRelease();
LABEL_40:

LABEL_41:

    goto LABEL_42;
  }

  v24 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
  swift_beginAccess();
  sub_226150DB0(v58 + v24, &v59, &qword_27D78CEE0, &unk_226170C20);
  if (!*(&v60 + 1))
  {
    sub_22614E1F4(&v59, &qword_27D78CEE0, &unk_226170C20);
    goto LABEL_45;
  }

  sub_226154868(0, &qword_28136C380, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    v26 = 0.0;
    goto LABEL_46;
  }

  [v57 doubleValue];
  v26 = v25;
  v27 = *&v25;

  if ((v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v26 <= -9.22337204e18)
  {
    __break(1u);
LABEL_73:
    swift_once();
    goto LABEL_49;
  }

  if (v26 >= 9.22337204e18)
  {
    __break(1u);
LABEL_16:
    if (qword_28136C3E8 != -1)
    {
      swift_once();
    }

    v28 = sub_22616F788();
    __swift_project_value_buffer(v28, qword_28136D4D0);
    v29 = sub_22616F768();
    v30 = sub_22616FA98();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22614A000, v29, v30, "Prediction failed, trying default model", v31, 2u);
      MEMORY[0x22AA77C50](v31, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_42;
  }

LABEL_46:
  v27 = v26;
  if (v26 == 4)
  {

    swift_unknownObjectRelease();

    v32 = 0;
    goto LABEL_43;
  }

  if (qword_28136C3E8 != -1)
  {
    goto LABEL_73;
  }

LABEL_49:
  v42 = sub_22616F788();
  __swift_project_value_buffer(v42, qword_28136D4D0);
  v34 = sub_22616F768();
  v43 = sub_22616FA98();
  if (!os_log_type_enabled(v34, v43))
  {
LABEL_71:

    swift_unknownObjectRelease();

    goto LABEL_40;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  *&v59 = v45;
  *v44 = 136315138;
  if (v27 < 0xFFFFFFFF80000000)
  {
    goto LABEL_75;
  }

  if (v27 > 0x7FFFFFFF)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  buf = v44;
  v55 = v43;
  v54 = v45;
  if (v27 > 2)
  {
    if (v27 <= 4)
    {
      if (v27 == 3)
      {
        v46 = @"BICYCLE";
      }

      else
      {
        v46 = @"UNKNOWN_TRANSPORT_TYPE";
      }

      goto LABEL_68;
    }

    if (v27 == 5)
    {
      v46 = @"FERRY";
      goto LABEL_68;
    }

    if (v27 == 6)
    {
      v46 = @"RIDESHARE";
      goto LABEL_68;
    }

LABEL_64:
    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v27];
    goto LABEL_69;
  }

  if (!v27)
  {
    v46 = @"AUTOMOBILE";
    goto LABEL_68;
  }

  if (v27 == 1)
  {
    v46 = @"TRANSIT";
    goto LABEL_68;
  }

  if (v27 != 2)
  {
    goto LABEL_64;
  }

  v46 = @"WALKING";
LABEL_68:
  v47 = v46;
LABEL_69:
  v48 = v46;
  if (v48)
  {
    v49 = v48;
    v50 = sub_22616F828();
    v52 = v51;

    v53 = sub_2261555F8(v50, v52, &v59);

    *(buf + 4) = v53;
    _os_log_impl(&dword_22614A000, v34, v55, "Predicted Cycling but user preference is %s, Falling back to default Model", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x22AA77C50](v54, -1, -1);
    MEMORY[0x22AA77C50](buf, -1, -1);
    goto LABEL_71;
  }

LABEL_77:
  __break(1u);
}

uint64_t sub_226154868(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t MapsIntelligenceSignalPack.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_226159E2C(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_226154920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_226150EFC(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v7 = v16;
    v8 = v17;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v9);
    v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    sub_22616BAF4(v11, a2, a3, isUniquelyReferenced_nonNull_native, &v14, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v15);

    *v3 = v14;
  }

  else
  {
    sub_22614E1F4(a1, &qword_27D78CFB0, &unk_226170C10);
    sub_22616B6DC(a2, a3, v15);

    return sub_22614E1F4(v15, &qword_27D78CFB0, &unk_226170C10);
  }

  return result;
}

uint64_t sub_226154AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2261589A4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_226155B2C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_22614FFA4();
        v14 = v16;
      }

      result = sub_22616B944(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

double sub_226154BA0@<D0>(uint64_t a1@<X8>)
{
  sub_2261572A0(&v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_226150DB0(v8, &v4, &qword_27D78CFB8, &unk_226170C30);
  result = *&v5;
  v3 = v6;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_226154C14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_226150DB0(result, v6, &qword_27D78CFB0, &unk_226170C10);
    swift_beginAccess();

    sub_226154920(v6, a2, a3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_226154CAC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = result;
    result = swift_beginAccess();
    v10 = *(v4 + 16);
    if (*(v10 + 16))
    {

      v11 = sub_226155B2C(v9, a2);
      if (v12)
      {
        sub_22614E190(*(v10 + 56) + 40 * v11, v18);

        sub_226150EFC(v18, v19);
        if ((a3 & 1) == 0 || (v13 = v20, v14 = v21, __swift_project_boxed_opaque_existential_1(v19, v20), (dispatch thunk of MapsIntelligenceClientSignal.hasExpired()(v13, v14) & 1) == 0))
        {
          v15 = *(v4 + 16);
          if (*(v15 + 16))
          {

            v16 = sub_226155B2C(v9, a2);
            if (v17)
            {
              sub_22614E190(*(v15 + 56) + 40 * v16, a4);

              return __swift_destroy_boxed_opaque_existential_1(v19);
            }
          }
        }

        *(a4 + 32) = 0;
        *a4 = 0u;
        *(a4 + 16) = 0u;
        return __swift_destroy_boxed_opaque_existential_1(v19);
      }
    }
  }

  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_226154E14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_226155B2C(a1, a2);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v8 = 0;
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    goto LABEL_6;
  }

  sub_22614E190(*(v5 + 56) + 40 * v6, v10);

  v8 = 1;
LABEL_6:
  sub_22614E1F4(v10, &qword_27D78CFB0, &unk_226170C10);
  return v8;
}

void sub_226154ED8()
{
  v1 = v0;
  v29[0] = 2108717;
  v29[1] = 0xE300000000000000;
  MEMORY[0x22AA77270]();
  MEMORY[0x22AA77270](2960672, 0xE300000000000000);
  v30 = 2108717;
  v31 = 0xE300000000000000;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_226155574(*(v2 + 16), 0);
    v5 = sub_226157148(v29, v4 + 4, v3, v2);
    v6 = v29[0];
    swift_bridgeObjectRetain_n();
    sub_226157C58(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v29[0] = v4;
  sub_226156158(v29);

  v7 = *(v29[0] + 2);
  if (v7)
  {
    v8 = (v29[0] + 40);
    do
    {
      v9 = *(v1 + 16);
      if (*(v9 + 16))
      {
        v11 = *(v8 - 1);
        v10 = *v8;

        v12 = sub_226155B2C(v11, v10);
        if (v13)
        {
          sub_22614E190(*(v9 + 56) + 40 * v12, v29);

          sub_22614E190(v29, &v27);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
          type metadata accessor for MapsIntelligenceBaseSignal(0);
          v14 = swift_dynamicCast();
          v15 = (*(*v26 + 248))(v14);
          v17 = v16;

          if (v17)
          {
            v27 = 10;
            v28 = 0xE100000000000000;
            MEMORY[0x22AA77270](v11, v10);

            MEMORY[0x22AA77270](2112032, 0xE300000000000000);
            MEMORY[0x22AA77270](v15, v17);

            MEMORY[0x22AA77270](v27, v28);

            __swift_destroy_boxed_opaque_existential_1(v29);
            goto LABEL_9;
          }

          __swift_destroy_boxed_opaque_existential_1(v29);
        }

        else
        {
        }
      }

LABEL_9:
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  MEMORY[0x22AA77270](0xD000000000000010, 0x8000000226171D70);
  if (qword_28136C418 != -1)
  {
    swift_once();
  }

  v18 = sub_22616F788();
  __swift_project_value_buffer(v18, qword_28136D500);
  v20 = v30;
  v19 = v31;

  v21 = sub_22616F768();
  v22 = sub_22616FA78();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29[0] = v24;
    *v23 = 136315138;
    v25 = sub_2261555F8(v20, v19, v29);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_22614A000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x22AA77C50](v24, -1, -1);
    MEMORY[0x22AA77C50](v23, -1, -1);
  }

  else
  {
  }
}

uint64_t MapsIntelligenceSignalPack.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_2261553A0@<D0>(uint64_t a1@<X8>)
{
  sub_2261572A0(&v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_226150DB0(v8, &v4, &qword_27D78CFB8, &unk_226170C30);

  result = *&v5;
  v3 = v6;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v7;
  return result;
}

void *sub_226155430()
{
  v1 = sub_226156B90(*v0);

  return v1;
}

uint64_t sub_2261554F4()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D500);
  __swift_project_value_buffer(v0, qword_28136D500);
  return sub_22616F778();
}

void *sub_226155574(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE0, &unk_226170D30);
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

unint64_t sub_2261555F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2261556C4(v11, 0, 0, 1, a1, a2);
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
    sub_22614D234(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2261556C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2261557D0(a5, a6);
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
    result = sub_22616FBB8();
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

void *sub_2261557D0(uint64_t a1, unint64_t a2)
{
  v3 = sub_22615581C(a1, a2);
  sub_22615594C(&unk_283958D48);
  return v3;
}

void *sub_22615581C(uint64_t a1, unint64_t a2)
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

  v6 = sub_226162334(v5, 0);
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

  result = sub_22616FBB8();
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
        v10 = sub_22616F908();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_226162334(v10, 0);
        result = sub_22616FB88();
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

uint64_t sub_22615594C(uint64_t result)
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

  result = sub_226155A38(result, v11, 1, v3);
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

char *sub_226155A38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFD8, &qword_226170D28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

unint64_t sub_226155B2C(uint64_t a1, uint64_t a2)
{
  sub_22616FCB8();
  sub_22616F8B8();
  v4 = sub_22616FCD8();

  return sub_226155D14(a1, a2, v4);
}

unint64_t sub_226155BA4(uint64_t a1)
{
  type metadata accessor for ModuleType();
  sub_226157F80(&qword_28136C3B8, type metadata accessor for ModuleType, &protocol conformance descriptor for ModuleType);
  v2 = sub_22616F7D8();

  return sub_226155DCC(a1, v2);
}

unint64_t sub_226155C3C(uint64_t a1)
{
  sub_22616F828();
  sub_22616FCB8();
  sub_22616F8B8();
  v2 = sub_22616FCD8();

  return sub_226155F8C(a1, v2);
}

unint64_t sub_226155CD0(uint64_t a1)
{
  v2 = sub_22616FB48();

  return sub_226156090(a1, v2);
}

unint64_t sub_226155D14(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22616FC68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_226155DCC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for ModuleType();
  Description = v4[-1].Description;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = Description[2];
    v12 = (Description + 2);
    v11 = v13;
    v14 = *(v12 + 7);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_226157F80(&qword_28136C3B0, type metadata accessor for ModuleType, &protocol conformance descriptor for ModuleType);
      v15 = sub_22616F7E8();
      (*(v12 - 1))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_226155F8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22616F828();
      v8 = v7;
      if (v6 == sub_22616F828() && v8 == v9)
      {
        break;
      }

      v11 = sub_22616FC68();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226156090(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_226157E14(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AA774E0](v9, a1);
      sub_226157E70(v9);
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

uint64_t sub_226156158(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_226159884(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2261561C4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2261561C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22616FC38();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22616F9C8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22615638C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2261562BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2261562BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22616FC68(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22615638C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_226158BA8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_226156968((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22616FC68();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22616FC68();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_226158BBC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_226158BBC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_226156968((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_226158BA8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_226158B1C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22616FC68(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_226156968(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22616FC68() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22616FC68() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_226156B90(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90] + 32;
  if (v5)
  {
    while (1)
    {
      v12 = v9;
LABEL_8:
      v13 = __clz(__rbit64(v5)) | (v12 << 6);
      v14 = (*(v2 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      result = sub_22614E190(*(v2 + 56) + 40 * v13, v34);
      *&v33 = v15;
      *(&v33 + 1) = v16;
      v39 = v35;
      v37 = v34[0];
      v38 = v34[1];
      v36 = v33;
      if (v8)
      {

        v17 = v10;
        v18 = __OFSUB__(v8--, 1);
        if (v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v19 = v10[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFD0, &qword_226170D20);
        v17 = swift_allocObject();
        v22 = (_swift_stdlib_malloc_size(v17) - 32) / 56;
        v17[2] = v21;
        v17[3] = 2 * v22;
        v23 = v17 + 4;
        v24 = v10[3] >> 1;
        v11 = &v17[7 * v24 + 4];
        v25 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
        if (v10[2])
        {
          if (v17 != v10 || v23 >= &v10[7 * v24 + 4])
          {
            memmove(v23, v10 + 4, 56 * v24);
          }

          v10[2] = 0;
        }

        else
        {
        }

        v18 = __OFSUB__(v25, 1);
        v8 = v25 - 1;
        if (v18)
        {
          goto LABEL_33;
        }
      }

      v5 &= v5 - 1;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      *(v11 + 48) = v39;
      *(v11 + 16) = v28;
      *(v11 + 32) = v29;
      *v11 = v27;
      v11 += 56;
      v10 = v17;
      v9 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v30 = v10[3];
  if (v30 < 2)
  {
    return v10;
  }

  v31 = v30 >> 1;
  v18 = __OFSUB__(v31, v8);
  v32 = v31 - v8;
  if (!v18)
  {
    v10[2] = v32;
    return v10;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_226156E10(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v4 + 16);

  v10 = v8 + 64;
  v11 = -1 << *(v8 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v8 + 64);
  if (!a2)
  {
LABEL_19:
    v14 = 0;
    a3 = 0;
LABEL_26:
    *a1 = v8;
    a1[1] = v10;
    a1[2] = ~v11;
    a1[3] = v14;
    a1[4] = v13;
    return a3;
  }

  if (!a3)
  {
    v14 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = -1 << *(v8 + 32);
    v30 = a1;
    result = 0;
    v14 = 0;
    v15 = (63 - v11) >> 6;
    v16 = 1;
    while (v13)
    {
      a1 = a3;
LABEL_15:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v14 << 6);
      v21 = (*(v8 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      sub_22614E190(*(v8 + 56) + 40 * v20, &v32);
      *&v31 = v22;
      *(&v31 + 1) = v23;
      v24 = v34;
      v38 = v34;
      v25 = v33;
      v26 = v32;
      v36 = v32;
      v37 = v33;
      v35 = v31;
      *a2 = v31;
      *(a2 + 16) = v26;
      *(a2 + 32) = v25;
      *(a2 + 48) = v24;
      a3 = a1;
      if (v16 == a1)
      {

        goto LABEL_24;
      }

      a2 += 56;

      result = v16;
      if (__OFADD__(v16++, 1))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v17 = v14;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v18 >= v15)
      {
        break;
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        a1 = a3;
        v14 = v18;
        goto LABEL_15;
      }
    }

    v13 = 0;
    if (v15 <= v14 + 1)
    {
      v28 = v14 + 1;
    }

    else
    {
      v28 = v15;
    }

    v14 = v28 - 1;
    a3 = result;
LABEL_24:
    v11 = v29;
    a1 = v30;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_226156FF0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_226157148(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2261572A0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = -1 << *(v4 + 32);
  v6 = ~v5;
  *a1 = v4;
  v9 = *(v4 + 64);
  v7 = v4 + 64;
  v8 = v9;
  v10 = -v5;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  a1[1] = v7;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v11 & v8;
  return result;
}

uint64_t _s16MapsIntelligence0aB10SignalPackC10dictionaryACSDySSSdG_tcfC_0(uint64_t a1)
{
  v84 = sub_22616F758();
  v2 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v87 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v86[-1].Description;
  MEMORY[0x28223BE20](v86);
  v85 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v94 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v72 - v9;
  type metadata accessor for MapsIntelligenceSignalPack();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  v73 = sub_226159E2C(MEMORY[0x277D84F90]);
  *(v10 + 16) = v73;
  v72 = v10 + 16;
  v95 = sub_226159E2C(v11);
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v83 = (v2 + 56);
  v82 = 1;
  v81 = (Description + 104);
  v80 = (Description + 16);
  v79 = (Description + 8);
  v78 = (v2 + 32);
  v74 = v10;

  v88 = a1;

  v17 = 0;
  v77 = a1 + 64;
  v76 = v16;
  while (v15)
  {
LABEL_11:
    v20 = __clz(__rbit64(v15)) | (v17 << 6);
    v21 = *(v88 + 56);
    v22 = (*(v88 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v92 = v24;
    v90 = v23;
    v25 = *(v21 + 8 * v20);
    v26 = *v83;
    v27 = v93;
    v28 = v84;
    (*v83)(v93, 1, 1, v84);
    v91 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
    v29 = swift_allocObject();
    v30 = v85;
    v31 = v86;
    (*v81)(v85, v82, v86);
    sub_226150DB0(v27, v94, &qword_27D78CFE8, "6)");
    v32 = (v29 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
    *v32 = 0u;
    v32[1] = 0u;
    v33 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
    v26(v29 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, 1, 1, v28);
    (*v80)(v29 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v30, v31);
    v34 = v90;

    v35 = v87;
    sub_22616F748();
    (*v79)(v30, v31);
    v36 = v34;
    (*v78)(v29 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate, v35, v28);
    swift_beginAccess();
    sub_226157F18(v94, v29 + v33, &qword_27D78CFE8, "6)");
    swift_endAccess();
    v37 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    v38 = [v37 initWithDouble_];
    v105 = sub_22614C5C0();
    *&v104 = v38;
    sub_22614E1F4(v93, &qword_27D78CFE8, "6)");
    swift_beginAccess();
    sub_226157F18(&v104, v32, &qword_27D78CEE0, &unk_226170C20);
    swift_endAccess();

    v39 = v91;
    v105 = v91;
    v40 = sub_226157F80(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal, &protocol conformance descriptor for MapsIntelligenceBaseSignal);
    v106 = v40;
    *&v104 = v29;
    sub_226150EFC(&v104, v103);
    v41 = v95;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v41;
    v43 = __swift_mutable_project_boxed_opaque_existential_1(v103, v103[3]);
    v89 = &v72;
    MEMORY[0x28223BE20](v43);
    v45 = (&v72 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45);
    v47 = *v45;
    v100 = v39;
    v101 = v40;
    v48 = v39;
    *&v99 = v47;
    v49 = v92;
    v50 = v36;
    v51 = sub_226155B2C(v92, v36);
    v53 = *(v41 + 16);
    v54 = (v52 & 1) == 0;
    v55 = __OFADD__(v53, v54);
    v56 = v53 + v54;
    if (v55)
    {
      goto LABEL_22;
    }

    v57 = v52;
    if (*(v41 + 24) >= v56)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v69 = v51;
        sub_22614FDFC();
        v51 = v69;
      }
    }

    else
    {
      sub_226150400(v56, isUniquelyReferenced_nonNull_native);
      v51 = sub_226155B2C(v49, v36);
      if ((v57 & 1) != (v58 & 1))
      {
        goto LABEL_24;
      }
    }

    v59 = v102;
    v95 = v102;
    if (v57)
    {
      v18 = (v102[7] + 40 * v51);
      __swift_destroy_boxed_opaque_existential_1(v18);
      sub_226150EFC(&v99, v18);
    }

    else
    {
      v60 = v51;
      v61 = __swift_mutable_project_boxed_opaque_existential_1(&v99, v100);
      v75 = &v72;
      MEMORY[0x28223BE20](v61);
      v63 = (&v72 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v64 + 16))(v63);
      v65 = *v63;
      v97 = v48;
      v98 = v40;
      *&v96 = v65;
      v59[(v60 >> 6) + 8] |= 1 << v60;
      v66 = (v59[6] + 16 * v60);
      *v66 = v49;
      v66[1] = v50;
      sub_226150EFC(&v96, v59[7] + 40 * v60);
      v67 = v59[2];
      v55 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v55)
      {
        goto LABEL_23;
      }

      v59[2] = v68;
      __swift_destroy_boxed_opaque_existential_1(&v99);
    }

    v15 &= v15 - 1;
    __swift_destroy_boxed_opaque_existential_1(v103);
    v12 = v77;
    v16 = v76;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      swift_beginAccess();
      v70 = v74;
      *(v74 + 16) = v95;

      return v70;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_22616FC98();
  __break(1u);
  return result;
}

unint64_t sub_226157C64()
{
  result = qword_27D78CFC0;
  if (!qword_27D78CFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78CFC8, &qword_226170C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78CFC0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_226157F18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_226157F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MapsIntelligenceFeatureProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84FA0];
  *(v0 + 24) = sub_22615A090(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_226158134(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_22615817C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t MapsIntelligenceFeatureProvider.init()()
{
  *(v0 + 16) = MEMORY[0x277D84FA0];
  *(v0 + 24) = sub_22615A090(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_226158264(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();

  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_2261589A4(v8, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + 24) = v11;
  swift_endAccess();
  swift_beginAccess();

  sub_226158CC0(&v11, a2, a3);
  swift_endAccess();
}

uint64_t sub_226158358(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_226154AA8(0, a1, a2);
  swift_endAccess();
  swift_beginAccess();
  sub_226159584(a1, a2);
  swift_endAccess();
}

void *sub_226158400(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_226155B2C(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_226158508()
{
  v1 = v0;
  v26 = 0xD000000000000015;
  v27 = 0x8000000226171DD0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_226155574(*(v2 + 16), 0);
    v5 = sub_226156FF0(&v25, v4 + 4, v3, v2);
    v6 = v25;
    swift_bridgeObjectRetain_n();
    sub_226157C58(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v25 = v4;
  sub_226156158(&v25);

  v23 = v25;
  v7 = *(v25 + 2);
  if (v7)
  {
    swift_beginAccess();
    v8 = (v23 + 40);
    do
    {
      v10 = *(v1 + 24);
      if (*(v10 + 16))
      {
        v12 = *(v8 - 1);
        v11 = *v8;

        v13 = sub_226155B2C(v12, v11);
        if (v14)
        {
          v9 = *(*(v10 + 56) + 8 * v13);

          [v9 doubleValue];

          v24[0] = 0;
          v24[1] = 0xE000000000000000;
          MEMORY[0x22AA77270](10, 0xE100000000000000);
          MEMORY[0x22AA77270](v12, v11);

          MEMORY[0x22AA77270](2112032, 0xE300000000000000);
          sub_22616FA18();
          MEMORY[0x22AA77270](0, 0xE000000000000000);
        }

        else
        {
        }
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  MEMORY[0x22AA77270](0xD000000000000010, 0x8000000226171D70);
  if (qword_28136C410 != -1)
  {
    swift_once();
  }

  v15 = sub_22616F788();
  __swift_project_value_buffer(v15, qword_28136D4E8);
  v17 = v26;
  v16 = v27;

  v18 = sub_22616F768();
  v19 = sub_22616FA78();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24[0] = v21;
    *v20 = 136315138;
    v22 = sub_2261555F8(v17, v16, v24);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_22614A000, v18, v19, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x22AA77C50](v21, -1, -1);
    MEMORY[0x22AA77C50](v20, -1, -1);
  }

  else
  {
  }
}

uint64_t MapsIntelligenceFeatureProvider.deinit()
{

  return v0;
}

uint64_t MapsIntelligenceFeatureProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226158924()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D4E8);
  __swift_project_value_buffer(v0, qword_28136D4E8);
  return sub_22616F778();
}

void sub_2261589A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226155B2C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2261506C4(v16, a4 & 1);
      v11 = sub_226155B2C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22616FC98();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22614FFA4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_226158B1C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_226158BA8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_226158BBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D088, &qword_226170DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_226158CC0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22616FCB8();
  sub_22616F8B8();
  v8 = sub_22616FCD8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22616FC68() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_226159070(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_226158E10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D090, &qword_226170DD8);
  result = sub_22616FB78();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22616FCB8();
      sub_22616F8B8();
      result = sub_22616FCD8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_226159070(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_226158E10(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2261591F0();
      goto LABEL_16;
    }

    sub_22615934C(v8 + 1);
  }

  v10 = *v4;
  sub_22616FCB8();
  sub_22616F8B8();
  result = sub_22616FCD8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22616FC68();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22616FC88();
  __break(1u);
  return result;
}

void *sub_2261591F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D090, &qword_226170DD8);
  v2 = *v0;
  v3 = sub_22616FB68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22615934C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D090, &qword_226170DD8);
  result = sub_22616FB78();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22616FCB8();

      sub_22616F8B8();
      result = sub_22616FCD8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_226159584(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22616FCB8();
  sub_22616F8B8();
  v6 = sub_22616FCD8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22616FC68() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2261591F0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2261596C0(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_2261596C0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22616FB38();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22616FCB8();

        sub_22616F8B8();
        v10 = sub_22616FCD8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_226159898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF20, &qword_226170DB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D080, &qword_226170DB8);
    v7 = sub_22616FC08();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226150DB0(v9, v5, &qword_27D78CF20, &qword_226170DB0);
      result = sub_226155BA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ModuleType();
      result = (*(v15[-1].Description + 4))(v14 + *(v15[-1].Description + 9) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_226159A80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF30, &unk_226170DC0);
    v3 = sub_22616FC08();
    v4 = a1 + 32;

    while (1)
    {
      sub_226150DB0(v4, &v17, &qword_27D78CF48, &qword_226170A58);
      v5 = v17;
      v6 = v18;
      result = sub_226155B2C(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 72 * result;
      *v10 = v19;
      v11 = v20;
      v12 = v21;
      v13 = v22;
      *(v10 + 64) = v23;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *(v10 + 16) = v11;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 88;
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

unint64_t sub_226159BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D070, &unk_226170DA0);
    v3 = sub_22616FC08();
    v4 = a1 + 32;

    while (1)
    {
      sub_226150DB0(v4, &v11, &qword_27D78D078, &qword_226170EA0);
      v5 = v11;
      result = sub_226155C3C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22614C5B0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_226159CF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D060, &qword_226170D90);
    v3 = sub_22616FC08();
    v4 = a1 + 32;

    while (1)
    {
      sub_226150DB0(v4, v13, &qword_27D78D068, &qword_226170D98);
      result = sub_226155CD0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22614C5B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_226159E2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF58, &qword_226170DE0);
    v3 = sub_22616FC08();
    v4 = a1 + 32;

    while (1)
    {
      sub_226150DB0(v4, &v13, &qword_27D78D098, &qword_226170DE8);
      v5 = v13;
      v6 = v14;
      result = sub_226155B2C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_226150EFC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_226159F60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D050, &unk_226170D80);
    v3 = sub_22616FC08();
    v4 = a1 + 32;

    while (1)
    {
      sub_226150DB0(v4, &v13, &qword_27D78D058, &unk_2261713F0);
      v5 = v13;
      v6 = v14;
      result = sub_226155B2C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22614C5B0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22615A090(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF60, &qword_226170A70);
    v3 = sub_22616FC08();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_226155B2C(v5, v6);
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

uint64_t sub_22615A2E0()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_27D78DCC8);
  __swift_project_value_buffer(v0, qword_27D78DCC8);
  return sub_22616F778();
}

id sub_22615A360(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_22616F6F8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL;
  swift_beginAccess();
  sub_226150DB0(v1 + v13, v5, &qword_27D78D0A0, &unk_226170E80);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_22614E1F4(v5, &qword_27D78D0A0, &unk_226170E80);
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v14 = sub_22616F788();
    __swift_project_value_buffer(v14, qword_28136D470);
    v15 = sub_22616F768();
    v16 = sub_22616FA98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22614A000, v15, v16, "Error making prediction: No model URL", v17, 2u);
      MEMORY[0x22AA77C50](v17, -1, -1);
    }

    return 0;
  }

  (*(v7 + 32))(v12, v5, v6);
  sub_226154868(0, &qword_28136C388, 0x277CBFF20);
  (*(v7 + 16))(v10, v12, v6);
  v28 = sub_226163960(v10);
  v36 = 0;
  v29 = [v28 predictionFromFeatures:a1 error:&v36];
  if (!v29)
  {
    v33 = v36;
    v34 = sub_22616F658();

    swift_willThrow();
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v18 = sub_22616F788();
    __swift_project_value_buffer(v18, qword_28136D470);
    v19 = v34;
    v20 = sub_22616F768();
    v21 = sub_22616FA98();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = sub_22616FCA8();
      v26 = sub_2261555F8(v24, v25, &v36);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22614A000, v20, v21, "Error making prediction: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x22AA77C50](v23, -1, -1);
      MEMORY[0x22AA77C50](v22, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v12, v6);
    return 0;
  }

  v30 = *(v7 + 8);
  v31 = v29;
  v32 = v36;
  v30(v12, v6);

  return v31;
}

id sub_22615A83C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_22616F6F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL;
  swift_beginAccess();
  sub_226150DB0(v0 + v11, v3, &qword_27D78D0A0, &unk_226170E80);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_22614E1F4(v3, &qword_27D78D0A0, &unk_226170E80);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_226154868(0, &qword_28136C388, 0x277CBFF20);
    (*(v5 + 16))(v8, v10, v4);
    v12 = sub_226163960(v8);
    (*(v5 + 8))(v10, v4);
    return v12;
  }
}

uint64_t sub_22615ABD4(int a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t), uint64_t a4, char *a5)
{
  v82 = a4;
  v83 = a5;
  v80 = a2;
  v81 = a3;
  v7 = sub_22616F6F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v79 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v75 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v75 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v75 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v75 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v75 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  *(v5 + 16) = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  *(v5 + 24) = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v25 = *(v8 + 56);
  v25(v5 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData) = 0;
  *(v5 + 32) = a1;
  v26 = v81;
  *(v5 + 40) = v80;
  *(v5 + 48) = v26;
  v27 = v83;
  *(v5 + 56) = v82;
  *(v5 + 64) = v27;
  sub_22615BFDC(v24);
  v83 = v24;
  sub_226150DB0(v24, v22, &qword_27D78D0A0, &unk_226170E80);
  v28 = *(v8 + 48);
  v29 = v28(v22, 1, v7);
  v78 = v8;
  if (v29 != 1)
  {
    v81 = v28;
    v39 = v79;
    (*(v8 + 32))(v79, v22, v7);
    (*(v8 + 16))(v19, v39, v7);
    v82 = v7;
    v25(v19, 0, 1, v7);
    v40 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL;
    swift_beginAccess();
    sub_22615FCA8(v19, v5 + v40);
    swift_endAccess();
    v37 = v5;
    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v41 = sub_22616F788();
    __swift_project_value_buffer(v41, qword_28136D4A0);

    v42 = sub_22616F768();
    v43 = sub_22616FA78();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v81;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v84[0] = v47;
      *v46 = 136315138;
      v48 = v5 + v40;
      v49 = v76;
      sub_226150DB0(v48, v76, &qword_27D78D0A0, &unk_226170E80);
      v50 = v82;
      v51 = v45(v49, 1, v82);
      v52 = v37;

      if (v51 == 1)
      {
        __break(1u);
        goto LABEL_24;
      }

      v54 = sub_22616F6B8();
      v56 = v55;
      v57 = v49;
      v58 = v78;
      (*(v78 + 8))(v57, v50);
      v59 = sub_2261555F8(v54, v56, v84);

      *(v46 + 4) = v59;
      _os_log_impl(&dword_22614A000, v42, v43, "Model : %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x22AA77C50](v47, -1, -1);
      MEMORY[0x22AA77C50](v46, -1, -1);

      v60 = v79;
      v37 = v52;
    }

    else
    {

      v50 = v82;
      v58 = v78;
      v60 = v79;
    }

    sub_22615EBDC();
    (*(v58 + 8))(v60, v50);
LABEL_22:
    sub_22614E1F4(v83, &qword_27D78D0A0, &unk_226170E80);
    return v37;
  }

  sub_22614E1F4(v22, &qword_27D78D0A0, &unk_226170E80);
  sub_22615E570(v19);
  v30 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL;
  swift_beginAccess();
  sub_22615FCA8(v19, v5 + v30);
  swift_endAccess();
  v82 = v5;
  v31 = v77;
  sub_226150DB0(v5 + v30, v77, &qword_27D78D0A0, &unk_226170E80);
  v32 = v28(v31, 1, v7);
  sub_22614E1F4(v31, &qword_27D78D0A0, &unk_226170E80);
  if (v32 == 1)
  {
    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v33 = sub_22616F788();
    __swift_project_value_buffer(v33, qword_28136D4A0);
    v34 = sub_22616F768();
    v35 = sub_22616FA98();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v82;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22614A000, v34, v35, "Model url not found", v38, 2u);
      MEMORY[0x22AA77C50](v38, -1, -1);
    }

    goto LABEL_21;
  }

  v61 = v7;
  if (qword_28136C3D8 != -1)
  {
    swift_once();
  }

  v62 = sub_22616F788();
  __swift_project_value_buffer(v62, qword_28136D4A0);
  v63 = v82;

  v64 = sub_22616F768();
  v65 = sub_22616FA78();
  if (!os_log_type_enabled(v64, v65))
  {

    v37 = v63;
    goto LABEL_21;
  }

  v66 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v84[0] = v67;
  *v66 = 136315138;
  v68 = v63 + v30;
  v69 = v75;
  sub_226150DB0(v68, v75, &qword_27D78D0A0, &unk_226170E80);
  v70 = v28(v69, 1, v61);

  if (v70 != 1)
  {
    v71 = sub_22616F6B8();
    v73 = v72;
    (*(v78 + 8))(v69, v61);
    v74 = sub_2261555F8(v71, v73, v84);

    *(v66 + 4) = v74;
    _os_log_impl(&dword_22614A000, v64, v65, "Model : %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x22AA77C50](v67, -1, -1);
    MEMORY[0x22AA77C50](v66, -1, -1);

    v37 = v82;
LABEL_21:
    sub_22615EBDC();
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22615B410(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - v4 + 24;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0C8, &unk_226170FD0);
  MEMORY[0x28223BE20](v6);
  v8 = (v25 - v7 + 24);
  v9 = swift_projectBox();
  sub_226150DB0(a1, v8, &qword_27D78D0C8, &unk_226170FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v8;
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v11 = sub_22616F788();
    __swift_project_value_buffer(v11, qword_28136D470);
    v12 = v10;
    v13 = sub_22616F768();
    v14 = sub_22616FA98();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_22616FCA8();
      v19 = sub_2261555F8(v17, v18, v25);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_22614A000, v13, v14, "Error Compiling model: %s, lets just load it", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x22AA77C50](v16, -1, -1);
      MEMORY[0x22AA77C50](v15, -1, -1);
    }

    else
    {
    }

    v22 = sub_22616F6F8();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  }

  else
  {
    v20 = sub_22616F6F8();
    v21 = *(v20 - 8);
    (*(v21 + 32))(v5, v8, v20);
    (*(v21 + 56))(v5, 0, 1, v20);
  }

  swift_beginAccess();
  sub_22615FCA8(v5, v9);
  return sub_22616FAB8();
}

void sub_22615B780(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v46 = sub_22616F668();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v48 = sub_22616F6F8();
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() clientWithIdentifier_];
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = sub_22616F7F8();
  v13 = *(v2 + 40);
  v43 = *(v2 + 48);
  v14 = sub_22616F7F8();
  v47 = v9;
  v15 = [v9 levelForFactor:v12 withNamespaceName:v14];

  if (v15)
  {
    if ([v15 levelOneOfCase] == 100)
    {
      v43 = v15;
      v16 = [v15 fileValue];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 path];

        if (v18)
        {
          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }

    if ([v15 levelOneOfCase] == 101)
    {
      v43 = v15;
      v24 = [v15 directoryValue];
      if (v24)
      {
        v25 = v24;
        v18 = [v24 path];

        if (v18)
        {
LABEL_14:
          sub_22616F828();

          v26 = dispatch_semaphore_create(0);
          v27 = swift_allocBox();
          v29 = v28;
          v30 = *(v50 + 56);
          v31 = v48;
          v30(v28, 1, 1, v48);
          v42 = sub_226154868(0, &qword_28136C388, 0x277CBFF20);
          v30(v6, 1, 1, v31);
          (*(v44 + 104))(v45, *MEMORY[0x277CC91D8], v46);
          sub_22616F6D8();
          v32 = swift_allocObject();
          *(v32 + 16) = v27;
          *(v32 + 24) = v26;

          v33 = v26;
          sub_22616FAC8();

          (*(v50 + 8))(v8, v31);
          sub_22616FAA8();

          swift_beginAccess();
          sub_226150DB0(v29, v49, &qword_27D78D0A0, &unk_226170E80);

          return;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v34 = sub_22616F788();
    __swift_project_value_buffer(v34, qword_28136D4A0);

    v35 = sub_22616F768();
    v36 = sub_22616FA98();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_2261555F8(v10, v11, v51);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_2261555F8(v13, v43, v51);
      _os_log_impl(&dword_22614A000, v35, v36, "Factor: %s in namespace: %s in not a file nor a directory", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](v38, -1, -1);
      MEMORY[0x22AA77C50](v37, -1, -1);
    }
  }

  else
  {
    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v19 = sub_22616F788();
    __swift_project_value_buffer(v19, qword_28136D4A0);

    v20 = sub_22616F768();
    v21 = sub_22616FA98();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_2261555F8(v10, v11, v51);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2261555F8(v13, v43, v51);
      _os_log_impl(&dword_22614A000, v20, v21, "Failed to retrieve factor: %s in namespace: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](v23, -1, -1);
      MEMORY[0x22AA77C50](v22, -1, -1);
    }
  }

  v39 = v49;
  v40 = *(v50 + 56);
  v41 = v48;

  v40(v39, 1, 1, v41);
}

uint64_t sub_22615BFDC@<X0>(char *a1@<X8>)
{
  v325 = a1;
  v331 = *MEMORY[0x277D85DE8];
  v323 = sub_22616F668();
  v322 = *(v323 - 1);
  MEMORY[0x28223BE20](v323);
  v2 = v296 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_22616F6F8();
  v3 = *(v326 - 8);
  v4 = MEMORY[0x28223BE20](v326);
  v6 = v296 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v296 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v296 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v304 = v296 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v309 = v296 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v299 = v296 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v313 = v296 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v296 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v296 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v296 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v308 = v296 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v311 = v296 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = v296 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v303 = v296 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v310 = v296 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v306 = v296 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v314 = v296 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v307 = v296 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v315 = v296 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v318 = v296 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v317 = v296 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v321 = v296 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v320 = v296 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = v296 - v57;
  if (qword_28136C3D8 != -1)
  {
    swift_once();
  }

  v297 = v9;
  v300 = v26;
  v298 = v6;
  v301 = v23;
  v302 = v12;
  v305 = v29;
  v59 = sub_22616F788();
  v312 = __swift_project_value_buffer(v59, qword_28136D4A0);
  v60 = sub_22616F768();
  v61 = sub_22616FA88();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_22614A000, v60, v61, "getting compiled path", v62, 2u);
    MEMORY[0x22AA77C50](v62, -1, -1);
  }

  v63 = v326;
  v327 = *(v3 + 7);
  v327(v58, 1, 1, v326);
  v64 = v58;
  v65 = objc_opt_self();
  v66 = [v65 defaultManager];
  v329 = 0;
  v67 = [v66 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v329];

  v68 = v329;
  v324 = v3 + 56;
  if (!v67)
  {
    v86 = v64;
    goto LABEL_14;
  }

  sub_22616F6A8();
  v69 = v68;

  v329 = 0xD00000000000001ALL;
  v330 = 0x8000000226171FD0;
  v70 = v322;
  v71 = v323;
  (*(v322 + 13))(v2, *MEMORY[0x277CC91D8], v323);
  sub_22615FC54();
  v316 = v65;
  v72 = v320;
  sub_22616F6E8();
  (*(v70 + 1))(v2, v71);
  v73 = v3;
  v75 = v3 + 8;
  v74 = *(v3 + 1);
  v74(v35, v63);
  v327(v72, 0, 1, v63);
  v76 = v72;
  v77 = v316;
  sub_22615FCA8(v76, v64);
  v78 = [v77 defaultManager];
  v323 = v64;
  v79 = v321;
  sub_226150DB0(v64, v321, &qword_27D78D0A0, &unk_226170E80);
  v320 = v73;
  v80 = *(v73 + 6);
  result = v80(v79, 1, v63);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22616F6C8();
    v82 = sub_22616F7F8();

    v74(v79, v63);
    v83 = [v78 fileExistsAtPath_];

    v84 = v74;
    if (v83)
    {
      goto LABEL_11;
    }

    v85 = [v77 defaultManager];
    v86 = v323;
    v87 = v317;
    sub_226150DB0(v323, v317, &qword_27D78D0A0, &unk_226170E80);
    v322 = v80;
    result = v80(v87, 1, v63);
    if (result != 1)
    {
      v88 = sub_22616F688();
      v74(v87, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0C0, &qword_226170E98);
      inited = swift_initStackObject();
      v90 = *MEMORY[0x277CCA180];
      *(inited + 32) = *MEMORY[0x277CCA180];
      *(inited + 16) = xmmword_226170920;
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 40) = 493;
      v91 = v90;
      sub_226159BC8(inited);
      swift_setDeallocating();
      sub_22614E1F4(inited + 32, &qword_27D78D078, &qword_226170EA0);
      type metadata accessor for FileAttributeKey(0);
      sub_22615FD18(&qword_27D78CED0, type metadata accessor for FileAttributeKey, &unk_2261707D8);
      v92 = sub_22616F798();

      v329 = 0;
      v93 = [v85 createDirectoryAtURL:v88 withIntermediateDirectories:1 attributes:v92 error:&v329];

      v68 = v329;
      if (v93)
      {
        v94 = v329;
        v84 = v74;
        v80 = v322;
LABEL_11:
        v86 = v323;
        v95 = v318;
        sub_226150DB0(v323, v318, &qword_27D78D0A0, &unk_226170E80);
        v96 = v80(v95, 1, v63);
        sub_22614E1F4(v95, &qword_27D78D0A0, &unk_226170E80);
        if (v96 == 1)
        {
          sub_22615B780(v325);
          return sub_22614E1F4(v86, &qword_27D78D0A0, &unk_226170E80);
        }

        v322 = v80;
        v296[1] = v75;
        v318 = v84;
        v100 = v319;
        v101 = v319[8];
        v102 = [objc_opt_self() clientWithIdentifier_];
        v103 = *(v100 + 7);
        v316 = *(v100 + 8);
        v104 = sub_22616F7F8();
        v105 = *(v100 + 5);
        v106 = *(v100 + 6);
        v107 = sub_22616F7F8();
        v108 = [v102 levelForFactor:v104 withNamespaceName:v107];

        v321 = v108;
        if (!v108)
        {
          v327(v325, 1, 1, v63);

LABEL_81:
          v86 = v323;
          return sub_22614E1F4(v86, &qword_27D78D0A0, &unk_226170E80);
        }

        v296[0] = v103;
        v109 = sub_22616F7F8();
        v110 = [v102 rolloutIdentifiersWithNamespaceName_];

        v111 = sub_22616F7F8();
        v112 = [v102 experimentIdentifiersWithNamespaceName_];

        v317 = v102;
        if (v110 && (v113 = v110, v114 = [v113 rampId], v113, v114))
        {
          v316 = v112;
          v115 = sub_22616F828();
          v117 = v116;

          v118 = [v113 rolloutId];
          v119 = sub_22616F828();
          v121 = v120;

          v329 = v119;
          v330 = v121;
          MEMORY[0x22AA77270](95, 0xE100000000000000);
          v328 = [v113 deploymentId];
          v122 = sub_22616FC48();
          MEMORY[0x22AA77270](v122);

          MEMORY[0x22AA77270](95, 0xE100000000000000);
          v123 = [v113 factorPackId];
          v124 = sub_22616F828();
          v126 = v125;

          MEMORY[0x22AA77270](v124, v126);

          MEMORY[0x22AA77270](95, 0xE100000000000000);
          MEMORY[0x22AA77270](v115, v117);

          v86 = v323;
          v127 = v322;
          if (!v322(v323, 1, v63))
          {
            sub_22616F698();
          }

          v128 = v315;
          sub_226150DB0(v86, v315, &qword_27D78D0A0, &unk_226170E80);
          v129 = v127(v128, 1, v63);
          v130 = v318;
          if (v129 == 1)
          {

LABEL_44:
            sub_22614E1F4(v128, &qword_27D78D0A0, &unk_226170E80);
            v189 = v325;
            v190 = 1;
LABEL_67:
            v327(v189, v190, 1, v63);
            return sub_22614E1F4(v86, &qword_27D78D0A0, &unk_226170E80);
          }

          v148 = v320;
          v149 = v311;
          v315 = *(v320 + 4);
          (v315)(v311, v128, v63);
          v150 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
          sub_22616F6B8();
          v151 = sub_22616F7F8();

          v152 = [v150 fileExistsAtPath_];

          if (v152)
          {
            v153 = v308;
            v148[2](v308, v149, v63);
            v154 = sub_22616F768();
            v155 = sub_22616FA88();
            if (os_log_type_enabled(v154, v155))
            {
              v156 = v130;
              v157 = swift_slowAlloc();
              v158 = swift_slowAlloc();
              v322 = v113;
              v159 = v153;
              v160 = v158;
              v329 = v158;
              *v157 = 136315138;
              v161 = sub_22616F6B8();
              v163 = v162;
              v156(v159, v63);
              v164 = sub_2261555F8(v161, v163, &v329);
              v149 = v311;

              *(v157 + 4) = v164;
              _os_log_impl(&dword_22614A000, v154, v155, "Found existing model at path: %s", v157, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v160);
              MEMORY[0x22AA77C50](v160, -1, -1);
              MEMORY[0x22AA77C50](v157, -1, -1);
            }

            else
            {

              v130(v153, v63);
            }

            v196 = v325;
            v197 = v325;
            v198 = v149;
            v199 = v63;
            v200 = &v329;
LABEL_56:
            (*(v200 - 32))(v197, v198, v199);
            v327(v196, 0, 1, v63);
            goto LABEL_81;
          }

          v188 = v307;
          sub_22615B780(v307);
          if (v322(v188, 1, v63) == 1)
          {
            v130(v149, v63);

LABEL_47:
            sub_22614E1F4(v188, &qword_27D78D0A0, &unk_226170E80);
            v193 = v325;
            v194 = 1;
            v195 = v63;
LABEL_80:
            v327(v193, v194, 1, v195);
            goto LABEL_81;
          }

          v322 = v113;
          v201 = v305;
          (v315)(v305, v188, v63);
          v202 = *(v320 + 2);
          v203 = v300;
          v204 = v201;
          v202(v300, v201, v63);
          v205 = v301;
          v202(v301, v149, v63);
          v206 = sub_22616F768();
          v207 = sub_22616FA88();
          if (os_log_type_enabled(v206, v207))
          {
            v208 = v130;
            v209 = swift_slowAlloc();
            v319 = swift_slowAlloc();
            v329 = v319;
            *v209 = 136315394;
            v210 = sub_22616F6B8();
            LODWORD(v320) = v207;
            v211 = v210;
            v213 = v212;
            v208(v203, v63);
            v214 = sub_2261555F8(v211, v213, &v329);

            *(v209 + 4) = v214;
            *(v209 + 12) = 2080;
            v215 = sub_22616F6B8();
            v217 = v216;
            v208(v205, v63);
            v218 = v305;
            v219 = sub_2261555F8(v215, v217, &v329);

            *(v209 + 14) = v219;
            _os_log_impl(&dword_22614A000, v206, v320, "Moving %s to %s", v209, 0x16u);
            v220 = v319;
            swift_arrayDestroy();
            v149 = v311;
            MEMORY[0x22AA77C50](v220, -1, -1);
            MEMORY[0x22AA77C50](v209, -1, -1);
          }

          else
          {

            v130(v205, v63);
            v130(v203, v63);
            v218 = v204;
          }

          v252 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
          v253 = sub_22616F688();
          v254 = sub_22616F688();
          v329 = 0;
          v255 = [v252 moveItemAtURL:v253 toURL:v254 error:&v329];

          v256 = v322;
          if (v255)
          {
            v257 = v329;
            v258 = v326;
            (v318)(v218, v326);

            v259 = v325;
            v260 = v325;
            v261 = v149;
          }

          else
          {
            v262 = v329;
            v263 = sub_22616F658();

            swift_willThrow();
            v264 = v263;
            v265 = sub_22616F768();
            v266 = sub_22616FA98();

            if (os_log_type_enabled(v265, v266))
            {
              v267 = v149;
              v268 = swift_slowAlloc();
              v269 = swift_slowAlloc();
              v329 = v269;
              *v268 = 136315138;
              swift_getErrorValue();
              v270 = sub_22616FCA8();
              v272 = sub_2261555F8(v270, v271, &v329);

              *(v268 + 4) = v272;
              _os_log_impl(&dword_22614A000, v265, v266, "Failed to move %s", v268, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v269);
              v273 = v269;
              v218 = v305;
              MEMORY[0x22AA77C50](v273, -1, -1);
              MEMORY[0x22AA77C50](v268, -1, -1);

              v274 = v267;
            }

            else
            {

              v274 = v149;
            }

            v258 = v326;
            (v318)(v274, v326);
            v259 = v325;
            v260 = v325;
            v261 = v218;
          }

          (v315)(v260, v261, v258);
        }

        else
        {
          if (v112)
          {
            v316 = v110;
            v131 = [v112 experimentId];
            v132 = sub_22616F828();
            v133 = v112;
            v135 = v134;

            v329 = v132;
            v330 = v135;
            MEMORY[0x22AA77270](95, 0xE100000000000000);
            v328 = [v133 deploymentId];
            v136 = sub_22616FC48();
            MEMORY[0x22AA77270](v136);

            MEMORY[0x22AA77270](95, 0xE100000000000000);
            v137 = v133;
            v138 = [v133 treatmentId];
            v139 = sub_22616F828();
            v141 = v140;

            MEMORY[0x22AA77270](v139, v141);

            v86 = v323;
            v142 = v322;
            v143 = v322(v323, 1, v63);
            v144 = v327;
            if (!v143)
            {
              sub_22616F698();
            }

            v145 = v314;
            sub_226150DB0(v86, v314, &qword_27D78D0A0, &unk_226170E80);
            if (v142(v145, 1, v63) == 1)
            {

              sub_22614E1F4(v145, &qword_27D78D0A0, &unk_226170E80);
              v144(v325, 1, 1, v63);
              return sub_22614E1F4(v86, &qword_27D78D0A0, &unk_226170E80);
            }

            v166 = v320 + 32;
            v165 = *(v320 + 4);
            v167 = v313;
            v165(v313, v145, v63);
            v168 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
            sub_22616F6B8();
            v169 = sub_22616F7F8();

            v170 = [v168 fileExistsAtPath_];

            if (v170)
            {

              v171 = v325;
              v165(v325, v167, v63);
            }

            else
            {
              v128 = v306;
              sub_22615B780(v306);
              if (v322(v128, 1, v63) == 1)
              {
                (v318)(v313, v63);

                goto LABEL_44;
              }

              v221 = v166;
              v222 = v299;
              v223 = v165;
              v320 = v221;
              (v165)();
              v224 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
              v225 = sub_22616F688();
              v226 = v313;
              v227 = sub_22616F688();
              v329 = 0;
              v228 = [v224 moveItemAtURL:v225 toURL:v227 error:&v329];

              if (v228)
              {
                v229 = v329;
                (v318)(v222, v63);

                v171 = v325;
                v230 = v325;
                v231 = v226;
              }

              else
              {
                v275 = v329;
                v276 = sub_22616F658();

                swift_willThrow();
                (v318)(v226, v63);

                v171 = v325;
                v230 = v325;
                v231 = v222;
              }

              v223(v230, v231, v63);
            }

            v189 = v171;
            v190 = 0;
            goto LABEL_67;
          }

          v146 = v323;
          v147 = v322;
          if (!v322(v323, 1, v63))
          {
            v329 = 0;
            v330 = 0xE000000000000000;
            sub_22616FBA8();
            v328 = v101;
            type metadata accessor for TRIProject_ProjectId(0);
            sub_22616FBC8();
            MEMORY[0x22AA77270](95, 0xE100000000000000);
            MEMORY[0x22AA77270](v105, v106);
            MEMORY[0x22AA77270](95, 0xE100000000000000);
            MEMORY[0x22AA77270](v296[0], v316);
            MEMORY[0x22AA77270](0x746C75616665645FLL, 0xE800000000000000);
            sub_22616F698();
            v102 = v317;
          }

          v128 = v310;
          sub_226150DB0(v146, v310, &qword_27D78D0A0, &unk_226170E80);
          if (v147(v128, 1, v63) == 1)
          {
            v86 = v146;

            goto LABEL_44;
          }

          v172 = v147;
          v316 = v110;
          v173 = v320;
          v174 = *(v320 + 4);
          v175 = v309;
          v174(v309, v128, v63);
          v176 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
          sub_22616F6B8();
          v177 = sub_22616F7F8();

          v178 = [v176 fileExistsAtPath_];

          if (v178)
          {
            v322 = v174;
            v179 = v304;
            v173[2](v304, v175, v63);
            v180 = sub_22616F768();
            v181 = sub_22616FA88();
            if (os_log_type_enabled(v180, v181))
            {
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v329 = v183;
              *v182 = 136315138;
              v184 = sub_22616F6B8();
              v186 = v185;
              (v318)(v179, v63);
              v187 = sub_2261555F8(v184, v186, &v329);
              v175 = v309;

              *(v182 + 4) = v187;
              _os_log_impl(&dword_22614A000, v180, v181, "Found existing model at path: %s", v182, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v183);
              MEMORY[0x22AA77C50](v183, -1, -1);
              MEMORY[0x22AA77C50](v182, -1, -1);
            }

            else
            {

              (v318)(v179, v63);
            }

            v196 = v325;
            v197 = v325;
            v198 = v175;
            v199 = v63;
            v200 = &v332;
            goto LABEL_56;
          }

          v188 = v303;
          sub_22615B780(v303);
          v191 = v172(v188, 1, v63);
          v192 = v318;
          if (v191 == 1)
          {
            (v318)(v175, v63);

            goto LABEL_47;
          }

          v232 = v302;
          v322 = v174;
          v174(v302, v188, v63);
          v233 = *(v320 + 2);
          v234 = v297;
          v235 = v232;
          v233(v297, v232, v63);
          v236 = v298;
          v233(v298, v175, v63);
          v237 = sub_22616F768();
          v238 = sub_22616FA88();
          if (os_log_type_enabled(v237, v238))
          {
            v239 = v192;
            v240 = swift_slowAlloc();
            v241 = swift_slowAlloc();
            v329 = v241;
            *v240 = 136315394;
            v242 = sub_22616F6B8();
            LODWORD(v320) = v238;
            v243 = v242;
            v245 = v244;
            v239(v234, v63);
            v246 = sub_2261555F8(v243, v245, &v329);

            *(v240 + 4) = v246;
            *(v240 + 12) = 2080;
            v247 = sub_22616F6B8();
            v249 = v248;
            v239(v236, v63);
            v250 = v302;
            v251 = sub_2261555F8(v247, v249, &v329);

            *(v240 + 14) = v251;
            _os_log_impl(&dword_22614A000, v237, v320, "Moving %s to %s", v240, 0x16u);
            swift_arrayDestroy();
            v175 = v309;
            MEMORY[0x22AA77C50](v241, -1, -1);
            MEMORY[0x22AA77C50](v240, -1, -1);
          }

          else
          {

            v192(v236, v63);
            v192(v234, v63);
            v250 = v235;
          }

          v277 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
          v278 = sub_22616F688();
          v279 = sub_22616F688();
          v329 = 0;
          v280 = [v277 moveItemAtURL:v278 toURL:v279 error:&v329];

          v281 = v322;
          if (v280)
          {
            v282 = v329;
            v258 = v326;
            (v318)(v250, v326);

            v259 = v325;
            v283 = v325;
            v284 = v175;
          }

          else
          {
            v285 = v329;
            v286 = sub_22616F658();

            swift_willThrow();
            v287 = v286;
            v288 = sub_22616F768();
            v289 = sub_22616FA98();

            if (os_log_type_enabled(v288, v289))
            {
              v290 = swift_slowAlloc();
              v291 = swift_slowAlloc();
              v329 = v291;
              *v290 = 136315138;
              swift_getErrorValue();
              v292 = sub_22616FCA8();
              v294 = sub_2261555F8(v292, v293, &v329);

              *(v290 + 4) = v294;
              _os_log_impl(&dword_22614A000, v288, v289, "Failed to move %s", v290, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v291);
              v295 = v302;
              MEMORY[0x22AA77C50](v291, -1, -1);
              MEMORY[0x22AA77C50](v290, -1, -1);

              v258 = v326;
              (v318)(v309, v326);
              v250 = v295;
            }

            else
            {

              v258 = v326;
              (v318)(v175, v326);
            }

            v259 = v325;
            v283 = v325;
            v284 = v250;
          }

          v281(v283, v284, v258);
        }

        v193 = v259;
        v194 = 0;
        v195 = v258;
        goto LABEL_80;
      }

LABEL_14:
      v97 = v327;
      v98 = v68;
      v99 = sub_22616F658();

      swift_willThrow();
      v97(v325, 1, 1, v63);
      return sub_22614E1F4(v86, &qword_27D78D0A0, &unk_226170E80);
    }
  }

  __break(1u);
  return result;
}

void sub_22615E570(char *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_22616F668();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v10 = [objc_opt_self() clientWithIdentifier_];
  v11 = *(v2 + 56);
  v12 = *(v2 + 64);
  v13 = sub_22616F7F8();
  v14 = *(v2 + 40);
  v44 = *(v2 + 48);
  v45 = v14;
  v15 = sub_22616F7F8();
  v46 = v10;
  v16 = [v10 levelForFactor:v13 withNamespaceName:v15];

  if (!v16)
  {
    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v23 = sub_22616F788();
    __swift_project_value_buffer(v23, qword_28136D4A0);

    v24 = sub_22616F768();
    v25 = sub_22616FA98();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_2261555F8(v11, v12, &v48);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2261555F8(v45, v44, &v48);
      _os_log_impl(&dword_22614A000, v24, v25, "Failed to retrieve factor: %s in namespace: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](v27, -1, -1);
      MEMORY[0x22AA77C50](v26, -1, -1);
    }

    goto LABEL_20;
  }

  if ([v16 levelOneOfCase] == 100)
  {
    v17 = [v16 fileValue];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 path];

      if (v19)
      {
        sub_22616F828();

        v20 = sub_22616F6F8();
        v21 = *(*(v20 - 8) + 56);
        v21(v9, 1, 1, v20);
        (*(v4 + 104))(v6, *MEMORY[0x277CC91D8], v3);
        v22 = v47;
        sub_22616F6D8();

        v21(v22, 0, 1, v20);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if ([v16 levelOneOfCase] != 101)
  {
    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v37 = sub_22616F788();
    __swift_project_value_buffer(v37, qword_28136D4A0);

    v38 = sub_22616F768();
    v39 = sub_22616FA98();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_2261555F8(v11, v12, &v48);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_2261555F8(v45, v44, &v48);
      _os_log_impl(&dword_22614A000, v38, v39, "Factor: %s in namespace: %s in not a file nor a directory", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](v41, -1, -1);
      MEMORY[0x22AA77C50](v40, -1, -1);
    }

LABEL_20:
    v42 = sub_22616F6F8();
    v33 = *(*(v42 - 8) + 56);
    v34 = v42;
    v35 = v47;
    v36 = 1;
    goto LABEL_21;
  }

  v28 = [v16 directoryValue];
  if (!v28)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = v28;
  v30 = [v28 path];

  if (!v30)
  {
LABEL_27:
    __break(1u);
    return;
  }

  sub_22616F828();

  v31 = v47;
  sub_22616F678();

  v32 = sub_22616F6F8();
  v33 = *(*(v32 - 8) + 56);
  v34 = v32;
  v35 = v31;
  v36 = 0;
LABEL_21:

  v33(v35, v36, 1, v34);
}