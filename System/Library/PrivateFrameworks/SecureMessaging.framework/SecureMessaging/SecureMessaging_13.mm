uint64_t partial apply for implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4);
}

uint64_t sub_26505E54C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t instantiation function for generic protocol witness table for MLS.SelfHealOperation<A, B, C>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.SelfHealOperation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLS.KeyPackageProvider(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Logger();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.SelfHealOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 280) + **(*v4 + 280));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x534C4D7466697753;
    v12 = 0xEE0074696D6D6F43;
    v13 = 0x6148646E6F636553;
    v14 = 0xEF656B616873646ELL;
    if (a1 != 8)
    {
      v13 = 0xD000000000000016;
      v14 = 0x80000002651E7960;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0xD000000000000010;
    v16 = 0x80000002651E7900;
    if (a1 != 5)
    {
      v15 = 0xD000000000000013;
      v16 = 0x80000002651E7920;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6341746E65696C43;
    v5 = 0xEB00000000726F74;
    v6 = 0x5864726177726F46;
    v7 = 0xEA00000000004350;
    if (a1 != 3)
    {
      v6 = 0x676E6975657551;
      v7 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x6E61487473726946;
    if (a1)
    {
      v3 = 0xEE00656B61687364;
    }

    else
    {
      v8 = 0x646E456F54646E45;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xEB00000000726F74;
        if (v9 != 0x6341746E65696C43)
        {
          goto LABEL_57;
        }
      }

      else if (a2 == 3)
      {
        v17 = 0xEA00000000004350;
        if (v9 != 0x5864726177726F46)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x676E6975657551)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_55;
    }

    if (!a2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x646E456F54646E45)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v18 = 0x6E61487473726946;
    v19 = 0x656B61687364;
LABEL_52:
    v17 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v9 != v18)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  if (a2 > 6u)
  {
    if (a2 != 7)
    {
      if (a2 == 8)
      {
        v17 = 0xEF656B616873646ELL;
        if (v9 != 0x6148646E6F636553)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0x80000002651E7960;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_55;
    }

    v18 = 0x534C4D7466697753;
    v19 = 0x74696D6D6F43;
    goto LABEL_52;
  }

  if (a2 == 5)
  {
    v17 = 0x80000002651E7900;
    if (v9 != 0xD000000000000010)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0x80000002651E7920;
    if (v9 != 0xD000000000000013)
    {
LABEL_57:
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v20 = 1;
LABEL_58:

  return v20 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Void __swiftcall MetricCollector.start(metric:)(SecureMessaging::Metric metric)
{
  v1 = metric;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = *v1;
  if (v5 > 4)
  {
    v14 = 0xEE0074696D6D6F43;
    v15 = 0x534C4D7466697753;
    v16 = 0xEF656B616873646ELL;
    v17 = 0x6148646E6F636553;
    if (v5 != 8)
    {
      v17 = 0xD000000000000016;
      v16 = 0x80000002651E7960;
    }

    if (v5 != 7)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = 0xD000000000000010;
    v19 = 0x80000002651E7900;
    if (v5 != 5)
    {
      v18 = 0xD000000000000013;
      v19 = 0x80000002651E7920;
    }

    if (*v1 <= 6u)
    {
      v12 = v18;
    }

    else
    {
      v12 = v15;
    }

    if (v5 <= 6)
    {
      v13 = v19;
    }

    else
    {
      v13 = v14;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
    v7 = 0x646E456F54646E45;
    v8 = 0xEB00000000726F74;
    v9 = 0x6341746E65696C43;
    v10 = 0xEA00000000004350;
    v11 = 0x5864726177726F46;
    if (v5 != 3)
    {
      v11 = 0x676E6975657551;
      v10 = 0xE700000000000000;
    }

    if (v5 != 2)
    {
      v9 = v11;
      v8 = v10;
    }

    if (*v1)
    {
      v7 = 0x6E61487473726946;
      v6 = 0xEE00656B61687364;
    }

    if (*v1 <= 1u)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    if (v5 <= 1)
    {
      v13 = v6;
    }

    else
    {
      v13 = v8;
    }
  }

  Date.init()();
  v20 = type metadata accessor for MetricCollector.Event(0);
  v21 = *(v20 + 20);
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(&v4[v21], 1, 1, v22);
  (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
  specialized Dictionary.subscript.setter(v4, v12, v13);
}

Swift::Void __swiftcall MetricCollector.end(metric:)(SecureMessaging::Metric metric)
{
  v2 = metric;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for MetricCollector.Event(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = *v2;
  if (v13 > 4)
  {
    if (*v2 <= 6u)
    {
      if (v13 == 5)
      {
        v15 = 0xD000000000000010;
      }

      else
      {
        v15 = 0xD000000000000013;
      }

      if (v13 == 5)
      {
        v14 = 0x80000002651E7900;
      }

      else
      {
        v14 = 0x80000002651E7920;
      }

      goto LABEL_25;
    }

    v16 = 0xEE0074696D6D6F43;
    v17 = 0x534C4D7466697753;
    v18 = 0xEF656B616873646ELL;
    v19 = 0x6148646E6F636553;
    if (v13 != 8)
    {
      v19 = 0xD000000000000016;
      v18 = 0x80000002651E7960;
    }

    v20 = v13 == 7;
    goto LABEL_11;
  }

  if (*v2 <= 1u)
  {
    v16 = 0xE800000000000000;
    v17 = 0x646E456F54646E45;
    v18 = 0xEE00656B61687364;
    v19 = 0x6E61487473726946;
    v20 = v13 == 0;
LABEL_11:
    if (v20)
    {
      v15 = v17;
    }

    else
    {
      v15 = v19;
    }

    if (v20)
    {
      v14 = v16;
    }

    else
    {
      v14 = v18;
    }

    goto LABEL_25;
  }

  if (v13 == 2)
  {
    v14 = 0xEB00000000726F74;
    v15 = 0x6341746E65696C43;
  }

  else if (v13 == 3)
  {
    v14 = 0xEA00000000004350;
    v15 = 0x5864726177726F46;
  }

  else
  {
    v14 = 0xE700000000000000;
    v15 = 0x676E6975657551;
  }

LABEL_25:
  v21 = *v1;
  if (*(*v1 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14), (v23 & 1) != 0))
  {
    outlined init with copy of MetricCollector.Event(*(v21 + 56) + *(v7 + 72) * v22, v10);
    outlined init with take of MetricCollector.Event(v10, v12);
    v24 = type metadata accessor for Date();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v5, v12, v24);
    v26 = *(v6 + 20);

    Date.init()();
    (*(v25 + 56))(&v5[v26], 0, 1, v24);
    (*(v7 + 56))(v5, 0, 1, v6);
    specialized Dictionary.subscript.setter(v5, v15, v14);
    outlined destroy of MetricCollector.Event(v12);
  }

  else
  {
  }
}

SecureMessaging::MetricCollector __swiftcall MetricCollector.init()()
{
  v1 = v0;
  result.events._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v1->events._rawValue = result.events._rawValue;
  return result;
}

SecureMessaging::Metric_optional __swiftcall Metric.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Metric.init(rawValue:), v3);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t Metric.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x534C4D7466697753;
    v7 = 0x6148646E6F636553;
    if (v1 != 8)
    {
      v7 = 0xD000000000000016;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000010;
    if (v1 != 5)
    {
      v8 = 0xD000000000000013;
    }

    if (*v0 <= 6u)
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
    v2 = 0x646E456F54646E45;
    v3 = 0x6341746E65696C43;
    v4 = 0x5864726177726F46;
    if (v1 != 3)
    {
      v4 = 0x676E6975657551;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6E61487473726946;
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
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Metric()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Metric(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Metric@<X0>(unint64_t *a1@<X8>)
{
  result = Metric.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MetricCollector.Event.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricCollector.Event.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MetricCollector.Event(0) + 20);

  return outlined init with copy of Date?(v3, a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MetricCollector.Event.CodingKeys()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetricCollector.Event.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetricCollector.Event.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetricCollector.Event.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricCollector.Event.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15MetricCollectorV5EventV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15MetricCollectorV5EventV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for MetricCollector.Event(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MetricCollector.Event.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v30 = type metadata accessor for Date();
  v26 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15MetricCollectorV5EventV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15MetricCollectorV5EventV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMR);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for MetricCollector.Event(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v12;
  v23 = v6;
  v24 = v14;
  v32 = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v15 = v27;
  v16 = v28;
  v17 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 32))(v24, v15, v17);
  v31 = 1;
  v18 = v23;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v29 + 8))(v11, v16);
  v19 = v24;
  outlined init with take of Date?(v18, &v24[*(v22 + 20)]);
  outlined init with copy of MetricCollector.Event(v19, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of MetricCollector.Event(v19);
}

uint64_t MetricCollector.Event.init(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for MetricCollector.Event(0) + 20);

  return outlined init with take of Date?(a2, v7);
}

Swift::Void __swiftcall MetricCollector.start(label:)(Swift::String label)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;

  Date.init()();
  v6 = type metadata accessor for MetricCollector.Event(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  specialized Dictionary.subscript.setter(v5, countAndFlagsBits, object);
}

uint64_t type metadata accessor for MetricCollector.Event(uint64_t a1)
{
  result = type metadata singleton initialization cache for MetricCollector.Event;
  if (!type metadata singleton initialization cache for MetricCollector.Event)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall MetricCollector.end(label:)(Swift::String label)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for MetricCollector.Event(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *v1;
  if (*(v14 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v16)
    {
      outlined init with copy of MetricCollector.Event(*(v14 + 56) + *(v8 + 72) * v15, v11);
      outlined init with take of MetricCollector.Event(v11, v13);
      v17 = type metadata accessor for Date();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v6, v13, v17);
      v19 = *(v7 + 20);

      Date.init()();
      (*(v18 + 56))(&v6[v19], 0, 1, v17);
      (*(v8 + 56))(v6, 0, 1, v7);
      specialized Dictionary.subscript.setter(v6, countAndFlagsBits, object);
      outlined destroy of MetricCollector.Event(v13);
    }
  }
}

uint64_t MetricCollector.add(event:label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  outlined init with copy of MetricCollector.Event(a1, &v11 - v7);
  v9 = type metadata accessor for MetricCollector.Event(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);

  return specialized Dictionary.subscript.setter(v8, a2, a3);
}

Swift::Double_optional __swiftcall MetricCollector.interval(metric:)(SecureMessaging::Metric metric)
{
  v1 = *metric;
  if (v1 > 4)
  {
    v10 = 0xEE0074696D6D6F43;
    v11 = 0x534C4D7466697753;
    v12 = 0xEF656B616873646ELL;
    v13 = 0x6148646E6F636553;
    if (v1 != 8)
    {
      v13 = 0xD000000000000016;
      v12 = 0x80000002651E7960;
    }

    if (v1 != 7)
    {
      v11 = v13;
      v10 = v12;
    }

    v14 = 0xD000000000000010;
    v15 = 0x80000002651E7900;
    if (v1 != 5)
    {
      v14 = 0xD000000000000013;
      v15 = 0x80000002651E7920;
    }

    if (*metric <= 6u)
    {
      v8 = v14;
    }

    else
    {
      v8 = v11;
    }

    if (v1 <= 6)
    {
      v9 = v15;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x646E456F54646E45;
    v4 = 0xEB00000000726F74;
    v5 = 0x6341746E65696C43;
    v6 = 0xEA00000000004350;
    v7 = 0x5864726177726F46;
    if (v1 != 3)
    {
      v7 = 0x676E6975657551;
      v6 = 0xE700000000000000;
    }

    if (v1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    if (*metric)
    {
      v3 = 0x6E61487473726946;
      v2 = 0xEE00656B61687364;
    }

    if (*metric <= 1u)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }

    if (v1 <= 1)
    {
      v9 = v2;
    }

    else
    {
      v9 = v4;
    }
  }

  v16 = v9;
  v20 = MetricCollector.interval(label:)(*&v8);
  is_nil = v20.is_nil;

  v19 = is_nil;
  result.value = v18;
  result.is_nil = v19;
  return result;
}

Swift::Double_optional __swiftcall MetricCollector.interval(label:)(Swift::String label)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Date();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetricCollector.Event(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *v1;
  if (*(v18 + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v20)
    {
      outlined init with copy of MetricCollector.Event(*(v18 + 56) + *(v11 + 72) * v19, v14);
      outlined init with take of MetricCollector.Event(v14, v17);
      outlined init with copy of Date?(&v17[*(v10 + 20)], v6);
      v21 = v26;
      if ((*(v26 + 48))(v6, 1, v7) != 1)
      {
        (*(v21 + 32))(v9, v6, v7);
        Date.timeIntervalSince(_:)();
        v24 = v23;
        (*(v21 + 8))(v9, v7);
        outlined destroy of MetricCollector.Event(v17);
        v22 = v24;
        goto LABEL_7;
      }

      outlined destroy of MetricCollector.Event(v17);
      outlined destroy of NSObject?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v22 = 0;
LABEL_7:
  result.value = v15;
  result.is_nil = v22;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetricCollector.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetricCollector.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetricCollector.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricCollector.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15MetricCollectorV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15MetricCollectorV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15SecureMessaging15MetricCollectorV5EventVGMd, &_sSDySS15SecureMessaging15MetricCollectorV5EventVGMR);
  lazy protocol witness table accessor for type [String : MetricCollector.Event] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MetricCollector.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15MetricCollectorV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15MetricCollectorV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15SecureMessaging15MetricCollectorV5EventVGMd, &_sSDySS15SecureMessaging15MetricCollectorV5EventVGMR);
    lazy protocol witness table accessor for type [String : MetricCollector.Event] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

BOOL specialized static MetricCollector.Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for MetricCollector.Event(0) + 20);
  v15 = *(v11 + 48);
  outlined init with copy of Date?(a1 + v14, v13);
  outlined init with copy of Date?(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Date?(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    outlined destroy of NSObject?(v13, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  outlined destroy of NSObject?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (v18 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Metric and conformance Metric()
{
  result = lazy protocol witness table cache variable for type Metric and conformance Metric;
  if (!lazy protocol witness table cache variable for type Metric and conformance Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Metric and conformance Metric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Metric and conformance Metric;
  if (!lazy protocol witness table cache variable for type Metric and conformance Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Metric and conformance Metric);
  }

  return result;
}

uint64_t sub_26506160C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26506171C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void type metadata completion function for MetricCollector.Event(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for shared(uint64_t a1)
{
  type metadata accessor for MLSActor();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static MLSActor.shared = v1;
  return result;
}

uint64_t MLSActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static MLSActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t MLSActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance MLSActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance MLSActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MLSActor();

  return MEMORY[0x2822005F8](v3, a2);
}

void *MLS.GroupOperationResult.init(kind:metricCollector:customAcknowledgementBlock:)@<X0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a2;
  result = memcpy(a5, __src, 0x199uLL);
  a5[52] = v8;
  a5[53] = a3;
  a5[54] = a4;
  return result;
}

uint64_t MLS.GroupOperation.context(commitOutput:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v114 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v128 = *(*(AssociatedConformanceWitness + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v126 = &v110 - v7;
  v8 = swift_checkMetadataState();
  v129 = *(v8 - 8);
  v130 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v121 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = (&v110 - v11);
  v12 = swift_getAssociatedTypeWitness();
  v119 = *(v12 - 8);
  v120 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v118 = &v110 - v14;
  v15 = *(a2 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v131 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v110 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v113 = &v110 - v22;
  MEMORY[0x28223BE20](v21);
  v112 = &v110 - v23;
  v24 = type metadata accessor for Logger();
  v123 = *(v24 - 8);
  v124 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v132 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v117 = &v110 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v110 - v29;
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v133 = (*(v32 + 40))(v31, v32);
  v134 = v33;
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  (*(v35 + 24))(v34, v35);
  v36 = type metadata accessor for MLS.Group.GroupInfo();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v30, 1, v36) == 1)
  {
    outlined destroy of MLS.Group.GroupInfo?(v30);
    v38 = v122;
    (*(a3 + 11))(a2, a3);
    v39 = *(v15 + 2);
    v39(v20, v38, a2);
    v39(v131, v38, a2);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v135 = v122;
      *v42 = 136315394;
      v43 = *(a3 + 7);
      LODWORD(v117) = v41;
      v44 = v43(a2, a3);
      v46 = v45;
      v116 = *(v15 + 1);
      v116(v20, a2);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v135);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v48 = v118;
      v49 = v131;
      (*(a3 + 10))(a2, a3);
      v50 = v120;
      v51 = swift_getAssociatedConformanceWitness();
      v52 = (*(v51 + 16))(v50, v51);
      v54 = v53;
      (*(v119 + 8))(v48, v50);
      v116(v49, a2);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v135);

      *(v42 + 14) = v55;
      _os_log_impl(&dword_264F1F000, v40, v117, "GroupOperation %s commitOutput missing nextGroupInfo { identifier: %s }", v42, 0x16u);
      v56 = v122;
      swift_arrayDestroy();
      MEMORY[0x266755550](v56, -1, -1);
      MEMORY[0x266755550](v42, -1, -1);
    }

    else
    {

      v91 = *(v15 + 1);
      v91(v131, a2);
      v91(v20, a2);
    }

    (*(v123 + 8))(v132, v124);
    v92 = v121;
    v93 = v130;
    v94 = AssociatedTypeWitness;
    v95 = swift_getAssociatedConformanceWitness();
    v96 = v126;
    (*(v95 + 72))(v94, v95);
    VersatileError.init(type:)(v96, v93, v128);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v129 + 8))(v92, v93);
    }

    else
    {
      swift_allocError();
      (*(v129 + 32))(v99, v92, v93);
    }

    swift_willThrow();
    return outlined consume of Data?(v133, v134);
  }

  else
  {
    v131 = a3;
    v132 = v15;
    v57 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v59 = v58;
    (*(v37 + 8))(v30, v36);
    v60 = a1[3];
    v61 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v60);
    result = (*(v61 + 32))(v60, v61);
    if (v63 >> 60 == 15)
    {
      v115 = v57;
      v121 = v59;
      v64 = v131;
      v65 = v117;
      v66 = v122;
      (*(v131 + 11))(a2, v131);
      v67 = v132;
      v68 = *(v132 + 2);
      v69 = v112;
      v68(v112, v66, a2);
      v70 = v113;
      v68(v113, v66, a2);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v135 = v122;
        *v73 = 136315394;
        v74 = *(v64 + 7);
        v111 = v71;
        v75 = v74(a2, v64);
        LODWORD(v114) = v72;
        v76 = v75;
        v78 = v77;
        v79 = *(v67 + 1);
        v79(v69, a2);
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v135);

        *(v73 + 4) = v80;
        *(v73 + 12) = 2080;
        v81 = v70;
        v82 = v118;
        (*(v64 + 10))(a2, v64);
        v83 = v120;
        v84 = swift_getAssociatedConformanceWitness();
        v85 = (*(v84 + 16))(v83, v84);
        v87 = v86;
        (*(v119 + 8))(v82, v83);
        v79(v81, a2);
        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v135);

        *(v73 + 14) = v88;
        v89 = v111;
        _os_log_impl(&dword_264F1F000, v111, v114, "GroupOperation %s commitOutput missing epochAuthenticator { identifier: %s }", v73, 0x16u);
        v90 = v122;
        swift_arrayDestroy();
        MEMORY[0x266755550](v90, -1, -1);
        MEMORY[0x266755550](v73, -1, -1);

        (*(v123 + 8))(v117, v124);
      }

      else
      {

        v100 = *(v67 + 1);
        v100(v70, a2);
        v100(v69, a2);
        (*(v123 + 8))(v65, v124);
      }

      v102 = v115;
      v101 = v116;
      v103 = v130;
      v104 = AssociatedTypeWitness;
      v105 = swift_getAssociatedConformanceWitness();
      v106 = v126;
      (*(v105 + 80))(v104, v105);
      VersatileError.init(type:)(v106, v103, v128);
      v107 = _getErrorEmbeddedNSError<A>(_:)();
      v108 = v121;
      if (v107)
      {
        (*(v129 + 8))(v101, v103);
      }

      else
      {
        swift_allocError();
        (*(v129 + 32))(v109, v101, v103);
      }

      swift_willThrow();
      outlined consume of Data?(v133, v134);
      return outlined consume of Data._Representation(v102, v108);
    }

    else
    {
      v97 = v114;
      *v114 = result;
      v97[1] = v63;
      v98 = v134;
      v97[2] = v133;
      v97[3] = v98;
      v97[4] = v57;
      v97[5] = v59;
    }
  }

  return result;
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.NegativeDeliveryOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.SignOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.EncryptGroupNameOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.AddMembersOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.LeaveGroupOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.KickMembersOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.SelfHealOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.OptionalGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t MLS.RequiresGroupGroupOperation.type.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v4, a1);
  *(a4 + 40) = a3;
  return result;
}

