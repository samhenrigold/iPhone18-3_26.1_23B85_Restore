FindMyLocate::RequestOrigin __swiftcall RequestOrigin.init(_:)(FindMyLocate::ClientOrigin a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v5 = [v4 processIdentifier];

  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v12 = sub_1B80C90BC();
    v14 = v13;

    sub_1B7FB6CB8();
    v8 = sub_1B80C949C();
    if (v8)
    {

      v14 = 0x80000001B80CB350;
      v12 = 0xD000000000000013;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *v2 = v3;
  *(v2 + 8) = v5;
  *(v2 + 16) = v12;
  *(v2 + 24) = v14;
  result.clientBundleIdentifier.value._object = v11;
  result.clientBundleIdentifier.value._countAndFlagsBits = v10;
  result.clientPid = v9;
  result.origin = v8;
  return result;
}

unint64_t sub_1B7FB6CB8()
{
  result = qword_1ED8DD580;
  if (!qword_1ED8DD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD580);
  }

  return result;
}

uint64_t Session.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  LOBYTE(v5) = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *(v2 + 16) = 0;
  v9 = *(a1 + 24);
  *(v2 + 24) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = v5;
  *(v2 + 88) = v7;
  *(v2 + 96) = v8;
  *(v2 + 104) = v9;
  v15[0] = v5;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  _s18LocationConnectionCMa(0);
  swift_allocObject();

  *(v2 + 56) = sub_1B7FB7494(v15);
  _s20FriendshipConnectionCMa(0);
  swift_allocObject();
  *(v2 + 40) = sub_1B7FB8A84();
  _s18SettingsConnectionCMa(0);
  swift_allocObject();
  *(v2 + 48) = sub_1B7FB9160();
  _s15FenceConnectionCMa(0);
  swift_allocObject();
  *(v2 + 32) = sub_1B7FBAE38();
  v10 = sub_1B80C92CC();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v13 = sub_1B80A1D3C(0, 0, v6, &unk_1B80DC730, v12);
  os_unfair_lock_lock((v2 + 16));

  *(v2 + 24) = v13;
  os_unfair_lock_unlock((v2 + 16));
  return v2;
}

{
  *(v2 + 16) = v1;
  *(v2 + 120) = *a1;
  *(v2 + 24) = *(a1 + 8);
  *(v2 + 40) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1B7FCA7A4, 0, 0);
}

uint64_t sub_1B7FB6F4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t _s18LocationConnectionCMa(uint64_t a1)
{
  result = qword_1ED8DD828;
  if (!qword_1ED8DD828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7FB6FD8(uint64_t a1)
{
  sub_1B7FB7164(319);
  if (v1 <= 0x3F)
  {
    sub_1B7FB71BC(319, &qword_1ED8DD610, &qword_1EBA66078, &qword_1B80D2C10);
    if (v2 <= 0x3F)
    {
      sub_1B7FB71BC(319, &qword_1ED8DD608, &qword_1EBA66080, &unk_1B80D2C48);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B7FB7164(uint64_t a1)
{
  if (!qword_1ED8DDA98)
  {
    sub_1B80C8AAC();
    v1 = sub_1B80C946C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8DDA98);
    }
  }
}

void sub_1B7FB71BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1B80C946C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for LocationStreamChange(uint64_t a1)
{
  result = qword_1ED8DD9A0;
  if (!qword_1ED8DD9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7FB725C(uint64_t a1)
{
  sub_1B7FB7F28(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B7FB72C4(uint64_t a1)
{
  sub_1B7FB73DC(319);
  if (v1 <= 0x3F)
  {
    sub_1B7FB7434(319, qword_1ED8DD638, &type metadata for PlaceMark, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B7FB7434(319, &qword_1ED8DD630, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B7FB73DC(uint64_t a1)
{
  if (!qword_1ED8DD568)
  {
    type metadata accessor for Location(255);
    v1 = sub_1B80C898C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8DD568);
    }
  }
}

void sub_1B7FB7434(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B7FB7494(char *a1)
{
  v2 = v1;
  v4 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_serviceDescription;
  v10 = sub_1B80C8AAC();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_session) = 0;
  v11 = (v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
  *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesNeedingReverseGeocoding) = MEMORY[0x1E69E7CD0];
  *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection____lazy_storage___locationShifter) = 0;
  v14 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_reverseGeocoder;
  if (qword_1ED8DDA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v2 + v14) = qword_1ED8DDA80;
  v15 = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing) = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles) = v15;
  v16 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue;
  sub_1B80C8A4C();

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  *(v2 + v16) = sub_1B80C8A1C();
  v17 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_internalLocationSerializationQueue;
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  *(v2 + v17) = sub_1B80C8A1C();
  swift_weakInit();
  v18 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_stewieStateUpdateContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66080, &unk_1B80D2C48);
  (*(*(v19 - 8) + 56))(v2 + v18, 1, 1, v19);
  v20 = v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_origin;
  *v20 = v5;
  *(v20 + 8) = v6;
  *(v20 + 16) = v7;
  *(v20 + 24) = v8;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v21 = sub_1B80C900C();
  __swift_project_value_buffer(v21, qword_1ED8DDF28);
  v22 = sub_1B80C8FEC();
  v23 = sub_1B80C941C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1B7FB5000, v22, v23, "Session LocationConnection init", v24, 2u);
    MEMORY[0x1B8CB8970](v24, -1, -1);
  }

  return v2;
}

void *sub_1B7FB7810()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1B80C8EBC();
  v3 = sub_1B80C8EDC();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  type metadata accessor for ReverseGeocoder(0);
  v4 = swift_allocObject();
  result = ReverseGeocoder.init(preferredLocale:)(v2);
  qword_1ED8DDA80 = v4;
  return result;
}

uint64_t sub_1B7FB790C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7FB7944(uint64_t a1)
{
  sub_1B80C8E2C();
  if (v1 <= 0x3F)
  {
    sub_1B7FB7A44(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B7FB7A44(uint64_t a1)
{
  if (!qword_1ED8DDA88)
  {
    sub_1B80C8EDC();
    v1 = sub_1B80C946C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8DDA88);
    }
  }
}

void *ReverseGeocoder.init(preferredLocale:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  swift_defaultActor_initialize();
  sub_1B80C8DFC();
  v11 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_workItemQueue;
  sub_1B80C8A4C();
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  *(v1 + v11) = sub_1B80C8A1C();
  v12 = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_recordsPerGeoHash) = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_recordsPerIdentifier) = v12;
  *(v1 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_processedOperationsCount) = 0;
  *(v1 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_nonCoarseHorizontalAccuracyRequirement) = 0x4069000000000000;
  if (qword_1ED8DD980 != -1)
  {
    swift_once();
  }

  v13 = sub_1B80C900C();
  __swift_project_value_buffer(v13, qword_1ED8DE010);
  sub_1B7FB8448(a1, v9, &qword_1EBA65E00, &qword_1B80D2160);

  v14 = sub_1B80C8FEC();
  v15 = sub_1B80C941C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = a1;
    v29 = v17;
    v18 = v17;
    *v16 = 136315394;
    v19 = sub_1B80C9A3C();
    v21 = sub_1B7FB84FC(v19, v20, &v29);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    sub_1B7FB8448(v9, v7, &qword_1EBA65E00, &qword_1B80D2160);
    v22 = sub_1B80C90EC();
    v24 = v23;
    sub_1B7FB86D4(v9, &qword_1EBA65E00, &qword_1B80D2160);
    v25 = sub_1B7FB84FC(v22, v24, &v29);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1B7FB5000, v14, v15, "%s: initialized with preferred locale: %s", v16, 0x16u);
    swift_arrayDestroy();
    v26 = v18;
    a1 = v28;
    MEMORY[0x1B8CB8970](v26, -1, -1);
    MEMORY[0x1B8CB8970](v16, -1, -1);
  }

  else
  {

    sub_1B7FB86D4(v9, &qword_1EBA65E00, &qword_1B80D2160);
  }

  sub_1B7FB81AC(a1, v2 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale);
  return v2;
}

uint64_t sub_1B7FB7E40()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DE010);
  __swift_project_value_buffer(v0, qword_1ED8DE010);
  return sub_1B80C8FFC();
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

void sub_1B7FB7F28(uint64_t a1)
{
  if (!qword_1ED8DD588[0])
  {
    type metadata accessor for Location(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED8DD588);
    }
  }
}

uint64_t type metadata accessor for Location(uint64_t a1)
{
  result = qword_1ED8DDAA0;
  if (!qword_1ED8DDAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B7FB8018(uint64_t result)
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

  result = sub_1B8086EC8(result, v11, 1, v3);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_1B7FB8150(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B7FB81AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FB821C()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDF28);
  v1 = __swift_project_value_buffer(v0, qword_1ED8DDF28);
  if (qword_1ED8DD968 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8DDFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B7FB82E4()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDFE0);
  __swift_project_value_buffer(v0, qword_1ED8DDFE0);
  return sub_1B80C8FFC();
}

uint64_t _s20FriendshipConnectionCMa(uint64_t a1)
{
  result = qword_1ED8DD6B8;
  if (!qword_1ED8DD6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FriendStreamChange(uint64_t a1)
{
  result = qword_1ED8DD9B0;
  if (!qword_1ED8DD9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for Friend(uint64_t a1)
{
  result = qword_1ED8DDAB0;
  if (!qword_1ED8DDAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7FB8448(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_1B7FB84B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B7FB8FAC(a1, a2);
  sub_1B7FB8018(&unk_1F2FF9378);
  return v3;
}

unint64_t sub_1B7FB84FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B7FB85C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1B7FB8150(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B7FB85C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B7FB84B0(a5, a6);
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
    result = sub_1B80C956C();
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

uint64_t sub_1B7FB86D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1B7FB8734(uint64_t a1)
{
  sub_1B7FB7164(319);
  if (v1 <= 0x3F)
  {
    sub_1B7FB71BC(319, &qword_1ED8DD620, &qword_1EBA65F08, &qword_1B80D2550);
    if (v2 <= 0x3F)
    {
      sub_1B7FB71BC(319, &qword_1ED8DD618, &qword_1EBA65F10, &qword_1B80D2558);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1B7FB88C0(uint64_t a1)
{
  result = type metadata accessor for Friend(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B7FB8924(uint64_t a1)
{
  sub_1B7FB8A1C(319);
  if (v1 <= 0x3F)
  {
    sub_1B808A31C(319, &qword_1ED8DD998, &type metadata for Handle);
    if (v2 <= 0x3F)
    {
      sub_1B808A31C(319, &qword_1ED8DD570, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B7FB8A1C(uint64_t a1)
{
  if (!qword_1ED8DDAC0)
  {
    sub_1B80C8E2C();
    v1 = sub_1B80C946C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8DDAC0);
    }
  }
}

uint64_t sub_1B7FB8A84()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_serviceDescription;
  v2 = sub_1B80C8AAC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_session) = 0;
  v3 = (v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_rangingContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_isSyncingContact) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection____lazy_storage___sharedContactStore) = 0;
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName) = 0;
  v6(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followers) = v9;
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followings) = v9;
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowers) = v9;
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowings) = v9;
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_pendingOffers) = v9;
  return v0;
}

uint64_t _s18SettingsConnectionCMa(uint64_t a1)
{
  result = qword_1ED8DD780;
  if (!qword_1ED8DD780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7FB8CC4(uint64_t a1)
{
  sub_1B7FB7164(319);
  if (v1 <= 0x3F)
  {
    sub_1B7FB71BC(319, &qword_1ED8DD628, &qword_1EBA66170, &qword_1B80D3508);
    if (v2 <= 0x3F)
    {
      sub_1B7FB71BC(319, &qword_1ED8DD600, &qword_1EBA66178, &qword_1B80D3510);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1B7FB8E60()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA673D8, &qword_1B80DC8D0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B7FB8E90()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA673E0, &qword_1B80DC8D8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_1B7FB8EC0(uint64_t a1)
{
  sub_1B7FB7164(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1B7FB8FAC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B7FB90DC(v5, 0);
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

  result = sub_1B80C956C();
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
        v10 = sub_1B80C915C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B7FB90DC(v10, 0);
        result = sub_1B80C951C();
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

void *sub_1B7FB90DC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FB8, &qword_1B80D99F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1B7FB9160()
{
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_serviceDescription;
  v2 = sub_1B80C8AAC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_session) = 0;
  v3 = (v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDeviceContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66170, &qword_1B80D3508);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_preferenceContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66178, &qword_1B80D3510);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  swift_weakInit();
  return v0;
}

void sub_1B7FB92E8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1B7FB9334(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B80C900C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1B80C8FFC();
}

uint64_t sub_1B7FB942C()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDE78);
  v1 = __swift_project_value_buffer(v0, qword_1ED8DDE78);
  if (qword_1ED8DD948 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8DDFB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B7FB94F4()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1B7FB9604, v1, 0);
}

uint64_t sub_1B7FB9604()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7FB96B0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_1B80C8A5C();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBB594, v2, 0);
}

uint64_t sub_1B7FB9788(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B80C981C() & 1;
  }
}

uint64_t sub_1B7FB97E0()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FC2BE0;

  return sub_1B7FC225C();
}

uint64_t sub_1B7FB987C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7FB9D28, 0, 0);
}

void _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (MEMORY[0x1B8CB72B0]())
  {
    if (qword_1ED8DD6B0 != -1)
    {
      swift_once();
    }

    v2 = sub_1B80C900C();
    __swift_project_value_buffer(v2, qword_1ED8DDE50);
    oslog = sub_1B80C8FEC();
    v3 = sub_1B80C93DC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B7FB5000, oslog, v3, "The system is under test, skipping entitlement check.", v4, 2u);
      MEMORY[0x1B8CB8970](v4, -1, -1);
    }
  }

  else
  {
    sub_1B80C8B3C();

    if (v24)
    {
      if (swift_dynamicCast() && (v21 & 1) != 0)
      {
        return;
      }
    }

    else
    {
      sub_1B8012D6C(&v22);
    }

    v19 = v1;
    if (qword_1ED8DD6B0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE50);
    v6 = sub_1B80C8FEC();
    v7 = sub_1B80C940C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      if (v19 == 1)
      {
        v10 = 0xD00000000000002FLL;
      }

      else
      {
        v10 = 0xD000000000000026;
      }

      v11 = ".findmylocate.friendshipservice";
      if (v19 == 1)
      {
        v11 = ".findmylocate.locationservice";
      }

      if (v19)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xD00000000000002DLL;
      }

      if (v19)
      {
        v13 = v11;
      }

      else
      {
        v13 = "kFMFGroupIdGroup";
      }

      v14 = sub_1B7FB84FC(v12, v13 | 0x8000000000000000, &v22);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1B7FB5000, v6, v7, "Missing entitlement: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B8CB8970](v9, -1, -1);
      MEMORY[0x1B8CB8970](v8, -1, -1);
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1B80C952C();

    v22 = 0xD000000000000015;
    v23 = 0x80000001B80CD6D0;
    if (v19 == 1)
    {
      v15 = 0xD00000000000002FLL;
    }

    else
    {
      v15 = 0xD000000000000026;
    }

    v16 = ".findmylocate.friendshipservice";
    if (v19 == 1)
    {
      v16 = ".findmylocate.locationservice";
    }

    if (v19)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xD00000000000002DLL;
    }

    if (v19)
    {
      v18 = v16;
    }

    else
    {
      v18 = "kFMFGroupIdGroup";
    }

    MEMORY[0x1B8CB7A40](v17, v18 | 0x8000000000000000);

    sub_1B80C962C();
    __break(1u);
  }
}

