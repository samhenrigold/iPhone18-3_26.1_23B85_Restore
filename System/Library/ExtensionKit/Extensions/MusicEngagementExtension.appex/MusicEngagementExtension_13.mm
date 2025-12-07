uint64_t key path getter for Gliss.Transition.to : <A>Gliss.Transition<A>@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(**a1 + 112);
  swift_beginAccess();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a4, v5 + v6, v7);
}

uint64_t key path setter for Gliss.Transition.to : <A>Gliss.Transition<A>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = *a2;
  v12 = *(*v11 + 112);
  swift_beginAccess();
  (*(v7 + 40))(v11 + v12, v10, v6);
  return swift_endAccess();
}

uint64_t Gliss.Transition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Gliss.Transition.progression.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  return *v1;
}

uint64_t Gliss.Transition.state.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Gliss.Transition.state.setter(char a1)
{
  v3 = *(*v1 + 128);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL Gliss.Transition.isEnding.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

BOOL Gliss.Transition.isCancelling.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 4;
}

BOOL Gliss.Transition.hasEnded.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) > 4u;
}

BOOL Gliss.Transition.isGestureBased.getter()
{
  v1 = v0 + *(*v0 + 168);
  swift_beginAccess();
  return *(v1 + 32) != 2;
}

uint64_t Gliss.Transition.addAlongsideAnimation(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = *(v5 + 80);
  v6[2] = v7;
  v8 = *(v5 + 88);
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition(255, v7, v8, v9);
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Array();

  Array.append(_:)();
  return swift_endAccess();
}

uint64_t Gliss.Transition.addCompletion(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = *(v5 + 80);
  v6[2] = v7;
  v8 = *(v5 + 88);
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition(255, v7, v8, v9);
  swift_getFunctionTypeMetadata2();
  type metadata accessor for Array();

  Array.append(_:)();
  return swift_endAccess();
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = *(v4 + *(*v4 + 160));
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    memset(v13, 0, sizeof(v13));
    goto LABEL_6;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v8, v13);

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_0, &_sypSgMR_0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v11 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 key path getter for Gliss.Transition.gestureState : <A>Gliss.Transition<A>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 key path setter for Gliss.Transition.gestureState : <A>Gliss.Transition<A>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + *(**a2 + 168);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 Gliss.Transition.gestureState.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t Gliss.Transition.description.getter()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - v5;
  v7 = *(v2 - 8);
  __chkstk_darwin();
  v27 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v27 - v9;
  strcpy(v32, "Transition(\n");
  BYTE5(v32[1]) = 0;
  HIWORD(v32[1]) = -5120;
  v31._countAndFlagsBits = 0x3A646920202020;
  v31._object = 0xE700000000000000;
  v11._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 10;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  String.append(_:)(v31);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0x6D6F726620202020;
  v13._object = 0xEA0000000000203ALL;
  String.append(_:)(v13);
  v14 = *(*v0 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v14, v2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v15 = *(v7 + 8);
  v15(v10, v2);
  v16._countAndFlagsBits = 10;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  String.append(_:)(v30);

  v17 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v17, v3);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v18._object = 0xED00000A656E6F6ELL;
    v18._countAndFlagsBits = 0x203A6F7420202020;
    String.append(_:)(v18);
  }

  else
  {
    v19 = v27;
    (*(v7 + 32))(v27, v6, v2);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0x203A6F7420202020;
    v20._object = 0xE800000000000000;
    String.append(_:)(v20);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v21._countAndFlagsBits = 10;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    String.append(_:)(v28);

    v15(v19, v2);
  }

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v29._countAndFlagsBits = 0xD000000000000010;
  v29._object = 0x80000001004CAAB0;
  v22 = v1 + *(*v1 + 120);
  swift_beginAccess();
  v23._countAndFlagsBits = Gliss.Progression.description.getter(*v22, *(v22 + 8));
  String.append(_:)(v23);

  v24._countAndFlagsBits = 10;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  String.append(_:)(v29);

  v25._countAndFlagsBits = 10528;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  return v32[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  outlined consume of Gliss.Animation(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance Gliss.Transition<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100141E0C()
{

  return swift_deallocObject();
}

unint64_t Gliss.Progression.description.getter(char a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore5GlissO9DirectionOSgMd, &_s9MusicCore5GlissO9DirectionOSgMR);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x6F69746365726964;
  v4._object = 0xEA00000000003D6ELL;
  String.append(_:)(v4);

  v5._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x3D65756C6176;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0xD000000000000014;
}

unint64_t lazy protocol witness table accessor for type Gliss.Direction and conformance Gliss.Direction()
{
  result = lazy protocol witness table cache variable for type Gliss.Direction and conformance Gliss.Direction;
  if (!lazy protocol witness table cache variable for type Gliss.Direction and conformance Gliss.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gliss.Direction and conformance Gliss.Direction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Gliss.State and conformance Gliss.State()
{
  result = lazy protocol witness table cache variable for type Gliss.State and conformance Gliss.State;
  if (!lazy protocol witness table cache variable for type Gliss.State and conformance Gliss.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gliss.State and conformance Gliss.State);
  }

  return result;
}

__n128 sub_1001421A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1001421C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 120);
  swift_beginAccess();
  result = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10014222C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2 + *(**a2 + 120);
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1001422A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 128);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore5GlissO9AnimationO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for Gliss.Animation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Gliss.Animation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Gliss.Animation(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t type metadata completion function for Gliss.Transition(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Gliss.Progression(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for Gliss.Progression(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Gliss.GestureState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Gliss.GestureState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t EnvironmentVariable.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xD000000000000013;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 environment];

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (a3 == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "FEATUREFLAGS_ENABLED";
    }
  }

  else
  {
    v8 = "MUSIC_TOOLTIP_DEBUG_ALL";
  }

  if (*(v7 + 16))
  {
    v9 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v4, v8 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v7 + 56) + 16 * v9);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

uint64_t EnvironmentVariable.isEnabled.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = EnvironmentVariable.value.getter(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  if (a3 <= 1u)
  {
    lazy protocol witness table accessor for type String and conformance String();
    v6 = StringProtocol.contains<A>(_:)();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v10 & 1;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore19EnvironmentVariableO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for EnvironmentVariable(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for EnvironmentVariable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for EnvironmentVariable(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t static StagedInstall.current()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v45 - v4;
  __chkstk_darwin();
  v7 = &v45 - v6;
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static StagedInstall.logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Checking for a staged install of Music", v11, 2u);
  }

  URL.init(fileURLWithPath:)();
  v12 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 fileExistsAtPath:v13];

  v15 = Logger.logObject.getter();
  if (v14)
  {
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Found Music.app in staged_system_apps", v17, 2u);
    }

    v18 = Data.init(contentsOf:options:)();
    v23 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v23 != 2 || *(v18 + 16) == *(v18 + 24))
      {
LABEL_23:
        outlined consume of Data._Representation(v18, v19);
        v15 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v15, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Unable to read data of staged executable";
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (v23)
    {
      if (v18 == v18 >> 32)
      {
        goto LABEL_23;
      }
    }

    else if ((v19 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v24 = v18;
    v47 = v19;
    v25 = [objc_opt_self() mainBundle];
    v26 = [v25 executableURL];

    if (!v26)
    {
LABEL_39:
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v29 = 2;
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unable to read data of running executable", v38, 2u);

        outlined consume of Data._Representation(v24, v47);
        (*(v1 + 8))(v7, v0);
        return v29;
      }

      outlined consume of Data._Representation(v24, v47);

      goto LABEL_27;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v5, v3, v0);
    v27 = Data.init(contentsOf:options:)();
    v31 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_38;
      }

      v32 = *(v27 + 16);
      v33 = *(v27 + 24);
    }

    else
    {
      if (!v31)
      {
        if ((v28 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_42:
        v45 = v27;
        v46 = v28;
        v39 = specialized static Data.== infix(_:_:)(v27, v28, v24, v47);
        v40 = Logger.logObject.getter();
        if (v39)
        {
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);
          }
        }

        else
        {
          v41 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        outlined consume of Data._Representation(v45, v46);
        outlined consume of Data._Representation(v24, v47);
        v44 = *(v1 + 8);
        v44(v5, v0);
        v44(v7, v0);
        return v39;
      }

      v32 = v27;
      v33 = v27 >> 32;
    }

    if (v32 != v33)
    {
      goto LABEL_42;
    }

LABEL_38:
    v34 = v27;
    v35 = v28;
    (*(v1 + 8))(v5, v0);
    outlined consume of Data._Representation(v34, v35);
    goto LABEL_39;
  }

  v20 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v15, v20))
  {
LABEL_26:

LABEL_27:
    (*(v1 + 8))(v7, v0);
    return 2;
  }

  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = "✅ No staged copy found";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v15, v20, v22, v21, 2u);

  (*(v1 + 8))(v7, v0);
  return 2;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(v13.i64 + 6) = 0;
      v13.i64[0] = 0;