double MLS.GroupOperationResult.metricCollector.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 416);

  return result;
}

uint64_t MLS.GroupOperationResult.customAcknowledgementBlock.getter()
{
  v1 = *(v0 + 424);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v1, *(v0 + 432));
  return v1;
}

Swift::Int MLS.GroupOperationQueueingBehavior.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1 & 1);
  return Hasher._finalize()();
}

BOOL static MLS.GroupOperationErrorHandlingPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 == 1)
  {
    return a3 == 1;
  }

  if (!a1)
  {
    return !a3;
  }

  return a3 > 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance MLS.GroupOperationErrorHandlingPolicy(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (!*a1)
  {
    return !v2;
  }

  return v2 > 1;
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.EraAdvancementOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.KeyUpdateOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.DowngradeOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.CheckKeyPackageExpirationOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.EncryptOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t outlined destroy of MLS.Group.GroupInfo?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupOperationQueueingBehavior and conformance MLS.GroupOperationQueueingBehavior()
{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationQueueingBehavior and conformance MLS.GroupOperationQueueingBehavior;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationQueueingBehavior and conformance MLS.GroupOperationQueueingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationQueueingBehavior and conformance MLS.GroupOperationQueueingBehavior);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO21OutgoingErrorOccurredV7TriggerOy_AC9AllMemberO10Foundation4DataV_G(uint64_t a1)
{
  if ((*(a1 + 112) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 112) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO30RetryAfterGroupVersionBehaviorO(uint64_t a1)
{
  if ((*(a1 + 72) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 72) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO33GroupOperationErrorHandlingPolicyO_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 440))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 416);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.GroupOperationResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 440) = 1;
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
      *(result + 416) = (a2 - 1);
      return result;
    }

    *(result + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationResult.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 409))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 408);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.GroupOperationResult.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 393) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 409) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 409) = 0;
    }

    if (a2)
    {
      *(result + 408) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.GroupOperationResult.Kind(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 400) = 0;
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
    *(result + 32) = 0u;
  }

  *(result + 408) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationErrorHandlingPolicy(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for MLS.GroupOperationErrorHandlingPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MLS.GroupOperationErrorHandlingPolicy(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
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

uint64_t getEnumTagSinglePayload for MLS.GroupOperationType(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MLS.GroupOperationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for MLS.GroupOperationType(uint64_t result, unsigned int a2)
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

uint64_t dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.OptionalGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.OptionalGroupGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5, a6);
}

void MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MLS.Group.Message();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  v10 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v14 = [v13 UUIDString];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *a3 = v15;
  a3[1] = v17;
  a3[2] = v10;
  a3[3] = v12;
}

uint64_t MLS.SwiftMLSCommitOutputProtocol.outgoingWelcome.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for MLS.Group.Message();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = outlined destroy of MLS.Group.Message?(v8);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v17 = v18;
    v19 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v20 = [v19 UUIDString];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v21;

    result = (*(v10 + 8))(v12, v9);
  }

  *a3 = v14;
  a3[1] = v15;
  a3[2] = v16;
  a3[3] = v17;
  return result;
}

uint64_t outlined destroy of MLS.Group.Message?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAL08IncomingL5EntryV_G_AJ22UniqueClientIdentifierVs5NeverOTg504_s15e16Messaging3MLSO17hij7C31loadr28IdentifiersWithEventsSayAC06q3H10s12VGyYaKFAhE17klM8IDVXEfU_Tf1cn_nTm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v30 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v30;
  v5 = v4 + 64;
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v24 = v4 + 72;
  v26 = v4 + 64;
  v27 = v4;
  v25 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v28 = *(v4 + 36);
    v11 = (*(v4 + 48) + 48 * v7);
    v12 = v11[1];
    v29 = *v11;
    v13 = one-time initialization token for shared;

    if (v13 != -1)
    {
      swift_once();
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v15 = *(v30 + 16);
    v14 = *(v30 + 24);
    if (v15 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    }

    *(v30 + 16) = v15 + 1;
    v16 = v30 + 16 * v15;
    *(v16 + 32) = v29;
    *(v16 + 40) = v12;
    v4 = v27;
    v9 = 1 << *(v27 + 32);
    if (v7 >= v9)
    {
      goto LABEL_26;
    }

    v5 = v26;
    v17 = *(v26 + 8 * v10);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_27;
    }

    if (v28 != *(v27 + 36))
    {
      goto LABEL_28;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (v24 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v7, v28, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v7, v28, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v25)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a5 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2, a3, a4), (v8 & 1) != 0))
  {
    v9 = *(a5 + 56) + 24 * result;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    *a6 = v10;
    *(a6 + 8) = v11;
  }

  else
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    v12 = 2;
  }

  *(a6 + 16) = v12;
  return result;
}

Swift::Int MLS.InMemoryPersisterError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

double MLS.InMemoryPersister.GroupStoreID.clientID.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t MLS.InMemoryPersister.GroupStoreID.groupID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *MLS.InMemoryPersister.GroupStoreID.init(clientID:groupID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

double MLS.InMemoryPersister.GroupEventStoreID.clientID.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t MLS.InMemoryPersister.GroupEventStoreID.groupID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MLS.InMemoryPersister.GroupEventStoreID.eventID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MLS.InMemoryPersister.GroupMessageStoreID.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int MLS.InMemoryPersister.GroupMessageStoreID.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void *MLS.InMemoryPersister.GroupMessageStoreID.init(clientID:groupID:messageID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = result[1];
  *a6 = *result;
  a6[1] = v6;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.InMemoryPersister.GroupMessageStoreID(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MLS.InMemoryPersister.IncomingEventEntry.event.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return outlined init with copy of MLS.OutgoingEventState?(v10, v9, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
}

__n128 MLS.InMemoryPersister.IncomingEventEntry.init(event:id:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v3;
  *(a3 + 96) = *(a1 + 96);
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 104) = a2;
  return result;
}

uint64_t MLS.InMemoryPersister.OutgoingEventEntry.event.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
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
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 176);
  *(a1 + 176) = *(v1 + 176);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return outlined init with copy of MLS.OutgoingEventState?(v18, v17, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgMR);
}

uint64_t MLS.InMemoryPersister.OutgoingEventEntry.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v9 = *(v1 + 216);
  v10 = v3;
  v11 = *(v1 + 248);
  v4 = v11;
  v8[0] = *(v1 + 184);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return outlined init with copy of MLS.OutgoingEventState?(v8, v7, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
}

__n128 MLS.InMemoryPersister.OutgoingEventEntry.version.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[17].n128_u64[0];
  v3 = v1[17].n128_u8[8];
  result = v1[16];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 MLS.InMemoryPersister.OutgoingEventEntry.init(event:state:version:id:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 144);
  *(a5 + 128) = *(a1 + 128);
  *(a5 + 144) = v5;
  *(a5 + 160) = *(a1 + 160);
  v6 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v6;
  v7 = *(a1 + 112);
  *(a5 + 96) = *(a1 + 96);
  *(a5 + 112) = v7;
  v8 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v8;
  v9 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v9;
  v10 = *a2;
  *(a5 + 200) = a2[1];
  v11 = a2[3];
  *(a5 + 216) = a2[2];
  *(a5 + 232) = v11;
  v12 = a3[1].n128_u64[0];
  v13 = a3[1].n128_u8[8];
  *(a5 + 176) = *(a1 + 176);
  *(a5 + 248) = *(a2 + 8);
  *(a5 + 184) = v10;
  result = *a3;
  *(a5 + 256) = *a3;
  *(a5 + 272) = v12;
  *(a5 + 280) = v13;
  *(a5 + 288) = a4;
  return result;
}

uint64_t MLS.InMemoryPersister.SwiftMLSGroupStoreID.groupID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

BOOL static MLS.InMemoryPersister.SwiftMLSGroupStoreID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t MLS.InMemoryPersister.GroupStoreID.hash(into:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);

  return a2(a1, v4, v5);
}

Swift::Int MLS.InMemoryPersister.GroupStoreID.hashValue.getter(void (*a1)(void *, uint64_t, uint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  a1(v6, v3, v4);
  return Hasher._finalize()();
}

void *MLS.InMemoryPersister.SwiftMLSGroupStoreID.init(clientID:groupID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.InMemoryPersister.GroupStoreID(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  a3(v8, v5, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.InMemoryPersister.GroupStoreID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);

  return a4(a1, v6, v7);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.InMemoryPersister.GroupStoreID(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  a4(v9, v6, v7);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance MLS.InMemoryPersister.SwiftMLSGroupStoreID(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t MLS.InMemoryPersister.SwiftMLSEpochStoreID.groupID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.InMemoryPersister.SwiftMLSEpochStoreID.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v2);
  return MEMORY[0x266754E10](v3);
}

Swift::Int MLS.InMemoryPersister.SwiftMLSEpochStoreID.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v1);
  MEMORY[0x266754E10](v2);
  return Hasher._finalize()();
}

void *MLS.InMemoryPersister.SwiftMLSEpochStoreID.init(clientID:groupID:era:epoch:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = result[1];
  *a6 = *result;
  a6[1] = v6;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v1);
  MEMORY[0x266754E10](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v2);
  return MEMORY[0x266754E10](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v2);
  MEMORY[0x266754E10](v3);
  return Hasher._finalize()();
}

uint64_t MLS.InMemoryPersister.State.clientIDToSwiftMLSClientID.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToSwiftMLSGroup.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.swiftMLSGroupToGroup.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToGroupClientContextBlob.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToMembers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToPending.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToPendingDelete.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupMessagesToRetryCount.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToEventsSinceLastKeyUpdate.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToIncomingEvents.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.groupToOutgoingEvents.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.swiftMLSClientData.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.swiftMLSGroupState.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t MLS.InMemoryPersister.State.swiftMLSEpochState.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

double MLS.InMemoryPersister.State.init()@<D0>(uint64_t a1@<X8>)
{
  specialized MLS.InMemoryPersister.State.init()(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

__n128 MLS.InMemoryPersister.State.init(clientIDToSwiftMLSClientID:groupToSwiftMLSGroup:swiftMLSGroupToGroup:groupToGroupClientContextBlob:groupToMembers:groupToPending:groupToPendingDelete:groupMessagesToRetryCount:groupToEventsSinceLastKeyUpdate:nextEventID:groupToIncomingEvents:groupToOutgoingEvents:swiftMLSClientData:swiftMLSGroupState:swiftMLSEpochState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  return result;
}

double MLS.InMemoryPersister.committedState.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v15 = *(v1 + 88);
  v16 = v3;
  v17 = *(v1 + 120);
  v18 = *(v1 + 136);
  v4 = *(v1 + 40);
  v11 = *(v1 + 24);
  v12 = v4;
  v5 = *(v1 + 72);
  v13 = *(v1 + 56);
  v14 = v5;
  outlined init with copy of MLS.InMemoryPersister.State(&v11, &v10);
  v6 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v6;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  v7 = v12;
  *a1 = v11;
  *(a1 + 16) = v7;
  result = *&v13;
  v9 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v9;
  return result;
}

uint64_t MLS.InMemoryPersister.committedState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v3;
  *(v1 + 120) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  v5 = *(a1 + 48);
  *(v1 + 56) = *(a1 + 32);
  *(v1 + 136) = *(a1 + 112);
  *(v1 + 72) = v5;
}

double MLS.InMemoryPersister.transactionState.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v15 = *(v1 + 208);
  v16 = v3;
  v17 = *(v1 + 240);
  v18 = *(v1 + 256);
  v4 = *(v1 + 160);
  v11 = *(v1 + 144);
  v12 = v4;
  v5 = *(v1 + 192);
  v13 = *(v1 + 176);
  v14 = v5;
  outlined init with copy of MLS.OutgoingEventState?(&v11, &v10, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  v6 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v6;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  v7 = v12;
  *a1 = v11;
  *(a1 + 16) = v7;
  result = *&v13;
  v9 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v9;
  return result;
}

uint64_t MLS.InMemoryPersister.transactionState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  v8 = *(v1 + 184);
  v9 = *(v1 + 192);
  v10 = *(v1 + 200);
  v11 = *(v1 + 208);
  v12 = *(v1 + 224);
  v13 = *(v1 + 240);
  v14 = *(v1 + 256);
  v15 = *(a1 + 80);
  *(v1 + 208) = *(a1 + 64);
  *(v1 + 224) = v15;
  *(v1 + 240) = *(a1 + 96);
  *(v1 + 256) = *(a1 + 112);
  v16 = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = v16;
  v17 = *(a1 + 48);
  *(v1 + 176) = *(a1 + 32);
  *(v1 + 192) = v17;
  return outlined consume of MLS.InMemoryPersister.State?(v3, v4, v5, v6, v7, v8, v9, v10, v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
}

uint64_t MLS.InMemoryPersister.persisterQueue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  if (*(v0 + 264))
  {
    v4 = *(v0 + 264);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MLS.PersistenceQueue(0);
    v4 = swift_allocObject();

    Logger.init(subsystem:category:)();
    *(v4 + 16) = MEMORY[0x277D84F90];
    outlined init with take of AsyncStream<String>.Continuation?(v3, v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher);
    v9 = (v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock);
    *v9 = &async function pointer to partial apply for closure #1 in MLS.InMemoryPersister.persisterQueue.getter;
    v9[1] = v6;
    v10 = (v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock);
    *v10 = &async function pointer to partial apply for closure #2 in MLS.InMemoryPersister.persisterQueue.getter;
    v10[1] = v7;
    v11 = (v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);
    *v11 = &async function pointer to partial apply for closure #3 in MLS.InMemoryPersister.persisterQueue.getter;
    v11[1] = v8;

    *(v0 + 264) = v4;
  }

  return v4;
}

uint64_t closure #1 in MLS.InMemoryPersister.persisterQueue.getter(uint64_t a1)
{
  *(v1 + 304) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.InMemoryPersister.persisterQueue.getter, v2, 0);
}

uint64_t closure #1 in MLS.InMemoryPersister.persisterQueue.getter()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    if (v3)
    {
      (*(*v3 + 136))(v3);
      v19 = *(v0 + 152);
      v20 = *(v0 + 136);
      v17 = *(v0 + 184);
      v18 = *(v0 + 168);
      v15 = *(v0 + 216);
      v16 = *(v0 + 200);
      v14 = *(v0 + 232);
      v4 = *(v0 + 248);

      v6 = v14;
      v5 = v15;
      v8 = v16;
      v7 = v17;
      v9 = v18;
      v11 = v19;
      v10 = v20;
    }

    else
    {
      v4 = 0;
      v10 = 0uLL;
      v11 = 0uLL;
      v9 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v5 = 0uLL;
      v6 = 0uLL;
    }

    *(v0 + 16) = v10;
    *(v0 + 32) = v11;
    *(v0 + 48) = v9;
    *(v0 + 64) = v7;
    *(v0 + 80) = v8;
    *(v0 + 96) = v5;
    *(v0 + 112) = v6;
    *(v0 + 128) = v4;
    (*(*v2 + 168))(v0 + 16);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #2 in MLS.InMemoryPersister.persisterQueue.getter(uint64_t a1)
{
  *(v1 + 448) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #2 in MLS.InMemoryPersister.persisterQueue.getter, v2, 0);
}

uint64_t closure #2 in MLS.InMemoryPersister.persisterQueue.getter()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 160))(Strong);

    v2 = *(v0 + 256);
    if (v2)
    {
      *(v0 + 136) = v2;
      v3 = *(v0 + 344);
      *(v0 + 208) = *(v0 + 328);
      *(v0 + 224) = v3;
      *(v0 + 240) = *(v0 + 360);
      v4 = *(v0 + 280);
      *(v0 + 144) = *(v0 + 264);
      *(v0 + 160) = v4;
      v5 = *(v0 + 312);
      *(v0 + 176) = *(v0 + 296);
      *(v0 + 192) = v5;
      swift_beginAccess();
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        (*(*v6 + 144))(v0 + 136);
      }

      else
      {
        outlined destroy of NSObject?(v0 + 256, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      }

      swift_beginAccess();
      v7 = swift_weakLoadStrong();
      if (v7)
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        *(v0 + 64) = 0u;
        *(v0 + 80) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0u;
        *(v0 + 16) = 0u;
        (*(*v7 + 168))(v0 + 16);
      }
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #3 in MLS.InMemoryPersister.persisterQueue.getter(uint64_t a1)
{
  *(v1 + 160) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #3 in MLS.InMemoryPersister.persisterQueue.getter, v2, 0);
}

uint64_t closure #3 in MLS.InMemoryPersister.persisterQueue.getter()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    (*(*Strong + 168))(v0 + 16);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t (*MLS.InMemoryPersister.persisterQueue.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = MLS.InMemoryPersister.persisterQueue.getter();
  return MLS.InMemoryPersister.persisterQueue.modify;
}

uint64_t MLS.InMemoryPersister.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE25SwiftMLSPersisterProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  specialized MLS.InMemoryPersister.State.init()(v5);
  v1 = v5[5];
  *(v0 + 88) = v5[4];
  *(v0 + 104) = v1;
  *(v0 + 120) = v5[6];
  v2 = v5[1];
  *(v0 + 24) = v5[0];
  *(v0 + 40) = v2;
  v3 = v5[3];
  *(v0 + 56) = v5[2];
  *(v0 + 136) = v6;
  *(v0 + 72) = v3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return v0;
}

uint64_t MLS.InMemoryPersister.init()()
{
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE25SwiftMLSPersisterProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  specialized MLS.InMemoryPersister.State.init()(v5);
  v1 = v5[5];
  *(v0 + 88) = v5[4];
  *(v0 + 104) = v1;
  *(v0 + 120) = v5[6];
  v2 = v5[1];
  *(v0 + 24) = v5[0];
  *(v0 + 40) = v2;
  v3 = v5[3];
  *(v0 + 56) = v5[2];
  *(v0 + 136) = v6;
  *(v0 + 72) = v3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return v0;
}

uint64_t MLS.InMemoryPersister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v9[11] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.atomically<A>(with:do:rollback:), v10, 0);
}

uint64_t MLS.InMemoryPersister.atomically<A>(with:do:rollback:)()
{
  v1 = (*(**(v0 + 80) + 184))();
  *(v0 + 96) = v1;
  v12 = (*(*v1 + 160) + **(*v1 + 160));
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = MLS.InMemoryPersister.atomically<A>(with:do:rollback:);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return v12(v9, v10, v7, v8, v5, v6, v3, v4);
}

{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[11];

    return MEMORY[0x2822009F8](MLS.InMemoryPersister.atomically<A>(with:do:rollback:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.InMemoryPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  *(v5 + 416) = a3;
  *(v5 + 376) = a1;
  *(v5 + 384) = a2;
  v6 = *a4;
  v7 = a4[1];
  *(v5 + 392) = v4;
  *(v5 + 400) = v6;
  *(v5 + 408) = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:), v8, 0);
}

