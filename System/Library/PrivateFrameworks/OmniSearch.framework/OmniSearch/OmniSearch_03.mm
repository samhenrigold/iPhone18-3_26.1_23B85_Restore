uint64_t FlightSnippet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_66_0();
  while (1)
  {
    OUTLINED_FUNCTION_116_0();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_107();
        OUTLINED_FUNCTION_72_1();
        closure #1 in FlightSnippet.decodeMessage<A>(decoder:)(v3, v4, v5, v6);
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_53_1();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 4:
        OUTLINED_FUNCTION_53_1();
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 5:
        OUTLINED_FUNCTION_53_1();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
      case 6:
        OUTLINED_FUNCTION_53_1();
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in FlightSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlightSnippet(0);
  type metadata accessor for FlightSnippet.Flight(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Flight and conformance FlightSnippet.Flight, type metadata accessor for FlightSnippet.Flight, &protocol conformance descriptor for FlightSnippet.Flight);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t FlightSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_72_1();
  result = closure #1 in FlightSnippet.traverse<A>(visitor:)(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1 == 1)
    {
      OUTLINED_FUNCTION_43_1();
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v1 + 1) == 1)
    {
      OUTLINED_FUNCTION_43_1();
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    OUTLINED_FUNCTION_5_3();
    if (v7)
    {
      OUTLINED_FUNCTION_15_2();
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (*(v1 + 24))
    {
      OUTLINED_FUNCTION_43_1();
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (*(v1 + 32))
    {
      OUTLINED_FUNCTION_43_1();
      dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for FlightSnippet(0);
    OUTLINED_FUNCTION_53_1();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in FlightSnippet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for FlightSnippet.Flight(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlightSnippet(0);
  outlined init with copy of EagerResolutionService?();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return outlined destroy of IntentApplication?(v6, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  }

  outlined init with take of FlightSnippet.Flight();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Flight and conformance FlightSnippet.Flight, type metadata accessor for FlightSnippet.Flight, &protocol conformance descriptor for FlightSnippet.Flight);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of FlightSnippet.Flight(v9);
}

void static FlightSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for FlightSnippet.Flight(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  OUTLINED_FUNCTION_114(v10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV0C0VSg_AFtMd, &_s10OmniSearch13FlightSnippetV0C0VSg_AFtMR) - 8;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_90_0();
  v31 = type metadata accessor for FlightSnippet(0);
  v32 = v4;
  v16 = *(v14 + 56);
  outlined init with copy of EagerResolutionService?();
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_166(v0, 1, v5);
  if (!v17)
  {
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_166(v0 + v16, 1, v5);
    if (!v17)
    {
      OUTLINED_FUNCTION_3_1();
      outlined init with take of FlightSnippet.Flight();
      v20 = *(v5 + 20);
      v21 = *&v13[v20];
      v22 = *(v9 + v20);
      if (v21 == v22 || (, , v23 = closure #1 in static FlightSnippet.Flight.== infix(_:_:)(v21, v22), , , (v23 & 1) != 0))
      {
        type metadata accessor for UnknownStorage();
        OUTLINED_FUNCTION_2_2();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v24, v25, MEMORY[0x277D216D0]);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of FlightSnippet.Flight(v9);
        outlined destroy of FlightSnippet.Flight(v13);
        outlined destroy of IntentApplication?(v0, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
        if ((v26 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_14;
      }

      outlined destroy of FlightSnippet.Flight(v9);
      outlined destroy of FlightSnippet.Flight(v13);
      v18 = &_s10OmniSearch13FlightSnippetV0C0VSgMd;
      v19 = &_s10OmniSearch13FlightSnippetV0C0VSgMR;
LABEL_10:
      outlined destroy of IntentApplication?(v0, v18, v19);
      goto LABEL_24;
    }

    outlined destroy of FlightSnippet.Flight(v13);
LABEL_9:
    v18 = &_s10OmniSearch13FlightSnippetV0C0VSg_AFtMd;
    v19 = &_s10OmniSearch13FlightSnippetV0C0VSg_AFtMR;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_166(v0 + v16, 1, v5);
  if (!v17)
  {
    goto LABEL_9;
  }

  outlined destroy of IntentApplication?(v0, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
LABEL_14:
  v27 = v32;
  if (*v32 == *v2 && v32[1] == v2[1])
  {
    v28 = *(v32 + 1) == *(v2 + 1) && *(v32 + 2) == *(v2 + 2);
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v27 + 6) == *(v2 + 6) && *(v27 + 4) == *(v2 + 4))
    {
      type metadata accessor for UnknownStorage();
      OUTLINED_FUNCTION_2_2();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v29, v30, MEMORY[0x277D216D0]);
      dispatch thunk of static Equatable.== infix(_:_:)();
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_148();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance FlightSnippet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance FlightSnippet(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance FlightSnippet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet and conformance FlightSnippet, type metadata accessor for FlightSnippet, &protocol conformance descriptor for FlightSnippet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FlightSnippet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet and conformance FlightSnippet, type metadata accessor for FlightSnippet, &protocol conformance descriptor for FlightSnippet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlightSnippet(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet and conformance FlightSnippet, type metadata accessor for FlightSnippet, &protocol conformance descriptor for FlightSnippet);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance()
{
  type metadata accessor for FlightSnippet.Flight._StorageClass();
  OUTLINED_FUNCTION_31_2();
  swift_allocObject();
  result = FlightSnippet.Flight._StorageClass.init()();
  static FlightSnippet.Flight._StorageClass.defaultInstance = result;
  return result;
}

{
  type metadata accessor for FlightSnippet.Leg._StorageClass(0);
  swift_allocObject();
  result = FlightSnippet.Leg._StorageClass.init()();
  static FlightSnippet.Leg._StorageClass.defaultInstance = result;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t FlightSnippet.Flight._StorageClass.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 160) = MEMORY[0x277D84F90];
  *(v0 + 168) = v2;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xE000000000000000;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  *(v0 + 248) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 256) = v2;
  *(v0 + 264) = v2;
  return result;
}

uint64_t FlightSnippet.Flight._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  *(v1 + 128) = 0;
  *(v1 + 152) = 0;
  *(v1 + 144) = 0;
  *(v1 + 120) = 0xE000000000000000;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 160) = MEMORY[0x277D84F90];
  *(v1 + 168) = v3;
  *(v1 + 176) = 0;
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 184) = 0;
  *(v1 + 192) = 0xE000000000000000;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0xE000000000000000;
  *(v1 + 216) = 0;
  *(v1 + 248) = 0;
  *(v1 + 240) = 0;
  *(v1 + 224) = 0xE000000000000000;
  *(v1 + 232) = 0;
  *(v1 + 256) = v3;
  *(v1 + 264) = v3;
  swift_beginAccess();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v5;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v7;
  *(v1 + 40) = v6;

  swift_beginAccess();
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v9;
  *(v1 + 56) = v8;

  swift_beginAccess();
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v11;
  *(v1 + 72) = v10;

  swift_beginAccess();
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v13;
  *(v1 + 88) = v12;

  swift_beginAccess();
  v15 = *(a1 + 96);
  v14 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v15;
  *(v1 + 104) = v14;

  swift_beginAccess();
  v17 = *(a1 + 112);
  v16 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 112) = v17;
  *(v1 + 120) = v16;

  swift_beginAccess();
  v19 = *(a1 + 128);
  v18 = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 128) = v19;
  *(v1 + 136) = v18;

  swift_beginAccess();
  v20 = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 144) = v20;
  swift_beginAccess();
  v21 = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 152) = v21;
  swift_beginAccess();
  v22 = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 160) = v22;

  swift_beginAccess();
  v23 = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 168) = v23;

  swift_beginAccess();
  LODWORD(v23) = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 176) = v23;
  swift_beginAccess();
  v25 = *(a1 + 184);
  v24 = *(a1 + 192);
  swift_beginAccess();
  *(v1 + 184) = v25;
  *(v1 + 192) = v24;

  swift_beginAccess();
  v27 = *(a1 + 200);
  v26 = *(a1 + 208);
  swift_beginAccess();
  *(v1 + 200) = v27;
  *(v1 + 208) = v26;

  swift_beginAccess();
  v29 = *(a1 + 216);
  v28 = *(a1 + 224);
  swift_beginAccess();
  *(v1 + 216) = v29;
  *(v1 + 224) = v28;

  swift_beginAccess();
  v30 = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 232) = v30;
  swift_beginAccess();
  LODWORD(v30) = *(a1 + 240);
  swift_beginAccess();
  *(v1 + 240) = v30;
  swift_beginAccess();
  LODWORD(v30) = *(a1 + 244);
  swift_beginAccess();
  *(v1 + 244) = v30;
  swift_beginAccess();
  LODWORD(v30) = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 248) = v30;
  swift_beginAccess();
  v31 = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 256) = v31;

  swift_beginAccess();
  v32 = *(a1 + 264);

  swift_beginAccess();
  *(v1 + 264) = v32;

  return v1;
}

void *FlightSnippet.Flight._StorageClass.deinit()
{

  return v0;
}

uint64_t FlightSnippet.Flight._StorageClass.__deallocating_deinit()
{
  FlightSnippet.Flight._StorageClass.deinit();

  return swift_deallocClassInstance();
}

uint64_t FlightSnippet.Flight.decodeMessage<A>(decoder:)()
{
  v1 = OUTLINED_FUNCTION_83_1();
  v2 = *(type metadata accessor for FlightSnippet.Flight(v1) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_9_2();
    *(v0 + v2) = FlightSnippet.Flight._StorageClass.init(copying:)(v3);
  }

  OUTLINED_FUNCTION_72_1();
  return closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(v4, v5, v6, v7);
}

uint64_t closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        closure #1 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 2:
        closure #2 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)();
        break;
      case 3:
        closure #3 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 4:
        closure #4 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)();
        break;
      case 5:
        closure #5 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)();
        break;
      case 6:
        closure #6 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 7:
        closure #7 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 8:
        closure #8 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 9:
        closure #9 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 10:
        closure #10 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 11:
        closure #11 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 12:
        closure #12 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 13:
        closure #13 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 14:
        closure #14 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 15:
        closure #15 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 16:
        closure #16 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 20:
        closure #17 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 21:
        closure #18 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 22:
        closure #19 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 23:
        closure #20 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 24:
        closure #21 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 25:
        closure #22 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FlightSnippet.Leg(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Leg and conformance FlightSnippet.Leg, type metadata accessor for FlightSnippet.Leg, &protocol conformance descriptor for FlightSnippet.Leg);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #12 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FlightSnippet.FlightInfo(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.FlightInfo and conformance FlightSnippet.FlightInfo, type metadata accessor for FlightSnippet.FlightInfo, &protocol conformance descriptor for FlightSnippet.FlightInfo);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #13 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #14 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #15 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #16 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #17 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #18 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #19 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #20 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #21 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #22 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #1 in FlightSnippet.Flight.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v8 = *(a1 + 40);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 56);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 72);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 88);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 104);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v18 = *(a1 + 120);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (!v4)
    {

      goto LABEL_36;
    }
  }

LABEL_36:
  swift_beginAccess();
  v20 = *(a1 + 136);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 144) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 152) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
    {
      swift_beginAccess();
      if (*(*(a1 + 160) + 16))
      {
        type metadata accessor for FlightSnippet.Leg(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Leg and conformance FlightSnippet.Leg, type metadata accessor for FlightSnippet.Leg, &protocol conformance descriptor for FlightSnippet.Leg);

        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v4)
        {
        }
      }

      swift_beginAccess();
      if (!*(*(a1 + 168) + 16) || (type metadata accessor for FlightSnippet.FlightInfo(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.FlightInfo and conformance FlightSnippet.FlightInfo, type metadata accessor for FlightSnippet.FlightInfo, &protocol conformance descriptor for FlightSnippet.FlightInfo), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 176) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
        {
          swift_beginAccess();
          v23 = *(a1 + 192);
          v24 = HIBYTE(v23) & 0xF;
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = *(a1 + 184) & 0xFFFFFFFFFFFFLL;
          }

          if (!v24 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
          {
            swift_beginAccess();
            v25 = *(a1 + 208);
            v26 = HIBYTE(v25) & 0xF;
            if ((v25 & 0x2000000000000000) == 0)
            {
              v26 = *(a1 + 200) & 0xFFFFFFFFFFFFLL;
            }

            if (!v26 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
            {
              swift_beginAccess();
              v27 = *(a1 + 224);
              v28 = HIBYTE(v27) & 0xF;
              if ((v27 & 0x2000000000000000) == 0)
              {
                v28 = *(a1 + 216) & 0xFFFFFFFFFFFFLL;
              }

              if (!v28 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
              {
                swift_beginAccess();
                if (!*(a1 + 232) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
                {
                  swift_beginAccess();
                  if (!*(a1 + 240) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 244) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 248) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
                      {
                        swift_beginAccess();
                        if (!*(*(a1 + 256) + 16) || (, dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), result = , !v4))
                        {
                          result = swift_beginAccess();
                          if (*(*(a1 + 264) + 16))
                          {

                            dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
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
      }
    }
  }

  return result;
}

uint64_t closure #1 in static FlightSnippet.Flight.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((swift_beginAccess(), v7 = *(a1 + 32), v8 = *(a1 + 40), swift_beginAccess(), v7 == *(a2 + 32)) ? (v9 = v8 == *(a2 + 40)) : (v9 = 0), (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((swift_beginAccess(), v10 = *(a1 + 48), v11 = *(a1 + 56), swift_beginAccess(), v10 == *(a2 + 48)) ? (v12 = v11 == *(a2 + 56)) : (v12 = 0), (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((swift_beginAccess(), v13 = *(a1 + 64), v14 = *(a1 + 72), swift_beginAccess(), v13 == *(a2 + 64)) ? (v15 = v14 == *(a2 + 72)) : (v15 = 0), (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((swift_beginAccess(), v16 = *(a1 + 80), v17 = *(a1 + 88), swift_beginAccess(), v16 == *(a2 + 80)) ? (v18 = v17 == *(a2 + 88)) : (v18 = 0), (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((swift_beginAccess(), v19 = *(a1 + 96), v20 = *(a1 + 104), swift_beginAccess(), v19 == *(a2 + 96)) ? (v21 = v20 == *(a2 + 104)) : (v21 = 0), (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((swift_beginAccess(), v22 = *(a1 + 112), v23 = *(a1 + 120), swift_beginAccess(), v22 == *(a2 + 112)) ? (v24 = v23 == *(a2 + 120)) : (v24 = 0), (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((swift_beginAccess(), v25 = *(a1 + 128), v26 = *(a1 + 136), swift_beginAccess(), v25 == *(a2 + 128)) ? (v27 = v26 == *(a2 + 136)) : (v27 = 0), (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (swift_beginAccess(), v28 = *(a1 + 144), swift_beginAccess(), v28 == *(a2 + 144)) && (swift_beginAccess(), v29 = *(a1 + 152), swift_beginAccess(), v29 == *(a2 + 152))))))))))
  {
    swift_beginAccess();
    v30 = *(a1 + 160);
    swift_beginAccess();
    v31 = *(a2 + 160);

    _sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch13FlightSnippetV3LegV_Tt1g5(v30, v31, v32, v33, v34, v35, v36, v37, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88);
    v39 = v38;

    if (v39 & 1) != 0 && (swift_beginAccess(), v40 = *(a1 + 168), swift_beginAccess(), v41 = *(a2 + 168), , , _sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch13FlightSnippetV0D4InfoV_Tt1g5(v40, v41, v42, v43, v44, v45, v46, v47, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89), v49 = v48, , , (v49) && (swift_beginAccess(), v50 = *(a1 + 176), swift_beginAccess(), v50 == *(a2 + 176)) && ((swift_beginAccess(), v51 = *(a1 + 184), v52 = *(a1 + 192), swift_beginAccess(), v51 == *(a2 + 184)) ? (v53 = v52 == *(a2 + 192)) : (v53 = 0), (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((swift_beginAccess(), v54 = *(a1 + 200), v55 = *(a1 + 208), swift_beginAccess(), v54 == *(a2 + 200)) ? (v56 = v55 == *(a2 + 208)) : (v56 = 0), (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((swift_beginAccess(), v57 = *(a1 + 216), v58 = *(a1 + 224), swift_beginAccess(), v57 == *(a2 + 216)) ? (v59 = v58 == *(a2 + 224)) : (v59 = 0), (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (swift_beginAccess(), v60 = *(a1 + 232), swift_beginAccess(), v60 == *(a2 + 232)) && (swift_beginAccess(), v61 = *(a1 + 240), swift_beginAccess(), v61 == *(a2 + 240)) && (swift_beginAccess(), v62 = *(a1 + 244), swift_beginAccess(), v62 == *(a2 + 244)) && (swift_beginAccess(), v63 = *(a1 + 248), swift_beginAccess(), v63 == *(a2 + 248)) && (swift_beginAccess(), swift_beginAccess(), (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1gq5())))))
    {
      swift_beginAccess();
      swift_beginAccess();
      v64 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1gq5();
    }

    else
    {
      v64 = 0;
    }
  }

  else
  {
    v64 = 0;
  }

  return v64 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance FlightSnippet.Flight(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Flight and conformance FlightSnippet.Flight, type metadata accessor for FlightSnippet.Flight, &protocol conformance descriptor for FlightSnippet.Flight);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FlightSnippet.Flight(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Flight and conformance FlightSnippet.Flight, type metadata accessor for FlightSnippet.Flight, &protocol conformance descriptor for FlightSnippet.Flight);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlightSnippet.Flight(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Flight and conformance FlightSnippet.Flight, type metadata accessor for FlightSnippet.Flight, &protocol conformance descriptor for FlightSnippet.Flight);

  return Message.hash(into:)();
}

uint64_t FlightSnippet.Airport.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_66_0();
  while (1)
  {
    OUTLINED_FUNCTION_116_0();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        OUTLINED_FUNCTION_53_1();
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 6:
      case 7:
        OUTLINED_FUNCTION_53_1();
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t FlightSnippet.Airport.traverse<A>(visitor:)()
{
  v2 = v0;
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_5_3();
  if (!v3 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), (v2 = v0) == 0))
  {
    OUTLINED_FUNCTION_5_3();
    if (!v5 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), (v2 = v0) == 0))
    {
      OUTLINED_FUNCTION_5_3();
      if (!v6 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), (v2 = v0) == 0))
      {
        OUTLINED_FUNCTION_5_3();
        if (!v7 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), (v2 = v0) == 0))
        {
          OUTLINED_FUNCTION_5_3();
          if (!v8 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), (v2 = v0) == 0))
          {
            if (*(v1 + 80) == 0.0 || (v0 = v2, OUTLINED_FUNCTION_53_1(), result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v2))
            {
              if (*(v1 + 88) == 0.0 || (v0 = v2, OUTLINED_FUNCTION_53_1(), result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v2))
              {
                OUTLINED_FUNCTION_5_3();
                if (!v9 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
                {
                  OUTLINED_FUNCTION_5_3();
                  if (!v10 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
                  {
                    OUTLINED_FUNCTION_5_3();
                    if (!v11 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
                    {
                      OUTLINED_FUNCTION_5_3();
                      if (!v12 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
                      {
                        OUTLINED_FUNCTION_5_3();
                        if (!v13 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
                        {
                          OUTLINED_FUNCTION_5_3();
                          if (!v14 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
                          {
                            OUTLINED_FUNCTION_5_3();
                            if (!v15 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
                            {
                              type metadata accessor for FlightSnippet.Airport(0);
                              OUTLINED_FUNCTION_53_1();
                              return UnknownStorage.traverse<A>(visitor:)();
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
        }
      }
    }
  }

  return result;
}

uint64_t static FlightSnippet.Airport.== infix(_:_:)()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_119_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 80) != *(v0 + 80) || *(v1 + 88) != *(v0 + 88))
  {
    return 0;
  }

  v10 = *(v1 + 96) == *(v0 + 96) && *(v1 + 104) == *(v0 + 104);
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v1 + 112) == *(v0 + 112) && *(v1 + 120) == *(v0 + 120);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v1 + 128) == *(v0 + 128) && *(v1 + 136) == *(v0 + 136);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v1 + 144) == *(v0 + 144) && *(v1 + 152) == *(v0 + 152);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v1 + 160) == *(v0 + 160) && *(v1 + 168) == *(v0 + 168);
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v1 + 176) == *(v0 + 176) && *(v1 + 184) == *(v0 + 184);
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v1 + 192) == *(v0 + 192) && *(v1 + 200) == *(v0 + 200);
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FlightSnippet.Airport(0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_2_2();
  v19 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v17, v18, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_106_0(v19) & 1;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance FlightSnippet.Airport@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance FlightSnippet.Airport(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance FlightSnippet.Airport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Airport and conformance FlightSnippet.Airport, type metadata accessor for FlightSnippet.Airport, &protocol conformance descriptor for FlightSnippet.Airport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FlightSnippet.Airport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Airport and conformance FlightSnippet.Airport, type metadata accessor for FlightSnippet.Airport, &protocol conformance descriptor for FlightSnippet.Airport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlightSnippet.Airport(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Airport and conformance FlightSnippet.Airport, type metadata accessor for FlightSnippet.Airport, &protocol conformance descriptor for FlightSnippet.Airport);

  return Message.hash(into:)();
}

uint64_t FlightSnippet.FlightInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_66_0();
  while (1)
  {
    OUTLINED_FUNCTION_116_0();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_53_1();
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t FlightSnippet.FlightInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_5_3();
  if (!v1 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
  {
    OUTLINED_FUNCTION_5_3();
    if (!v3 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
    {
      OUTLINED_FUNCTION_5_3();
      if (!v4 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
      {
        OUTLINED_FUNCTION_5_3();
        if (!v5 || (OUTLINED_FUNCTION_15_2(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
        {
          type metadata accessor for FlightSnippet.FlightInfo(0);
          OUTLINED_FUNCTION_53_1();
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t static FlightSnippet.FlightInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_119_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FlightSnippet.FlightInfo(0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_2_2();
  v11 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v9, v10, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_106_0(v11) & 1;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance FlightSnippet.FlightInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance FlightSnippet.FlightInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance FlightSnippet.FlightInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.FlightInfo and conformance FlightSnippet.FlightInfo, type metadata accessor for FlightSnippet.FlightInfo, &protocol conformance descriptor for FlightSnippet.FlightInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FlightSnippet.FlightInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.FlightInfo and conformance FlightSnippet.FlightInfo, type metadata accessor for FlightSnippet.FlightInfo, &protocol conformance descriptor for FlightSnippet.FlightInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlightSnippet.FlightInfo(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.FlightInfo and conformance FlightSnippet.FlightInfo, type metadata accessor for FlightSnippet.FlightInfo, &protocol conformance descriptor for FlightSnippet.FlightInfo);

  return Message.hash(into:)();
}

uint64_t FlightSnippet._protobuf_nameMap.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static FlightSnippet._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_113_0();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t FlightSnippet.Leg._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 25) = 0;
  *(v0 + 27) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__departureAirport;
  v2 = type metadata accessor for FlightSnippet.Airport(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalPublishedTime) = 0;
  *(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalActualTime) = 0;
  v3 = (v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalGate);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__gateArrival) = 0;
  *(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalRunway) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalAirport, 1, 1, v2);
  v5 = (v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__baggageClaim);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__updatedAt) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__divertedAirport, 1, 1, v2);
  v6 = (v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__uid);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__feedUpdateTime) = 0;
  return v0;
}

uint64_t FlightSnippet.Leg._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v68 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 25) = 0;
  *(v1 + 27) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v71 = (v1 + 64);
  *(v1 + 56) = 0;
  v70 = (v1 + 56);
  *(v1 + 48) = 0;
  v69 = (v1 + 48);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v72 = (v1 + 80);
  *(v1 + 112) = 0;
  v75 = (v1 + 112);
  *(v1 + 104) = 0;
  v74 = (v1 + 104);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v73 = (v1 + 96);
  v5 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__departureAirport;
  v76 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__departureAirport;
  v6 = type metadata accessor for FlightSnippet.Airport(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v77 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalPublishedTime;
  *(v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalPublishedTime) = 0;
  v79 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalActualTime;
  *(v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalActualTime) = 0;
  v7 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal);
  v80 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalGate);
  v81 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalGate);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v82 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__gateArrival;
  *(v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__gateArrival) = 0;
  v83 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalRunway;
  *(v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalRunway) = 0;
  v84 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalAirport;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalAirport, 1, 1, v6);
  v9 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__baggageClaim);
  v85 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__baggageClaim);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v86 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__updatedAt;
  *(v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__updatedAt) = 0;
  v87 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__divertedAirport;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__divertedAirport, 1, 1, v6);
  v10 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__uid);
  v88 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__uid);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v89 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__feedUpdateTime;
  *(v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__feedUpdateTime) = 0;
  swift_beginAccess();
  v11 = *(a1 + 16);
  LOBYTE(v6) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v6;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 25);
  swift_beginAccess();
  *(v1 + 25) = v11;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 26);
  swift_beginAccess();
  *(v1 + 26) = v11;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 27);
  swift_beginAccess();
  *(v1 + 27) = v11;
  swift_beginAccess();
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v12;
  *(v1 + 40) = v13;
  swift_beginAccess();
  v14 = *(a1 + 48);
  v15 = v69;
  swift_beginAccess();
  *v15 = v14;
  swift_beginAccess();
  v16 = *(a1 + 56);
  v17 = v70;
  swift_beginAccess();
  *v17 = v16;
  swift_beginAccess();
  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  v20 = v71;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 72) = v18;

  swift_beginAccess();
  v22 = *(a1 + 80);
  v21 = *(a1 + 88);
  v23 = v72;
  swift_beginAccess();
  *v23 = v22;
  *(v1 + 88) = v21;

  swift_beginAccess();
  v24 = *(a1 + 96);
  v25 = v73;
  swift_beginAccess();
  *v25 = v24;
  swift_beginAccess();
  v26 = *(a1 + 104);
  v27 = v74;
  swift_beginAccess();
  *v27 = v26;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + 112);
  v28 = v75;
  swift_beginAccess();
  *v28 = v26;
  swift_beginAccess();
  v29 = v78;
  outlined init with copy of EagerResolutionService?();
  v30 = v76;
  swift_beginAccess();
  outlined assign with take of FlightSnippet.Airport?(v29, v1 + v30);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalPublishedTime;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v77;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalActualTime;
  swift_beginAccess();
  v35 = *(a1 + v34);
  v36 = v79;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = (a1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  v40 = v80;
  swift_beginAccess();
  *v40 = v39;
  v40[1] = v38;

  v41 = (a1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalGate);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = v81;
  swift_beginAccess();
  *v44 = v43;
  v44[1] = v42;

  v45 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__gateArrival;
  swift_beginAccess();
  v46 = *(a1 + v45);
  v47 = v82;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalRunway;
  swift_beginAccess();
  v49 = *(a1 + v48);
  v50 = v83;
  swift_beginAccess();
  *(v1 + v50) = v49;
  swift_beginAccess();
  outlined init with copy of EagerResolutionService?();
  v51 = v84;
  swift_beginAccess();
  outlined assign with take of FlightSnippet.Airport?(v29, v1 + v51);
  swift_endAccess();
  v52 = (a1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__baggageClaim);
  swift_beginAccess();
  v54 = *v52;
  v53 = v52[1];
  v55 = v85;
  swift_beginAccess();
  *v55 = v54;
  v55[1] = v53;

  v56 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__updatedAt;
  swift_beginAccess();
  v57 = *(a1 + v56);
  v58 = v86;
  swift_beginAccess();
  *(v1 + v58) = v57;
  swift_beginAccess();
  outlined init with copy of EagerResolutionService?();
  v59 = v87;
  swift_beginAccess();
  outlined assign with take of FlightSnippet.Airport?(v29, v1 + v59);
  swift_endAccess();
  v60 = (a1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__uid);
  swift_beginAccess();
  v62 = *v60;
  v61 = v60[1];
  v63 = v88;
  swift_beginAccess();
  *v63 = v62;
  v63[1] = v61;

  v64 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__feedUpdateTime;
  swift_beginAccess();
  v65 = *(a1 + v64);

  v66 = v89;
  swift_beginAccess();
  *(v1 + v66) = v65;
  return v1;
}