LABEL_10:
      closure #1 in Data.hexRepresentation.getter(&v13, a3, a4, &v14);
      result = outlined consume of Data._Representation(a3, a4);
      if (!v4)
      {
        return v14;
      }

      return result;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v13.i64[0] = a1;
      v13.i16[4] = a2;
      v13.i8[10] = BYTE2(a2);
      v13.i8[11] = BYTE3(a2);
      v13.i8[12] = BYTE4(a2);
      v13.i8[13] = BYTE5(a2);
      goto LABEL_10;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
  if (v4)
  {
    return outlined consume of Data._Representation(a3, a4);
  }

  v12 = v10;
  outlined consume of Data._Representation(a3, a4);
  return v12;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for StagedInstall(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int64_t a9@<X8>, unsigned __int8 a10)
{
  v123 = a8;
  v118 = a7;
  v136 = a6;
  v122 = a4;
  v121 = a3;
  v120 = a2;
  v119 = a1;
  LODWORD(v12) = a10;
  v133 = type metadata accessor for URL.DirectoryHint();
  v13 = *(v133 - 8);
  __chkstk_darwin();
  v132 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v134 = &v108 - v15;
  v16 = type metadata accessor for URL();
  v141 = *(v16 - 8);
  v142 = v16;
  __chkstk_darwin();
  v139 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v115 = &v108 - v18;
  __chkstk_darwin();
  v137 = &v108 - v19;
  __chkstk_darwin();
  v113 = &v108 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  __chkstk_darwin();
  v22 = &v108 - v21;
  v23 = type metadata accessor for URLComponents();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for isInternalInstall != -1)
  {
LABEL_71:
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    URLComponents.init(string:)();
    result = (*(v24 + 48))(v22, 1, v23);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v24 + 32))(v26, v22, v23);
      if (a5 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v112 = a9;
      v111 = v12;
      v110 = v23;
      v109 = v24;
      v108 = v26;
      if (v22 || *(v136 + 16))
      {
        v28 = [objc_opt_self() defaultManager];
        if (one-time initialization token for tapToRadarDirectory != -1)
        {
          swift_once();
        }

        v29 = __swift_project_value_buffer(v142, static URL.tapToRadarDirectory);
        NSFileManager.createDirectoryIfNeeded(at:)(v29);
        v138 = 0;
      }

      else
      {
        v138 = 0;
      }

      a9 = 0;
      v12 = a5 & 0xC000000000000001;
      v23 = a5 & 0xFFFFFFFFFFFFFF8;
      v131 = _swiftEmptyArrayStorage;
      while (v22 != a9)
      {
        if (v12)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a9 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v30 = *(a5 + 8 * a9 + 32);
        }

        v24 = v30;
        v31 = a9 + 1;
        if (__OFADD__(a9, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v26 = specialized closure #1 in static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(a9, v30);
        v33 = v32;

        ++a9;
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v131 + 2) + 1, 1, v131);
          }

          v24 = *(v131 + 2);
          v34 = *(v131 + 3);
          if (v24 >= v34 >> 1)
          {
            v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v24 + 1, 1, v131);
          }

          v35 = v131;
          *(v131 + 2) = v24 + 1;
          v36 = &v35[16 * v24];
          *(v36 + 4) = v26;
          *(v36 + 5) = v33;
          a9 = v31;
        }
      }

      a5 = v136 + 64;
      v39 = 1 << *(v136 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v22 = v40 & *(v136 + 64);
      a9 = (v39 + 63) >> 6;
      v129 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v127 = (v13 + 8);
      v128 = (v13 + 104);
      v140 = (v141 + 8);
      v126 = (v141 + 56);
      v117 = (v141 + 32);
      v125 = (v141 + 48);

      v41 = 0;
      *&v42 = 136446210;
      v114 = v42;
      v116 = _swiftEmptyArrayStorage;
      v43 = v142;
      p_class_meths = &OBJC_PROTOCOL___CAAnimationDelegate.class_meths;
      v12 = v138;
      v130 = a9;
      v124 = a5;
      while (v22)
      {
        v13 = v41;
LABEL_35:
        v138 = v12;
        v45 = (v13 << 10) | (16 * __clz(__rbit64(v22)));
        v46 = (*(v136 + 48) + v45);
        v48 = *v46;
        v47 = v46[1];
        v49 = (*(v136 + 56) + v45);
        v23 = *v49;
        v50 = v49[1];

        outlined copy of Data._Representation(v23, v50);
        if (p_class_meths[85] != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v43, static URL.tapToRadarDirectory);
        v144[0] = 47;
        v144[1] = 0xE100000000000000;
        v51._countAndFlagsBits = v48;
        v135 = v47;
        v51._object = v47;
        String.append(_:)(v51);
        v53 = v132;
        v52 = v133;
        (*v128)(v132, v129, v133);
        lazy protocol witness table accessor for type String and conformance String();
        v54 = v137;
        URL.appending<A>(path:directoryHint:)();
        (*v127)(v53, v52);

        v12 = v138;
        Data.write(to:options:)();
        v24 = v50;
        if (v12)
        {
          v55 = v142;
          if (one-time initialization token for tapToRadar != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          __swift_project_value_buffer(v56, static Logger.tapToRadar);
          swift_errorRetain();
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();

          p_class_meths = (&OBJC_PROTOCOL___CAAnimationDelegate + 32);
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v138 = v23;
            v60 = v24;
            v61 = v59;
            v62 = swift_slowAlloc();
            v143 = v12;
            v144[0] = v62;
            *v61 = v114;
            swift_errorRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
            v63 = String.init<A>(describing:)();
            v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v144);

            *(v61 + 4) = v65;
            _os_log_impl(&_mh_execute_header, v57, v58, "Tap-to-Radar Attachment file write failed with error: %{public}s", v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v62);
            v43 = v142;

            v24 = v60;
            v23 = v138;

            p_class_meths = (&OBJC_PROTOCOL___CAAnimationDelegate + 32);

            (*v140)(v137, v43);
          }

          else
          {

            v43 = v55;
            (*v140)(v137, v55);
          }

          v12 = 0;
          v67 = 1;
          v66 = v134;
        }

        else
        {
          v66 = v134;
          v43 = v142;
          (*v117)(v134, v54, v142);
          v67 = 0;
          p_class_meths = (&OBJC_PROTOCOL___CAAnimationDelegate + 32);
        }

        v26 = v135;
        v22 &= v22 - 1;
        (*v126)(v66, v67, 1, v43);

        outlined consume of Data._Representation(v23, v24);
        v68 = (*v125)(v66, 1, v43);
        a5 = v124;
        if (v68 == 1)
        {
          outlined destroy of URL?(v66);
          v41 = v13;
          a9 = v130;
        }

        else
        {
          v26 = 0;
          v69 = *v117;
          v24 = v113;
          (*v117)(v113, v66, v43);
          v69(v115, v24, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v116 + 2) + 1, 1, v116);
          }

          v23 = *(v116 + 2);
          v70 = *(v116 + 3);
          if (v23 >= v70 >> 1)
          {
            v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v23 + 1, 1, v116);
          }

          v71 = v116;
          *(v116 + 2) = v23 + 1;
          v43 = v142;
          v69(&v71[((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v23], v115, v142);
          v41 = v13;
          v12 = 0;
          a9 = v130;
        }
      }

      while (1)
      {
        v13 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_69;
        }

        if (v13 >= a9)
        {
          break;
        }

        v22 = *(a5 + 8 * v13);
        ++v41;
        if (v22)
        {
          goto LABEL_35;
        }
      }

      v144[0] = v116;

      specialized Array.append<A>(contentsOf:)(v72);
      v73 = v144[0];
      v74 = *(v144[0] + 16);
      if (v74)
      {
        v144[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74, 0);
        v75 = *(v141 + 16);
        v76 = v144[0];
        v77 = (*(v141 + 80) + 32) & ~*(v141 + 80);
        v138 = v73;
        v78 = v73 + v77;
        v141 += 16;
        v79 = *(v141 + 56);
        do
        {
          v80 = v139;
          v81 = v142;
          v75(v139, v78, v142);
          v82 = URL.path.getter();
          v84 = v83;
          (*v140)(v80, v81);
          v144[0] = v76;
          v86 = *(v76 + 2);
          v85 = *(v76 + 3);
          if (v86 >= v85 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
            v76 = v144[0];
          }

          *(v76 + 2) = v86 + 1;
          v87 = &v76[16 * v86];
          *(v87 + 4) = v82;
          *(v87 + 5) = v84;
          v78 += v79;
          --v74;
        }

        while (v74);
      }

      else
      {

        v76 = _swiftEmptyArrayStorage;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
      v88 = *(type metadata accessor for URLQueryItem() - 8);
      v89 = *(v88 + 72);
      v90 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1004F2FD0;
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      v92 = [objc_opt_self() mainBundle];
      v93 = [v92 bundleIdentifier];

      v94 = v123;
      if (v93)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      URLQueryItem.init(name:value:)();

      v144[0] = v131;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v96 = lazy protocol witness table accessor for type [String] and conformance [A]();
      BidirectionalCollection<>.joined(separator:)();
      URLQueryItem.init(name:value:)();

      v144[0] = v76;
      v141 = v96;
      v142 = v95;
      BidirectionalCollection<>.joined(separator:)();
      URLQueryItem.init(name:value:)();

      v97 = *(v94 + 16);
      v98 = _swiftEmptyArrayStorage;
      if (v97)
      {
        v138 = v91 + v90;
        v139 = v89;
        v140 = v91;
        v144[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97, 0);
        v98 = v144[0];
        v99 = (v94 + 32);
        do
        {
          v100 = *v99++;
          v143 = qword_1004FDC50[v100];
          v101 = dispatch thunk of CustomStringConvertible.description.getter();
          v103 = v102;
          v144[0] = v98;
          v105 = v98[2];
          v104 = v98[3];
          if (v105 >= v104 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1);
            v98 = v144[0];
          }

          v98[2] = v105 + 1;
          v106 = &v98[2 * v105];
          v106[4] = v101;
          v106[5] = v103;
          --v97;
        }

        while (v97);
      }

      v144[0] = v98;
      BidirectionalCollection<>.joined(separator:)();

      URLQueryItem.init(name:value:)();

      v144[0] = v131;
      specialized Array.append<A>(contentsOf:)(v76);

      URLQueryItem.init(name:value:)();

      URLQueryItem.init(name:value:)();

      v107 = v108;
      URLComponents.queryItems.setter();
      URLComponents.url.getter();
      return (*(v109 + 8))(v107, v110);
    }
  }

  else
  {
    v37 = v142;
    v38 = *(v141 + 56);

    return v38(a9, 1, 1, v37);
  }

  return result;
}

uint64_t one-time initialization function for tapToRadarDirectory()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v5 = &v8 - v4;
  v6 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v6, static URL.tapToRadarDirectory);
  __swift_project_value_buffer(v6, static URL.tapToRadarDirectory);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

uint64_t URL.tapToRadarDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for tapToRadarDirectory != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return __swift_project_value_buffer(v0, static URL.tapToRadarDirectory);
}

uint64_t static URL.tapToRadarDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for tapToRadarDirectory != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static URL.tapToRadarDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for tapToRadar()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.tapToRadar);
  __swift_project_value_buffer(v0, static Logger.tapToRadar);
  return Logger.init(subsystem:category:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TTR.Keyword()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1004FDC50[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TTR.Keyword(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1004FDC50[v2]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TTR.Keyword@<X0>(Swift::Int *a1@<X0>, MusicCore::TTR::Keyword_optional *a2@<X8>)
{
  result = specialized TTR.Keyword.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t specialized closure #1 in static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1, UIImage *a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for tapToRadarDirectory != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, static URL.tapToRadarDirectory);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v22 = 0xD000000000000012;
  v23 = 0x80000001004CAC50;
  v21[1] = a1;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 1735420462;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v7, v4);

  v14 = UIImageJPEGRepresentation(a2, 85.0);
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    Data.write(to:options:)();
    outlined consume of Data._Representation(v16, v18);
  }

  v19 = URL.path.getter();
  (*(v9 + 8))(v11, v8);
  return v19;
}

uint64_t specialized TTR.Keyword.init(rawValue:)(uint64_t a1)
{
  if (a1 > 1723675)
  {
    if (a1 != 1947834)
    {
      if (a1 == 1723676)
      {
        return 2;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1 != 1723672)
    {
      if (a1 == 1723674)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type TTR.Keyword and conformance TTR.Keyword()
{
  result = lazy protocol witness table cache variable for type TTR.Keyword and conformance TTR.Keyword;
  if (!lazy protocol witness table cache variable for type TTR.Keyword and conformance TTR.Keyword)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TTR.Keyword and conformance TTR.Keyword);
  }

  return result;
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v5, v4);
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = static MainActor.shared.getter();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:);

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v6, &type metadata for Bool);
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v3, v2);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    outlined init with take of Any(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    outlined init with take of Any(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    outlined init with take of Any(v29, v30);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    outlined init with take of Any(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22MTKTextureLoaderOptionaypGMd, &_ss18_DictionaryStorageCySo22MTKTextureLoaderOptionaypGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    outlined init with take of Any((v24 + 8), v22);
    outlined init with take of Any(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~v6[v15 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = v6[v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~v6[v15 >> 6])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v8) = v12;
    outlined init with take of Any(v24, (v1[7] + 32 * v8));
    ++v1[2];
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

__int128 *CloudLibrary.EnablementContext.action.unsafeMutableAddressor()
{
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.EnablementContext.action;
}

uint64_t *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.StatusObserver.shared;
}

uint64_t CloudLibrary.EnablementContext.title.getter(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 > 6u)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v7, v2);
    if (one-time initialization token for module == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.EnablementContext.message.getter(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = (v3 + 16);
  if (a1 > 6u)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v8)(v5, v7, v2);
    if (one-time initialization token for module == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*v8)(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v9 = static NSBundle.module;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v10;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CloudLibrary.FailureType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(~v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CloudLibrary.FailureType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(~v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CloudLibrary.FailureType@<X0>(Swift::Int *a1@<X0>, MusicCore::CloudLibrary::FailureType_optional *a2@<X8>)
{
  result = specialized CloudLibrary.FailureType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t CloudLibrary.Status.shouldDisplayBanner.getter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static CloudLibrary.StatusObserver.shared;
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities11UserDefaultVySSSbGMd, &_s14MusicUtilities11UserDefaultVySSSbGMR);
  UserDefault.wrappedValue.getter(v5, &v7);
  if (v7 != 2 && (v7 & 1) != 0)
  {
LABEL_8:
    LOBYTE(a1) = 0;
    return a1 & 1;
  }

  if (a1 >> 30 != 1)
  {
    if (a1 >> 30 != 2 || (a1 - 0x80000000) >= 3)
    {
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    goto LABEL_8;
  }

  return a1 & 1;
}

BOOL CloudLibrary.Status.shouldShowActionButton.getter(unint64_t a1)
{
  v1 = a1 >> 1 == 1073741825;
  if (a1 >> 30 != 2)
  {
    v1 = 0;
  }

  return !(a1 >> 30) || v1;
}

void (*CloudLibrary.Status.action.getter(unint64_t a1))()
{
  v1 = closure #1 in CloudLibrary.Status.action.getter;
  if (a1 >> 30)
  {
    if (a1 >> 30 != 2)
    {
      return 0;
    }

    v1 = closure #1 in CloudLibrary.Status.action.getter;
    if (a1 >> 1 != 1073741825)
    {
      return 0;
    }
  }

  return v1;
}

void closure #1 in CloudLibrary.Status.action.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
}

unint64_t CloudLibrary.Status.progress.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if ((a1 & 0xC0000000) != 0x40000000)
  {
    v1 = 0;
  }

  return v1 | (((a1 & 0xC0000000) != 0x40000000) << 32);
}

uint64_t static CloudLibrary.EnablementContext.action.getter()
{
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v0 = static CloudLibrary.EnablementContext.action;

  return v0;
}

uint64_t static CloudLibrary.StatusObserver.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t CloudLibrary.StatusObserver.().init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore12CloudLibraryO6StatusOGMd, &_s7Combine9PublishedVy9MusicCore12CloudLibraryO6StatusOGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v31[-v4];
  v33 = 2;
  v32[0] = 0xD000000000000014;
  v32[1] = 0x80000001004C53B0;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = lazy protocol witness table accessor for type String and conformance String();
  UserDefault.init(wrappedValue:defaults:key:)(&v33, v6, v32, &type metadata for String, &type metadata for Bool, v7, &v34);
  v8 = v35;
  v9 = v36;
  *(v1 + 16) = v34;
  *(v1 + 32) = v8;
  *(v1 + 40) = v9;
  *(v1 + 48) = _swiftEmptyArrayStorage;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static ApplicationCapabilities.Controller.shared;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v10 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  *&v34 = 0x80000000;

  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v10, v5, v2);
  *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd, &_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EB0;
  if (one-time initialization token for userSubscriptionStateDidChange != -1)
  {
    swift_once();
  }

  v12 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v13.location = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v13.length = *(v1 + 56);
  v14 = CFRange.init(_:)(v13);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v14;
  v15 = one-time initialization token for isCloudLibraryEnabledDidChange;
  v16 = v12;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v18.location = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v18.length = *(v1 + 56);
  v19 = CFRange.init(_:)(v18);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v19;
  v20 = MPCloudControllerCloudLibraryFailureDidChangeNotification;
  v21 = CFRange.init(_:)(MPCloudControllerCloudLibraryFailureDidChangeNotification);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v23 = v17;

  v24 = v20;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, partial apply for closure #1 in CloudLibrary.StatusObserver.().init(), v22);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v25 = MPCloudControllerIsUpdateInProgressDidChangeNotification;
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 sharedCloudController];
  v29 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v27, v28, 1, 1, partial apply for closure #2 in CloudLibrary.StatusObserver.().init(), v29);

  return v1;
}

void closure #1 in CloudLibrary.StatusObserver.().init()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24[4] = v20;
    v24[5] = v21;
    v25 = v22;
    v26 = v23;
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    outlined destroy of ApplicationCapabilities(v24);
    if (v25 == 2)
    {
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v7 = v16;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v16 = 2147483649;

        static Published.subscript.setter();
        CloudLibrary.StatusObserver.status.didset(v7);
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    outlined destroy of ApplicationCapabilities(&v16);
    if ((BYTE2(v16) & 1) == 0)
    {
      v4 = [objc_opt_self() sharedCloudController];
      if (v4)
      {
        v5 = v4;
        *&v10 = partial apply for closure #1 in closure #1 in CloudLibrary.StatusObserver.().init();
        *(&v10 + 1) = v2;
        *&v8 = _NSConcreteStackBlock;
        *(&v8 + 1) = 1107296256;
        *&v9 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
        *(&v9 + 1) = &block_descriptor_161;
        v6 = _Block_copy(&v8);

        [v5 loadLastKnownEnableICMLErrorStatusWithCompletionHander:v6];

        _Block_release(v6);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_9:
  }
}

uint64_t closure #1 in closure #1 in CloudLibrary.StatusObserver.().init()(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in CloudLibrary.StatusObserver.().init();
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_167_0;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void closure #1 in closure #1 in closure #1 in CloudLibrary.StatusObserver.().init()(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1 || !a2)
  {
    goto LABEL_5;
  }

  v3 = a2;
  if (specialized CloudLibrary.FailureType.init(rawValue:)([v3 integerValue]) == 6)
  {

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    CloudLibrary.StatusObserver.status.didset(v4);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  CloudLibrary.StatusObserver.status.didset(v4);
}

uint64_t closure #2 in CloudLibrary.StatusObserver.().init()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CloudLibrary.StatusObserver.updateProgress()();
  }

  return result;
}