uint64_t sub_1B7FB9D28()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA074;

  return sub_1B7FB9DC4(0, 0);
}

uint64_t sub_1B7FB9DC4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_1B80C8E9C();
  v3[10] = swift_task_alloc();
  sub_1B80C8A5C();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBBE8C, v2, 0);
}

uint64_t sub_1B7FB9EC8()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1B7FB9FD8, v1, 0);
}

uint64_t sub_1B7FB9FD8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7FBA074()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7FC3428, 0, 0);
}

uint64_t sub_1B7FBA170(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0);
  v3[16] = swift_task_alloc();
  sub_1B80C8A5C();
  v3[17] = swift_task_alloc();
  v4 = sub_1B80C8AAC();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBC30C, v2, 0);
}

uint64_t sub_1B7FBA2C8()
{
  v1[2] = v0;
  v1[3] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBC6A4, 0, 0);
}

uint64_t sub_1B7FBA38C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FBA3EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B7FBA4E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B7FBA5D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FBA3EC;

  return sub_1B7FBC7E4(a1, v4, v5, v6);
}

uint64_t sub_1B7FBA698(uint64_t a1)
{
  v28 = sub_1B80C8E9C();
  v26 = *(v28 - 8);
  v2 = v26;
  v3 = MEMORY[0x1EEE9AC00](v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v27 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EB0, &qword_1B80D23C0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  sub_1B80C92DC();
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  v18 = *(v1 + 16);
  v31 = v7;
  v32 = v10;
  os_unfair_lock_lock(v18 + 8);
  sub_1B7FC2CDC(&v18[4]);
  os_unfair_lock_unlock(v18 + 8);
  v19 = *(v2 + 16);
  v20 = v28;
  v19(v5, v7, v28);
  (*(v12 + 16))(v15, v17, v11);
  type metadata accessor for Fence.UpdateStream(0);
  v21 = swift_allocObject();
  swift_weakInit();
  v19((v21 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_id), v5, v20);
  swift_weakAssign();
  sub_1B80C930C();
  v22 = *(v12 + 8);
  v22(v15, v11);
  v23 = *(v26 + 8);
  v23(v5, v20);
  v22(v17, v11);
  v23(v7, v20);
  (*(v29 + 8))(v27, v30);
  return v21;
}

uint64_t sub_1B7FBAA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E90, &unk_1B80D23A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA8, &qword_1B80D23B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  v13 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, a3, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  sub_1B7FBE720(v12, v15);
  v20[3] = *(a1 + 8);

  sub_1B80C92EC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B7FBAC90(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B7FBA3EC;

  return sub_1B7FC2CF8();
}

uint64_t sub_1B7FBAD64(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B80C8E2C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7FBADA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7FBADF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7FBAE38()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_serviceDescription;
  v3 = sub_1B80C8AAC();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler);
  *v4 = 0;
  v4[1] = 0;
  swift_weakInit();
  *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_session) = 0;
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager;
  type metadata accessor for FenceStreamManager();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1B7FBD954(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EF0, &qword_1B80D2480);
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v6 + 16) = v9;
  *(v1 + v5) = v6;
  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v10 = sub_1B80C900C();
  __swift_project_value_buffer(v10, qword_1ED8DDF88);
  v11 = sub_1B80C8FEC();
  v12 = sub_1B80C941C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B7FB5000, v11, v12, "Session FenceConnection init", v13, 2u);
    MEMORY[0x1B8CB8970](v13, -1, -1);
  }

  return v1;
}

uint64_t sub_1B7FBB000()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDF88);
  v1 = __swift_project_value_buffer(v0, qword_1ED8DDF88);
  if (qword_1ED8DD990 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8DE028);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B7FBB0F4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_1B80C8A5C();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBB1CC, v2, 0);
}

uint64_t sub_1B7FBB1CC()
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Starting LocationConnection", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);

  v10 = (v7 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler);
  v11 = *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler);
  v12 = *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler + 8);
  *v10 = v9;
  v10[1] = v8;
  sub_1B7FBE254(v9, v8);
  sub_1B7FBE244(v11, v12);
  v13 = objc_opt_self();
  v14 = [v13 interfaceWithProtocol_];
  *(v0 + 104) = v14;
  sub_1B80C8A6C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66098, &qword_1B80D2D08);
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 40) = v16;
  *(v0 + 48) = v15;
  objc_msgSendSuper2((v0 + 40), sel_init);
  v17 = v14;
  v18 = [v13 interfaceWithProtocol_];
  sub_1B80C8A9C();
  v19 = sub_1B80C8AAC();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v6, 0, 1, v19);
  v21 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_serviceDescription;
  swift_beginAccess();
  sub_1B7FBDC54(v6, v7 + v21);
  swift_endAccess();
  sub_1B7FBE264(v7 + v21, v5);
  result = (*(v20 + 48))(v5, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A0, &qword_1B80D2D10);
    v24 = sub_1B80C8B1C();
    *(v0 + 112) = v24;
    *(v23 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_session) = v24;

    v26 = (*MEMORY[0x1E699C828] + MEMORY[0x1E699C828]);
    v25 = swift_task_alloc();
    *(v0 + 120) = v25;
    *v25 = v0;
    v25[1] = sub_1B7FB94F4;

    return v26();
  }

  return result;
}

uint64_t sub_1B7FBB594()
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE78);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Starting FriendshipConnection", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);

  v10 = (v7 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler);
  v11 = *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler);
  v12 = *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler + 8);
  *v10 = v9;
  v10[1] = v8;
  sub_1B7FBE254(v9, v8);
  sub_1B7FBE244(v11, v12);
  v13 = objc_opt_self();
  v14 = [v13 interfaceWithProtocol_];
  *(v0 + 104) = v14;
  sub_1B80C8A6C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F38, &qword_1B80D2668);
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 40) = v16;
  *(v0 + 48) = v15;
  objc_msgSendSuper2((v0 + 40), sel_init);
  v17 = v14;
  v18 = [v13 interfaceWithProtocol_];
  sub_1B80C8A9C();
  v19 = sub_1B80C8AAC();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v6, 0, 1, v19);
  v21 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_serviceDescription;
  swift_beginAccess();
  sub_1B7FBDC54(v6, v7 + v21);
  swift_endAccess();
  sub_1B7FB8448(v7 + v21, v5, &qword_1EBA65EA0, &qword_1B80D23B0);
  result = (*(v20 + 48))(v5, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F40, &qword_1B80D2670);
    v24 = sub_1B80C8B1C();
    *(v0 + 112) = v24;
    *(v23 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_session) = v24;

    sub_1B7FC1F6C();
    v26 = (*MEMORY[0x1E699C828] + MEMORY[0x1E699C828]);
    v25 = swift_task_alloc();
    *(v0 + 120) = v25;
    *v25 = v0;
    v25[1] = sub_1B7FB94F4;

    return v26();
  }

  return result;
}

uint64_t sub_1B7FBB9C4()
{
  if ([objc_opt_self() authorizationStatusForEntityType_] == 3)
  {
    sub_1B80C8B3C();
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
      v0 = swift_dynamicCast();
      if (v0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1B8012D6C(v9);
    }

    sub_1B80C8B3C();
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
      v0 = swift_dynamicCast();
      if (v0)
      {
LABEL_13:
        v6 = v8[4];
LABEL_16:
        v9[0] = 0xD000000000000016;
        v9[1] = 0x80000001B80CC7E0;
        MEMORY[0x1EEE9AC00](v0);
        v8[2] = v9;
        v5 = sub_1B7FBBC20(sub_1B7FBBD24, v8, v6);

        return v5 & 1;
      }
    }

    else
    {
      v0 = sub_1B8012D6C(v9);
    }

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C93EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Client's Contact status is not authorized", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1B7FBBC20(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B7FBBCCC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B80C981C() & 1;
  }
}

uint64_t sub_1B7FBBD44()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDEE8);
  v1 = __swift_project_value_buffer(v0, qword_1ED8DDEE8);
  if (qword_1ED8DD958 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8DDFC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B7FBBE0C()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDFC8);
  __swift_project_value_buffer(v0, qword_1ED8DDFC8);
  return sub_1B80C8FFC();
}

uint64_t sub_1B7FBBE8C()
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDEE8);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Starting SettingsConnection", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 104);
  v25 = *(v0 + 96);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);

  v9 = (v6 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler);
  v10 = *(v6 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler);
  v11 = *(v6 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler + 8);
  *v9 = v8;
  v9[1] = v7;
  sub_1B7FBE254(v8, v7);
  sub_1B7FBE244(v10, v11);
  v12 = objc_opt_self();
  v13 = [v12 interfaceWithProtocol_];
  *(v0 + 112) = v13;
  sub_1B80C8A6C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66190, &qword_1B80D35C0);
  v15 = swift_allocObject();

  swift_defaultActor_initialize();
  swift_weakInit();
  sub_1B80C8A4C();
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  *(v15 + 120) = sub_1B80C8A1C();
  swift_weakAssign();
  *(v0 + 40) = v15;
  *(v0 + 48) = v14;
  objc_msgSendSuper2((v0 + 40), sel_init);

  v16 = v13;
  v17 = [v12 interfaceWithProtocol_];
  sub_1B80C8A9C();
  v18 = sub_1B80C8AAC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v5, 0, 1, v18);
  v20 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_serviceDescription;
  swift_beginAccess();
  sub_1B7FBDC54(v5, v6 + v20);
  swift_endAccess();
  sub_1B7FBE264(v6 + v20, v25);
  result = (*(v19 + 48))(v25, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66198, qword_1B80D35C8);
    v23 = sub_1B80C8B1C();
    *(v0 + 120) = v23;
    *(v22 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_session) = v23;

    v26 = (*MEMORY[0x1E699C828] + MEMORY[0x1E699C828]);
    v24 = swift_task_alloc();
    *(v0 + 128) = v24;
    *v24 = v0;
    v24[1] = sub_1B7FB9EC8;

    return v26();
  }

  return result;
}

uint64_t sub_1B7FBC30C()
{
  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF88);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Starting FenceConnection", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v24 = *(v0 + 144);
  v25 = *(v0 + 160);
  v26 = *(v0 + 128);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 104);

  v10 = (v7 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler);
  v12 = *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler);
  v11 = *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler + 8);
  *v10 = v9;
  v10[1] = v8;
  sub_1B7FBE254(v9, v8);
  sub_1B7FBE244(v12, v11);
  v13 = objc_opt_self();
  v14 = [v13 interfaceWithProtocol_];
  *(v0 + 176) = v14;
  sub_1B80C8A6C();
  v15 = _s15FenceConnectionC10TrampolineCMa();
  v16 = objc_allocWithZone(v15);
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 88) = v16;
  *(v0 + 96) = v15;
  objc_msgSendSuper2((v0 + 88), sel_init);
  v17 = v14;
  v18 = [v13 interfaceWithProtocol_];
  sub_1B80C8A9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65ED8, &qword_1B80D2450);
  v19 = *(v6 + 16);
  v19(v25, v5, v24);
  v20 = sub_1B80C8B1C();
  *(v0 + 184) = v20;
  v19(v26, v5, v24);
  (*(v6 + 56))(v26, 0, 1, v24);
  v21 = OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_serviceDescription;
  swift_beginAccess();
  sub_1B7FBDC54(v26, v7 + v21);
  swift_endAccess();
  *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_session) = v20;

  v27 = (*MEMORY[0x1E699C828] + MEMORY[0x1E699C828]);
  v22 = swift_task_alloc();
  *(v0 + 192) = v22;
  *v22 = v0;
  v22[1] = sub_1B7FBE390;

  return v27();
}

uint64_t sub_1B7FBC6A4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1B80C92CC();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v2;
  v7 = sub_1B80A4870(0, 0, v1, &unk_1B80DC950, v6);
  os_unfair_lock_lock((v3 + 64));

  *(v3 + 72) = v7;
  os_unfair_lock_unlock((v3 + 64));

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B7FBC7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1B80C8A8C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA673E8, &qword_1B80DC958);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA673F0, &qword_1B80DC960);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA673F8, &qword_1B80DC968);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FC2598, 0, 0);
}