uint64_t MLS.InMemoryPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)()
{
  v1 = (*(**(v0 + 392) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 392) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  v31 = *(v0 + 408);
  v32 = *(v0 + 384);
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  v46 = MEMORY[0x277D84F90];
  v33 = *(v27 + 16);

  if (v33)
  {
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 400), v31, *(v0 + 376), v32);
    if (v35)
    {
      v46 = *(*(v27 + 56) + 8 * v34);
    }
  }

  if (*(v26 + 16))
  {
    v36 = *(v0 + 416);
    specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 400), *(v0 + 408), *(v0 + 376), *(v0 + 384));
    if (v37)
    {
      if (v36)
      {

        specialized Array.append<A>(contentsOf:)(v38);
      }
    }
  }

  if (!*(v25 + 16))
  {
    outlined destroy of MLS.InMemoryPersister.State(v0 + 256);

LABEL_16:

    goto LABEL_19;
  }

  v39 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 400), *(v0 + 408), *(v0 + 376), *(v0 + 384));
  v41 = v40;

  if (v41)
  {
    v42 = *(v0 + 416);
    v43 = *(*(v25 + 56) + 8 * v39);

    outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
    if (v42)
    {
      goto LABEL_16;
    }

    specialized Array.append<A>(contentsOf:)(v43);
  }

  else
  {
    outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  }

LABEL_19:
  v44 = *(v0 + 8);

  return v44(v46);
}

uint64_t MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6[85] = v5;
  v6[84] = a4;
  v6[83] = a3;
  v6[82] = a2;
  v6[81] = a1;
  v7 = a5[1];
  v6[86] = *a5;
  v6[87] = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v6[88] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:), v8, 0);
}

void MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)()
{
  v205 = v0;
  v182 = *(**(v0 + 680) + 160);
  v182();
  if (*(v0 + 376))
  {
    v1 = v0;
    v2 = *(v0 + 664);
    outlined destroy of NSObject?((v1 + 47), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v3 = *(v2 + 16);

    v188 = v1;
    if (v3)
    {
      v5 = 0;
      v6 = v1[83] + 57;
      v179 = MEMORY[0x277D84F90];
      v183 = v6;
      do
      {
        v7 = (v6 + 32 * v5);
        v8 = v5;
        while (1)
        {
          if (v8 >= v3)
          {
            __break(1u);
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          v5 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_128;
          }

          v9 = *(v7 - 25);
          v10 = *(v7 - 17);
          v11 = *(v7 - 9);
          v12 = *(v7 - 1);
          v13 = *v7;
          outlined copy of MLS.AllMember(v9, v10);
          v14 = v188;
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          if (!v13)
          {
            break;
          }

          outlined consume of MLS.AllMember(v9, v10);
          ++v8;
          v7 += 32;
          if (v5 == v3)
          {
            goto LABEL_17;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v179;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v179 + 16) + 1, 1);
          v14 = v188;
          v16 = v179;
        }

        v6 = v183;
        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v14 = v188;
          v16 = v179;
        }

        *(v16 + 16) = v18 + 1;
        v179 = v16;
        v19 = v16 + 32 * v18;
        *(v19 + 32) = v9;
        *(v19 + 40) = v10;
        *(v19 + 48) = v11;
        *(v19 + 56) = v12;
        *(v19 + 57) = 0;
      }

      while (v5 != v3);
LABEL_17:
      v20 = 0;
      v21 = v14[83] + 57;
      v178 = MEMORY[0x277D84F90];
      v184 = v21;
LABEL_18:
      v22 = (v21 + 32 * v20);
      v23 = v20;
      while (v23 < v3)
      {
        v20 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_130;
        }

        v24 = *(v22 - 25);
        v25 = *(v22 - 17);
        v26 = *(v22 - 9);
        v27 = *(v22 - 1);
        v28 = *v22;
        outlined copy of MLS.AllMember(v24, v25);
        v29 = v188;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v28 == 1)
        {
          v30 = v178;
          v4 = swift_isUniquelyReferenced_nonNull_native();
          if ((v4 & 1) == 0)
          {
            v4 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 16) + 1, 1);
            v29 = v188;
            v30 = v178;
          }

          v32 = *(v30 + 16);
          v31 = *(v30 + 24);
          if (v32 >= v31 >> 1)
          {
            v4 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
            v29 = v188;
            v30 = v178;
          }

          *(v30 + 16) = v32 + 1;
          v178 = v30;
          v33 = v30 + 32 * v32;
          *(v33 + 32) = v24;
          *(v33 + 40) = v25;
          *(v33 + 48) = v26;
          *(v33 + 56) = v27;
          *(v33 + 57) = 1;
          v21 = v184;
          if (v20 != v3)
          {
            goto LABEL_18;
          }

          goto LABEL_34;
        }

        v4 = outlined consume of MLS.AllMember(v24, v25);
        ++v23;
        v22 += 32;
        if (v20 == v3)
        {
          goto LABEL_34;
        }
      }

LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v178 = MEMORY[0x277D84F90];
    v179 = MEMORY[0x277D84F90];
    v29 = v1;
LABEL_34:
    v35 = v29[84];
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      v38 = v35 + 57;
      v177 = MEMORY[0x277D84F90];
      v185 = v35 + 57;
LABEL_36:
      v39 = (v38 + 32 * v37);
      v40 = v37;
      while (v40 < v36)
      {
        v37 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_132;
        }

        v41 = *(v39 - 25);
        v42 = *(v39 - 17);
        v43 = *(v39 - 9);
        v44 = *(v39 - 1);
        v45 = *v39;
        outlined copy of MLS.AllMember(v41, v42);
        v46 = v188;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v45 == 2)
        {
          v47 = v177;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v177 + 16) + 1, 1);
            v46 = v188;
            v47 = v177;
          }

          v38 = v185;
          v49 = *(v47 + 16);
          v48 = *(v47 + 24);
          v50 = v47;
          if (v49 >= v48 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
            v46 = v188;
            v50 = v177;
          }

          *(v50 + 16) = v49 + 1;
          v177 = v50;
          v51 = v50 + 32 * v49;
          *(v51 + 32) = v41;
          *(v51 + 40) = v42;
          *(v51 + 48) = v43;
          *(v51 + 56) = v44;
          *(v51 + 57) = 2;
          if (v37 != v36)
          {
            goto LABEL_36;
          }

LABEL_49:
          v52 = 0;
          v53 = v46[84] + 57;
          v54 = MEMORY[0x277D84F90];
          v186 = v53;
LABEL_50:
          v180 = v54;
          v55 = (v53 + 32 * v52);
          v56 = v52;
          while (v56 < v36)
          {
            v52 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              goto LABEL_134;
            }

            v57 = *(v55 - 25);
            v58 = *(v55 - 17);
            v59 = *(v55 - 9);
            v60 = *(v55 - 1);
            v61 = *v55;
            outlined copy of MLS.AllMember(v57, v58);
            v29 = v188;
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            if (!v61)
            {
              v54 = v180;
              v4 = swift_isUniquelyReferenced_nonNull_native();
              if ((v4 & 1) == 0)
              {
                v4 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v180 + 16) + 1, 1);
                v29 = v188;
                v54 = v180;
              }

              v63 = *(v54 + 16);
              v62 = *(v54 + 24);
              if (v63 >= v62 >> 1)
              {
                v4 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
                v29 = v188;
                v54 = v180;
              }

              *(v54 + 16) = v63 + 1;
              v64 = v54 + 32 * v63;
              *(v64 + 32) = v57;
              *(v64 + 40) = v58;
              *(v64 + 48) = v59;
              *(v64 + 56) = v60;
              *(v64 + 57) = 0;
              v53 = v186;
              if (v52 != v36)
              {
                goto LABEL_50;
              }

              goto LABEL_65;
            }

            v4 = outlined consume of MLS.AllMember(v57, v58);
            ++v56;
            v55 += 32;
            if (v52 == v36)
            {
              v54 = v180;
              goto LABEL_65;
            }
          }

          goto LABEL_133;
        }

        outlined consume of MLS.AllMember(v41, v42);
        ++v40;
        v39 += 32;
        if (v37 == v36)
        {
          goto LABEL_49;
        }
      }

LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v54 = MEMORY[0x277D84F90];
    v177 = MEMORY[0x277D84F90];
LABEL_65:
    v187 = v29 + 77;
    v65 = v29;
    (v182)(v4);
    v66 = v29[32];
    v67 = v29 + 33;
    v68 = v29[36];
    v69 = v65 + 37;
    v181 = v54;
    if (v66 && *(v68 + 16) && (v70 = specialized __RawDictionaryStorage.find<A>(_:)(v65[86], v65[87], v65[81], v65[82]), (v71 & 1) != 0))
    {
      v72 = v65[84];
      v73 = *(*(v68 + 56) + 8 * v70);
      v65[62] = v66;
      *(v65 + 63) = *v67;
      v65[65] = v65[35];
      v65[66] = v68;
      v74 = *(v65 + 43);
      *(v65 + 71) = *(v65 + 41);
      *(v65 + 73) = v74;
      *(v65 + 75) = *(v65 + 45);
      v75 = *(v65 + 39);
      *(v65 + 67) = *v69;
      *(v65 + 69) = v75;

      outlined destroy of NSObject?((v65 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      *&v201 = v73;

      specialized Array.append<A>(contentsOf:)(v76);

      v77 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v201, v72, 125, 126);
      v78 = v201;
      v79 = *(v201 + 16);
      if (v77 > v79)
      {
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      v80 = v77;
      if (v77 < 0)
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v81 = v77;
      if (__OFADD__(v79, v77 - v79))
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v82 = swift_isUniquelyReferenced_nonNull_native();
      if (!v82 || v81 > *(v78 + 3) >> 1)
      {
        if (v79 <= v81)
        {
          v83 = v81;
        }

        else
        {
          v83 = v79;
        }

        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v82, v83, 1, v78);
        *&v201 = v78;
      }

      v84 = v188[85];
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v80, v79, 0);
      v86 = (*(*v84 + 176))(v187);
      if (*v85)
      {
        v87 = v85;
        v88 = v188[87];
        v89 = v188[86];
        v90 = v188[82];
        v91 = v188[81];

        v92 = swift_isUniquelyReferenced_nonNull_native();
        v189 = v87[4];
        v87[4] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v78, v89, v88, v91, v90, v92);

        v87[4] = v189;
      }

      else
      {
      }

      v104 = v86();
      v65 = v188;
    }

    else
    {
      v93 = v65[85];
      v65[62] = v66;
      *(v65 + 63) = *v67;
      v65[65] = v65[35];
      v65[66] = v68;
      v94 = *(v65 + 43);
      *(v65 + 71) = *(v65 + 41);
      *(v65 + 73) = v94;
      *(v65 + 75) = *(v65 + 45);
      v95 = *(v65 + 39);
      *(v65 + 67) = *v69;
      *(v65 + 69) = v95;
      outlined destroy of NSObject?((v65 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v97 = (*(*v93 + 176))(v187);
      if (*v96)
      {
        v98 = v96;
        v99 = v65[87];
        v100 = v65[86];
        v101 = v65[82];
        v102 = v65[81];

        v103 = swift_isUniquelyReferenced_nonNull_native();
        v190 = v98[4];
        v98[4] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v179, v100, v99, v102, v101, v103);

        v98[4] = v190;
      }

      v104 = v97();
    }

    (v182)(v104);
    v105 = v65[17];
    v106 = *(v65 + 10);
    v201 = *(v65 + 9);
    v202 = v106;
    v107 = v65[22];
    v195 = *(v65 + 27);
    v197 = *(v65 + 29);
    v199 = v65[31];
    v191 = *(v65 + 23);
    v193 = *(v65 + 25);
    if (v105 && *(v107 + 16) && (v108 = specialized __RawDictionaryStorage.find<A>(_:)(v65[86], v65[87], v65[81], v65[82]), (v109 & 1) != 0))
    {
      v110 = *(*(v107 + 56) + 8 * v108);
      v111 = v65[84];
      v65[62] = v105;
      v112 = *(v65 + 10);
      *(v65 + 63) = *(v65 + 9);
      *(v65 + 65) = v112;
      v65[67] = v107;
      v113 = *(v65 + 25);
      v114 = *(v65 + 29);
      *(v65 + 36) = *(v65 + 27);
      *(v65 + 37) = v114;
      v65[76] = v65[31];
      *(v65 + 34) = *(v65 + 23);
      *(v65 + 35) = v113;

      outlined destroy of NSObject?((v65 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v200 = v110;
      specialized Array.append<A>(contentsOf:)(v178);

      v115 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v200, v111, v179);
      v116 = v200;
      v117 = *(v200 + 16);
      if (v115 > v117)
      {
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      v118 = v115;
      if (v115 < 0)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      v119 = v115;
      if (__OFADD__(v117, v115 - v117))
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v120 = swift_isUniquelyReferenced_nonNull_native();
      if (!v120 || v119 > *(v116 + 3) >> 1)
      {
        if (v117 <= v119)
        {
          v121 = v119;
        }

        else
        {
          v121 = v117;
        }

        v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120, v121, 1, v116);
        v200 = v116;
      }

      v122 = v188[85];
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v118, v117, 0);

      v124 = (*(*v122 + 176))(v187);
      if (*v123)
      {
        v125 = v123;
        v126 = v188[87];
        v127 = v188[86];
        v128 = v188[82];
        v129 = v188[81];

        v130 = swift_isUniquelyReferenced_nonNull_native();
        v204 = v125[5];
        v125[5] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, v127, v126, v129, v128, v130);

        v125[5] = v204;
      }

      else
      {
      }

      v141 = v124();
      v65 = v188;
    }

    else
    {
      v131 = v65[85];

      v65[62] = v105;
      v132 = v202;
      *(v65 + 63) = v201;
      *(v65 + 65) = v132;
      v65[67] = v107;
      *(v65 + 36) = v195;
      *(v65 + 37) = v197;
      v65[76] = v199;
      *(v65 + 34) = v191;
      *(v65 + 35) = v193;
      outlined destroy of NSObject?((v65 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v134 = (*(*v131 + 176))(v187);
      if (*v133)
      {
        v135 = v133;
        v136 = v65[87];
        v137 = v65[86];
        v138 = v65[82];
        v139 = v65[81];

        v140 = swift_isUniquelyReferenced_nonNull_native();
        v204 = v135[5];
        v135[5] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v178, v137, v136, v139, v138, v140);

        v135[5] = v204;
        v141 = (v134)(v187, 0);
      }

      else
      {

        v141 = v134();
      }
    }

    (v182)(v141);
    v142 = v65[8];
    v203 = v65[7];
    v143 = v65[2];
    v144 = *(v65 + 5);
    v201 = *(v65 + 3);
    v202 = v144;
    v192 = *(v65 + 9);
    v194 = *(v65 + 11);
    v196 = *(v65 + 13);
    v198 = *(v65 + 15);
    if (v143 && *(v142 + 16) && (v145 = specialized __RawDictionaryStorage.find<A>(_:)(v65[86], v65[87], v65[81], v65[82]), (v146 & 1) != 0))
    {
      v147 = *(*(v142 + 56) + 8 * v145);
      v65[62] = v143;
      v148 = *(v65 + 5);
      *(v65 + 63) = *(v65 + 3);
      *(v65 + 65) = v148;
      v65[67] = v65[7];
      v65[68] = v142;
      v149 = *(v65 + 11);
      *(v65 + 69) = *(v65 + 9);
      *(v65 + 71) = v149;
      v150 = *(v65 + 15);
      *(v65 + 73) = *(v65 + 13);
      *(v65 + 75) = v150;

      outlined destroy of NSObject?((v65 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v200 = v147;
      specialized Array.append<A>(contentsOf:)(v177);

      v151 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v200, v181, 143, 144);
      v152 = v200;
      v153 = *(v200 + 16);
      if (v151 > v153)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v154 = v151;
      if (v151 < 0)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v155 = v151;
      if (__OFADD__(v153, v151 - v153))
      {
LABEL_143:
        __break(1u);
        return;
      }

      v156 = swift_isUniquelyReferenced_nonNull_native();
      if (!v156 || v155 > *(v152 + 3) >> 1)
      {
        if (v153 <= v155)
        {
          v157 = v155;
        }

        else
        {
          v157 = v153;
        }

        v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v156, v157, 1, v152);
        v200 = v152;
      }

      v158 = v188[85];
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v154, v153, 0);

      v160 = (*(*v158 + 176))(v187);
      v161 = v188[87];
      if (*v159)
      {
        v162 = v188[86];
        v163 = v188[82];
        v164 = v188[81];
        v165 = v159;
        v166 = swift_isUniquelyReferenced_nonNull_native();
        v204 = v165[6];
        v165[6] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v152, v162, v161, v164, v163, v166);

        v165[6] = v204;
      }

      else
      {
      }

      v160();
      v65 = v188;
    }

    else
    {
      v167 = v65[85];

      v65[62] = v143;
      v168 = v202;
      *(v65 + 63) = v201;
      *(v65 + 65) = v168;
      v65[67] = v203;
      v65[68] = v142;
      *(v65 + 69) = v192;
      *(v65 + 71) = v194;
      *(v65 + 73) = v196;
      *(v65 + 75) = v198;
      outlined destroy of NSObject?((v65 + 62), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v170 = (*(*v167 + 176))(v187);
      v171 = v65[87];
      if (*v169)
      {
        v172 = v65[86];
        v173 = v65[82];
        v174 = v65[81];
        v175 = v169;
        v176 = swift_isUniquelyReferenced_nonNull_native();
        v204 = v175[6];
        v175[6] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v177, v172, v171, v174, v173, v176);

        v175[6] = v204;
      }

      else
      {
      }

      v170();
    }

    v34 = v65[1];
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v34 = *(v0 + 8);
  }

  v34();
}

BOOL closure #6 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2 + 56;
  v7 = *(a2 + 16) + 1;
  while (--v7)
  {
    v9 = *(v6 - 24);
    v8 = *(v6 - 16);
    outlined copy of MLS.AllMember(v9, v8);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v9 == v5 && v8 == v4)
    {
      v19 = v5;
      v20 = v4;
LABEL_27:
      outlined consume of MLS.AllMember(v19, v20);
      return 1;
    }

    v6 += 32;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of MLS.AllMember(v9, v8);
    if (v11)
    {
      return 1;
    }
  }

  v23 = v4;
  v12 = a3 + 56;
  v13 = *(a3 + 16) + 1;
  do
  {
    v14 = --v13 != 0;
    if (!v13)
    {
      break;
    }

    v15 = *(v12 - 24);
    v16 = *(v12 - 16);
    outlined copy of MLS.AllMember(v15, v16);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v15 == v5 && v16 == v23)
    {
      v19 = v5;
      v20 = v23;
      goto LABEL_27;
    }

    v12 += 32;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of MLS.AllMember(v15, v16);
  }

  while ((v18 & 1) == 0);
  return v14;
}

BOOL closure #5 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a2 + 56;
  v8 = *(a2 + 16) + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v10 = *(v7 - 24);
    v9 = *(v7 - 16);
    outlined copy of MLS.AllMember(v10, v9);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v10 == v5 && v9 == v6)
    {
      outlined consume of MLS.AllMember(v5, v6);
      return v8 != 0;
    }

    v7 += 32;
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of MLS.AllMember(v10, v9);
  }

  while ((v12 & 1) == 0);
  return v8 != 0;
}