uint64_t outlined init with take of FlightSnippet.Flight()
{
  OUTLINED_FUNCTION_134();
  v1(0);
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t outlined assign with take of FlightSnippet.Airport?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of FlightSnippet.Flight()
{
  OUTLINED_FUNCTION_134();
  v1(0);
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t outlined destroy of FlightSnippet.Flight(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3(v2);
  OUTLINED_FUNCTION_17();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *FlightSnippet.Leg._StorageClass.deinit()
{

  outlined destroy of IntentApplication?(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__departureAirport, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);

  outlined destroy of IntentApplication?(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalAirport, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);

  outlined destroy of IntentApplication?(v0 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__divertedAirport, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);

  return v0;
}

uint64_t FlightSnippet.Leg._StorageClass.__deallocating_deinit()
{
  FlightSnippet.Leg._StorageClass.deinit();

  return swift_deallocClassInstance();
}

uint64_t FlightSnippet.Leg.decodeMessage<A>(decoder:)()
{
  v1 = OUTLINED_FUNCTION_83_1();
  v2 = *(type metadata accessor for FlightSnippet.Leg(v1) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Leg._StorageClass(0);
    OUTLINED_FUNCTION_53_0();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_9_2();
    *(v0 + v2) = FlightSnippet.Leg._StorageClass.init(copying:)(v3);
  }

  OUTLINED_FUNCTION_72_1();
  return closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(v4, v5, v6, v7);
}

uint64_t closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        closure #1 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 2:
        closure #2 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 3:
        closure #3 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 4:
        closure #4 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 5:
        closure #2 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)();
        break;
      case 6:
        closure #6 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 7:
        closure #7 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 8:
        closure #4 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)();
        break;
      case 9:
        closure #5 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)();
        break;
      case 10:
        closure #10 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 11:
        closure #11 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 12:
        closure #12 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(a2, a1);
        break;
      case 13:
      case 20:
      case 23:
        closure #13 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)();
        break;
      case 14:
      case 15:
      case 18:
      case 19:
      case 22:
      case 25:
        closure #14 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)();
        break;
      case 16:
      case 17:
      case 21:
      case 24:
        closure #16 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type FlightSnippet.Status and conformance FlightSnippet.Status();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_64_1(v0 + 32, v0);
  OUTLINED_FUNCTION_26_0();
  v1 = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return OUTLINED_FUNCTION_105_0(v1);
}

uint64_t closure #6 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_64_1(v0 + 64, v0);
  OUTLINED_FUNCTION_26_0();
  v1 = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return OUTLINED_FUNCTION_105_0(v1);
}

uint64_t closure #5 in closure #1 in FlightSnippet.Flight.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_64_1(v0 + 80, v0);
  OUTLINED_FUNCTION_26_0();
  v1 = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return OUTLINED_FUNCTION_105_0(v1);
}

uint64_t closure #10 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #12 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #13 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_64_1(v1 + *v0, v1);
  type metadata accessor for FlightSnippet.Airport(0);
  OUTLINED_FUNCTION_59_1();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v2, v3, &protocol conformance descriptor for FlightSnippet.Airport);
  OUTLINED_FUNCTION_15_2();
  v4 = dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return OUTLINED_FUNCTION_105_0(v4);
}

uint64_t closure #16 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_64_1(v1 + *v0, v1);
  OUTLINED_FUNCTION_26_0();
  v2 = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return OUTLINED_FUNCTION_105_0(v2);
}

uint64_t closure #14 in closure #1 in FlightSnippet.Leg.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_64_1(v1 + *v0, v1);
  OUTLINED_FUNCTION_26_0();
  v2 = dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
  return OUTLINED_FUNCTION_105_0(v2);
}