uint64_t sub_1B7FBC9B8()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDE50);
  v1 = __swift_project_value_buffer(v0, qword_1ED8DDE50);
  if (qword_1ED8DD978 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8DDFF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static Session.sharedSession(origin:)(_BYTE *a1)
{
  LOBYTE(v6) = *a1;
  RequestOrigin.init(_:)(&v6);
  v1 = v7;
  v2 = v8;
  v3 = v9;
  v4 = v10;
  if (qword_1ED8DD428 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED8DD430);
  sub_1B7FBCB98(&qword_1ED8DD438, v1, v2, v3, v4, &v6);
  os_unfair_lock_unlock(&dword_1ED8DD430);

  return v6;
}

unint64_t sub_1B7FBCB68()
{
  result = sub_1B7FBCCC8(MEMORY[0x1E69E7CC0]);
  dword_1ED8DD430 = 0;
  qword_1ED8DD438 = result;
  return result;
}

uint64_t sub_1B7FBCB98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_1B7FBD0C0(a2, a3, a4, a5), (v13 & 1) != 0) && (sub_1B7FC391C(*(v11 + 56) + 8 * v12, v21), sub_1B7FBCEF4(v21, v17), Strong = swift_weakLoadStrong(), result = sub_1B7FC3A34(v17), Strong))
  {
    *a6 = Strong;
  }

  else
  {
    v17[0] = a2;
    v18 = a3;
    v19 = a4;
    v20 = a5;
    type metadata accessor for Session();
    v16 = swift_allocObject();

    Session.init(_:)(v17);
    swift_weakInit();
    LOBYTE(v18) = 0;

    result = sub_1B7FBCE04(v17, a2, a3, a4, a5);
    *a6 = v16;
  }

  return result;
}

unint64_t sub_1B7FBCCC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F88, &qword_1B80D99B0);
    v3 = sub_1B80C966C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7FB8448(v4, v13, &qword_1EBA66F90, &qword_1B80D99B8);
      result = sub_1B7FBD0C0(v13[0], v14, *(&v14 + 1), v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 32 * result;
      v8 = v15;
      v9 = v14;
      *v7 = v13[0];
      *(v7 + 8) = v9;
      *(v7 + 24) = v8;
      result = sub_1B7FBCEF4(&v16, v3[7] + 8 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7FBCE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 8))
  {
    sub_1B7FB86D4(a1, &qword_1EBA66108, &qword_1B80D2FC0);
    sub_1B8013B38(a2, a3, a4, a5, v13);

    return sub_1B7FB86D4(v13, &qword_1EBA66108, &qword_1B80D2FC0);
  }

  else
  {
    sub_1B7FBCEF4(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    sub_1B7FBCF50(v13, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v12;
  }

  return result;
}

uint64_t sub_1B7FBCF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1B7FBD0C0(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1B80929C0();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1B7FBD184(v20, a6 & 1);
    v15 = sub_1B7FBD0C0(a2, a3, a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1B80C986C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 8 * v15;

    return sub_1B8034478(a1, v26);
  }

  else
  {
    sub_1B7FBE018(v15, a2, a3, a4, a5, a1, v25);
  }
}

unint64_t sub_1B7FBD0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v7);
  MEMORY[0x1B8CB8250](a2);
  sub_1B80C995C();
  if (a4)
  {
    sub_1B80C911C();
  }

  v8 = sub_1B80C997C();

  return sub_1B7FBD48C(v7, a2, a3, a4, v8);
}

uint64_t sub_1B7FBD184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F88, &qword_1B80D99B0);
  v36 = v4;
  result = sub_1B80C965C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v37 = v22[2];
      v25 = v22[3];
      v26 = v21 + 8 * v20;
      if (v36)
      {
        sub_1B7FBCEF4(v26, v38);
      }

      else
      {
        sub_1B7FC391C(v26, v38);
      }

      sub_1B80C993C();
      MEMORY[0x1B8CB8250](v23);
      MEMORY[0x1B8CB8250](v24);
      sub_1B80C995C();
      if (v25)
      {
        sub_1B80C911C();
      }

      result = sub_1B80C997C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v37;
      *(v16 + 24) = v25;
      result = sub_1B7FBCEF4(v38, *(v7 + 56) + 8 * v15);
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

unint64_t sub_1B7FBD48C(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = a1;
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      if (*v15 == v12 && v15[1] == a2)
      {
        v17 = v15[3];
        if (v17)
        {
          if (a4)
          {
            v18 = v15[2] == a3 && v17 == a4;
            if (v18 || (sub_1B80C981C() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_1B7FBD58C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return sub_1B7FBDCC4(a1, v4);
}

uint64_t sub_1B7FBD644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FBA3EC;

  return sub_1B7FBD6F8(a1, v4, v5, v6);
}

uint64_t sub_1B7FBD718()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 56);
    v0[7] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B7FBD7E4, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1B7FBD7E4()
{
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBD864, 0, 0);
}

uint64_t sub_1B7FBD864()
{
  v1 = *(*(v0 + 48) + 40);
  *(v0 + 64) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FBDDBC, v1, 0);
}

uint64_t sub_1B7FBD8DC()
{
  v1 = *(*(v0 + 48) + 48);
  *(v0 + 72) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FBDE40, v1, 0);
}

unint64_t sub_1B7FBD954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F78, &qword_1B80D99A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F80, &qword_1B80DAC80);
    v7 = sub_1B80C966C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7FB8448(v9, v5, &qword_1EBA66F78, &qword_1B80D99A8);
      result = sub_1B7FBEB64(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B80C8E9C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7FBDBB8()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDFB0);
  __swift_project_value_buffer(v0, qword_1ED8DDFB0);
  return sub_1B80C8FFC();
}

uint64_t sub_1B7FBDC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FBDCC4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B7FBA4E0;

  return v6(a1);
}

uint64_t sub_1B7FBDDBC()
{
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBD8DC, 0, 0);
}

uint64_t sub_1B7FBDE40()
{
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBDEC4, 0, 0);
}

uint64_t sub_1B7FBDEC4()
{
  v1 = *(*(v0 + 48) + 32);
  *(v0 + 80) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FBDF3C, v1, 0);
}

uint64_t sub_1B7FBDF3C()
{
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBE1A8, 0, 0);
}

unint64_t sub_1B7FBDFC4()
{
  result = qword_1ED8DD448;
  if (!qword_1ED8DD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD448);
  }

  return result;
}

uint64_t sub_1B7FBE018(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a7[6] + 32 * a1;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  result = sub_1B7FBCEF4(a6, a7[7] + 8 * a1);
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

uint64_t sub_1B7FBE090(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 208) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FC227C, v2, 0);
}

uint64_t sub_1B7FBE1A8()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FC1DD4;

  return sub_1B7FBB0F4(0, 0);
}

uint64_t sub_1B7FBE244(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B7FBE254(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B7FBE264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B7FBE2D4(uint64_t a1)
{
  sub_1B7FBE340();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B7FBE340()
{
  if (!qword_1EBA65930)
  {
    v0 = sub_1B80C933C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA65930);
    }
  }
}

uint64_t sub_1B7FBE390()
{
  v1 = *v0;
  v2 = *v0;

  v5 = (*MEMORY[0x1E699C818] + MEMORY[0x1E699C818]);
  v3 = swift_task_alloc();
  *(v1 + 200) = v3;
  *v3 = v2;
  v3[1] = sub_1B7FBE090;

  return v5();
}

uint64_t sub_1B7FBE4E4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 120) = v3;
  *v3 = v2;
  v3[1] = sub_1B7FC2440;

  return sub_1B7FBA2C8();
}

uint64_t sub_1B7FBE624()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7FC2994, 0, 0);
}