void *CloudLibrary.StatusObserver.hasDisregardedBanner.didset()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities11UserDefaultVySSSbGMd, &_s14MusicUtilities11UserDefaultVySSSbGMR);
  result = UserDefault.wrappedValue.getter(v3, &v6);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v7 = 2147483650;

    static Published.subscript.setter();
    return CloudLibrary.StatusObserver.status.didset(v5);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities11UserDefaultVySSSbGMd, &_s14MusicUtilities11UserDefaultVySSSbGMR);
  UserDefault.wrappedValue.getter(v3, &v5);
  return v5;
}

void *CloudLibrary.StatusObserver.hasDisregardedBanner.setter(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities11UserDefaultVySSSbGMd, &_s14MusicUtilities11UserDefaultVySSSbGMR);
  UserDefault.wrappedValue.setter(&v3, v1);
  swift_endAccess();
  return CloudLibrary.StatusObserver.hasDisregardedBanner.didset();
}

void (*CloudLibrary.StatusObserver.hasDisregardedBanner.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities11UserDefaultVySSSbGMd, &_s14MusicUtilities11UserDefaultVySSSbGMR);
  *(v4 + 64) = v7;
  UserDefault.wrappedValue.getter(v7, v4 + 25);
  return CloudLibrary.StatusObserver.hasDisregardedBanner.modify;
}

void CloudLibrary.StatusObserver.hasDisregardedBanner.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *a1;
  *(*a1 + 26) = *(*a1 + 25);
  swift_beginAccess();
  UserDefault.wrappedValue.setter(v3 + 26, v2);
  swift_endAccess();
  CloudLibrary.StatusObserver.hasDisregardedBanner.didset();

  free(v1);
}

void CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    v6 = *(v2 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
      *(v2 + 48) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v10[5] = v5;
    *(v2 + 48) = v6;
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = 2147483652;

  static Published.subscript.setter();
  CloudLibrary.StatusObserver.status.didset(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SbtGMd, &_ss23_ContiguousArrayStorageCySS_SbtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SbtMd, &_sSS_SbtMR);
  swift_arrayDestroy();
  v16 = [objc_opt_self() sharedCloudController];
  if (v16)
  {
    v17 = v16;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = swift_allocObject();
    swift_weakInit();
    v21[4] = partial apply for closure #1 in CloudLibrary.StatusObserver.enableCloudLibrary(completion:);
    v21[5] = v19;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v21[3] = &block_descriptor_22;
    v20 = _Block_copy(v21);

    [v17 enableCloudLibraryWithOptions:isa completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (one-time initialization token for cloudLibrary != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.cloudLibrary);
    v10 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v10, v19, "Successfully enabled Cloud Library", v20, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (one-time initialization token for cloudLibrary != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.cloudLibrary);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v3;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;
    aBlock[6] = a1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(describing:)();
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to enable Cloud Library with error=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    v3 = v27;

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v23 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in CloudLibrary.StatusObserver.enableCloudLibrary(completion:);
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_156;
    v25 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v30 + 8))(v5, v3);
    return (*(v28 + 8))(v8, v29);
  }

  return result;
}

uint64_t closure #1 in closure #1 in CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 48);
  *(a1 + 48) = _swiftEmptyArrayStorage;
  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = v5 + 40;
  while (v7 < *(v5 + 16))
  {
    ++v7;
    v9 = *(v8 - 8);
    v10 = a2 == 0;

    v9(&v10);

    v8 += 16;
    if (v6 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t CloudLibrary.StatusObserver.add(updateObserver:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 64);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      outlined init with copy of CloudLibrary.StatusObserver.InternalObserver(v8, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of CloudLibrary.StatusObserver.InternalObserver(v16);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v19 = a2;
  swift_unknownObjectWeakInit();
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(a2 + 8))(v16[0], ObjectType, a2);
  outlined init with copy of CloudLibrary.StatusObserver.InternalObserver(v18, v17);
  swift_beginAccess();
  a1 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(v3 + 64) = a1;
  }

  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, a1);
  }

  a1[2] = v15 + 1;
  outlined init with take of CloudLibrary.StatusObserver.InternalObserver(v17, &a1[2 * v15 + 4]);
  *(v3 + 64) = a1;
  swift_endAccess();
  return outlined destroy of CloudLibrary.StatusObserver.InternalObserver(v18);
}

void CloudLibrary.StatusObserver.remove(updateObserver:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      outlined init with copy of CloudLibrary.StatusObserver.InternalObserver(v5, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of CloudLibrary.StatusObserver.InternalObserver(v8);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          specialized Array.remove(at:)(v6, v9);
          outlined destroy of CloudLibrary.StatusObserver.InternalObserver(v9);
          swift_endAccess();
          return;
        }
      }

      ++v6;
      v5 += 16;
      if (v4 == v6)
      {

        return;
      }
    }

    __break(1u);
  }
}

uint64_t key path getter for CloudLibrary.StatusObserver.status : CloudLibrary.StatusObserver@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for CloudLibrary.StatusObserver.status : CloudLibrary.StatusObserver(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return CloudLibrary.StatusObserver.status.didset(v3);
}

uint64_t CloudLibrary.StatusObserver.status.didset(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = specialized static CloudLibrary.Status.__derived_enum_equals(_:_:)(v11, a1);
  if ((result & 1) == 0)
  {
    if (one-time initialization token for cloudLibrary != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.cloudLibrary);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v8 = String.init<A>(describing:)();
      v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Status did change: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    return CloudLibrary.StatusObserver.updateObservers()();
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for CloudLibrary.StatusObserver.$status : CloudLibrary.StatusObserver(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore12CloudLibraryO6StatusOGMd, &_s7Combine9PublishedVy9MusicCore12CloudLibraryO6StatusOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for CloudLibrary.StatusObserver.$status : CloudLibrary.StatusObserver(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore12CloudLibraryO6StatusO_GMd, &_s7Combine9PublishedV9PublisherVy9MusicCore12CloudLibraryO6StatusO_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore12CloudLibraryO6StatusOGMd, &_s7Combine9PublishedVy9MusicCore12CloudLibraryO6StatusOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t CloudLibrary.StatusObserver.$status.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore12CloudLibraryO6StatusOGMd, &_s7Combine9PublishedVy9MusicCore12CloudLibraryO6StatusOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

float CloudLibrary.StatusObserver.updateContext.didset(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
  if (a1 == 2)
  {
    if (v2 == 2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v2 == 2)
  {
LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    CloudLibrary.StatusObserver.status.didset(v4);
    return result;
  }

  if (((v2 ^ a1) & 1) != 0 || (result = *(&v2 + 1), *(&a1 + 1) != *(&v2 + 1)))
  {
LABEL_3:
    if ((v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

float (*CloudLibrary.StatusObserver.updateContext.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext;
  *a1 = v1;
  a1[1] = v2;
  a1[2] = *(v1 + v2);
  return CloudLibrary.StatusObserver.updateContext.modify;
}

float CloudLibrary.StatusObserver.updateContext.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  return CloudLibrary.StatusObserver.updateContext.didset(v4);
}

void CloudLibrary.StatusObserver.updateProgress()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin();
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin();
  v48 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v46 = (&v42 - v6);
  v47 = type metadata accessor for DispatchTime();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v43 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 sharedCloudController];
  if (!v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v16 isUpdateInProgress];

  v19 = [v15 sharedCloudController];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 isInitialImport];

  v22 = v18 & v21;
  v23 = *(v0 + 88);
  if (v22 == 1)
  {
    if (!v23)
    {
      v24 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
      *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 1;
      v42 = v0;
      CloudLibrary.StatusObserver.updateContext.didset(v24);
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_source, OS_dispatch_source_ptr);
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
      (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInteractive(_:), v11);
      v25 = static OS_dispatch_queue.global(qos:)();
      (*(v12 + 8))(v14, v11);
      aBlock[0] = _swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
      lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

      (*(v43 + 8))(v10, v8);
      ObjectType = swift_getObjectType();
      v28 = v44;
      static DispatchTime.now()();
      v29 = v46;
      *v46 = 1;
      v31 = v49;
      v30 = v50;
      v32 = *(v49 + 104);
      v32(v29, enum case for DispatchTimeInterval.seconds(_:), v50);
      v33 = v48;
      *v48 = 1;
      v32(v33, enum case for DispatchTimeInterval.nanoseconds(_:), v30);
      OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v34(v29, v30);
      (*(v45 + 8))(v28, v47);
      v35 = v42;
      aBlock[4] = partial apply for closure #1 in CloudLibrary.StatusObserver.updateProgress();
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_111;
      v36 = _Block_copy(aBlock);
      v37 = v35;

      v38 = v51;
      default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
      v39 = v53;
      default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v36);
      (*(v55 + 8))(v39, v56);
      (*(v52 + 8))(v38, v54);

      v40 = *(v35 + 88);
      *(v37 + 88) = v26;
      if (v40)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    if (v23)
    {
      swift_getObjectType();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
    *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;

    CloudLibrary.StatusObserver.updateContext.didset(v41);
  }
}

void closure #1 in CloudLibrary.StatusObserver.updateProgress()(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v5[4] = partial apply for closure #1 in closure #1 in CloudLibrary.StatusObserver.updateProgress();
    v5[5] = a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Float) -> ();
    v5[3] = &block_descriptor_114;
    v4 = _Block_copy(v5);

    [v3 loadCloudMusicLibraryUpdateProgressWithCompletionHandler:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in CloudLibrary.StatusObserver.updateProgress()(uint64_t a1, float a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in CloudLibrary.StatusObserver.updateProgress();
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_121;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

uint64_t closure #1 in closure #1 in closure #1 in CloudLibrary.StatusObserver.updateProgress()(uint64_t a1, float a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = CloudLibrary.StatusObserver.updateContext.modify(v6);
    if (*v4 != 2)
    {
      *(v4 + 4) = a2;
    }

    (v5)(v6, 0);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Float) -> ()(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t CloudLibrary.StatusObserver.updateObservers()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v10[0];
  result = swift_beginAccess();
  v3 = *(v0 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      outlined init with copy of CloudLibrary.StatusObserver.InternalObserver(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      outlined destroy of CloudLibrary.StatusObserver.InternalObserver(v8);
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *CloudLibrary.StatusObserver.deinit()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore12CloudLibraryO6StatusOGMd, &_s7Combine9PublishedVy9MusicCore12CloudLibraryO6StatusOGMR);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudLibrary.StatusObserver.__deallocating_deinit()
{
  CloudLibrary.StatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CloudLibrary.StatusObserver@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CloudLibrary.Status.message.getter(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 > 1 && (a1 - 0x80000000) < 3)
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.Status.actionTitle.getter(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 && (a1 >> 30 == 1 || a1 != 2147483651))
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.module;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v10;
}

BOOL static CloudLibrary.PresentationStyle.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CloudLibrary.PresentationStyle(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

void closure #2 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
    v4 = a2;
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(v4, a3);
}

uint64_t closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  specialized static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:completion:)(v6, a3, a4, partial apply for closure #1 in closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v14);
}

void static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27[4] = v23;
  v27[5] = v24;
  v27[6] = v25;
  v27[7] = v26;
  v27[0] = v19;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v22;
  outlined destroy of ApplicationCapabilities(v27);
  if (BYTE2(v27[0]))
  {
    if (!a4)
    {
      return;
    }

    v10 = 1;
LABEL_9:
    a4(v10);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  outlined destroy of ApplicationCapabilities(&v19);
  if ((BYTE9(v19) & 1) == 0)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    goto LABEL_9;
  }

  specialized static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:completion:)(v9, a2, a3, a4, a5);
}

uint64_t static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:), v5, v4);
}

uint64_t static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = static MainActor.shared.getter();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:);

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD000000000000045, 0x80000001004CB240, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:), v6, &type metadata for Bool);
}