uint64_t FlightSnippet.Flight.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_53_1();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_116_0();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in FlightSnippet.Leg.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  FlightSnippet.Status.rawValue.getter();
  if (!v9 || (lazy protocol witness table accessor for type FlightSnippet.Status and conformance FlightSnippet.Status(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 25) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 26) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 27) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          swift_beginAccess();
          v11 = *(a1 + 40);
          v12 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) == 0)
          {
            v12 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
          }

          if (v12)
          {

            dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
            if (v4)
            {
            }
          }

          swift_beginAccess();
          if (!*(a1 + 48) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
          {
            swift_beginAccess();
            if (!*(a1 + 56) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
            {
              swift_beginAccess();
              v13 = *(a1 + 72);
              v14 = HIBYTE(v13) & 0xF;
              if ((v13 & 0x2000000000000000) == 0)
              {
                v14 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
              }

              if (v14)
              {

                dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
                if (v4)
                {
                }
              }

              swift_beginAccess();
              v15 = *(a1 + 88);
              v16 = HIBYTE(v15) & 0xF;
              if ((v15 & 0x2000000000000000) == 0)
              {
                v16 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
              }

              if (v16)
              {

                dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
                if (v4)
                {
                }
              }

              swift_beginAccess();
              if (!*(a1 + 96) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
              {
                swift_beginAccess();
                if (!*(a1 + 104) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
                {
                  swift_beginAccess();
                  if (*(a1 + 112) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
                  {
                    result = closure #1 in closure #1 in FlightSnippet.Leg.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__departureAirport, 13);
                    if (!v4)
                    {
                      v17 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalPublishedTime;
                      swift_beginAccess();
                      if (*(a1 + v17))
                      {
                        dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
                      }

                      v18 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalActualTime;
                      swift_beginAccess();
                      if (*(a1 + v18))
                      {
                        dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
                      }

                      v19 = (a1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal);
                      swift_beginAccess();
                      v20 = *v19;
                      v21 = v19[1];
                      v22 = HIBYTE(v21) & 0xF;
                      if ((v21 & 0x2000000000000000) == 0)
                      {
                        v22 = v20 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v22)
                      {

                        dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
                      }

                      v23 = (a1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalGate);
                      swift_beginAccess();
                      v24 = *v23;
                      v25 = v23[1];
                      v26 = HIBYTE(v25) & 0xF;
                      if ((v25 & 0x2000000000000000) == 0)
                      {
                        v26 = v24 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v26)
                      {

                        dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
                      }

                      v27 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__gateArrival;
                      swift_beginAccess();
                      if (*(a1 + v27))
                      {
                        dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
                      }

                      v28 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalRunway;
                      swift_beginAccess();
                      if (*(a1 + v28))
                      {
                        dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
                      }

                      closure #1 in closure #1 in FlightSnippet.Leg.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalAirport, 20);
                      v29 = (a1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__baggageClaim);
                      swift_beginAccess();
                      v30 = *v29;
                      v31 = v29[1];
                      v32 = HIBYTE(v31) & 0xF;
                      if ((v31 & 0x2000000000000000) == 0)
                      {
                        v32 = v30 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v32)
                      {

                        dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
                      }

                      v33 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__updatedAt;
                      swift_beginAccess();
                      if (*(a1 + v33))
                      {
                        dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
                      }

                      closure #1 in closure #1 in FlightSnippet.Leg.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__divertedAirport, 23);
                      v34 = (a1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__uid);
                      swift_beginAccess();
                      v35 = *v34;
                      v36 = v34[1];
                      v37 = HIBYTE(v36) & 0xF;
                      if ((v36 & 0x2000000000000000) == 0)
                      {
                        v37 = v35 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v37)
                      {

                        dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
                      }

                      v38 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__feedUpdateTime;
                      swift_beginAccess();
                      result = *(a1 + v38);
                      if (result)
                      {
                        return dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
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
  }

  return result;
}

uint64_t closure #1 in closure #1 in FlightSnippet.Leg.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v18[1] = a6;
  v18[2] = a3;
  v18[7] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for FlightSnippet.Airport(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  outlined init with copy of EagerResolutionService?();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return outlined destroy of IntentApplication?(v9, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  }

  outlined init with take of FlightSnippet.Flight();
  OUTLINED_FUNCTION_59_1();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v16, v17, &protocol conformance descriptor for FlightSnippet.Airport);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of FlightSnippet.Flight(v14);
}

uint64_t static FlightSnippet.Flight.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_134();
  v8 = v7(0);
  if (*(v5 + *(v8 + 20)) != *(v4 + *(v8 + 20)))
  {

    v9 = OUTLINED_FUNCTION_121_0();
    v10 = a4(v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_2_2();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v11, v12, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_107();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void closure #1 in static FlightSnippet.Leg.== infix(_:_:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v102 = type metadata accessor for FlightSnippet.Airport(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v100 = v6 - v5;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSg_AFtMd, &_s10OmniSearch13FlightSnippetV7AirportVSg_AFtMR);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v94 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  v16 = OUTLINED_FUNCTION_114(v15);
  MEMORY[0x28223BE20](v16);
  v97 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v98 = &v94 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v94 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v94 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v94 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v94 - v30;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v32 = *(v3 + 16);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v33 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    switch(v33)
    {
      case 1:
        if (v32 == 1)
        {
          goto LABEL_6;
        }

        break;
      case 2:
        if (v32 == 2)
        {
          goto LABEL_6;
        }

        break;
      case 3:
        if (v32 == 3)
        {
          goto LABEL_6;
        }

        break;
      case 4:
        if (v32 == 4)
        {
          goto LABEL_6;
        }

        break;
      case 5:
        if (v32 == 5)
        {
          goto LABEL_6;
        }

        break;
      case 6:
        if (v32 == 6)
        {
          goto LABEL_6;
        }

        break;
      case 7:
        if (v32 == 7)
        {
          goto LABEL_6;
        }

        break;
      case 8:
        if (v32 == 8)
        {
          goto LABEL_6;
        }

        break;
      default:
        if (!v32)
        {
          goto LABEL_6;
        }

        break;
    }

    goto LABEL_49;
  }

  if (v32 != v33)
  {
    goto LABEL_49;
  }

LABEL_6:
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v34 = *(v3 + 25);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  if (v34 == *(v1 + 25))
  {
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v35 = *(v3 + 26);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    if (v35 == *(v1 + 26))
    {
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v36 = *(v3 + 27);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      if (v36 == *(v1 + 27))
      {
        v96 = v9;
        OUTLINED_FUNCTION_28_1();
        swift_beginAccess();
        v37 = *(v3 + 32);
        v38 = *(v3 + 40);
        OUTLINED_FUNCTION_28_1();
        swift_beginAccess();
        v39 = v37 == *(v1 + 32) && v38 == *(v1 + 40);
        if (v39 || (OUTLINED_FUNCTION_103_0() & 1) != 0)
        {
          OUTLINED_FUNCTION_28_1();
          swift_beginAccess();
          v40 = *(v3 + 48);
          OUTLINED_FUNCTION_28_1();
          swift_beginAccess();
          if (v40 == *(v1 + 48))
          {
            OUTLINED_FUNCTION_28_1();
            swift_beginAccess();
            v41 = *(v3 + 56);
            OUTLINED_FUNCTION_28_1();
            swift_beginAccess();
            if (v41 == *(v1 + 56))
            {
              OUTLINED_FUNCTION_28_1();
              swift_beginAccess();
              v42 = *(v3 + 64);
              v43 = *(v3 + 72);
              OUTLINED_FUNCTION_28_1();
              swift_beginAccess();
              v44 = v42 == *(v1 + 64) && v43 == *(v1 + 72);
              if (v44 || (OUTLINED_FUNCTION_103_0() & 1) != 0)
              {
                OUTLINED_FUNCTION_28_1();
                swift_beginAccess();
                v45 = *(v3 + 80);
                v46 = *(v3 + 88);
                OUTLINED_FUNCTION_28_1();
                swift_beginAccess();
                v47 = v45 == *(v1 + 80) && v46 == *(v1 + 88);
                if (v47 || (OUTLINED_FUNCTION_103_0() & 1) != 0)
                {
                  OUTLINED_FUNCTION_28_1();
                  swift_beginAccess();
                  v48 = *(v3 + 96);
                  OUTLINED_FUNCTION_28_1();
                  swift_beginAccess();
                  if (v48 == *(v1 + 96))
                  {
                    OUTLINED_FUNCTION_28_1();
                    swift_beginAccess();
                    v49 = *(v3 + 104);
                    OUTLINED_FUNCTION_28_1();
                    swift_beginAccess();
                    if (v49 == *(v1 + 104))
                    {
                      OUTLINED_FUNCTION_28_1();
                      swift_beginAccess();
                      v50 = *(v3 + 112);
                      OUTLINED_FUNCTION_28_1();
                      swift_beginAccess();
                      if (v50 == *(v1 + 112))
                      {
                        OUTLINED_FUNCTION_28_1();
                        swift_beginAccess();
                        outlined init with copy of EagerResolutionService?();
                        OUTLINED_FUNCTION_28_1();
                        swift_beginAccess();
                        v51 = *(v101 + 48);
                        outlined init with copy of EagerResolutionService?();
                        v95 = v51;
                        outlined init with copy of EagerResolutionService?();
                        v52 = v102;
                        OUTLINED_FUNCTION_166(v14, 1, v102);
                        if (v39)
                        {

                          outlined destroy of IntentApplication?(v31, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                          OUTLINED_FUNCTION_166(&v14[v95], 1, v52);
                          if (v39)
                          {
                            outlined destroy of IntentApplication?(v14, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                            goto LABEL_56;
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_63_0();
                          outlined init with copy of EagerResolutionService?();
                          OUTLINED_FUNCTION_166(&v14[v95], 1, v52);
                          if (!v53)
                          {
                            v55 = v100;
                            outlined init with take of FlightSnippet.Flight();

                            LODWORD(v95) = static FlightSnippet.Airport.== infix(_:_:)();
                            outlined destroy of FlightSnippet.Flight(v55);
                            outlined destroy of IntentApplication?(v31, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                            outlined destroy of FlightSnippet.Flight(v28);
                            outlined destroy of IntentApplication?(v14, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                            if ((v95 & 1) == 0)
                            {
                              goto LABEL_106;
                            }

LABEL_56:
                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            OUTLINED_FUNCTION_117_0();
                            if (!v39)
                            {
                              goto LABEL_106;
                            }

                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            OUTLINED_FUNCTION_117_0();
                            if (!v39)
                            {
                              goto LABEL_106;
                            }

                            v56 = (v3 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal);
                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            v57 = *v56;
                            v58 = v56[1];
                            v59 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal);
                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            if (v57 != *v59 || v58 != v59[1])
                            {
                              OUTLINED_FUNCTION_63_0();
                              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                              {
                                goto LABEL_106;
                              }
                            }

                            v61 = (v3 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalGate);
                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            v62 = *v61;
                            v63 = v61[1];
                            v64 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalGate);
                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            if (v62 != *v64 || v63 != v64[1])
                            {
                              OUTLINED_FUNCTION_63_0();
                              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                              {
                                goto LABEL_106;
                              }
                            }

                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            OUTLINED_FUNCTION_117_0();
                            if (!v39)
                            {
                              goto LABEL_106;
                            }

                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            OUTLINED_FUNCTION_117_0();
                            if (!v39)
                            {
                              goto LABEL_106;
                            }

                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            outlined init with copy of EagerResolutionService?();
                            OUTLINED_FUNCTION_28_1();
                            swift_beginAccess();
                            v66 = *(v101 + 48);
                            v67 = v99;
                            outlined init with copy of EagerResolutionService?();
                            outlined init with copy of EagerResolutionService?();
                            OUTLINED_FUNCTION_51_1(v67);
                            if (v39)
                            {
                              outlined destroy of IntentApplication?(v25, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                              OUTLINED_FUNCTION_51_1(v99 + v66);
                              if (v39)
                              {
                                outlined destroy of IntentApplication?(v99, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
LABEL_84:
                                v73 = (v3 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__baggageClaim);
                                OUTLINED_FUNCTION_28_1();
                                swift_beginAccess();
                                v74 = *v73;
                                v75 = v73[1];
                                v76 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__baggageClaim);
                                OUTLINED_FUNCTION_28_1();
                                swift_beginAccess();
                                if (v74 != *v76 || v75 != v76[1])
                                {
                                  OUTLINED_FUNCTION_121_0();
                                  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                                  {
                                    goto LABEL_106;
                                  }
                                }

                                v78 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__updatedAt;
                                OUTLINED_FUNCTION_28_1();
                                swift_beginAccess();
                                v79 = *(v3 + v78);
                                v80 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__updatedAt;
                                OUTLINED_FUNCTION_28_1();
                                swift_beginAccess();
                                if (v79 != *(v1 + v80))
                                {
                                  goto LABEL_106;
                                }

                                OUTLINED_FUNCTION_28_1();
                                swift_beginAccess();
                                outlined init with copy of EagerResolutionService?();
                                OUTLINED_FUNCTION_28_1();
                                swift_beginAccess();
                                v81 = *(v101 + 48);
                                v82 = v96;
                                outlined init with copy of EagerResolutionService?();
                                outlined init with copy of EagerResolutionService?();
                                OUTLINED_FUNCTION_51_1(v82);
                                if (v39)
                                {
                                  outlined destroy of IntentApplication?(v98, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                                  OUTLINED_FUNCTION_51_1(&v96[v81]);
                                  if (v39)
                                  {
                                    outlined destroy of IntentApplication?(v96, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
LABEL_100:
                                    v89 = (v3 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__uid);
                                    OUTLINED_FUNCTION_28_1();
                                    swift_beginAccess();
                                    v90 = *v89;
                                    v91 = v89[1];
                                    v92 = (v1 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__uid);
                                    OUTLINED_FUNCTION_28_1();
                                    swift_beginAccess();
                                    v93 = v90 == *v92 && v91 == v92[1];
                                    if (v93 || (OUTLINED_FUNCTION_121_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                                    {
                                      OUTLINED_FUNCTION_28_1();
                                      swift_beginAccess();

                                      OUTLINED_FUNCTION_28_1();
                                      swift_beginAccess();

                                      goto LABEL_49;
                                    }

LABEL_106:

                                    goto LABEL_49;
                                  }
                                }

                                else
                                {
                                  v83 = v96;
                                  outlined init with copy of EagerResolutionService?();
                                  OUTLINED_FUNCTION_51_1(v83 + v81);
                                  if (!v84)
                                  {
                                    v85 = v96;
                                    v86 = v100;
                                    outlined init with take of FlightSnippet.Flight();
                                    v87 = v97;
                                    v88 = static FlightSnippet.Airport.== infix(_:_:)();
                                    outlined destroy of FlightSnippet.Flight(v86);
                                    outlined destroy of IntentApplication?(v98, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                                    outlined destroy of FlightSnippet.Flight(v87);
                                    outlined destroy of IntentApplication?(v85, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                                    if ((v88 & 1) == 0)
                                    {
                                      goto LABEL_106;
                                    }

                                    goto LABEL_100;
                                  }

                                  outlined destroy of IntentApplication?(v98, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                                  OUTLINED_FUNCTION_23_0();
                                  outlined destroy of FlightSnippet.Flight(v97);
                                }

                                v54 = v96;
LABEL_54:
                                outlined destroy of IntentApplication?(v54, &_s10OmniSearch13FlightSnippetV7AirportVSg_AFtMd, &_s10OmniSearch13FlightSnippetV7AirportVSg_AFtMR);
                                goto LABEL_106;
                              }
                            }

                            else
                            {
                              v68 = v99;
                              outlined init with copy of EagerResolutionService?();
                              OUTLINED_FUNCTION_51_1(v68 + v66);
                              if (!v69)
                              {
                                v70 = v99;
                                v71 = v100;
                                outlined init with take of FlightSnippet.Flight();
                                v72 = static FlightSnippet.Airport.== infix(_:_:)();
                                outlined destroy of FlightSnippet.Flight(v71);
                                outlined destroy of IntentApplication?(v25, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                                outlined destroy of FlightSnippet.Flight(v22);
                                outlined destroy of IntentApplication?(v70, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                                if ((v72 & 1) == 0)
                                {
                                  goto LABEL_106;
                                }

                                goto LABEL_84;
                              }

                              outlined destroy of IntentApplication?(v25, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                              OUTLINED_FUNCTION_23_0();
                              outlined destroy of FlightSnippet.Flight(v22);
                            }

                            v54 = v99;
                            goto LABEL_54;
                          }

                          outlined destroy of IntentApplication?(v31, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
                          OUTLINED_FUNCTION_23_0();
                          outlined destroy of FlightSnippet.Flight(v28);
                        }

                        v54 = v14;
                        goto LABEL_54;
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
  }

LABEL_49:
  OUTLINED_FUNCTION_148();
}

Swift::Int FlightSnippet.hashValue.getter(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  v6 = OUTLINED_FUNCTION_52_1();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(v6, v7, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance FlightSnippet.Leg(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Leg and conformance FlightSnippet.Leg, type metadata accessor for FlightSnippet.Leg, &protocol conformance descriptor for FlightSnippet.Leg);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance FlightSnippet@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_113_0();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FlightSnippet.Leg(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Leg and conformance FlightSnippet.Leg, type metadata accessor for FlightSnippet.Leg, &protocol conformance descriptor for FlightSnippet.Leg);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlightSnippet.Leg(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type FlightSnippet.Leg and conformance FlightSnippet.Leg, type metadata accessor for FlightSnippet.Leg, &protocol conformance descriptor for FlightSnippet.Leg);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlightSnippet(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type FlightSnippet.Status and conformance FlightSnippet.Status()
{
  result = lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status;
  if (!lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status;
  if (!lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status;
  if (!lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status;
  if (!lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightSnippet.Status and conformance FlightSnippet.Status);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [FlightSnippet.Status] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [FlightSnippet.Status] and conformance [A];
  if (!lazy protocol witness table cache variable for type [FlightSnippet.Status] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch13FlightSnippetV6StatusOGMd, &_sSay10OmniSearch13FlightSnippetV6StatusOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FlightSnippet.Status] and conformance [A]);
  }

  return result;
}

void type metadata completion function for FlightSnippet(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FlightSnippet.Flight?(319, &lazy cache variable for type metadata for FlightSnippet.Flight?, type metadata accessor for FlightSnippet.Flight);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FlightSnippet.Status(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlightSnippet.Status(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for FlightSnippet.Status(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for FlightSnippet.Status(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t type metadata completion function for FlightSnippet.Airport(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for FlightSnippet.FlightInfo(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_158Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_135();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_44_2(*(v3 + *(a3 + 20)));
  }

  v7 = OUTLINED_FUNCTION_81_1();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void __swift_store_extra_inhabitant_index_159Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_135();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t type metadata completion function for FlightSnippet.Flight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for FlightSnippet.Leg._StorageClass(uint64_t a1)
{
  type metadata accessor for FlightSnippet.Flight?(319, &lazy cache variable for type metadata for FlightSnippet.Airport?, type metadata accessor for FlightSnippet.Airport);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for FlightSnippet.Flight?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
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

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for FlightSnippet.Flight(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;
  result = type metadata accessor for FlightSnippet.Leg(0);
  *(a1 + 88) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_20_1()
{
  type metadata accessor for FlightSnippet.Leg._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_1(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = 0;
  v1[11] = 0;
  v1[12] = 0;
  v1[13] = 0xE000000000000000;
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  v1[16] = 0;
  v1[17] = 0xE000000000000000;
  v1[18] = 0;
  v1[19] = 0xE000000000000000;
  v1[20] = 0;
  v1[21] = 0xE000000000000000;
  v1[22] = 0;
  v1[23] = 0xE000000000000000;
  v1[24] = 0;
  v1[25] = 0xE000000000000000;

  return UnknownStorage.init()();
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_44_2@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{
  type metadata accessor for FlightSnippet.Flight(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1)
{
  type metadata accessor for FlightSnippet.Flight(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_62_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_68_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_71_1(uint64_t a1)
{
  type metadata accessor for FlightSnippet.Leg(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return outlined init with copy of EagerResolutionService?();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return type metadata accessor for FlightSnippet.Flight._StorageClass();
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_86_1(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_103_0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_105_0(uint64_t a1, ...)
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_108_0()
{

  return type metadata accessor for UnknownStorage();
}

uint64_t OUTLINED_FUNCTION_109_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_122_0()
{
  result = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_128_0()
{

  return type metadata accessor for FlightSnippet.Leg(0);
}

uint64_t OUTLINED_FUNCTION_129_0()
{
}

uint64_t OUTLINED_FUNCTION_130_0()
{

  return outlined init with take of FlightSnippet.Flight();
}

uint64_t FlightReservation.updatedStatus.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v14[-v2 - 8];
  FlightReservation.leg.getter(&v14[-v2 - 8]);
  v4 = type metadata accessor for FlightSnippet.Leg(0);
  v5 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v5, v6, v4);
  if (v7)
  {
    outlined destroy of IntentApplication?(v3, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v8 = *&v3[*(v4 + 20)];
    OUTLINED_FUNCTION_89_0(v8 + 16, v14);
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    OUTLINED_FUNCTION_0_3();
    outlined destroy of FlightSnippet.Leg(v3, v11);
  }

  v15 = v9;
  v16 = v10;
  return String.init<A>(describing:)();
}

uint64_t FlightReservation.leg.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for JSONDecodingOptions();
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  FlightReservation._resolvedFlightJSON.getter();
  if (v10)
  {
    v11 = type metadata accessor for FlightSnippet.Flight(0);
    JSONDecodingOptions.init()();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight();
    Message.init(jsonString:options:)();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    v16 = *&v9[*(v11 + 20)];
    OUTLINED_FUNCTION_89_0(v16 + 160, v20);
    v17 = *(v16 + 160);

    v18 = outlined destroy of FlightSnippet.Leg(v9, type metadata accessor for FlightSnippet.Flight);
    MEMORY[0x28223BE20](v18);
    v20[-2] = v2;
    specialized Sequence.first(where:)(partial apply for closure #1 in FlightReservation.leg.getter, v17, a1);
  }

  else
  {
    v12 = type metadata accessor for FlightSnippet.Flight(0);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
    outlined destroy of IntentApplication?(v9, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
    type metadata accessor for FlightSnippet.Leg(0);
    v13 = OUTLINED_FUNCTION_11_1();
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  }
}

unint64_t lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight()
{
  result = lazy protocol witness table cache variable for type FlightSnippet.Flight and conformance FlightSnippet.Flight;
  if (!lazy protocol witness table cache variable for type FlightSnippet.Flight and conformance FlightSnippet.Flight)
  {
    type metadata accessor for FlightSnippet.Flight(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightSnippet.Flight and conformance FlightSnippet.Flight);
  }

  return result;
}

uint64_t closure #1 in FlightReservation.leg.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for FlightSnippet.Airport(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + *(type metadata accessor for FlightSnippet.Leg(0) + 20));
  v9 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__departureAirport;
  swift_beginAccess();
  outlined init with copy of FlightSnippet.Airport?(v8 + v9, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    v7[2] = 0;
    v7[3] = 0xE000000000000000;
    v7[4] = 0;
    v7[5] = 0xE000000000000000;
    v7[6] = 0;
    v7[7] = 0xE000000000000000;
    v7[8] = 0;
    v7[9] = 0xE000000000000000;
    v7[10] = 0;
    v7[11] = 0;
    v7[12] = 0;
    v7[13] = 0xE000000000000000;
    v7[14] = 0;
    v7[15] = 0xE000000000000000;
    v7[16] = 0;
    v7[17] = 0xE000000000000000;
    v7[18] = 0;
    v7[19] = 0xE000000000000000;
    v7[20] = 0;
    v7[21] = 0xE000000000000000;
    v7[22] = 0;
    v7[23] = 0xE000000000000000;
    v7[24] = 0;
    v7[25] = 0xE000000000000000;
    UnknownStorage.init()();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      outlined destroy of IntentApplication?(v4, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
    }
  }

  else
  {
    outlined init with take of FlightSnippet.Airport(v4, v7);
  }

  v11 = *v7;
  v10 = v7[1];

  outlined destroy of FlightSnippet.Leg(v7, type metadata accessor for FlightSnippet.Airport);
  v12 = FlightReservation.flightDepartureAirportCode.getter();
  if (v13)
  {
    if (v11 == v12 && v13 == v10)
    {

      v15 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t FlightSnippet.Leg.departureDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v3 = type metadata accessor for FlightSnippet.Leg(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_19_2(v5);
  OUTLINED_FUNCTION_14();
  v74 = v7;
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v73 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_17_3();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_109();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v21);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_14();
  v67 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_36();
  v28 = v27 - v26;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v71 = v30;
  v72 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  v33 = v32 - v31;
  OUTLINED_FUNCTION_16_2(&v81);
  OUTLINED_FUNCTION_89_0(v3 + 56, v80);
  v70 = v33;
  Date.init(timeIntervalSince1970:)();
  v34 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__departureAirport;
  OUTLINED_FUNCTION_89_0(v3 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__departureAirport, v79);
  v35 = v3 + v34;
  v36 = v13;
  outlined init with copy of FlightSnippet.Airport?(v35, v1);
  v37 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v37, v38, v13);
  if (v39)
  {
    OUTLINED_FUNCTION_5_4();
    UnknownStorage.init()();
    v40 = OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_166(v40, v41, v13);
    if (!v39)
    {
      outlined destroy of IntentApplication?(v1, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
    }
  }

  else
  {
    outlined init with take of FlightSnippet.Airport(v1, v20);
  }

  v42 = *(v20 + 12);
  v43 = *(v20 + 13);

  OUTLINED_FUNCTION_6_2();
  TimeZone.init(identifier:)();

  OUTLINED_FUNCTION_166(v2, 1, v23);
  if (v39)
  {
    outlined destroy of IntentApplication?(v2, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logging.answerSynthesis);
    v45 = v69;
    outlined init with copy of FlightSnippet.Leg(v68, v69);
    v46 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v42))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v78 = v48;
      *v47 = 136642819;
      v49 = *(v45 + *(v65[1] + 20));
      v50 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__departureAirport;
      OUTLINED_FUNCTION_89_0(v49 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__departureAirport, v77);
      v51 = v49 + v50;
      v52 = v66;
      outlined init with copy of FlightSnippet.Airport?(v51, v66);
      OUTLINED_FUNCTION_166(v52, 1, v36);
      if (v39)
      {
        *v17 = 0;
        v17[1] = 0xE000000000000000;
        v17[2] = 0;
        v17[3] = 0xE000000000000000;
        v17[4] = 0;
        v17[5] = 0xE000000000000000;
        v17[6] = 0;
        v17[7] = 0xE000000000000000;
        v17[8] = 0;
        v17[9] = 0xE000000000000000;
        v17[10] = 0;
        v17[11] = 0;
        v17[12] = 0;
        v17[13] = 0xE000000000000000;
        v17[14] = 0;
        v17[15] = 0xE000000000000000;
        v17[16] = 0;
        v17[17] = 0xE000000000000000;
        v17[18] = 0;
        v17[19] = 0xE000000000000000;
        v17[20] = 0;
        v17[21] = 0xE000000000000000;
        v17[22] = 0;
        v17[23] = 0xE000000000000000;
        v17[24] = 0;
        v17[25] = 0xE000000000000000;
        UnknownStorage.init()();
        OUTLINED_FUNCTION_166(v52, 1, v36);
        if (!v39)
        {
          outlined destroy of IntentApplication?(v52, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
        }
      }

      else
      {
        outlined init with take of FlightSnippet.Airport(v52, v17);
      }

      String.init<A>(describing:)();
      OUTLINED_FUNCTION_0_3();
      outlined destroy of FlightSnippet.Leg(v45, v60);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v47 + 4) = v61;
      _os_log_impl(&dword_25D85C000, v46, v42, "Missing TimeZone info for departure: %{sensitive}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_0_3();
      v59 = outlined destroy of FlightSnippet.Leg(v45, v58);
    }

    OUTLINED_FUNCTION_22_1(v59);
    OUTLINED_FUNCTION_18_4();
    Calendar.dateComponents(_:from:)();
    v62 = OUTLINED_FUNCTION_8_3();
    v63(v62);
  }

  else
  {
    v53 = OUTLINED_FUNCTION_12_1();
    v55 = v54(v53);
    OUTLINED_FUNCTION_22_1(v55);
    OUTLINED_FUNCTION_18_4();
    Calendar.dateComponents(in:from:)();
    v56 = OUTLINED_FUNCTION_8_3();
    v57(v56);
    (*(v43 + 8))(v28, v23);
  }

  return (*(v71 + 8))(v42, v72);
}

uint64_t FlightSnippet.Leg.arrivalDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v3 = type metadata accessor for FlightSnippet.Leg(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_19_2(v5);
  OUTLINED_FUNCTION_14();
  v68 = v7;
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v67 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_17_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_109();
  v59 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v19);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_14();
  v61 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  v26 = v25 - v24;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v65 = v28;
  v66 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_36();
  v31 = v30 - v29;
  OUTLINED_FUNCTION_16_2(&v75);
  OUTLINED_FUNCTION_89_0(v3 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalActualTime, v74);
  v64 = v31;
  Date.init(timeIntervalSince1970:)();
  v32 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalAirport;
  OUTLINED_FUNCTION_89_0(v3 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalAirport, v73);
  outlined init with copy of FlightSnippet.Airport?(v3 + v32, v1);
  OUTLINED_FUNCTION_10_2(v1);
  if (v33)
  {
    OUTLINED_FUNCTION_5_4();
    UnknownStorage.init()();
    OUTLINED_FUNCTION_10_2(v1);
    if (!v33)
    {
      outlined destroy of IntentApplication?(v1, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
    }
  }

  else
  {
    outlined init with take of FlightSnippet.Airport(v1, v18);
  }

  v34 = *(v18 + 12);
  v35 = *(v18 + 13);

  OUTLINED_FUNCTION_6_2();
  TimeZone.init(identifier:)();

  OUTLINED_FUNCTION_166(v2, 1, v21);
  if (v33)
  {
    outlined destroy of IntentApplication?(v2, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logging.answerSynthesis);
    v37 = v63;
    outlined init with copy of FlightSnippet.Leg(v62, v63);
    v34 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v72 = v40;
      *v39 = 136642819;
      v41 = *(v37 + *(v58 + 20));
      v42 = OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalAirport;
      OUTLINED_FUNCTION_89_0(v41 + OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalAirport, v71);
      v43 = v41 + v42;
      v44 = v60;
      outlined init with copy of FlightSnippet.Airport?(v43, v60);
      OUTLINED_FUNCTION_10_2(v44);
      if (v33)
      {
        v45 = v59;
        *v59 = 0;
        v45[1] = 0xE000000000000000;
        v45[2] = 0;
        v45[3] = 0xE000000000000000;
        v45[4] = 0;
        v45[5] = 0xE000000000000000;
        v45[6] = 0;
        v45[7] = 0xE000000000000000;
        v45[8] = 0;
        v45[9] = 0xE000000000000000;
        v45[10] = 0;
        v45[11] = 0;
        v45[12] = 0;
        v45[13] = 0xE000000000000000;
        v45[14] = 0;
        v45[15] = 0xE000000000000000;
        v45[16] = 0;
        v45[17] = 0xE000000000000000;
        v45[18] = 0;
        v45[19] = 0xE000000000000000;
        v45[20] = 0;
        v45[21] = 0xE000000000000000;
        v45[22] = 0;
        v45[23] = 0xE000000000000000;
        v45[24] = 0;
        v45[25] = 0xE000000000000000;
        UnknownStorage.init()();
        OUTLINED_FUNCTION_10_2(v44);
        if (!v33)
        {
          outlined destroy of IntentApplication?(v44, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
        }
      }

      else
      {
        outlined init with take of FlightSnippet.Airport(v44, v59);
      }

      String.init<A>(describing:)();
      OUTLINED_FUNCTION_0_3();
      outlined destroy of FlightSnippet.Leg(v37, v53);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v39 + 4) = v54;
      _os_log_impl(&dword_25D85C000, v34, v38, "Missing TimeZone info for arrival: %{sensitive}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_0_3();
      v52 = outlined destroy of FlightSnippet.Leg(v37, v51);
    }

    OUTLINED_FUNCTION_22_1(v52);
    OUTLINED_FUNCTION_18_4();
    Calendar.dateComponents(_:from:)();
    v55 = OUTLINED_FUNCTION_8_3();
    v56(v55);
  }

  else
  {
    v46 = OUTLINED_FUNCTION_12_1();
    v48 = v47(v46);
    OUTLINED_FUNCTION_22_1(v48);
    OUTLINED_FUNCTION_18_4();
    Calendar.dateComponents(in:from:)();
    v49 = OUTLINED_FUNCTION_8_3();
    v50(v49);
    (*(v35 + 8))(v26, v21);
  }

  return (*(v65 + 8))(v34, v66);
}

uint64_t FlightSnippet.Leg.timeIntervalSince(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v21[-v3 - 8];
  v5 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v21[-v13 - 8];
  DateComponents.date.getter();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentApplication?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v14, v4, v5);
    v16 = type metadata accessor for FlightSnippet.Leg(0);
    OUTLINED_FUNCTION_89_0(*(v0 + *(v16 + 20)) + 48, v21);
    Date.init(timeIntervalSince1970:)();
    Date.timeIntervalSince(_:)();
    v18 = v17;
    v19 = *(v7 + 8);
    v19(v11, v5);
    v19(v14, v5);
    return v18 & 0x7FFFFFFFFFFFFFFFLL;
  }
}

uint64_t outlined init with copy of FlightSnippet.Airport?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of FlightSnippet.Leg(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of FlightSnippet.Leg(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightSnippet.Leg(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of FlightSnippet.Airport(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightSnippet.Airport(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_5_4()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  v0[20] = 0;
  v0[21] = 0xE000000000000000;
  v0[22] = 0;
  v0[23] = 0xE000000000000000;
  v0[24] = 0;
  v0[25] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return outlined destroy of FlightSnippet.Leg(v0, type metadata accessor for FlightSnippet.Airport);
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 232) = v1 - a1;

  return type metadata accessor for Calendar();
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return type metadata accessor for FlightSnippet.Airport(0);
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return type metadata accessor for TimeZone();
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1)
{

  return static Calendar.current.getter();
}

void ExtractedInfo.buildAnswerResult(locale:)()
{
  OUTLINED_FUNCTION_155();
  v122 = v1;
  v123 = v2;
  v133 = v3;
  v134 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v125 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  v124 = v6;
  v7 = OUTLINED_FUNCTION_78_0();
  v130 = type metadata accessor for SearchResult(v7);
  OUTLINED_FUNCTION_14();
  v126 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v132 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v12 = OUTLINED_FUNCTION_114(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_0();
  v128 = v13;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v14);
  v135 = &v113 - v15;
  v16 = OUTLINED_FUNCTION_78_0();
  v127 = type metadata accessor for SearchResultItem(v16);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_3();
  v129 = v18;
  OUTLINED_FUNCTION_78_0();
  v121 = type metadata accessor for Date.FormatStyle();
  OUTLINED_FUNCTION_14();
  v120 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v21);
  v119 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v117 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v24);
  v25 = type metadata accessor for URL();
  OUTLINED_FUNCTION_14();
  v115 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_3();
  v29 = OUTLINED_FUNCTION_28_2(v28);
  v131 = type metadata accessor for ExtractionRuleType(v29);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_36();
  v33 = (v32 - v31);
  v34 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  OUTLINED_FUNCTION_114(v41);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  v44 = &v113 - v43;
  v45 = type metadata accessor for Answer(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_36();
  v49 = (v48 - v47);
  v50 = v0;
  SearchResultItem.associatedValue.getter(v137);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v45);
    OUTLINED_FUNCTION_1_4();
    _s10OmniSearch0B6ResultVWObTm_1(v44, v49, v54);
    v55 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v45);
    UUID.init()();
    v59 = UUID.uuidString.getter();
    v113 = v60;
    (*(v36 + 8))(v40, v34);
    v61 = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
    v62 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_25DBC8180;
    OUTLINED_FUNCTION_8_4();
    _s10OmniSearch0B6ResultVWOcTm_0(v50, v64 + v62, v65);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v25);
    *v49 = v59;
    v69 = MEMORY[0x277D84F90];
    v49[1] = v113;
    v49[2] = 0;
    v49[3] = 0xE000000000000000;
    v49[4] = v61;
    v49[5] = v63;
    v49[6] = v69;
    *(v49 + v45[10]) = 0;
    v70 = (v49 + v45[11]);
    *v70 = 0;
    v70[1] = 0;
    *(v49 + v45[12]) = xmmword_25DBC9410;
    v55 = v50;
    if (__swift_getEnumTagSinglePayload(v44, 1, v45) != 1)
    {
      outlined destroy of IntentApplication?(v44, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    }
  }

  v71 = type metadata accessor for ExtractedInfo(0);
  _s10OmniSearch0B6ResultVWOcTm_0(v55 + *(v71 + 20), v33, type metadata accessor for ExtractionRuleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v73 = v132;
  v74 = v134;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v78 = v115;
      v79 = *(v115 + 32);
      v131 = v55;
      v80 = v114;
      v79(v114, v33, v25);
      v81 = v45[9];
      outlined destroy of IntentApplication?(v49 + v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v78 + 16))(v49 + v81, v80, v25);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v25);
      v75 = URL.absoluteString.getter();
      v76 = v85;
      v86 = v80;
      v55 = v131;
      (*(v78 + 8))(v86, v25);
      v74 = v134;
      goto LABEL_11;
    case 2:
      _s10OmniSearch0B10ResultItemOWOhTm_0();
      goto LABEL_8;
    case 4:
      v87 = v117;
      v88 = v116;
      v89 = v119;
      (*(v117 + 32))(v116, v33, v119);
      v90 = v118;
      static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v122, v123, 1, 0, 0, v91, v92, v93, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
      lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
      v94 = v121;
      Date.formatted<A>(_:)();
      (*(v120 + 8))(v90, v94);
      (*(v87 + 8))(v88, v89);
      v75 = v137[0];
      v76 = v137[1];
      goto LABEL_11;
    case 5:
LABEL_8:
      OUTLINED_FUNCTION_8_4();
      _s10OmniSearch0B6ResultVWOcTm_0(v55, v133, v77);
      break;
    default:
      v75 = *v33;
      v76 = v33[1];
LABEL_11:

      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v136 = v49[4];
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

      v49[4] = v136;
      v95 = v49[3];
      v96 = v49[2] & 0xFFFFFFFFFFFFLL;
      if ((v95 & 0x2000000000000000) != 0)
      {
        v96 = HIBYTE(v95) & 0xF;
      }

      v97 = v130;
      if (v96)
      {
      }

      else
      {

        v49[2] = v75;
        v49[3] = v76;
      }

      OUTLINED_FUNCTION_19_3();
      _s10OmniSearch0B6ResultVWOcTm_0(v49, v129, v98);
      swift_storeEnumTagMultiPayload();
      LODWORD(v131) = *(v55 + v97[8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v99 = CodableNSSecureCoding.wrappedValue.getter();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v100, v101, v102, v74);
      *(v73 + v97[7]) = MEMORY[0x277D84F90];
      v103 = OUTLINED_FUNCTION_15_3((v73 + v97[10]));
      _s10OmniSearch0B6ResultVWOcTm_0(v103, v73, v104);
      type metadata accessor for CSSearchableItem();
      OUTLINED_FUNCTION_18_5();
      lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(v105, v106, MEMORY[0x277D85380]);
      v107 = v99;
      v108 = v135;
      CodableNSSecureCoding.init(wrappedValue:)();
      v109 = v128;
      outlined init with copy of SpotlightRankingItem?(v108, v128, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      if (__swift_getEnumTagSinglePayload(v109, 1, v74) == 1)
      {
        outlined destroy of IntentApplication?(v109, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_41_1();
        LOBYTE(v136) = 1;
        OUTLINED_FUNCTION_28_1();
        SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

        outlined destroy of IntentApplication?(v108, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_3_2();
      }

      else
      {

        outlined destroy of IntentApplication?(v108, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_3_2();
        v110 = v124;
        v111 = *(v125 + 32);
        v111(v124, v109, v74);
        v111(v73 + v97[5], v110, v74);
      }

      *(v73 + v97[8]) = v131;
      *(v73 + v97[9]) = 1;
      OUTLINED_FUNCTION_7_2();
      _s10OmniSearch0B6ResultVWObTm_1(v73, v133, v112);
      break;
  }

  OUTLINED_FUNCTION_0_4();
  _s10OmniSearch0B10ResultItemOWOhTm_0();
  OUTLINED_FUNCTION_148();
}

void ExtractedInfo.updateResultWith(_:locale:)()
{
  OUTLINED_FUNCTION_155();
  v115 = v1;
  v116 = v3;
  v112 = v4;
  v113 = v5;
  v7 = v6;
  v111 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v100 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v99 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v12 = OUTLINED_FUNCTION_114(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_0();
  v109 = v13;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v14);
  v110 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  OUTLINED_FUNCTION_114(v16);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_28_2(&v97 - v18);
  v105 = type metadata accessor for PommesContext();
  OUTLINED_FUNCTION_14();
  v98 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_3();
  v104 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  OUTLINED_FUNCTION_114(v22);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23_1();
  v24 = type metadata accessor for Answer(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_3();
  v114 = v26;
  v27 = OUTLINED_FUNCTION_78_0();
  v108 = type metadata accessor for SearchResult(v27);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_39_0();
  v107 = v29;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v30);
  v32 = &v97 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10ResultItemOSgMd, &_s10OmniSearch0B10ResultItemOSgMR);
  OUTLINED_FUNCTION_114(v33);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_36_2();
  v35 = type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39_0();
  v106 = v37;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v38);
  v40 = &v97 - v39;
  v41 = type metadata accessor for ResolvedInfo(0);
  v42 = v41[5];
  v102 = v7;
  outlined init with copy of SpotlightRankingItem?(v7 + v42, v2, &_s10OmniSearch0B10ResultItemOSgMd, &_s10OmniSearch0B10ResultItemOSgMR);
  v103 = v35;
  if (__swift_getEnumTagSinglePayload(v2, 1, v35) == 1)
  {
    outlined destroy of IntentApplication?(v2, &_s10OmniSearch0B10ResultItemOSgMd, &_s10OmniSearch0B10ResultItemOSgMR);
    ExtractedInfo.buildAnswerResult(locale:)();
    SearchResultItem.associatedValue.getter(v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    v43 = v24;
    if (swift_dynamicCast())
    {
      v115 = v32;
      v44 = OUTLINED_FUNCTION_13_2();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v24);
      OUTLINED_FUNCTION_1_4();
      v47 = v114;
      _s10OmniSearch0B6ResultVWObTm_1(v0, v114, v48);
      v49 = v102;
      v50 = *(v102 + v41[6]);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118[0] = *(v47 + 32);
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v50, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v118);
      *(v47 + 32) = v118[0];
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v117 = *(v47 + 32);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

      *(v47 + 32) = v117;
      v52 = *(v49 + v41[8]);

      *(v47 + 48) = v52;
      v53 = v43;
      outlined assign with copy of URL?(v49 + v41[7], v47 + *(v43 + 36));
      v54 = v101;
      outlined init with copy of SpotlightRankingItem?(v49 + v41[10], v101, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      v55 = v105;
      if (__swift_getEnumTagSinglePayload(v54, 1, v105) == 1)
      {
        outlined destroy of IntentApplication?(v54, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v56 = v110;
        v57 = v111;
        v58 = v108;
        v59 = v115;
        v60 = v106;
      }

      else
      {
        v67 = v98;
        v68 = OUTLINED_FUNCTION_94();
        v69(v68);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, MEMORY[0x277D56698], MEMORY[0x277D566A0]);
        v70 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v56 = v110;
        v57 = v111;
        v71 = v70;
        v73 = v72;

        v74 = v47 + *(v53 + 48);
        outlined consume of Data?(*v74, *(v74 + 8));
        *v74 = v71;
        *(v74 + 8) = v73;
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
        }

        v75 = type metadata accessor for Logger();
        __swift_project_value_buffer(v75, static Logging.answerSynthesis);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_25D85C000, v76, v77, "Added encoded PommesContext data to Answer document", v78, 2u);
          MEMORY[0x25F8A1050](v78, -1, -1);
        }

        (*(v67 + 8))(v104, v55);
        v59 = v115;
        v60 = v106;
        v58 = v108;
      }

      OUTLINED_FUNCTION_19_3();
      _s10OmniSearch0B6ResultVWOcTm_0(v47, v60, v79);
      swift_storeEnumTagMultiPayload();
      LODWORD(v115) = *(v59 + v58[8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v80 = CodableNSSecureCoding.wrappedValue.getter();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v57);
      v84 = v107;
      *(v107 + v58[7]) = MEMORY[0x277D84F90];
      v85 = OUTLINED_FUNCTION_15_3((v84 + v58[10]));
      _s10OmniSearch0B6ResultVWOcTm_0(v85, v84, v86);
      v87 = v56;
      type metadata accessor for CSSearchableItem();
      OUTLINED_FUNCTION_18_5();
      lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(v88, v89, MEMORY[0x277D85380]);
      v90 = v80;
      CodableNSSecureCoding.init(wrappedValue:)();
      v91 = v109;
      outlined init with copy of SpotlightRankingItem?(v87, v109, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      if (__swift_getEnumTagSinglePayload(v91, 1, v57) == 1)
      {
        outlined destroy of IntentApplication?(v91, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_40_3();
        LOBYTE(v117) = v92;
        OUTLINED_FUNCTION_28_1();
        SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

        outlined destroy of IntentApplication?(v87, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_22_2();
      }

      else
      {

        outlined destroy of IntentApplication?(v87, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_22_2();
        v93 = *(v100 + 32);
        v94 = v99;
        v93(v99, v91, v57);
        v93(v84 + v58[5], v94, v57);
      }

      *(v84 + v58[8]) = v115;
      *(v84 + v58[9]) = 1;
      OUTLINED_FUNCTION_7_2();
      _s10OmniSearch0B6ResultVWObTm_1(v84, v95, v96);
      OUTLINED_FUNCTION_0_4();
      _s10OmniSearch0B10ResultItemOWOhTm_0();
    }

    else
    {
      v63 = OUTLINED_FUNCTION_17_1();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v24);
      outlined destroy of IntentApplication?(v0, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
      OUTLINED_FUNCTION_7_2();
      _s10OmniSearch0B6ResultVWObTm_1(v32, v116, v66);
    }
  }

  else
  {
    _s10OmniSearch0B6ResultVWObTm_1(v2, v40, type metadata accessor for SearchResultItem);
    OUTLINED_FUNCTION_8_4();
    v61 = v116;
    _s10OmniSearch0B6ResultVWOcTm_0(v115, v116, v62);
    outlined assign with take of SearchResultItem(v40, v61);
  }

  OUTLINED_FUNCTION_148();
}

void ResolvedInfo.init(answer:updatedItem:metadata:extractedMediaURL:experiences:audioResults:pommesContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  v16 = type metadata accessor for ResolvedInfo(0);
  outlined init with take of SearchResultItem?(a3, a9 + v16[5], &_s10OmniSearch0B10ResultItemOSgMd, &_s10OmniSearch0B10ResultItemOSgMR);
  *(a9 + v16[6]) = a4;
  outlined init with take of SearchResultItem?(a5, a9 + v16[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(a9 + v16[8]) = a6;
  *(a9 + v16[9]) = a7;
  outlined init with take of SearchResultItem?(a8, a9 + v16[10], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  OUTLINED_FUNCTION_203();
}

uint64_t key path getter for static ResolvedInfo.kResolvedAnswerKey : ResolvedInfo.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_27FC6B108;
  *a1 = static ResolvedInfo.kResolvedAnswerKey;
  a1[1] = v2;
}

uint64_t key path setter for static ResolvedInfo.kResolvedAnswerKey : ResolvedInfo.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static ResolvedInfo.kResolvedAnswerKey = v2;
  qword_27FC6B108 = v1;
}

uint64_t ResolvedInfo.answer.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResolvedInfo.updatedItem.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = type metadata accessor for ResolvedInfo(v2);
  return outlined assign with take of SearchResultItem?(v0, v1 + *(v3 + 20), &_s10OmniSearch0B10ResultItemOSgMd, &_s10OmniSearch0B10ResultItemOSgMR);
}

uint64_t ResolvedInfo.updatedItem.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for ResolvedInfo(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t ResolvedInfo.metadata.getter()
{
  type metadata accessor for ResolvedInfo(0);
}

uint64_t ResolvedInfo.metadata.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for ResolvedInfo(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t ResolvedInfo.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for ResolvedInfo(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t ResolvedInfo.extractedMediaURL.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = type metadata accessor for ResolvedInfo(v2);
  return outlined assign with take of SearchResultItem?(v0, v1 + *(v3 + 28), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t ResolvedInfo.extractedMediaURL.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for ResolvedInfo(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t ResolvedInfo.experiences.getter()
{
  type metadata accessor for ResolvedInfo(0);
}

uint64_t ResolvedInfo.experiences.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for ResolvedInfo(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

uint64_t ResolvedInfo.experiences.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for ResolvedInfo(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t ResolvedInfo.audioResults.getter()
{
  type metadata accessor for ResolvedInfo(0);
}

uint64_t ResolvedInfo.audioResults.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for ResolvedInfo(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t ResolvedInfo.audioResults.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for ResolvedInfo(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t ResolvedInfo.pommesContext.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = type metadata accessor for ResolvedInfo(v2);
  return outlined assign with take of SearchResultItem?(v0, v1 + *(v3 + 40), &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
}

uint64_t ResolvedInfo.pommesContext.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for ResolvedInfo(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t ResolvedInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for ResolvedInfo(0);
  type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *(a1 + v2[6]) = MEMORY[0x277D84F98];
  type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = MEMORY[0x277D84F90];
  *(a1 + v2[8]) = MEMORY[0x277D84F90];
  *(a1 + v2[9]) = v11;
  type metadata accessor for PommesContext();
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t static ResolvedInfo.kResolvedAnswerKey.getter(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t static ResolvedInfo.kResolvedAnswerKey.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t SearchResult.answer.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_23_1();
  SearchResultItem.associatedValue.getter(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  v4 = type metadata accessor for Answer(0);
  if (OUTLINED_FUNCTION_38_2(v4))
  {
    v5 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
    v8 = *(v0 + 16);

    OUTLINED_FUNCTION_0_4();
    _s10OmniSearch0B10ResultItemOWOhTm_0();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
    outlined destroy of IntentApplication?(v0, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    return 0;
  }

  return v8;
}

uint64_t SearchResult.dialog.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_23_1();
  SearchResultItem.associatedValue.getter(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  v4 = type metadata accessor for Answer(0);
  if (OUTLINED_FUNCTION_38_2(v4))
  {
    v5 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
    v8 = *(v0 + *(v1 + 44));

    OUTLINED_FUNCTION_0_4();
    _s10OmniSearch0B10ResultItemOWOhTm_0();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
    outlined destroy of IntentApplication?(v0, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    return 0;
  }

  return v8;
}

uint64_t SearchResult.resolvedAnswer.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36_2();
  v3 = type metadata accessor for Answer(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  SearchResultItem.associatedValue.getter(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    OUTLINED_FUNCTION_1_4();
    _s10OmniSearch0B6ResultVWObTm_1(v0, v7, v11);
    v12 = *(v7 + 32);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v13 = static ResolvedInfo.kResolvedAnswerKey;
    v14 = qword_27FC6B108;

    v15 = specialized Dictionary.subscript.getter(v13, v14, v12);

    OUTLINED_FUNCTION_0_4();
    _s10OmniSearch0B10ResultItemOWOhTm_0();
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v3);
    outlined destroy of IntentApplication?(v0, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    return 0;
  }

  return v15;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_27_0(v3);
    }
  }

  return OUTLINED_FUNCTION_94();
}

{
  if (!*(a3 + 16))
  {
    return 4;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 4;
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_44_3();
  if (v2 && (v3 = v1, v4 = specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for AssistantTypeSchemaDefinition();
    OUTLINED_FUNCTION_17();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    v10 = OUTLINED_FUNCTION_13_2();
    v13 = v8;
  }

  else
  {
    type metadata accessor for AssistantTypeSchemaDefinition();
    v10 = OUTLINED_FUNCTION_17_1();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_44_3();
  if (v3 && (v4 = v2, v5 = specialized __RawDictionaryStorage.find<A>(_:)(v1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for DisplayRepresentation();
    OUTLINED_FUNCTION_17();
    (*(v10 + 16))(v0, v8 + *(v10 + 72) * v7, v9);
    v11 = OUTLINED_FUNCTION_13_2();
    v14 = v9;
  }

  else
  {
    type metadata accessor for DisplayRepresentation();
    v11 = OUTLINED_FUNCTION_17_1();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_27_0(v2);
    }
  }

  return OUTLINED_FUNCTION_94();
}

{
  if (*(a2 + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_27_0(v2);
    }
  }

  return OUTLINED_FUNCTION_94();
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_37_2(v5);

    outlined init with copy of Any(v7, v8);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double specialized Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_44_3();
  if (v2 && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_37_2(v3);

    outlined init with copy of Any(v5, v6);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

{
  OUTLINED_FUNCTION_44_3();
  if (v1 && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(), (v3 & 1) != 0))
  {
    v4 = OUTLINED_FUNCTION_37_2(v2);

    outlined init with copy of Any(v4, v5);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

id specialized Dictionary.subscript.getter(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 56) + 16 * v3;
  v6 = *v5;
  outlined copy of Result<[SearchResult], Error>(*v5, *(v5 + 8));
  return v6;
}

void SearchResult.isResolved.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v39[-v8];
  v10 = type metadata accessor for Answer(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  SearchResultItem.associatedValue.getter(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
    OUTLINED_FUNCTION_1_4();
    _s10OmniSearch0B6ResultVWObTm_1(v9, v14, v18);
    v19 = *(v14 + 32);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v21 = static ResolvedInfo.kResolvedAnswerKey;
    v20 = qword_27FC6B108;

    specialized Dictionary.subscript.getter(v21, v20, v19);
    v23 = v22;

    OUTLINED_FUNCTION_0_4();
    _s10OmniSearch0B10ResultItemOWOhTm_0();
    if (v23)
    {

      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v10);
    outlined destroy of IntentApplication?(v9, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  }

  SearchResultItem.associatedValue.getter(v40);
  v27 = type metadata accessor for FlightReservation();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
    FlightReservation.resolvedFlight.getter(v0);
    (*(*(v27 - 8) + 8))(v1, v27);
    v31 = type metadata accessor for FlightSnippet.Flight(0);
    __swift_getEnumTagSinglePayload(v0, 1, v31);
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v27);
    outlined destroy of IntentApplication?(v1, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    type metadata accessor for FlightSnippet.Flight(0);
    v35 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  }

  outlined destroy of IntentApplication?(v0, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
LABEL_9:
  OUTLINED_FUNCTION_203();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  specialized __RawDictionaryStorage.find<A>(_:)(v3, v1);
  OUTLINED_FUNCTION_9_3();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
  v14 = OUTLINED_FUNCTION_24_2();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v4, v2);
    OUTLINED_FUNCTION_26_1();
    if (!v17)
    {
      goto LABEL_14;
    }

    v12 = v16;
  }

  v18 = *v0;
  if (v13)
  {
    v19 = (*(v18 + 56) + 16 * v12);
    *v19 = v8;
    v19[1] = v6;
    OUTLINED_FUNCTION_148();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v12, v4, v2, v8, v6, v18);
    OUTLINED_FUNCTION_148();
  }
}

unint64_t type metadata accessor for CSSearchableItem()
{
  result = lazy cache variable for type metadata for CSSearchableItem;
  if (!lazy cache variable for type metadata for CSSearchableItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CSSearchableItem);
  }

  return result;
}

uint64_t type metadata accessor for ResolvedInfo(uint64_t a1)
{
  result = type metadata singleton initialization cache for ResolvedInfo;
  if (!type metadata singleton initialization cache for ResolvedInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_155();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchPropertyRequest(v16);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  specialized __RawDictionaryStorage.find<A>(_:)(v15);
  OUTLINED_FUNCTION_9_3();
  if (v23)
  {
    __break(1u);
    goto LABEL_11;
  }

  v24 = v21;
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10OmniSearch0D15PropertyRequestVypGMd, &_ss17_NativeDictionaryVy10OmniSearch0D15PropertyRequestVypGMR);
  v26 = OUTLINED_FUNCTION_24_2();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v26, v27))
  {
    goto LABEL_5;
  }

  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
  if ((v25 & 1) != (v29 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v24 = v28;
LABEL_5:
  v30 = *v13;
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(v30 + 56) + 32 * v24));
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_148();

    outlined init with take of Any(v31, v32);
  }

  else
  {
    _s10OmniSearch0B6ResultVWOcTm_0(v15, v20, type metadata accessor for SearchPropertyRequest);
    specialized _NativeDictionary._insert(at:key:value:)(v24, v20, v12, v30);
    OUTLINED_FUNCTION_148();
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_9_3();
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (!OUTLINED_FUNCTION_47_3())
  {
    goto LABEL_5;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v21;
LABEL_5:
  v23 = *v12;
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(v23 + 56) + 32 * v19));
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_203();

    return outlined init with take of Any(v24, v25);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v19, a2, a3, a1, v23);
    OUTLINED_FUNCTION_203();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, char a3)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a3 & 1);
  OUTLINED_FUNCTION_9_3();
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10OmniSearch06GlobalD6ClientC9QueryTypeOs6ResultOySayAC0dI0VGs5Error_pGGMd, &_ss17_NativeDictionaryVy10OmniSearch06GlobalD6ClientC9QueryTypeOs6ResultOySayAC0dI0VGs5Error_pGGMR);
  if (OUTLINED_FUNCTION_47_3())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a3 & 1);
    OUTLINED_FUNCTION_26_1();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    v14 = *(*v3 + 56) + 16 * v10;
    *v14 = a1;
    *(v14 + 8) = a2 & 1;
    OUTLINED_FUNCTION_203();

    outlined consume of Result<[SearchResult], Error>(v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_203();

    specialized _NativeDictionary._insert(at:key:value:)(v18, v19, v20, v21, v22);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_2(a1, a2, a3);
  OUTLINED_FUNCTION_9_3();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_49_2();
  v10 = OUTLINED_FUNCTION_24_2();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
    OUTLINED_FUNCTION_26_1();
    if (!v13)
    {
      goto LABEL_14;
    }

    v8 = v12;
  }

  if (v7)
  {
    *(*(*v6 + 56) + 8 * v8) = v4;
    OUTLINED_FUNCTION_39_2();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_42_3();
    v17(v16);
    OUTLINED_FUNCTION_39_2();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3);
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_2(a1, a2, a3);
  OUTLINED_FUNCTION_9_3();
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_49_2();
  v10 = OUTLINED_FUNCTION_24_2();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
    OUTLINED_FUNCTION_26_1();
    if (!v13)
    {
      goto LABEL_14;
    }

    v8 = v12;
  }

  if (v7)
  {
    *(*(*v6 + 56) + 8 * v8) = v4;
    OUTLINED_FUNCTION_39_2();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_42_3();
    v17(v16);
    OUTLINED_FUNCTION_39_2();
  }
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  specialized LazyMapSequence.makeIterator()(v49);
  v6 = v49[1];
  v7 = v49[3];
  v8 = v49[4];
  v41 = v49[5];
  v42 = v49[0];
  v9 = (v49[2] + 64) >> 6;

  v39 = v9;
  v40 = v6;
  if (v8)
  {
    while (1)
    {
      v43 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v42 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v42 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v48[0] = v14;
      v48[1] = v15;
      v48[2] = v17;
      v48[3] = v18;

      v41(&v44, v48);

      v19 = v44;
      v20 = v45;
      v21 = v46;
      v22 = v47;
      v23 = *v50;
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v28 = v24;
      if (v23[3] >= v26 + v27)
      {
        if ((v43 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_24;
        }

        v25 = v29;
      }

      v8 &= v8 - 1;
      v31 = *v50;
      if (v28)
      {

        v32 = (v31[7] + 16 * v25);
        *v32 = v21;
        v32[1] = v22;
      }

      else
      {
        v31[(v25 >> 6) + 8] |= 1 << v25;
        v33 = (v31[6] + 16 * v25);
        *v33 = v19;
        v33[1] = v20;
        v34 = (v31[7] + 16 * v25);
        *v34 = v21;
        v34[1] = v22;
        v35 = v31[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v31[2] = v37;
      }

      a4 = 1;
      v7 = v10;
      v9 = v39;
      v6 = v40;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        outlined consume of [String : String].Iterator._Variant(v42);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v43 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v50 = a5;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v49);
  v6 = v49[1];
  v7 = v49[3];
  v8 = v49[4];
  v40 = v49[5];
  v42 = v49[0];
  v9 = (v49[2] + 64) >> 6;

  for (i = v6; ; v6 = i)
  {
    v10 = v8;
    v11 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = *(*(v42 + 48) + v13);
    v15 = (*(v42 + 56) + 16 * v13);
    v17 = *v15;
    v16 = v15[1];
    v44[0] = v14;
    v45 = v17;
    v46 = v16;

    v40(v47, v44);

    v18 = v48;
    if (!v48)
    {
LABEL_19:
      outlined consume of [String : String].Iterator._Variant(v42);
    }

    v19 = LOBYTE(v47[0]);
    v41 = v47[1];
    v20 = *v50;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(LOBYTE(v47[0]));
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_21;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10OmniSearch0D9ResultKeyOSSGMd, _ss17_NativeDictionaryVy10OmniSearch0D9ResultKeyOSSGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a4 & 1);
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_23;
      }

      v22 = v27;
    }

    v43 = (v10 - 1) & v10;
    v29 = *v50;
    if (v26)
    {
      v30 = (v29[7] + 16 * v22);
      v32 = *v30;
      v31 = v30[1];

      v33 = (v29[7] + 16 * v22);
      *v33 = v32;
      v33[1] = v31;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + v22) = v19;
      v34 = (v29[7] + 16 * v22);
      *v34 = v41;
      v34[1] = v18;
      v35 = v29[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_22;
      }

      v29[2] = v37;
    }

    a4 = 1;
    v7 = v11;
    v8 = v43;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_19;
    }

    v10 = *(v6 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v10 = type metadata accessor for SearchResult(0);
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v40 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtSgMd, &_sSS_10OmniSearch0B6ResultVtSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (v39 - v16);
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v45);
  v41 = v45[0];
  v42 = v45[1];
  v43 = v45[2];
  v44 = v46;
  v39[1] = a1;

  v39[0] = a3;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      outlined consume of [String : String].Iterator._Variant(v41);
    }

    v19 = *(v18 + 48);
    v21 = *v17;
    v20 = v17[1];
    outlined init with take of ResultsDialog(v17 + v19, v14);
    v22 = *a5;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10OmniSearch0D6ResultVGMd, &_ss17_NativeDictionaryVySS10OmniSearch0D6ResultVGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, a4 & 1);
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_16;
      }

      v24 = v29;
    }

    v31 = *a5;
    if (v28)
    {
      v32 = *(v47 + 72) * v24;
      v33 = v40;
      _s10OmniSearch0B6ResultVWOcTm_1(v31[7] + v32, v40);
      _s10OmniSearch0B6ResultVWOhTm_0(v14, type metadata accessor for SearchResult);

      outlined assign with take of SearchResult(v33, v31[7] + v32);
      a4 = 1;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v34 = (v31[6] + 16 * v24);
      *v34 = v21;
      v34[1] = v20;
      outlined init with take of ResultsDialog(v14, v31[7] + *(v47 + 72) * v24);
      v35 = v31[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_15;
      }

      v31[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10OmniSearch0C6ResultV5valuetMd, &_sSS3key_10OmniSearch0C6ResultV5valuetMR) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_0()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v2(v1);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVWObTm_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t outlined assign with take of SearchResultItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SearchResultItem?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v4;
}

uint64_t outlined init with copy of SpotlightRankingItem?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v4;
}

uint64_t outlined assign with take of SearchResultItem?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v4;
}

void type metadata completion function for ResolvedInfo(uint64_t a1)
{
  type metadata accessor for SearchResultItem?(319, &lazy cache variable for type metadata for SearchResultItem?, type metadata accessor for SearchResultItem, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : String]();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SearchResultItem?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SearchResultItem?(319, &lazy cache variable for type metadata for [DialogExperience], type metadata accessor for DialogExperience, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SearchResultItem?(319, &lazy cache variable for type metadata for [AudioResult], MEMORY[0x277D565E8], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SearchResultItem?(319, &lazy cache variable for type metadata for PommesContext?, MEMORY[0x277D56698], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for SearchResultItem?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id outlined copy of Result<[SearchResult], Error>(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void outlined consume of Result<[SearchResult], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_0();
}

uint64_t OUTLINED_FUNCTION_15_3@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_0();
}

unint64_t OUTLINED_FUNCTION_25_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_38_2(uint64_t a1)
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_47_3()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

Swift::Int AnswerSynthesisModelError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnswerSynthesisModelError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AnswerSynthesisModelError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisModelError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

Swift::Int PQAVerificationModelOnDeviceError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PQAVerificationModelOnDeviceError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PQAVerificationModelOnDeviceError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError()
{
  result = lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError;
  if (!lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError;
  if (!lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PQAVerificationModelOnDeviceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PQAVerificationModelOnDeviceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t AnswerSynthesisModelOnDevice.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t AnswerSynthesisModelOnDevice.model.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t AnswerSynthesisModelOnDevice.model.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t AnswerSynthesisModelOnDevice.resourceBundleQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t AnswerSynthesisModelOnDevice.resourceBundleQuery.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery;
  swift_beginAccess();
  type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

void AnswerSynthesisModelOnDevice.init(languageCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v22;
  a20 = v23;
  v171 = v21;
  v24 = v20;
  v26 = v25;
  v177 = *v20;
  v27 = type metadata accessor for CachePolicy();
  v28 = OUTLINED_FUNCTION_114(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v30 - v29);
  v31 = type metadata accessor for SessionConfiguration();
  v32 = OUTLINED_FUNCTION_1_5(v31, &v184);
  v154 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  OUTLINED_FUNCTION_114(v36);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v38);
  v39 = type metadata accessor for ModelBundle();
  v40 = OUTLINED_FUNCTION_1_5(v39, &a13);
  v181 = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v43 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_114(v44);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_49_3();
  v174 = v46;
  OUTLINED_FUNCTION_78_0();
  v47 = type metadata accessor for ResourceBundleQuery();
  v48 = OUTLINED_FUNCTION_1_5(v47, &a16);
  v170 = v49;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14_2();
  v180 = v52;
  OUTLINED_FUNCTION_78_0();
  v53 = type metadata accessor for AssetVersion();
  v54 = OUTLINED_FUNCTION_1_5(v53, &a11);
  v157 = v55;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v57 - v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
  v59 = OUTLINED_FUNCTION_1_5(v58, &a12);
  v158 = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_2();
  v178 = v62;
  OUTLINED_FUNCTION_78_0();
  v63 = type metadata accessor for Locale.LanguageCode();
  OUTLINED_FUNCTION_14();
  v65 = v64;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_39_0();
  v175 = v67;
  MEMORY[0x28223BE20](v68);
  v70 = &v148 - v69;
  v20[2] = 0;
  v155 = v20 + 2;
  v20[3] = 0;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  v72 = __swift_project_value_buffer(v71, static Logging.answerSynthesis);
  v73 = *(v65 + 16);
  v73(v70, v26, v63);
  v179 = v72;
  v74 = Logger.logObject.getter();
  LODWORD(v163) = static os_log_type_t.info.getter();
  v75 = OUTLINED_FUNCTION_20_3();
  v77 = os_log_type_enabled(v75, v76);
  v176 = v65;
  v172 = v73;
  v173 = v65 + 16;
  if (v77)
  {
    OUTLINED_FUNCTION_28_3();
    v78 = swift_slowAlloc();
    v168 = v24;
    v79 = v78;
    OUTLINED_FUNCTION_9_4();
    v149 = swift_slowAlloc();
    v183[0] = v149;
    *v79 = 136315138;
    v73(v175, v70, v63);
    String.init<A>(describing:)();
    v80 = OUTLINED_FUNCTION_68_2();
    v81(v80);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v79 + 4) = v82;
    _os_log_impl(&dword_25D85C000, v74, v163, "Initializing AnswerSynthesisModelOnDevice with %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v24 = v168;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v83 = OUTLINED_FUNCTION_68_2();
    v84(v83);
  }

  v85 = v181;
  static Catalog.Resource.LLM.Adapter.AnswerSynthesis()();
  __swift_project_boxed_opaque_existential_1(v183, v183[3]);
  v86 = v178;
  v87 = v171;
  dispatch thunk of AssetBackedResource.fetchAsset()();
  v88 = v180;
  if (v87)
  {
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_91_0(v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_25D85C000, v89, v90, "Unable to get AS model - on device version", v91, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }
  }

  else
  {
    v171 = v26;
    v92 = v156;
    v93 = v165;
    CatalogAsset.version.getter();
    v94 = AssetVersion.number.getter();
    v96 = v95;
    v157 = *(v157 + 8);
    (v157)(v92, v164);
    swift_beginAccess();
    v24[2] = v94;
    v24[3] = v96;

    v97 = v158;
    (*(v158 + 16))(v167, v86, v93);
    v98 = v86;
    v99 = Logger.logObject.getter();
    LODWORD(v155) = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_91_0(v155))
    {
      OUTLINED_FUNCTION_28_3();
      v100 = swift_slowAlloc();
      v163 = v63;
      v101 = v100;
      OUTLINED_FUNCTION_9_4();
      v102 = swift_slowAlloc();
      v168 = v24;
      v149 = v102;
      v182 = v102;
      *v101 = 136315138;
      v103 = v167;
      CatalogAsset.version.getter();
      v104 = AssetVersion.number.getter();
      (v157)(v92, v164);
      v105 = *(v97 + 8);
      v106 = v165;
      v105(v103, v165);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_37_3();

      *(v101 + 4) = v104;
      _os_log_impl(&dword_25D85C000, v99, v155, "AS on device model version is %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v149);
      v24 = v168;
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v63 = v163;
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      v105(v178, v106);
    }

    else
    {

      v107 = *(v97 + 8);
      v107(v167, v93);
      v107(v98, v93);
    }

    v26 = v171;
    v88 = v180;
    v85 = v181;
  }

  static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesisConfigurationID.getter();
  v108 = v174;
  v172(v174, v26, v63);
  __swift_storeEnumTagSinglePayload(v108, 0, 1, v63);
  OUTLINED_FUNCTION_94();
  ResourceBundleQuery.init(configurationIdentifier:languageCode:otherArguments:)();
  v109 = v88;
  v110 = v26;
  v163 = v63;
  v111 = OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery;
  v112 = v170;
  v113 = v169;
  (*(v170 + 32))(v24 + OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery, v109, v169);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v180 = *(v112 + 16);
  v180(v162, v24 + v111, v113);
  v114 = v159;
  ModelBundle.init(resourceBundleQuery:)();
  v115 = OUTLINED_FUNCTION_65();
  v116 = v166;
  if (__swift_getEnumTagSinglePayload(v115, v117, v166) == 1)
  {
    outlined destroy of IntentApplication?(v114, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);

    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v118, v119))
    {
      OUTLINED_FUNCTION_28_3();
      v120 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v121 = swift_slowAlloc();
      v171 = v110;
      v122 = v24;
      v123 = v121;
      *v120 = 136315138;
      v180(v162, v122 + v111, v169);
      String.init<A>(describing:)();
      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v120 + 4) = v124;
      _os_log_impl(&dword_25D85C000, v118, v119, "Failed to create AnswerSynthesisModelOnDevice bundle using %s", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v123);
      v24 = v122;
      v125 = v171;
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      v126 = v163;
    }

    else
    {

      v126 = v163;
      v125 = v110;
    }

    lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
    swift_allocError();
    *v147 = 1;
    swift_willThrow();
    v175(v125, v126);
    __swift_destroy_boxed_opaque_existential_1Tm(v183);

    (*(v170 + 8))(v24 + OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery, v169);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v171 = v110;
    v127 = v160;
    (*(v85 + 32))(v160, v114, v116);
    v168 = v24;
    OUTLINED_FUNCTION_70_2();
    v128 = static AnswerSynthesisModelProtocol.GMS_SESSION_IDENTIFIER.getter();
    v178 = v129;
    v179 = v128;
    OUTLINED_FUNCTION_70_2();
    v177 = static AnswerSynthesisModelProtocol.GMS_USE_CASE_ID.getter();
    v174 = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMR);
    v131 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_25DBC8180;
    (*(v85 + 16))(v132 + v131, v127, v116);
    static CachePolicy.inMemory.getter();
    v133 = [objc_opt_self() processInfo];
    [v133 processIdentifier];

    v134 = v153;
    v135 = v168;
    SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:)();
    v136 = v154;
    (*(v154 + 16))(v152, v134, v161);
    v137 = type metadata accessor for TokenGenerator();
    OUTLINED_FUNCTION_170(v137);
    v135[4] = TokenGenerator.init(configuration:)();
    v138 = v135 + v111;
    v139 = v150;
    v180(v150, v138, v113);
    specialized AnswerSynthesisModelProtocol.logAssetinfo(resourceBundleQuery:)(v139, v140, v141, v142, v143, v144, v145, v146, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
    v175(v171, v163);
    (*(v170 + 8))(v139, v113);
    (*(v136 + 8))(v134, v161);
    (*(v181 + 8))(v160, v166);
    __swift_destroy_boxed_opaque_existential_1Tm(v183);
  }

  OUTLINED_FUNCTION_61_2();
}

void specialized AnswerSynthesisModelProtocol.logAssetinfo(resourceBundleQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v22;
  a20 = v23;
  v190 = v24;
  v191 = v21;
  v25 = v20;
  v26 = type metadata accessor for AssetVersion();
  v27 = OUTLINED_FUNCTION_1_5(v26, &a11);
  v172 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  v36 = &v168 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
  v38 = OUTLINED_FUNCTION_114(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMR);
  v43 = OUTLINED_FUNCTION_1_5(v42, &a17);
  v196 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_39_0();
  v192 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_2();
  v183 = v47;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMR);
  OUTLINED_FUNCTION_14();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14_2();
  v185 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v53);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_49_3();
  v189 = v55;
  OUTLINED_FUNCTION_78_0();
  v56 = type metadata accessor for AssetBackedLLMBundle();
  OUTLINED_FUNCTION_14();
  v58 = v57;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_36();
  v62 = v61 - v60;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_37_3();

  v187 = v20;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  v66 = OUTLINED_FUNCTION_20_3();
  v68 = os_log_type_enabled(v66, v67);
  v179 = v36;
  v184 = v58;
  v188 = v25;
  if (v68)
  {
    OUTLINED_FUNCTION_28_3();
    v69 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v70 = swift_slowAlloc();
    v178 = v56;
    v71 = v70;
    v195[0] = v70;
    *v69 = 136315138;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();
    v186 = v49;

    OUTLINED_FUNCTION_71_2();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v49 = v186;

    *(v69 + 4) = v72;
    v73 = v196;
    _os_log_impl(&dword_25D85C000, v64, v65, "Get asset version info for %s.", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    v56 = v178;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v73 = v196;
  }

  v74 = type metadata accessor for CatalogClient();
  OUTLINED_FUNCTION_170(v74);
  v193[0] = CatalogClient.init()();
  v75 = v191;
  v76 = CatalogClientProtocol.queryResourceBundle(with:)();
  v78 = v192;
  if (v75)
  {
LABEL_7:

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_52_2(v76, v77, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  if (!v194)
  {
    outlined destroy of IntentApplication?(v193, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v79 = v189;
    v85 = OUTLINED_FUNCTION_65();
    __swift_storeEnumTagSinglePayload(v85, v86, 1, v56);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
  v79 = v189;
  swift_dynamicCast();
  v80 = OUTLINED_FUNCTION_45_2();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v56);
  v83 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v83, v84, v56) == 1)
  {
LABEL_13:
    outlined destroy of IntentApplication?(v79, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    v89 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v89, v90))
    {
      OUTLINED_FUNCTION_28_3();
      v91 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v92 = swift_slowAlloc();
      v193[0] = v92;
      *v91 = 136315138;
      _typeName(_:qualified:)();

      v93 = OUTLINED_FUNCTION_58_1();

      *(v91 + 4) = v93;
      _os_log_impl(&dword_25D85C000, v87, v88, "Can't get asset version info for %s which has non asset backed LLMBundle.", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      outlined destroy of IntentApplication?(v195, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      goto LABEL_8;
    }

    outlined destroy of IntentApplication?(v195, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    goto LABEL_7;
  }

  v186 = v49;
  (*(v184 + 32))(v62, v79, v56);
  AssetBackedLLMBundle.tokenizer.getter();
  OUTLINED_FUNCTION_43_2();
  dispatch thunk of AssetBackedResource.fetchAsset()();
  __swift_destroy_boxed_opaque_existential_1Tm(v193);
  AssetBackedLLMBundle.baseModel.getter();
  OUTLINED_FUNCTION_43_2();
  dispatch thunk of AssetBackedResource.fetchAsset()();
  v191 = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v193);
  AssetBackedLLMBundle.adapter.getter();
  v95 = v182;
  v169 = v62;
  if (v194)
  {
    OUTLINED_FUNCTION_43_2();
    v96 = v181;
    v97 = v191;
    dispatch thunk of AssetBackedResource.fetchAsset()();
    v98 = v179;
    if (v97)
    {

      v99 = OUTLINED_FUNCTION_76_1();
      v100(v99);
      (*(v186 + 8))(v185, v95);
      v101 = OUTLINED_FUNCTION_23_2();
      v94(v101, v56);
LABEL_16:
      outlined destroy of IntentApplication?(v195, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm(v193);
      goto LABEL_8;
    }

    v191 = 0;
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
    __swift_storeEnumTagSinglePayload(v96, 0, 1, v106);
    __swift_destroy_boxed_opaque_existential_1Tm(v193);
    v62 = v169;
  }

  else
  {
    outlined destroy of IntentApplication?(v193, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMd, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
    OUTLINED_FUNCTION_63_1();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
    v98 = v179;
  }

  AssetBackedLLMBundle.draftModel.getter();
  if (v194)
  {
    OUTLINED_FUNCTION_43_2();
    v107 = v191;
    dispatch thunk of AssetBackedResource.fetchAsset()();
    if (v107)
    {

      v108 = OUTLINED_FUNCTION_63_1();
      outlined destroy of IntentApplication?(v108, v109, v110);
      v111 = OUTLINED_FUNCTION_76_1();
      v112(v111);
      (*(v186 + 8))(v185, v95);
      (*(v184 + 8))(v62, v56);
      goto LABEL_16;
    }

    v191 = 0;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
    __swift_storeEnumTagSinglePayload(v98, 0, 1, v117);
    __swift_destroy_boxed_opaque_existential_1Tm(v193);
  }

  else
  {
    outlined destroy of IntentApplication?(v193, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMd, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
  }

  v118 = v181;
  v178 = v56;
  v119 = v186;
  (*(v186 + 16))(v176, v185, v95);
  (*(v73 + 16))(v78, v183, v180);
  outlined init with copy of ResourceBundle?(v118, v177, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
  v120 = v175;
  outlined init with copy of ResourceBundle?(v98, v175, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);

  v121 = Logger.logObject.getter();
  LODWORD(v189) = static os_log_type_t.info.getter();
  v122 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v122, v123))
  {
    v187 = v121;
    v124 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v193[0] = v168;
    *v124 = 136316162;
    v125 = _typeName(_:qualified:)();

    OUTLINED_FUNCTION_33_2();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_67_2();

    v190 = v124;
    *(v124 + 4) = v125;
    *(v124 + 12) = 2080;
    v126 = v173;
    v127 = v176;
    CatalogAsset.version.getter();
    v128 = AssetVersion.number.getter();
    v129 = v95;
    v172 = *(v172 + 8);
    v130 = v174;
    (v172)(v126, v174);
    v131 = *(v186 + 8);
    v186 += 8;
    v188 = v131;
    (v131)(v127, v129);
    OUTLINED_FUNCTION_33_2();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_67_2();

    v132 = v190;
    *(v190 + 14) = v128;
    *(v132 + 22) = 2080;
    v133 = v180;
    v134 = v192;
    CatalogAsset.version.getter();
    v135 = AssetVersion.number.getter();
    v136 = v172;
    (v172)(v126, v130);
    v192 = *(v196 + 8);
    v192(v134, v133);
    OUTLINED_FUNCTION_33_2();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_67_2();

    *(v132 + 24) = v135;
    *(v132 + 32) = 2080;
    v137 = OUTLINED_FUNCTION_50_1(&a14);
    v138 = v171;
    outlined init with copy of ResourceBundle?(v137, v171, v139, v140);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
    v142 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_92_1(v142, v143);
    if (v144)
    {
      v153 = v136;
      outlined destroy of IntentApplication?(v138, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
    }

    else
    {
      CatalogAsset.version.getter();
      (*(*(v141 - 8) + 8))(v138, v141);
      AssetVersion.number.getter();
      v152 = v126;
      v153 = v136;
      v136(v152, v174);
    }

    v154 = v170;
    outlined destroy of IntentApplication?(v132, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
    v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    v156 = v190;
    *(v190 + 34) = v155;
    *(v156 + 42) = 2080;
    v157 = v175;
    outlined init with copy of ResourceBundle?(v175, v154, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
    OUTLINED_FUNCTION_92_1(v154, 1);
    if (v144)
    {
      outlined destroy of IntentApplication?(v154, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    }

    else
    {
      v159 = v173;
      CatalogAsset.version.getter();
      (*(*(v158 - 8) + 8))(v154, v158);
      AssetVersion.number.getter();
      v153(v159, v174);
    }

    outlined destroy of IntentApplication?(v157, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    v161 = v190;
    *(v190 + 44) = v160;
    v162 = v187;
    _os_log_impl(&dword_25D85C000, v187, v189, "%s:\nTokenizer Version: %s\nBase Model Version: %s\nAdapter Model Version: %s\nDraft Model Version: %s", v161, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    outlined destroy of IntentApplication?(v179, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    v163 = OUTLINED_FUNCTION_63_1();
    outlined destroy of IntentApplication?(v163, v164, v165);
    v192(v183, v180);
    (v188)(v185, v182);
    v166 = OUTLINED_FUNCTION_23_2();
    v167(v166, v178);
    outlined destroy of IntentApplication?(v195, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  else
  {

    outlined destroy of IntentApplication?(v120, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    outlined destroy of IntentApplication?(v177, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
    v145 = v95;
    v146 = *(v196 + 8);
    v147 = v180;
    v146(v78, v180);
    v148 = *(v119 + 8);
    v148(v176, v145);
    outlined destroy of IntentApplication?(v98, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
    v149 = OUTLINED_FUNCTION_63_1();
    outlined destroy of IntentApplication?(v149, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
    v146(v183, v147);
    v148(v185, v145);
    v150 = OUTLINED_FUNCTION_23_2();
    v151(v150, v178);
    outlined destroy of IntentApplication?(v195, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

LABEL_8:
  OUTLINED_FUNCTION_61_2();
}

uint64_t AnswerSynthesisModelOnDevice.prewarm(urgency:)(uint64_t a1)
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.answerSynthesis);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25D85C000, v2, v3, "Prewarming AnswerSynthesisModelOnDevice model...", v6, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  TokenGenerator.prewarm(urgency:)();
}

Swift::String __swiftcall AnswerSynthesisModelOnDevice.promptTemplateID()()
{
  v0 = 0x800000025DBEFB20;
  v1 = 0xD00000000000003ELL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

void AnswerSynthesisModelOnDevice.createPromptTemplate()()
{
  v2 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_74_2();
  v6 = OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  (*(v4 + 16))(v1, v0 + v6, v2);
  lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
  v7 = swift_allocError();
  *v8 = 2;
  specialized AnswerSynthesisModelProtocol.createPromptTemplate(with:creationError:)(v1, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  (*(v4 + 8))(v1, v2);
}

void specialized AnswerSynthesisModelProtocol.createPromptTemplate(with:creationError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_39_3(v26, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  OUTLINED_FUNCTION_1_5(v28, &v139);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v30);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_49_3();
  v132 = v32;
  OUTLINED_FUNCTION_78_0();
  v134 = type metadata accessor for AssetBackedLLMBundle();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_1_5(v36, &a10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_74_2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v38);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v39);
  v40 = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_14_2();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_37_3();

  v44 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v45 = OUTLINED_FUNCTION_20_3();
  os_log_type_enabled(v45, v46);
  OUTLINED_FUNCTION_48_2();
  if (v47)
  {
    OUTLINED_FUNCTION_28_3();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v48 = swift_slowAlloc();
    v138[0] = v48;
    *v22 = 136315138;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_38_3();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_46_3();
    *(v22 + 4) = v40;
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v49, v50, v51, v52, v53, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v55 = type metadata accessor for CatalogClient();
  OUTLINED_FUNCTION_170(v55);
  v136[0] = CatalogClient.init()();
  v57 = OUTLINED_FUNCTION_54_2(v136[0], v56, MEMORY[0x277D29A48]);
  if (v20)
  {

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_52_2(v57, v58, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = OUTLINED_FUNCTION_20_3();
  os_log_type_enabled(v61, v62);
  OUTLINED_FUNCTION_65_2();
  if (v63)
  {
    v64 = OUTLINED_FUNCTION_90_1();
    a10 = swift_slowAlloc();
    *v64 = 136315394;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();

    OUTLINED_FUNCTION_72_2();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v64 + 4) = v65;
    *(v64 + 12) = 2080;
    OUTLINED_FUNCTION_83_2();
    v66 = OUTLINED_FUNCTION_72_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_56_1();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v22 = MEMORY[0x277D84F70];

    *(v64 + 14) = v68;
    OUTLINED_FUNCTION_81_2(&dword_25D85C000, v69, v70, "%s resolved resource bundle: %s");
    OUTLINED_FUNCTION_55_1();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    outlined destroy of IntentApplication?(v136, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  OUTLINED_FUNCTION_52_2(v71, v72, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v73 = v134;
  if (v137)
  {
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    v75 = OUTLINED_FUNCTION_57_2(v74);
    OUTLINED_FUNCTION_51_2(v75);
    if (!v76)
    {
      v77 = OUTLINED_FUNCTION_27_1();
      v78(v77);
      v79 = OUTLINED_FUNCTION_35_4();
      v80(v79);

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v81, v82))
      {
        OUTLINED_FUNCTION_9_4();
        v83 = swift_slowAlloc();
        v84 = OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_78_1(v84);
        *v83 = 136315650;
        OUTLINED_FUNCTION_10_3();
        _typeName(_:qualified:)();
        OUTLINED_FUNCTION_80_2();
        OUTLINED_FUNCTION_94();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        v85 = OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_36_3(v85);
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<LLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
        OUTLINED_FUNCTION_50_1(&a10);
        dispatch thunk of CustomStringConvertible.description.getter();
        v86 = OUTLINED_FUNCTION_34_2();
        v87(v86);
        OUTLINED_FUNCTION_16_3();
        (v22)(v21);
        OUTLINED_FUNCTION_94();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_95_1();
        *(v83 + 14) = v82;
        *(v83 + 22) = 2080;
        OUTLINED_FUNCTION_21_3();
        *(v83 + 24) = OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_53_2(&dword_25D85C000, v88, v89, "%s resolved llmBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_87_2();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_16_3();
        v128 = OUTLINED_FUNCTION_71_2();
        (v22)(v128);

        OUTLINED_FUNCTION_29_3();
      }

      OUTLINED_FUNCTION_42_4();
      LLMBundle.id.getter();
      OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_22_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
      OUTLINED_FUNCTION_89_2();
      v129 = OUTLINED_FUNCTION_70_2();
      (v22)(v129);
LABEL_29:
      outlined destroy of IntentApplication?(v138, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      goto LABEL_30;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v136, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v135);
  }

  v93 = outlined destroy of IntentApplication?(v23, &_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_52_2(v93, v94, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  if (v137)
  {
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    OUTLINED_FUNCTION_47_4(v95);
    v96 = OUTLINED_FUNCTION_45_2();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v134);
    v99 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_92_1(v99, v100);
    if (!v76)
    {
      v101 = OUTLINED_FUNCTION_94();
      v102(v101);
      v103 = OUTLINED_FUNCTION_30_2();
      v104(v103);

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_91_0(v106))
      {
        OUTLINED_FUNCTION_9_4();
        v107 = swift_slowAlloc();
        v108 = OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_78_1(v108);
        *v107 = 136315650;
        OUTLINED_FUNCTION_10_3();
        _typeName(_:qualified:)();
        v60 = v109;

        OUTLINED_FUNCTION_33_2();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        OUTLINED_FUNCTION_40_4(v110);
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
        OUTLINED_FUNCTION_50_1(&v139);
        dispatch thunk of CustomStringConvertible.description.getter();
        v111 = OUTLINED_FUNCTION_31_4();
        v112(v111);
        v113 = OUTLINED_FUNCTION_7_3();
        v60(v113, v134);
        OUTLINED_FUNCTION_33_2();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_37_3();

        *(v107 + 14) = v133;
        *(v107 + 22) = 2080;
        OUTLINED_FUNCTION_21_3();
        *(v107 + 24) = OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_82_2(&dword_25D85C000, v114, v115, "%s resolved assetBackedLLMBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_86_2();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v73 = v134;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        v130 = OUTLINED_FUNCTION_7_3();
        v60(v130, v134);

        OUTLINED_FUNCTION_29_3();
      }

      OUTLINED_FUNCTION_64_2();
      AssetBackedLLMBundle.id.getter();
      OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_22_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();

      v60(v131, v73);
      OUTLINED_FUNCTION_42_4();
      goto LABEL_29;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v136, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v59 = v132;
    v116 = OUTLINED_FUNCTION_65();
    __swift_storeEnumTagSinglePayload(v116, v117, 1, v134);
  }

  outlined destroy of IntentApplication?(v59, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);

  v118 = v133;
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v119, v120))
  {
    v121 = OUTLINED_FUNCTION_90_1();
    v122 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v123 = swift_slowAlloc();
    v136[0] = v123;
    *v121 = 136315394;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();

    OUTLINED_FUNCTION_58_1();

    OUTLINED_FUNCTION_85_2();
    v124 = _swift_stdlib_bridgeErrorToNSError();
    *(v121 + 14) = v124;
    *v122 = v124;
    OUTLINED_FUNCTION_84_1(&dword_25D85C000, v125, v126, "No other ResourceBundle types exist for %s, will throw %@");
    outlined destroy of IntentApplication?(v122, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  swift_willThrow();
  OUTLINED_FUNCTION_89_2();
  outlined destroy of IntentApplication?(v138, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v127 = v133;
LABEL_30:
  OUTLINED_FUNCTION_61_2();
}

{
  OUTLINED_FUNCTION_60_1();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_39_3(v26, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  OUTLINED_FUNCTION_1_5(v28, &v139);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v30);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_49_3();
  v132 = v32;
  OUTLINED_FUNCTION_78_0();
  v134 = type metadata accessor for AssetBackedLLMBundle();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_1_5(v36, &a10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_74_2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v38);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v39);
  v40 = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_14_2();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_37_3();

  v44 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v45 = OUTLINED_FUNCTION_20_3();
  os_log_type_enabled(v45, v46);
  OUTLINED_FUNCTION_48_2();
  if (v47)
  {
    OUTLINED_FUNCTION_28_3();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v48 = swift_slowAlloc();
    v138[0] = v48;
    *v22 = 136315138;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_38_3();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_46_3();
    *(v22 + 4) = v40;
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v49, v50, v51, v52, v53, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v55 = type metadata accessor for CatalogClient();
  OUTLINED_FUNCTION_170(v55);
  v136[0] = CatalogClient.init()();
  v57 = OUTLINED_FUNCTION_54_2(v136[0], v56, MEMORY[0x277D29A48]);
  if (v20)
  {

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_52_2(v57, v58, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = OUTLINED_FUNCTION_20_3();
  os_log_type_enabled(v61, v62);
  OUTLINED_FUNCTION_65_2();
  if (v63)
  {
    v64 = OUTLINED_FUNCTION_90_1();
    a10 = swift_slowAlloc();
    *v64 = 136315394;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();

    OUTLINED_FUNCTION_72_2();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v64 + 4) = v65;
    *(v64 + 12) = 2080;
    OUTLINED_FUNCTION_83_2();
    v66 = OUTLINED_FUNCTION_72_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_56_1();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v22 = MEMORY[0x277D84F70];

    *(v64 + 14) = v68;
    OUTLINED_FUNCTION_81_2(&dword_25D85C000, v69, v70, "%s resolved resource bundle: %s");
    OUTLINED_FUNCTION_55_1();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    outlined destroy of IntentApplication?(v136, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  OUTLINED_FUNCTION_52_2(v71, v72, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v73 = v134;
  if (v137)
  {
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    v75 = OUTLINED_FUNCTION_57_2(v74);
    OUTLINED_FUNCTION_51_2(v75);
    if (!v76)
    {
      v77 = OUTLINED_FUNCTION_27_1();
      v78(v77);
      v79 = OUTLINED_FUNCTION_35_4();
      v80(v79);

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v81, v82))
      {
        OUTLINED_FUNCTION_9_4();
        v83 = swift_slowAlloc();
        v84 = OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_78_1(v84);
        *v83 = 136315650;
        OUTLINED_FUNCTION_10_3();
        _typeName(_:qualified:)();
        OUTLINED_FUNCTION_80_2();
        OUTLINED_FUNCTION_94();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        v85 = OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_36_3(v85);
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<LLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
        OUTLINED_FUNCTION_50_1(&a10);
        dispatch thunk of CustomStringConvertible.description.getter();
        v86 = OUTLINED_FUNCTION_34_2();
        v87(v86);
        OUTLINED_FUNCTION_16_3();
        (v22)(v21);
        OUTLINED_FUNCTION_94();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_95_1();
        *(v83 + 14) = v82;
        *(v83 + 22) = 2080;
        OUTLINED_FUNCTION_21_3();
        *(v83 + 24) = OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_53_2(&dword_25D85C000, v88, v89, "%s resolved llmBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_87_2();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_16_3();
        v128 = OUTLINED_FUNCTION_71_2();
        (v22)(v128);

        OUTLINED_FUNCTION_29_3();
      }

      OUTLINED_FUNCTION_42_4();
      LLMBundle.id.getter();
      OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_22_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
      OUTLINED_FUNCTION_89_2();
      v129 = OUTLINED_FUNCTION_70_2();
      (v22)(v129);
LABEL_29:
      outlined destroy of IntentApplication?(v138, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      goto LABEL_30;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v136, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v135);
  }

  v93 = outlined destroy of IntentApplication?(v23, &_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_52_2(v93, v94, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  if (v137)
  {
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    OUTLINED_FUNCTION_47_4(v95);
    v96 = OUTLINED_FUNCTION_45_2();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v134);
    v99 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_92_1(v99, v100);
    if (!v76)
    {
      v101 = OUTLINED_FUNCTION_94();
      v102(v101);
      v103 = OUTLINED_FUNCTION_30_2();
      v104(v103);

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_91_0(v106))
      {
        OUTLINED_FUNCTION_9_4();
        v107 = swift_slowAlloc();
        v108 = OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_78_1(v108);
        *v107 = 136315650;
        OUTLINED_FUNCTION_10_3();
        _typeName(_:qualified:)();
        v60 = v109;

        OUTLINED_FUNCTION_33_2();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        OUTLINED_FUNCTION_40_4(v110);
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
        OUTLINED_FUNCTION_50_1(&v139);
        dispatch thunk of CustomStringConvertible.description.getter();
        v111 = OUTLINED_FUNCTION_31_4();
        v112(v111);
        v113 = OUTLINED_FUNCTION_7_3();
        v60(v113, v134);
        OUTLINED_FUNCTION_33_2();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_37_3();

        *(v107 + 14) = v133;
        *(v107 + 22) = 2080;
        OUTLINED_FUNCTION_21_3();
        *(v107 + 24) = OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_82_2(&dword_25D85C000, v114, v115, "%s resolved assetBackedLLMBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_86_2();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v73 = v134;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        v130 = OUTLINED_FUNCTION_7_3();
        v60(v130, v134);

        OUTLINED_FUNCTION_29_3();
      }

      OUTLINED_FUNCTION_64_2();
      AssetBackedLLMBundle.id.getter();
      OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_22_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();

      v60(v131, v73);
      OUTLINED_FUNCTION_42_4();
      goto LABEL_29;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v136, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v59 = v132;
    v116 = OUTLINED_FUNCTION_65();
    __swift_storeEnumTagSinglePayload(v116, v117, 1, v134);
  }

  outlined destroy of IntentApplication?(v59, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);

  v118 = v133;
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v119, v120))
  {
    v121 = OUTLINED_FUNCTION_90_1();
    v122 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v123 = swift_slowAlloc();
    v136[0] = v123;
    *v121 = 136315394;
    OUTLINED_FUNCTION_10_3();
    _typeName(_:qualified:)();

    OUTLINED_FUNCTION_58_1();

    OUTLINED_FUNCTION_85_2();
    v124 = _swift_stdlib_bridgeErrorToNSError();
    *(v121 + 14) = v124;
    *v122 = v124;
    OUTLINED_FUNCTION_84_1(&dword_25D85C000, v125, v126, "No other ResourceBundle types exist for %s, will throw %@");
    outlined destroy of IntentApplication?(v122, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  swift_willThrow();
  OUTLINED_FUNCTION_89_2();
  outlined destroy of IntentApplication?(v138, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v127 = v133;
LABEL_30:
  OUTLINED_FUNCTION_61_2();
}

uint64_t AnswerSynthesisModelOnDevice.execute(request:userPrompt:)()
{
  OUTLINED_FUNCTION_48();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = type metadata accessor for PromptTemplate();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5);
}

{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.answerSynthesis);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_28_3();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v22 = swift_slowAlloc();
    *v4 = 136642819;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v11);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v12);
  }

  AnswerSynthesisModelOnDevice.createPromptTemplate()();
  v13 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = v15;
  *(inited + 56) = v14;

  v17 = Dictionary.init(dictionaryLiteral:)();
  v0[17] = v17;
  v18 = swift_task_alloc();
  v0[18] = v18;
  *v18 = v0;
  v18[1] = AnswerSynthesisModelOnDevice.execute(request:userPrompt:);
  v19 = v0[16];
  v20 = v0[12];

  return closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:)(v19, v17, v20, v13);
}

{
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *v5 = *v2;
  v4[19] = v1;

  if (!v1)
  {
    v4[20] = v0;
    v4[21] = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

{
  OUTLINED_FUNCTION_48();
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];
  v3 = v0[20];
  v2 = v0[21];

  return v1(v2, v3);
}

{
  OUTLINED_FUNCTION_48();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t AnswerSynthesisModelOnDevice.synthesize(_:bindings:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = AnswerSynthesisModelOnDevice.synthesize(_:bindings:);

  return closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:)(a1, a2, v2, v6);
}

{
  v6 = *v3;
  OUTLINED_FUNCTION_11();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

void AnswerSynthesisModelOnDevice.synthesize_generateGenerativeFunctionOverride()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for BindableConfiguration();
  OUTLINED_FUNCTION_14();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_74_2();
  v27 = type metadata accessor for CompletionPrompt();
  OUTLINED_FUNCTION_14();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  CompletionPrompt.init(_:)();
  BindableConfiguration.init(name:)();
  OUTLINED_FUNCTION_11_2();
  lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(v34, v35, MEMORY[0x277D42D38]);
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  (*(v25 + 8))(v20, v23);
  v36 = *(v29 + 8);
  v37 = OUTLINED_FUNCTION_107();
  v36(v37);
  static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  (v36)(v33, v27);
  OUTLINED_FUNCTION_61_2();
}

uint64_t closure #1 in AnswerSynthesisModelOnDevice.synthesize_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[3] = type metadata accessor for BindableVariable();
  v9[4] = MEMORY[0x277D42E60];
  __swift_allocate_boxed_opaque_existential_1Tm(v9);
  BindableVariable.init(name:)();
  v4 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25DBC8180;
  (*(v1 + 16))(v6 + v5, v3, v0);
  MEMORY[0x25F89F150](v6, v0, v4);

  return (*(v1 + 8))(v3, v0);
}

uint64_t closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit010CompletionE0V15TokenGeneration0H9GeneratorCAFGMR);
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  v4[34] = swift_task_alloc();
  v4[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV_AA01_acE9_MetadataVtMR);
  v4[36] = swift_task_alloc();
  v6 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v4[37] = v6;
  v4[38] = *(v6 - 8);
  v4[39] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt();
  v4[40] = v7;
  v4[41] = *(v7 - 8);
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR);
  v4[43] = swift_task_alloc();
  v8 = type metadata accessor for FunctionIdentifier();
  v4[44] = v8;
  v4[45] = *(v8 - 8);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  v4[48] = v9;
  v4[49] = *(v9 - 8);
  v4[50] = swift_task_alloc();
  v10 = type metadata accessor for CompletionPrompt();
  v4[51] = v10;
  v4[52] = *(v10 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:));
}

uint64_t closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:)()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);
  v6 = *(v0 + 216);
  v20 = *(v0 + 432);
  v21 = *(v0 + 224);
  *(swift_task_alloc() + 16) = v6;
  CompletionPrompt.init(_:)();

  static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
  *(v0 + 552) = *MEMORY[0x277D0E548];
  v7 = *(v4 + 104);
  *(v0 + 448) = v7;
  *(v0 + 456) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v2);
  OUTLINED_FUNCTION_11_2();
  *(v0 + 464) = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(v8, v9, MEMORY[0x277D42D38]);
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v10 = *(v4 + 8);
  *(v0 + 472) = v10;
  *(v0 + 480) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v5);
  v11 = *(v1 + 8);
  *(v0 + 488) = v11;
  *(v0 + 496) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12 = OUTLINED_FUNCTION_71_2();
  v11(v12);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);
  GenerativeConfigurationProtocol.bindVariables(_:)();

  (v11)(v20, v3);
  type metadata accessor for FunctionIdentifier.ResourceInformation();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v17 = swift_task_alloc();
  *(v0 + 504) = v17;
  *v17 = v0;
  v17[1] = closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:);
  v18 = *(v0 + 272);

  return MEMORY[0x282166B58](v18, 0xD00000000000001CLL, 0x800000025DBEFBC0);
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *(v4 + 512) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5);
}

{
  v1 = *(v0 + 272);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatMR);
  v3 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v3, v4, v2) == 1)
  {
    outlined destroy of IntentApplication?(v1, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A45FunctionOverridableInternals_CompletionPromptV010completionG0_AA01_acE9_MetadataV8metadatatSgMR);
  }

  else
  {
    v43 = *(v0 + 488);
    v37 = *(v0 + 472);
    v36 = *(v0 + 448);
    v35 = *(v0 + 552);
    v40 = *(v0 + 440);
    v38 = *(v0 + 432);
    v41 = *(v0 + 408);
    v42 = *(v0 + 416);
    v33 = *(v0 + 400);
    v34 = *(v0 + 384);
    v28 = *(v0 + 368);
    v29 = *(v0 + 360);
    v30 = *(v0 + 352);
    v31 = *(v0 + 376);
    v44 = *(v0 + 336);
    v39 = *(v0 + 328);
    v5 = *(v0 + 320);
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    v32 = *(v0 + 216);
    v26 = *(v2 + 48);
    v27 = *(v0 + 312);
    v25 = *(v8 + 48);
    v10 = *(v39 + 32);
    v10(v9, v1, v5);
    v11 = *(v6 + 32);
    v11(v9 + v25, v1 + v26, v7);
    v12 = *(v8 + 48);
    v10(v44, v9, v5);
    v11(v27, v9 + v12, v7);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v29 + 8))(v31, v30);
    (*(v29 + 32))(v31, v28, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    strcpy((inited + 32), "promptTemplate");
    *(inited + 47) = -18;
    v14 = type metadata accessor for PromptTemplate();
    *(inited + 72) = v14;
    *(inited + 80) = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1Tm, v32, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A25ComponentValueConvertible_pMd, &_s9PromptKit0A25ComponentValueConvertible_pMR);
    OUTLINED_FUNCTION_107();
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_25DBC8180;
    *(v16 + 32) = 0xD000000000000059;
    *(v16 + 40) = 0x800000025DBEFB60;
    static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter();
    v36(v33, v35, v34);
    *(v16 + 72) = type metadata accessor for SamplingParameters();
    __swift_allocate_boxed_opaque_existential_1Tm((v16 + 48));
    static _OverrideConfigurationHelper.samplingParameters(_:)();
    v37(v33, v34);
    Dictionary.init(dictionaryLiteral:)();
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)();

    (*(v6 + 8))(v27, v7);
    (*(v39 + 8))(v44, v5);
    v43(v40, v41);
    (*(v42 + 32))(v40, v38, v41);
  }

  v17 = *(v0 + 488);
  v18 = *(v0 + 432);
  v19 = *(v0 + 408);
  v20 = *(v0 + 232);
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v0 + 208) = *(v20 + 32);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:)();
  v17(v18, v19);
  v21 = swift_task_alloc();
  *(v0 + 520) = v21;
  v22 = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(&lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator, MEMORY[0x277D71A98], MEMORY[0x277D71A48]);
  *v21 = v0;
  v21[1] = closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:);
  v23 = *(v0 + 248);

  return MEMORY[0x282165A58](v23, v22);
}

{
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *v5 = *v2;
  v4[66] = v1;

  v6 = v4[33];
  v7 = v4[32];
  v8 = v4[31];
  if (!v1)
  {
    v4[67] = v0;
    v4[68] = v3;
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  v1 = v0[61];
  v2 = v0[55];
  v3 = v0[51];
  (*(v0[45] + 8))(v0[47], v0[44]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[68];
  v6 = v0[67];

  return v4(v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_41_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_107();
  v0(v3);
  OUTLINED_FUNCTION_24_3();

  OUTLINED_FUNCTION_127();

  return v4();
}

{
  v1 = OUTLINED_FUNCTION_41_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_107();
  v0(v3);
  OUTLINED_FUNCTION_24_3();

  OUTLINED_FUNCTION_127();

  return v4();
}

uint64_t closure #1 in closure #2 in AnswerSynthesisModelOnDevice.synthesize(_:bindings:)(uint64_t a1)
{
  v2 = type metadata accessor for Prompt();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PromptTemplate();
  v13[3] = v6;
  v13[4] = lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v13);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v6);
  v8 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25DBC8180;
  (*(v3 + 16))(v10 + v9, v5, v2);
  MEMORY[0x25F89F150](v10, v2, v8);

  return (*(v3 + 8))(v5, v2);
}

uint64_t AnswerSynthesisModelOnDevice.modelVersion.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

uint64_t AnswerSynthesisModelOnDevice.deinit()
{

  v1 = OBJC_IVAR____TtC10OmniSearch28AnswerSynthesisModelOnDevice_resourceBundleQuery;
  type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t AnswerSynthesisModelOnDevice.__deallocating_deinit()
{
  AnswerSynthesisModelOnDevice.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance AnswerSynthesisModelOnDevice()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnswerSynthesisModelProtocol.execute(request:userPrompt:) in conformance AnswerSynthesisModelOnDevice;

  return AnswerSynthesisModelOnDevice.execute(request:userPrompt:)();
}

uint64_t type metadata accessor for AnswerSynthesisModelOnDevice(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnswerSynthesisModelOnDevice;
  if (!type metadata singleton initialization cache for AnswerSynthesisModelOnDevice)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AnswerSynthesisModelOnDevice(uint64_t a1)
{
  result = type metadata accessor for ResourceBundleQuery();
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

uint64_t lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ResourceBundle?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CompletionPrompt and conformance CompletionPrompt(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_24_3()
{
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1)
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;

  return LLMBundle.id.getter();
}

uint64_t OUTLINED_FUNCTION_38_3()
{
  *(v1 - 360) = v0;
}

uint64_t OUTLINED_FUNCTION_40_4(uint64_t a1)
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;

  return AssetBackedLLMBundle.id.getter();
}

uint64_t OUTLINED_FUNCTION_46_3()
{
}

uint64_t OUTLINED_FUNCTION_47_4(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_48_2()
{
  *(v3 - 224) = v2;
  *(v3 - 304) = v0;
  *(v3 - 280) = v1;
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of ResourceBundle?(v4 - 128, v4 - 168, a3, a4);
}

void OUTLINED_FUNCTION_53_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 232);

  _os_log_impl(a1, v4, v8, a4, v5, 0x20u);
}

void *OUTLINED_FUNCTION_54_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return CatalogClientProtocol.queryResourceBundle(with:)();
}

uint64_t OUTLINED_FUNCTION_55_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return outlined destroy of IntentApplication?(v2 - 168, v0, v1);
}

uint64_t OUTLINED_FUNCTION_57_2(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_59_2(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_68_2()
{
  result = v1;
  *(v2 - 232) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t result)
{
  *(v1 - 216) = result;
  *(v1 - 168) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return type metadata accessor for LLMBundle();
}

uint64_t OUTLINED_FUNCTION_80_2()
{
  *(v1 - 232) = v0;
}

void OUTLINED_FUNCTION_81_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_82_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return outlined init with copy of ResourceBundle?(v2 - 168, v2 - 208, v0, v1);
}

void OUTLINED_FUNCTION_84_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_85_2()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return v2;
}

uint64_t OUTLINED_FUNCTION_86_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_87_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_88_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_89_2()
{
}

uint64_t OUTLINED_FUNCTION_90_1()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_91_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_94_0()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_95_1()
{
}

uint64_t AnswerSynthesisModelProtocol.logAssetinfo(resourceBundleQuery:)(uint64_t a1, uint64_t a2)
{
  v191 = a1;
  v3 = v2;
  v165 = type metadata accessor for AssetVersion();
  OUTLINED_FUNCTION_14();
  v168 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
  v14 = OUTLINED_FUNCTION_114(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v17);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMR);
  OUTLINED_FUNCTION_14();
  v174 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMR);
  OUTLINED_FUNCTION_14();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  v197 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v29);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v189 = (&v160 - v31);
  v190 = type metadata accessor for AssetBackedLLMBundle();
  OUTLINED_FUNCTION_14();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v35);
  v36 = *(a2 - 8);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  v182 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  v42 = (&v160 - v41);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

  v43 = type metadata accessor for Logger();
  v44 = __swift_project_value_buffer(v43, static Logging.answerSynthesis);
  v45 = *(v36 + 16);
  v187 = v3;
  v184 = v45;
  v185 = (v36 + 16);
  v45(v42, v3, a2);
  v186 = v44;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v48 = OUTLINED_FUNCTION_88_0(v47);
  v188 = v36;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v181 = v24;
    v180 = v22;
    v50 = v49;
    v162 = OUTLINED_FUNCTION_49_0();
    v196 = v162;
    *v50 = 136315138;
    swift_getDynamicType();
    _typeName(_:qualified:)();
    v177 = v33;
    v51 = a2;
    v183 = *(v36 + 8);
    v183(v42, a2);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v53 = v51;

    *(v50 + 4) = v52;
    v54 = v177;
    _os_log_impl(&dword_25D85C000, v46, v47, "Get asset version info for %s.", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v162);
    OUTLINED_FUNCTION_42_0();
    v55 = v180;
    v24 = v181;
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v56 = v42;
    v53 = a2;
    v183 = *(v36 + 8);
    v183(v56, a2);
    v55 = v22;
    v54 = v33;
  }

  type metadata accessor for CatalogClient();
  swift_allocObject();
  v57 = CatalogClient.init()();
  v193 = v57;
  v58 = v192;
  v59 = CatalogClientProtocol.queryResourceBundle(with:)();
  v61 = v197;
  if (v58)
  {
  }

  OUTLINED_FUNCTION_36_4(v59, v60, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  if (v194)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    v64 = v189;
    v63 = v190;
    v65 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v64, v65 ^ 1u, 1, v63);
    if (__swift_getEnumTagSinglePayload(v64, 1, v63) != 1)
    {
      v192 = v57;
      v180 = v55;
      v181 = v24;
      v161 = v53;
      v66 = v178;
      (*(v54 + 32))(v178, v64, v63);
      AssetBackedLLMBundle.tokenizer.getter();
      v67 = OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_14_3(v67, v68);
      v177 = v54;
      __swift_destroy_boxed_opaque_existential_1Tm(&v193);
      AssetBackedLLMBundle.baseModel.getter();
      v81 = OUTLINED_FUNCTION_43_2();
      OUTLINED_FUNCTION_14_3(v81, v82);
      __swift_destroy_boxed_opaque_existential_1Tm(&v193);
      AssetBackedLLMBundle.adapter.getter();
      if (v194)
      {
        v83 = OUTLINED_FUNCTION_43_2();
        v84 = v175;
        OUTLINED_FUNCTION_14_3(v83, v85);
        v86 = v172;
        OUTLINED_FUNCTION_29_4();
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
        __swift_storeEnumTagSinglePayload(v84, 0, 1, v91);
        __swift_destroy_boxed_opaque_existential_1Tm(&v193);
        v92 = v178;
      }

      else
      {
        outlined destroy of ResourceBundle?(&v193, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMd, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
        OUTLINED_FUNCTION_30_3();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
        v86 = v172;
        v92 = v178;
        OUTLINED_FUNCTION_29_4();
      }

      AssetBackedLLMBundle.draftModel.getter();
      v93 = v194;
      if (v194)
      {
        v92 = v195;
        v94 = OUTLINED_FUNCTION_43_2();
        OUTLINED_FUNCTION_14_3(v94, v95);
        v96 = v179;
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
        __swift_storeEnumTagSinglePayload(v86, 0, 1, v101);
        __swift_destroy_boxed_opaque_existential_1Tm(&v193);
        OUTLINED_FUNCTION_28_4();
      }

      else
      {
        outlined destroy of ResourceBundle?(&v193, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMd, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
        OUTLINED_FUNCTION_28_4();
        v96 = v179;
      }

      v102 = v86;
      v184(v64, v187, v66);
      (*(v181 + 16))(v61, v96, v180);
      v103 = *(v93 + 16);
      v104 = v176;
      v103(v169, v176, v173);
      v105 = v170;
      _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v92, v170, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
      v106 = v167;
      _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v102, v167, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
      v107 = Logger.logObject.getter();
      LODWORD(v191) = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_88_0(v191))
      {
        v189 = v107;
        v108 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v193 = v187;
        *v108 = 136316162;
        v109 = v161;
        swift_getDynamicType();
        _typeName(_:qualified:)();
        OUTLINED_FUNCTION_34_3();
        v183(v64, v109);
        OUTLINED_FUNCTION_26_2();
        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        v186 = v108;
        *(v108 + 4) = v110;
        *(v108 + 12) = 2080;
        v111 = v166;
        v112 = v180;
        v113 = v197;
        CatalogAsset.version.getter();
        v188 = AssetVersion.number.getter();
        v114 = v181;
        v115 = v168 + 8;
        v185 = *(v168 + 8);
        v185(v111, v165);
        v116 = *(v114 + 8);
        v181 = v114 + 8;
        v197 = v116;
        v116(v113, v112);
        v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        v118 = v186;
        *(v186 + 14) = v117;
        *(v118 + 22) = 2080;
        v119 = v173;
        v120 = v169;
        CatalogAsset.version.getter();
        AssetVersion.number.getter();
        v121 = OUTLINED_FUNCTION_32_3();
        v168 = v115;
        v122 = v185;
        (v185)(v121);
        v123 = v122;
        OUTLINED_FUNCTION_4_4();
        v174 = v124;
        v188 = v125;
        v125(v120, v119);
        OUTLINED_FUNCTION_26_2();
        v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v118 + 24) = v126;
        *(v118 + 32) = 2080;
        v127 = v163;
        _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v170, v163, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
        if (__swift_getEnumTagSinglePayload(v127, 1, v128) == 1)
        {
          v129 = v122;
          outlined destroy of ResourceBundle?(v127, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
          v130 = v167;
          v131 = v166;
        }

        else
        {
          v131 = v166;
          CatalogAsset.version.getter();
          OUTLINED_FUNCTION_51();
          v139 = OUTLINED_FUNCTION_26_2();
          v140(v139);
          AssetVersion.number.getter();
          v141 = OUTLINED_FUNCTION_32_3();
          v129 = v123;
          (v123)(v141);
          v130 = v167;
        }

        outlined destroy of ResourceBundle?(v170, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
        v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v118 + 34) = v142;
        *(v118 + 42) = 2080;
        v143 = v164;
        _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v130, v164, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
        if (__swift_getEnumTagSinglePayload(v143, 1, v144) == 1)
        {
          outlined destroy of ResourceBundle?(v143, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
        }

        else
        {
          CatalogAsset.version.getter();
          OUTLINED_FUNCTION_51();
          v145 = OUTLINED_FUNCTION_26_2();
          v146(v145);
          AssetVersion.number.getter();
          v129(v131, v165);
        }

        OUTLINED_FUNCTION_31_5();
        outlined destroy of ResourceBundle?(v147, v148, v149);
        v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v118 + 44) = v150;
        v151 = v189;
        _os_log_impl(&dword_25D85C000, v189, v191, "%s:\nTokenizer Version: %s\nBase Model Version: %s\nAdapter Model Version: %s\nDraft Model Version: %s", v118, 0x34u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();

        OUTLINED_FUNCTION_31_5();
        outlined destroy of ResourceBundle?(v152, v153, v154);
        v155 = OUTLINED_FUNCTION_30_3();
        outlined destroy of ResourceBundle?(v155, v156, v157);
        v188(v176, v173);
        v197(v179, v180);
        v158 = OUTLINED_FUNCTION_3_3();
        v159(v158, v190);
        return outlined destroy of ResourceBundle?(&v196, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      }

      outlined destroy of ResourceBundle?(v106, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
      outlined destroy of ResourceBundle?(v105, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
      v132 = *(v174 + 8);
      v133 = v173;
      v132(v169, v173);
      v134 = *(v181 + 8);
      v135 = v180;
      v134(v197, v180);
      outlined destroy of ResourceBundle?(v102, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGSgMR);
      v136 = OUTLINED_FUNCTION_30_3();
      outlined destroy of ResourceBundle?(v136, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGSgMR);
      v132(v104, v133);
      v134(v179, v135);
      v137 = OUTLINED_FUNCTION_3_3();
      v138(v137, v190);
      outlined destroy of ResourceBundle?(&v196, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
      OUTLINED_FUNCTION_34_3();
      v80 = v171;
      return (v183)(v80);
    }
  }

  else
  {
    outlined destroy of ResourceBundle?(&v193, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v64 = v189;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  }

  outlined destroy of ResourceBundle?(v64, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  v184(v182, v187, v53);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_88_0(v74))
  {
    v75 = swift_slowAlloc();
    v76 = OUTLINED_FUNCTION_49_0();
    v193 = v76;
    *v75 = 136315138;
    OUTLINED_FUNCTION_32_3();
    swift_getDynamicType();
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_34_3();
    v183(v78, v77);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v75 + 4) = v79;
    _os_log_impl(&dword_25D85C000, v73, v74, "Can't get asset version info for %s which has non asset backed LLMBundle.", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();

    return outlined destroy of ResourceBundle?(&v196, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  outlined destroy of ResourceBundle?(&v196, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  OUTLINED_FUNCTION_34_3();
  v80 = OUTLINED_FUNCTION_32_3();
  return (v183)(v80);
}

id AnswerSynthesisModelProtocol.createPromptTemplate(with:creationError:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v171 = a2;
  v187 = a1;
  v173 = a5;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  OUTLINED_FUNCTION_14();
  v158 = v7;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v154 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v11);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_4(&v154 - v13);
  v14 = type metadata accessor for AssetBackedLLMBundle();
  OUTLINED_FUNCTION_14();
  v178 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v18);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  OUTLINED_FUNCTION_14();
  v160 = v19;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v154 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_114(v23);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_4(&v154 - v25);
  v181 = type metadata accessor for LLMBundle();
  OUTLINED_FUNCTION_14();
  v164 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v29);
  v30 = *(a3 - 8);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_4();
  v186 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v154 - v39;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, static Logging.answerSynthesis);
  v43 = *(v30 + 16);
  v183 = v30 + 16;
  v182 = v43;
  v43(v40, v189, a3);
  v184 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  v46 = OUTLINED_FUNCTION_88_0(v45);
  v170 = v22;
  v172 = a4;
  v162 = v10;
  v179 = v14;
  v185 = v30;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = OUTLINED_FUNCTION_49_0();
    v193[0] = v48;
    *v47 = 136315138;
    swift_getDynamicType();
    _typeName(_:qualified:)();
    v49 = OUTLINED_FUNCTION_24_4();
    (v30)(v49);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v47 + 4) = v50;
    _os_log_impl(&dword_25D85C000, v44, v45, "Creating prompt template for %s model", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v51 = OUTLINED_FUNCTION_24_4();
    (v30)(v51);
  }

  type metadata accessor for CatalogClient();
  swift_allocObject();
  v52 = CatalogClient.init()();
  v191 = v52;
  v53 = v188;
  CatalogClientProtocol.queryResourceBundle(with:)();
  v54 = v186;
  if (v53)
  {
  }

  OUTLINED_FUNCTION_11_3();
  v57 = v56();
  OUTLINED_FUNCTION_36_4(v57, v58, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = OUTLINED_FUNCTION_88_0(v60);
  v156 = v52;
  v188 = 0;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v157 = a3;
    v63 = v62;
    v193[7] = swift_slowAlloc();
    *v63 = 136315394;
    swift_getDynamicType();
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_18_6();
    (v30)(v54, v157);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v63 + 4) = v64;
    *(v63 + 12) = 2080;
    _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(&v191, &v190, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    String.init<A>(describing:)();
    outlined destroy of ResourceBundle?(&v191, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v63 + 14) = v65;
    _os_log_impl(&dword_25D85C000, v59, v60, "%s resolved resource bundle: %s", v63, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    a3 = v157;
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    outlined destroy of ResourceBundle?(&v191, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    OUTLINED_FUNCTION_18_6();
    v66 = (v30)(v54, a3);
  }

  v68 = v179;
  v69 = v178;
  v70 = v180;
  OUTLINED_FUNCTION_36_4(v66, v67, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v71 = v181;
  v72 = v177;
  if (v192)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    v73 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v72, v73 ^ 1u, 1, v71);
    if (__swift_getEnumTagSinglePayload(v72, 1, v71) != 1)
    {
      v74 = v164;
      v75 = v174;
      (*(v164 + 32))(v174, v72, v71);
      v76 = v189;
      v77 = v182;
      v182(v70, v189, a3);
      v78 = v163;
      (*(v74 + 16))(v163, v75, v71);
      v79 = v169;
      v77(v169, v76, a3);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = OUTLINED_FUNCTION_49_0();
        v187 = swift_slowAlloc();
        v191 = v187;
        *v82 = 136315650;
        v83 = v180;
        swift_getDynamicType();
        _typeName(_:qualified:)();
        OUTLINED_FUNCTION_16_4();
        v185 = v84 + 8;
        (v30)(v83, a3);
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_95_1();
        v183 = v82;
        *(v82 + 4) = v80;
        *(v82 + 12) = 2080;
        v85 = v170;
        v86 = v78;
        LLMBundle.id.getter();
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<LLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
        v157 = a3;
        v87 = v161;
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        OUTLINED_FUNCTION_4_4();
        v89(v85, v87);
        v90 = *(v74 + 8);
        v90(v86, v181);
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_95_1();
        v91 = v183;
        *(v183 + 14) = v88;
        *(v91 + 22) = 2080;
        v92 = v30;
        v93 = v172;
        v94 = v169;
        v95 = v157;
        v96 = (*(v172 + 16))(v157, v172);
        v98 = v97;
        v99 = v95;
        v100 = v90;
        v92(v94, v99);
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_95_1();
        *(v91 + 24) = v96;
        OUTLINED_FUNCTION_15_5(&dword_25D85C000, v101, v102, "%s resolved llmBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_35_5();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();

        a3 = v157;
      }

      else
      {

        (v30)(v79, a3);
        v100 = *(v74 + 8);
        v100(v78, v181);
        (v30)(v180, a3);
        v93 = v172;
      }

      v152 = v174;
      LLMBundle.id.getter();
      (*(v93 + 16))(a3, v93);
      OUTLINED_FUNCTION_33_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();

      v100(v152, v181);
      return outlined destroy of ResourceBundle?(v193, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    }
  }

  else
  {
    outlined destroy of ResourceBundle?(&v191, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v71);
  }

  v106 = outlined destroy of ResourceBundle?(v72, &_s12ModelCatalog9LLMBundleVSgMd, &_s12ModelCatalog9LLMBundleVSgMR);
  OUTLINED_FUNCTION_36_4(v106, v107, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  if (v192)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
    v108 = v176;
    v109 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v108, v109 ^ 1u, 1, v68);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v108, 1, v68);
    v111 = v175;
    if (EnumTagSinglePayload != 1)
    {
      v112 = v168;
      (*(v69 + 32))(v168, v108, v68);
      OUTLINED_FUNCTION_31_5();
      v113 = v182;
      (v182)();
      (*(v69 + 16))(v167, v112, v68);
      v114 = v165;
      OUTLINED_FUNCTION_31_5();
      v113();
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = OUTLINED_FUNCTION_49_0();
        v118 = v30;
        v155 = v30;
        v119 = a3;
        v120 = v117;
        v187 = swift_slowAlloc();
        v191 = v187;
        *v120 = 136315650;
        v121 = v166;
        swift_getDynamicType();
        _typeName(_:qualified:)();
        OUTLINED_FUNCTION_16_4();
        v122 = v121;
        v123 = v167;
        v185 = v124 + 8;
        v118(v122, v119);
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_95_1();
        *(v120 + 4) = v115;
        *(v120 + 12) = 2080;
        v125 = v162;
        AssetBackedLLMBundle.id.getter();
        lazy protocol witness table accessor for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>(&lazy protocol witness table cache variable for type ResourceBundleIdentifier<AssetBackedLLMBundle> and conformance ResourceBundleIdentifier<A>, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
        v126 = v159;
        v127 = dispatch thunk of CustomStringConvertible.description.getter();
        OUTLINED_FUNCTION_4_4();
        v128(v125, v126);
        v129 = *(v69 + 8);
        v129(v123, v68);
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_95_1();
        *(v120 + 14) = v127;
        *(v120 + 22) = 2080;
        v130 = v172;
        v131 = v165;
        (*(v172 + 16))(v119, v172);
        (v155)(v131, v119);
        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v120 + 24) = v132;
        OUTLINED_FUNCTION_15_5(&dword_25D85C000, v133, v134, "%s resolved assetBackedLLMBundle.id: %s. Prompt templateID: %s");
        OUTLINED_FUNCTION_35_5();
        OUTLINED_FUNCTION_42_0();
        a3 = v119;
        v135 = v179;
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        (v30)(v114, a3);
        v129 = *(v69 + 8);
        v129(v167, v68);
        (v30)(v166, a3);
        v135 = v68;
        v130 = v172;
      }

      v153 = v168;
      AssetBackedLLMBundle.id.getter();
      (*(v130 + 16))(a3, v130);
      OUTLINED_FUNCTION_33_3();
      PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();

      v129(v153, v135);
      return outlined destroy of ResourceBundle?(v193, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    }
  }

  else
  {
    outlined destroy of ResourceBundle?(&v191, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v108 = v176;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v68);
    v111 = v175;
  }

  outlined destroy of ResourceBundle?(v108, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  OUTLINED_FUNCTION_11_3();
  v139();
  v140 = v171;
  v141 = v171;
  v142 = Logger.logObject.getter();
  v143 = a3;
  v144 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v142, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v155 = v30;
    v147 = v146;
    v148 = OUTLINED_FUNCTION_49_0();
    v191 = v148;
    *v145 = 136315394;
    swift_getDynamicType();
    _typeName(_:qualified:)();
    OUTLINED_FUNCTION_18_6();
    v155();
    v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v145 + 4) = v149;
    *(v145 + 12) = 2112;
    v150 = v140;
    v151 = _swift_stdlib_bridgeErrorToNSError();
    *(v145 + 14) = v151;
    *v147 = v151;
    _os_log_impl(&dword_25D85C000, v142, v144, "No other ResourceBundle types exist for %s, will throw %@", v145, 0x16u);
    outlined destroy of ResourceBundle?(v147, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_42_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    OUTLINED_FUNCTION_18_6();
    (v30)(v111, v143);
  }

  swift_willThrow();

  outlined destroy of ResourceBundle?(v193, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  return v140;
}

uint64_t static AnswerSynthesisModelProtocol.defaultSamplingParameters.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v1 = OUTLINED_FUNCTION_114(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  static SamplingStrategy.argmax()();
  v7 = type metadata accessor for SamplingStrategy();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = type metadata accessor for NSUserDefaults();
  static NSUserDefaults.answerSynthesisTokenLimitOutput.getter(v8);
  AFIsInternalInstall();
  _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v6, v3, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  return outlined destroy of ResourceBundle?(v6, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
}

uint64_t _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_51();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of ResourceBundle?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_51();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of AnswerSynthesisModelProtocol.execute(request:userPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of AnswerSynthesisModelProtocol.execute(request:userPrompt:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AnswerSynthesisModelProtocol.execute(request:userPrompt:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2)
{

  return dispatch thunk of AssetBackedResource.fetchAsset()();
}

void OUTLINED_FUNCTION_15_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 256);
  v8 = *(v5 - 240);

  _os_log_impl(a1, v8, v7, a4, v4, 0x20u);
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return _s12ModelCatalog14ResourceBundle_pSgWOcTm_0(v4 - 128, v4 - 168, a3, a4);
}

uint64_t AnswerSynthesisModelServer.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t AnswerSynthesisModelServer.model.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t AnswerSynthesisModelServer.model.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t AnswerSynthesisModelServer.resourceBundleQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t AnswerSynthesisModelServer.resourceBundleQuery.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery;
  swift_beginAccess();
  type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_17();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t AnswerSynthesisModelServer.__allocating_init(languageCode:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AnswerSynthesisModelServer.init(languageCode:)(a1);
  return v2;
}

char *AnswerSynthesisModelServer.init(languageCode:)(uint64_t a1)
{
  v3 = v2;
  v110 = *v1;
  v5 = type metadata accessor for CachePolicy();
  v6 = OUTLINED_FUNCTION_114(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v94 = v8 - v7;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for SessionConfiguration();
  OUTLINED_FUNCTION_14();
  v97 = v10;
  v98 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v95 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v96 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  v16 = OUTLINED_FUNCTION_114(v15);
  MEMORY[0x28223BE20](v16);
  v99 = &v89 - v17;
  OUTLINED_FUNCTION_78_0();
  v103 = type metadata accessor for ModelBundle();
  OUTLINED_FUNCTION_14();
  v93 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36();
  v100 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v23 = OUTLINED_FUNCTION_114(v22);
  MEMORY[0x28223BE20](v23);
  v108 = &v89 - v24;
  OUTLINED_FUNCTION_78_0();
  v106 = type metadata accessor for ResourceBundleQuery();
  OUTLINED_FUNCTION_14();
  v104 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_109();
  v101 = v27 - v28;
  MEMORY[0x28223BE20](v29);
  v107 = &v89 - v30;
  OUTLINED_FUNCTION_78_0();
  v31 = type metadata accessor for Locale.LanguageCode();
  OUTLINED_FUNCTION_14();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_109();
  v102 = (v35 - v36);
  MEMORY[0x28223BE20](v37);
  v39 = &v89 - v38;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v112 = v1;
  v40 = type metadata accessor for Logger();
  v41 = __swift_project_value_buffer(v40, static Logging.answerSynthesis);
  v111 = *(v33 + 16);
  v111(v39, a1, v31);
  v92 = v41;
  v42 = v31;
  v43 = Logger.logObject.getter();
  v44 = a1;
  v45 = static os_log_type_t.info.getter();
  v46 = os_log_type_enabled(v43, v45);
  v109 = v33;
  if (v46)
  {
    OUTLINED_FUNCTION_28_3();
    v47 = swift_slowAlloc();
    v91 = v2;
    v48 = v47;
    OUTLINED_FUNCTION_9_4();
    v49 = swift_slowAlloc();
    v105 = v44;
    v90 = v49;
    v113 = v49;
    *v48 = 136315138;
    v111(v102, v39, v42);
    String.init<A>(describing:)();
    v50 = OUTLINED_FUNCTION_50_2();
    v51(v50);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v48 + 4) = v52;
    _os_log_impl(&dword_25D85C000, v43, v45, "Initializing AnswerSynthesisModelServer with %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    v53 = v105;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v3 = v91;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v54 = OUTLINED_FUNCTION_50_2();
    v55(v54);
    v53 = v44;
  }

  static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesisServerConfigurationID.getter();
  v56 = v108;
  v111(v108, v53, v42);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v42);
  v57 = v107;
  ResourceBundleQuery.init(configurationIdentifier:languageCode:otherArguments:)();
  v58 = v3;
  v59 = v112;
  if (!v3)
  {
    v111 = v42;
    v105 = v53;
    v60 = OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery;
    v61 = v104;
    v62 = v106;
    (*(v104 + 32))(&v112[OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery], v57, v106);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v63 = *(v61 + 16);
    v63(v101, &v59[v60], v62);
    v64 = v99;
    ModelBundle.init(resourceBundleQuery:)();
    v65 = v103;
    if (__swift_getEnumTagSinglePayload(v64, 1, v103) != 1)
    {
      v80 = v93;
      v81 = v100;
      (*(v93 + 32))(v100, v64, v65);
      OUTLINED_FUNCTION_107();
      v107 = static AnswerSynthesisModelProtocol.GMS_SESSION_IDENTIFIER.getter();
      v108 = v39;
      OUTLINED_FUNCTION_107();
      static AnswerSynthesisModelProtocol.GMS_USE_CASE_ID.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMR);
      v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_25DBC8180;
      (*(v80 + 16))(v83 + v82, v81, v65);
      static CachePolicy.inMemory.getter();
      v84 = [objc_opt_self() processInfo];
      [v84 processIdentifier];

      v85 = v96;
      SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:)();
      v87 = v97;
      v86 = v98;
      (*(v97 + 16))(v95, v85, v98);
      type metadata accessor for TokenGenerator();
      swift_allocObject();
      v88 = TokenGenerator.init(configuration:)();
      (v108)(v105, v111);
      (*(v87 + 8))(v85, v86);
      (*(v80 + 8))(v100, v103);
      *(v112 + 4) = v88;
      return v112;
    }

    outlined destroy of IntentApplication?(v64, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);

    v66 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v67 = OUTLINED_FUNCTION_54_3();
    if (os_log_type_enabled(v67, v68))
    {
      OUTLINED_FUNCTION_28_3();
      v69 = swift_slowAlloc();
      v108 = v39;
      v70 = v69;
      OUTLINED_FUNCTION_9_4();
      v71 = swift_slowAlloc();
      v114 = v71;
      *v70 = 136315138;
      v63(v101, &v112[v60], v106);
      String.init<A>(describing:)();
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v70 + 4) = v72;
      OUTLINED_FUNCTION_22_4();
      _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      v59 = v112;
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v39 = v108;
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v53 = v105;
    v42 = v111;
    lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
    swift_allocError();
    *v78 = 1;
    swift_willThrow();
  }

  (v39)(v53, v42);

  if (!v58)
  {
    (*(v104 + 8))(&v59[OBJC_IVAR____TtC10OmniSearch26AnswerSynthesisModelServer_resourceBundleQuery], v106);
  }

  swift_deallocPartialClassInstance();
  return v59;
}