uint64_t sub_1B7FBE720(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA8, &qword_1B80D23B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1B7FB86D4(a1, &qword_1EBA65EA8, &qword_1B80D23B8);
    sub_1B7FE1BFC(a2, v7);
    v12 = sub_1B80C8E9C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1B7FB86D4(v7, &qword_1EBA65EA8, &qword_1B80D23B8);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1B7FBE954(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1B80C8E9C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1B7FBE954(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B80C8E9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B7FBEB64(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1B8091CFC();
      goto LABEL_7;
    }

    sub_1B7FBEEB8(v17, a3 & 1);
    v28 = sub_1B7FBEB64(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1B7FBF388(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1B80C986C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_1B7FBEB64(uint64_t a1)
{
  sub_1B80C8E9C();
  sub_1B7FDAA98(&qword_1EBA65A68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1B80C904C();

  return sub_1B7FBECF8(a1, v2);
}

uint64_t sub_1B7FBEBFC()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for FenceClientRequest(0);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for FenceResponse(0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBFEA0, v0, 0);
}

unint64_t sub_1B7FBECF8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1B80C8E9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1B7FDAA98(&qword_1EBA65DB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1B80C908C();
      (*(v12 - 8))(v7, v4);
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

uint64_t sub_1B7FBEEB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - v6;
  v7 = sub_1B80C8E9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F80, &qword_1B80DAC80);
  v47 = v4;
  result = sub_1B80C965C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1B7FBADF0(&qword_1EBA65A68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1B80C904C();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1B7FBF388(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B80C8E9C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void sub_1B7FBF4A8(uint64_t a1)
{
  type metadata accessor for Fence.ID(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Fence.Variant(319);
    if (v2 <= 0x3F)
    {
      sub_1B7FBF844(319, &qword_1ED8DBC10, &type metadata for PersonHandle, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1B7FBF96C(319, &qword_1ED8DDAC0, MEMORY[0x1E6969530]);
        if (v4 <= 0x3F)
        {
          sub_1B80C8E2C();
          if (v5 <= 0x3F)
          {
            sub_1B7FBF96C(319, &qword_1ED8DDA90, MEMORY[0x1E69695A8]);
            if (v6 <= 0x3F)
            {
              sub_1B7FBF844(319, &qword_1ED8DD578, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
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

uint64_t sub_1B7FBF664(uint64_t a1)
{
  result = sub_1B80C8E9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7FBF730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7FBF798(uint64_t a1)
{
  result = sub_1B80C8FCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B7FBF844(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B7FBF894(uint64_t a1)
{
  sub_1B80C8E9C();
  if (v1 <= 0x3F)
  {
    sub_1B7FBE340();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B7FBF96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B80C946C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B7FBF9C0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for Fence.UpdateStream.AsyncIterator(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

void sub_1B7FBFA24()
{
  if (!qword_1ED8DBF38)
  {
    v0 = type metadata accessor for Fence.ID(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8DBF38);
    }
  }
}

void sub_1B7FBFA6C(uint64_t a1)
{
  if (!qword_1ED8DC360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA65FD0, &unk_1B80D1920);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8DC360);
    }
  }
}

uint64_t sub_1B7FBFAF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67498, qword_1B80DD250);
  *v3 = v1;
  v3[1] = sub_1B7FBA4E0;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

void sub_1B7FBFBD4(uint64_t a1)
{
  if (!qword_1ED8DBF40[0])
  {
    type metadata accessor for Fence.ID(255);
    type metadata accessor for Fence.TriggerPosition(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED8DBF40);
    }
  }
}

uint64_t sub_1B7FBFC48(uint64_t a1)
{
  result = sub_1B7FBFCCC(319, &qword_1ED8DBBE8, 0x1E6985C40);
  if (v2 <= 0x3F)
  {
    result = sub_1B80C8E2C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7FBFCCC(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1B7FBFD34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B7FBFD98(uint64_t a1)
{
  type metadata accessor for Fence(319);
  if (v1 <= 0x3F)
  {
    sub_1B7FBFD34(319, &qword_1ED8DBC08, type metadata accessor for Fence, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B7FBFD34(319, &qword_1ED8DBD28, type metadata accessor for Fence.TriggerID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B7FBFEA0()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1B7FC74E8;
  v2 = v0[8];
  v3 = v0[4];

  return sub_1B7FBFF48(v2, v3);
}

uint64_t sub_1B7FBFF48(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B7FBFF94, v2, 0);
}

uint64_t sub_1B7FBFF94()
{
  v1 = v0[3].i64[0];
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  v2[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[4].i64[0] = v3;
  v4 = type metadata accessor for FenceResponse(0);
  *v3 = v0;
  v3[1] = sub_1B7FC73AC;
  v5 = v0[1].i64[1];

  return MEMORY[0x1EEE04418](v5, 0x75716552656B616DLL, 0xEF293A5F28747365, sub_1B7FC0778, v2, v4);
}

uint64_t sub_1B7FC0094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FenceClientRequest(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_1B80C92CC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1B7FC0784(a3, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FenceClientRequest);
  v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;
  v16[5] = a1;
  sub_1B7FC07EC(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for FenceClientRequest);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1B80A1D3C(0, 0, v13, &unk_1B80D2448, v16);
}

uint64_t sub_1B7FC0290()
{
  v1 = *(type metadata accessor for FenceClientRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC8, &unk_1B80D2400) + 48);
        v12 = sub_1B80C8E2C();
        v13 = *(v12 - 8);
        if (!(*(v13 + 48))(v5 + v11, 1, v12))
        {
          (*(v13 + 8))(v5 + v11, v12);
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v7 = sub_1B80C8E9C();
        (*(*(v7 - 8) + 8))(v0 + v3, v7);
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EB8, &unk_1B80DEEA0) + 48);
        type metadata accessor for Fence.TriggerPosition(0);
        v9 = swift_getEnumCaseMultiPayload();
        if (v9 == 2)
        {
          v25 = sub_1B80C8E2C();
          (*(*(v25 - 8) + 8))(v5 + v8, v25);
        }

        else if (v9 <= 1)
        {
        }
      }

      goto LABEL_20;
    }

LABEL_10:
    v10 = sub_1B80C8E9C();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v14 = sub_1B80C8E9C();
  v28 = *(v14 - 8);
  v29 = v14;
  v27 = *(v28 + 8);
  v27(v0 + v3);
  v15 = type metadata accessor for Fence(0);

  v16 = v5 + v15[8];
  type metadata accessor for Fence.Variant(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = *(type metadata accessor for Fence.Schedule(0) + 28);
    v18 = sub_1B80C8FCC();
    (*(*(v18 - 8) + 8))(v16 + v17, v18);
  }

  v19 = v15[13];
  v20 = sub_1B80C8E2C();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v5 + v19, 1, v20);
  v23 = *(v21 + 8);
  if (!v22)
  {
    v23(v5 + v19, v20);
  }

  v23(v5 + v15[14], v20);
  v24 = v15[15];
  if (!(*(v28 + 48))(v5 + v24, 1, v29))
  {
    (v27)(v5 + v24, v29);
  }

LABEL_20:

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B7FC0784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7FC07EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7FC0854(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7FC08BC()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1B7FC0930()
{
  v25 = v0;
  v1 = v0[16];
  v2 = v0[8];
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for FenceClientRequest(0);
  sub_1B7FC0854(&qword_1EBA65A08, type metadata accessor for FenceClientRequest, &protocol conformance descriptor for FenceClientRequest);
  v3 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD928 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF88);
    v6 = v1;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24[0] = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0x75716552656B616DLL, 0xEF293A5F28747365, v24);
      *(v9 + 12) = 2082;
      v0[10] = v1;
      v11 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, v24);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v15 = v0[14];
    v16 = v0[12];
    v17 = v3;
    v18 = v4;
    v19 = sub_1B80C8D1C();
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    *(v20 + 24) = v15;
    v0[6] = sub_1B7FC5D78;
    v0[7] = v20;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_1;
    v21 = _Block_copy(v0 + 2);

    [v2 request:v19 completion:v21];
    _Block_release(v21);

    sub_1B7FC3CCC(v17, v18);

    swift_unknownObjectRelease();
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1B7FC0CC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t FenceClientRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67748, &qword_1B80DEE50);
  v89 = *(v2 - 8);
  v90 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v86 = &v67 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67750, &qword_1B80DEE58);
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67758, &qword_1B80DEE60);
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v67 - v7;
  v67 = type metadata accessor for Fence.TriggerPosition(0);
  MEMORY[0x1EEE9AC00](v67);
  v94 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67760, &unk_1B80DEE68);
  v91 = *(v9 - 8);
  v92 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v87 = &v67 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67768, &qword_1B80DEE78);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v67 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67770, &qword_1B80DEE80);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v67 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67778, &qword_1B80DEE88);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v74 = &v67 - v15;
  v97 = type metadata accessor for Fence.ID(0);
  v16 = MEMORY[0x1EEE9AC00](v97);
  v82 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v72 = &v67 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v67 - v20;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67780, &qword_1B80DEE90);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v22 = &v67 - v21;
  v68 = type metadata accessor for Fence(0);
  MEMORY[0x1EEE9AC00](v68);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FenceClientRequest(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67788, &qword_1B80DEE98);
  v100 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC38C8();
  v99 = v30;
  sub_1B80C99DC();
  sub_1B7FC3978(v98, v27, type metadata accessor for FenceClientRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v51 = v99;
      if (EnumCaseMultiPayload == 6)
      {
        LOBYTE(v102) = 6;
        sub_1B7FC39E0();
        v52 = v83;
        sub_1B80C974C();
        v54 = v84;
        v53 = v85;
      }

      else
      {
        LOBYTE(v102) = 7;
        sub_1B80C35A8();
        v52 = v86;
        sub_1B80C974C();
        v54 = v89;
        v53 = v90;
      }

      (*(v54 + 8))(v52, v53);
      return (*(v100 + 8))(v51, v28);
    }

    else
    {
      v36 = v28;
      v37 = v99;
      if (EnumCaseMultiPayload == 4)
      {
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EB8, &unk_1B80DEEA0) + 48);
        v39 = v82;
        sub_1B7FC5290(v27, v82, type metadata accessor for Fence.ID);
        v40 = v94;
        sub_1B7FC5290(v27 + v38, v94, type metadata accessor for Fence.TriggerPosition);
        LOBYTE(v102) = 5;
        sub_1B80C35FC();
        v41 = v93;
        sub_1B80C974C();
        LOBYTE(v102) = 0;
        sub_1B7FCA6E0(&qword_1EBA66AD0, type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v42 = v96;
        v43 = v101;
        sub_1B80C97DC();
        if (!v43)
        {
          LOBYTE(v102) = 1;
          sub_1B7FCA6E0(&qword_1EBA677A0, type metadata accessor for Fence.TriggerPosition, &protocol conformance descriptor for Fence.TriggerPosition);
          sub_1B80C97DC();
        }

        (*(v95 + 8))(v41, v42);
        sub_1B80C37F4(v40, type metadata accessor for Fence.TriggerPosition);
        sub_1B80C37F4(v39, type metadata accessor for Fence.ID);
        return (*(v100 + 8))(v37, v36);
      }

      else
      {
        LOBYTE(v102) = 2;
        sub_1B80C36F8();
        v58 = v73;
        sub_1B80C974C();
        (*(v75 + 8))(v58, v76);
        return (*(v100 + 8))(v37, v28);
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v45 = v72;
        sub_1B7FC5290(v27, v72, type metadata accessor for Fence.ID);
        LOBYTE(v102) = 3;
        sub_1B80C36A4();
        v46 = v79;
        v47 = v99;
        sub_1B80C974C();
        sub_1B7FCA6E0(&qword_1EBA66AD0, type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v48 = v81;
        sub_1B80C97DC();
        (*(v80 + 8))(v46, v48);
        sub_1B80C37F4(v45, type metadata accessor for Fence.ID);
        v49 = *(v100 + 8);
        v50 = v47;
      }

      else
      {
        v60 = *v27;
        v59 = v27[1];
        v61 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC8, &unk_1B80D2400) + 48);
        v62 = v87;
        sub_1B7FC8F2C(v61, v87, &unk_1EBA65FD0, &unk_1B80D1920);
        LOBYTE(v102) = 4;
        sub_1B80C3650();
        v63 = v88;
        v64 = v99;
        sub_1B80C974C();
        v102 = v60;
        v103 = v59;
        v104 = 0;
        sub_1B807F090();
        v65 = v92;
        v66 = v101;
        sub_1B80C97DC();
        if (v66)
        {
          (*(v91 + 8))(v63, v65);
          sub_1B7FB86D4(v62, &unk_1EBA65FD0, &unk_1B80D1920);
          (*(v100 + 8))(v64, v28);
        }

        LOBYTE(v102) = 1;
        sub_1B80C8E2C();
        sub_1B7FCA6E0(&qword_1ED8DC390, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
        sub_1B80C977C();
        (*(v91 + 8))(v63, v65);
        sub_1B7FB86D4(v62, &unk_1EBA65FD0, &unk_1B80D1920);
        v49 = *(v100 + 8);
        v50 = v64;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v55 = v71;
        sub_1B7FC5290(v27, v71, type metadata accessor for Fence.ID);
        LOBYTE(v102) = 1;
        sub_1B80C374C();
        v56 = v74;
        v32 = v99;
        sub_1B80C974C();
        sub_1B7FCA6E0(&qword_1EBA66AD0, type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v57 = v78;
        sub_1B80C97DC();
        (*(v77 + 8))(v56, v57);
        v34 = type metadata accessor for Fence.ID;
        v35 = v55;
      }

      else
      {
        sub_1B7FC5290(v27, v24, type metadata accessor for Fence);
        LOBYTE(v102) = 0;
        sub_1B80C37A0();
        v32 = v99;
        sub_1B80C974C();
        sub_1B7FCA6E0(&qword_1EBA65998, type metadata accessor for Fence, &protocol conformance descriptor for Fence);
        v33 = v70;
        sub_1B80C97DC();
        (*(v69 + 8))(v22, v33);
        v34 = type metadata accessor for Fence;
        v35 = v24;
      }

      sub_1B80C37F4(v35, v34);
      v49 = *(v100 + 8);
      v50 = v32;
    }

    return v49(v50, v28);
  }
}

unint64_t sub_1B7FC1C70()
{
  result = qword_1ED8DC188;
  if (!qword_1ED8DC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC188);
  }

  return result;
}

unint64_t sub_1B7FC1CD0()
{
  result = qword_1ED8DC0F8;
  if (!qword_1ED8DC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC0F8);
  }

  return result;
}

unint64_t sub_1B7FC1D2C()
{
  result = qword_1ED8DC108;
  if (!qword_1ED8DC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC108);
  }

  return result;
}

unint64_t sub_1B7FC1D80()
{
  result = qword_1ED8DC110;
  if (!qword_1ED8DC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC110);
  }

  return result;
}

uint64_t sub_1B7FC1DD4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7FC1ED0, 0, 0);
}

uint64_t sub_1B7FC1ED0()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FB987C;

  return sub_1B7FB96B0(0, 0);
}

void sub_1B7FC1F6C()
{
  if (sub_1B7FBB9C4())
  {
    v0 = [objc_opt_self() defaultCenter];
    v1 = *MEMORY[0x1E695C3D8];
    v2 = swift_allocObject();
    swift_weakInit();
    v5[4] = sub_1B7FF8AF4;
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1B7FF777C;
    v5[3] = &block_descriptor_2;
    v3 = _Block_copy(v5);

    v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
    _Block_release(v3);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B7FC20A0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Session.fenceUpdateStream()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67410, &qword_1B80DCA48);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FB97E0, 0, 0);
}

uint64_t sub_1B7FC227C()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_1B7FE596C;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FE1340;
  v0[5] = &block_descriptor_58;
  v7 = _Block_copy(v0 + 2);

  [v1 setInterruptionHandler_];
  _Block_release(v7);

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B7FC2408()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FC2440()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7FBA38C, 0, 0);
}

uint64_t objectdestroy_61Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1B7FC2598()
{
  sub_1B80C937C();
  v0[17] = 0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  v0[18] = __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Registering listener for daemon ready Darwin notification", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  sub_1B80C8B0C();
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FC279C;
  v6 = v0[13];

  return MEMORY[0x1EEE04400](v6, 0xD000000000000023, 0x80000001B80CB300);
}

uint64_t sub_1B7FC279C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7FC2898, 0, 0);
}

uint64_t sub_1B7FC2898()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_1B80C930C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[20] = v0[17];
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1B80A2D58;
  v5 = v0[14];
  v6 = v0[10];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1B7FC2994()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 16));

  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7FC2A14()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0[2] + 32);
  v6 = sub_1B80C92CC();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_1B80A4870(0, 0, v2, &unk_1B80DCA50, v7);

  *v1 = 1;
  (*(v4 + 104))(v1, *MEMORY[0x1E69E8640], v3);
  v8 = sub_1B7FBA698(v1);
  (*(v4 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1B7FC2BA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FC2BE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7FC2A14, 0, 0);
}

uint64_t sub_1B7FC2CF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA3EC;

  return sub_1B7FBEBFC();
}

void sub_1B7FC2D88(uint64_t a1)
{
  type metadata accessor for Fence(319);
  if (v1 <= 0x3F)
  {
    sub_1B7FBFA24();
    if (v2 <= 0x3F)
    {
      sub_1B7FBFA6C(319);
      if (v3 <= 0x3F)
      {
        sub_1B7FBFBD4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B7FC2E24(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FenceClientRequest(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B7FC2F5C(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1B7FC2F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B7FC2F80, 0, 0);
}

uint64_t sub_1B7FC2F80()
{

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  v2 = _s15FenceConnectionCMa(0);
  v3 = sub_1B7FC0854(&qword_1EBA65970, _s15FenceConnectionCMa, &unk_1B80D2348);
  *v1 = v0;
  v1[1] = sub_1B7FC308C;
  v4 = *(v0 + 96);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B7FE58F0, v4, v2, v3);
}

uint64_t sub_1B7FC308C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B7FE554C;
  }

  else
  {

    v2 = sub_1B7FC0930;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1B7FC31A8()
{
  result = qword_1ED8DC190;
  if (!qword_1ED8DC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC190);
  }

  return result;
}

unint64_t sub_1B7FC320C()
{
  result = qword_1ED8DC0F0;
  if (!qword_1ED8DC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC0F0);
  }

  return result;
}

unint64_t sub_1B7FC3270()
{
  result = qword_1ED8DC148;
  if (!qword_1ED8DC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC148);
  }

  return result;
}

unint64_t sub_1B7FC32C8()
{
  result = qword_1ED8DC150;
  if (!qword_1ED8DC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC150);
  }

  return result;
}

uint64_t sub_1B7FC3330()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v0[3] = v2;

  os_unfair_lock_unlock((v1 + 16));
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1B7FBE624;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1B7FC3428()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBE4E4;

  return sub_1B7FBA170(0, 0);
}

unint64_t sub_1B7FC34D8()
{
  result = qword_1ED8DC168;
  if (!qword_1ED8DC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC168);
  }

  return result;
}

unint64_t sub_1B7FC3530()
{
  result = qword_1ED8DC170;
  if (!qword_1ED8DC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC170);
  }

  return result;
}

unint64_t sub_1B7FC3598()
{
  result = qword_1ED8DC118;
  if (!qword_1ED8DC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC118);
  }

  return result;
}

unint64_t sub_1B7FC35F0()
{
  result = qword_1ED8DC120;
  if (!qword_1ED8DC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC120);
  }

  return result;
}

unint64_t sub_1B7FC3658()
{
  result = qword_1ED8DC158;
  if (!qword_1ED8DC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC158);
  }

  return result;
}

unint64_t sub_1B7FC36B0()
{
  result = qword_1ED8DC160;
  if (!qword_1ED8DC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC160);
  }

  return result;
}

unint64_t sub_1B7FC3718()
{
  result = qword_1ED8DC178;
  if (!qword_1ED8DC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC178);
  }

  return result;
}

unint64_t sub_1B7FC3770()
{
  result = qword_1ED8DC180;
  if (!qword_1ED8DC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC180);
  }

  return result;
}

unint64_t sub_1B7FC37D8()
{
  result = qword_1ED8DC130;
  if (!qword_1ED8DC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC130);
  }

  return result;
}

unint64_t sub_1B7FC3830()
{
  result = qword_1ED8DC138;
  if (!qword_1ED8DC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC138);
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

unint64_t sub_1B7FC38C8()
{
  result = qword_1ED8DC140;
  if (!qword_1ED8DC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC140);
  }

  return result;
}

uint64_t sub_1B7FC3978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7FC39E0()
{
  result = qword_1ED8DC100;
  if (!qword_1ED8DC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC100);
  }

  return result;
}