uint64_t static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:), v3, v2);
}

{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v21[-v9];
  v11 = __chkstk_darwin();
  v13 = &v21[-v12];
  v14 = *(v6 + 16);
  v14(&v21[-v12], a1, v5, v11);
  (v14)(v10, v13, v5);
  (v14)(v8, v13, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v13, v5);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v41[4] = v37;
  v41[5] = v38;
  v41[6] = v39;
  v41[7] = v40;
  v41[0] = v33;
  v41[1] = v34;
  v41[2] = v35;
  v41[3] = v36;
  outlined destroy of ApplicationCapabilities(v41);
  if (BYTE2(v41[0]))
  {
    v17 = *(v6 + 8);
    v17(v10, v5);
    LOBYTE(v33) = 1;
    CheckedContinuation.resume(returning:)();

    return (v17)(v8, v5);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v37 = v29;
    v38 = v30;
    v39 = v31;
    v40 = v32;
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v36 = v28;
    outlined destroy of ApplicationCapabilities(&v33);
    if (BYTE9(v33))
    {
      v20 = *(v6 + 8);
      v20(v10, v5);
      specialized static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:completion:)(v22, v23, v24, partial apply for closure #1 in closure #1 in static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:), v16);

      return (v20)(v8, v5);
    }

    else
    {
      LOBYTE(v25) = 0;
      CheckedContinuation.resume(returning:)();

      v19 = *(v6 + 8);
      v19(v8, v5);
      return (v19)(v10, v5);
    }
  }
}

char *CloudLibraryViewController.init(title:message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + direct field offset for CloudLibraryViewController.$__lazy_storage_$_dismissButton) = 0;
  type metadata accessor for EnableCloudLibraryView.Model(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v14 = 0;
  v14[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  swift_beginAccess();
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a5, a6);
  type metadata accessor for UIUserInterfaceSizeClass(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v16 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v17 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8);
  *v15 = 0;
  v15[1] = 0;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v16, v17);
  *(v6 + direct field offset for CloudLibraryViewController.model) = v13;
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type EnableCloudLibraryView.Model and conformance EnableCloudLibraryView.Model, type metadata accessor for EnableCloudLibraryView.Model, &protocol conformance descriptor for EnableCloudLibraryView.Model);
  swift_retain_n();
  v32 = ObservedObject.init(wrappedValue:)();
  v33 = v18;
  v19 = UIHostingController.init(rootView:)();
  v20 = *&v19[direct field offset for CloudLibraryViewController.model];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = (v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v23 = *(v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v24 = *(v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8);
  *v22 = partial apply for closure #1 in CloudLibraryViewController.init(title:message:completion:);
  v22[1] = v21;
  v25 = v19;

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v23, v24);

  CloudLibraryViewController.determineHorizontalSizeClass()();
  v26 = [v25 presentingViewController];
  if (v26)
  {
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1004F2400;
    *(v28 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    UIViewController.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();
  }

  v29 = [v25 presentationController];

  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1004F2400;
    *(v30 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    UIPresentationController.registerForTraitChanges(_:action:)();

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a5, a6);
    swift_unknownObjectRelease();
  }

  else
  {

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a5, a6);
  }

  return v25;
}

void closure #1 in CloudLibraryViewController.init(title:message:completion:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void @objc CloudLibraryViewController.init(coder:)(uint64_t a1)
{
  *(a1 + direct field offset for CloudLibraryViewController.$__lazy_storage_$_dismissButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void @objc CloudLibraryViewController.viewDidLoad()(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CloudLibraryViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 navigationItem];
  v3 = CloudLibraryViewController.dismissButton.getter();
  [v2 setLeftBarButtonItem:v3];

  v4 = [v1 navigationItem];
  [v4 setLargeTitleDisplayMode:2];
}

objc_class *CloudLibraryViewController.dismissButton.getter()
{
  v1 = direct field offset for CloudLibraryViewController.$__lazy_storage_$_dismissButton;
  v2 = *(v0 + direct field offset for CloudLibraryViewController.$__lazy_storage_$_dismissButton);
  if (v2)
  {
    v3 = *(v0 + direct field offset for CloudLibraryViewController.$__lazy_storage_$_dismissButton);
  }

  else
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIBarButtonItem, UIBarButtonItem_ptr);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIAction, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v9.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v9.is_nil = 0;
    v5.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void closure #1 in CloudLibraryViewController.dismissButton.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void CloudLibraryViewController.determineHorizontalSizeClass()()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v2 = v1, v3 = [v1 traitCollection], v2, v3) || (v4 = objc_msgSend(v0, "presentationController")) != 0 && (v5 = v4, v3 = objc_msgSend(v4, "traitCollection"), v5, v3))
  {

    [v3 horizontalSizeClass];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }
}

void @objc CloudLibraryViewController.determineHorizontalSizeClass()(void *a1)
{
  v1 = a1;
  CloudLibraryViewController.determineHorizontalSizeClass()();
}

void CloudLibraryViewController.__ivar_destroyer()
{

  v1 = *(v0 + direct field offset for CloudLibraryViewController.$__lazy_storage_$_dismissButton);
}

id CloudLibraryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudLibraryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void @objc CloudLibraryViewController.__ivar_destroyer(uint64_t a1)
{

  v2 = *(a1 + direct field offset for CloudLibraryViewController.$__lazy_storage_$_dismissButton);
}

uint64_t EnableCloudLibraryView.Model.horizontalSizeClass.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t EnableCloudLibraryView.Model.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model__horizontalSizeClass;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo24UIUserInterfaceSizeClassVGMd, &_s7Combine9PublishedVySo24UIUserInterfaceSizeClassVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss), *(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance EnableCloudLibraryView.Model@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EnableCloudLibraryView.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t EnableCloudLibraryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6VStackVyAEyAGyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0C0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AGyAEyAS_AuIyA11_A3_GtGGAGyAEyAA06ScrollC0VyASG_AUA14_tGGtGGMd, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6VStackVyAEyAGyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0C0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AGyAEyAS_AuIyA11_A3_GtGGAGyAEyAA06ScrollC0VyASG_AUA14_tGGtGGMR);
  __chkstk_darwin();
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6VStackVyAGyAIyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyACyACyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AIyAGyAS_AuCyA11_A3_GtGGAIyAGyAA06ScrollE0VyASG_AUA14_tGGtGGA3_GMd, &_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6VStackVyAGyAIyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyACyACyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AIyAGyAS_AuCyA11_A3_GtGGAIyAGyAA06ScrollE0VyASG_AUA14_tGGtGGA3_GMR) - 8;
  __chkstk_darwin();
  v10 = &v33 - v9;
  *v7 = static Axis.Set.vertical.getter();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA6VStackVyAIyAKyAIyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AUtGG_AA6SpacerVAA5ImageVAyA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAMyAMyAoA14_PaddingLayoutVGAA010_FlexFrameZ0VGG_AA017BorderedProminentxV0VQo_tGG_AKyAIyAW_AyMyA15_A7_GtGGAKyAIyAA06ScrollD0VyAWG_AYA18_tGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA6VStackVyAIyAKyAIyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AUtGG_AA6SpacerVAA5ImageVAyA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAMyAMyAoA14_PaddingLayoutVGAA010_FlexFrameZ0VGG_AA017BorderedProminentxV0VQo_tGG_AKyAIyAW_AyMyA15_A7_GtGGAKyAIyAA06ScrollD0VyAWG_AYA18_tGGtGGMR);
  closure #1 in EnableCloudLibraryView.body.getter(a1, a2, &v7[*(v11 + 44)]);
  v12 = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  outlined init with take of URL?(v7, v10, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6VStackVyAEyAGyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0C0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AGyAEyAS_AuIyA11_A3_GtGGAGyAEyAA06ScrollC0VyASG_AUA14_tGGtGGMd, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6VStackVyAEyAGyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0C0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AGyAEyAS_AuIyA11_A3_GtGGAGyAEyAA06ScrollC0VyASG_AUA14_tGGtGGMR);
  v21 = &v10[*(v8 + 44)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = static Edge.Set.bottom.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  outlined init with take of URL?(v10, a3, &_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6VStackVyAGyAIyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyACyACyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AIyAGyAS_AuCyA11_A3_GtGGAIyAGyAA06ScrollE0VyASG_AUA14_tGGtGGA3_GMd, &_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6VStackVyAGyAIyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyACyACyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AIyAGyAS_AuCyA11_A3_GtGGAIyAGyAA06ScrollE0VyASG_AUA14_tGGtGGA3_GMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA12ViewThatFitsVyAA05TupleE0VyAA6VStackVyAGyAIyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyACyACyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AIyAGyAS_AuCyA11_A3_GtGGAIyAGyAA06ScrollE0VyASG_AUA14_tGGtGGA3_GA3_GMd, &_s7SwiftUI15ModifiedContentVyACyAA12ViewThatFitsVyAA05TupleE0VyAA6VStackVyAGyAIyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyACyACyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AIyAGyAS_AuCyA11_A3_GtGGAIyAGyAA06ScrollE0VyASG_AUA14_tGGtGGA3_GA3_GMR);
  v32 = a3 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t closure #1 in EnableCloudLibraryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtGGMR);
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v25 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtGGMR);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v25 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGGMR);
  __chkstk_darwin();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v25 - v15;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AUtGG_AA6SpacerVAA5ImageVAyA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAMyAMyAoA08_PaddingG0VGAA010_FlexFrameG0VGG_AA017BorderedProminentvT0VQo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AUtGG_AA6SpacerVAA5ImageVAyA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAMyAMyAoA08_PaddingG0VGAA010_FlexFrameG0VGG_AA017BorderedProminentvT0VQo_tGGMR);
  closure #1 in closure #1 in EnableCloudLibraryView.body.getter(a1, a2, &v16[*(v17 + 44)]);
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AUtGG_AA6SpacerVAMyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAMyAMyAoA08_PaddingG0VGAA010_FlexFrameG0VGG_AA017BorderedProminentuS0VQo_A5_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AUtGG_AA6SpacerVAMyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAMyAMyAoA08_PaddingG0VGAA010_FlexFrameG0VGG_AA017BorderedProminentuS0VQo_A5_GtGGMR);
  closure #2 in closure #1 in EnableCloudLibraryView.body.getter(a1, a2, &v12[*(v18 + 44)]);
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0VyAA0F0VyAIyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AWtGGG_AA6SpacerVAOyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAOyAOyAqA08_PaddingG0VGAA010_FlexFrameG0VGG_AA017BorderedProminentvT0VQo_A8_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0VyAA0F0VyAIyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AWtGGG_AA6SpacerVAOyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAOyAOyAqA08_PaddingG0VGAA010_FlexFrameG0VGG_AA017BorderedProminentvT0VQo_A8_GtGGMR);
  closure #3 in closure #1 in EnableCloudLibraryView.body.getter(a1, a2, &v8[*(v19 + 44)]);
  v20 = v14;
  v25 = v14;
  outlined init with copy of TaskPriority?(v16, v14, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGGMR);
  outlined init with copy of TaskPriority?(v12, v10, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtGGMR);
  v21 = v6;
  outlined init with copy of TaskPriority?(v8, v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtGGMR);
  v22 = v26;
  outlined init with copy of TaskPriority?(v20, v26, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGGMR);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGG_ACyAEyAQ_AsGyA9_A1_GtGGACyAEyAA06ScrollE0VyAQG_ASA12_tGGtMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGG_ACyAEyAQ_AsGyA9_A1_GtGGACyAEyAA06ScrollE0VyAQG_ASA12_tGGtMR);
  outlined init with copy of TaskPriority?(v10, v22 + *(v23 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtGGMR);
  outlined init with copy of TaskPriority?(v21, v22 + *(v23 + 64), &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtGGMR);
  outlined destroy of TaskPriority?(v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtGGMR);
  outlined destroy of TaskPriority?(v12, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtGGMR);
  outlined destroy of TaskPriority?(v16, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGGMR);
  outlined destroy of TaskPriority?(v21, &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtGGMR);
  outlined destroy of TaskPriority?(v10, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtGGMR);
  return outlined destroy of TaskPriority?(v25, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyACyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tGGMR);
}