uint64_t MLS.InMemoryPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[23] = a3;
  v5[24] = v4;
  v5[21] = a1;
  v5[22] = a2;
  v6 = a4[1];
  v5[25] = *a4;
  v5[26] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v5[27] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)()
{
  (*(*v0[24] + 160))();
  if (!v0[2])
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v25 = v0[1];
LABEL_62:

    return v25();
  }

  v1 = v0 + 17;
  v2 = v0[24];
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  v3 = *(*v2 + 176);

  result = v3(v0 + 17);
  v5 = result;
  v82 = v6;
  v92 = v0;
  v88 = v3;
  v90 = v0 + 17;
  if (*v6)
  {
    v7 = v0[23];
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v7 + 57;
      v85 = MEMORY[0x277D84F90];
      v78 = v7 + 57;
      v80 = result;
      do
      {
        v11 = (v10 + 32 * v9);
        v12 = v9;
        while (1)
        {
          if (v12 >= v8)
          {
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v9 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_66;
          }

          v13 = v8;
          v14 = *(v11 - 25);
          v15 = *(v11 - 17);
          v16 = *(v11 - 9);
          v17 = *(v11 - 1);
          v18 = *v11;
          outlined copy of MLS.AllMember(v14, v15);
          v19 = v92;
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          if (!v18)
          {
            break;
          }

          result = outlined consume of MLS.AllMember(v14, v15);
          ++v12;
          v11 += 32;
          v8 = v13;
          if (v9 == v13)
          {
            v5 = v80;
            goto LABEL_21;
          }
        }

        v20 = v85;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 16) + 1, 1);
          v19 = v92;
          v20 = v85;
        }

        v5 = v80;
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v23 = v22 + 1;
          v19 = v92;
          v20 = v85;
        }

        *(v20 + 16) = v23;
        v85 = v20;
        v24 = v20 + 32 * v22;
        *(v24 + 32) = v14;
        *(v24 + 40) = v15;
        *(v24 + 48) = v16;
        *(v24 + 56) = v17;
        *(v24 + 57) = 0;
        v8 = v13;
        v10 = v78;
      }

      while (v9 != v13);
    }

    else
    {
      v19 = v0;
      v85 = MEMORY[0x277D84F90];
    }

LABEL_21:
    v27 = v19[25];
    v26 = v19[26];
    v29 = v19[21];
    v28 = v19[22];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v82[4];
    v82[4] = 0x8000000000000000;
    v0 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v85, v27, v26, v29, v28, isUniquelyReferenced_nonNull_native);

    v82[4] = v93;
    v3 = v88;
    v1 = v90;
  }

  v5(v1, 0);
  result = v3(v1);
  v32 = result;
  if (*v31)
  {
    v81 = v31;
    v83 = result;
    v33 = v0[23];
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = 0;
      v36 = v33 + 57;
      v86 = MEMORY[0x277D84F90];
      v79 = v33 + 57;
LABEL_25:
      v37 = (v36 + 32 * v35);
      v38 = v35;
      while (v38 < v34)
      {
        v35 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_68;
        }

        v39 = *(v37 - 25);
        v40 = *(v37 - 17);
        v41 = *(v37 - 9);
        v42 = *(v37 - 1);
        v43 = *v37;
        outlined copy of MLS.AllMember(v39, v40);
        v44 = v92;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v43 == 1)
        {
          v45 = v86;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 16) + 1, 1);
            v44 = v92;
            v45 = v86;
          }

          v36 = v79;
          v47 = *(v45 + 16);
          v46 = *(v45 + 24);
          v48 = v47 + 1;
          if (v47 >= v46 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
            v48 = v47 + 1;
            v44 = v92;
            v45 = v86;
          }

          *(v45 + 16) = v48;
          v86 = v45;
          v49 = v45 + 32 * v47;
          *(v49 + 32) = v39;
          *(v49 + 40) = v40;
          *(v49 + 48) = v41;
          *(v49 + 56) = v42;
          *(v49 + 57) = 1;
          if (v35 != v34)
          {
            goto LABEL_25;
          }

          goto LABEL_40;
        }

        result = outlined consume of MLS.AllMember(v39, v40);
        ++v38;
        v37 += 32;
        if (v35 == v34)
        {
          goto LABEL_40;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v44 = v0;
    v86 = MEMORY[0x277D84F90];
LABEL_40:
    v51 = v44[25];
    v50 = v44[26];
    v53 = v44[21];
    v52 = v44[22];

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v81[5];
    v81[5] = 0x8000000000000000;
    v0 = v44;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v86, v51, v50, v53, v52, v54);

    v81[5] = v94;
    v3 = v88;
    v1 = v90;
    v32 = v83;
  }

  v32(v1, 0);
  result = v3(v1);
  v56 = result;
  if (!*v55)
  {

LABEL_61:
    v56(v1, 0);
    v25 = v0[1];
    goto LABEL_62;
  }

  v87 = v55;
  v89 = result;
  v57 = v0[23];
  v58 = *(v57 + 16);
  if (!v58)
  {
    v68 = v0;
    v91 = MEMORY[0x277D84F90];
LABEL_60:
    v74 = v68[25];
    v73 = v68[26];
    v76 = v68[21];
    v75 = v68[22];
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v87[6];
    v87[6] = 0x8000000000000000;
    v0 = v68;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v91, v74, v73, v76, v75, v77);

    v87[6] = v95;
    v56 = v89;
    v1 = v90;
    goto LABEL_61;
  }

  v59 = 0;
  v60 = v57 + 57;
  v91 = MEMORY[0x277D84F90];
  v84 = v57 + 57;
LABEL_44:
  v61 = (v60 + 32 * v59);
  v62 = v59;
  while (v62 < v58)
  {
    v59 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_70;
    }

    v63 = *(v61 - 25);
    v64 = *(v61 - 17);
    v65 = *(v61 - 9);
    v66 = *(v61 - 1);
    v67 = *v61;
    outlined copy of MLS.AllMember(v63, v64);
    v68 = v92;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v67 == 2)
    {
      v69 = v91;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v91 + 16) + 1, 1);
        v68 = v92;
        v69 = v91;
      }

      v71 = *(v69 + 16);
      v70 = *(v69 + 24);
      if (v71 >= v70 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
        v68 = v92;
        v69 = v91;
      }

      *(v69 + 16) = v71 + 1;
      v91 = v69;
      v72 = v69 + 32 * v71;
      *(v72 + 32) = v63;
      *(v72 + 40) = v64;
      *(v72 + 48) = v65;
      *(v72 + 56) = v66;
      *(v72 + 57) = 2;
      v60 = v84;
      if (v59 != v58)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

    result = outlined consume of MLS.AllMember(v63, v64);
    ++v62;
    v61 += 32;
    if (v59 == v58)
    {
      goto LABEL_60;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t MLS.InMemoryPersister.deleteGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[21] = a1;
  v4[22] = a2;
  v5 = *a3;
  v6 = a3[1];
  v4[23] = v3;
  v4[24] = v5;
  v4[25] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.deleteGroup(identifier:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.deleteGroup(identifier:clientIdentifier:)()
{
  v32 = v0;
  (*(**(v0 + 184) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 184);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v2 = *(*v1 + 176);

    v3 = v2(v0 + 136);
    if (*v4)
    {
      v6 = *(v0 + 192);
      v5 = *(v0 + 200);
      v8 = *(v0 + 168);
      v7 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v6, v5, v8, v7);
    }

    v3(v0 + 136, 0);
    v9 = v2(v0 + 136);
    if (*v10)
    {
      v12 = *(v0 + 192);
      v11 = *(v0 + 200);
      v14 = *(v0 + 168);
      v13 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v12, v11, v14, v13);
    }

    v9(v0 + 136, 0);
    v15 = v2(v0 + 136);
    if (*v16)
    {
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v20 = *(v0 + 168);
      v19 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v18, v17, v20, v19);
    }

    v15(v0 + 136, 0);
    v21 = v2(v0 + 136);
    if (*v22)
    {
      v24 = *(v0 + 192);
      v23 = *(v0 + 200);
      v26 = *(v0 + 168);
      v25 = *(v0 + 176);

      specialized Dictionary._Variant.removeValue(forKey:)(v24, v23, v26, v25, &v31);

      outlined consume of Data?(v31, *(&v31 + 1));
    }

    v21(v0 + 136, 0);
    v27 = v2(v0 + 136);
    if (*v28)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(*(v0 + 192), *(v0 + 200), *(v0 + 168), *(v0 + 176), &v31);

      outlined consume of Data?(v31, *(&v31 + 1));
    }

    else
    {
    }

    v27(v0 + 136, 0);
    v29 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t MLS.InMemoryPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[21] = a1;
  v4[22] = a2;
  v5 = *a3;
  v6 = a3[1];
  v4[23] = v3;
  v4[24] = v5;
  v4[25] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)()
{
  v26 = v0;
  (*(**(v0 + 184) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 184);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v2 = *(*v1 + 176);

    v3 = v2(v0 + 136);
    if (*v4)
    {
      v6 = *(v0 + 192);
      v5 = *(v0 + 200);
      v8 = *(v0 + 168);
      v7 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v6, v5, v8, v7);
    }

    v3(v0 + 136, 0);
    v9 = v2(v0 + 136);
    if (*v10)
    {
      v12 = *(v0 + 192);
      v11 = *(v0 + 200);
      v14 = *(v0 + 168);
      v13 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v12, v11, v14, v13);
    }

    v9(v0 + 136, 0);
    v15 = v2(v0 + 136);
    if (*v16)
    {
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v20 = *(v0 + 168);
      v19 = *(v0 + 176);

      specialized Dictionary.subscript.setter(0, v18, v17, v20, v19);
    }

    v15(v0 + 136, 0);
    v21 = v2(v0 + 136);
    if (*v22)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(*(v0 + 192), *(v0 + 200), *(v0 + 168), *(v0 + 176), &v25);

      outlined consume of Data?(v25, *(&v25 + 1));
    }

    else
    {
    }

    v21(v0 + 136, 0);
    v23 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t MLS.InMemoryPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v7 = *a5;
  v8 = a5[1];
  v6[25] = v5;
  v6[26] = v7;
  v6[27] = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:), v9, 0);
}

uint64_t MLS.InMemoryPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)()
{
  (*(**(v0 + 200) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 200);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v2 = *(*v1 + 176);

    v4 = v2(v0 + 136);
    if (*v3)
    {
      v5 = v3;
      v6 = *(v0 + 216);
      v7 = *(v0 + 192);
      v26 = *(v0 + 184);
      v27 = *(v0 + 208);
      v28 = v2;
      v8 = *(v0 + 168);
      v9 = *(v0 + 176);

      outlined copy of Data._Representation(v8, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v5[1];
      v5[1] = 0x8000000000000000;
      v11 = v8;
      v2 = v28;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v9, v27, v6, v26, v7, isUniquelyReferenced_nonNull_native);

      v5[1] = v30;
    }

    v4(v0 + 136, 0);
    v12 = v2(v0 + 136);
    v14 = v12;
    v15 = *(v0 + 216);
    if (*v13)
    {
      v16 = v13;
      v17 = *(v0 + 208);
      v19 = *(v0 + 184);
      v18 = *(v0 + 192);
      v29 = v12;
      v20 = *(v0 + 168);
      v21 = *(v0 + 176);
      outlined copy of Data._Representation(v20, v21);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v16[2];
      v16[2] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v15, v19, v18, v20, v21, v22);
      v23 = v20;
      v14 = v29;
      outlined consume of Data._Representation(v23, v21);
      v16[2] = v31;
    }

    else
    {
    }

    v14(v0 + 136, 0);
    v24 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t MLS.InMemoryPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[47] = a1;
  v4[48] = a2;
  v5 = *a3;
  v6 = a3[1];
  v4[49] = v3;
  v4[50] = v5;
  v4[51] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)()
{
  v1 = (*(**(v0 + 392) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 392) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  if (*(v30 + 16) && (v31 = *(v0 + 400), v32 = *(v0 + 408), v34 = *(v0 + 376), v33 = *(v0 + 384), , , v35 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32, v34, v33), LOBYTE(v34) = v36, , , (v34 & 1) != 0))
  {
    v37 = (*(v30 + 56) + 16 * v35);
    v39 = *v37;
    v38 = v37[1];
    outlined copy of Data._Representation(*v37, v38);
  }

  else
  {
    v39 = 0;
    v38 = 0xF000000000000000;
  }

  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v40 = *(v0 + 8);

  return v40(v39, v38);
}

uint64_t MLS.InMemoryPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:), v4, 0);
}

uint64_t MLS.InMemoryPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)()
{
  v1 = (*(**(v0 + 392) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 392) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  if (*(v29 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 376), *(v0 + 384)), (v32 & 1) != 0))
  {
    v33 = *(v29 + 56) + 32 * v31;
    v35 = *(v33 + 16);
    v34 = *(v33 + 24);
  }

  else
  {
    v35 = 0;
    v34 = 0;
  }

  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v36 = *(v0 + 8);

  return v36(v35, v34);
}

uint64_t MLS.InMemoryPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v7 = *a5;
  v8 = a5[1];
  v6[25] = v5;
  v6[26] = v7;
  v6[27] = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:), v9, 0);
}

uint64_t MLS.InMemoryPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)()
{
  (*(**(v0 + 200) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 200);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v2 = *(*v1 + 176);

    v4 = v2(v0 + 136);
    if (*v3)
    {
      v5 = v3;
      v6 = *(v0 + 216);
      v14 = *(v0 + 208);
      v8 = *(v0 + 184);
      v7 = *(v0 + 192);
      v9 = *(v0 + 168);
      v10 = *(v0 + 176);
      outlined copy of Data._Representation(v9, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v5[3];
      v5[3] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v10, v14, v6, v8, v7, isUniquelyReferenced_nonNull_native);

      v5[3] = v15;
    }

    else
    {
    }

    v4(v0 + 136, 0);
    v12 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t MLS.InMemoryPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[47] = a1;
  v4[48] = a2;
  v5 = *a3;
  v6 = a3[1];
  v4[49] = v3;
  v4[50] = v5;
  v4[51] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadGroupClientContextBlob(identifier:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)()
{
  v1 = (*(**(v0 + 392) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 392) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  if (*(v28 + 16) && (v31 = *(v0 + 400), v32 = *(v0 + 408), v34 = *(v0 + 376), v33 = *(v0 + 384), , , v35 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32, v34, v33), LOBYTE(v34) = v36, , , (v34 & 1) != 0))
  {
    v37 = (*(v28 + 56) + 16 * v35);
    v39 = *v37;
    v38 = v37[1];
    outlined copy of Data._Representation(*v37, v38);
  }

  else
  {
    v39 = 0;
    v38 = 0xF000000000000000;
  }

  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v40 = *(v0 + 8);

  return v40(v39, v38);
}

uint64_t MLS.InMemoryPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)(void *__src, uint64_t a2, uint64_t a3, void *a4)
{
  v5[369] = v4;
  v5[368] = a3;
  v5[367] = a2;
  memcpy(v5 + 150, __src, 0x118uLL);
  v7 = a4[1];
  v5[370] = *a4;
  v5[371] = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:), v8, 0);
}