unint64_t sub_1B7FC3A70()
{
  v1 = *v0;
  v2 = 0x636E654665766173;
  v3 = 0x7274537472617473;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x636E65466574756DLL;
  if (v1 != 4)
  {
    v4 = 0x4672656767697274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7365636E6566;
  if (v1 != 2)
  {
    v5 = 0x6546747065636361;
  }

  if (*v0)
  {
    v2 = 0x65466574656C6564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for LocationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LocationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B7FC3CCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_1B7FC3D20(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000026;
  v3 = ".findmylocate.locationservice";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000002FLL;
  }

  else
  {
    v3 = ".findmylocate.friendshipservice";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000002DLL;
    v4 = "kFMFGroupIdGroup";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t FenceClientRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677C8, &qword_1B80DEEB0);
  v84 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v94 = &v68 - v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677D0, &qword_1B80DEEB8);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v93 = &v68 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677D8, &qword_1B80DEEC0);
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v99 = &v68 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677E0, &qword_1B80DEEC8);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v98 = &v68 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677E8, &qword_1B80DEED0);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v92 = &v68 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677F0, &qword_1B80DEED8);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v90 = &v68 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677F8, &qword_1B80DEEE0);
  v78 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v91 = &v68 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67800, &qword_1B80DEEE8);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v89 = &v68 - v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67808, &unk_1B80DEEF0);
  v102 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v12 = &v68 - v11;
  v95 = type metadata accessor for FenceClientRequest(0);
  v13 = MEMORY[0x1EEE9AC00](v95);
  v79 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v68 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v68 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v68 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v68 - v27;
  v29 = a1[3];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1B7FC38C8();
  v30 = v103;
  sub_1B80C99BC();
  if (!v30)
  {
    v69 = v26;
    v72 = v23;
    v70 = v20;
    v71 = v17;
    v32 = v97;
    v31 = v98;
    v103 = 0;
    v33 = v99;
    v34 = v100;
    v73 = v28;
    v35 = v101;
    v36 = v96;
    v37 = sub_1B80C973C();
    v38 = (2 * *(v37 + 16)) | 1;
    v105 = v37;
    v106 = v37 + 32;
    v107 = 0;
    v108 = v38;
    v39 = sub_1B7FC5288();
    if (v39 == 8 || v107 != v108 >> 1)
    {
      v44 = sub_1B80C955C();
      swift_allocError();
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v46 = v95;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      (*(v102 + 8))(v12, v36);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v104);
    }

    if (v39 > 3u)
    {
      if (v39 > 5u)
      {
        v53 = v35;
        if (v39 == 6)
        {
          v109 = 6;
          sub_1B7FC39E0();
          v54 = v93;
          v55 = v103;
          sub_1B80C968C();
          v56 = v102;
          if (v55)
          {
            goto LABEL_21;
          }

          (*(v82 + 8))(v54, v83);
          (*(v56 + 8))(v12, v36);
          swift_unknownObjectRelease();
          v52 = v73;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v109 = 7;
          sub_1B80C35A8();
          v63 = v94;
          v64 = v103;
          sub_1B80C968C();
          v65 = v102;
          if (v64)
          {
            (*(v102 + 8))(v12, v36);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v104);
          }

          (*(v84 + 8))(v63, v34);
          (*(v65 + 8))(v12, v36);
          swift_unknownObjectRelease();
          v52 = v73;
          swift_storeEnumTagMultiPayload();
        }

LABEL_37:
        sub_1B7FC5290(v52, v53, type metadata accessor for FenceClientRequest);
        return __swift_destroy_boxed_opaque_existential_0(v104);
      }

      if (v39 != 4)
      {
        v109 = 5;
        sub_1B80C35FC();
        v58 = v33;
        v59 = v103;
        sub_1B80C968C();
        if (!v59)
        {
          type metadata accessor for Fence.ID(0);
          v109 = 0;
          sub_1B7FCA6E0(&qword_1EBA66B20, type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
          v42 = v79;
          v60 = v87;
          sub_1B80C972C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EB8, &unk_1B80DEEA0);
          type metadata accessor for Fence.TriggerPosition(0);
          v109 = 1;
          sub_1B7FCA6E0(&qword_1EBA67810, type metadata accessor for Fence.TriggerPosition, &protocol conformance descriptor for Fence.TriggerPosition);
          sub_1B80C972C();
          (*(v88 + 8))(v58, v60);
          (*(v102 + 8))(v12, v36);
          swift_unknownObjectRelease();
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      v109 = 4;
      sub_1B80C3650();
      v48 = v103;
      sub_1B80C968C();
      if (!v48)
      {
        v109 = 0;
        sub_1B807F2AC();
        v49 = v71;
        v50 = v86;
        sub_1B80C972C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC8, &unk_1B80D2400);
        sub_1B80C8E2C();
        v109 = 1;
        sub_1B7FCA6E0(&qword_1ED8DBBD8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
        sub_1B80C96CC();
        (*(v85 + 8))(v31, v50);
        (*(v102 + 8))(v12, v36);
        swift_unknownObjectRelease();
LABEL_33:
        swift_storeEnumTagMultiPayload();
        v67 = v49;
        goto LABEL_35;
      }
    }

    else
    {
      v40 = v103;
      if (v39 <= 1u)
      {
        if (!v39)
        {
          v109 = 0;
          sub_1B80C37A0();
          v41 = v89;
          sub_1B80C968C();
          if (!v40)
          {
            type metadata accessor for Fence(0);
            sub_1B7FCA6E0(&qword_1EBA65990, type metadata accessor for Fence, &protocol conformance descriptor for Fence);
            v42 = v69;
            v43 = v75;
            sub_1B80C972C();
            (*(v74 + 8))(v41, v43);
            (*(v102 + 8))(v12, v36);
            swift_unknownObjectRelease();
LABEL_34:
            swift_storeEnumTagMultiPayload();
            v67 = v42;
            goto LABEL_35;
          }

          goto LABEL_21;
        }

        v109 = 1;
        sub_1B80C374C();
        v57 = v91;
        sub_1B80C968C();
        if (!v40)
        {
          type metadata accessor for Fence.ID(0);
          sub_1B7FCA6E0(&qword_1EBA66B20, type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
          sub_1B80C972C();
          (*(v78 + 8))(v57, v32);
          (*(v102 + 8))(v12, v36);
          swift_unknownObjectRelease();
          v66 = v72;
          swift_storeEnumTagMultiPayload();
          v67 = v66;
LABEL_35:
          v52 = v73;
          sub_1B7FC5290(v67, v73, type metadata accessor for FenceClientRequest);
          goto LABEL_36;
        }

        goto LABEL_21;
      }

      if (v39 == 2)
      {
        v109 = 2;
        sub_1B80C36F8();
        v51 = v90;
        sub_1B80C968C();
        if (!v40)
        {
          (*(v76 + 8))(v51, v77);
          (*(v102 + 8))(v12, v36);
          swift_unknownObjectRelease();
          v52 = v73;
          swift_storeEnumTagMultiPayload();
LABEL_36:
          v53 = v35;
          goto LABEL_37;
        }

        goto LABEL_21;
      }

      v109 = 3;
      sub_1B80C36A4();
      v61 = v92;
      sub_1B80C968C();
      if (!v40)
      {
        type metadata accessor for Fence.ID(0);
        sub_1B7FCA6E0(&qword_1EBA66B20, type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v49 = v70;
        v62 = v81;
        sub_1B80C972C();
        (*(v80 + 8))(v61, v62);
        (*(v102 + 8))(v12, v36);
        swift_unknownObjectRelease();
        goto LABEL_33;
      }
    }

LABEL_21:
    (*(v102 + 8))(v12, v36);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v104);
}

uint64_t sub_1B7FC4F70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7FC4F98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7FC4F98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E654665766173 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65466574656C6564 && a2 == 0xEB0000000065636ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365636E6566 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6546747065636361 && a2 == 0xEB0000000065636ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E65466574756DLL && a2 == 0xEA00000000007365 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4672656767697274 && a2 == 0xEC00000065636E65 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7274537472617473 && a2 == 0xEE00676E696D6165 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CE970 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B7FC5258@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1B7FC5290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FenceResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67840, &unk_1B80DEF28);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC0, &qword_1B80D23F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67848, &qword_1B80DEF38);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67850, &qword_1B80DEF40);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v35 - v9;
  v37 = type metadata accessor for Fence(0);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67858, &qword_1B80DEF48);
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for FenceResponse(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67860, &qword_1B80DEF50);
  v49 = *(v18 - 8);
  v50 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC5AD4();
  sub_1B80C99DC();
  sub_1B7FC3978(v48, v17, type metadata accessor for FenceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = v17;
      v27 = v44;
      sub_1B7FC8F2C(v26, v44, &qword_1EBA65EC0, &qword_1B80D23F0);
      v55 = 3;
      sub_1B80C3B9C();
      v28 = v45;
      v29 = v50;
      sub_1B80C974C();
      type metadata accessor for Fence.TriggerID(0);
      sub_1B7FCA6E0(&qword_1EBA67870, type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
      v30 = v47;
      sub_1B80C977C();
      (*(v46 + 8))(v28, v30);
      sub_1B7FB86D4(v27, &qword_1EBA65EC0, &qword_1B80D23F0);
    }

    else
    {
      v52 = 0;
      sub_1B7FC5B28();
      v29 = v50;
      sub_1B80C974C();
      (*(v36 + 8))(v14, v12);
    }

    return (*(v49 + 8))(v20, v29);
  }

  else if (EnumCaseMultiPayload)
  {
    v31 = *v17;
    v54 = 2;
    sub_1B80C3BF0();
    v32 = v41;
    v33 = v50;
    sub_1B80C974C();
    v51 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67828, &qword_1B80DEF10);
    sub_1B7FC9854(&qword_1EBA65948, &qword_1EBA65998, &protocol conformance descriptor for Fence, MEMORY[0x1E69E6300]);
    v34 = v43;
    sub_1B80C97DC();
    (*(v42 + 8))(v32, v34);
    (*(v49 + 8))(v20, v33);
  }

  else
  {
    sub_1B7FC5290(v17, v11, type metadata accessor for Fence);
    v53 = 1;
    sub_1B80C3C44();
    v22 = v38;
    v23 = v50;
    sub_1B80C974C();
    sub_1B7FCA6E0(&qword_1EBA65998, type metadata accessor for Fence, &protocol conformance descriptor for Fence);
    v24 = v40;
    sub_1B80C97DC();
    (*(v39 + 8))(v22, v24);
    sub_1B80C37F4(v11, type metadata accessor for Fence);
    return (*(v49 + 8))(v20, v23);
  }
}

unint64_t sub_1B7FC5AD4()
{
  result = qword_1ED8DC348;
  if (!qword_1ED8DC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC348);
  }

  return result;
}

unint64_t sub_1B7FC5B28()
{
  result = qword_1ED8DC330;
  if (!qword_1ED8DC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC330);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IDSStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B7FC5CCC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1B80C8D3C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1B7FC72F8(v4, v8);
}

void sub_1B7FC5D80(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for FenceResponse(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v9 = a3;
      if (qword_1ED8DD928 != -1)
      {
        swift_once();
      }

      v10 = sub_1B80C900C();
      __swift_project_value_buffer(v10, qword_1ED8DDF88);
      v11 = a3;
      v12 = sub_1B80C8FEC();
      v13 = sub_1B80C93FC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v29 = v15;
        *v14 = 136446466;
        *(v14 + 4) = sub_1B7FB84FC(0x75716552656B616DLL, 0xEF293A5F28747365, &v29);
        *(v14 + 12) = 2082;
        v28[2] = a3;
        v16 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
        v17 = sub_1B80C90EC();
        v19 = sub_1B7FB84FC(v17, v18, &v29);

        *(v14 + 14) = v19;
        _os_log_impl(&dword_1B7FB5000, v12, v13, "%{public}s error %{public}s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CB8970](v15, -1, -1);
        MEMORY[0x1B8CB8970](v14, -1, -1);
      }

      v20 = a3;
      sub_1B8082B94(a3, &v29);
      v21 = v29;
      if (v29 == 12)
      {
        v22 = a3;
        v23 = a3;
      }

      else
      {
        sub_1B7FE5918();
        v23 = swift_allocError();
        *v27 = v21;
      }

      v29 = v23;
      sub_1B80C8ACC();

      v26 = v23;
    }

    else
    {
      sub_1B7FE5918();
      v24 = swift_allocError();
      *v25 = 0;
      v29 = v24;
      sub_1B80C8ACC();
      v26 = v24;
    }
  }

  else
  {
    sub_1B80C8CBC();
    swift_allocObject();
    sub_1B7FC62D8(a1, a2);
    sub_1B80C8CAC();
    sub_1B7FC0854(&qword_1EBA65A50, type metadata accessor for FenceResponse, &protocol conformance descriptor for FenceResponse);
    sub_1B80C8C9C();

    sub_1B80C8ADC();
    sub_1B7FC72F8(a1, a2);
    sub_1B7FC730C(v8, type metadata accessor for FenceResponse);
  }
}

uint64_t sub_1B7FC62D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t FenceResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67880, &qword_1B80DEF58);
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v69 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67888, &qword_1B80DEF60);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67890, &qword_1B80DEF68);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67898, &qword_1B80DEF70);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v53 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA678A0, &qword_1B80DEF78);
  v71 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v53 - v11;
  v13 = type metadata accessor for FenceResponse(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v53 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v53 - v23;
  v25 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1B7FC5AD4();
  v26 = v72;
  sub_1B80C99BC();
  if (!v26)
  {
    v54 = v22;
    v53 = v19;
    v55 = v16;
    v27 = v67;
    v28 = v68;
    v29 = v69;
    v56 = v24;
    v72 = v13;
    v30 = v70;
    v31 = v66;
    v32 = sub_1B80C973C();
    v33 = (2 * *(v32 + 16)) | 1;
    v74 = v32;
    v75 = v32 + 32;
    v76 = 0;
    v77 = v33;
    v34 = sub_1B7FC72BC();
    if (v34 != 4 && v76 == v77 >> 1)
    {
      if (v34 > 1u)
      {
        if (v34 == 2)
        {
          LOBYTE(v78) = 2;
          sub_1B80C3BF0();
          sub_1B80C968C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67828, &qword_1B80DEF10);
          sub_1B7FC9854(&qword_1EBA65940, &qword_1EBA65990, &protocol conformance descriptor for Fence, MEMORY[0x1E69E6330]);
          v41 = v63;
          sub_1B80C972C();
          (*(v62 + 8))(v28, v41);
          (*(v71 + 8))(v12, v31);
          swift_unknownObjectRelease();
          v51 = v53;
          *v53 = v78;
          swift_storeEnumTagMultiPayload();
          v52 = v51;
        }

        else
        {
          LOBYTE(v78) = 3;
          sub_1B80C3B9C();
          v44 = v29;
          sub_1B80C968C();
          type metadata accessor for Fence.TriggerID(0);
          sub_1B7FCA6E0(&qword_1EBA678A8, type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
          v48 = v55;
          v49 = v61;
          sub_1B80C96CC();
          v50 = v71;
          (*(v64 + 8))(v44, v49);
          (*(v50 + 8))(v12, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v52 = v48;
        }
      }

      else
      {
        if (!v34)
        {
          LOBYTE(v78) = 0;
          sub_1B7FC5B28();
          v35 = v65;
          sub_1B80C968C();
          v36 = v71;
          (*(v57 + 8))(v35, v58);
          (*(v36 + 8))(v12, v31);
          swift_unknownObjectRelease();
          v45 = v56;
          swift_storeEnumTagMultiPayload();
LABEL_14:
          sub_1B7FC5290(v45, v30, type metadata accessor for FenceResponse);
          return __swift_destroy_boxed_opaque_existential_0(v73);
        }

        LOBYTE(v78) = 1;
        sub_1B80C3C44();
        sub_1B80C968C();
        v42 = v31;
        v43 = v71;
        type metadata accessor for Fence(0);
        sub_1B7FCA6E0(&qword_1EBA65990, type metadata accessor for Fence, &protocol conformance descriptor for Fence);
        v46 = v54;
        v47 = v59;
        sub_1B80C972C();
        (*(v60 + 8))(v27, v47);
        (*(v43 + 8))(v12, v42);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v52 = v46;
      }

      v45 = v56;
      sub_1B7FC5290(v52, v56, type metadata accessor for FenceResponse);
      goto LABEL_14;
    }

    v37 = sub_1B80C955C();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
    *v39 = v72;
    sub_1B80C969C();
    sub_1B80C954C();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v71 + 8))(v12, v31);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v73);
}