uint64_t closure #1 in closure #1 in EnableCloudLibraryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BorderedProminentButtonStyle();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMR);
  v34 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v30 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentgE0VQo_MR);
  v38 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v30 - v14;
  v40 = static HorizontalAlignment.center.getter();
  v42 = 0;
  closure #1 in EnableCloudLibraryView.textView.getter(&v52);
  v45 = *&v53[16];
  v46 = *&v53[32];
  v47[0] = *&v53[48];
  *(v47 + 9) = *&v53[57];
  v43 = v52;
  v44 = *v53;
  *(v49 + 9) = *&v53[57];
  v48[2] = *&v53[16];
  v48[3] = *&v53[32];
  v49[0] = *&v53[48];
  v48[0] = v52;
  v48[1] = *v53;
  outlined init with copy of TaskPriority?(&v43, &v50, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMR);
  outlined destroy of TaskPriority?(v48, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMR);
  *(&v41[2] + 7) = v45;
  *(&v41[3] + 7) = v46;
  *(&v41[4] + 7) = v47[0];
  v41[5] = *(v47 + 9);
  *(v41 + 7) = v43;
  *(&v41[1] + 7) = v44;
  v39 = v42;
  v31 = Image.init(_:bundle:)();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMR, &protocol conformance descriptor for Button<A>);
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v16 = v37;
  v17 = v35;
  View.buttonStyle<A>(_:)();
  (*(v36 + 8))(v9, v17);
  (*(v34 + 8))(v12, v10);
  v18 = *(v38 + 16);
  v19 = v32;
  v20 = v33;
  v18(v32, v16, v33);
  *&v50 = v40;
  *(&v50 + 1) = 0x4020000000000000;
  v51[0] = v39;
  *&v51[1] = v41[0];
  *&v51[17] = v41[1];
  *&v51[33] = v41[2];
  *&v51[81] = v41[5];
  *&v51[65] = v41[4];
  *&v51[49] = v41[3];
  v21 = v50;
  v22 = *v51;
  v23 = *&v51[32];
  *(a3 + 32) = *&v51[16];
  *(a3 + 48) = v23;
  *a3 = v21;
  *(a3 + 16) = v22;
  v24 = *&v51[48];
  v25 = *&v51[64];
  v26 = *&v51[80];
  *(a3 + 112) = v51[96];
  *(a3 + 80) = v25;
  *(a3 + 96) = v26;
  *(a3 + 64) = v24;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = v31;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAA5ImageVAsA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_tMR);
  v18((a3 + *(v27 + 96)), v19, v20);
  outlined init with copy of TaskPriority?(&v50, &v52, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMR);
  v28 = *(v38 + 8);

  v28(v37, v20);
  v28(v19, v20);

  *&v53[33] = v41[2];
  *&v53[49] = v41[3];
  *&v53[65] = v41[4];
  v54 = v41[5];
  *&v53[1] = v41[0];
  *&v52 = v40;
  *(&v52 + 1) = 0x4020000000000000;
  v53[0] = v39;
  *&v53[17] = v41[1];
  return outlined destroy of TaskPriority?(&v52, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMR);
}

uint64_t closure #2 in closure #1 in EnableCloudLibraryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = type metadata accessor for BorderedProminentButtonStyle();
  v51 = *(v49 - 8);
  __chkstk_darwin();
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMR);
  v46 = *(v44 - 8);
  __chkstk_darwin();
  v8 = v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentgE0VQo_MR);
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin();
  v42 = v40 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR) - 8;
  __chkstk_darwin();
  v50 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v40 - v12;
  __chkstk_darwin();
  v45 = v40 - v14;
  v47 = static HorizontalAlignment.center.getter();
  v59 = 0;
  closure #1 in EnableCloudLibraryView.textView.getter(&v56);
  v62 = *&v57[2];
  v63 = *&v57[4];
  v64[0] = *&v57[6];
  *(v64 + 9) = *(&v57[7] + 1);
  v60 = v56;
  v61 = *v57;
  *(v66 + 9) = *(&v57[7] + 1);
  v65[2] = *&v57[2];
  v65[3] = *&v57[4];
  v66[0] = *&v57[6];
  v65[0] = v56;
  v65[1] = *v57;
  outlined init with copy of TaskPriority?(&v60, &v54, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMR);
  outlined destroy of TaskPriority?(v65, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMR);
  *(&v58[2] + 7) = v62;
  *(&v58[3] + 7) = v63;
  *(&v58[4] + 7) = v64[0];
  v58[5] = *(v64 + 9);
  *(v58 + 7) = v60;
  *(&v58[1] + 7) = v61;
  v41 = v59;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v40[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v16 = v43;
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMR, &protocol conformance descriptor for Button<A>);
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v17 = v42;
  v18 = v44;
  v19 = v49;
  View.buttonStyle<A>(_:)();
  (*(v51 + 8))(v16, v19);
  (*(v46 + 8))(v8, v18);
  LOBYTE(v8) = static Edge.Set.top.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v52 + 32))(v13, v17, v53);
  v28 = &v13[*(v48 + 44)];
  *v28 = v8;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = v45;
  outlined init with take of URL?(v13, v45, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR);
  v30 = v50;
  outlined init with copy of TaskPriority?(v29, v50, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR);
  v31 = v47;
  *&v54 = v47;
  *(&v54 + 1) = 0x4020000000000000;
  LOBYTE(a2) = v41;
  v55[0] = v41;
  *&v55[1] = v58[0];
  *&v55[17] = v58[1];
  *&v55[33] = v58[2];
  *&v55[81] = v58[5];
  *&v55[65] = v58[4];
  *&v55[49] = v58[3];
  v32 = v54;
  v33 = *v55;
  v34 = *&v55[32];
  *(a3 + 32) = *&v55[16];
  *(a3 + 48) = v34;
  *a3 = v32;
  *(a3 + 16) = v33;
  v35 = *&v55[48];
  v36 = *&v55[64];
  v37 = *&v55[80];
  *(a3 + 112) = v55[96];
  *(a3 + 80) = v36;
  *(a3 + 96) = v37;
  *(a3 + 64) = v35;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA0R0VyAGyAGyAiA14_PaddingLayoutVGAA010_FlexFrameT0VGG_AA017BorderedProminentrP0VQo_A_GtMR);
  outlined init with copy of TaskPriority?(v30, a3 + *(v38 + 64), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR);
  outlined init with copy of TaskPriority?(&v54, &v56, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMR);
  outlined destroy of TaskPriority?(v29, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR);
  outlined destroy of TaskPriority?(v30, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR);
  *(&v57[4] + 1) = v58[2];
  *(&v57[6] + 1) = v58[3];
  *(&v57[8] + 1) = v58[4];
  *(&v57[10] + 1) = v58[5];
  *(v57 + 1) = v58[0];
  *&v56 = v31;
  *(&v56 + 1) = 0x4020000000000000;
  LOBYTE(v57[0]) = a2;
  *(&v57[2] + 1) = v58[1];
  return outlined destroy of TaskPriority?(&v56, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMR);
}

uint64_t closure #3 in closure #1 in EnableCloudLibraryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for BorderedProminentButtonStyle();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMR);
  v52 = *(v50 - 8);
  __chkstk_darwin();
  v10 = &v44 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentgE0VQo_MR);
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v46 = &v44 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR) - 8;
  __chkstk_darwin();
  v57 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v44 - v13;
  __chkstk_darwin();
  v51 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGGMd, &_s7SwiftUI10ScrollViewVyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGGMR);
  v48 = *(v16 - 8);
  v49 = v16;
  __chkstk_darwin();
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v44 - v18;
  static Axis.Set.vertical.getter();
  v60 = a1;
  v61 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AOtGGMR, &protocol conformance descriptor for VStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGGMR, &protocol conformance descriptor for Button<A>);
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v20 = v46;
  v21 = v50;
  v22 = v54;
  View.buttonStyle<A>(_:)();
  (*(v55 + 8))(v8, v22);
  (*(v52 + 8))(v10, v21);
  LOBYTE(v8) = static Edge.Set.top.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v56 + 32))(v14, v20, v58);
  v31 = &v14[*(v53 + 44)];
  *v31 = v8;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = v51;
  outlined init with take of URL?(v14, v51, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR);
  v34 = v48;
  v33 = v49;
  v35 = *(v48 + 16);
  v36 = v47;
  v37 = v45;
  v35(v47, v45, v49);
  v38 = v57;
  outlined init with copy of TaskPriority?(v32, v57, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR);
  v39 = v59;
  v35(v59, v36, v33);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtMd, &_s7SwiftUI10ScrollViewVyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AQtGGG_AA6SpacerVAIyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameU0VGG_AA017BorderedProminentsQ0VQo_A2_GtMR);
  v41 = &v39[*(v40 + 48)];
  *v41 = 0;
  v41[8] = 1;
  outlined init with copy of TaskPriority?(v38, &v39[*(v40 + 64)], &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR);
  outlined destroy of TaskPriority?(v32, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR);
  v42 = *(v34 + 8);
  v42(v37, v33);
  outlined destroy of TaskPriority?(v38, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameL0VGG_AA017BorderedProminentiG0VQo_AMGMR);
  return (v42)(v36, v33);
}

double closure #1 in closure #3 in closure #1 in EnableCloudLibraryView.body.getter@<D0>(uint64_t a3@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v17 = 0;
  closure #1 in EnableCloudLibraryView.textView.getter(&v11);
  v20 = v13;
  v21 = v14;
  v22[0] = v15[0];
  *(v22 + 9) = *(v15 + 9);
  v18 = v11;
  v19 = v12;
  *(v24 + 9) = *(v15 + 9);
  v23[2] = v13;
  v23[3] = v14;
  v24[0] = v15[0];
  v23[0] = v11;
  v23[1] = v12;
  outlined init with copy of TaskPriority?(&v18, &v10, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMR);
  outlined destroy of TaskPriority?(v23, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AMtGMR);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22[0];
  *&v16[80] = *(v22 + 9);
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a3 + 49) = *&v16[32];
  *(a3 + 65) = v5;
  v6 = *&v16[80];
  *(a3 + 81) = *&v16[64];
  *(a3 + 97) = v6;
  result = *&v16[16];
  v8 = *v16;
  *(a3 + 33) = *&v16[16];
  v9 = v17;
  *a3 = v4;
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = v9;
  *(a3 + 17) = v8;
  return result;
}

uint64_t closure #1 in EnableCloudLibraryView.textView.getter@<X0>(uint64_t a2@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.largeTitle.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  outlined consume of Text.Storage(v3, v5, v7 & 1);

  static Font.Weight.bold.getter();
  v13 = Text.fontWeight(_:)();
  v37 = v14;
  v38 = v13;
  v36 = v15;
  v39 = v16;
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();

  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v10) = v20;
  static Font.title3.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;

  outlined consume of Text.Storage(v17, v19, v10 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v26 = Text.foregroundStyle<A>(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  outlined consume of Text.Storage(v21, v23, v25 & 1);

  v33 = swift_getKeyPath();
  *a2 = v38;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v39;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = v26;
  *(a2 + 56) = v28;
  *(a2 + 64) = v30 & 1;
  *(a2 + 72) = v32;
  *(a2 + 80) = v33;
  *(a2 + 88) = 1;
  outlined copy of Text.Storage(v38, v37, v36 & 1);

  outlined copy of Text.Storage(v26, v28, v30 & 1);

  outlined consume of Text.Storage(v26, v28, v30 & 1);

  outlined consume of Text.Storage(v38, v37, v36 & 1);
}

void closure #1 in EnableCloudLibraryView.button.getter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(*(a2 + 48), *(a2 + 56));
  v3 = a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss;
  v4 = *(a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  if (v4)
  {
    v5 = *(v3 + 8);

    v4(v6);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4, v5);
  }
}

__n128 closure #2 in EnableCloudLibraryView.button.getter@<Q0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v24 = static CloudLibrary.EnablementContext.action;
  lazy protocol witness table accessor for type String and conformance String();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v7 = Text.bold()();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  outlined consume of Text.Storage(v2, v4, v6 & 1);

  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30;
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v23[64];
  *(a1 + 153) = *&v23[80];
  *(a1 + 169) = *&v23[96];
  *(a1 + 184) = *(&v30 + 1);
  *(a1 + 73) = *v23;
  *(a1 + 89) = *&v23[16];
  result = *&v23[32];
  *(a1 + 105) = *&v23[32];
  *(a1 + 121) = *&v23[48];
  return result;
}

uint64_t one-time initialization function for cloudLibrary()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.cloudLibrary);
  __swift_project_value_buffer(v0, static Logger.cloudLibrary);
  return Logger.init(subsystem:category:)();
}