void (*MLS.InMemoryPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)())(void *, void)
{
  v116 = v0;
  v1 = *(*v0[369] + 160);
  v1();
  if (v0[288])
  {
    v2 = outlined destroy of NSObject?((v0 + 288), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    (v1)(v2);
    v3 = v0[303];
    v4 = v0 + 304;
    v5 = v0[312];
    v6 = v0 + 313;
    if (v3)
    {
      v109 = v0 + 2;
      v0[273] = v3;
      v105 = (v0 + 243);
      v106 = v0 + 39;
      v7 = *(v0 + 153);
      *(v0 + 137) = *v4;
      *(v0 + 138) = v7;
      v8 = *(v0 + 155);
      *(v0 + 139) = *(v0 + 154);
      *(v0 + 140) = v8;
      v0[282] = v5;
      v9 = *(v0 + 315);
      *(v0 + 283) = *v6;
      *(v0 + 285) = v9;
      v0[287] = v0[317];
      outlined destroy of NSObject?((v0 + 273), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      memcpy(v0 + 185, v0 + 150, 0x118uLL);
      updated = _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOg((v0 + 185));
      v11 = v0[371];
      v12 = v0[370];
      v13 = v0[368];
      v107 = v0[367];
      v108 = v0[369];
      v14 = destructiveProjectEnumData for MLS.OutgoingEventUpdate((v0 + 185));
      v15 = v14;
      if (!updated)
      {
        v25 = *v14;
        v26 = *(v14 + 16);
        v27 = *(v14 + 48);
        *(v0 + 112) = *(v14 + 32);
        *(v0 + 113) = v27;
        *(v0 + 110) = v25;
        *(v0 + 111) = v26;
        v28 = *(v14 + 64);
        v29 = *(v14 + 80);
        v30 = *(v14 + 112);
        *(v0 + 116) = *(v14 + 96);
        *(v0 + 117) = v30;
        *(v0 + 114) = v28;
        *(v0 + 115) = v29;
        v31 = *(v14 + 128);
        v32 = *(v14 + 144);
        v33 = *(v14 + 160);
        *(v0 + 1936) = *(v14 + 176);
        *(v0 + 119) = v32;
        *(v0 + 120) = v33;
        *(v0 + 118) = v31;
        v103 = *(v14 + 256);
        v104 = *(v14 + 264);
        v102 = *(v14 + 272);
        v34 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
        v0[351] = v12;
        v0[352] = v11;
        v0[353] = v107;
        v0[354] = v13;
        v0[355] = v34;
        v0[356] = v35;
        v36 = *(*v108 + 176);

        v37 = v36;
        v39 = v36(v105);
        if (*v38)
        {
          v40 = v38;
          v41 = *v15;
          v42 = *(v15 + 16);
          v43 = *(v15 + 48);
          *(v0 + 43) = *(v15 + 32);
          *(v0 + 45) = v43;
          *v106 = v41;
          *(v0 + 41) = v42;
          v44 = *(v15 + 64);
          v45 = *(v15 + 80);
          v46 = *(v15 + 112);
          *(v0 + 51) = *(v15 + 96);
          *(v0 + 53) = v46;
          *(v0 + 47) = v44;
          *(v0 + 49) = v45;
          v47 = *(v15 + 128);
          v48 = *(v15 + 144);
          v49 = *(v15 + 160);
          *(v0 + 488) = *(v15 + 176);
          *(v0 + 57) = v48;
          *(v0 + 59) = v49;
          *(v0 + 55) = v47;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v50 = *(v0 + 57);
          __src[8] = *(v0 + 55);
          __src[9] = v50;
          __src[10] = *(v0 + 59);
          LOBYTE(__src[11]) = *(v0 + 488);
          v51 = *(v0 + 49);
          __src[4] = *(v0 + 47);
          __src[5] = v51;
          v52 = *(v0 + 53);
          __src[6] = *(v0 + 51);
          __src[7] = v52;
          v53 = *(v0 + 41);
          __src[0] = *v106;
          __src[1] = v53;
          v54 = *(v0 + 45);
          __src[2] = *(v0 + 43);
          __src[3] = v54;
          *(&__src[11] + 8) = *(v15 + 184);
          *(&__src[12] + 8) = *(v15 + 200);
          *(&__src[13] + 8) = *(v15 + 216);
          *(&__src[14] + 8) = *(v15 + 232);
          *(&__src[15] + 1) = *(v15 + 248);
          v55 = __src[9];
          *(v0 + 46) = __src[8];
          *(v0 + 47) = v55;
          v56 = __src[5];
          *(v0 + 42) = __src[4];
          *(v0 + 43) = v56;
          v57 = __src[7];
          *(v0 + 44) = __src[6];
          *(v0 + 45) = v57;
          v58 = __src[1];
          *(v0 + 38) = __src[0];
          *(v0 + 39) = v58;
          v59 = __src[3];
          *(v0 + 40) = __src[2];
          *(v0 + 41) = v59;
          v60 = __src[13];
          *(v0 + 50) = __src[12];
          *(v0 + 51) = v60;
          v61 = __src[15];
          *(v0 + 52) = __src[14];
          *(v0 + 53) = v61;
          v62 = __src[11];
          *(v0 + 48) = __src[10];
          *(v0 + 49) = v62;
          v0[108] = v103;
          v0[109] = v104;
          v0[110] = v102;
          *(v0 + 888) = 0;
          v0[112] = v5;
          v63 = v0 + 2;
          outlined init with copy of MLS.OutgoingEventState?(v15, v109, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v15 + 184, v109, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v40[11];
          v40[11] = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v0 + 76, (v0 + 351), isUniquelyReferenced_nonNull_native);
          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 351));
          v40[11] = v110;
          v39(v105, 0);
        }

        else
        {
          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 351));
          v39(v105, 0);
          v63 = v0 + 2;
        }

        result = v37(v63);
        if (*v98)
        {
          if (__OFADD__(v5, 1))
          {
            __break(1u);
            return result;
          }

          v98[9] = v5 + 1;
        }

        result(v63, 0);
        goto LABEL_27;
      }

      if (updated == 1)
      {
        v16 = *v14;
        v17 = *(v14 + 8);
        v0[345] = v12;
        v0[346] = v11;
        v0[347] = v107;
        v0[348] = v13;
        v0[349] = v16;
        v0[350] = v17;
        v18 = *(*v108 + 176);

        outlined init with copy of MLS.OutgoingEventUpdate((v0 + 150), v109);

        v19 = v18(v106);
        if (*v20)
        {
          specialized Dictionary._Variant.removeValue(forKey:)(__src);
          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 345));
          memcpy(v109, __src, 0x128uLL);
          outlined destroy of NSObject?(v109, &_s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgMR);
        }

        else
        {
          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 345));
        }

        v19(v106, 0);
      }

      else
      {
        v65 = *v14;
        v66 = *(v14 + 8);
        v0[357] = v12;
        v0[358] = v11;
        v0[359] = v107;
        v0[360] = v13;
        v0[361] = v65;
        v0[362] = v66;

        outlined init with copy of MLS.OutgoingEventUpdate((v0 + 150), v109);

        (v1)(v67);
        v68 = v0[258];
        v69 = (v0 + 259);
        v70 = v0[269];
        v71 = v0 + 270;
        if (v68)
        {
          if (*(v70 + 16))
          {
            v72 = specialized __RawDictionaryStorage.find<A>(_:)();
            if (v73)
            {
              memcpy(v109, (*(v70 + 56) + 296 * v72), 0x128uLL);
              v74 = *v69;
              *(v0 + 123) = *(v0 + 261);
              v75 = *(v0 + 265);
              *(v0 + 124) = *(v0 + 263);
              *(v0 + 125) = v75;
              *(v0 + 126) = *(v0 + 267);
              v0[243] = v68;
              *(v0 + 122) = v74;
              v0[254] = v70;
              *(v0 + 255) = *v71;
              v0[257] = v0[272];
              outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v109, v106);
              outlined destroy of NSObject?(v105, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
              v76 = v0[25];
              v78 = v0[26];
              v77 = v0 + 25;
              v111 = *(v0 + 27);
              v112 = *(v0 + 29);
              v113 = *(v0 + 31);
              v114 = v0[33];
              v79 = v0[369];
              if (v78)
              {
                v80 = *(v0 + 31);
                *(v0 + 161) = *(v0 + 29);
                *(v0 + 162) = v80;
                v0[326] = v0[33];
                v81 = *(v0 + 27);
                *(v0 + 159) = *v77;
                *(v0 + 160) = v81;
                v82 = *(*v79 + 176);
                outlined init with copy of MLS.OutgoingEventState((v0 + 318), v106);
                v84 = v82(v0 + 363);
                if (*v83)
                {
                  v85 = v83;
                  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOi0_(v106);
                  *(v0 + 69) = v111;
                  *(v0 + 70) = v112;
                  *(v0 + 71) = v113;
                  v0[144] = v114;
                  v86 = v0[38];
                  v87 = *(v0 + 57);
                  *(v0 + 129) = *(v0 + 55);
                  *(v0 + 131) = v87;
                  *(v0 + 133) = *(v0 + 59);
                  *(v0 + 1080) = *(v0 + 488);
                  v88 = *(v0 + 49);
                  *(v0 + 121) = *(v0 + 47);
                  *(v0 + 123) = v88;
                  v89 = *(v0 + 53);
                  *(v0 + 125) = *(v0 + 51);
                  *(v0 + 127) = v89;
                  v90 = *(v0 + 41);
                  *(v0 + 113) = *v106;
                  *(v0 + 115) = v90;
                  v91 = *(v0 + 45);
                  *(v0 + 117) = *(v0 + 43);
                  *(v0 + 119) = v91;
                  v0[136] = v76;
                  v0[137] = v78;
                  v0[145] = 0;
                  v0[147] = 0;
                  v0[146] = 0;
                  *(v0 + 1184) = 1;
                  v0[149] = v86;
                  v92 = *(v0 + 31);
                  *(v0 + 331) = *(v0 + 29);
                  *(v0 + 333) = v92;
                  v0[335] = v0[33];
                  v93 = *(v0 + 27);
                  *(v0 + 327) = *v77;
                  *(v0 + 329) = v93;
                  outlined init with copy of MLS.OutgoingEventState((v0 + 327), (v0 + 336));
                  v94 = swift_isUniquelyReferenced_nonNull_native();
                  *&__src[0] = v85[11];
                  v85[11] = 0x8000000000000000;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v0 + 113, (v0 + 357), v94);
                  outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
                  v85[11] = *&__src[0];
                }

                else
                {
                  outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
                }

                v84(v0 + 363, 0);
                outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
              }

              else
              {
                v100 = (*(*v79 + 176))(v0 + 318);
                if (*v101)
                {
                  specialized Dictionary._Variant.removeValue(forKey:)(__src);
                  outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
                  memcpy(v106, __src, 0x128uLL);
                  outlined destroy of NSObject?(v106, &_s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgMR);
                }

                else
                {
                  outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
                }

                v100(v0 + 318, 0);
              }

              outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v109);
              goto LABEL_27;
            }
          }

          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
          v95 = *v69;
          *(v0 + 5) = *(v0 + 261);
          v96 = *(v0 + 265);
          *(v0 + 7) = *(v0 + 263);
          *(v0 + 9) = v96;
          *(v0 + 11) = *(v0 + 267);
          v0[2] = v68;
        }

        else
        {
          outlined destroy of MLS.InMemoryPersister.GroupEventStoreID((v0 + 357));
          v95 = *v69;
          *(v0 + 5) = *(v0 + 261);
          v99 = *(v0 + 265);
          *(v0 + 7) = *(v0 + 263);
          *(v0 + 9) = v99;
          *(v0 + 11) = *(v0 + 267);
          v0[2] = 0;
        }

        *(v0 + 3) = v95;
        v0[13] = v70;
        *(v0 + 7) = *v71;
        v0[16] = v0[272];
        outlined destroy of NSObject?(v109, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      }

LABEL_27:
      v24 = v0[1];
      goto LABEL_28;
    }

    v0[2] = 0;
    v21 = *(v0 + 153);
    *(v0 + 3) = *v4;
    *(v0 + 5) = v21;
    v22 = *(v0 + 155);
    *(v0 + 7) = *(v0 + 154);
    *(v0 + 9) = v22;
    v0[11] = v5;
    v23 = *(v0 + 315);
    *(v0 + 6) = *v6;
    *(v0 + 7) = v23;
    v0[16] = v0[317];
    outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  }

  lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
  swift_allocError();
  swift_willThrow();
  v24 = v0[1];
LABEL_28:

  return v24();
}

uint64_t MLS.InMemoryPersister.save(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v5 + 792) = v4;
  *(v5 + 784) = a3;
  *(v5 + 776) = a2;
  v6 = *(a1 + 80);
  *(v5 + 552) = *(a1 + 64);
  *(v5 + 568) = v6;
  *(v5 + 584) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v5 + 488) = *a1;
  *(v5 + 504) = v7;
  v8 = *(a1 + 48);
  *(v5 + 520) = *(a1 + 32);
  *(v5 + 536) = v8;
  v9 = a4[1];
  *(v5 + 800) = *a4;
  *(v5 + 808) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(incomingEvent:forGroup:clientIdentifier:), v10, 0);
}

void (*MLS.InMemoryPersister.save(incomingEvent:forGroup:clientIdentifier:)())(uint64_t, void)
{
  v1 = *(**(v0 + 792) + 160);
  v1();
  if (!*(v0 + 136))
  {
    goto LABEL_6;
  }

  v2 = outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  (v1)(v2);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  if (!v3)
  {
    *(v0 + 256) = 0;
    v24 = *(v0 + 40);
    *(v0 + 264) = *(v0 + 24);
    *(v0 + 280) = v24;
    v25 = *(v0 + 72);
    *(v0 + 296) = *(v0 + 56);
    *(v0 + 312) = v25;
    *(v0 + 328) = v4;
    v26 = *(v0 + 112);
    *(v0 + 336) = *(v0 + 96);
    *(v0 + 352) = v26;
    *(v0 + 368) = *(v0 + 128);
    outlined destroy of NSObject?(v0 + 256, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
LABEL_6:
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v27 = *(v0 + 8);
    goto LABEL_12;
  }

  v5 = *(v0 + 808);
  v6 = *(v0 + 800);
  v7 = *(v0 + 792);
  v8 = *(v0 + 784);
  v9 = *(v0 + 776);
  *(v0 + 256) = v3;
  v10 = *(v0 + 40);
  *(v0 + 264) = *(v0 + 24);
  *(v0 + 280) = v10;
  v11 = *(v0 + 72);
  *(v0 + 296) = *(v0 + 56);
  *(v0 + 312) = v11;
  *(v0 + 328) = v4;
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  *(v0 + 368) = *(v0 + 128);
  *(v0 + 336) = v12;
  *(v0 + 352) = v13;
  outlined destroy of NSObject?(v0 + 256, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  v15 = *(v0 + 488);
  v14 = *(v0 + 496);
  *(v0 + 696) = v6;
  *(v0 + 704) = v5;
  *(v0 + 712) = v9;
  *(v0 + 720) = v8;
  *(v0 + 728) = v15;
  *(v0 + 736) = v14;
  v16 = *(*v7 + 176);

  v18 = v16(v0 + 744);
  if (*v17)
  {
    v19 = v17;
    v20 = *(v0 + 568);
    *(v0 + 440) = *(v0 + 552);
    *(v0 + 456) = v20;
    *(v0 + 472) = *(v0 + 584);
    v21 = *(v0 + 504);
    *(v0 + 376) = *(v0 + 488);
    *(v0 + 392) = v21;
    v22 = *(v0 + 536);
    *(v0 + 408) = *(v0 + 520);
    *(v0 + 424) = v22;
    *(v0 + 480) = v4;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 488, v0 + 592, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v19[10];
    v19[10] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 376), (v0 + 696), isUniquelyReferenced_nonNull_native);
    outlined destroy of MLS.InMemoryPersister.GroupEventStoreID(v0 + 696);
    v19[10] = v30;
  }

  else
  {
    outlined destroy of MLS.InMemoryPersister.GroupEventStoreID(v0 + 696);
  }

  v18(v0 + 744, 0);
  result = v16(v0 + 592);
  if (*v29)
  {
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    v29[9] = v4 + 1;
  }

  result(v0 + 592, 0);
  v27 = *(v0 + 8);
LABEL_12:

  return v27();
}

uint64_t MLS.InMemoryPersister.delete(incomingEvent:forGroup:clientIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5[41] = a2;
  v5[42] = a3;
  v6 = *a1;
  v7 = a1[1];
  v5[43] = v4;
  v5[44] = v6;
  v8 = *a4;
  v9 = a4[1];
  v5[45] = v7;
  v5[46] = v8;
  v5[47] = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.delete(incomingEvent:forGroup:clientIdentifier:), v10, 0);
}

uint64_t MLS.InMemoryPersister.delete(incomingEvent:forGroup:clientIdentifier:)()
{
  v17 = v0;
  (*(**(v0 + 344) + 160))();
  if (*(v0 + 16))
  {
    v2 = *(v0 + 368);
    v1 = *(v0 + 376);
    v4 = *(v0 + 352);
    v3 = *(v0 + 360);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    *(v0 + 248) = v2;
    *(v0 + 256) = v1;
    *(v0 + 264) = v7;
    *(v0 + 272) = v6;
    *(v0 + 280) = v4;
    *(v0 + 288) = v3;
    v8 = *(*v5 + 176);

    v9 = v8(v0 + 296);
    if (*v10)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v16);
      outlined destroy of MLS.InMemoryPersister.GroupEventStoreID(v0 + 248);
      v11 = v16[2];
      *(v0 + 184) = v16[3];
      v12 = v16[5];
      *(v0 + 200) = v16[4];
      *(v0 + 216) = v12;
      *(v0 + 232) = v16[6];
      v13 = v16[1];
      *(v0 + 136) = v16[0];
      *(v0 + 152) = v13;
      *(v0 + 168) = v11;
      outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVSgMR);
    }

    else
    {
      outlined destroy of MLS.InMemoryPersister.GroupEventStoreID(v0 + 248);
    }

    v9(v0 + 296, 0);
    v14 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t MLS.InMemoryPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v5 + 168) = a2;
  *(v5 + 176) = a3;
  v6 = *a1;
  *(v5 + 184) = v4;
  *(v5 + 192) = v6;
  *(v5 + 200) = a1[1];
  *(v5 + 224) = *(a1 + 16);
  v7 = a4[1];
  *(v5 + 208) = *a4;
  *(v5 + 216) = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:), v8, 0);
}

uint64_t MLS.InMemoryPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)()
{
  (*(**(v0 + 184) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 184);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v2 = *(*v1 + 176);

    v4 = v2(v0 + 136);
    if (*v3)
    {
      v6 = *(v0 + 208);
      v5 = *(v0 + 216);
      v7 = *(v0 + 224);
      v8 = *(v0 + 200);
      v9 = *(v0 + 192);
      v11 = *(v0 + 168);
      v10 = *(v0 + 176);
      v16 = v4;
      v12 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v12[8];
      v12[8] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v7, v6, v5, v11, v10, isUniquelyReferenced_nonNull_native, v8);

      v12[8] = v17;
      v4 = v16;
    }

    else
    {
    }

    v4(v0 + 136, 0);
    v14 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t MLS.InMemoryPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[49] = a3;
  v5[50] = v4;
  v5[47] = a1;
  v5[48] = a2;
  v6 = a4[1];
  v5[51] = *a4;
  v5[52] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:), v7, 0);
}