unint64_t sub_1B7FC6D84()
{
  result = qword_1ED8DC2F8;
  if (!qword_1ED8DC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC2F8);
  }

  return result;
}

unint64_t sub_1B7FC6DDC()
{
  result = qword_1ED8DC300;
  if (!qword_1ED8DC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC300);
  }

  return result;
}

unint64_t sub_1B7FC6E34()
{
  result = qword_1ED8DC308;
  if (!qword_1ED8DC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC308);
  }

  return result;
}

unint64_t sub_1B7FC6E9C()
{
  result = qword_1ED8DC310;
  if (!qword_1ED8DC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC310);
  }

  return result;
}

unint64_t sub_1B7FC6EF4()
{
  result = qword_1ED8DC350;
  if (!qword_1ED8DC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC350);
  }

  return result;
}

unint64_t sub_1B7FC6F5C()
{
  result = qword_1ED8DC358;
  if (!qword_1ED8DC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC358);
  }

  return result;
}

unint64_t sub_1B7FC6FB4()
{
  result = qword_1ED8DC320;
  if (!qword_1ED8DC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC320);
  }

  return result;
}

unint64_t sub_1B7FC701C()
{
  result = qword_1ED8DC328;
  if (!qword_1ED8DC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC328);
  }

  return result;
}

unint64_t sub_1B7FC7074()
{
  result = qword_1ED8DC338;
  if (!qword_1ED8DC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC338);
  }

  return result;
}

unint64_t sub_1B7FC70CC()
{
  result = qword_1ED8DC340;
  if (!qword_1ED8DC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC340);
  }

  return result;
}

uint64_t sub_1B7FC7120@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7FC7158(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7FC7158(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684631414 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6566 && a2 == 0xE500000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365636E6566 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972656767697274 && a2 == 0xE900000000000044)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B7FC72C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7FC72F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B7FC3CCC(result, a2);
  }

  return result;
}

uint64_t sub_1B7FC730C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7FC73AC()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1B7FE1DC4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B7FC74E8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  sub_1B7FC730C(v3, type metadata accessor for FenceClientRequest);
  v4 = *(v2 + 16);
  if (v0)
  {
    v5 = sub_1B7FE2DB8;
  }

  else
  {
    v5 = sub_1B7FC76B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FC7644()
{
  v1 = 1684631414;
  v2 = 0x7365636E6566;
  if (*v0 != 2)
  {
    v2 = 0x4972656767697274;
  }

  if (*v0)
  {
    v1 = 0x65636E6566;
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

uint64_t sub_1B7FC76B4()
{
  sub_1B7FC0784(v0[8], v0[7], type metadata accessor for FenceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[7];
  v2 = v0[8];
  if (EnumCaseMultiPayload == 3)
  {
    sub_1B7FC730C(v0[8], type metadata accessor for FenceResponse);
    sub_1B7FC730C(v3, type metadata accessor for FenceResponse);
  }

  else
  {
    v5 = v0[5];
    v6 = v0[6];
    sub_1B7FC730C(v0[7], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa, &unk_1B80D2490);
    swift_allocError();
    v8 = v7;
    sub_1B7FC0784(v2, v7, type metadata accessor for FenceResponse);
    (*(v6 + 56))(v8, 0, 1, v5);
    swift_willThrow();
    sub_1B7FC730C(v2, type metadata accessor for FenceResponse);
  }

  v4 = v0[1];

  return v4();
}

uint64_t Handle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67108, &qword_1B80DA068);
  v5 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v7 = &v41 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FCAE90();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  LOBYTE(v73[0]) = 0;
  v9 = v61;
  v11 = sub_1B80C96DC();
  v59 = v12;
  LOBYTE(v73[0]) = 1;
  v13 = sub_1B80C96AC();
  v58 = v14;
  v54 = v13;
  LOBYTE(v62) = 2;
  sub_1B7FD0358();
  sub_1B80C96CC();
  v53 = LOBYTE(v73[0]);
  LOBYTE(v73[0]) = 3;
  v15 = sub_1B80C96AC();
  v60 = 0;
  v52 = v15;
  v57 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67100, &unk_1B80DA058);
  LOBYTE(v62) = 4;
  sub_1B7FCFDE8();
  v17 = v60;
  sub_1B80C972C();
  if (v17)
  {
    v60 = v17;
    (*(v8 + 8))(v7, v9);
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v51 = v73[0];
    LOBYTE(v73[0]) = 5;
    sub_1B80C96FC();
    v22 = v21;
    LOBYTE(v73[0]) = 6;
    v50 = sub_1B80C96AC();
    v56 = v23;
    LOBYTE(v73[0]) = 7;
    v49 = sub_1B80C96AC();
    v55 = v24;
    LOBYTE(v73[0]) = 8;
    v48 = sub_1B80C96BC();
    v60 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
    LOBYTE(v62) = 9;
    v47 = sub_1B7FCA738(&qword_1ED8DBB80, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    v25 = v60;
    sub_1B80C96CC();
    v60 = v25;
    if (!v25)
    {
      v46 = v73[0];
      LOBYTE(v73[0]) = 10;
      v44 = sub_1B80C96AC();
      v45 = v26;
      LOBYTE(v73[0]) = 11;
      v42 = sub_1B80C96AC();
      v43 = v27;
      v60 = 0;
      LOBYTE(v62) = 12;
      sub_1B80C972C();
      v60 = 0;
      v47 = v73[0];
      v94 = 13;
      v28 = sub_1B80C96AC();
      v41 = v29;
      v60 = 0;
      v30 = v28;
      (*(v8 + 8))(v7, v61);
      v31 = v58;
      *&v62 = v11;
      *(&v62 + 1) = v59;
      v32 = v54;
      *&v63 = v54;
      *(&v63 + 1) = v58;
      v33 = v53;
      LOBYTE(v64) = v53;
      *(&v64 + 1) = v52;
      *&v65 = v57;
      *(&v65 + 1) = v51;
      *&v66 = v22;
      *(&v66 + 1) = v50;
      *&v67 = v56;
      *(&v67 + 1) = v49;
      *&v68 = v55;
      BYTE8(v68) = v48;
      v34 = v45;
      *&v69 = v46;
      *(&v69 + 1) = v44;
      *&v70 = v45;
      *(&v70 + 1) = v42;
      *&v71 = v43;
      *(&v71 + 1) = v47;
      *&v72 = v30;
      *(&v72 + 1) = v41;
      v35 = v71;
      a2[8] = v70;
      a2[9] = v35;
      v36 = v63;
      *a2 = v62;
      a2[1] = v36;
      v37 = v64;
      v38 = v65;
      v39 = v69;
      a2[6] = v68;
      a2[7] = v39;
      v40 = v67;
      a2[4] = v66;
      a2[5] = v40;
      a2[2] = v37;
      a2[3] = v38;
      a2[10] = v72;
      sub_1B7FC8DA4(&v62, v73);
      __swift_destroy_boxed_opaque_existential_0(a1);
      v73[0] = v11;
      v73[1] = v59;
      v73[2] = v32;
      v73[3] = v31;
      v74 = v33;
      *v75 = v96[0];
      *&v75[3] = *(v96 + 3);
      v76 = v52;
      v77 = v57;
      v78 = v51;
      v79 = v22;
      v80 = v50;
      v81 = v56;
      v82 = v49;
      v83 = v55;
      v84 = v48;
      *&v85[3] = *&v95[3];
      *v85 = *v95;
      v86 = v46;
      v87 = v44;
      v88 = v34;
      v89 = v42;
      v90 = v43;
      v91 = v47;
      v92 = v30;
      v93 = v41;
      return sub_1B7FCAD28(v73);
    }

    (*(v8 + 8))(v7, v61);
    v18 = 1;
    v19 = 1;
    v20 = 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);

  if ((v18 & 1) == 0)
  {
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (!v20)
    {
      return result;
    }
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:

  if ((v20 & 1) == 0)
  {
    return result;
  }
}

uint64_t sub_1B7FC8100()
{
  v1 = *v0;
  v2 = 0x65776F6C6C6F662ELL;
  v3 = 0x466572757475662ELL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x676E69646E65702ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69776F6C6C6F662ELL;
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

uint64_t sub_1B7FC81C0()
{
  v1 = 0x6567617373656D2ELL;
  if (*v0 != 1)
  {
    v1 = 0x726568746F2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x41794D646E69662ELL;
  }
}

uint64_t ClientOrigin.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672D0, &qword_1B80DB820);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672D8, &qword_1B80DB828);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672E0, &qword_1B80DB830);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672E8, &unk_1B80DB838);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B7FC87B0();
  v15 = v36;
  sub_1B80C99BC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B80C973C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B7FCD6E4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B80C955C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v24 = &type metadata for ClientOrigin;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1B809BF84();
          sub_1B80C968C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B809BF30();
          v26 = v17;
          sub_1B80C968C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B7FCF568();
        sub_1B80C968C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

unint64_t sub_1B7FC87B0()
{
  result = qword_1ED8DCA68;
  if (!qword_1ED8DCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA68);
  }

  return result;
}

uint64_t sub_1B7FC881C()
{
  v1 = *v0;
  v2 = 0x7265776F6C6C6F66;
  v3 = 0x6F46657275747566;
  v4 = 0x6F46657275747566;
  if (v1 != 3)
  {
    v4 = 0x4F676E69646E6570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69776F6C6C6F66;
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

uint64_t sub_1B7FC88DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t Handle.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[12];
  v4 = v0[20];
  v14 = v0[19];
  v15 = v0[11];
  v5 = v0[21];

  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0x656C646E6148, 0xE600000000000000);
  MEMORY[0x1B8CB7A40](0x6469202020200A3ALL, 0xEA0000000000203ALL);
  MEMORY[0x1B8CB7A40](v1, v2);
  MEMORY[0x1B8CB7A40](0xD00000000000001ALL, 0x80000001B80CBD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v6 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v6);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CBD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DA0, &unk_1B80DA040);
  v7 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v7);

  MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CBD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DA8, &qword_1B80D1BC0);
  v8 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v8);

  MEMORY[0x1B8CB7A40](0x726573202020200ALL, 0xEF203A4449726576);
  if (v5)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (!v5)
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1B8CB7A40](v9, v5);

  MEMORY[0x1B8CB7A40](0xD000000000000019, 0x80000001B80CBDB0);
  v10 = MEMORY[0x1B8CB7B30](v14, MEMORY[0x1E69E6158]);
  MEMORY[0x1B8CB7A40](v10);

  MEMORY[0x1B8CB7A40](0xD000000000000014, 0x80000001B80CBDD0);
  if (v3)
  {
    v11 = v15;
  }

  else
  {
    v11 = 0;
  }

  if (v3)
  {
    v12 = v3;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1B8CB7A40](v11, v12);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B7FC8C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t Friend.handle.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v7 = v21;
  v22 = v6;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1B7FC8DA4(v18, &v17);
}