uint64_t key path getter for EnableCloudLibraryView.Model.horizontalSizeClass : EnableCloudLibraryView.Model@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnableCloudLibraryView.Model.horizontalSizeClass : EnableCloudLibraryView.Model(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

BOOL specialized static CloudLibrary.Status.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 >> 30)
  {
    if (a1 >> 30 == 1)
    {
      if ((a2 & 0xC0000000) == 0x40000000)
      {
        return (*(&a1 + 1) == *(&a2 + 1)) & (a2 ^ a1 ^ 1);
      }

      return 0;
    }

    if (a1 <= 2147483649)
    {
      if (a1 == 0x80000000)
      {
        return a2 == 0x80000000;
      }

      else
      {
        return a2 == 2147483649;
      }
    }

    else if (a1 == 2147483650)
    {
      return a2 == 2147483650;
    }

    else
    {
      if (a1 == 2147483651)
      {
        return a2 == 2147483651;
      }

      return a2 == 2147483652;
    }
  }

  else
  {
    if ((a2 & 0xC0000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

uint64_t specialized CloudLibrary.FailureType.init(rawValue:)(unint64_t a1)
{
  if (a1 > 0xFFFFFFFFFFFFFFF9)
  {
    return ~a1;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_10014DEC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:completion:)(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v79 = a2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v77[1] = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  v77[0] = *(v10 - 8);
  __chkstk_darwin();
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v77 - v13;
  v15 = CloudLibrary.EnablementContext.title.getter(a1);
  v17 = v16;
  v18 = CloudLibrary.EnablementContext.message.getter(a1);
  v20 = v19;
  v78 = a3;
  if (a3)
  {
    v21 = String._bridgeToObjectiveC()();

    v22 = String._bridgeToObjectiveC()();

    v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    v24 = v77[0];
    (*(v77[0] + 16))(v12, v14, v10);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v25 = static NSBundle.module;
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v14, v10);
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    v27 = a5;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a4, a5);
    v28 = String._bridgeToObjectiveC()();

    v84 = partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:completion:);
    v85 = v26;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v83 = &block_descriptor_130;
    v29 = _Block_copy(&aBlock);

    v30 = objc_opt_self();
    v31 = [v30 actionWithTitle:v28 style:1 handler:v29];
    _Block_release(v29);

    [v23 addAction:v31];
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v32 = swift_allocObject();
    *(v32 + 16) = a4;
    *(v32 + 24) = v27;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a4, v27);
    v33 = String._bridgeToObjectiveC()();
    v84 = partial apply for closure #2 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:completion:);
    v85 = v32;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v83 = &block_descriptor_136;
    v34 = _Block_copy(&aBlock);

    v35 = [v30 actionWithTitle:v33 style:0 handler:v34];
    _Block_release(v34);

    [v23 addAction:v35];
    v36 = v78;
    v37 = v79;
    if (v78 != 1)
    {
      v38 = v78;
      [v23 setPreferredStyle:0];
      [v38 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = [v23 popoverPresentationController];
      if (v47)
      {
        v48 = v47;
        [v47 setSourceView:v38];
        [v48 setSourceRect:{v40, v42, v44, v46}];
        outlined consume of CloudLibrary.PresentationStyle(v36);
        [v48 setPermittedArrowDirections:15];
      }

      outlined consume of CloudLibrary.PresentationStyle(v36);
    }

    v49 = *(v37 + 80);
    if (v49)
    {
      v50 = *(v37 + 88);
      v51 = one-time initialization token for logger;

      if (v51 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static PresentationSource.logger);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Deferring presentation…", v55, 2u);
      }

      v56 = objc_allocWithZone(MSVBlockGuard);
      v84 = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
      v83 = &block_descriptor_139;
      v57 = _Block_copy(&aBlock);
      v58 = [v56 initWithTimeout:v57 interruptionHandler:10.0];
      _Block_release(v57);

      outlined init with copy of PresentationSource(v37, &aBlock);
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      outlined init with take of PresentationSource(&aBlock, v59 + 24);
      *(v59 + 120) = v23;
      *(v59 + 128) = 1;
      *(v59 + 129) = v36 != 1;
      *(v59 + 136) = 0;
      *(v59 + 144) = 0;
      v60 = v58;
      v61 = v23;
      v49(v37, v61, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v59);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v49, v50);

LABEL_22:

      return;
    }

    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v23, 1, (v36 != 1), 0, 0);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for CloudLibraryViewController(0));
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a4, a5);
    v62 = CloudLibraryViewController.init(title:message:completion:)(v15, v17, v18, v20, a4, a5);
    v78 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v62];
    [v78 setModalPresentationStyle:2];
    [v78 setModalPresentationCapturesStatusBarAppearance:1];
    v63 = v79;
    v64 = *(v79 + 80);
    if (v64)
    {
      v65 = *(v79 + 88);
      v66 = one-time initialization token for logger;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static PresentationSource.logger);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Deferring presentation…", v70, 2u);
      }

      v71 = objc_allocWithZone(MSVBlockGuard);
      v84 = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
      v83 = &block_descriptor_145_0;
      v72 = _Block_copy(&aBlock);
      v73 = [v71 initWithTimeout:v72 interruptionHandler:10.0];
      _Block_release(v72);

      outlined init with copy of PresentationSource(v63, &aBlock);
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      outlined init with take of PresentationSource(&aBlock, v74 + 24);
      *(v74 + 120) = v78;
      *(v74 + 128) = 256;
      *(v74 + 136) = 0;
      *(v74 + 144) = 0;
      v60 = v73;
      v75 = v78;
      v64(v63, v75, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v74);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v64, v65);

      goto LABEL_22;
    }

    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v78, 0, 1, 0, 0);

    v76 = v78;
  }
}