uint64_t MLS.InMemoryPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)()
{
  v1 = (*(**(v0 + 400) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 400) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  v32 = *(v0 + 408);
  v31 = *(v0 + 416);
  v34 = *(v0 + 384);
  v33 = *(v0 + 392);
  v35 = *(v0 + 376);
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;

  specialized Dictionary.subscript.getter(v32, v31, v34, v33, v23, v35);
  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t MLS.InMemoryPersister.loadClientIdentifiersWithEvents()()
{
  *(v1 + 376) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadClientIdentifiersWithEvents(), v2, 0);
}

{
  v45 = v0;
  v1 = (*(**(v0 + 376) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 376) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;

  v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAL08IncomingL5EntryV_G_AJ22UniqueClientIdentifierVs5NeverOTg504_s15e16Messaging3MLSO17hij7C31loadr28IdentifiersWithEventsSayAC06q3H10s12VGyYaKFAhE17klM8IDVXEfU_Tf1cn_nTm(v31, 278);

  v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAHGTt0g5Tf4g_n(v32);

  v35 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAL08IncomingL5EntryV_G_AJ22UniqueClientIdentifierVs5NeverOTg504_s15e16Messaging3MLSO17hij7C31loadr28IdentifiersWithEventsSayAC06q3H10s12VGyYaKFAhE17klM8IDVXEfU_Tf1cn_nTm(v34, 279);
  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);

  v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAHGTt0g5Tf4g_n(v35);

  v37 = specialized Set.union<A>(_:)(v36, v33);
  v38 = v37;
  v39 = *(v37 + 16);
  if (v39)
  {
    v40 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_Tt1g5(*(v37 + 16), 0);
    v41 = specialized Sequence._copySequenceContents(initializing:)(&v44, v40 + 4, v39, v38);
    outlined consume of Set<MLS.UniqueClientIdentifier>.Iterator._Variant(v44);
    if (v41 == v39)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v40 = MEMORY[0x277D84F90];
LABEL_8:
  v42 = *(v0 + 8);

  return v42(v40);
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Set._Variant.insert(_:)(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t MLS.InMemoryPersister.loadEvents(clientIdentifier:)(uint64_t a1, void *a2)
{
  v3[145] = v2;
  v3[144] = a1;
  v4 = a2[1];
  v3[146] = *a2;
  v3[147] = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v3[148] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadEvents(clientIdentifier:), v5, 0);
}

void MLS.InMemoryPersister.loadEvents(clientIdentifier:)()
{
  v270 = v0;
  v1 = (*(**(v0 + 1160) + 160))();
  v2 = *(v0 + 912);
  if (v2)
  {
    v3 = (v0 + 1024);
    v4 = (v0 + 1016);
    v5 = (v0 + 1008);
    v6 = (v0 + 1000);
    v7 = (v0 + 992);
    v8 = (v0 + 984);
    v9 = (v0 + 976);
    v10 = (v0 + 968);
    v11 = (v0 + 960);
    v12 = (v0 + 952);
    v13 = (v0 + 944);
    v14 = (v0 + 936);
    v15 = (v0 + 928);
    v16 = (v0 + 920);
  }

  else
  {
    (*(**(v0 + 1160) + 136))(v1);
    v3 = (v0 + 904);
    v4 = (v0 + 896);
    v5 = (v0 + 888);
    v6 = (v0 + 880);
    v7 = (v0 + 872);
    v8 = (v0 + 864);
    v9 = (v0 + 856);
    v10 = (v0 + 848);
    v11 = (v0 + 840);
    v12 = (v0 + 832);
    v13 = (v0 + 824);
    v14 = (v0 + 816);
    v15 = (v0 + 808);
    v2 = *(v0 + 792);
    v16 = (v0 + 800);
  }

  v17 = *v3;
  v240 = (v0 + 312);
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 1032) = v2;
  *(v0 + 1040) = v30;
  *(v0 + 1048) = v29;
  *(v0 + 1056) = v28;
  *(v0 + 1064) = v27;
  *(v0 + 1072) = v26;
  *(v0 + 1080) = v25;
  *(v0 + 1088) = v24;
  *(v0 + 1096) = v23;
  *(v0 + 1104) = v22;
  *(v0 + 1112) = v21;
  *(v0 + 1120) = v20;
  *(v0 + 1128) = v19;
  *(v0 + 1136) = v18;
  *(v0 + 1144) = v17;
  v31 = -1 << *(v21 + 32);
  if (-v31 < 64)
  {
    v32 = ~(-1 << -v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v21 + 64);
  v34 = (63 - v31) >> 6;

  v220 = 0;
  v35 = 0;
  v227 = MEMORY[0x277D84F98];
  v224 = v20;
  while (v33)
  {
    v36 = v35;
LABEL_13:
    v37 = *(v0 + 1176);
    v38 = *(v0 + 1168);
    v39 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v40 = v39 | (v36 << 6);
    v41 = (*(v21 + 48) + 48 * v40);
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[3];
    v236 = v41[2];
    v45 = (*(v21 + 56) + 112 * v40);
    v47 = v45[1];
    v46 = v45[2];
    *v240 = *v45;
    *(v0 + 328) = v47;
    *(v0 + 344) = v46;
    v48 = v45[6];
    v50 = v45[3];
    v49 = v45[4];
    *(v0 + 392) = v45[5];
    *(v0 + 408) = v48;
    *(v0 + 360) = v50;
    *(v0 + 376) = v49;
    v51 = v42 == v38 && v43 == v37;
    if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(v240, v0 + 16);
      outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v220, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v254 = v227;
      v233 = specialized __RawDictionaryStorage.find<A>(_:)(v236, v44);
      v52 = *(v227 + 16);
      v231 = v53;
      v54 = (v53 & 1) == 0;
      v55 = v52 + v54;
      if (__OFADD__(v52, v54))
      {
        goto LABEL_140;
      }

      if (*(v227 + 24) >= v55)
      {

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
          v227 = v254;
        }

        if (v231)
        {
          goto LABEL_28;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, isUniquelyReferenced_nonNull_native);
        v227 = v254;
        v233 = specialized __RawDictionaryStorage.find<A>(_:)(v236, v44);
        if ((v231 & 1) != (v56 & 1))
        {
LABEL_128:

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        if (v231)
        {
LABEL_28:

          v57 = v227;
          v62 = v233;
          goto LABEL_29;
        }
      }

      v57 = v227;
      *(v227 + 8 * (v233 >> 6) + 64) |= 1 << v233;
      v58 = (*(v227 + 48) + 16 * v233);
      *v58 = v236;
      v58[1] = v44;
      *(*(v227 + 56) + 8 * v233) = MEMORY[0x277D84F90];
      v59 = *(v227 + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_141;
      }

      v62 = v233;
      *(v227 + 16) = v61;
LABEL_29:
      v63 = *(v57 + 56);
      v64 = *(v63 + 8 * v62);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *(v63 + 8 * v62) = v64;
      if ((v65 & 1) == 0)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
        *(v63 + 8 * v62) = v64;
      }

      v67 = *(v64 + 2);
      v66 = *(v64 + 3);
      if (v67 >= v66 >> 1)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v64);
        *(v63 + 8 * v62) = v64;
      }

      *(v64 + 2) = v67 + 1;
      v68 = &v64[112 * v67];
      v69 = *v240;
      v70 = *(v0 + 344);
      *(v68 + 3) = *(v0 + 328);
      *(v68 + 4) = v70;
      *(v68 + 2) = v69;
      v71 = *(v0 + 360);
      v72 = *(v0 + 376);
      v73 = *(v0 + 408);
      *(v68 + 7) = *(v0 + 392);
      *(v68 + 8) = v73;
      *(v68 + 5) = v71;
      *(v68 + 6) = v72;
      v220 = specialized thunk for @callee_guaranteed () -> (@owned [MLS.InMemoryPersister.OutgoingEventEntry]);
      v35 = v36;
      v20 = v224;
    }

    else
    {
      v35 = v36;
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(v21 + 64 + 8 * v36);
    ++v35;
    if (v33)
    {
      goto LABEL_13;
    }
  }

  v74 = v227;
  v75 = v227 + 64;
  v76 = -1;
  v77 = -1 << *(v227 + 32);
  if (-v77 < 64)
  {
    v76 = ~(-1 << -v77);
  }

  v78 = v76 & *(v227 + 64);
  v79 = (63 - v77) >> 6;

  v80 = 0;
  v81 = MEMORY[0x277D84F98];
  for (i = v79; ; v79 = i)
  {
    v232 = v81;
    if (!v78)
    {
      break;
    }

    v85 = v80;
LABEL_44:
    v86 = __clz(__rbit64(v78)) | (v85 << 6);
    v87 = (*(v74 + 48) + 16 * v86);
    v88 = v87[1];
    v237 = *v87;
    *&v254 = *(*(v74 + 56) + 8 * v86);
    swift_bridgeObjectRetain_n();

    specialized MutableCollection<>.sort(by:)(&v254);

    v89 = v254;
    v90 = *(v254 + 16);
    if (v90)
    {
      *&v254 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
      v91 = v254;
      v92 = v90 - 1;
      for (j = 32; ; j += 112)
      {
        v95 = *(v89 + j + 16);
        v94 = *(v89 + j + 32);
        *(v0 + 16) = *(v89 + j);
        *(v0 + 32) = v95;
        *(v0 + 48) = v94;
        v96 = *(v89 + j + 96);
        v98 = *(v89 + j + 48);
        v97 = *(v89 + j + 64);
        *(v0 + 96) = *(v89 + j + 80);
        *(v0 + 112) = v96;
        *(v0 + 64) = v98;
        *(v0 + 80) = v97;
        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(v0 + 16, v240);
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        *&v254 = v91;
        v100 = *(v91 + 16);
        v99 = *(v91 + 24);
        if (v100 >= v99 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1);
          v91 = v254;
        }

        *(v91 + 16) = v100 + 1;
        v101 = v91 + 104 * v100;
        v102 = *(v0 + 16);
        v103 = *(v0 + 48);
        *(v101 + 48) = *(v0 + 32);
        *(v101 + 64) = v103;
        *(v101 + 32) = v102;
        v104 = *(v0 + 64);
        v105 = *(v0 + 80);
        v106 = *(v0 + 96);
        *(v101 + 128) = *(v0 + 112);
        *(v101 + 96) = v105;
        *(v101 + 112) = v106;
        *(v101 + 80) = v104;
        if (!v92)
        {
          break;
        }

        --v92;
      }

      v74 = v227;
      v20 = v224;
    }

    else
    {

      v91 = MEMORY[0x277D84F90];
    }

    v107 = swift_isUniquelyReferenced_nonNull_native();
    *&v254 = v232;
    v108 = specialized __RawDictionaryStorage.find<A>(_:)(v237, v88);
    v110 = v232[2];
    v111 = (v109 & 1) == 0;
    v60 = __OFADD__(v110, v111);
    v112 = v110 + v111;
    if (v60)
    {
      goto LABEL_136;
    }

    v113 = v109;
    if (v232[3] >= v112)
    {
      if ((v107 & 1) == 0)
      {
        v118 = v108;
        specialized _NativeDictionary.copy()();
        v108 = v118;
        v74 = v227;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v112, v107);
      v108 = specialized __RawDictionaryStorage.find<A>(_:)(v237, v88);
      if ((v113 & 1) != (v114 & 1))
      {
        goto LABEL_128;
      }
    }

    v78 &= v78 - 1;
    if (v113)
    {
      v82 = v78;
      v83 = v108;

      v84 = v254;
      *(*(v254 + 56) + 8 * v83) = v91;
      v78 = v82;

      v81 = v84;
    }

    else
    {
      v81 = v254;
      *(v254 + 8 * (v108 >> 6) + 64) |= 1 << v108;
      v115 = (v81[6] + 16 * v108);
      *v115 = v237;
      v115[1] = v88;
      *(v81[7] + 8 * v108) = v91;
      v116 = v81[2];
      v60 = __OFADD__(v116, 1);
      v117 = v116 + 1;
      if (v60)
      {
        goto LABEL_138;
      }

      v81[2] = v117;
    }

    v80 = v85;
    v75 = v227 + 64;
  }

  while (1)
  {
    v85 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      goto LABEL_133;
    }

    if (v85 >= v79)
    {
      break;
    }

    v78 = *(v75 + 8 * v85);
    ++v80;
    if (v78)
    {
      goto LABEL_44;
    }
  }

  outlined destroy of MLS.InMemoryPersister.State(v0 + 1032);
  v219 = 0;
  v119 = 0;
  v120 = v20 + 64;
  v121 = -1;
  v122 = -1 << *(v20 + 32);
  if (-v122 < 64)
  {
    v121 = ~(-1 << -v122);
  }

  v123 = v121 & *(v20 + 64);
  v124 = (63 - v122) >> 6;
  v222 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v123)
    {
LABEL_71:
      v126 = __clz(__rbit64(v123));
      v123 &= v123 - 1;
      v127 = v126 | (v119 << 6);
      v128 = (*(v20 + 48) + 48 * v127);
      v129 = *v128;
      v130 = v128[1];
      v131 = v128[3];
      v238 = v128[2];
      v132 = (*(v20 + 56) + 296 * v127);
      memcpy((v0 + 16), v132, 0x128uLL);
      v133 = v132[3];
      v135 = *v132;
      v134 = v132[1];
      *(v0 + 640) = v132[2];
      *(v0 + 656) = v133;
      *(v0 + 608) = v135;
      *(v0 + 624) = v134;
      v136 = v132[7];
      v138 = v132[4];
      v137 = v132[5];
      *(v0 + 704) = v132[6];
      *(v0 + 720) = v136;
      *(v0 + 672) = v138;
      *(v0 + 688) = v137;
      v140 = v132[9];
      v139 = v132[10];
      v141 = v132[8];
      *(v0 + 784) = *(v132 + 176);
      *(v0 + 752) = v140;
      *(v0 + 768) = v139;
      *(v0 + 736) = v141;
      if (_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOg(v0 + 608) == 1 || (*(v0 + 296) & 1) != 0 || (v129 != *(v0 + 1168) || v130 != *(v0 + 1176)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }

      outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16, v240);
      outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v219, 0);
      v142 = swift_isUniquelyReferenced_nonNull_native();
      *&v254 = v222;
      v234 = specialized __RawDictionaryStorage.find<A>(_:)(v238, v131);
      v143 = *(v222 + 16);
      v229 = v144;
      v145 = (v144 & 1) == 0;
      v146 = v143 + v145;
      if (__OFADD__(v143, v145))
      {
        goto LABEL_144;
      }

      if (*(v222 + 24) >= v146)
      {

        if ((v142 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
          v222 = v254;
        }

        if ((v229 & 1) == 0)
        {
LABEL_80:
          v148 = v222;
          *(v222 + 8 * (v234 >> 6) + 64) |= 1 << v234;
          v149 = (*(v222 + 48) + 16 * v234);
          *v149 = v238;
          v149[1] = v131;
          *(*(v222 + 56) + 8 * v234) = MEMORY[0x277D84F90];
          v150 = *(v222 + 16);
          v60 = __OFADD__(v150, 1);
          v151 = v150 + 1;
          if (v60)
          {
            goto LABEL_145;
          }

          v152 = v234;
          *(v222 + 16) = v151;
          goto LABEL_86;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v146, v142);
        v222 = v254;
        v234 = specialized __RawDictionaryStorage.find<A>(_:)(v238, v131);
        if ((v229 & 1) != (v147 & 1))
        {
          goto LABEL_128;
        }

        if ((v229 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      v148 = v222;
      v152 = v234;
LABEL_86:
      v153 = *(v148 + 56);
      v154 = *(v153 + 8 * v152);
      v155 = swift_isUniquelyReferenced_nonNull_native();
      *(v153 + 8 * v152) = v154;
      if ((v155 & 1) == 0)
      {
        v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v154 + 2) + 1, 1, v154);
        *(v153 + 8 * v152) = v154;
      }

      v157 = *(v154 + 2);
      v156 = *(v154 + 3);
      if (v157 >= v156 >> 1)
      {
        v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v156 > 1), v157 + 1, 1, v154);
        *(v153 + 8 * v152) = v154;
      }

      *(v154 + 2) = v157 + 1;
      memcpy(&v154[296 * v157 + 32], (v0 + 16), 0x128uLL);
      v219 = specialized thunk for @callee_guaranteed () -> (@owned [MLS.InMemoryPersister.OutgoingEventEntry]);
      v20 = v224;
      continue;
    }

    break;
  }

  while (1)
  {
    v125 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      break;
    }

    if (v125 >= v124)
    {

      v158 = v222;
      v159 = v222 + 64;
      v160 = -1;
      v161 = -1 << *(v222 + 32);
      if (-v161 < 64)
      {
        v160 = ~(-1 << -v161);
      }

      v162 = v160 & *(v222 + 64);
      v163 = (63 - v161) >> 6;

      v164 = 0;
      v165 = MEMORY[0x277D84F98];
      v221 = v163;
      v166 = v0 + 312;
      if (v162)
      {
        goto LABEL_96;
      }

LABEL_97:
      while (1)
      {
        v170 = v164 + 1;
        if (__OFADD__(v164, 1))
        {
          goto LABEL_135;
        }

        if (v170 >= v163)
        {
          v216 = *(v0 + 1152);
          v217 = v165;

          outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v220, 0);
          outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v219, 0);
          *v216 = v217;
          v216[1] = v232;
          v218 = *(v0 + 8);

          v218();
          return;
        }

        v162 = *(v159 + 8 * v170);
        ++v164;
        if (v162)
        {
          v226 = v165;
          while (1)
          {
            v223 = v170;
            v171 = __clz(__rbit64(v162)) | (v170 << 6);
            v172 = (*(v158 + 48) + 16 * v171);
            v173 = v172[1];
            v230 = *v172;
            *&v254 = *(*(v158 + 56) + 8 * v171);
            swift_bridgeObjectRetain_n();
            v235 = v173;

            specialized MutableCollection<>.sort(by:)(&v254, 303);

            v174 = v254;
            v175 = *(v254 + 16);
            if (v175)
            {
              break;
            }

            v203 = MEMORY[0x277D84F90];
LABEL_115:
            v204 = swift_isUniquelyReferenced_nonNull_native();
            *&v254 = v226;
            v205 = specialized __RawDictionaryStorage.find<A>(_:)(v230, v235);
            v207 = v226[2];
            v208 = (v206 & 1) == 0;
            v60 = __OFADD__(v207, v208);
            v209 = v207 + v208;
            if (v60)
            {
              goto LABEL_137;
            }

            v210 = v206;
            if (v226[3] >= v209)
            {
              if ((v204 & 1) == 0)
              {
                v215 = v205;
                specialized _NativeDictionary.copy()();
                v205 = v215;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v209, v204);
              v205 = specialized __RawDictionaryStorage.find<A>(_:)(v230, v235);
              if ((v210 & 1) != (v211 & 1))
              {
                goto LABEL_128;
              }
            }

            v162 &= v162 - 1;
            v163 = v221;
            v158 = v222;
            if (v210)
            {
              v167 = v162;
              v168 = v205;

              v169 = v254;
              *(*(v254 + 56) + 8 * v168) = v203;
              v162 = v167;

              v165 = v169;
              v164 = v223;
              v166 = v0 + 312;
              if (!v167)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v165 = v254;
              *(v254 + 8 * (v205 >> 6) + 64) |= 1 << v205;
              v212 = (v165[6] + 16 * v205);
              *v212 = v230;
              v212[1] = v235;
              *(v165[7] + 8 * v205) = v203;
              v213 = v165[2];
              v60 = __OFADD__(v213, 1);
              v214 = v213 + 1;
              if (v60)
              {
                goto LABEL_139;
              }

              v165[2] = v214;
              v164 = v223;
              v166 = v0 + 312;
              if (!v162)
              {
                goto LABEL_97;
              }
            }

LABEL_96:
            v226 = v165;
            v170 = v164;
          }

          v241 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v175, 0);
          if (!*(v174 + 16))
          {
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          v176 = 0;
          v177 = v241;
          v239 = v175 - 1;
          v178 = 32;
          while (1)
          {
            v179 = v177;
            memcpy((v0 + 16), (v174 + v178), 0x128uLL);
            outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16, v166);
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v180 = *(v0 + 160);
            *(v166 + 128) = *(v0 + 144);
            *(v166 + 144) = v180;
            *(v166 + 160) = *(v0 + 176);
            *(v166 + 176) = *(v0 + 192);
            v181 = *(v0 + 96);
            *(v166 + 64) = *(v0 + 80);
            *(v166 + 80) = v181;
            v182 = *(v0 + 128);
            *(v166 + 96) = *(v0 + 112);
            *(v166 + 112) = v182;
            v183 = *(v0 + 32);
            *v166 = *(v0 + 16);
            *(v166 + 16) = v183;
            v184 = *(v0 + 64);
            *(v166 + 32) = *(v0 + 48);
            *(v166 + 48) = v184;
            if (_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOg(v166) == 1)
            {
              goto LABEL_143;
            }

            v186 = *(v0 + 280);
            v185 = *(v0 + 288);
            v250 = *(v166 + 128);
            v251 = *(v166 + 144);
            v252 = *(v166 + 160);
            v253[0] = *(v166 + 176);
            v246 = *(v166 + 64);
            v247 = *(v166 + 80);
            v248 = *(v166 + 96);
            v249 = *(v166 + 112);
            v242 = *v166;
            v243 = *(v166 + 16);
            v244 = *(v166 + 32);
            v245 = *(v166 + 48);
            *&v253[24] = *(v0 + 216);
            *&v253[40] = *(v0 + 232);
            *&v253[56] = *(v0 + 248);
            v187 = *(v0 + 272);
            *&v253[72] = *(v0 + 264);
            *&v253[8] = *(v0 + 200);
            if (*(v0 + 296))
            {
              goto LABEL_142;
            }

            outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 608, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgMR);
            outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 608, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
            outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16);
            v256 = v244;
            v257 = v245;
            v255 = v243;
            v260 = v248;
            v261 = v249;
            v258 = v246;
            v259 = v247;
            v264 = v252;
            v265 = *v253;
            v262 = v250;
            v263 = v251;
            v268 = *&v253[48];
            v269 = *&v253[64];
            v266 = *&v253[16];
            v267 = *&v253[32];
            v177 = v179;
            v189 = *(v179 + 16);
            v188 = *(v179 + 24);
            v254 = v242;
            if (v189 >= v188 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v189 + 1, 1);
              v177 = v179;
            }

            *(v177 + 16) = v189 + 1;
            v190 = v177 + 280 * v189;
            v191 = v254;
            v192 = v255;
            v193 = v257;
            *(v190 + 64) = v256;
            *(v190 + 80) = v193;
            *(v190 + 32) = v191;
            *(v190 + 48) = v192;
            v194 = v258;
            v195 = v259;
            v196 = v261;
            *(v190 + 128) = v260;
            *(v190 + 144) = v196;
            *(v190 + 96) = v194;
            *(v190 + 112) = v195;
            v197 = v262;
            v198 = v263;
            v199 = v265;
            *(v190 + 192) = v264;
            *(v190 + 208) = v199;
            *(v190 + 160) = v197;
            *(v190 + 176) = v198;
            v200 = v266;
            v201 = v267;
            v202 = v269;
            *(v190 + 256) = v268;
            *(v190 + 272) = v202;
            *(v190 + 224) = v200;
            *(v190 + 240) = v201;
            *(v190 + 288) = v187;
            *(v190 + 296) = v186;
            *(v190 + 304) = v185;
            if (v239 == v176)
            {
              v203 = v177;

              v159 = v222 + 64;
              goto LABEL_115;
            }

            v178 += 296;
            ++v176;
            v166 = v0 + 312;
            if (v176 >= *(v174 + 16))
            {
              goto LABEL_131;
            }
          }
        }
      }
    }

    v123 = *(v120 + 8 * v125);
    ++v119;
    if (v123)
    {
      v119 = v125;
      goto LABEL_71;
    }
  }

LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
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
LABEL_145:
  __break(1u);
}

uint64_t MLS.InMemoryPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1, void *a2)
{
  v3[145] = v2;
  v3[144] = a1;
  v4 = a2[1];
  v3[146] = *a2;
  v3[147] = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v3[148] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadRetriableEventStates(clientIdentifier:), v5, 0);
}