uint64_t sub_1B7FC8E10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1B7FC8E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t type metadata accessor for Fence.Schedule.Matcher(uint64_t a1)
{
  result = qword_1EBA659A0;
  if (!qword_1EBA659A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7FC8F2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7FC8FC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Fence.ID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for Fence.Variant(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_11;
  }

  v17 = sub_1B80C8E2C();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[14];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[15];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1B7FC91FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Fence.ID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for Fence.Variant(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_13;
  }

  v17 = sub_1B80C8E2C();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[14];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[15];

  return v19(v20, a2, v18);
}

uint64_t FenceDaemonRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67818, &qword_1B80DEF00);
  v4 = *(v3 - 8);
  v15 = v3;
  v16 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67820, &qword_1B80DEF08);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC96B0();
  sub_1B80C99DC();
  sub_1B7FC9704();
  sub_1B80C974C();
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67828, &qword_1B80DEF10);
  sub_1B7FC9854(&qword_1EBA65948, &qword_1EBA65998, &protocol conformance descriptor for Fence, MEMORY[0x1E69E6300]);
  v12 = v15;
  sub_1B80C97DC();
  (*(v16 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1B7FC96B0()
{
  result = qword_1ED8DC040[0];
  if (!qword_1ED8DC040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8DC040);
  }

  return result;
}

unint64_t sub_1B7FC9704()
{
  result = qword_1ED8DC028;
  if (!qword_1ED8DC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC028);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for KoreaFeatureFlag(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KoreaFeatureFlag(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_1B7FC9854(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67828, &qword_1B80DEF10);
    sub_1B7FCA6E0(a2, type metadata accessor for Fence, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B7FC99AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FenceResponse(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1B80C8CBC();
    swift_allocObject();
    sub_1B80C8CAC();
    sub_1B7FC9DD4();
    v11 = sub_1B80C8C9C();
    v15 = v21[1];
    v16 = *(*(v10 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager) + 16);
    MEMORY[0x1EEE9AC00](v11);
    v21[-2] = v15;
    os_unfair_lock_lock((v16 + 32));
    sub_1B7FCA6C4((v16 + 16));
    os_unfair_lock_unlock((v16 + 32));
    swift_storeEnumTagMultiPayload();

    sub_1B80C8CEC();
    swift_allocObject();
    sub_1B80C8CDC();
    sub_1B7FC0854(&qword_1EBA65A58, type metadata accessor for FenceResponse, &protocol conformance descriptor for FenceResponse);
    v17 = sub_1B80C8CCC();
    v19 = v18;
    sub_1B7FC62D8(v17, v18);
    v20 = sub_1B80C8D1C();
    (*(a4 + 16))(a4, v20, 0);

    sub_1B7FC3CCC(v17, v19);

    sub_1B7FC3CCC(v17, v19);
    sub_1B7FC730C(v8, type metadata accessor for FenceResponse);
  }

  else
  {
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa, &unk_1B80D2490);
    v12 = swift_allocError();
    (*(v6 + 56))(v13, 1, 1, v5);
    v14 = sub_1B80C8CFC();
    (*(a4 + 16))(a4, 0, v14);
  }
}

unint64_t sub_1B7FC9DD4()
{
  result = qword_1EBA65A00;
  if (!qword_1EBA65A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A00);
  }

  return result;
}

uint64_t FenceDaemonRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67830, &qword_1B80DEF18);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67838, &qword_1B80DEF20);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC96B0();
  sub_1B80C99BC();
  if (v2)
  {
    goto LABEL_6;
  }

  v20 = a1;
  v11 = v22;
  v10 = v23;
  v12 = sub_1B80C973C();
  v13 = (2 * *(v12 + 16)) | 1;
  v24 = v12;
  v25 = v12 + 32;
  v26 = 0;
  v27 = v13;
  if ((sub_1B7FCA428() & 1) != 0 || v26 != v27 >> 1)
  {
    v14 = sub_1B80C955C();
    swift_allocError();
    v15 = v9;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
    *v17 = &type metadata for FenceDaemonRequest;
    sub_1B80C969C();
    sub_1B80C954C();
    (*(*(v14 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v11 + 8))(v15, v7);
    swift_unknownObjectRelease();
    a1 = v20;
LABEL_6:
    v19 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  sub_1B7FC9704();
  sub_1B80C968C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67828, &qword_1B80DEF10);
  sub_1B7FC9854(&qword_1EBA65940, &qword_1EBA65990, &protocol conformance descriptor for Fence, MEMORY[0x1E69E6330]);
  sub_1B80C972C();
  (*(v21 + 8))(v6, v4);
  (*(v11 + 8))(v9, v7);
  swift_unknownObjectRelease();
  *v10 = v28;
  v19 = v20;
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

unint64_t sub_1B7FCA22C()
{
  result = qword_1ED8DC018;
  if (!qword_1ED8DC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC018);
  }

  return result;
}

unint64_t sub_1B7FCA284()
{
  result = qword_1ED8DC020;
  if (!qword_1ED8DC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC020);
  }

  return result;
}

uint64_t sub_1B7FCA2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70557365636E6566 && a2 == 0xED00006465746164)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

unint64_t sub_1B7FCA37C()
{
  result = qword_1ED8DC030;
  if (!qword_1ED8DC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC030);
  }

  return result;
}

unint64_t sub_1B7FCA3D4()
{
  result = qword_1ED8DC038;
  if (!qword_1ED8DC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC038);
  }

  return result;
}

uint64_t sub_1B7FCA430(void *a1, uint64_t a2)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E90, &unk_1B80D23A0);
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;

  a1[1] = a2;
  v10 = *a1;
  v13 = *(*a1 + 64);
  v12 = *a1 + 64;
  v11 = v13;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v24[2] = v7 + 8;
  v24[3] = v7 + 16;
  v18 = (v4 + 8);
  v27 = a2;
  v28 = v10;

  for (i = 0; v16; result = (*v18)(v23, v26))
  {
    v21 = i;
LABEL_9:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    (*(v7 + 16))(v9, *(v28 + 56) + *(v7 + 72) * (v22 | (v21 << 6)), v6);
    v29 = v27;

    v23 = v25;
    sub_1B80C92EC();
    (*(v7 + 8))(v9, v6);
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
    }

    v16 = *(v12 + 8 * v21);
    ++i;
    if (v16)
    {
      i = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7FCA6E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7FCA738(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66070, &qword_1B80D6930);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7FCA7A4()
{
  v12 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 120);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = v3;
  *(v5 + 88) = v4;
  *(v5 + 96) = v1;
  *(v5 + 104) = v2;
  v8[0] = v3;
  v9 = v4;
  v10 = v1;
  v11 = v2;
  _s18LocationConnectionCMa(0);
  swift_allocObject();

  *(v5 + 56) = sub_1B7FB7494(v8);
  _s20FriendshipConnectionCMa(0);
  swift_allocObject();
  *(v5 + 40) = sub_1B7FB8A84();
  _s18SettingsConnectionCMa(0);
  swift_allocObject();
  *(v5 + 48) = sub_1B7FB9160();
  _s15FenceConnectionCMa(0);
  swift_allocObject();
  *(v5 + 32) = sub_1B7FBAE38();
  v6 = *(v5 + 56);
  *(v0 + 48) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B7FCACA4, v6, 0);
}

unint64_t sub_1B7FCA8E4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x7574617453736469;
      break;
    case 3:
      result = 1684632420;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 11:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x5344646568736168;
      break;
    case 7:
      result = 0x657469726F766166;
      break;
    case 8:
      result = 0x6C62616863616572;
      break;
    case 9:
      result = 0x6E65644968737570;
      break;
    case 10:
      result = 0x614E797474657270;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B7FCAAC8()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCDE68;

  return sub_1B7FBB0F4(0, 0);
}

uint64_t storeEnumTagSinglePayload for Fence.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Fence.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B7FCACA4()
{
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCAD7C, 0, 0);
}

uint64_t sub_1B7FCAD7C()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 56) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FCADF4, v1, 0);
}

uint64_t sub_1B7FCADF4()
{
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCAEE4, 0, 0);
}

unint64_t sub_1B7FCAE90()
{
  result = qword_1ED8DC438;
  if (!qword_1ED8DC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC438);
  }

  return result;
}

uint64_t sub_1B7FCAEE4()
{
  v1 = *(*(v0 + 16) + 48);
  *(v0 + 64) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FCAF5C, v1, 0);
}

uint64_t sub_1B7FCAF5C()
{
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCB04C, 0, 0);
}

uint64_t sub_1B7FCAFE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7FCB04C()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 72) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FCB30C, v1, 0);
}

uint64_t Handle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0x656C646E6148, 0xE600000000000000);
  MEMORY[0x1B8CB7A40](0x6469202020200A3ALL, 0xEA0000000000203ALL);
  MEMORY[0x1B8CB7A40](v1, v2);
  MEMORY[0x1B8CB7A40](0xD00000000000001ALL, 0x80000001B80CBD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v3 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v3);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CBD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DA0, &unk_1B80DA040);
  v4 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v4);

  MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CBD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DA8, &qword_1B80D1BC0);
  v5 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v5);

  MEMORY[0x1B8CB7A40](0xD000000000000014, 0x80000001B80CBDD0);
  v6 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v6);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B7FCB30C()
{
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCAAC8, 0, 0);
}

uint64_t sub_1B7FCB390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FCB400()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCC45C;

  return sub_1B7FC225C();
}

uint64_t ClientID.ConnectionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676B8, &qword_1B80DE6B8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676C0, &qword_1B80DE6C0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676C8, &qword_1B80DE6C8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FCE400();
  v12 = v31;
  sub_1B80C99BC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B80C973C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B7FCC41C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B80C955C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v22 = &type metadata for ClientID.ConnectionType;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B80C0BE0();
        sub_1B80C968C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B7FCE2A0();
        sub_1B80C968C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_1B7FCB958()
{
  v1 = v0[4];
  v2 = v0[3];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x1E69E8650], v0[5]);
  sub_1B80C934C();
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FCE52C;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v2, v3, 0xD00000000000001DLL, 0x80000001B80CD2E0, sub_1B7FCD6E8, v4, v6);
}

uint64_t sub_1B7FCBAE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66090, &qword_1B80D2CF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66080, &unk_1B80D2C48);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_stewieStateUpdateContinuation;
  swift_beginAccess();
  sub_1B7FCD754(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t ClientID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v50 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v46 - v8;
  v55 = sub_1B80C8E9C();
  v53 = *(v55 - 8);
  v9 = MEMORY[0x1EEE9AC00](v55);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676D0, &qword_1B80DE6D0);
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for ClientID(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FD03B0();
  v19 = v57;
  sub_1B80C99BC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v48 = v11;
  v57 = v16;
  v20 = v18;
  v21 = v53;
  v62 = 0;
  v22 = sub_1B7FCE654(&qword_1EBA65A60, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v23 = v55;
  v24 = v15;
  sub_1B80C972C();
  v47 = v22;
  v26 = *(v21 + 32);
  v26(v20, v56, v23);
  v60 = 1;
  sub_1B7FCE4D8();
  sub_1B80C972C();
  v56 = v26;
  v27 = v57;
  *(v20 + *(v57 + 20)) = v61;
  v59 = 3;
  v28 = sub_1B80C96AC();
  v29 = (v20 + *(v27 + 24));
  *v29 = v28;
  v29[1] = v30;
  v58 = 2;
  v31 = v52;
  v32 = v55;
  sub_1B80C96CC();
  v46 = v24;
  v47 = v13;
  v33 = v50;
  sub_1B7FCB390(v31, v50);
  v34 = (*(v21 + 48))(v33, 1, v32);
  v35 = v34 == 1;
  v36 = v31;
  v37 = v54;
  if (v35)
  {
    sub_1B7FB86D4(v33, &qword_1EBA667B0, &qword_1B80D68E8);
    sub_1B80C89DC();
    v38 = sub_1B80C89BC();
    if (v38)
    {
      v39 = v38;
      v40 = v49;
      sub_1B80C942C();

      v41 = 0;
      v45 = v51;
    }

    else
    {
      v41 = 1;
      v45 = v51;
      v40 = v49;
    }

    sub_1B7FB86D4(v52, &qword_1EBA667B0, &qword_1B80D68E8);
    (*(v37 + 8))(v46, v47);
    (*(v21 + 56))(v40, v41, 1, v55);
    sub_1B7FD0774(v40, v20 + *(v57 + 28));
  }

  else
  {
    sub_1B7FB86D4(v36, &qword_1EBA667B0, &qword_1B80D68E8);
    (*(v37 + 8))(v46, v47);
    v42 = v48;
    v43 = v56;
    (v56)(v48, v33, v32);
    v44 = *(v57 + 28);
    v43(v20 + v44, v42, v32);
    (*(v21 + 56))(v20 + v44, 0, 1, v32);
    v45 = v51;
  }

  sub_1B7FD0710(v20, v45);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1B7FD06B4(v20);
}

uint64_t sub_1B7FCC28C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66158, &qword_1B80D3350);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCB958, v1, 0);
}

uint64_t sub_1B7FCC380()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE788;
  v2 = *(v0 + 16);

  return sub_1B7FCC28C(v2);
}

uint64_t sub_1B7FCC45C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7FCC380, 0, 0);
}

uint64_t objectdestroyTm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_1B7FC3CCC(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t objectdestroyTm_2(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t LocationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DF0, &qword_1B80D1ED0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FDC188();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  LOBYTE(v29) = 0;
  sub_1B7FDC3C8(&qword_1ED8DBB88, sub_1B7FDC440, MEMORY[0x1E69E6330]);
  sub_1B80C972C();
  v9 = v32;
  LOBYTE(v29) = 1;
  sub_1B7FCFC68();
  sub_1B80C972C();
  v10 = v32;
  LOBYTE(v29) = 2;
  sub_1B7FCFB00();
  sub_1B80C972C();
  v43 = v10;
  v27 = v32;
  v11 = v34;
  v26 = v33;
  v28 = v35;
  LOBYTE(v32) = 3;
  v12 = sub_1B80C96EC();
  v24 = v11;
  v25 = v12;
  LOBYTE(v29) = 4;
  sub_1B7FD0518();
  sub_1B80C972C();
  v23 = v32;
  LOBYTE(v29) = 5;
  sub_1B7FCE8E8();
  sub_1B80C972C();
  LODWORD(v11) = v32;
  LOBYTE(v32) = 6;
  HIDWORD(v21) = sub_1B80C96EC();
  v22 = v11;
  v44 = 7;
  v13 = sub_1B80C96EC();
  v25 &= 1u;
  LOBYTE(v11) = BYTE4(v21) & 1;
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  HIDWORD(v21) = v14 & 1;
  *&v29 = v9;
  v15 = v43;
  BYTE8(v29) = v43;
  v16 = v27;
  LOBYTE(v30) = v27;
  v17 = v26;
  v18 = v24;
  *(&v30 + 1) = v26;
  *v31 = v24;
  *&v31[8] = v28;
  v31[16] = v25;
  v31[17] = v23;
  v31[18] = v22;
  v31[19] = v11;
  v31[20] = BYTE4(v21);
  v19 = v30;
  *a2 = v29;
  *(a2 + 16) = v19;
  *(a2 + 32) = *v31;
  *(a2 + 45) = *&v31[13];
  sub_1B7FCE69C(&v29, &v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32 = v9;
  LOBYTE(v33) = v15;
  LOBYTE(v34) = v16;
  v35 = v17;
  v36 = v18;
  v37 = v28;
  v38 = v25;
  v39 = v23;
  v40 = v22;
  v41 = v11;
  v42 = BYTE4(v21);
  return sub_1B7FD0404(&v32);
}

uint64_t sub_1B7FCCC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  v18 = sub_1B80C92CC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a1, v10);
  v19 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = v19;
  *(v21 + 4) = a2;
  (*(v11 + 32))(&v21[v20], v14, v10);
  *&v21[(v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;
  swift_retain_n();
  sub_1B80A1D3C(0, 0, v17, v24, v21);
}

uint64_t sub_1B7FCCEC0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v2, *(v0 + 88), v3);
  v6 = swift_allocObject();
  v1(v6 + v4, v2, v3);
  *(v0 + 48) = sub_1B7FCE2F8;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_358;
  v7 = _Block_copy((v0 + 16));

  [v5 startMonitoringStewieStateWithCompletion_];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B7FCD090()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1B7FCD170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7FCD1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RequestOrigin.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672F8, &qword_1B80DB850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FCFAAC();
  sub_1B80C99BC();
  if (!v2)
  {
    v18 = 0;
    sub_1B7FCFA58();
    sub_1B80C972C();
    v9 = v19;
    v17 = 1;
    v15 = sub_1B80C970C();
    v16 = 2;
    v11 = sub_1B80C96AC();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v15;
    *(a2 + 16) = v11;
    *(a2 + 24) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B7FCD3F4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B7FCD8D0;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v11, v12);
}