unint64_t lazy protocol witness table accessor for type CloudLibrary.FailureType and conformance CloudLibrary.FailureType()
{
  result = lazy protocol witness table cache variable for type CloudLibrary.FailureType and conformance CloudLibrary.FailureType;
  if (!lazy protocol witness table cache variable for type CloudLibrary.FailureType and conformance CloudLibrary.FailureType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudLibrary.FailureType and conformance CloudLibrary.FailureType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudLibrary.EnablementContext and conformance CloudLibrary.EnablementContext()
{
  result = lazy protocol witness table cache variable for type CloudLibrary.EnablementContext and conformance CloudLibrary.EnablementContext;
  if (!lazy protocol witness table cache variable for type CloudLibrary.EnablementContext and conformance CloudLibrary.EnablementContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudLibrary.EnablementContext and conformance CloudLibrary.EnablementContext);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.UpdateContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.UpdateContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.Status(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 536870910);
  }

  if ((((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFFu) >= 0x1FFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFD)
  {
    *result = a2 - 536870910;
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 8 * ((-a2 >> 2) & 0x7FFFFFF) - (a2 << 30);
    }
  }

  return result;
}

uint64_t getEnumTag for CloudLibrary.Status(void *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 30;
  }

  else
  {
    return ((*a1 >> 29) & 0xFFFFFFF8 | *a1 & 7) + 2;
  }
}

unint64_t *destructiveInjectEnumTag for CloudLibrary.Status(unint64_t *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFF00000007 | (a2 << 30);
  }

  else
  {
    *result = ((a2 - 2) | ((a2 - 2) << 29)) & 0xFFFFFFFF00000007 | 0x80000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.EnablementContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.EnablementContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CloudLibrary.StatusObserver(uint64_t a1)
{
  type metadata accessor for Published<CloudLibrary.Status>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<CloudLibrary.Status>()
{
  if (!lazy cache variable for type metadata for Published<CloudLibrary.Status>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<CloudLibrary.Status>);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9MusicCore12CloudLibraryO17PresentationStyleO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for CloudLibrary.PresentationStyle(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CloudLibrary.PresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void type metadata completion function for EnableCloudLibraryView.Model(uint64_t a1)
{
  type metadata accessor for Published<UIUserInterfaceSizeClass>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<UIUserInterfaceSizeClass>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<UIUserInterfaceSizeClass>)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<UIUserInterfaceSizeClass>);
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudLibrary.StatusObserver.InternalObserver(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.StatusObserver.InternalObserver(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10014F444@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10014F498()
{

  return swift_deallocObject();
}

uint64_t sub_10014F4D0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014F568()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

void outlined consume of CloudLibrary.PresentationStyle(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_10014F610()
{

  return swift_deallocObject();
}

uint64_t sub_10014F670()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_123Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ViewThatFits<TupleView<(VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, Image, Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>, VStack<TupleView<(ScrollView<VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ViewThatFits<TupleView<(VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, Image, Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>, VStack<TupleView<(ScrollView<VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ViewThatFits<TupleView<(VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, Image, Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>, VStack<TupleView<(ScrollView<VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA12ViewThatFitsVyAA05TupleE0VyAA6VStackVyAGyAIyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyACyACyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AIyAGyAS_AuCyA11_A3_GtGGAIyAGyAA06ScrollE0VyASG_AUA14_tGGtGGA3_GA3_GMd, &_s7SwiftUI15ModifiedContentVyACyAA12ViewThatFitsVyAA05TupleE0VyAA6VStackVyAGyAIyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyACyACyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AIyAGyAS_AuCyA11_A3_GtGGAIyAGyAA06ScrollE0VyASG_AUA14_tGGtGGA3_GA3_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ViewThatFits<TupleView<(VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, Image, Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>, VStack<TupleView<(ScrollView<VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ViewThatFits<TupleView<(VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, Image, Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>, VStack<TupleView<(ScrollView<VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ViewThatFits<TupleView<(VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, Image, Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>, VStack<TupleView<(ScrollView<VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ViewThatFits<TupleView<(VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, Image, Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>, VStack<TupleView<(ScrollView<VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ViewThatFits<TupleView<(VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, Image, Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>, VStack<TupleView<(ScrollView<VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6VStackVyAGyAIyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyACyACyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AIyAGyAS_AuCyA11_A3_GtGGAIyAGyAA06ScrollE0VyASG_AUA14_tGGtGGA3_GMd, &_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6VStackVyAGyAIyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyACyACyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AIyAGyAS_AuCyA11_A3_GtGGAIyAGyAA06ScrollE0VyASG_AUA14_tGGtGGA3_GMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ViewThatFits<TupleView<(VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, Image, Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>, VStack<TupleView<(ScrollView<VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>)>> and conformance ViewThatFits<A>, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6VStackVyAEyAGyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0C0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AGyAEyAS_AuIyA11_A3_GtGGAGyAEyAA06ScrollC0VyASG_AUA14_tGGtGGMd, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6VStackVyAEyAGyAEyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG_AQtGG_AA6SpacerVAA5ImageVAuA0C0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA0U0VyAIyAIyAkA14_PaddingLayoutVGAA010_FlexFrameW0VGG_AA017BorderedProminentuS0VQo_tGG_AGyAEyAS_AuIyA11_A3_GtGGAGyAEyAA06ScrollC0VyASG_AUA14_tGGtGGMR, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ViewThatFits<TupleView<(VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, Image, Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, VStack<TupleView<(VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>, VStack<TupleView<(ScrollView<VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized Action.execute(checkSupportedStatus:)(uint64_t a1, char a2)
{
  *(v3 + 2217) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 2096) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 2104) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 2112) = v4;
  *(v3 + 2120) = *(v4 - 8);
  *(v3 + 2128) = swift_task_alloc();
  *(v3 + 2136) = swift_task_alloc();
  *(v3 + 2144) = swift_task_alloc();
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = swift_task_alloc();
  *(v3 + 2218) = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v6;
  *(v3 + 144) = *(v2 + 128);
  v7 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v7;
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 72) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 72) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1617) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1504) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1512) = v4;
  *(v3 + 1520) = *(v4 - 8);
  *(v3 + 1528) = swift_task_alloc();
  *(v3 + 1536) = swift_task_alloc();
  *(v3 + 1544) = swift_task_alloc();
  *(v3 + 1552) = swift_task_alloc();
  *(v3 + 1560) = swift_task_alloc();
  *(v3 + 1618) = *(v2 + 32);
  v5 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;
  v6 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  v7 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 1744) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v3 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v3 + 72) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

uint64_t specialized Action.execute(checkSupportedStatus:)()
{
  v107 = v0;
  v1 = *(v0 + 2218);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v71 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v71) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 2216) = 2;
    v73 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v73) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v74 = *(v0 + 2160);
        v75 = *(v0 + 2120);
        v76 = *(v0 + 2112);
        v77 = __swift_project_value_buffer(v76, static Logger.action);
        (*(v75 + 16))(v74, v77, v76);
        v78 = *(v0 + 128);
        *(v0 + 1880) = *(v0 + 112);
        *(v0 + 1896) = v78;
        *(v0 + 1912) = *(v0 + 144);
        v79 = *(v0 + 64);
        *(v0 + 1816) = *(v0 + 48);
        *(v0 + 1832) = v79;
        v80 = *(v0 + 96);
        *(v0 + 1848) = *(v0 + 80);
        *(v0 + 1864) = v80;
        v81 = *(v0 + 32);
        *(v0 + 1784) = *(v0 + 16);
        *(v0 + 1800) = v81;
        outlined init with copy of TaskPriority?(v0 + 1784, v0 + 1920, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 2160);
        v86 = *(v0 + 2120);
        v87 = *(v0 + 2112);
        if (v84)
        {
          v100 = *(v0 + 2160);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&v101[0] = v89;
          *v88 = 136446210;
          v90 = ActionType.rawValue.getter(*(v0 + 1856));
          v92 = v91;
          outlined destroy of TaskPriority?(v0 + 1784, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
          v93 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v90, v92, v101);

          *(v88 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v82, v83, "%{public}s: attempted to execute but identifier is hidden", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v89);

          (*(v86 + 8))(v100, v87);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1784, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);

          (*(v86 + 8))(v85, v87);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v94 = 0xD000000000000014;
      v94[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 2217) != 1 || (v2 = *(v0 + 64), v101[2] = *(v0 + 48), v101[3] = v2, v101[4] = *(v0 + 80), v3 = *(v0 + 32), v101[0] = *(v0 + 16), v101[1] = v3, v4 = *(v0 + 96), v5 = *(v0 + 104), v6 = *(v0 + 128), v104 = *(v0 + 112), v105 = v6, v106 = *(v0 + 144), v102 = v4, v103 = v5, v7 = v4(v101), v8 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 2144);
    v10 = *(v0 + 2120);
    v11 = *(v0 + 2112);
    v12 = __swift_project_value_buffer(v11, static Logger.action);
    *(v0 + 2168) = v12;
    v13 = *(v10 + 16);
    *(v0 + 2176) = v13;
    *(v0 + 2184) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v11);
    v14 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v14;
    *(v0 + 280) = *(v0 + 144);
    v15 = *(v0 + 64);
    *(v0 + 184) = *(v0 + 48);
    *(v0 + 200) = v15;
    v16 = *(v0 + 96);
    *(v0 + 216) = *(v0 + 80);
    *(v0 + 232) = v16;
    v17 = *(v0 + 32);
    *(v0 + 152) = *(v0 + 16);
    *(v0 + 168) = v17;
    outlined init with copy of TaskPriority?(v0 + 152, v0 + 288, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2144);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    if (v20)
    {
      v97 = *(v0 + 2144);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v101[0] = v25;
      *v24 = 136446210;
      v26 = ActionType.rawValue.getter(*(v0 + 224));
      v28 = v27;
      outlined destroy of TaskPriority?(v0 + 152, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
      v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v28, v101);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: performing…", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);

      (*(v22 + 8))(v97, v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 152, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);

      (*(v22 + 8))(v21, v23);
    }

    v30 = *(v0 + 2104);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v31 = [objc_opt_self() mainRunLoop];
    v32 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v30, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 2072) = v33;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v34 = ConnectablePublisher.autoconnect()();

    *(v0 + 2080) = v34;
    v35 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v35;
    *(v0 + 552) = *(v0 + 144);
    v36 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v36;
    v37 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v37;
    v38 = *(v0 + 32);
    *(v0 + 424) = *(v0 + 16);
    *(v0 + 440) = v38;
    v39 = *(v0 + 528);
    v40 = swift_allocObject();
    v41 = *(v0 + 128);
    *(v40 + 112) = *(v0 + 112);
    *(v40 + 128) = v41;
    *(v40 + 144) = *(v0 + 144);
    v42 = *(v0 + 64);
    *(v40 + 48) = *(v0 + 48);
    *(v40 + 64) = v42;
    v43 = *(v0 + 96);
    *(v40 + 80) = *(v0 + 80);
    *(v40 + 96) = v43;
    v44 = *(v0 + 32);
    *(v40 + 16) = *(v0 + 16);
    *(v40 + 32) = v44;
    outlined init with copy of TaskPriority?(v0 + 424, v0 + 560, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 2192) = Publisher<>.sink(receiveValue:)();

    v98 = (v39 + *v39);
    v45 = swift_task_alloc();
    *(v0 + 2200) = v45;
    *v45 = v0;
    v45[1] = specialized Action.execute(checkSupportedStatus:);

    return v98();
  }

  v47 = v7;
  v48 = v8;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 2152);
  v50 = *(v0 + 2120);
  v51 = *(v0 + 2112);
  v52 = __swift_project_value_buffer(v51, static Logger.action);
  (*(v50 + 16))(v49, v52, v51);
  v53 = *(v0 + 128);
  *(v0 + 1608) = *(v0 + 112);
  *(v0 + 1624) = v53;
  *(v0 + 1640) = *(v0 + 144);
  v54 = *(v0 + 64);
  *(v0 + 1544) = *(v0 + 48);
  *(v0 + 1560) = v54;
  v55 = *(v0 + 96);
  *(v0 + 1576) = *(v0 + 80);
  *(v0 + 1592) = v55;
  v56 = *(v0 + 32);
  *(v0 + 1512) = *(v0 + 16);
  *(v0 + 1528) = v56;
  outlined init with copy of TaskPriority?(v0 + 1512, v0 + 1648, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v47, v48);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v47, v48);
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 2152);
  v61 = *(v0 + 2120);
  v62 = *(v0 + 2112);
  if (v59)
  {
    v63 = swift_slowAlloc();
    *&v101[0] = swift_slowAlloc();
    *v63 = 136446466;
    v96 = v62;
    v99 = v60;
    v64 = ActionType.rawValue.getter(*(v0 + 1584));
    v66 = v65;
    outlined destroy of TaskPriority?(v0 + 1512, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
    v67 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v64, v66, v101);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    *(v0 + 2056) = v47;
    *(v0 + 2064) = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v68 = String.init<A>(describing:)();
    v70 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v68, v69, v101);

    *(v63 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v63, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v99, v96);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1512, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);

    (*(v61 + 8))(v60, v62);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v72 = v47;
  v72[1] = v48;
LABEL_31:
  swift_willThrow();

  v95 = *(v0 + 8);

  return v95();
}

{
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v35 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2136);
  v4 = *(v0 + 2112);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 1064) = *(v0 + 112);
  *(v0 + 1080) = v5;
  *(v0 + 1096) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 1000) = *(v0 + 48);
  *(v0 + 1016) = v6;
  v7 = *(v0 + 96);
  *(v0 + 1032) = *(v0 + 80);
  *(v0 + 1048) = v7;
  v8 = *(v0 + 32);
  *(v0 + 968) = *(v0 + 16);
  *(v0 + 984) = v8;
  outlined init with copy of TaskPriority?(v0 + 968, v0 + 1104, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 2136);
  v13 = *(v0 + 2120);
  v14 = *(v0 + 2112);
  if (v11)
  {
    v33 = *(v0 + 2136);
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = ActionType.rawValue.getter(*(v0 + 1040));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 968, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v34);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v33, v14);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 968, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v0 + 2096);
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = *(v0 + 128);
  *(v0 + 1336) = *(v0 + 112);
  *(v0 + 1352) = v22;
  *(v0 + 1368) = *(v0 + 144);
  v23 = *(v0 + 64);
  *(v0 + 1272) = *(v0 + 48);
  *(v0 + 1288) = v23;
  v24 = *(v0 + 96);
  *(v0 + 1304) = *(v0 + 80);
  *(v0 + 1320) = v24;
  v25 = *(v0 + 32);
  *(v0 + 1240) = *(v0 + 16);
  *(v0 + 1256) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = *(v0 + 128);
  *(v26 + 128) = *(v0 + 112);
  *(v26 + 144) = v27;
  *(v26 + 160) = *(v0 + 144);
  v28 = *(v0 + 64);
  *(v26 + 64) = *(v0 + 48);
  *(v26 + 80) = v28;
  v29 = *(v0 + 96);
  *(v26 + 96) = *(v0 + 80);
  *(v26 + 112) = v29;
  v30 = *(v0 + 32);
  *(v26 + 32) = *(v0 + 16);
  *(v26 + 48) = v30;
  outlined init with copy of TaskPriority?(v0 + 1240, v0 + 1376, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v26);

  outlined destroy of TaskPriority?(v20, &_sScPSgMd_0, &_sScPSgMR_0);

  v31 = *(v0 + 8);

  return v31();
}

{
  v29 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2112);

  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 792) = *(v0 + 112);
  *(v0 + 808) = v5;
  *(v0 + 824) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 728) = *(v0 + 48);
  *(v0 + 744) = v6;
  v7 = *(v0 + 96);
  *(v0 + 760) = *(v0 + 80);
  *(v0 + 776) = v7;
  v8 = *(v0 + 32);
  *(v0 + 696) = *(v0 + 16);
  *(v0 + 712) = v8;
  outlined init with copy of TaskPriority?(v0 + 696, v0 + 832, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 2208);
    v12 = *(v0 + 2120);
    v26 = *(v0 + 2112);
    v27 = *(v0 + 2128);
    v13 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 696, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 2088) = v11;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 2128);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    outlined destroy of TaskPriority?(v0 + 696, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = __swift_project_value_buffer(v67, static Logger.action);
        (*(v68 + 16))(v66, v71, v67);
        outlined init with copy of TaskPriority?(v70, v69, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          outlined destroy of TaskPriority?(v78, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
          v82 = ActionType.rawValue.getter(v81);
          v84 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v80);
        }

        else
        {
          outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001004C5680;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = __swift_project_value_buffer(v6, static Logger.action);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    outlined init with copy of TaskPriority?(v9, v8, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      outlined destroy of TaskPriority?(v18, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
      v22 = ActionType.rawValue.getter(v21);
      v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {
      outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v27, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 32) = v32;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = ConnectablePublisher.autoconnect()();

    *(v0 + 40) = v33;
    outlined init with copy of TaskPriority?(v29, v25, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    outlined init with take of URL?(v25, v36 + v35, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = Publisher<>.sink(receiveValue:)();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = specialized Action.execute(checkSupportedStatus:);

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = __swift_project_value_buffer(v42, static Logger.action);
  (*(v43 + 16))(v41, v46, v42);
  outlined init with copy of TaskPriority?(v45, v44, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    outlined destroy of TaskPriority?(v53, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
    v58 = ActionType.rawValue.getter(v57);
    v60 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v61 = String.init<A>(describing:)();
    v63 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
    v16 = ActionType.rawValue.getter(v14);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  outlined init with copy of TaskPriority?(v22, v20, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  outlined init with take of URL?(v20, v24 + ((v19 + 32) & ~v19), &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v21, &_sScPSgMd_0, &_sScPSgMR_0);

  v25 = *(v0 + 8);

  return v25();
}

{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
    v15 = ActionType.rawValue.getter(v13);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    outlined destroy of TaskPriority?(v0[13], &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = __swift_project_value_buffer(v67, static Logger.action);
        (*(v68 + 16))(v66, v71, v67);
        outlined init with copy of TaskPriority?(v70, v69, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          outlined destroy of TaskPriority?(v78, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
          v82 = ActionType.rawValue.getter(v81);
          v84 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v80);
        }

        else
        {
          outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001004C5680;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = __swift_project_value_buffer(v6, static Logger.action);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    outlined init with copy of TaskPriority?(v9, v8, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      outlined destroy of TaskPriority?(v18, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
      v22 = ActionType.rawValue.getter(v21);
      v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {
      outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v27, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 32) = v32;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = ConnectablePublisher.autoconnect()();

    *(v0 + 40) = v33;
    outlined init with copy of TaskPriority?(v29, v25, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    outlined init with take of URL?(v25, v36 + v35, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = Publisher<>.sink(receiveValue:)();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = specialized Action.execute(checkSupportedStatus:);

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = __swift_project_value_buffer(v42, static Logger.action);
  (*(v43 + 16))(v41, v46, v42);
  outlined init with copy of TaskPriority?(v45, v44, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    outlined destroy of TaskPriority?(v53, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
    v58 = ActionType.rawValue.getter(v57);
    v60 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v61 = String.init<A>(describing:)();
    v63 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
    v16 = ActionType.rawValue.getter(v14);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  outlined init with copy of TaskPriority?(v22, v20, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  outlined init with take of URL?(v20, v24 + ((v19 + 32) & ~v19), &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v21, &_sScPSgMd_0, &_sScPSgMR_0);

  v25 = *(v0 + 8);

  return v25();
}

{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
    v15 = ActionType.rawValue.getter(v13);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    outlined destroy of TaskPriority?(v0[13], &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1618);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1616) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1560);
        v70 = *(v0 + 1520);
        v71 = *(v0 + 1512);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 64);
        *(v0 + 1296) = *(v0 + 48);
        *(v0 + 1312) = v73;
        v74 = *(v0 + 96);
        *(v0 + 1328) = *(v0 + 80);
        *(v0 + 1344) = v74;
        v75 = *(v0 + 32);
        *(v0 + 1264) = *(v0 + 16);
        *(v0 + 1280) = v75;
        outlined init with copy of TaskPriority?(v0 + 1264, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1560);
        v80 = *(v0 + 1520);
        v81 = *(v0 + 1512);
        if (v78)
        {
          v93 = *(v0 + 1560);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1296));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1264, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1264, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1617) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v3 = *(v0 + 48), v4 = *(v0 + 56), v100 = *(v0 + 104), v5 = *(v0 + 64), v98 = *(v0 + 72), v99 = *(v0 + 88), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1544);
    v9 = *(v0 + 1520);
    v10 = *(v0 + 1512);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1568) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1576) = v12;
    *(v0 + 1584) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v13;
    v14 = *(v0 + 96);
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 192) = v14;
    v15 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v15;
    outlined init with copy of TaskPriority?(v0 + 112, v0 + 208, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1544);
    v20 = *(v0 + 1520);
    v21 = *(v0 + 1512);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 144));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 112, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 112, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1504);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1472) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1480) = v32;
    v33 = *(v0 + 64);
    *(v0 + 336) = *(v0 + 48);
    *(v0 + 352) = v33;
    v34 = *(v0 + 96);
    *(v0 + 368) = *(v0 + 80);
    *(v0 + 384) = v34;
    v35 = *(v0 + 32);
    *(v0 + 304) = *(v0 + 16);
    *(v0 + 320) = v35;
    v36 = *(v0 + 368);
    v37 = swift_allocObject();
    v38 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v38;
    v39 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v39;
    v40 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v40;
    outlined init with copy of TaskPriority?(v0 + 304, v0 + 400, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1592) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1600) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1552);
  v46 = *(v0 + 1520);
  v47 = *(v0 + 1512);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 64);
  *(v0 + 1104) = *(v0 + 48);
  *(v0 + 1120) = v49;
  v50 = *(v0 + 96);
  *(v0 + 1136) = *(v0 + 80);
  *(v0 + 1152) = v50;
  v51 = *(v0 + 32);
  *(v0 + 1072) = *(v0 + 16);
  *(v0 + 1088) = v51;
  outlined init with copy of TaskPriority?(v0 + 1072, v0 + 1168, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1552);
  v56 = *(v0 + 1520);
  v57 = *(v0 + 1512);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1104));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1072, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1456) = v43;
    *(v0 + 1464) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1072, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1608) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 1512);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 64);
  *(v0 + 720) = *(v0 + 48);
  *(v0 + 736) = v5;
  v6 = *(v0 + 96);
  *(v0 + 752) = *(v0 + 80);
  *(v0 + 768) = v6;
  v7 = *(v0 + 32);
  *(v0 + 688) = *(v0 + 16);
  *(v0 + 704) = v7;
  outlined init with copy of TaskPriority?(v0 + 688, v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1536);
  v12 = *(v0 + 1520);
  v13 = *(v0 + 1512);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 720));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1496);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 64);
  *(v0 + 912) = *(v0 + 48);
  *(v0 + 928) = v21;
  v22 = *(v0 + 96);
  *(v0 + 944) = *(v0 + 80);
  *(v0 + 960) = v22;
  v23 = *(v0 + 32);
  *(v0 + 880) = *(v0 + 16);
  *(v0 + 896) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v25;
  v26 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v26;
  v27 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v27;
  outlined init with copy of TaskPriority?(v0 + 880, v0 + 976, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1528);
  v4 = *(v0 + 1512);

  v1(v3, v2, v4);
  v5 = *(v0 + 64);
  *(v0 + 528) = *(v0 + 48);
  *(v0 + 544) = v5;
  v6 = *(v0 + 96);
  *(v0 + 560) = *(v0 + 80);
  *(v0 + 576) = v6;
  v7 = *(v0 + 32);
  *(v0 + 496) = *(v0 + 16);
  *(v0 + 512) = v7;
  outlined init with copy of TaskPriority?(v0 + 496, v0 + 592, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1608);
    v26 = *(v0 + 1528);
    v11 = *(v0 + 1520);
    v12 = *(v0 + 1512);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 496, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1488) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1528);
    v22 = *(v0 + 1520);
    v23 = *(v0 + 1512);
    outlined destroy of TaskPriority?(v0 + 496, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, static Logger.action);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        outlined init with copy of TaskPriority?(v0 + 1472, v0 + 1584, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
          v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1472, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);

          (*(v80 + 8))(v79, v81);
        }
      }

      lazy protocol witness table accessor for type ActionError and conformance ActionError();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004C5680;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, static Logger.action);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    outlined init with copy of TaskPriority?(v0 + 128, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v28, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1712) = v31;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = ConnectablePublisher.autoconnect()();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = Publisher<>.sink(receiveValue:)();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = specialized Action.execute(checkSupportedStatus:);

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, static Logger.action);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  outlined init with copy of TaskPriority?(v0 + 1248, v0 + 1360, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  outlined copy of ActionCondition.Result(v43, v44);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1248, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);

    (*(v56 + 8))(v55, v57);
  }

  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  outlined init with copy of TaskPriority?(v0 + 1024, v0 + 1136, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v19, &_sScPSgMd_0, &_sScPSgMR_0);

  v28 = *(v0 + 8);

  return v28();
}