void MLS.InMemoryPersister.loadRetriableEventStates(clientIdentifier:)()
{
  v135 = v0;
  v1 = (*(**(v0 + 1160) + 160))();
  v2 = *(v0 + 912);
  if (v2)
  {
    v3 = (v0 + 1024);
    v4 = (v0 + 1016);
    v5 = (v0 + 1008);
    v6 = (v0 + 1000);
    v7 = (v0 + 992);
    v8 = (v0 + 984);
    v9 = (v0 + 976);
    v10 = (v0 + 968);
    v11 = (v0 + 960);
    v12 = (v0 + 952);
    v13 = (v0 + 944);
    v14 = (v0 + 936);
    v15 = (v0 + 928);
    v16 = (v0 + 920);
  }

  else
  {
    (*(**(v0 + 1160) + 136))(v1);
    v3 = (v0 + 904);
    v4 = (v0 + 896);
    v5 = (v0 + 888);
    v6 = (v0 + 880);
    v7 = (v0 + 872);
    v8 = (v0 + 864);
    v9 = (v0 + 856);
    v10 = (v0 + 848);
    v11 = (v0 + 840);
    v12 = (v0 + 832);
    v13 = (v0 + 824);
    v14 = (v0 + 816);
    v15 = (v0 + 808);
    v2 = *(v0 + 792);
    v16 = (v0 + 800);
  }

  v17 = v0 + 312;
  v18 = *v3;
  v19 = *v4;
  v20 = *v5;
  v21 = *v6;
  v22 = *v7;
  v23 = *v8;
  v24 = *v9;
  v25 = *v10;
  v26 = *v11;
  v27 = *v12;
  v28 = *v13;
  v29 = *v14;
  v30 = *v15;
  v31 = *v16;
  *(v0 + 1032) = v2;
  *(v0 + 1040) = v31;
  *(v0 + 1048) = v30;
  *(v0 + 1056) = v29;
  *(v0 + 1064) = v28;
  *(v0 + 1072) = v27;
  *(v0 + 1080) = v26;
  *(v0 + 1088) = v25;
  *(v0 + 1096) = v24;
  *(v0 + 1104) = v23;
  *(v0 + 1112) = v22;
  *(v0 + 1120) = v21;
  *(v0 + 1128) = v20;
  *(v0 + 1136) = v19;
  *(v0 + 1144) = v18;

  outlined destroy of MLS.InMemoryPersister.State(v0 + 1032);
  v117 = 0;
  v32 = 0;
  v33 = -1;
  v34 = -1 << *(v21 + 32);
  if (-v34 < 64)
  {
    v33 = ~(-1 << -v34);
  }

  v35 = v33 & *(v21 + 64);
  v119 = MEMORY[0x277D84F98];
  v36 = (63 - v34) >> 6;
  while (1)
  {
    do
    {
      if (!v35)
      {
        while (1)
        {
          v37 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          if (v37 >= v36)
          {
            break;
          }

          v35 = *(v21 + 64 + 8 * v37);
          ++v32;
          if (v35)
          {
            v32 = v37;
            goto LABEL_12;
          }
        }

        v71 = v119;
        v72 = v119 + 64;
        v73 = -1;
        v74 = -1 << *(v119 + 32);
        if (-v74 < 64)
        {
          v73 = ~(-1 << -v74);
        }

        v75 = v73 & *(v119 + 64);
        v76 = (63 - v74) >> 6;

        v77 = 0;
        v122 = MEMORY[0x277D84F98];
        v118 = v76;
        if (v75)
        {
          goto LABEL_37;
        }

LABEL_38:
        while (1)
        {
          v79 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            break;
          }

          if (v79 >= v76)
          {
            v114 = *(v0 + 1152);

            outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v117, 0);
            *v114 = v122;
            v115 = *(v0 + 8);

            v115();
            return;
          }

          v75 = *(v72 + 8 * v79);
          ++v77;
          if (v75)
          {
            while (1)
            {
              v80 = __clz(__rbit64(v75)) | (v79 << 6);
              v81 = (*(v71 + 48) + 16 * v80);
              v82 = v81[1];
              v124 = *v81;
              *&v131 = *(*(v71 + 56) + 8 * v80);
              swift_bridgeObjectRetain_n();
              v126 = v82;

              specialized MutableCollection<>.sort(by:)(&v131, 321);
              v120 = v79;
              v121 = v75;

              v83 = v131;
              v84 = *(v131 + 16);
              if (v84)
              {
                break;
              }

              v86 = MEMORY[0x277D84F90];
LABEL_54:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v131 = v122;
              v101 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v126);
              v103 = v122[2];
              v104 = (v102 & 1) == 0;
              v64 = __OFADD__(v103, v104);
              v105 = v103 + v104;
              if (v64)
              {
                goto LABEL_73;
              }

              v106 = v102;
              if (v122[3] >= v105)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v112 = v17;
                  v113 = v101;
                  specialized _NativeDictionary.copy()();
                  v101 = v113;
                  v17 = v112;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v105, isUniquelyReferenced_nonNull_native);
                v101 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v126);
                if ((v106 & 1) != (v107 & 1))
                {
                  goto LABEL_67;
                }
              }

              v75 = (v121 - 1) & v121;
              if (v106)
              {
                v78 = v101;

                v122 = v131;
                *(*(v131 + 56) + 8 * v78) = v86;

                v77 = v120;
                if (!v75)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v108 = v131;
                *(v131 + 8 * (v101 >> 6) + 64) |= 1 << v101;
                v109 = (v108[6] + 16 * v101);
                *v109 = v124;
                v109[1] = v126;
                *(v108[7] + 8 * v101) = v86;
                v110 = v108[2];
                v64 = __OFADD__(v110, 1);
                v111 = v110 + 1;
                if (v64)
                {
                  goto LABEL_74;
                }

                v122 = v108;
                v108[2] = v111;
                v77 = v120;
                if (!v75)
                {
                  goto LABEL_38;
                }
              }

LABEL_37:
              v79 = v77;
            }

            v130 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84, 0);
            if (!*(v83 + 16))
            {
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

            v85 = 0;
            v86 = v130;
            v129 = v83;
            v87 = 32;
            while (1)
            {
              memcpy((v0 + 16), (v83 + v87), 0x128uLL);
              outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16, v17);
              if ((swift_task_isCurrentExecutor() & 1) == 0)
              {
                swift_task_reportUnexpectedExecutor();
              }

              v89 = *(v0 + 200);
              v88 = *(v0 + 208);
              v90 = *(v0 + 232);
              v131 = *(v0 + 216);
              v132 = v90;
              v133 = *(v0 + 248);
              v134 = *(v0 + 264);
              if (!v88)
              {
                goto LABEL_75;
              }

              v91 = *(v0 + 216);
              v92 = *(v0 + 248);
              *(v17 + 32) = *(v0 + 232);
              *(v17 + 48) = v92;
              *(v17 + 64) = *(v0 + 264);
              *v17 = *(v0 + 200);
              *(v17 + 16) = v91;
              v93 = v17;
              outlined init with copy of MLS.OutgoingEventState(v17, v0 + 608);
              outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16);
              v95 = *(v130 + 16);
              v94 = *(v130 + 24);
              if (v95 >= v94 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
              }

              *(v130 + 16) = v95 + 1;
              v96 = v130 + 72 * v95;
              *(v96 + 32) = v89;
              *(v96 + 40) = v88;
              v97 = v131;
              v98 = v132;
              v99 = v133;
              *(v96 + 96) = v134;
              *(v96 + 64) = v98;
              *(v96 + 80) = v99;
              *(v96 + 48) = v97;
              if (v84 - 1 == v85)
              {

                v17 = v93;
                v72 = v119 + 64;
                v71 = v119;
                v76 = v118;
                goto LABEL_54;
              }

              v83 = v129;
              v87 += 296;
              ++v85;
              v17 = v93;
              if (v85 >= *(v129 + 16))
              {
                goto LABEL_70;
              }
            }
          }
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        return;
      }

LABEL_12:
      v38 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v39 = v38 | (v32 << 6);
      v40 = (*(v21 + 48) + 48 * v39);
      v41 = *v40;
      v42 = v40[1];
      v127 = v40[2];
      v128 = v40[3];
      v43 = (*(v21 + 56) + 296 * v39);
      memcpy((v0 + 16), v43, 0x128uLL);
      v44 = v43[3];
      v46 = *v43;
      v45 = v43[1];
      *(v0 + 640) = v43[2];
      *(v0 + 656) = v44;
      *(v0 + 608) = v46;
      *(v0 + 624) = v45;
      v47 = v43[7];
      v49 = v43[4];
      v48 = v43[5];
      *(v0 + 704) = v43[6];
      *(v0 + 720) = v47;
      *(v0 + 672) = v49;
      *(v0 + 688) = v48;
      v51 = v43[9];
      v50 = v43[10];
      v52 = v43[8];
      *(v0 + 784) = *(v43 + 176);
      *(v0 + 752) = v51;
      *(v0 + 768) = v50;
      *(v0 + 736) = v52;
    }

    while (_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOg(v0 + 608) != 1 || !*(v0 + 208) || (v41 != *(v0 + 1168) || v42 != *(v0 + 1176)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

    outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v0 + 16, v17);
    outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v117, 0);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *&v131 = v119;
    v125 = specialized __RawDictionaryStorage.find<A>(_:)(v127, v128);
    v54 = *(v119 + 16);
    v123 = v55;
    v56 = (v55 & 1) == 0;
    v57 = v54 + v56;
    if (__OFADD__(v54, v56))
    {
      goto LABEL_76;
    }

    if (*(v119 + 24) < v57)
    {
      break;
    }

    if ((v53 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      v119 = v131;
    }

    v60 = v125;
    if (v123)
    {
LABEL_26:

      v61 = v119;
      goto LABEL_27;
    }

LABEL_21:
    v61 = v119;
    *(v119 + 8 * (v60 >> 6) + 64) |= 1 << v60;
    v62 = (*(v119 + 48) + 16 * v60);
    *v62 = v127;
    v62[1] = v128;
    *(*(v119 + 56) + 8 * v60) = MEMORY[0x277D84F90];
    v63 = *(v119 + 16);
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_77;
    }

    *(v119 + 16) = v65;
LABEL_27:
    v66 = *(v61 + 56);
    v67 = *(v66 + 8 * v60);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *(v66 + 8 * v60) = v67;
    v116 = v17;
    if ((v68 & 1) == 0)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 2) + 1, 1, v67);
      *(v66 + 8 * v60) = v67;
    }

    v70 = *(v67 + 2);
    v69 = *(v67 + 3);
    if (v70 >= v69 >> 1)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v67);
      *(v66 + 8 * v60) = v67;
    }

    *(v67 + 2) = v70 + 1;
    memcpy(&v67[296 * v70 + 32], (v0 + 16), 0x128uLL);
    v117 = specialized thunk for @callee_guaranteed () -> (@owned [MLS.InMemoryPersister.OutgoingEventEntry]);
    v17 = v116;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, v53);
  v119 = v131;
  v58 = specialized __RawDictionaryStorage.find<A>(_:)(v127, v128);
  if ((v123 & 1) == (v59 & 1))
  {
    v60 = v58;

    if (v123)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

LABEL_67:

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t MLS.InMemoryPersister.save(swiftMLSClientID:forIdentifier:)(uint64_t a1, uint64_t *a2)
{
  v3[21] = a1;
  v3[22] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = swift_task_alloc();
  v6 = *a2;
  v7 = a2[1];
  v3[23] = v5;
  v3[24] = v6;
  v3[25] = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(swiftMLSClientID:forIdentifier:), v8, 0);
}

uint64_t MLS.InMemoryPersister.save(swiftMLSClientID:forIdentifier:)()
{
  (*(**(v0 + 176) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 176);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v2 = (*(*v1 + 176))(v0 + 136);
    if (*v3)
    {
      v5 = *(v0 + 192);
      v4 = *(v0 + 200);
      v6 = *(v0 + 184);
      v7 = *(v0 + 168);
      v8 = type metadata accessor for UUID();
      v9 = *(v8 - 8);
      (*(v9 + 16))(v6, v7, v8);
      (*(v9 + 56))(v6, 0, 1, v8);

      specialized Dictionary.subscript.setter(v6, v5, v4);
    }

    v2(v0 + 136, 0);

    v10 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t MLS.InMemoryPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1, void *a2)
{
  v3[47] = a1;
  v3[48] = v2;
  v4 = a2[1];
  v3[49] = *a2;
  v3[50] = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadSwiftMLSClientID(identifier:), v5, 0);
}

uint64_t MLS.InMemoryPersister.loadSwiftMLSClientID(identifier:)()
{
  v1 = (*(**(v0 + 384) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 384) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  if (*(v2 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 392), *(v0 + 400)), (v32 & 1) != 0))
  {
    v33 = v31;
    v34 = *(v0 + 376);
    v35 = *(v2 + 56);
    v36 = type metadata accessor for UUID();
    v37 = *(v36 - 8);
    (*(v37 + 16))(v34, v35 + *(v37 + 72) * v33, v36);
    outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
    v38 = 0;
  }

  else
  {
    outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
    v36 = type metadata accessor for UUID();
    v37 = *(v36 - 8);
    v38 = 1;
  }

  (*(v37 + 56))(*(v0 + 376), v38, 1, v36);
  v39 = *(v0 + 8);

  return v39();
}

uint64_t MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6[55] = a3;
  v6[56] = a4;
  v6[53] = a1;
  v6[54] = a2;
  v7 = *a5;
  v8 = a5[1];
  v6[57] = v5;
  v6[58] = v7;
  v6[59] = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:), v9, 0);
}

uint64_t MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)()
{
  v1 = v0[59];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v5 = v0[55];
  v6 = v0[53];
  v0[47] = v0[58];
  v0[48] = v1;
  v0[49] = v6;
  v0[50] = v4;
  v0[51] = v5;
  v0[52] = v3;
  v7 = *(*v2 + 160);

  v9 = v7(v8);
  v10 = v0[17];
  if (v10)
  {
    v11 = v0 + 31;
    v12 = v0 + 30;
    v13 = v0 + 29;
    v14 = v0 + 28;
    v15 = v0 + 27;
    v16 = v0 + 26;
    v17 = v0 + 25;
    v18 = v0 + 24;
    v19 = v0 + 23;
    v20 = v0 + 22;
    v21 = v0 + 21;
    v22 = v0 + 20;
    v23 = v0 + 19;
    v24 = v0 + 18;
  }

  else
  {
    (*(*v0[57] + 136))(v9);
    v11 = v0 + 16;
    v12 = v0 + 15;
    v13 = v0 + 14;
    v14 = v0 + 13;
    v15 = v0 + 12;
    v16 = v0 + 11;
    v17 = v0 + 10;
    v18 = v0 + 9;
    v19 = v0 + 8;
    v20 = v0 + 7;
    v21 = v0 + 6;
    v22 = v0 + 5;
    v23 = v0 + 4;
    v10 = v0[2];
    v24 = v0 + 3;
  }

  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  v31 = *v17;
  v32 = *v18;
  v33 = *v19;
  v34 = *v20;
  v35 = *v21;
  v36 = *v22;
  v37 = *v23;
  v38 = *v24;
  v0[32] = v10;
  v0[33] = v38;
  v0[34] = v37;
  v0[35] = v36;
  v0[36] = v35;
  v0[37] = v34;
  v0[38] = v33;
  v0[39] = v32;
  v0[40] = v31;
  v0[41] = v30;
  v0[42] = v29;
  v0[43] = v28;
  v0[44] = v27;
  v0[45] = v26;
  v0[46] = v25;
  if (*(v32 + 16))
  {
    v39 = specialized __RawDictionaryStorage.find<A>(_:)();
    v41 = v40;
    outlined destroy of MLS.InMemoryPersister.GroupMessageStoreID((v0 + 47));
    if (v41)
    {
      v42 = 0;
      v43 = *(*(v32 + 56) + 8 * v39);
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of MLS.InMemoryPersister.GroupMessageStoreID((v0 + 47));
  }

  v43 = 0;
  v42 = 1;
LABEL_9:
  outlined destroy of MLS.InMemoryPersister.State((v0 + 32));
  v44 = v0[1];

  return v44(v43, v42);
}

uint64_t MLS.InMemoryPersister.save(retryCount:forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7[31] = a5;
  v7[32] = v6;
  v7[29] = a3;
  v7[30] = a4;
  v7[27] = a1;
  v7[28] = a2;
  v8 = a6[1];
  v7[33] = *a6;
  v7[34] = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.save(retryCount:forGroup:messageID:clientIdentifier:), v9, 0);
}

uint64_t MLS.InMemoryPersister.save(retryCount:forGroup:messageID:clientIdentifier:)()
{
  (*(**(v0 + 256) + 160))();
  if (*(v0 + 16))
  {
    v2 = *(v0 + 264);
    v1 = *(v0 + 272);
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    v7 = *(v0 + 224);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    *(v0 + 136) = v2;
    *(v0 + 144) = v1;
    *(v0 + 152) = v7;
    *(v0 + 160) = v5;
    *(v0 + 168) = v6;
    *(v0 + 176) = v4;
    v8 = *(*v3 + 176);

    v10 = v8(v0 + 184);
    if (*v9)
    {
      v11 = *(v0 + 216);
      v12 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v12[7];
      v12[7] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, (v0 + 136), isUniquelyReferenced_nonNull_native);
      outlined destroy of MLS.InMemoryPersister.GroupMessageStoreID(v0 + 136);
      v12[7] = v16;
    }

    else
    {
      outlined destroy of MLS.InMemoryPersister.GroupMessageStoreID(v0 + 136);
    }

    v10(v0 + 184, 0);
    v14 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t MLS.InMemoryPersister.read(clientUUID:)(uint64_t a1)
{
  *(v2 + 376) = a1;
  *(v2 + 384) = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.read(clientUUID:), v3, 0);
}

uint64_t MLS.InMemoryPersister.read(clientUUID:)()
{
  v1 = (*(**(v0 + 384) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 384) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  if (*(v19 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 376)), (v32 & 1) != 0))
  {
    v33 = (*(v19 + 56) + 16 * v31);
    v35 = *v33;
    v34 = v33[1];
    outlined copy of Data._Representation(*v33, v34);
  }

  else
  {
    v35 = 0;
    v34 = 0xF000000000000000;
  }

  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v36 = *(v0 + 8);

  return v36(v35, v34);
}

uint64_t MLS.InMemoryPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.write(clientUUID:clientState:), v5, 0);
}

uint64_t MLS.InMemoryPersister.write(clientUUID:clientState:)()
{
  (*(**(v0 + 192) + 160))();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 192);
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
    v3 = (*(*v1 + 176))(v0 + 136);
    if (*v2)
    {
      v4 = v2;
      v6 = *(v0 + 176);
      v5 = *(v0 + 184);
      v7 = *(v0 + 168);
      outlined copy of Data._Representation(v6, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v4[12];
      v4[12] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v5, v7, isUniquelyReferenced_nonNull_native);
      v4[12] = v11;
    }

    v3(v0 + 136, 0);
    v9 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t MLS.InMemoryPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(_OWORD *a1, void *a2)
{
  *(v3 + 376) = v2;
  *(v3 + 384) = *a1;
  v4 = a2[1];
  *(v3 + 400) = *a2;
  *(v3 + 408) = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:), v5, 0);
}

uint64_t MLS.InMemoryPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)()
{
  v1 = (*(**(v0 + 376) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 376) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  v32 = *(v0 + 384);
  v31 = *(v0 + 392);
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  v33 = *(v18 + 16);

  outlined copy of Data._Representation(v32, v31);
  if (v33 && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 400), *(v0 + 408), *(v0 + 384), *(v0 + 392)), (v35 & 1) != 0))
  {
    v36 = (*(v18 + 56) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    outlined copy of Data._Representation(*v36, v37);
  }

  else
  {
    v38 = 0;
    v37 = 0xF000000000000000;
  }

  v40 = *(v0 + 384);
  v39 = *(v0 + 392);

  outlined consume of Data._Representation(v40, v39);
  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v41 = *(v0 + 8);

  return v41(v38, v37);
}