uint64_t sub_1B7FCD5A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B7FCD7C4(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B7FCD754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66090, &qword_1B80D2CF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FCD7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCD3F4, a4, 0);
}

uint64_t sub_1B7FCD8D0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8047B18;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B7FCCEC0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t storeEnumTagSinglePayload for SecureLocationsStewie.ServiceState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B7FCDB50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7FD0238(a2, a3);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocationsStewie.ServiceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1B7FCDC7C()
{
  v1 = *v0;
  v2 = 0x656C646E61486F74;
  v3 = 0xD000000000000017;
  if (v1 != 6)
  {
    v3 = 0x6465686361437369;
  }

  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 0x5268736572666572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E696769726FLL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x797469726F697270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B7FCDD9C()
{
  v1 = 0x6950746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E696769726FLL;
  }
}

uint64_t sub_1B7FCDE04()
{
  v1 = 0x736567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7041794D646E6966;
  }
}

uint64_t sub_1B7FCDE68()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7FCE02C, 0, 0);
}

uint64_t sub_1B7FCDF64()
{
  v1 = 1684632949;
  v2 = 0x656E6E6F43637078;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x697463656E6E6F63;
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

uint64_t sub_1B7FCDFF4()
{
  if (*v0)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 6516856;
  }
}

uint64_t sub_1B7FCE02C()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A2604;

  return sub_1B7FB96B0(0, 0);
}

uint64_t type metadata accessor for ClientID(uint64_t a1)
{
  result = qword_1ED8DD698;
  if (!qword_1ED8DD698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7FCE114(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t storeEnumTagSinglePayload for DeviceWithCompanion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B7FCE2A0()
{
  result = qword_1ED8DC3C8;
  if (!qword_1ED8DC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceWithCompanion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B7FCE38C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    return sub_1B80C927C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    return sub_1B80C928C();
  }
}

unint64_t sub_1B7FCE400()
{
  result = qword_1ED8DC3E0;
  if (!qword_1ED8DC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3E0);
  }

  return result;
}

uint64_t objectdestroy_16Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

unint64_t sub_1B7FCE4D8()
{
  result = qword_1EBA65968;
  if (!qword_1EBA65968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65968);
  }

  return result;
}

uint64_t sub_1B7FCE52C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1B7FCE6D4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1B7FEA684;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FCE654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7FCE6D4()
{
  v1 = *(v0 + 16);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66160, &qword_1B80D3358);
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

FindMyLocate::LegacyRefreshCommandReason_optional __swiftcall LegacyRefreshCommandReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 15;
  if (rawValue < 0xF)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B7FCE7A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B7FCE894()
{
  result = qword_1ED8DC440;
  if (!qword_1ED8DC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC440);
  }

  return result;
}

unint64_t sub_1B7FCE8E8()
{
  result = qword_1ED8DBBA8;
  if (!qword_1ED8DBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBA8);
  }

  return result;
}

uint64_t _s12FindMyLocate6HandleV13isPhoneNumberySbSSFZ_0(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB60]) initWithTypes:2048 error:v16];
  if (v2)
  {
    v3 = v2;
    v4 = v16[0];
    v5 = sub_1B80C90AC();
    v6 = [v3 matchesInString:v5 options:0 range:{0, sub_1B80C912C()}];

    sub_1B7FCEB58();
    v7 = sub_1B80C921C();

    if (v7 >> 62)
    {
      v8 = sub_1B80C963C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      return 1;
    }
  }

  else
  {
    v10 = v16[0];
    v11 = sub_1B80C8D0C();

    swift_willThrow();
    if (qword_1EBA65AA8 != -1)
    {
      swift_once();
    }

    v12 = sub_1B80C900C();
    __swift_project_value_buffer(v12, qword_1EBA7ACB0);
    v13 = sub_1B80C8FEC();
    v14 = sub_1B80C93FC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B7FB5000, v13, v14, "Failed to create PhoneNumbersDetector", v15, 2u);
      MEMORY[0x1B8CB8970](v15, -1, -1);
    }
  }

  return 0;
}

unint64_t sub_1B7FCEB58()
{
  result = qword_1ED8DBBE0;
  if (!qword_1ED8DBBE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8DBBE0);
  }

  return result;
}

FindMyLocate::LegacyRefreshSchedule_optional __swiftcall LegacyRefreshSchedule.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B7FCEC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8BAC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v22 = a1;
  v23 = a2;

  if (_s12FindMyLocate6HandleV13isPhoneNumberySbSSFZ_0(a1, a2))
  {
    v21[0] = a1;
    v21[1] = a2;
    sub_1B80C8B8C();
    sub_1B80C8B9C();
    v11 = *(v5 + 8);
    v11(v10, v4);
    sub_1B7FB6CB8();
    v12 = sub_1B80C947C();
    v11(v8, v4);

    v21[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
    sub_1B807E2E0();
    v13 = sub_1B80C906C();
    v15 = v14;

    v22 = v13;
    v23 = v15;

    v16 = sub_1B808E5E4(v13, v15);
    v18 = v17;

    if (v18)
    {
      if (v16 == 43 && v18 == 0xE100000000000000)
      {
      }

      else
      {
        v19 = sub_1B80C981C();

        if ((v19 & 1) == 0)
        {
          sub_1B80C914C();
        }
      }
    }
  }

  return v22;
}

unint64_t sub_1B7FCEE34()
{
  result = qword_1ED8DC448;
  if (!qword_1ED8DC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC448);
  }

  return result;
}

uint64_t Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v95 = a8;
  v96 = a5;
  v97 = a3;
  v98 = a4;
  v93 = a7;
  v94 = a10;
  v99 = sub_1B80C8E2C();
  v14 = *(v99 - 8);
  v15 = MEMORY[0x1EEE9AC00](v99);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v84 = &v81 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v88 = &v81 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v86 = &v81 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v90 = &v81 - v23;
  sub_1B7FCEC00(a1, a2);

  v92 = sub_1B80C90FC();
  v25 = v24;

  v26 = 1 << *(a6 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a6 + 64);
  v29 = (v26 + 63) >> 6;
  v89 = (v14 + 32);
  v85 = v14 + 40;
  v91 = v25;

  v30 = 0;
  v100 = MEMORY[0x1E69E7CC8];
  while (v28)
  {
LABEL_4:
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v32 = *(*(a6 + 56) + 8 * (v31 | (v30 << 6)));

    v33 = sub_1B80C967C();

    if (v33 <= 2)
    {
      if (v32 == 0.0)
      {
        v35 = v86;
        sub_1B80C8D6C();
        v82 = *v89;
        v82(v88, v35, v99);
        v36 = v100;
        LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
        v101 = v36;
        v38 = sub_1B7FDA32C(v33);
        v39 = v36[2];
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          result = sub_1B80C986C();
          __break(1u);
          return result;
        }

        if (v36[3] >= v41)
        {
          if ((v83 & 1) == 0)
          {
            LODWORD(v100) = v37;
            sub_1B8092758();
            LOBYTE(v37) = v100;
          }
        }

        else
        {
          LODWORD(v100) = v37;
          sub_1B80916B8(v41, v83);
          v42 = sub_1B7FDA32C(v33);
          v43 = v37 & 1;
          LOBYTE(v37) = v100;
          if ((v100 & 1) != v43)
          {
            goto LABEL_44;
          }

          v38 = v42;
        }

        v54 = v101;
        v100 = v101;
        if (v37)
        {
          (*(v14 + 40))(v101[7] + *(v14 + 72) * v38, v88, v99);
        }

        else
        {
          v101[(v38 >> 6) + 8] |= 1 << v38;
          *(v54[6] + v38) = v33;
          v82((v54[7] + *(v14 + 72) * v38), v88, v99);
          v55 = v54[2];
          v51 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v51)
          {
            goto LABEL_42;
          }

          v54[2] = v56;
        }
      }

      else
      {
        v44 = v84;
        sub_1B80C8DCC();
        v83 = *v89;
        v83(v87, v44, v99);
        v45 = v100;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v45;
        v47 = sub_1B7FDA32C(v33);
        v49 = v45[2];
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
          goto LABEL_41;
        }

        if (v45[3] >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v100 = v47;
            v60 = v48;
            sub_1B8092758();
            LOBYTE(v48) = v60;
            v47 = v100;
          }
        }

        else
        {
          LODWORD(v100) = v48;
          sub_1B80916B8(v52, isUniquelyReferenced_nonNull_native);
          v47 = sub_1B7FDA32C(v33);
          v53 = v48 & 1;
          LOBYTE(v48) = v100;
          if ((v100 & 1) != v53)
          {
            goto LABEL_44;
          }
        }

        v57 = v101;
        v100 = v101;
        if (v48)
        {
          (*(v14 + 40))(v101[7] + *(v14 + 72) * v47, v87, v99);
        }

        else
        {
          v101[(v47 >> 6) + 8] |= 1 << v47;
          *(v57[6] + v47) = v33;
          v83((v57[7] + *(v14 + 72) * v47), v87, v99);
          v58 = v57[2];
          v51 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v51)
          {
            goto LABEL_43;
          }

          v57[2] = v59;
        }
      }
    }
  }

  while (1)
  {
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v34 >= v29)
    {
      break;
    }

    v28 = *(a6 + 64 + 8 * v34);
    ++v30;
    if (v28)
    {
      v30 = v34;
      goto LABEL_4;
    }
  }

  v61 = v100;

  v62 = v90;
  sub_1B80C8E1C();
  sub_1B80C8DDC();
  v64 = v63;
  (*(v14 + 8))(v62, v99);
  v65 = v93;
  v66 = *(v93 + 16);
  if (v66)
  {
    v101 = MEMORY[0x1E69E7CC0];
    sub_1B7FCF988(0, v66, 0);
    v67 = v101;
    v68 = v65 + 40;
    do
    {
      v69 = sub_1B80C90FC();
      v101 = v67;
      v72 = v67[2];
      v71 = v67[3];
      if (v72 >= v71 >> 1)
      {
        v74 = v69;
        v75 = v70;
        sub_1B7FCF988((v71 > 1), v72 + 1, 1);
        v70 = v75;
        v69 = v74;
        v67 = v101;
      }

      v67[2] = v72 + 1;
      v73 = &v67[2 * v72];
      v73[4] = v69;
      v73[5] = v70;
      v68 += 16;
      --v66;
    }

    while (v66);
    v61 = v100;
  }

  else
  {

    v67 = MEMORY[0x1E69E7CC0];
  }

  v78 = v91;
  v77 = v92;
  *a9 = v92;
  *(a9 + 8) = v78;
  *(a9 + 16) = v77;
  *(a9 + 24) = v78;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = v61;
  *(a9 + 64) = floor(v64 * 1000.0);
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  v79 = v94;
  *(a9 + 88) = v95;
  *(a9 + 96) = v79;
  *(a9 + 104) = 1;
  v80 = v97;
  *(a9 + 112) = v96;
  *(a9 + 120) = 0u;
  *(a9 + 136) = 0u;
  *(a9 + 152) = v67;
  *(a9 + 160) = v80;
  *(a9 + 168) = v98;
  return result;
}

unint64_t sub_1B7FCF568()
{
  result = qword_1EBA672C8;
  if (!qword_1EBA672C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA672C8);
  }

  return result;
}

char *sub_1B7FCF5BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for LegacyRefreshSchedule(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t Handle.init(withID:qualifiedIdentifier:serverID:idsStatus:dsid:expiresByGroupId:trackingTimestamp:hashedDSID:favoriteOrder:reachable:pushIdentifiers:prettyName:contactIdentifier:siblingIdentifiers:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v30 = *a7;
  v31 = sub_1B80C90FC();
  v49 = v32;

  if (a4)
  {
    a3 = sub_1B80C90FC();
    v48 = v33;
  }

  else
  {
    v48 = 0;
  }

  v34 = *(a23 + 16);
  if (v34)
  {
    v44 = v31;
    v45 = v30;
    v46 = a5;
    v47 = a6;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1B7FCF988(0, v34, 0);
    v35 = v50;
    v36 = a23 + 40;
    do
    {
      v37 = sub_1B80C90FC();
      v39 = v38;
      v41 = *(v50 + 16);
      v40 = *(v50 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1B7FCF988((v40 > 1), v41 + 1, 1);
      }

      *(v50 + 16) = v41 + 1;
      v42 = v50 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      v36 += 16;
      --v34;
    }

    while (v34);

    a5 = v46;
    a6 = v47;
    v30 = v45;
    v31 = v44;
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  *a9 = v31;
  *(a9 + 8) = v49;
  *(a9 + 16) = a3;
  *(a9 + 24) = v48;
  *(a9 + 32) = v30;
  *(a9 + 40) = a8;
  *(a9 + 48) = a11;
  *(a9 + 56) = a12;
  *(a9 + 64) = a10;
  *(a9 + 72) = a13;
  *(a9 + 80) = a14;
  *(a9 + 88) = a15;
  *(a9 + 96) = a16;
  *(a9 + 104) = a17;
  *(a9 + 112) = a18;
  *(a9 + 120) = a19;
  *(a9 + 128) = a20;
  *(a9 + 136) = a21;
  *(a9 + 144) = a22;
  *(a9 + 152) = v35;
  *(a9 + 160) = a5;
  *(a9 + 168) = a6;
  return result;
}

char *sub_1B7FCF988(char *a1, int64_t a2, char a3)
{
  result = sub_1B7FCF5BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for LegacyRefreshSchedule(uint64_t result, unsigned int a2, unsigned int a3)
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