{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

{
  v79 = v0;
  v1 = *(*(v0 + 1848) + 192);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v54 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v54) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 1986) = 2;
    v55 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v55) & 1) == 0)
    {
LABEL_21:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 1920);
        v57 = *(v0 + 1880);
        v58 = *(v0 + 1872);
        v59 = *(v0 + 1848);
        v60 = __swift_project_value_buffer(v58, static Logger.action);
        (*(v57 + 16))(v56, v60, v58);
        outlined init with copy of TaskPriority?(v59, v0 + 1552, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        v63 = os_log_type_enabled(v61, v62);
        v64 = *(v0 + 1920);
        v65 = *(v0 + 1880);
        v66 = *(v0 + 1872);
        if (v63)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v78[0] = v68;
          *v67 = 136446210;
          v69 = *(v0 + 1744);
          outlined destroy of TaskPriority?(v0 + 1552, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
          v70 = ActionType.rawValue.getter(v69);
          v72 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v70, v71, v78);

          *(v67 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s: attempted to execute but identifier is hidden", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v68);
        }

        else
        {
          outlined destroy of TaskPriority?(v0 + 1552, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
        }

        (*(v65 + 8))(v64, v66);
      }

      v34 = 0x80000001004C5680;
      v33 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1987) != 1 || (v2 = (*(*(v0 + 1848) + 200))(), v3 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1904);
    v5 = *(v0 + 1880);
    v6 = *(v0 + 1872);
    v7 = *(v0 + 1848);
    v8 = __swift_project_value_buffer(v6, static Logger.action);
    *(v0 + 1928) = v8;
    v9 = *(v5 + 16);
    *(v0 + 1936) = v9;
    *(v0 + 1944) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v4, v8, v6);
    outlined init with copy of TaskPriority?(v7, v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1904);
    v14 = *(v0 + 1880);
    v15 = *(v0 + 1872);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v78[0] = v17;
      *v16 = 136446210;
      v18 = *(v0 + 208);
      outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
      v19 = ActionType.rawValue.getter(v18);
      v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v20, v78);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s: performing…", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    }

    v22 = *(v14 + 8);
    v22(v13, v15);
    *(v0 + 1952) = v22;
    v23 = *(v0 + 1864);
    v24 = *(v0 + 1848);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v25 = [objc_opt_self() mainRunLoop];
    v26 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
    v27 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 1824) = v27;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v28 = ConnectablePublisher.autoconnect()();

    *(v0 + 1832) = v28;
    outlined init with copy of TaskPriority?(v24, v0 + 272, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    v29 = swift_allocObject();
    outlined init with take of URL?(v0 + 272, v29 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1960) = Publisher<>.sink(receiveValue:)();

    v76 = (*(v24 + 224) + **(v24 + 224));
    v30 = swift_task_alloc();
    *(v0 + 1968) = v30;
    *v30 = v0;
    v30[1] = specialized Action.execute(checkSupportedStatus:);
    v31 = *(v0 + 1848);

    return v76(v0 + 1984, v31);
  }

  v33 = v2;
  v34 = v3;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 1912);
  v36 = *(v0 + 1880);
  v37 = *(v0 + 1872);
  v38 = *(v0 + 1848);
  v39 = __swift_project_value_buffer(v37, static Logger.action);
  (*(v36 + 16))(v35, v39, v37);
  outlined init with copy of TaskPriority?(v38, v0 + 1296, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v33, v34);
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 1912);
  v44 = *(v0 + 1880);
  v45 = *(v0 + 1872);
  if (v42)
  {
    v77 = *(v0 + 1872);
    v46 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v46 = 136446466;
    v47 = *(v0 + 1488);
    outlined destroy of TaskPriority?(v0 + 1296, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    v48 = ActionType.rawValue.getter(v47);
    v75 = v43;
    v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v48, v49, v78);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2082;
    *(v0 + 1808) = v33;
    *(v0 + 1816) = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v51 = String.init<A>(describing:)();
    v53 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v52, v78);

    *(v46 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v46, 0x16u);
    swift_arrayDestroy();

    (*(v44 + 8))(v75, v77);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 1296, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);

    (*(v44 + 8))(v43, v45);
  }

LABEL_31:
  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v73 = v33;
  v73[1] = v34;
  swift_willThrow();

  v74 = *(v0 + 8);

  return v74();
}

{
  *(*v1 + 1976) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v30 = v0;
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1848);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  outlined init with copy of TaskPriority?(v5, v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  v27 = *(v0 + 1984);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v26 = *(v0 + 1952);
    v8 = *(v0 + 1896);
    v9 = *(v0 + 1872);
    v10 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 976);
    outlined destroy of TaskPriority?(v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    v12 = ActionType.rawValue.getter(v11);
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, &v28);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v29, " with result: ");
    HIBYTE(v29[1]) = -18;
    *(v0 + 1985) = v27;
    v15._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v15);

    v16 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v29[0], v29[1], &v28);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: perform success%{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v26(v8, v9);
  }

  else
  {
    v17 = *(v0 + 1952);
    v18 = *(v0 + 1896);
    v19 = *(v0 + 1872);
    outlined destroy of TaskPriority?(v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);

    v17(v18, v19);
  }

  v20 = *(v0 + 1856);
  v21 = *(v0 + 1848);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  outlined init with copy of TaskPriority?(v21, v0 + 1040, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  outlined init with take of URL?(v0 + 1040, v23 + 32, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  *(v23 + 288) = v27;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v23);

  outlined destroy of TaskPriority?(v20, &_sScPSgMd_0, &_sScPSgMR_0);

  v24 = *(v0 + 8);

  return v24(v27);
}

{
  v26 = v0;
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1848);

  v1(v3, v2, v4);
  outlined init with copy of TaskPriority?(v5, v0 + 528, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1976);
    v23 = *(v0 + 1888);
    v24 = *(v0 + 1952);
    v9 = *(v0 + 1872);
    v10 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    outlined destroy of TaskPriority?(v0 + 528, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    v12 = ActionType.rawValue.getter(v11);
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1840) = v8;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(describing:)();
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, v25);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: perform failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1952);
    v19 = *(v0 + 1888);
    v20 = *(v0 + 1872);
    outlined destroy of TaskPriority?(v0 + 528, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);

    v18(v19, v20);
  }

  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (one-time initialization token for action != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = __swift_project_value_buffer(v67, static Logger.action);
        (*(v68 + 16))(v66, v71, v67);
        outlined init with copy of TaskPriority?(v70, v69, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          outlined destroy of TaskPriority?(v78, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
          v82 = ActionType.rawValue.getter(v81);
          v84 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v80);
        }

        else
        {
          outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001004C5680;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (one-time initialization token for action != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = __swift_project_value_buffer(v6, static Logger.action);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    outlined init with copy of TaskPriority?(v9, v8, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      outlined destroy of TaskPriority?(v18, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
      v22 = ActionType.rawValue.getter(v21);
      v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {
      outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of TaskPriority?(v27, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    *(v0 + 32) = v32;
    type metadata accessor for NSTimer.TimerPublisher();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = ConnectablePublisher.autoconnect()();

    *(v0 + 40) = v33;
    outlined init with copy of TaskPriority?(v29, v25, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    outlined init with take of URL?(v25, v36 + v35, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = Publisher<>.sink(receiveValue:)();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = specialized Action.execute(checkSupportedStatus:);

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = __swift_project_value_buffer(v42, static Logger.action);
  (*(v43 + 16))(v41, v46, v42);
  outlined init with copy of TaskPriority?(v45, v44, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  outlined consume of ActionCondition.Result(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    outlined destroy of TaskPriority?(v53, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v58 = ActionType.rawValue.getter(v57);
    v60 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v61 = String.init<A>(describing:)();
    v63 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  lazy protocol witness table accessor for type ActionError and conformance ActionError();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v16 = ActionType.rawValue.getter(v14);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  outlined init with copy of TaskPriority?(v22, v20, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  outlined init with take of URL?(v20, v24 + ((v19 + 32) & ~v19), &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:), v24);

  outlined destroy of TaskPriority?(v21, &_sScPSgMd_0, &_sScPSgMR_0);

  v25 = *(v0 + 8);

  return v25();
}

{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v15 = ActionType.rawValue.getter(v13);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    outlined destroy of TaskPriority?(v0[13], &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}