uint64_t MLS.InMemoryPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(_OWORD *a1, void *a2)
{
  *(v3 + 424) = v2;
  v4 = a1[1];
  *(v3 + 432) = *a1;
  *(v3 + 448) = v4;
  v5 = a2[1];
  *(v3 + 464) = *a2;
  *(v3 + 472) = v5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:), v6, 0);
}

uint64_t MLS.InMemoryPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)()
{
  v1 = (*(**(v0 + 424) + 160))();
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = (v0 + 248);
    v4 = (v0 + 240);
    v5 = (v0 + 232);
    v6 = (v0 + 224);
    v7 = (v0 + 216);
    v8 = (v0 + 208);
    v9 = (v0 + 200);
    v10 = (v0 + 192);
    v11 = (v0 + 184);
    v12 = (v0 + 176);
    v13 = (v0 + 168);
    v14 = (v0 + 160);
    v15 = (v0 + 152);
    v16 = (v0 + 144);
  }

  else
  {
    (*(**(v0 + 424) + 136))(v1);
    v3 = (v0 + 128);
    v4 = (v0 + 120);
    v5 = (v0 + 112);
    v6 = (v0 + 104);
    v7 = (v0 + 96);
    v8 = (v0 + 88);
    v9 = (v0 + 80);
    v10 = (v0 + 72);
    v11 = (v0 + 64);
    v12 = (v0 + 56);
    v13 = (v0 + 48);
    v14 = (v0 + 40);
    v15 = (v0 + 32);
    v2 = *(v0 + 16);
    v16 = (v0 + 24);
  }

  v17 = *v3;
  v18 = *v4;
  v19 = *v5;
  v20 = *v6;
  v21 = *v7;
  v22 = *v8;
  v23 = *v9;
  v24 = *v10;
  v25 = *v11;
  v26 = *v12;
  v27 = *v13;
  v28 = *v14;
  v29 = *v15;
  v30 = *v16;
  v32 = *(v0 + 464);
  v31 = *(v0 + 472);
  v33 = *(v0 + 456);
  v34 = *(v0 + 432);
  *(v0 + 256) = v2;
  *(v0 + 264) = v30;
  *(v0 + 272) = v29;
  *(v0 + 280) = v28;
  *(v0 + 288) = v27;
  *(v0 + 296) = v26;
  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v19;
  *(v0 + 360) = v18;
  *(v0 + 368) = v17;
  *(v0 + 376) = v32;
  *(v0 + 384) = v31;
  *(v0 + 392) = v34;
  v43 = *(v0 + 440);
  *(v0 + 400) = v43;
  *(v0 + 416) = v33;
  v35 = *(v17 + 16);

  outlined copy of Data._Representation(v34, v43);
  if (v35 && (v36 = specialized __RawDictionaryStorage.find<A>(_:)((v0 + 376)), (v37 & 1) != 0))
  {
    v38 = (*(v17 + 56) + 16 * v36);
    v40 = *v38;
    v39 = v38[1];
    outlined copy of Data._Representation(*v38, v39);
  }

  else
  {
    v40 = 0;
    v39 = 0xF000000000000000;
  }

  outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v0 + 376);
  outlined destroy of MLS.InMemoryPersister.State(v0 + 256);
  v41 = *(v0 + 8);

  return v41(v40, v39);
}

uint64_t MLS.InMemoryPersister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1, void *a2)
{
  *(v3 + 696) = v2;
  v4 = *(a1 + 16);
  *(v3 + 376) = *a1;
  *(v3 + 392) = v4;
  *(v3 + 408) = *(a1 + 32);
  *(v3 + 424) = *(a1 + 48);
  v5 = a2[1];
  *(v3 + 704) = *a2;
  *(v3 + 712) = v5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.write(swiftMLSGroupWrite:clientIdentifier:), v6, 0);
}

void MLS.InMemoryPersister.write(swiftMLSGroupWrite:clientIdentifier:)()
{
  v137 = v0;
  v1 = *(**(v0 + 696) + 160);
  v1();
  if (!*(v0 + 256))
  {
    lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError();
    swift_allocError();
    swift_willThrow();
    v18 = *(v0 + 8);
LABEL_60:

    v18();
    return;
  }

  v132 = v0 + 432;
  v133 = v1;
  v2 = *(v0 + 696);
  outlined destroy of NSObject?(v0 + 256, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  v129 = (v0 + 376);
  *(v0 + 680) = *(v0 + 376);
  v116 = *(v0 + 680);
  v117 = *(v0 + 688);
  *(v0 + 664) = *(v0 + 392);
  v123 = *(v0 + 664);
  v3 = *(v0 + 672);
  v4 = *(*v2 + 176);

  v128 = v0;
  v135 = (v0 + 680);
  outlined init with copy of Data(v0 + 680, v0 + 136);
  v126 = v0 + 136;
  v127 = v4;
  if (v3 >> 60 == 15)
  {
    v5 = v4(v0 + 136);
    v7 = v116;
    if (*v6)
    {
      v8 = *(v0 + 712);
      v9 = *(v0 + 704);

      outlined copy of Data._Representation(v116, v117);
      specialized Dictionary._Variant.removeValue(forKey:)(v9, v8, v116, v117, &v136);

      outlined consume of Data._Representation(v116, v117);
      outlined consume of Data?(v136, *(&v136 + 1));
    }

    v10 = v5(v126, 0);
    (v133)(v10);
    v11 = *(v0 + 16);
    v12 = *(v0 + 128);
    if (v11)
    {
      *(v0 + 136) = v11;
      v13 = *(v0 + 72);
      v14 = *(v0 + 104);
      *(v0 + 208) = *(v0 + 88);
      *(v0 + 224) = v14;
      v15 = *(v0 + 120);
      v16 = *(v0 + 40);
      *(v0 + 144) = *(v0 + 24);
      *(v0 + 160) = v16;
      *(v0 + 176) = *(v0 + 56);
      *(v0 + 192) = v13;
      *(v0 + 240) = v15;
      *(v0 + 248) = v12;

      outlined destroy of NSObject?(v126, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      outlined init with copy of MLS.WriteGroupData(v129, v132);
      v17 = specialized _NativeDictionary.filter(_:)(v12, v129);
      outlined destroy of MLS.WriteGroupData(v129);
    }

    else
    {
      *(v0 + 136) = 0;
      v109 = *(v0 + 72);
      v110 = *(v0 + 104);
      *(v0 + 208) = *(v0 + 88);
      *(v0 + 224) = v110;
      v111 = *(v0 + 120);
      v112 = *(v0 + 40);
      *(v0 + 144) = *(v0 + 24);
      *(v0 + 160) = v112;
      *(v0 + 176) = *(v0 + 56);
      *(v0 + 192) = v109;
      *(v0 + 240) = v111;
      *(v0 + 248) = v12;
      outlined destroy of NSObject?(v126, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
      v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v114 = v4(v126);
    if (*v113)
    {
      v113[14] = v17;
    }

    v114(v126, 0);
LABEL_59:

    outlined consume of Data._Representation(v7, v117);
    v18 = *(v0 + 8);
    goto LABEL_60;
  }

  outlined init with copy of MLS.OutgoingEventState?(v0 + 664, v0 + 136, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v20 = v4(v0 + 136);
  if (*v19)
  {
    v21 = v19;
    v22 = *(v0 + 712);
    v23 = *(v0 + 704);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 664, v132, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined copy of Data._Representation(v116, v117);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v136 = v21[13];
    v21[13] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v123, v3, v23, v22, v116, v117, isUniquelyReferenced_nonNull_native);

    outlined consume of Data._Representation(v116, v117);
    v21[13] = v136;
  }

  v115 = v0 + 664;
  v134 = (v0 + 520);
  v25 = v0 + 136;
  v20(v126, 0);
  v124 = *(v0 + 408);
  v26 = v0 + 432;
  v121 = *(v124 + 16);
  if (!v121)
  {
LABEL_27:
    v120 = *(v0 + 416);
    v60 = v127;
    v119 = *(v120 + 16);
    if (!v119)
    {
LABEL_45:
      v91 = *(v0 + 424);
      v92 = *(v91 + 16);
      if (v92)
      {
        v93 = (v91 + 32);
        v94 = (v0 + 504);
        do
        {
          v95 = *(v0 + 712);
          v96 = *(v0 + 704);
          v97 = *v93;
          *v94 = *v135;
          *(v0 + 488) = v96;
          *(v0 + 496) = v95;
          *v134 = v97;

          outlined init with copy of Data(v135, v25);
          v99 = v60(v26);
          if (*v98)
          {
            v100 = v98;
            outlined init with copy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v0 + 488, v25);
            v101 = specialized __RawDictionaryStorage.find<A>(_:)((v0 + 488));
            if (v102)
            {
              v103 = v101;
              v104 = swift_isUniquelyReferenced_nonNull_native();
              v105 = v100[14];
              *&v136 = v105;
              v100[14] = 0x8000000000000000;
              if (!v104)
              {
                specialized _NativeDictionary.copy()();
                v105 = v136;
              }

              v106 = *(v105 + 48) + 48 * v103;
              v107 = *(v106 + 16);
              v108 = *(v106 + 24);

              outlined consume of Data._Representation(v107, v108);
              outlined consume of Data._Representation(*(*(v105 + 56) + 16 * v103), *(*(v105 + 56) + 16 * v103 + 8));
              specialized _NativeDictionary._delete(at:)(v103, v105);
              v0 = v128;
              outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v128 + 488);
              v100[14] = v105;

              v25 = v126;
              v60 = v127;
              v26 = v132;
            }

            else
            {
              outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v0 + 488);
              v25 = v126;
            }
          }

          v99(v26, 0);
          outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v0 + 488);
          ++v93;
          --v92;
        }

        while (v92);
      }

      outlined destroy of NSObject?(v115, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v7 = v116;
      goto LABEL_59;
    }

    v61 = 0;
    v125 = v0 + 632;
    v131 = v0 + 536;
    v118 = (v0 + 552);
    v62 = (v120 + 56);
    while (1)
    {
      if (v61 >= *(v120 + 16))
      {
        goto LABEL_67;
      }

      v67 = *(v0 + 712);
      v68 = *(v0 + 704);
      v69 = *(v62 - 1);
      v70 = *v62;
      v71 = *(v62 - 3);
      *v118 = *v135;
      *(v0 + 536) = v68;
      *(v0 + 544) = v67;
      *(v128 + 568) = v71;

      outlined init with copy of Data(v135, v25);
      outlined copy of Data._Representation(v69, v70);
      v72 = v60(v125);
      v66 = v72;
      if (*v73)
      {
        break;
      }

LABEL_31:
      ++v61;
      v66();
      outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v131);
      outlined consume of Data._Representation(v69, v70);
      v62 += 4;
      v26 = v132;
      if (v119 == v61)
      {
        goto LABEL_45;
      }
    }

    v74 = v73;
    v122 = v72;
    outlined copy of Data._Representation(v69, v70);
    outlined init with copy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v131, v25);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v136 = v74[14];
    v76 = v136;
    v74[14] = 0x8000000000000000;
    v78 = specialized __RawDictionaryStorage.find<A>(_:)(v131);
    v79 = v76[2];
    v80 = (v77 & 1) == 0;
    v81 = v79 + v80;
    if (__OFADD__(v79, v80))
    {
      goto LABEL_69;
    }

    v82 = v77;
    if (v76[3] < v81)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v81, v75);
      v76 = v136;
      v83 = specialized __RawDictionaryStorage.find<A>(_:)(v131);
      if ((v82 & 1) != (v84 & 1))
      {
        goto LABEL_63;
      }

      v78 = v83;
      v60 = v127;
      if ((v82 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_29:
      v63 = (v76[7] + 16 * v78);
      v64 = *v63;
      v65 = v63[1];
      *v63 = v69;
      v63[1] = v70;
      outlined consume of Data._Representation(v64, v65);
      outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v131);
LABEL_30:
      v74[14] = v76;

      v25 = v126;
      v0 = v128;
      v66 = v122;
      goto LABEL_31;
    }

    if (v75)
    {
      v60 = v127;
      if (v77)
      {
        goto LABEL_29;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v76 = v136;
      v60 = v127;
      if (v82)
      {
        goto LABEL_29;
      }
    }

LABEL_41:
    v76[(v78 >> 6) + 8] |= 1 << v78;
    v85 = (v76[6] + 48 * v78);
    v86 = *v131;
    v87 = *(v131 + 32);
    v85[1] = *(v131 + 16);
    v85[2] = v87;
    *v85 = v86;
    v88 = (v76[7] + 16 * v78);
    *v88 = v69;
    v88[1] = v70;
    v89 = v76[2];
    v49 = __OFADD__(v89, 1);
    v90 = v89 + 1;
    if (v49)
    {
      goto LABEL_71;
    }

    v76[2] = v90;
    goto LABEL_30;
  }

  v27 = 0;
  v28 = (v0 + 584);
  v29 = (v124 + 56);
  while (v27 < *(v124 + 16))
  {
    v130 = v27;
    v33 = *(v0 + 712);
    v34 = *(v0 + 704);
    v35 = v25;
    v36 = *(v29 - 1);
    v37 = *v29;
    v38 = *(v29 - 3);
    *(v128 + 600) = *v135;
    *(v0 + 584) = v34;
    *(v0 + 592) = v33;
    *(v128 + 616) = v38;

    v39 = v36;
    v25 = v35;
    outlined init with copy of Data(v135, v35);
    outlined copy of Data._Representation(v39, v37);
    v41 = v127(v26);
    if (!*v40)
    {
      goto LABEL_14;
    }

    v42 = v40;
    outlined copy of Data._Representation(v39, v37);
    outlined init with copy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v28, v35);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v136 = v42[14];
    v44 = v136;
    v42[14] = 0x8000000000000000;
    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
    v47 = v44[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      goto LABEL_68;
    }

    v51 = v46;
    if (v44[3] < v50)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, v43);
      v44 = v136;
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
      if ((v51 & 1) != (v52 & 1))
      {
LABEL_63:

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

LABEL_22:
      if ((v51 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v43)
    {
      goto LABEL_22;
    }

    v59 = v45;
    specialized _NativeDictionary.copy()();
    v45 = v59;
    v44 = v136;
    if ((v51 & 1) == 0)
    {
LABEL_23:
      v44[(v45 >> 6) + 8] |= 1 << v45;
      v53 = (v44[6] + 48 * v45);
      v54 = *v28;
      v55 = *(v128 + 616);
      v53[1] = *(v128 + 600);
      v53[2] = v55;
      *v53 = v54;
      v56 = (v44[7] + 16 * v45);
      *v56 = v39;
      v56[1] = v37;
      v57 = v44[2];
      v49 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v49)
      {
        goto LABEL_70;
      }

      v44[2] = v58;
      goto LABEL_13;
    }

LABEL_12:
    v30 = (v44[7] + 16 * v45);
    v31 = *v30;
    v32 = v30[1];
    *v30 = v39;
    v30[1] = v37;
    outlined consume of Data._Representation(v31, v32);
    outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v28);
LABEL_13:
    v42[14] = v44;

    v25 = v126;
LABEL_14:
    v27 = v130 + 1;
    v26 = v132;
    v41(v132, 0);
    outlined destroy of MLS.InMemoryPersister.SwiftMLSEpochStoreID(v28);
    outlined consume of Data._Representation(v39, v37);
    v29 += 4;
    v0 = v128;
    if (v121 == v130 + 1)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

uint64_t MLS.InMemoryPersister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1, void *a2)
{
  v3[12] = a1;
  v3[13] = v2;
  v4 = a2[1];
  v3[14] = *a2;
  v3[15] = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.InMemoryPersister.getSwiftMLSPersister(forClientIdentifier:), v5, 0);
}

uint64_t MLS.InMemoryPersister.getSwiftMLSPersister(forClientIdentifier:)()
{
  v17 = v0;
  v1 = (*(**(v0 + 104) + 112))();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 112), *(v0 + 120)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 96);
    outlined init with copy of ServerBag.MLS(*(v1 + 56) + 40 * v2, v0 + 56);

    outlined init with take of MLS.KeyUpdatePolicy((v0 + 56), v0 + 16);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v4);
  }

  else
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);

    v9 = type metadata accessor for MLS.SwiftMLSPersister();
    v10 = swift_allocObject();
    v10[5] = 0;
    swift_unknownObjectWeakInit();
    v10[2] = v6;
    v10[3] = v5;
    swift_beginAccess();
    v10[5] = &protocol witness table for MLS.InMemoryPersister;
    swift_unknownObjectWeakAssign();
    v16[3] = v9;
    v11 = lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister();
    v16[4] = v11;
    v16[0] = v10;
    v12 = *(*v7 + 128);
    swift_bridgeObjectRetain_n();

    v13 = v12(v0 + 16);
    specialized Dictionary.subscript.setter(v16, v6, v5);
    v13(v0 + 16, 0);
    v8[3] = v9;
    v8[4] = v11;
    *v8 = v10;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t *MLS.InMemoryPersister.deinit()
{

  outlined consume of MLS.InMemoryPersister.State?(v0[18], v0[19], v0[20], v0[21], v0[22], v0[23], v0[24], v0[25], v0[26], v0[27], v0[28], v0[29], v0[30], v0[31], v0[32]);

  return v0;
}

uint64_t MLS.InMemoryPersister.__deallocating_deinit()
{

  outlined consume of MLS.InMemoryPersister.State?(v0[18], v0[19], v0[20], v0[21], v0[22], v0[23], v0[24], v0[25], v0[26], v0[27], v0[28], v0[29], v0[30], v0[31], v0[32]);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.Persister.atomically<A>(with:do:rollback:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 216) + **(*v8 + 216));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for MLS.Persister.save(swiftMLSClientID:forIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 368) + **(*v2 + 368));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.loadSwiftMLSClientID(identifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 376) + **(*v2 + 376));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 264) + **(*v5 + 264));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 272) + **(*v3 + 272));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 280) + **(*v3 + 280));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.Storage.GroupStateStorage.readGroupState(groupID:) in conformance MLS.SwiftMLSPersister;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.save(groupClientContextBlob:forIdentifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 288) + **(*v5 + 288));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadGroupClientContextBlob(identifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 296) + **(*v3 + 296));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 224) + **(*v4 + 224));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 232) + **(*v5 + 232));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.replaceGroupMembers(identifier:newMembers:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 240) + **(*v4 + 240));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.deleteGroup(identifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 248) + **(*v3 + 248));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.deleteSecureMessagingGroup(identifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 256) + **(*v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.save(outgoingEventUpdate:forGroup:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 304) + **(*v4 + 304));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.save(incomingEvent:forGroup:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 312) + **(*v4 + 312));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.delete(incomingEvent:forGroup:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 320) + **(*v4 + 320));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 328) + **(*v4 + 328));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 336) + **(*v4 + 336));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister()
{
  v4 = (*(*v0 + 344) + **(*v0 + 344));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v4();
}

uint64_t protocol witness for MLS.Persister.loadEvents(clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 352) + **(*v2 + 352));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.loadRetriableEventStates(clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 360) + **(*v2 + 360));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.readGroupState(swiftMLSGroupRead:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 416) + **(*v2 + 416));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.readEpochData(swiftMLSEpochRead:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 424) + **(*v2 + 424));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.write(swiftMLSGroupWrite:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 432) + **(*v2 + 432));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.Persister.read(clientUUID:) in conformance MLS.InMemoryPersister(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v6(a1);
}

uint64_t protocol witness for MLS.Persister.write(clientUUID:clientState:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 408) + **(*v3 + 408));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 384) + **(*v5 + 384));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance MLS.InMemoryPersister;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2 & 1);
  }
}

uint64_t protocol witness for MLS.Persister.save(retryCount:forGroup:messageID:clientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 392) + **(*v6 + 392));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.Persister.getSwiftMLSPersister(forClientIdentifier:) in conformance MLS.InMemoryPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 440) + **(*v2 + 440));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}