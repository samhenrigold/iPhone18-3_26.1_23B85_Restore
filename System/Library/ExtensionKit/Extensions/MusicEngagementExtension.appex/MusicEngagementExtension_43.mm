uint64_t sub_1004299E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for NSUserDefaults.KeyValueRegistration.Identifier(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults._Observer.SuiteAssociation and conformance NSUserDefaults._Observer.SuiteAssociation()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults._Observer.SuiteAssociation and conformance NSUserDefaults._Observer.SuiteAssociation;
  if (!lazy protocol witness table cache variable for type NSUserDefaults._Observer.SuiteAssociation and conformance NSUserDefaults._Observer.SuiteAssociation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults._Observer.SuiteAssociation and conformance NSUserDefaults._Observer.SuiteAssociation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey()
{
  result = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
  }

  return result;
}

uint64_t outlined init with copy of NSUserDefaults.KeyValueRegistration.Identifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NSUserDefaults.KeyValueRegistration.Identifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults.Error and conformance NSUserDefaults.Error()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Error and conformance NSUserDefaults.Error;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Error and conformance NSUserDefaults.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Error and conformance NSUserDefaults.Error);
  }

  return result;
}

uint64_t outlined init with take of NSUserDefaults.KeyValueRegistration.Identifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

void one-time initialization function for https()
{
  v0 = 10;
  _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_0(0, 10, 0);
  v1 = &unk_1005CDF80;
  do
  {
    v6 = *(v1 - 1);
    v7 = *v1;
    swift_bridgeObjectRetain_n();
    v2._countAndFlagsBits = 115;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);

    v4 = _swiftEmptyArrayStorage[2];
    v3 = _swiftEmptyArrayStorage[3];
    if (v4 >= v3 >> 1)
    {
      _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_0((v3 > 1), v4 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v4 + 1;
    v5 = &_swiftEmptyArrayStorage[2 * v4];
    v5[4] = v6;
    v5[5] = v7;
    v1 += 2;
    --v0;
  }

  while (v0);
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSS_SaySSGTg5_0(&outlined read-only object #0 of one-time initialization function for httpsOnly);
  static URL.ITMSSchemes.https = _swiftEmptyArrayStorage;
}

uint64_t URL.replacingSchemeWithHTTP.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd_0, &_s10Foundation13URLComponentsVSgMR_0);
  __chkstk_darwin();
  v3 = &v17[-v2];
  v4 = type metadata accessor for URLComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation13URLComponentsVSgMd_0, &_s10Foundation13URLComponentsVSgMR_0);
LABEL_9:
    v13 = type metadata accessor for URL();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = URLComponents.scheme.getter();
  if (!v9)
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  if (one-time initialization token for https != -1)
  {
    swift_once();
  }

  v18 = v10;
  v19 = v11;
  __chkstk_darwin();
  *&v17[-16] = &v18;
  if (specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_1, &v17[-32], v12))
  {
  }

  else
  {
    if (one-time initialization token for http != -1)
    {
      swift_once();
    }

    v18 = v10;
    v19 = v11;
    __chkstk_darwin();
    *&v17[-16] = &v18;
    v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v17[-32], v15);

    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  URLComponents.scheme.setter();
LABEL_14:
  URLComponents.url.getter();
  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall URLComponents.appendPath(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = URLComponents.path.getter();
  v5 = specialized BidirectionalCollection.last.getter(v3, v4);
  v7 = v6;

  if (v7)
  {
    if (v5 == 47 && v7 == 0xE100000000000000)
    {

LABEL_6:
      v9 = URLComponents.path.modify();
      v10._countAndFlagsBits = countAndFlagsBits;
      v10._object = object;
      String.append(_:)(v10);
      v9(v16, 0);
      return;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  v11 = String.withLeadingSlash.getter(countAndFlagsBits, object);
  v13 = v12;
  v14 = URLComponents.path.modify();
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  String.append(_:)(v15);

  v14(v16, 0);
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t String.withLeadingSlash.getter(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = specialized Collection.first.getter(a1, a2);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v4 != 47 || v5 != 0xE100000000000000)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_7:
    v7._countAndFlagsBits = v3;
    v7._object = a2;
    String.append(_:)(v7);
    return 47;
  }

LABEL_6:

  return v3;
}

Swift::Void __swiftcall URLComponents.appendQueryItems(_:)(Swift::OpaquePointer a1)
{
  if (URLComponents.queryItems.getter())
  {

    _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation12URLQueryItemV_SayAGGTg5_0(v1);
  }

  else
  {
  }

  URLComponents.queryItems.setter();
}

uint64_t URL.isSafariScriptURL.getter()
{
  v0 = type metadata accessor for URLQueryItem();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12URLQueryItemVSgMd, &_s10Foundation12URLQueryItemVSgMR);
  __chkstk_darwin();
  v5 = &v23 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd_0, &_s10Foundation13URLComponentsVSgMR_0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    result = URLComponents.queryItems.getter();
    if (!result)
    {
      (*(v9 + 8))(v11, v8);
      return 0;
    }

    v13 = result;
    v23 = v11;
    v24 = v9;
    v25 = v8;
    v26 = v5;
    v28 = *(result + 16);
    if (!v28)
    {
LABEL_18:

      (*(v24 + 8))(v23, v25);
      v22 = v26;
      (*(v1 + 56))(v26, 1, 1, v0);
      outlined destroy of TaskPriority?(v22, &_s10Foundation12URLQueryItemVSgMd, &_s10Foundation12URLQueryItemVSgMR);
      return 0;
    }

    v14 = 0;
    v15 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v27 = 0x80000001004D6110;
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v3, v15 + *(v1 + 72) * v14, v0);
      if (URLQueryItem.name.getter() == 0x6E6F69746361 && v17 == 0xE600000000000000)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v19 = URLQueryItem.value.getter();
      if (v20)
      {
        if (v19 == 0xD000000000000016 && v20 == v27)
        {

LABEL_17:
          (*(v24 + 8))(v23, v25);

          v21 = v26;
          (*(v1 + 32))(v26, v3, v0);
          (*(v1 + 56))(v21, 0, 1, v0);
          outlined destroy of TaskPriority?(v21, &_s10Foundation12URLQueryItemVSgMd, &_s10Foundation12URLQueryItemVSgMR);
          return 1;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_17;
        }
      }

LABEL_7:
      ++v14;
      result = (*(v1 + 8))(v3, v0);
      if (v28 == v14)
      {
        goto LABEL_18;
      }
    }
  }

  outlined destroy of TaskPriority?(v7, &_s10Foundation13URLComponentsVSgMd_0, &_s10Foundation13URLComponentsVSgMR_0);
  return 0;
}

char *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_0(char *a1, uint64_t a2, uint64_t a3)
{
  result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *_ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_1, &_ss23_ContiguousArrayStorageCySSGMR_1);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

const char *Feature.MediaPlayer.feature.getter(unsigned __int8 a1)
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (a1 != 2)
  {
    v2 = "RSuntory";
  }

  if (a1)
  {
    v1 = "UpgradeOnPlay";
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

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance Feature.MediaPlayer()
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (*v0 != 2)
  {
    v2 = "RSuntory";
  }

  if (*v0)
  {
    v1 = "UpgradeOnPlay";
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

unint64_t lazy protocol witness table accessor for type Feature.MediaControls and conformance Feature.MediaControls()
{
  result = lazy protocol witness table cache variable for type Feature.MediaControls and conformance Feature.MediaControls;
  if (!lazy protocol witness table cache variable for type Feature.MediaControls and conformance Feature.MediaControls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.MediaControls and conformance Feature.MediaControls);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Feature.MediaRemote and conformance Feature.MediaRemote()
{
  result = lazy protocol witness table cache variable for type Feature.MediaRemote and conformance Feature.MediaRemote;
  if (!lazy protocol witness table cache variable for type Feature.MediaRemote and conformance Feature.MediaRemote)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.MediaRemote and conformance Feature.MediaRemote);
  }

  return result;
}

const char *Feature.Music.feature.getter(char a1)
{
  result = "potluck";
  switch(a1)
  {
    case 1:
      result = "bilby";
      break;
    case 2:
      result = "symphony";
      break;
    case 3:
      result = "qulh";
      break;
    case 4:
      result = "image_playground_covers";
      break;
    case 5:
      result = "in_with_the_new";
      break;
    case 6:
      result = "despacito";
      break;
    case 7:
      result = "despacito_server";
      break;
    case 8:
      result = "atv_sing";
      break;
    case 9:
      result = "lucky_roll";
      break;
    case 10:
      result = "motion_over_media_remote";
      break;
    case 11:
      result = "ipad_motion_background";
      break;
    case 12:
      result = "quick_search";
      break;
    case 13:
      result = "pins_widget";
      break;
    case 14:
      result = "jafar";
      break;
    case 15:
      result = "jose";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Feature.Music(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Feature.Music(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FeatureFlagsKey.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  LOBYTE(v3) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return v3 & 1;
}

uint64_t GestureRecognizerHandler.__allocating_init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  *(v4 + 24) = partial apply for closure #1 in ControlEventHandler.init<A>(control:events:handler:);
  *(v4 + 32) = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    [v11 addTarget:v4 action:"handleActionFromGestureRecognizer:"];
  }

  return v4;
}

uint64_t sub_10042B91C()
{

  return swift_deallocObject();
}

uint64_t GestureRecognizerHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t GestureRecognizerHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for GestureRecognitionHandling()
{
  result = swift_slowAlloc();
  static AssociatedKeys.GestureRecognitionHandling = result;
  return result;
}

uint64_t UIGestureRecognizerHandling<>.addHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for GestureRecognitionHandling != -1)
  {
    swift_once();
  }

  v8 = static AssociatedKeys.GestureRecognitionHandling;
  if (objc_getAssociatedObject(v4, static AssociatedKeys.GestureRecognitionHandling))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14MusicUtilities24GestureRecognizerHandlerCGMd, &_sSay14MusicUtilities24GestureRecognizerHandlerCGMR);
    if (swift_dynamicCast())
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  else
  {
    _sypSgWOh_1(v18);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  *&v18[0] = v9;
  type metadata accessor for GestureRecognizerHandler();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  v12 = v4;

  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v12, partial apply for closure #1 in UIGestureRecognizerHandling<>.addHandler(_:), v10, a3);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v18[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  objc_setAssociatedObject(v12, v8, isa, 1);

  return v11;
}

uint64_t closure #1 in UIGestureRecognizerHandling<>.addHandler(_:)(void *a1, void (*a2)(void *, id), uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = &protocol witness table for UIGestureRecognizer;
  v5[0] = a1;
  a2(v5, [a1 state]);
  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

void UIGestureRecognizerHandling<>.removeHandler(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for GestureRecognitionHandling != -1)
  {
LABEL_25:
    swift_once();
  }

  v4 = static AssociatedKeys.GestureRecognitionHandling;
  if (objc_getAssociatedObject(v2, static AssociatedKeys.GestureRecognitionHandling))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14MusicUtilities24GestureRecognizerHandlerCGMd, &_sSay14MusicUtilities24GestureRecognizerHandlerCGMR);
    if (swift_dynamicCast())
    {
      v5 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    _sypSgWOh_1(v16);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_10:
  *&v16[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_12:
      v11 = v4;
      v12 = v2;
      v7 = 0;
      v2 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v4 = v11;
            v2 = v12;
            break;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_25;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_22;
          }
        }

        if (v8 == a1)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_23;
        }
      }
    }
  }

  type metadata accessor for GestureRecognizerHandler();
  isa = Array._bridgeToObjectiveC()().super.isa;

  objc_setAssociatedObject(v2, v4, isa, 1);
}

uint64_t KeyboardAvoidance.animationOptions.getter()
{
  result = *(v0 + 72) << 16;
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

double KeyboardAvoidance.init(notification:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  specialized KeyboardAvoidance.init(notification:)(a2, v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

void KeyboardAvoidance.animate(alongsideKeyboard:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(v4 + 72) << 16;
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a1;
    v14 = a2;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed () -> ();
    v12 = &block_descriptor_78;
    v8 = _Block_copy(&v9);

    if (a3)
    {
      v13 = a3;
      v14 = a4;
      v9 = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v12 = &block_descriptor_3_7;
      a3 = _Block_copy(&v9);
    }

    [objc_opt_self() animateWithDuration:v5 delay:v8 options:a3 animations:*(v4 + 64) completion:0.0];
    _Block_release(a3);
    _Block_release(v8);
  }
}

void KeyboardAvoidance.animate(alongsideKeyboard:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = *(v2 + 72) << 16;
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v5;
    v8 = *(v2 + 64);
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed () -> ();
    v10[3] = &block_descriptor_6_5;
    v9 = _Block_copy(v10);

    [v7 animateWithDuration:v6 delay:v9 options:0 animations:v8 completion:0.0];
    _Block_release(v9);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.animateContentScrollView(in:)(UIViewController in)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 48);
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v1 + 64);
  *(v3 + 96) = *(v1 + 80);
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  *(v3 + 104) = in;
  v6 = objc_opt_self();
  v7 = *(v1 + 72) << 16;
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v6;
    v9 = *(v1 + 64);
    v12[4] = partial apply for closure #1 in KeyboardAvoidance.animateContentScrollView(in:);
    v12[5] = v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed () -> ();
    v12[3] = &block_descriptor_9_2;
    v10 = _Block_copy(v12);
    v11 = in.super.super.isa;

    [v8 animateWithDuration:v7 delay:v10 options:0 animations:v9 completion:0.0];
    _Block_release(v10);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(UIViewController to)
{
  if ([(objc_class *)to.super.super.isa isViewLoaded])
  {
    v3 = [(objc_class *)to.super.super.isa view];
    if (v3)
    {
      v4 = v3;
      [v3 convertRect:0 fromView:{v1[4], v1[5], v1[6], v1[7]}];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = [(objc_class *)to.super.super.isa view];
      if (v13)
      {
        v14 = v13;
        [v13 safeAreaInsets];
        v16 = v15;

        [(objc_class *)to.super.super.isa additionalSafeAreaInsets];
        v18 = v16 - v17;
        [v4 frame];
        Height = CGRectGetHeight(v23);
        v24.origin.x = v6;
        v24.origin.y = v8;
        v24.size.width = v10;
        v24.size.height = v12;
        MinY = CGRectGetMinY(v24);

        if (Height - MinY - v18 < 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = Height - MinY - v18;
        }

        [(objc_class *)to.super.super.isa setAdditionalSafeAreaInsets:0.0, 0.0, v21, 0.0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void KeyboardAvoidance.additionalSafeAreaInsets(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0.0;
  if (![a1 isViewLoaded] || (v6 = objc_msgSend(a1, "view")) == 0)
  {
    v24 = 1;
LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = v24;
    return;
  }

  v7 = v6;
  [v6 convertRect:0 fromView:{v2[4], v2[5], v2[6], v2[7]}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [a1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    [a1 additionalSafeAreaInsets];
    v21 = v19 - v20;
    [v7 frame];
    Height = CGRectGetHeight(v25);
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MinY = CGRectGetMinY(v26);

    v24 = 0;
    if (Height - MinY - v21 < 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = Height - MinY - v21;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void KeyboardAvoidance.recommendedScrollRect(in:preferredVisibleRect:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_allocObject();
  specialized static KeyboardAvoidance.firstResponderFrame(in:)(a1, v54);
  if (v55)
  {
    swift_deallocUninitializedObject();
LABEL_12:
    v36 = 0uLL;
    v37 = 1;
    width = 0.0;
    v38 = 0.0;
    goto LABEL_13;
  }

  v8 = v54[1];
  *(v7 + 16) = v54[0];
  *(v7 + 32) = v8;
  v9 = [a1 contentScrollViewForEdge:1];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [a1 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 window];

    if (!v13 || (v14 = [v13 windowScene], v13, !v14) || (v15 = objc_msgSend(v14, "screen"), v14, !v15))
    {

      goto LABEL_12;
    }

    *(v7 + 16) = 0;
    v16 = swift_allocObject();
    [v10 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 32) = v21;
    v23 = [v15 coordinateSpace];
    v24 = v3[4];
    v25 = v3[5];
    v26 = v3[6];
    v27 = v3[7];
    v28 = v10;
    [v23 convertRect:v28 toCoordinateSpace:{v24, v25, v26, v27}];
    v30 = v29;

    swift_unknownObjectRelease();
    v31 = v30 - v20;
    *(v16 + 40) = v30 - v20;
    v56.origin.x = v18;
    v56.origin.y = v20;
    v56.size.width = v22;
    v56.size.height = v30 - v20;
    Height = CGRectGetHeight(v56);
    if (CGRectGetHeight(*(v7 + 16)) > Height)
    {
      v51 = *(v7 + 16);
      width = *(v7 + 32);
      v34 = *(v7 + 40);
      v57.origin.x = v18;
      v57.origin.y = v20;
      v57.size.width = v22;
      v57.size.height = v31;
      v35 = CGRectGetHeight(v57);

      v36 = v51;
      v37 = 0;
      v38 = v34 - v35;
LABEL_13:
      *a3 = v36;
      *(a3 + 16) = width;
      *(a3 + 24) = v38;
      *(a3 + 32) = v37;
      return;
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      v63.size.width = *(a2 + 16);
      v63.size.height = *(a2 + 24);
      v63.origin.x = *a2;
      v43 = *(a2 + 8);
      v63.origin.y = v43;
      v59 = CGRectUnion(*(v7 + 16), v63);
      y = v59.origin.y;
      x = v59.origin.x;
      width = v59.size.width;
      v38 = v59.size.height;
      v59.origin.x = v18;
      v59.origin.y = v20;
      v59.size.width = v22;
      v59.size.height = v31;
      v44 = CGRectGetHeight(v59);
      v60.origin.y = y;
      v60.origin.x = x;
      v60.size.width = width;
      v60.size.height = v38;
      if (CGRectGetHeight(v60) <= v44)
      {
        v61.origin.x = v18;
        v61.origin.y = v20;
        v61.size.width = v22;
        v61.size.height = v31;
        v45 = CGRectGetWidth(v61);
        v62.origin.y = y;
        v62.origin.x = x;
        v62.size.width = width;
        v62.size.height = v38;
        if (CGRectGetWidth(v62) <= v45)
        {

          v37 = 0;
          *&v36 = x;
          goto LABEL_22;
        }
      }

      v42 = v43;
LABEL_21:
      v46 = specialized firstResponderScrollRect #1 (from:) in KeyboardAvoidance.recommendedScrollRect(in:preferredVisibleRect:)(v7, v16, v28, v42);
      y = v47;
      v53 = v46;
      width = v48;
      v38 = v49;

      *&v36 = v53;
      v37 = 0;
LABEL_22:
      *(&v36 + 1) = y;
      goto LABEL_13;
    }

    [v28 contentOffset];
    v40 = v39;
    if (v39 > CGRectGetMinY(*(v7 + 16)) || (v58.origin.x = v18, v58.origin.y = v20, v58.size.width = v22, v58.size.height = v31, v41 = v40 + CGRectGetHeight(v58), CGRectGetMaxY(*(v7 + 16)) > v41))
    {
      v42 = v40;
      goto LABEL_21;
    }

LABEL_11:

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t static KeyboardAvoidance.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (CGRectEqualToRect(*a1, *a2) && CGRectEqualToRect(*(a1 + 32), *(a2 + 32)) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    v4 = *(a1 + 80) ^ *(a2 + 80) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance KeyboardAvoidance(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v16 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v15 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v17.origin.x = v2;
    v17.origin.y = v3;
    v17.size.width = v4;
    v17.size.height = v5;
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v10;
    v18.size.height = v11;
    result = CGRectEqualToRect(v17, v18);
    if (result)
    {
      result = 0;
      if (v16 == v15)
      {
        if (v6 == v12)
        {
          return v7 ^ v13 ^ 1u;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void *KeyboardObserver.init(options:update:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v4;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  v6 = v4 + 56;
  v7 = _HashTable.startBucket.getter();
  v8 = *(v4 + 36);
  result = objc_opt_self();
  v23 = result;
  v24 = v4;
  v22 = v4 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_20;
    }

    v10 = *(*(v4 + 48) + v7);
    v26 = v5;
    v27 = v8;
    if (v10 > 2)
    {
      v11 = UIKeyboardDidHideNotification;
      if (v10 != 3)
      {
        v11 = UIKeyboardWillChangeFrameNotification;
        if (v10 != 4)
        {
          v11 = UIKeyboardDidChangeFrameNotification;
        }
      }
    }

    else
    {
      v11 = UIKeyboardWillShowNotification;
      if (v10)
      {
        v11 = UIKeyboardDidShowNotification;
        if (v10 != 1)
        {
          v11 = UIKeyboardWillHideNotification;
        }
      }
    }

    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = v10;
    type metadata accessor for NotificationObserver();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v14 + 16) = v12;
    swift_unknownObjectWeakAssign();
    *(v14 + 32) = 1;
    *(v14 + 48) = partial apply for closure #1 in closure #1 in KeyboardObserver.init(options:update:);
    *(v14 + 56) = v13;
    v15 = a3;

    v16 = v12;

    v17 = [v23 defaultCenter];
    *(v14 + 40) = v17;
    v18 = *(v14 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = v17;

    v21 = v18;
    [v20 addObserver:v14 selector:"handleNotification:" name:v21 object:Strong];

    swift_unknownObjectRelease();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    v4 = v24;
    if (v7 >= -(-1 << *(v24 + 32)))
    {
      goto LABEL_21;
    }

    v6 = v22;
    if ((*(v22 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(v24 + 36))
    {
      goto LABEL_23;
    }

    result = _HashTable.occupiedBucket(after:)();
    v7 = result;
    v8 = *(v24 + 36);
    v5 = v26 - 1;
    a3 = v15;
    if (v26 == 1)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in KeyboardObserver.init(options:update:)(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3, uint64_t a4)
{
  type metadata accessor for Notification();
  v7 = __chkstk_darwin();
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1, v7);
  specialized KeyboardAvoidance.init(notification:)(v9, v12);
  if (v13 != 2)
  {
    v14[3] = v12[3];
    v14[4] = v12[4];
    v14[1] = v12[1];
    v14[2] = v12[2];
    v14[0] = v12[0];
    v15 = v13;
    a2(a4, v14);
  }
}

void specialized KeyboardAvoidance.init(notification:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v6, v50);
  outlined destroy of AnyHashable(v49);
  type metadata accessor for UIAction(0, &_sSo7NSValueCML_0, NSValue_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v44 CGRectValue];
  v42 = v9;
  v43 = v8;
  v40 = v10;
  v41 = v11;

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v12, v50);
  outlined destroy of AnyHashable(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v45 CGRectValue];
  v38 = v15;
  v39 = v14;
  v36 = v16;
  v37 = v17;

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v18, v50);
  outlined destroy of AnyHashable(v49);
  type metadata accessor for UIAction(0, &_sSo8NSNumberCML_1, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v46 floatValue];
  v21 = v20;

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v22, v50);
  outlined destroy of AnyHashable(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v35 = type metadata accessor for Notification();
    (*(*(v35 - 8) + 8))(a1, v35);

    goto LABEL_20;
  }

  v24 = [v47 integerValue];

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v49), (v26 & 1) == 0))
  {
LABEL_18:

    outlined destroy of AnyHashable(v49);
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v25, v50);
  outlined destroy of AnyHashable(v49);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v34 = type metadata accessor for Notification();
    (*(*(v34 - 8) + 8))(a1, v34);
LABEL_20:
    v24 = 0;
    v30 = 0uLL;
    v27 = 2;
    v29 = 0.0;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    goto LABEL_21;
  }

  v27 = [v48 BOOLValue];

  v28 = type metadata accessor for Notification();
  (*(*(v28 - 8) + 8))(a1, v28);
  v29 = v21;
  *&v30 = v43;
  *(&v30 + 1) = v40;
  *&v31 = v42;
  *(&v31 + 1) = v41;
  *&v32 = v39;
  *(&v32 + 1) = v36;
  *&v33 = v38;
  *(&v33 + 1) = v37;
LABEL_21:
  *a2 = v30;
  *(a2 + 16) = v31;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  *(a2 + 64) = v29;
  *(a2 + 72) = v24;
  *(a2 + 80) = v27;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10042D648()
{

  return swift_deallocObject();
}

void partial apply for closure #1 in KeyboardAvoidance.animateContentScrollView(in:)()
{
  v1 = *(v0 + 104);
  KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(v1);

  specialized KeyboardAvoidance.scrollFirstResponderToVisible(in:)(v1);
}

void specialized KeyboardAvoidance.scrollFirstResponderToVisible(in:)(void *a1)
{
  v1 = [a1 contentScrollView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 firstResponder];
    if (v3)
    {
      v30 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = v30;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          type metadata accessor for UIAction(0, &_sSo6UIViewCML_1, UIView_ptr);
          while (1)
          {
            v9 = v2;
            v10 = v8;
            v11 = static NSObject.== infix(_:_:)();

            if (v11)
            {
              break;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
            {
              v10 = v10;

              v5 = v10;
              break;
            }

            v8 = [v10 superview];

            if (!v8)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:
          v10 = 0;
        }

        [v5 frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v5 superview];
        [v2 convertRect:v21 fromView:{v14, v16, v18, v20}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        [v2 scrollRectToVisible:0 animated:{v23, v25, v27, v29}];
      }

      v12 = v30;
    }

    else
    {
      v12 = v2;
    }
  }
}

void specialized static KeyboardAvoidance.firstResponderFrame(in:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  v5 = [a1 contentScrollViewForEdge:1];
  v6 = 0uLL;
  if (!v5)
  {
    v28 = 0uLL;
    goto LABEL_11;
  }

  v7 = v5;
  v8 = [v5 firstResponder];
  if (!v8)
  {

    goto LABEL_10;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_8:

LABEL_10:
    v4 = 1;
    v28 = 0uLL;
    v6 = 0uLL;
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [a1 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 isDescendantOfView:v12];

    if (v14)
    {
      [v11 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [v11 superview];
      [v7 convertRect:v23 fromView:{v16, v18, v20, v22}];
      v30 = v24;
      v31 = v25;
      v29 = v26;
      v32 = v27;

      *&v28 = v29;
      *&v6 = v30;
      v4 = 0;
      *(&v6 + 1) = v31;
      *(&v28 + 1) = v32;
LABEL_11:
      *a2 = v6;
      *(a2 + 16) = v28;
      *(a2 + 32) = v4;
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
}

double specialized firstResponderScrollRect #1 (from:) in KeyboardAvoidance.recommendedScrollRect(in:preferredVisibleRect:)(uint64_t a1, uint64_t a2, void *a3, CGFloat a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  swift_beginAccess();
  CGRectGetHeight(*(a2 + 16));
  swift_beginAccess();
  CGRectGetHeight(*(a1 + 16));
  swift_beginAccess();
  if (CGRectGetMinY(*(a1 + 16)) > a4)
  {
    [a3 adjustedContentInset];
    swift_beginAccess();
    CGRectGetMaxY(*(a1 + 16));
  }

  return v8;
}

uint64_t sub_10042DC20()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type KeyboardObserver.Option and conformance KeyboardObserver.Option()
{
  result = lazy protocol witness table cache variable for type KeyboardObserver.Option and conformance KeyboardObserver.Option;
  if (!lazy protocol witness table cache variable for type KeyboardObserver.Option and conformance KeyboardObserver.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardObserver.Option and conformance KeyboardObserver.Option);
  }

  return result;
}

__n128 __swift_memcpy81_8_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for KeyboardAvoidance(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyboardAvoidance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t Signpost.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id Signpost.log.getter()
{
  v1 = *(v0 + *(type metadata accessor for Signpost(0) + 20));

  return v1;
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = type metadata singleton initialization cache for Signpost;
  if (!type metadata singleton initialization cache for Signpost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Signpost.init(name:object:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v25 = a1;
  v26 = a2;
  v24 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v24 - v9;
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v24 - v15;
  v17 = a5;
  swift_unknownObjectRetain();
  OSSignpostID.init(log:object:)();
  (*(v12 + 16))(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  outlined init with copy of OSSignpostID?(v10, v8);
  v18 = *(v12 + 48);
  if (v18(v8, 1, v11) == 1)
  {
    v19 = v17;
    OSSignpostID.init(log:)();
    swift_unknownObjectRelease();
    outlined destroy of OSSignpostID?(v10);
    (*(v12 + 8))(v16, v11);
    if (v18(v8, 1, v11) != 1)
    {
      outlined destroy of OSSignpostID?(v8);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    outlined destroy of OSSignpostID?(v10);
    (*(v12 + 8))(v16, v11);
    (*(v12 + 32))(v14, v8, v11);
  }

  v20 = v24;
  (*(v12 + 32))(v24, v14, v11);
  result = type metadata accessor for Signpost(0);
  *(v20 + *(result + 20)) = v17;
  v22 = v20 + *(result + 24);
  v23 = v26;
  *v22 = v25;
  *(v22 + 8) = v23;
  *(v22 + 16) = v27;
  return result;
}

uint64_t Signpost.init(name:id:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of OSSignpostID?(a4, v11);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    v17 = a5;
    OSSignpostID.init(log:)();
    outlined destroy of OSSignpostID?(a4);
    if (v16(v11, 1, v12) != 1)
    {
      outlined destroy of OSSignpostID?(v11);
    }
  }

  else
  {
    outlined destroy of OSSignpostID?(a4);
    (*(v13 + 32))(v15, v11, v12);
  }

  (*(v13 + 32))(a6, v15, v12);
  result = type metadata accessor for Signpost(0);
  *(a6 + *(result + 20)) = a5;
  v19 = a6 + *(result + 24);
  v20 = v21;
  *v19 = a1;
  *(v19 + 8) = v20;
  *(v19 + 16) = v22;
  return result;
}

uint64_t outlined init with copy of OSSignpostID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of OSSignpostID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Signpost.emit(dso:)(uint64_t a1, uint64_t (*a2)(void))
{
  a2();
  type metadata accessor for Signpost(0);

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t Signpost.emit(dso:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void))
{
  a6();
  type metadata accessor for Signpost(0);
  return os_signpost(_:dso:log:name:signpostID:_:_:)();
}

uint64_t static Signpost.interval<A>(name:log:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  v35 = a5;
  v36 = a4;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v33 = a7;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for Signpost(0);
  __chkstk_darwin();
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin();
  v20 = &v29 - v19;
  (*(v8 + 56))(v14, 1, 1, v7, v18);
  outlined init with copy of OSSignpostID?(v14, v12);
  v21 = *(v8 + 48);
  if (v21(v12, 1, v7) == 1)
  {
    v22 = v36;
    OSSignpostID.init(log:)();
    outlined destroy of OSSignpostID?(v14);
    if (v21(v12, 1, v7) != 1)
    {
      outlined destroy of OSSignpostID?(v12);
    }
  }

  else
  {
    outlined destroy of OSSignpostID?(v14);
    (*(v8 + 32))(v10, v12, v7);
  }

  (*(v8 + 32))(v17, v10, v7);
  v23 = v36;
  *&v17[*(v15 + 20)] = v36;
  v24 = &v17[*(v15 + 24)];
  v25 = v31;
  *v24 = v30;
  *(v24 + 1) = v25;
  v24[16] = v32;
  outlined init with take of Signpost(v17, v20);
  v26 = v23;
  static os_signpost_type_t.begin.getter();
  v27 = os_signpost(_:dso:log:name:signpostID:)();
  v35(v27);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return outlined destroy of Signpost(v20);
}

uint64_t sub_10042E990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10042EA60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OSSignpostID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for Signpost(uint64_t a1)
{
  result = type metadata accessor for OSSignpostID();
  if (v2 <= 0x3F)
  {
    result = _sSo9OS_os_logCMa_2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t _sSo9OS_os_logCMa_2()
{
  result = _sSo9OS_os_logCML_2;
  if (!_sSo9OS_os_logCML_2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo9OS_os_logCML_2);
  }

  return result;
}

void UnfairLock.locked<A>(_:)(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WeakArray.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakArray.WeakBox(0, a2, a2, a4);

  return Array.endIndex.getter();
}

uint64_t WeakArray.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for WeakArray.WeakBox(0, a3, a3, a4);
  Array.subscript.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v4 - 8) + 8))(v7, v4);
  return Strong;
}

{
  type metadata accessor for WeakArray.WeakBox(255, a3, a3, a4);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd_0, &_sSnySiGMR_0);
  v8 = Range.contains(_:)();
  result = 0;
  if (v8)
  {
    return WeakArray.subscript.getter(a1, a2, a3, v7);
  }

  return result;
}

Swift::Int __swiftcall WeakArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t WeakArray.init(_:)(uint64_t a1, uint64_t a2)
{
  v11[5] = a1;
  v11[2] = a2;
  v3 = type metadata accessor for Array();
  v5 = type metadata accessor for WeakArray.WeakBox(0, a2, a2, v4);
  WitnessTable = swift_getWitnessTable();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in WeakArray.init(_:), v11, v3, v5, &type metadata for Never, WitnessTable, &protocol witness table for Never, v7);
  v9 = v8;

  return v9;
}

void partial apply for closure #1 in WeakArray.init(_:)()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
}

uint64_t WeakArray.append(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for WeakArray.WeakBox(255, v2, v2, v3);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t WeakArray.remove(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for WeakArray.WeakBox(255, *(a2 + 16), *(a2 + 16), a4);
  type metadata accessor for Array();
  Array.remove(at:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v4 - 8) + 8))(v7, v4);
  return Strong;
}

uint64_t WeakArray.remove(_:)(uint64_t a1, uint64_t a2)
{
  WeakArray.reap()();
  type metadata accessor for WeakArray.WeakBox(255, *(a2 + 16), *(a2 + 16), v3);
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return RangeReplaceableCollection<>.removeAll(where:)();
}

Swift::Void __swiftcall WeakArray.reap()()
{
  type metadata accessor for WeakArray.WeakBox(255, *(v0 + 16), *(v0 + 16), v1);
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeAll(where:)();
}

uint64_t partial apply for closure #1 in WeakArray.remove(_:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == v2;
  }

  return result;
}

BOOL partial apply for closure #1 in WeakArray.reap()(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t WeakArray.allElements.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakArray(0, a2, a3, a4);
  swift_getWitnessTable();
  return Sequence.compactMap<A>(_:)();
}

uint64_t protocol witness for Collection.endIndex.getter in conformance WeakArray<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  result = WeakArray.endIndex.getter(*v4, *(a1 + 16), a3, a4);
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance WeakArray<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = WeakArray.subscript.read(v7, *a2, *v3, *(a3 + 16));
  v8[4] = v10;
  v8[5] = v9;
  return protocol witness for Collection.subscript.read in conformance WeakArray<A>;
}

void protocol witness for Collection.subscript.read in conformance WeakArray<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance WeakArray<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, &type metadata accessor for Range, &dispatch thunk of static Comparable.< infix(_:_:));
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, &type metadata accessor for ClosedRange, &dispatch thunk of static Comparable.<= infix(_:_:));
}

void *protocol witness for Collection.index(after:) in conformance WeakArray<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance WeakArray<A>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance WeakArray<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance WeakArray<A>(uint64_t a1)
{
  swift_getWitnessTable();
  v1 = specialized Collection._copyToContiguousArray()();

  return v1;
}

uint64_t type metadata instantiation function for WeakArray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for WeakArray.WeakBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t WeakValuesDictionary.__allocating_init()()
{
  v0 = swift_allocObject();
  WeakValuesDictionary.init()();
  return v0;
}

void *WeakValuesDictionary.init()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for NSValue();
  swift_getTupleTypeMetadata2();
  v4 = static Array._allocateUninitialized(_:)();
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(v4, v2, v3, *(v1 + 96));

  v0[2] = v5;
  return v0;
}

uint64_t WeakValuesDictionary.subscript.getter(uint64_t a1)
{
  swift_beginAccess();
  type metadata accessor for NSValue();

  Dictionary.subscript.getter();

  if (v5[0])
  {
    if ([v5[0] weakObjectValue])
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v3 = 0u;
      v4 = 0u;
    }

    *v5 = v3;
    v6 = v4;
    if (*(&v4 + 1))
    {
      if (swift_dynamicCast())
      {
        return v2;
      }
    }

    else
    {
      _sypSgWOh_1(v5);
    }
  }

  return 0;
}

void WeakValuesDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin();
  if (v9)
  {
    (*(v6 + 16))(&v12 - v7, a2, v5, v8);
    v12 = a1;
    swift_unknownObjectRetain();
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    v11 = [objc_opt_self() valueWithWeakObject:v10];
    swift_unknownObjectRelease();
    v13 = v11;
    swift_beginAccess();
    type metadata accessor for NSValue();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    swift_unknownObjectRelease_n();
    (*(v6 + 8))(a2, v5);
  }

  else
  {
    swift_beginAccess();
    type metadata accessor for NSValue();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();
    (*(v6 + 8))(a2, v5);
  }
}

void (*WeakValuesDictionary.subscript.modify(uint64_t **a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[1] = v2;
  v7 = *(*v2 + 80);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v5[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v6[5] = v11;
  (*(v9 + 16))();
  *v6 = WeakValuesDictionary.subscript.getter(a2);
  return WeakValuesDictionary.subscript.modify;
}

void WeakValuesDictionary.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    (*(v2[3] + 32))((*a1)[4], v4, v2[2]);
    v5 = swift_unknownObjectRetain();
    WeakValuesDictionary.subscript.setter(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    WeakValuesDictionary.subscript.setter(**a1, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall WeakValuesDictionary.compact()()
{
  v68 = *v0;
  v1 = *(v68 + 80);
  v59 = *(v1 - 8);
  __chkstk_darwin();
  v57 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v54 - v3;
  v55 = v5;
  __chkstk_darwin();
  v69 = &v54 - v6;
  v60 = type metadata accessor for NSValue();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = type metadata accessor for Optional();
  v8 = *(v65 - 8);
  __chkstk_darwin();
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v54 - v11;
  v78 = static Array._allocateUninitialized(_:)();
  swift_beginAccess();
  v58 = v0;
  v13 = v0[2];
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = __CocoaDictionary.makeIterator()();
    v15 = 0;
    v16 = 0;
    v70 = 0;
    v17 = v14 | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(v13 + 32);
    v16 = ~v18;
    v15 = v13 + 64;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v70 = v20 & *(v13 + 64);
    v17 = v13;
  }

  v72 = (v59 + 32);
  v64 = TupleTypeMetadata2 - 8;
  v56 = v16;
  v21 = (v16 + 64) >> 6;
  v73 = (v59 + 16);
  v63 = (v8 + 32);
  v71 = (v59 + 8);

  v22 = 0;
  v62 = v10;
  v61 = v12;
  v66 = v15;
  v67 = v17;
  v23 = v70;
  while (1)
  {
    v70 = v23;
    if ((v17 & 0x8000000000000000) != 0)
    {
      if (__CocoaDictionary.Iterator.next()())
      {
        v40 = v39;
        v41 = v69;
        _forceBridgeFromObjectiveC<A>(_:_:)();
        swift_unknownObjectRelease();
        *&v75 = v40;
        swift_dynamicCast();
        v42 = *&v77[0];
        v43 = *(TupleTypeMetadata2 + 48);
        v44 = v41;
        v10 = v62;
        (*v72)(v62, v44, v1);
        *&v10[v43] = v42;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
      }

      v27 = v22;
      v74 = v70;
      v12 = v61;
    }

    else
    {
      v24 = v23;
      v25 = v22;
      if (v23)
      {
LABEL_21:
        v74 = (v24 - 1) & v24;
        v29 = __clz(__rbit64(v24)) | (v25 << 6);
        v30 = v4;
        v31 = v59;
        v32 = v69;
        (*(v59 + 16))(v69, *(v17 + 48) + *(v59 + 72) * v29, v1);
        v33 = *(*(v17 + 56) + 8 * v29);
        v34 = *(TupleTypeMetadata2 + 48);
        v35 = *(v31 + 32);
        v4 = v30;
        v10 = v62;
        v36 = v32;
        v12 = v61;
        v35(v62, v36, v1);
        *&v10[v34] = v33;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
        v38 = v33;
        v27 = v25;
      }

      else
      {
        v26 = v21 <= v22 + 1 ? v22 + 1 : v21;
        v27 = v26 - 1;
        v28 = v22;
        while (1)
        {
          v25 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            return;
          }

          if (v25 >= v21)
          {
            break;
          }

          v24 = *(v15 + 8 * v25);
          ++v28;
          if (v24)
          {
            v17 = v67;
            goto LABEL_21;
          }
        }

        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
        v74 = 0;
      }
    }

    (*v63)(v12, v10, v65);
    if ((*(v37 + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v45 = *&v12[*(TupleTypeMetadata2 + 48)];
    (*v72)(v4, v12, v1);
    if ([v45 weakObjectValue])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    v77[0] = v75;
    v77[1] = v76;
    if (!*(&v76 + 1))
    {
      _sypSgWOh_1(v77);
LABEL_9:
      (*v73)(v69, v4, v1);
      type metadata accessor for Array();
      Array.append(_:)();

      (*v71)(v4, v1);
      goto LABEL_10;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    (*v71)(v4, v1);

    swift_unknownObjectRelease();
LABEL_10:
    v22 = v27;
    v23 = v74;
    v15 = v66;
    v17 = v67;
  }

  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v67);
  v46 = v78;
  v47 = Array.endIndex.getter();
  v48 = v59;
  v49 = v57;
  if (!v47)
  {
    goto LABEL_44;
  }

  v50 = 0;
  while (2)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v48 + 16))(v49, v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50, v1);
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      goto LABEL_38;
    }

    v53 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v55 != 8)
    {
      goto LABEL_46;
    }

    *&v77[0] = v53;
    (*v73)(v49, v77, v1);
    swift_unknownObjectRelease();
    v52 = v50 + 1;
    if (!__OFADD__(v50, 1))
    {
LABEL_38:
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();
      swift_endAccess();

      (*v71)(v49, v1);
      ++v50;
      if (v52 == Array.endIndex.getter())
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_44:
}

uint64_t variable initialization expression of LyricsOptionsManager.observers()
{
  v0 = type metadata accessor for LyricsOptionsManager.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

void variable initialization expression of SyncedLyricsViewController.Specs.selectedLinePosition(uint64_t a1@<X8>)
{
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

unint64_t _sSo6UIFontCMa_0()
{
  result = _sSo6UIFontCML_1;
  if (!_sSo6UIFontCML_1)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo6UIFontCML_1);
  }

  return result;
}

id variable initialization expression of SyncedLyricsViewController.Specs.writtenByFont(double *a1, double a2)
{
  v2 = [objc_opt_self() systemFontOfSize:a2 weight:*a1];

  return v2;
}

id variable initialization expression of SyncedLyricsViewController.Specs.automaticallyCreatedDisclaimerFont()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];

  return v0;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v12[3] = &block_descriptor_33_3;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v12[3] = &block_descriptor_40_0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v12[3] = &block_descriptor_47_0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.65];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v12[3] = &block_descriptor_54_0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedScrollTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v12[3] = &block_descriptor_61;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedTextColor(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = [v7 *a1];
  v10 = objc_allocWithZone(UIColor);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v17[4] = a3;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v17[3] = a4;
  v12 = _Block_copy(v17);
  v13 = v9;
  v14 = v8;

  v15 = [v10 initWithDynamicProvider:v12];

  _Block_release(v12);
  return v15;
}

id variable initialization expression of SyncedLyricsViewController.Specs.lineProgressionBackgroundVocalsGradientColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 tintColor];
  v4 = [v3 colorWithAlphaComponent:0.175];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v12[3] = &block_descriptor_75;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

CGFloat variable initialization expression of SyncedLyricsViewController.Specs.backgroundVocalsDeselectedTransform@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>)
{
  CGAffineTransformMakeScale(&v6, a2, a2);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

id variable initialization expression of SyncedLyricsViewController.Specs.highlightViewBackgroundColor()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithWhite:1.0 alpha:0.08];
}

double variable initialization expression of SyncedLyricsViewController.Specs.lineChangeSpringTimingParametersValues()
{
  v0 = Int.seconds.getter(1);
  Int.seconds.getter(100);
  Int.seconds.getter(18);
  return v0;
}

uint64_t sub_100432B18()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in UIColor.init(normal:highContrast:)(void *a1)
{
  return closure #1 in UIColor.init(normal:highContrast:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 accessibilityContrast];
  if (v4 == 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (v4 == -1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id variable initialization expression of SyncedLyricsViewController.tapFeedbackGenerator()
{
  v0 = objc_allocWithZone(UISelectionFeedbackGenerator);

  return [v0 init];
}

uint64_t variable initialization expression of Lyrics.TextLine.language@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id variable initialization expression of SyncedLyricsViewController.scrollView(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t _sSo21NSAttributedStringKeyas35_HasCustomAnyHashableRepresentationSCsACP03_toefG0s0fG0VSgyFTW_1(uint64_t a1)
{
  _sSo21NSAttributedStringKeyaABSYSCWlTm_0(&_sSo21NSAttributedStringKeyaABSHSCWL_1, &_sSo21NSAttributedStringKeyaSHSCMc_1);
  _sSo21NSAttributedStringKeyaABSYSCWlTm_0(&_sSo21NSAttributedStringKeyaABs20_SwiftNewtypeWrapperSCWL_1, &_sSo21NSAttributedStringKeyas20_SwiftNewtypeWrapperSCMc_1);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

__n128 __swift_memcpy16_8_3(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8_3(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t _s10Foundation3URLVSgWOb_3(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3, &_s10Foundation3URLVSgMR_3);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation3URLVSgWOc_1(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3, &_s10Foundation3URLVSgMR_3);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation3URLVSgWOh_3(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3, &_s10Foundation3URLVSgMR_3);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSo21NSAttributedStringKeyaABSYSCWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _sSo21NSAttributedStringKeyaMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *_ss15_arrayForceCastySayq_GSayxGr0_lF10Foundation3URLV_AFSgTg5_2(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3, &_s10Foundation3URLVSgMR_3);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_2(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_2((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      _s10Foundation3URLVSgWOb_3(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void TimedElement.timeRange.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  if (v4 > (*(a2 + 16))(a1, a2))
  {
    __break(1u);
  }
}

uint64_t one-time initialization function for chineseLanguages()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for chineseLanguages);
  result = swift_arrayDestroy();
  static Lyrics.chineseLanguages = v0;
  return result;
}

uint64_t *Lyrics.chineseLanguages.unsafeMutableAddressor()
{
  if (one-time initialization token for chineseLanguages != -1)
  {
    swift_once();
  }

  return &static Lyrics.chineseLanguages;
}

uint64_t one-time initialization function for scriptMap()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n_1(&outlined read-only object #0 of one-time initialization function for scriptMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd_0, &_sSS_SStMR_0);
  result = swift_arrayDestroy();
  static Lyrics.scriptMap = v0;
  return result;
}

uint64_t *Lyrics.scriptMap.unsafeMutableAddressor()
{
  if (one-time initialization token for scriptMap != -1)
  {
    swift_once();
  }

  return &static Lyrics.scriptMap;
}

double Lyrics.Word.startTime.getter()
{
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.endTime.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 56 * v2 - 16);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.Emphasis.factor.getter(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

BOOL static Lyrics.Word.Emphasis.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

void Lyrics.Word.Emphasis.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }
}

Swift::Int Lyrics.Word.Emphasis.hashValue.getter(Swift::UInt64 a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Lyrics.Word.Emphasis()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    Hasher._combine(_:)(v2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Lyrics.Word.Emphasis(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Lyrics.Word.Emphasis(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7LyricsX0B0C8SyllableV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 80);
    for (i = a2 + 40; *(v3 - 6) == *(i - 8) && *(v3 - 5) == *i; i += 56)
    {
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;
      v10 = *(i + 24);
      v9 = *(i + 32);
      v11 = *(i + 40);
      if (*(v3 - 4) == *(i + 8) && *(v3 - 3) == *(i + 16))
      {
        result = 0;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      if (v7 != v10 || v6 != v9 || *&v8 != v11)
      {
        return result;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void Lyrics.Word.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v2 + 8);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, *(v2 + 32));
  if (*(v2 + 48))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *(v2 + 40);
    Hasher._combine(_:)(1uLL);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
  }
}

Swift::Int Lyrics.Word.hashValue.getter()
{
  Hasher.init(_seed:)();
  Lyrics.Word.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Lyrics.Word(uint64_t a1)
{
  Hasher.init(_seed:)();
  Lyrics.Word.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Lyrics.Word(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static Lyrics.Word.__derived_struct_equals(_:_:)(v5, v7) & 1;
}

void Lyrics.Syllable.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  String.hash(into:)();
  v4 = *(v1 + 40);
  Hasher._combine(_:)(*(v1 + 32));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(*(v1 + 48));
}

Swift::Int Lyrics.Syllable.hashValue.getter()
{
  Hasher.init(_seed:)();
  Lyrics.Syllable.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Lyrics.Syllable(uint64_t a1)
{
  Hasher.init(_seed:)();
  Lyrics.Syllable.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Lyrics.Syllable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static Lyrics.Syllable.__derived_struct_equals(_:_:)(v5, v7);
}

double Lyrics.TextLine.backgroundVocals.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v3 + 72)))(v7);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t Lyrics.TextLine.backgroundText.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  (*(v0 + *(v1 + 72)))(v4);
  if (!v4[3])
  {
    return 0;
  }

  v2 = v4[2];

  outlined destroy of TaskPriority?(v4, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMR);
  return v2;
}

double Lyrics.TextLine.capabilities.getter()
{
  type metadata accessor for Lyrics.TextLine(0);

  return result;
}

uint64_t Lyrics.TextLine.translationKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for Lyrics.TextLine(0) + 52));

  return v1;
}

uint64_t Lyrics.TextLine.debugDescription.getter()
{
  _StringGuts.grow(_:)(54);
  v1._object = 0x80000001004D6440;
  v1._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6954747261747320;
  v3._object = 0xEB000000003D656DLL;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 0x656D6954646E6520;
  v4._object = 0xE90000000000003DLL;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 0x3D7478657420;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7._countAndFlagsBits = (*(v0 + *(v6 + 64)))();
  String.append(_:)(v7);

  return 0;
}

uint64_t Lyrics.TextLine.textAlignment.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  if ((*(v0 + *(v1 + 56)))())
  {
    if ((*(v0 + *(v1 + 32)) & 1) == 0)
    {
      return 2;
    }
  }

  else if (*(v0 + *(v1 + 32)))
  {
    return 2;
  }

  return 0;
}

uint64_t Lyrics.TextLine.init(lineIndex:startTime:endTime:primaryVocalsStartTime:primaryVocalsEndTime:isFirstLineOfParagraph:language:translationKey:agentAlignment:capabilities:localizedLyricsDirectionProvider:localizedDirectionProvider:localizedTextProvider:localizedWordsProvider:localizedBackgroundVocalsProvider:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = type metadata accessor for Lyrics.TextLine(0);
  v32 = v31[7];
  v33 = type metadata accessor for Locale.Language();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  *(a9 + 16) = a1;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + v31[10]) = a12;
  *(a9 + v31[11]) = a13;
  *(a9 + v31[12]) = a2;
  result = outlined assign with take of PlaybackIntentDescriptor.IntentType?(a3, a9 + v32, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  v35 = (a9 + v31[13]);
  *v35 = a4;
  v35[1] = a5;
  *(a9 + v31[8]) = a6 & 1;
  *(a9 + v31[9]) = a7;
  v36 = (a9 + v31[14]);
  *v36 = a8;
  v36[1] = a14;
  v37 = (a9 + v31[15]);
  *v37 = a15;
  v37[1] = a16;
  v38 = (a9 + v31[16]);
  *v38 = a17;
  v38[1] = a18;
  v39 = (a9 + v31[17]);
  *v39 = a19;
  v39[1] = a20;
  v40 = (a9 + v31[18]);
  *v40 = a21;
  v40[1] = a22;
  return result;
}

double Lyrics.TextLine.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*(v1 + 16));
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v4 + 64)))();
  String.hash(into:)();

  return result;
}

Swift::Int Lyrics.TextLine.hashValue.getter()
{
  Hasher.init(_seed:)();
  Lyrics.TextLine.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for LyricsLine.textAlignment.getter in conformance Lyrics.TextLine(uint64_t a1)
{
  if ((*(v1 + *(a1 + 56)))())
  {
    if (*(v1 + *(a1 + 32)))
    {
      return 0;
    }
  }

  else if ((*(v1 + *(a1 + 32)) & 1) == 0)
  {
    return 0;
  }

  return 2;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Lyrics.TextLine(uint64_t a1)
{
  Hasher.init(_seed:)();
  Lyrics.TextLine.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t Lyrics.InstrumentalLine.textAlignment.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.InstrumentalLine.debugDescription.getter(double a1, double a2)
{
  _StringGuts.grow(_:)(54);
  v2._object = 0x80000001004D6460;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6954747261747320;
  v4._object = 0xEB000000003D656DLL;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 0x656D6954646E6520;
  v5._object = 0xE90000000000003DLL;
  String.append(_:)(v5);
  Double.write<A>(to:)();
  return 0;
}

uint64_t Lyrics.SongwritersLine.textAlignment.getter()
{
  if (*(v0 + 24))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.SongwritersLine.debugDescription.getter()
{
  _StringGuts.grow(_:)(68);
  v0._object = 0x80000001004D6480;
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6954747261747320;
  v2._object = 0xEB000000003D656DLL;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0x656D6954646E6520;
  v3._object = 0xE90000000000003DLL;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 0x697277676E6F7320;
  v4._object = 0xED00003D73726574;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  return 0;
}

double Lyrics.Translation.translatedLine(for:)@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = (a1 + *(type metadata accessor for Lyrics.TextLine(0) + 52));
  v6 = v5[1];
  if (v6 && (v7 = *v5, v8 = *(v2 + *(type metadata accessor for Lyrics.Translation(0) + 32)), *(v8 + 16)) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 88 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[6];
    if (v14)
    {
      v15 = v11[5];
    }

    else
    {
      v15 = 0;
    }

    v19 = type metadata accessor for Lyrics.Translation.Line(0);
    v20 = *(v19 + 24);
    v21 = type metadata accessor for Locale.Language();
    (*(*(v21 - 8) + 16))(&a2[v20], v3, v21);
    *a2 = v13;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v14;
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }

  else
  {
    v16 = type metadata accessor for Lyrics.Translation.Line(0);
    v17 = *(*(v16 - 8) + 56);

    v17(a2, 1, 1, v16);
  }

  return result;
}

uint64_t Lyrics.Translation.language.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale.Language();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Lyrics.Translation.originalLanguageIdentifier.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t Lyrics.Transliteration.transliteratedLine(for:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Lyrics.Transliteration(0);
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin();
  v94 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  __chkstk_darwin();
  v9 = &v80 - v8;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin();
  v13 = __chkstk_darwin();
  v15 = &v80 - v14;
  v17 = (a1 + *(v16 + 52));
  v18 = v17[1];
  if (v18)
  {
    v19 = *(v3 + *(v6 + 28));
    if (*(v19 + 16))
    {
      v90 = *v17;
      v92 = v12;
      v89 = v18;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v18);
      v12 = v92;
      if (v21)
      {
        v80 = v3;
        v91 = v9;
        v22 = *(v19 + 56) + 88 * v20;
        v24 = *(v22 + 32);
        v23 = *(v22 + 48);
        v25 = *(v22 + 64);
        v101 = *(v22 + 80);
        v100 = v25;
        v26 = *(v22 + 16);
        v96 = *v22;
        v97 = v26;
        v98 = v24;
        v99 = v23;
        v27 = *(a1 + v10[17]);
        v28 = outlined init with copy of Lyrics.LineTranslationMetadata(&v96, v95);
        v29 = v27(v28);
        v30 = *(v29 + 16);
        v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v30)
        {
          v31 = *(v29 + 32);

          v32 = v91;
          if (!*(v97 + 16) || v31 != *(v97 + 32))
          {
            goto LABEL_12;
          }
        }

        else
        {

          v32 = v91;
          if (*(v97 + 16))
          {
LABEL_12:
            if (one-time initialization token for lyrics != -1)
            {
              swift_once();
            }

            v35 = type metadata accessor for Logger();
            __swift_project_value_buffer(v35, static Logger.lyrics);
            outlined init with copy of Lyrics.Translation(a1, v15, type metadata accessor for Lyrics.TextLine);
            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v36, v37))
            {
              LODWORD(v88) = v37;
              v38 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v95[0] = v87;
              v39 = v38;
              *v38 = 136446210;
              v40 = &v15[v10[13]];
              v41 = v40[1];
              if (v41)
              {
                v86 = *v40;
                v42 = v41;
              }

              else
              {
                v42 = 0xE300000000000000;
                v86 = 7104878;
              }

              outlined destroy of Lyrics.Translation(v15, type metadata accessor for Lyrics.TextLine);
              v43 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v86, v42, v95);

              *(v39 + 1) = v43;
              _os_log_impl(&_mh_execute_header, v36, v88, "DEGENERATE TRANSLITERATION DATA start time of original line %{public}s and transliterated line do not match.", v39, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v87);
            }

            else
            {

              outlined destroy of Lyrics.Translation(v15, type metadata accessor for Lyrics.TextLine);
            }
          }
        }

        v88 = a1[2];
        v44 = *(a1 + v10[10]);
        v45 = *a1;
        v46 = a1[1];
        v47 = *(a1 + v10[11]);
        LODWORD(v86) = *(a1 + v10[12]);
        v48 = type metadata accessor for Locale.Language();
        v49 = *(v48 - 8);
        v50 = *(v49 + 16);
        v51 = v80;
        v81 = v48;
        v50(v32, v80, v48);
        v82 = *(v49 + 56);
        v82(v32, 0, 1, v48);
        v52 = v10[9];
        LODWORD(v87) = *(a1 + v10[8]);
        v85 = *(a1 + v52);
        v53 = v83;
        outlined init with copy of Lyrics.Translation(a1, v83, type metadata accessor for Lyrics.TextLine);
        v54 = (*(v92 + 80) + 16) & ~*(v92 + 80);
        v84 = swift_allocObject();
        outlined init with take of Lyrics.TextLine(v53, v84 + v54, type metadata accessor for Lyrics.TextLine);
        v55 = v94;
        outlined init with copy of Lyrics.Translation(v51, v94, type metadata accessor for Lyrics.Transliteration);
        v56 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v57 = swift_allocObject();
        outlined init with take of Lyrics.TextLine(v55, v57 + v56, type metadata accessor for Lyrics.Transliteration);
        v58 = swift_allocObject();
        v59 = v99;
        v60 = v100;
        *(v58 + 48) = v98;
        *(v58 + 64) = v59;
        *(v58 + 80) = v60;
        *(v58 + 96) = v101;
        v61 = v97;
        *(v58 + 16) = v96;
        *(v58 + 32) = v61;
        v62 = swift_allocObject();
        v63 = v99;
        v64 = v100;
        *(v62 + 48) = v98;
        *(v62 + 64) = v63;
        *(v62 + 80) = v64;
        *(v62 + 96) = v101;
        v65 = v97;
        *(v62 + 16) = v96;
        *(v62 + 32) = v65;
        v66 = swift_allocObject();
        v67 = v99;
        v68 = v100;
        *(v66 + 48) = v98;
        *(v66 + 64) = v67;
        *(v66 + 80) = v68;
        *(v66 + 96) = v101;
        v69 = v97;
        *(v66 + 16) = v96;
        *(v66 + 32) = v69;
        v70 = v10[7];
        v82(a2 + v70, 1, 1, v81);
        a2[2] = v88;
        *a2 = v45;
        a2[1] = v46;
        *(a2 + v10[10]) = v44;
        *(a2 + v10[11]) = v47;
        *(a2 + v10[12]) = v86;
        outlined init with copy of Lyrics.LineTranslationMetadata(&v96, v95);
        outlined init with copy of Lyrics.LineTranslationMetadata(&v96, v95);
        v71 = v89;

        v72 = v85;

        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v91, a2 + v70, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
        v73 = (a2 + v10[13]);
        *v73 = v90;
        v73[1] = v71;
        *(a2 + v10[8]) = v87;
        *(a2 + v10[9]) = v72;
        v74 = (a2 + v10[14]);
        v75 = v84;
        *v74 = partial apply for closure #1 in Lyrics.Transliteration.transliteratedLine(for:);
        v74[1] = v75;
        v76 = (a2 + v10[15]);
        *v76 = partial apply for closure #2 in Lyrics.Transliteration.transliteratedLine(for:);
        v76[1] = v57;
        v77 = (a2 + v10[16]);
        *v77 = Alert.message.getter;
        v77[1] = v58;
        v78 = (a2 + v10[17]);
        *v78 = Library.Menu.Request.excludedIdentifiers.getter;
        v78[1] = v62;
        v79 = (a2 + v10[18]);
        *v79 = partial apply for closure #5 in Lyrics.Transliteration.transliteratedLine(for:);
        v79[1] = v66;
        return (*(v92 + 56))(a2, 0, 1, v10);
      }
    }
  }

  v33 = *(v12 + 56);

  return v33(a2, 1, 1, v10, v13);
}

uint64_t Logger.lyrics.unsafeMutableAddressor()
{
  if (one-time initialization token for lyrics != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.lyrics);
}

uint64_t static Lyrics.useSpacesAsWordDelimiter(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Locale.Language();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  __chkstk_darwin();
  v7 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v28 - v10;
  outlined init with copy of TaskPriority?(a1, v7, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v12 = &_s10Foundation6LocaleV8LanguageVSgMd_0;
    v13 = &_s10Foundation6LocaleV8LanguageVSgMR_0;
    v14 = v7;
LABEL_7:
    outlined destroy of TaskPriority?(v14, v12, v13);
    v22 = 1;
    return v22 & 1;
  }

  Locale.Language.languageCode.getter();
  v15 = *(v3 + 8);
  v15(v7, v2);
  v16 = type metadata accessor for Locale.LanguageCode();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v11, 1, v16) == 1)
  {
    v12 = &_s10Foundation6LocaleV12LanguageCodeVSgMd_0;
    v13 = &_s10Foundation6LocaleV12LanguageCodeVSgMR_0;
    v14 = v11;
    goto LABEL_7;
  }

  v29 = v15;
  Locale.LanguageCode.identifier.getter();
  v28 = v19;
  v20 = v11;
  v21 = *(v17 + 8);
  v21(v20, v16);
  Locale.Language.init(identifier:)();
  Locale.Language.languageCode.getter();
  v29(v5, v2);
  if (v18(v9, 1, v16) == 1)
  {
    v12 = &_s10Foundation6LocaleV12LanguageCodeVSgMd_0;
    v13 = &_s10Foundation6LocaleV12LanguageCodeVSgMR_0;
    v14 = v9;
    goto LABEL_7;
  }

  v24 = Locale.LanguageCode.identifier.getter();
  v26 = v25;
  v21(v9, v16);
  if (one-time initialization token for noSpaceLanguages != -1)
  {
    swift_once();
  }

  v27 = specialized Set.contains(_:)(v24, v26, static Lyrics.noSpaceLanguages);

  v22 = v27 ^ 1;
  return v22 & 1;
}

uint64_t Lyrics.currentLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for Lyrics.Translation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = type metadata accessor for Locale.Language();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v12, v7, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  if ((*(v3 + 48))(v7, 1, v2))
  {
    outlined destroy of TaskPriority?(v7, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
    return outlined init with copy of TaskPriority?(v1 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, v15, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  }

  else
  {
    outlined init with copy of Lyrics.Translation(v7, v5, type metadata accessor for Lyrics.Translation);
    outlined destroy of TaskPriority?(v7, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
    (*(v9 + 16))(v11, v5, v8);
    outlined destroy of Lyrics.Translation(v5, type metadata accessor for Lyrics.Translation);
    v14 = v15;
    (*(v9 + 32))(v15, v11, v8);
    return (*(v9 + 56))(v14, 0, 1, v8);
  }
}

uint64_t Lyrics.currentTranslation.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of TaskPriority?(v4 + v8, a4, a2, a3);
}

uint64_t Lyrics.currentTranslation.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t Lyrics.staticText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  if (*(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText + 8))
  {
    v2 = *v1;
  }

  else
  {
    closure #1 in Lyrics.staticText.getter(v0);
    v2 = v3;
    *v1 = v3;
    v1[1] = v4;
  }

  return v2;
}

void closure #1 in Lyrics.staticText.getter(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 32);
  v40 = 0;
  v41 = 0xE000000000000000;
  v33 = *(v5 + 16);
  if (v33)
  {
    v6 = 0;
    v32 = v5 + 32;
    v29 = v5;
    while (v6 < *(v5 + 16))
    {
      v10 = *(v32 + 8 * v6);
      v7 = v40;
      v8 = v41;
      v38 = v40;
      v39 = v41;
      v11 = *(v10 + 16);
      if (v11)
      {
        v34 = v10;
        v35 = v6;
        v12 = &v4[*(v31 + 64)];
        v13 = &v4[*(v31 + 72)];
        v14 = v10 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v36 = *(v30 + 72);

        do
        {
          v21 = outlined init with copy of Lyrics.Translation(v14, v4, type metadata accessor for Lyrics.TextLine);
          v22 = v38 & 0xFFFFFFFFFFFFLL;
          if ((v39 & 0x2000000000000000) != 0)
          {
            v22 = HIBYTE(v39) & 0xF;
          }

          if (v22)
          {
            v23._countAndFlagsBits = 10;
            v23._object = 0xE100000000000000;
            String.append(_:)(v23);
          }

          v24 = (*v12)(v21);
          v26 = v25;
          (*v13)(v42);
          v27 = v43;
          if (v43)
          {
            v15 = v42[2];

            outlined destroy of TaskPriority?(v42, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMR);
            v37._countAndFlagsBits = 40;
            v37._object = 0xE100000000000000;

            v16._countAndFlagsBits = v15;
            v16._object = v27;
            String.append(_:)(v16);
            v17._countAndFlagsBits = 41;
            v17._object = 0xE100000000000000;
            String.append(_:)(v17);
            swift_bridgeObjectRelease_n();
            countAndFlagsBits = v37._countAndFlagsBits;
            object = v37._object;
          }

          else
          {
            countAndFlagsBits = 0;
            object = 0xE000000000000000;
          }

          v37._countAndFlagsBits = v24;
          v37._object = v26;

          v20._countAndFlagsBits = countAndFlagsBits;
          v20._object = object;
          String.append(_:)(v20);

          String.append(_:)(v37);

          outlined destroy of Lyrics.Translation(v4, type metadata accessor for Lyrics.TextLine);
          v14 += v36;
          --v11;
        }

        while (v11);
        v7 = v38;
        v8 = v39;
        v5 = v29;
        v6 = v35;
      }

      else
      {
      }

      ++v6;
      v40 = v7;
      v41 = v8;
      v9._countAndFlagsBits = 10;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);

      if (v6 == v33)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    String.trim()();
  }
}

double Lyrics.staticText.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

uint64_t (*Lyrics.staticText.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = Lyrics.staticText.getter();
  a1[1] = v3;
  return Lyrics.staticText.modify;
}

double Lyrics.staticText.modify(void *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v2 = *a1;
  v2[1] = v1;

  return result;
}

uint64_t Lyrics.alignment(for:default:)(void *a1, uint64_t a2, char a3)
{
  if (!*(v3 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) && (a3 & 1) == 0)
  {
    return a2;
  }

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  return (*(v5 + 24))(v4, v5);
}

uint64_t closure #1 in Lyrics.originalLine(for:)(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = type metadata accessor for Lyrics.TextLine(0);
    v5 = (*(a1 + *(v4 + 64)))();
    v7 = v6;
    if (v5 == (*(a2 + *(v4 + 64)))() && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Lyrics.TextLine(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of Lyrics.Translation(v12, v10, type metadata accessor for Lyrics.TextLine);
      v14 = a1(v10);
      if (v3)
      {
        return outlined destroy of Lyrics.Translation(v10, type metadata accessor for Lyrics.TextLine);
      }

      if (v14)
      {
        break;
      }

      outlined destroy of Lyrics.Translation(v10, type metadata accessor for Lyrics.TextLine);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    outlined init with take of Lyrics.TextLine(v10, v18, type metadata accessor for Lyrics.TextLine);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t one-time initialization function for noSpaceLanguages()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for noSpaceLanguages);
  result = swift_arrayDestroy();
  static Lyrics.noSpaceLanguages = v0;
  return result;
}

void Lyrics.AudioAttribute.hash(into:)(double a1)
{
  Hasher._combine(_:)(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  Hasher._combine(_:)(*&v2);
}

Swift::Int Lyrics.AudioAttribute.hashValue.getter(double a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  Hasher._combine(_:)(*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Lyrics.AudioAttribute()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Lyrics.AudioAttribute()
{
  v1 = *v0;
  Hasher._combine(_:)(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Lyrics.AudioAttribute(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(*&v3);
  return Hasher._finalize()();
}

double Lyrics.spatialOffset.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  if (v4)
  {
    v5 = __clz(__rbit64(v4));
    return *(*(v1 + 48) + 8 * v5);
  }

  else
  {
    v6 = ((v2 + 63) >> 6) - 1;
    v7 = (v1 + 64);
    while (v6)
    {
      v9 = *v7++;
      v8 = v9;
      --v6;
      v4 -= 64;
      if (v9)
      {
        v5 = __clz(__rbit64(v8)) - v4;
        return *(*(v1 + 48) + 8 * v5);
      }
    }

    return 0.0;
  }
}

uint64_t Lyrics.__allocating_init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  Lyrics.init(identifier:songInfo:)(a1, a2, a3);
  return v6;
}

void *Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v679 = a3;
  v629 = a2;
  v626 = a1;
  v673 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6RegionVSgMd_0, &_s10Foundation6LocaleV6RegionVSgMR_0);
  __chkstk_darwin();
  v604 = v598 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
  __chkstk_darwin();
  v621 = v598 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v606 = v598 - v7;
  __chkstk_darwin();
  v608 = v598 - v8;
  v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  __chkstk_darwin();
  v624 = v598 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
  __chkstk_darwin();
  v611 = v598 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v630 = v598 - v11;
  __chkstk_darwin();
  v637 = v598 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  __chkstk_darwin();
  v620 = v598 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v619 = v598 - v14;
  __chkstk_darwin();
  v635 = v598 - v15;
  __chkstk_darwin();
  v654 = v598 - v16;
  __chkstk_darwin();
  v663 = v598 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  __chkstk_darwin();
  v616 = v598 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v615 = v598 - v19;
  __chkstk_darwin();
  v614 = v598 - v20;
  v693 = type metadata accessor for Lyrics.TextLine(0);
  v682 = *(v693 - 8);
  __chkstk_darwin();
  v685 = v598 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v684 = v598 - v22;
  __chkstk_darwin();
  v697 = (v598 - v23);
  __chkstk_darwin();
  v672 = v598 - v24;
  __chkstk_darwin();
  v665 = v598 - v25;
  v26 = type metadata accessor for Lyrics.Transliteration(0);
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v655 = v598 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v628 = (v598 - v29);
  __chkstk_darwin();
  v681 = v598 - v30;
  __chkstk_darwin();
  v680 = v598 - v31;
  v32 = type metadata accessor for Lyrics.Translation(0);
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v631 = v598 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v645 = v598 - v35;
  __chkstk_darwin();
  v632 = (v598 - v36);
  __chkstk_darwin();
  v683 = v598 - v37;
  __chkstk_darwin();
  v687 = v598 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
  __chkstk_darwin();
  v623 = v598 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v602 = v598 - v40;
  __chkstk_darwin();
  v644 = v598 - v41;
  __chkstk_darwin();
  v656 = v598 - v42;
  __chkstk_darwin();
  v678 = v598 - v43;
  v694 = type metadata accessor for Locale();
  v690 = *(v694 - 8);
  __chkstk_darwin();
  v607 = v598 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v647 = v598 - v45;
  __chkstk_darwin();
  v696 = v598 - v46;
  __chkstk_darwin();
  v686 = (v598 - v47);
  v698 = type metadata accessor for Locale.Language();
  v633 = *(v698 - 8);
  __chkstk_darwin();
  v618 = v598 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v601 = v598 - v49;
  __chkstk_darwin();
  v605 = v598 - v50;
  __chkstk_darwin();
  v662 = v598 - v51;
  __chkstk_darwin();
  v661 = v598 - v52;
  __chkstk_darwin();
  v691 = v598 - v53;
  __chkstk_darwin();
  v646 = v598 - v54;
  __chkstk_darwin();
  v692 = v598 - v55;
  __chkstk_darwin();
  v675 = v598 - v56;
  __chkstk_darwin();
  v636 = v598 - v57;
  __chkstk_darwin();
  v674 = v598 - v58;
  __chkstk_darwin();
  v677 = v598 - v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  __chkstk_darwin();
  v61 = v598 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin();
  v64 = v598 - v63;
  v659 = v33;
  v65 = *(v33 + 56);
  v627 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  v65(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, 1, 1, v32, v62);
  v660 = v27;
  v66 = *(v27 + 56);
  countAndFlagsBits = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, 1, 1, v26);
  v652 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
  v67 = v32;
  v68 = v698;
  v657 = v67;
  v612 = v65;
  v613 = v33 + 56;
  (v65)(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, 1, 1);
  v603 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, 1, 1, v26);
  v617 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, 1, 1, v26);
  v640 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
  v688 = v26;
  v664 = v27 + 56;
  v658 = v66;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, 1, 1, v26);
  v69 = (v4 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v69 = 0;
  v69[1] = 0;
  v622 = v69;
  v70 = v629;
  *(v4 + 16) = v626;
  *(v4 + 24) = v70;
  v71 = *(v633 + 7);
  v71(v64, 1, 1, v68);

  v72 = [v679 language];
  if (v72)
  {
    v73 = v72;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.Language.init(identifier:)();
    v71(v61, 0, 1, v68);
    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v61, v64, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  }

  else
  {
    outlined destroy of TaskPriority?(v64, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
    v71(v64, 1, 1, v68);
  }

  v74 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage;
  v639 = v64;
  outlined init with copy of TaskPriority?(v64, v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  v75 = v679;
  [v679 leadingSilence];
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence) = v76;
  v77 = [v75 songwriters];
  v78 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsSongWriter, MSVLyricsSongWriter_ptr);
  v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v79 >> 62)
  {
    v80 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = _swiftEmptyArrayStorage;
  v695 = v4;
  v609 = v78;
  object = v74;
  if (v80)
  {
    v82 = v79;
    *&v699 = _swiftEmptyArrayStorage;
    _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1(0, v80 & ~(v80 >> 63), 0);
    if (v80 < 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v83 = 0;
    v84 = v699;
    v85 = v82;
    v689 = (v82 & 0xC000000000000001);
    v86 = v80;
    do
    {
      if (v689)
      {
        v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v87 = *(v85 + 8 * v83 + 32);
      }

      v88 = v87;
      v89 = [v87 name];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      *&v699 = v84;
      v94 = v84[2];
      v93 = v84[3];
      if (v94 >= v93 >> 1)
      {
        _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1((v93 > 1), v94 + 1, 1);
        v84 = v699;
      }

      ++v83;
      v84[2] = v94 + 1;
      v95 = &v84[2 * v94];
      v95[4] = v90;
      v95[5] = v92;
      v4 = v695;
      v85 = v82;
    }

    while (v86 != v83);

    v81 = _swiftEmptyArrayStorage;
  }

  else
  {

    v84 = _swiftEmptyArrayStorage;
  }

  v96 = OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters) = v84;
  v80 = v679;
  v97 = [v679 audioAttributes];
  v82 = v686;
  v598[2] = v96;
  if (v97)
  {
    v98 = v97;
    if ([v97 isSpatialRole])
    {
      [v98 lyricsOffset];
      v100 = v99;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX0D0C14AudioAttributeOGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C14AudioAttributeOGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004F2400;
      *(inited + 32) = v100;
      v102 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX0E0C14AudioAttributeO_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      goto LABEL_22;
    }
  }

  v102 = &_swiftEmptySetSingleton;
LABEL_22:
  v103 = OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes) = v102;
  v104 = [v80 type];
  v105 = v104 == 1;
  if (v104 == 2)
  {
    v105 = 2;
  }

  *(v4 + 56) = v105;
  v722 = _swiftEmptyArrayStorage;
  v653 = swift_allocObject();
  swift_weakInit();
  v649 = swift_allocObject();
  *(v649 + 16) = 0;
  v648 = swift_allocObject();
  *(v648 + 16) = 0;
  v106 = [v80 language];
  if (v106)
  {
    v107 = v106;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v108 = v677;
    Locale.Language.init(identifier:)();
    v109 = Locale.Language.characterDirection.getter();
    (*(v633 + 1))(v108, v698);
    v676 = v109 == 2;
  }

  else
  {
    v676 = 0;
  }

  v110 = [v80 language];
  if (v110)
  {
    v111 = v110;
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;
  }

  else
  {
    v112 = 0;
    v114 = 0;
  }

  v651 = specialized static Lyrics.capabilities(for:)(v112, v114);

  v598[3] = v103;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo14MSVLyricsAgentC_Tt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v115 = v134;
  }

  else
  {
    v115 = &_swiftEmptySetSingleton;
  }

  v116 = swift_allocObject();
  v650 = v116;
  *(v116 + 16) = v115;
  v610 = v116 + 16;
  v117 = [v80 lyricsSections];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsSection, MSVLyricsSection_ptr);
  v118 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v118 >> 62)
  {
    v119 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v120 = v678;
  if (v119 >= 1)
  {
    v78 = [v80 lyricsSections];
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v4 >> 62))
    {
      v121 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v121)
      {
LABEL_37:
        if (v121 < 1)
        {
          __break(1u);
          goto LABEL_429;
        }

        v122 = 0;
        v689 = _swiftEmptyArrayStorage;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v123 = *(v4 + 8 * v122 + 32);
          }

          v124 = v123;
          v125 = [v123 lines];
          type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsLine, MSVLyricsLine_ptr);
          v126 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v78 = specialized processLines #1 (_:) in Lyrics.init(identifier:songInfo:)(v126, v650, v648, v649, v679, v676, v651, v653);

          specialized Array.append<A>(contentsOf:)(v127);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v689 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v689[2] + 1, 1, v689);
          }

          v129 = v689[2];
          v128 = v689[3];
          if (v129 >= v128 >> 1)
          {
            v689 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v689);
          }

          ++v122;

          v130 = v689;
          v689[2] = v129 + 1;
          v130[v129 + 4] = v78;
        }

        while (v121 != v122);

        v120 = v678;
        v82 = v686;
        v80 = v679;
        v81 = _swiftEmptyArrayStorage;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_54:
    v121 = _CocoaArrayWrapper.endIndex.getter();
    if (v121)
    {
      goto LABEL_37;
    }

LABEL_55:

    v689 = _swiftEmptyArrayStorage;
    v120 = v678;
    goto LABEL_56;
  }

  v131 = [v80 lyricsLines];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsLine, MSVLyricsLine_ptr);
  v78 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v132 = specialized processLines #1 (_:) in Lyrics.init(identifier:songInfo:)(v78, v650, v648, v649, v80, v676, v651, v653);

  v722 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay7LyricsX0D0C8TextLineVGGMd, &_ss23_ContiguousArrayStorageCySay7LyricsX0D0C8TextLineVGGMR);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1004F2400;
  v689 = v133;
  *(v133 + 32) = v132;

LABEL_56:
  v135 = swift_allocObject();
  v677 = v135;
  v136 = v673;
  *(v135 + 16) = v80;
  *(v135 + 24) = v136;
  v137 = swift_allocObject();
  v137[2] = 0;
  v643 = v137 + 2;
  v679 = v137;
  v137[3] = _swiftEmptyArrayStorage;
  v138 = swift_allocObject();
  *(v138 + 16) = 0;
  v638 = v138 + 16;
  v673 = v138;
  *(v138 + 24) = _swiftEmptyArrayStorage;
  v634 = v80;
  v139 = static Locale.preferredLanguages.getter();
  v140 = v139;
  v671 = *(v139 + 16);
  if (!v671)
  {

    v142 = _swiftEmptyArrayStorage;
    goto LABEL_118;
  }

  v141 = 0;
  v669 = v139 + 32;
  v81 = (v633 + 8);
  v668 = (v690 + 16);
  v667 = (v690 + 8);
  v666 = (v690 + 32);
  v142 = _swiftEmptyArrayStorage;
  v670 = v139;
  do
  {
    if (v141 >= v140[2])
    {
      goto LABEL_395;
    }

    v143 = v142;

    Locale.init(identifier:)();
    v144 = v674;
    Locale.language.getter();
    Locale.Language.script.getter();
    v145 = *v81;
    (*v81)(v144, v698);
    v146 = type metadata accessor for Locale.Script();
    v147 = *(v146 - 8);
    if ((*(v147 + 48))(v120, 1, v146) == 1)
    {
      outlined destroy of TaskPriority?(v120, &_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
      v142 = v143;
      goto LABEL_97;
    }

    v148 = Locale.Script.identifier.getter();
    v149 = v120;
    v151 = v150;
    (*(v147 + 8))(v149, v146);
    if (one-time initialization token for scriptMap != -1)
    {
      swift_once();
    }

    v152 = static Lyrics.scriptMap;
    if (*(static Lyrics.scriptMap + 16))
    {
      v153 = specialized __RawDictionaryStorage.find<A>(_:)(v148, v151);
      if (v154)
      {
        v155 = (*(v152 + 56) + 16 * v153);
        v148 = *v155;
        v156 = v155[1];

        v151 = v156;
      }
    }

    v157 = *(v673 + 16);
    v158 = *(v673 + 24);
    v159 = *(v158 + 16);
    if (v157)
    {

      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v148, v151, v158 + 32, v159, (v157 + 16), v157 + 32);
      v161 = v160;
      v159 = v162;

      if ((v161 & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_77:
      specialized OrderedSet._appendNew(_:in:)(v148, v151, v159);
      goto LABEL_78;
    }

    if (!v159)
    {
      goto LABEL_77;
    }

    v163 = (v158 + 40);
    while (1)
    {
      v164 = *(v163 - 1) == v148 && *v163 == v151;
      if (v164 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v163 += 2;
      if (!--v159)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    if (v148 == 1853120844 && v151 == 0xE400000000000000)
    {

      v142 = v143;
      v82 = v686;
      goto LABEL_97;
    }

    v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v142 = v143;
    v82 = v686;
    if ((v165 & 1) == 0)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v166 = v636;
      Locale.language.getter();
      v167 = LyricsOptionsManager.isDefaultScriptSupported(for:)(v166);
      v145(v166, v698);
      if (v167)
      {
        v168 = *(v673 + 16);
        v169 = *(v673 + 24);
        v170 = *(v169 + 16);
        if (v168)
        {

          specialized _HashTable.UnsafeHandle._find<A>(_:in:)(1853120844, 0xE400000000000000, v169 + 32, v170, (v168 + 16), v168 + 32);
          v172 = v171;
          v170 = v173;

          if (v172)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (!v170)
          {
LABEL_96:
            specialized OrderedSet._appendNew(_:in:)(1853120844, 0xE400000000000000, v170);
            goto LABEL_97;
          }

          v174 = (v169 + 40);
          while (1)
          {
            v175 = *(v174 - 1) == 1853120844 && *v174 == 0xE400000000000000;
            if (v175 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v174 += 2;
            if (!--v170)
            {
              goto LABEL_96;
            }
          }
        }
      }
    }

LABEL_97:
    v176 = v675;
    Locale.language.getter();
    v177 = Locale.Language.lyricsLanguageCode.getter();
    v179 = v178;
    v145(v176, v698);
    v180 = v694;
    if (!v179)
    {
      goto LABEL_111;
    }

    v181 = *(v679 + 2);
    v182 = *(v679 + 3);
    v183 = *(v182 + 16);
    if (v181)
    {

      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v177, v179, v182 + 32, v183, (v181 + 16), v181 + 32);
      v185 = v184;
      v183 = v186;

      if ((v185 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v183)
    {
      v187 = (v182 + 40);
      do
      {
        v188 = *(v187 - 1) == v177 && v179 == *v187;
        if (v188 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_110;
        }

        v187 += 2;
      }

      while (--v183);
    }

    specialized OrderedSet._appendNew(_:in:)(v177, v179, v183);
LABEL_110:

    v142 = v143;
    v82 = v686;
LABEL_111:
    (*v668)(v696, v82, v180);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v142 + 16) + 1, 1, v142, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR, &type metadata accessor for Locale);
    }

    v140 = v670;
    v78 = *(v142 + 16);
    v189 = *(v142 + 24);
    if (v78 >= v189 >> 1)
    {
      v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v189 > 1), v78 + 1, 1, v142, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR, &type metadata accessor for Locale);
    }

    ++v141;
    v190 = v690;
    (*(v690 + 8))(v82, v180);
    *(v142 + 16) = v78 + 1;
    (*(v190 + 32))(v142 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v78, v696, v180);
    v120 = v678;
  }

  while (v141 != v671);

LABEL_118:
  v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7LyricsX0C0C11TranslationVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v191 = [v634 translations];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsTranslation, MSVLyricsTranslation_ptr);
  v141 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v141 >> 62)
  {
    goto LABEL_404;
  }

  v192 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v675 = v78;
    v598[1] = type metadata accessor for Lyrics(0);
    v674 = v142;
    if (v192)
    {
      v193 = 0;
      v78 = 0;
      v671 = (v141 & 0xC000000000000001);
      v641 = v141 + 32;
      v642 = v141 & 0xFFFFFFFFFFFFFF8;
      v668 = (v633 + 16);
      v667 = (v633 + 32);
      v666 = (v633 + 8);
      v686 = _swiftEmptyArrayStorage;
      v142 = v656;
      v670 = v141;
      v669 = v192;
      while (1)
      {
        while (1)
        {
          if (v671)
          {
            v194 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v193 >= *(v642 + 16))
            {
              goto LABEL_402;
            }

            v194 = *(v641 + 8 * v193);
          }

          v195 = v194;
          v196 = __OFADD__(v193++, 1);
          if (v196)
          {
            goto LABEL_396;
          }

          v197 = [v194 linesMap];
          *&v699 = 0;
          type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsLine, MSVLyricsLine_ptr);
          static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

          v198 = v699;
          if (v699)
          {
            break;
          }

          if (v193 == v192)
          {
            goto LABEL_151;
          }
        }

        v678 = v193;
        v199 = v677;

        v81 = v195;
        v200 = specialized _NativeDictionary.mapValues<A>(_:)(v198, partial apply for closure #3 in Lyrics.init(identifier:songInfo:), v199, v81);
        v696 = v78;
        if (v78)
        {
          goto LABEL_430;
        }

        v201 = v200;

        v202 = [v81 language];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v203 = v692;
        Locale.Language.init(identifier:)();
        v204 = v646;
        v205 = v698;
        (*v668)(v646, v203, v698);
        v206 = [v81 language];
        v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v209 = v208;

        v210 = [v81 type] == 1;
        LOBYTE(v206) = [v81 isAutomaticallyCreated];
        v211 = v687;
        (*v667)(v687, v204, v205);
        v212 = v657;
        v213 = (v211 + v657[5]);
        *v213 = v207;
        v213[1] = v209;
        *(v211 + v212[6]) = v210;
        *(v211 + v212[7]) = v206;
        *(v211 + v212[8]) = v201;
        outlined init with copy of Lyrics.Translation(v211, v683, type metadata accessor for Lyrics.Translation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v686 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v686[2] + 1, 1, v686, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C11TranslationVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C11TranslationVGMR, type metadata accessor for Lyrics.Translation);
        }

        v215 = v686[2];
        v214 = v686[3];
        v78 = v696;
        v216 = v692;
        v141 = v670;
        if (v215 >= v214 >> 1)
        {
          v686 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v214 > 1), v215 + 1, 1, v686, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C11TranslationVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C11TranslationVGMR, type metadata accessor for Lyrics.Translation);
        }

        v217 = v686;
        v686[2] = v215 + 1;
        outlined init with take of Lyrics.TextLine(v683, v217 + ((*(v659 + 80) + 32) & ~*(v659 + 80)) + *(v659 + 72) * v215, type metadata accessor for Lyrics.Translation);
        v218 = Locale.Language.lyricsLanguageCode.getter();
        if (v219)
        {
          v220 = v218;
          v221 = v219;
          v223 = *(v679 + 2);
          v222 = *(v679 + 3);
          v224 = *(v222 + 16);
          if (v223)
          {

            specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v220, v221, v222 + 32, v224, (v223 + 16), v223 + 32);
            v226 = v225;

            if (v226)
            {
              goto LABEL_147;
            }
          }

          else
          {
            if (!v224)
            {
LABEL_147:

              outlined destroy of Lyrics.Translation(v687, type metadata accessor for Lyrics.Translation);
              (*v666)(v692, v698);
              goto LABEL_148;
            }

            v231 = (v222 + 40);
            while (1)
            {
              v232 = *(v231 - 1) == v220 && v221 == *v231;
              if (v232 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v231 += 2;
              if (!--v224)
              {
                goto LABEL_147;
              }
            }
          }

          v227 = v687;
          v228 = v632;
          outlined init with copy of Lyrics.Translation(v687, v632, type metadata accessor for Lyrics.Translation);
          v229 = v675;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v699 = v229;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v228, v220, v221, isUniquelyReferenced_nonNull_native);

          outlined destroy of Lyrics.Translation(v227, type metadata accessor for Lyrics.Translation);
          (*v666)(v692, v698);
          v675 = v699;
        }

        else
        {

          outlined destroy of Lyrics.Translation(v687, type metadata accessor for Lyrics.Translation);
          (*v666)(v216, v698);
        }

LABEL_148:
        v142 = v656;
        v192 = v669;
        v193 = v678;
        if (v678 == v669)
        {
          goto LABEL_151;
        }
      }
    }

    v78 = 0;
    v686 = _swiftEmptyArrayStorage;
    v142 = v656;
LABEL_151:

    v233 = OBJC_IVAR____TtC7LyricsX6Lyrics_translations;
    *(v695 + OBJC_IVAR____TtC7LyricsX6Lyrics_translations) = v686;

    v666 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7LyricsX0C0C15TransliterationVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v234 = [v634 transliterations];
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsTransliteration, MSVLyricsTransliteration_ptr);
    v235 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v235 >> 62)
    {
      v236 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v236 = *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v141 = v652;
    v696 = v78;
    if (v236)
    {
      v667 = v233;
      v237 = 0;
      v692 = v235 & 0xC000000000000001;
      v669 = v235 & 0xFFFFFFFFFFFFFF8;
      v668 = (v235 + 32);
      v671 = (v633 + 16);
      v670 = (v633 + 8);
      v678 = _swiftEmptyArrayStorage;
      v687 = v235;
      v683 = v236;
      while (1)
      {
        while (1)
        {
          if (v692)
          {
            v238 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v237 >= *(v669 + 16))
            {
              goto LABEL_403;
            }

            v238 = v668[v237];
          }

          v239 = v238;
          v196 = __OFADD__(v237++, 1);
          if (v196)
          {
            goto LABEL_397;
          }

          v78 = [v238 linesMap];
          *&v699 = 0;
          type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsLine, MSVLyricsLine_ptr);
          static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

          v240 = v699;
          if (v699)
          {
            break;
          }

          if (v237 == v236)
          {
            goto LABEL_184;
          }
        }

        v241 = v677;

        v81 = v239;
        v242 = v696;
        v243 = specialized _NativeDictionary.mapValues<A>(_:)(v240, partial apply for closure #3 in Lyrics.init(identifier:songInfo:), v241, v81);
        v696 = v242;
        if (v242)
        {

          v597 = v695;

          outlined destroy of TaskPriority?(object + v597, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);

          outlined destroy of TaskPriority?(v597 + v627, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
          outlined destroy of TaskPriority?(v597 + countAndFlagsBits, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
          outlined destroy of TaskPriority?(v597 + v141, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
          outlined destroy of TaskPriority?(v603 + v597, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
          outlined destroy of TaskPriority?(v597 + v617, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
          outlined destroy of TaskPriority?(v597 + v640, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);

          goto LABEL_432;
        }

        v244 = v243;

        v245 = [v81 language];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v246 = v691;
        Locale.Language.init(identifier:)();
        v247 = v680;
        (*v671)(v680, v246, v698);
        v248 = [v81 language];
        v249 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v251 = v250;

        v252 = [v81 isAutomaticallyCreated];
        v253 = v688;
        v254 = &v247[v688[5]];
        *v254 = v249;
        v254[1] = v251;
        v247[v253[6]] = v252;
        *&v247[v253[7]] = v244;
        outlined init with copy of Lyrics.Translation(v247, v681, type metadata accessor for Lyrics.Transliteration);
        v255 = v678;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v255 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v255 + 2) + 1, 1, v255, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C15TransliterationVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C15TransliterationVGMR, type metadata accessor for Lyrics.Transliteration);
        }

        v257 = *(v255 + 2);
        v256 = *(v255 + 3);
        v258 = v691;
        if (v257 >= v256 >> 1)
        {
          v255 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v256 > 1), v257 + 1, 1, v255, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C15TransliterationVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C15TransliterationVGMR, type metadata accessor for Lyrics.Transliteration);
        }

        *(v255 + 2) = v257 + 1;
        v259 = (*(v660 + 80) + 32) & ~*(v660 + 80);
        v678 = v255;
        outlined init with take of Lyrics.TextLine(v681, &v255[v259 + *(v660 + 72) * v257], type metadata accessor for Lyrics.Transliteration);
        Locale.Language.script.getter();
        v78 = type metadata accessor for Locale.Script();
        v260 = *(v78 - 8);
        if ((*(v260 + 48))(v142, 1, v78) == 1)
        {

          outlined destroy of Lyrics.Translation(v680, type metadata accessor for Lyrics.Transliteration);
          (*v670)(v258, v698);
          outlined destroy of TaskPriority?(v142, &_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
        }

        else
        {
          v261 = Locale.Script.identifier.getter();
          v263 = v262;
          (*(v260 + 8))(v142, v78);
          v78 = *(v673 + 16);
          v264 = *(v673 + 24);
          v265 = *(v264 + 16);
          if (v78)
          {

            specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v261, v263, v264 + 32, v265, (v78 + 16), v78 + 32);
            v267 = v266;

            if (v267)
            {
              goto LABEL_180;
            }
          }

          else
          {
            if (!v265)
            {
LABEL_180:

              outlined destroy of Lyrics.Translation(v680, type metadata accessor for Lyrics.Transliteration);
              (*v670)(v691, v698);
              goto LABEL_181;
            }

            v78 = v264 + 40;
            while (1)
            {
              v273 = *(v78 - 8) == v261 && *v78 == v263;
              if (v273 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v78 += 16;
              if (!--v265)
              {
                goto LABEL_180;
              }
            }
          }

          v78 = type metadata accessor for Lyrics.Transliteration;
          v268 = v680;
          v269 = v628;
          outlined init with copy of Lyrics.Translation(v680, v628, type metadata accessor for Lyrics.Transliteration);
          v270 = v666;
          v271 = swift_isUniquelyReferenced_nonNull_native();
          *&v699 = v270;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v269, v261, v263, v271);

          v272 = v268;
          v142 = v656;
          outlined destroy of Lyrics.Translation(v272, type metadata accessor for Lyrics.Transliteration);
          (*v670)(v691, v698);
          v666 = v699;
        }

LABEL_181:
        v141 = v652;
        v236 = v683;
        if (v237 == v683)
        {
          goto LABEL_184;
        }
      }
    }

    v678 = _swiftEmptyArrayStorage;
LABEL_184:

    v274 = v695;
    *(v695 + OBJC_IVAR____TtC7LyricsX6Lyrics_transliterations) = v678;
    v667 = *(v674 + 2);
    if (v667)
    {
      v275 = v690;
      v669 = &v674[(*(v690 + 80) + 32) & ~*(v690 + 80)];

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v276 = 0;
      v670 = (v275 + 16);
      v687 = v633 + 8;
      v646 = v633 + 48;
      v622 = (v633 + 16);
      v656 = (v660 + 48);
      v668 = (v275 + 8);
      v642 = v275 + 56;
      v628 = (v275 + 48);
      v603 = (v275 + 32);
      v632 = (v659 + 48);
      v633 = (v633 + 32);
      v141 = v644;
      v78 = v694;
      v277 = v647;
      v278 = v698;
LABEL_189:
      if (v276 >= *(v674 + 2))
      {
        goto LABEL_399;
      }

      v279 = *(v690 + 72);
      v683 = v276;
      v692 = *(v690 + 16);
      (v692)(v277, v669 + v279 * v276, v78);
      v280 = v661;
      Locale.language.getter();
      v281 = Locale.Language.lyricsLanguageCode.getter();
      v283 = v282;
      v142 = *v687;
      (*v687)(v280, v278);
      if (!v283)
      {
        goto LABEL_228;
      }

      if (!*(v675 + 2))
      {

        goto LABEL_228;
      }

      v284 = specialized __RawDictionaryStorage.find<A>(_:)(v281, v283);
      v286 = v285;

      if ((v286 & 1) == 0)
      {
        goto LABEL_228;
      }

      v287 = *(v675 + 7) + *(v659 + 72) * v284;
      v288 = v631;
      outlined init with copy of Lyrics.Translation(v287, v631, type metadata accessor for Lyrics.Translation);
      outlined init with take of Lyrics.TextLine(v288, v645, type metadata accessor for Lyrics.Translation);
      v289 = *v646;
      v290 = v639;
      if ((*v646)(v639, 1, v278))
      {
        v291 = *(v679 + 3);
        if (v291[2])
        {
          v292 = v142;
          v293 = 0;
          v294 = 0;
LABEL_199:
          v298 = v291[4];
          v297 = v291[5];

          if (v293)
          {
            if (!v297)
            {
              v142 = v292;
LABEL_208:

LABEL_215:
              v671 = v142;
              v304 = v657;
              if (*(v645 + v657[6]))
              {
                v305 = v652;
                v306 = v695;
                v307 = v616;
                outlined init with copy of TaskPriority?(v695 + v652, v616, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
                if ((*v632)(v307, 1, v304) == 1)
                {
                  outlined destroy of TaskPriority?(v307, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
                  v308 = v615;
                  outlined init with take of Lyrics.TextLine(v645, v615, type metadata accessor for Lyrics.Translation);
                  v612(v308, 0, 1, v304);
                  swift_beginAccess();
                  v309 = v306 + v305;
                  v310 = v308;
                  goto LABEL_220;
                }

LABEL_226:
                outlined destroy of Lyrics.Translation(v645, type metadata accessor for Lyrics.Translation);
                outlined destroy of TaskPriority?(v307, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
              }

              else
              {
                v311 = v695;
                v307 = v614;
                outlined init with copy of TaskPriority?(v695 + v627, v614, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
                if ((*v632)(v307, 1, v304) != 1)
                {
                  goto LABEL_226;
                }

                outlined destroy of TaskPriority?(v307, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
                v312 = v615;
                outlined init with take of Lyrics.TextLine(v645, v615, type metadata accessor for Lyrics.Translation);
                v612(v312, 0, 1, v304);
                v313 = v627;
                swift_beginAccess();
                v309 = v311 + v313;
                v310 = v312;
LABEL_220:
                outlined assign with take of PlaybackIntentDescriptor.IntentType?(v310, v309, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
                swift_endAccess();
              }

              v142 = v671;
              goto LABEL_228;
            }

            if (v294 == v298 && v293 == v297)
            {

              v142 = v292;
            }

            else
            {
              v299 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v142 = v292;
              if ((v299 & 1) == 0)
              {
                goto LABEL_215;
              }
            }
          }

          else
          {
            v142 = v292;
            if (v297)
            {
              goto LABEL_208;
            }
          }
        }
      }

      else
      {
        v295 = v636;
        (*v622)(v636, v290, v278);
        v294 = Locale.Language.lyricsLanguageCode.getter();
        v293 = v296;
        (v142)(v295, v278);
        v291 = *(v679 + 3);
        if (v291[2])
        {
          v292 = v142;
          goto LABEL_199;
        }

        if (v293)
        {
          goto LABEL_208;
        }
      }

      v300 = v639;
      if (v289(v639, 1, v278))
      {
        Locale.Language.lyricsLanguageCode.getter();
        v302 = v301;
LABEL_212:
        if (!v302)
        {
          goto LABEL_215;
        }

        goto LABEL_213;
      }

      v314 = v636;
      (*v622)(v636, v300, v278);
      v315 = Locale.Language.lyricsLanguageCode.getter();
      v317 = v316;
      (v142)(v314, v278);
      v318 = Locale.Language.lyricsLanguageCode.getter();
      v302 = v319;
      if (!v317)
      {
        goto LABEL_212;
      }

      if (v319)
      {
        if (v315 == v318 && v317 == v319)
        {

          goto LABEL_208;
        }

        v444 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v444)
        {
          goto LABEL_215;
        }
      }

      else
      {
LABEL_213:
      }

      LOBYTE(v699) = 15;
      v303 = _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWl_1();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v303))
      {
        goto LABEL_215;
      }

      outlined destroy of Lyrics.Translation(v645, type metadata accessor for Lyrics.Translation);
LABEL_228:
      v320 = v662;
      Locale.language.getter();
      Locale.Language.script.getter();
      (v142)(v320, v278);
      v321 = v277;
      v322 = type metadata accessor for Locale.Script();
      v323 = *(v322 - 8);
      v81 = (v323 + 48);
      v324 = *(v323 + 48);
      if (v324(v141, 1, v322) == 1)
      {
        v78 = v694;
        (*v668)(v321, v694);
        outlined destroy of TaskPriority?(v141, &_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
        v277 = v321;
        goto LABEL_187;
      }

      v691 = v324;
      v325 = Locale.Script.identifier.getter();
      v327 = v326;
      v329 = *(v323 + 8);
      v328 = v323 + 8;
      v680 = v329;
      (v329)(v141, v322);
      if (one-time initialization token for scriptMap != -1)
      {
        swift_once();
      }

      v330 = static Lyrics.scriptMap;
      v331 = v666;
      if (*(static Lyrics.scriptMap + 16))
      {
        v332 = specialized __RawDictionaryStorage.find<A>(_:)(v325, v327);
        if (v333)
        {
          v334 = (*(v330 + 56) + 16 * v332);
          v325 = *v334;
          v335 = v334[1];

          v327 = v335;
        }
      }

      v681 = v328;
      if (!v331[2])
      {

LABEL_238:
        v346 = 1;
        v658(v654, 1, 1, v688);
        if (v331[2])
        {
          v347 = specialized __RawDictionaryStorage.find<A>(_:)(1853120844, 0xE400000000000000);
          if (v348)
          {
            v349 = v663;
            outlined init with copy of Lyrics.Translation(v331[7] + *(v660 + 72) * v347, v663, type metadata accessor for Lyrics.Transliteration);
            v350 = v349;
            v346 = 0;
            goto LABEL_243;
          }

          v346 = 1;
        }

        v350 = v663;
LABEL_243:
        v351 = v688;
        v658(v350, v346, 1, v688);
        v345 = *v656;
        v352 = v654;
        if ((*v656)(v654, 1, v351) != 1)
        {
          outlined destroy of TaskPriority?(v352, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
        }

        goto LABEL_245;
      }

      v336 = specialized __RawDictionaryStorage.find<A>(_:)(v325, v327);
      v338 = v337;

      if ((v338 & 1) == 0)
      {
        goto LABEL_238;
      }

      v339 = v660;
      v340 = v654;
      outlined init with copy of Lyrics.Translation(v331[7] + *(v660 + 72) * v336, v654, type metadata accessor for Lyrics.Transliteration);
      v341 = v688;
      v342 = v658;
      v658(v340, 0, 1, v688);
      v343 = v340;
      v344 = v663;
      outlined init with take of Lyrics.TextLine(v343, v663, type metadata accessor for Lyrics.Transliteration);
      v342(v344, 0, 1, v341);
      v345 = *(v339 + 48);
LABEL_245:
      v353 = v663;
      v354 = v688;
      if (v345(v663, 1, v688) == 1)
      {
        v277 = v647;
        v78 = v694;
        (*v668)(v647, v694);
        v355 = v353;
      }

      else
      {
        v356 = v655;
        outlined init with take of Lyrics.TextLine(v353, v655, type metadata accessor for Lyrics.Transliteration);
        v357 = v635;
        outlined init with copy of TaskPriority?(v695 + v640, v635, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
        if (v345(v357, 1, v354) == 1)
        {
          v641 = v322;
          v671 = v142;
          outlined destroy of TaskPriority?(v357, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
          v358 = v637;
          v141 = v694;
          v359 = v692;
          (v692)(v637, v647, v694);
          v360 = *v642;
          v361 = 1;
          (*v642)(v358, 0, 1, v141);
          v362 = v624;
          if (*(v674 + 2))
          {
            v363 = v630;
            v359(v630, v669, v141);
            v364 = v363;
            v361 = 0;
          }

          else
          {
            v364 = v630;
          }

          v360(v364, v361, 1, v141);
          v365 = *(v625 + 48);
          v366 = v637;
          outlined init with copy of TaskPriority?(v637, v362, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
          outlined init with copy of TaskPriority?(v364, v362 + v365, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
          v367 = *v628;
          if ((*v628)(v362, 1, v141) == 1)
          {
            outlined destroy of TaskPriority?(v364, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
            outlined destroy of TaskPriority?(v366, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
            v368 = v367(v362 + v365, 1, v141);
            v369 = v691;
            if (v368 == 1)
            {
              outlined destroy of TaskPriority?(v362, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
              v370 = v641;
              goto LABEL_261;
            }

LABEL_258:
            outlined destroy of TaskPriority?(v362, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
            v370 = v641;
            goto LABEL_269;
          }

          v371 = v611;
          outlined init with copy of TaskPriority?(v362, v611, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
          if (v367(v362 + v365, 1, v141) == 1)
          {
            outlined destroy of TaskPriority?(v630, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
            outlined destroy of TaskPriority?(v637, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
            (*v668)(v371, v141);
            v369 = v691;
            goto LABEL_258;
          }

          v372 = v371;
          v373 = v607;
          (*v603)(v607, v362 + v365, v141);
          lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
          LODWORD(v692) = dispatch thunk of static Equatable.== infix(_:_:)();
          v374 = *v668;
          (*v668)(v373, v141);
          outlined destroy of TaskPriority?(v630, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
          outlined destroy of TaskPriority?(v637, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
          (v374)(v372, v141);
          outlined destroy of TaskPriority?(v362, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
          v370 = v641;
          v369 = v691;
          if (v692)
          {
LABEL_261:
            v375 = v608;
            Locale.Language.languageCode.getter();
            v376 = type metadata accessor for Locale.LanguageCode();
            v377 = *(v376 - 8);
            v378 = *(v377 + 48);
            if (v378(v375, 1, v376) == 1)
            {
              v379 = v375;
              v380 = &_s10Foundation6LocaleV12LanguageCodeVSgMd_0;
              v381 = &_s10Foundation6LocaleV12LanguageCodeVSgMR_0;
LABEL_263:
              outlined destroy of TaskPriority?(v379, v380, v381);
              goto LABEL_269;
            }

            Locale.LanguageCode.identifier.getter();
            v692 = *(v377 + 8);
            (v692)(v375, v376);
            v382 = String.lowercased()();
            countAndFlagsBits = v382._countAndFlagsBits;

            v141 = v605;
            Locale.language.getter();
            v383 = v606;
            Locale.Language.languageCode.getter();
            v671(v141, v698);
            if (v378(v383, 1, v376) == 1)
            {

              outlined destroy of TaskPriority?(v383, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
              v369 = v691;
              v370 = v641;
              goto LABEL_269;
            }

            object = v382._object;
            Locale.LanguageCode.identifier.getter();
            (v692)(v383, v376);
            v384 = String.lowercased()();
            v141 = v384._object;

            v385 = v604;
            Locale.region.getter();
            v386 = type metadata accessor for Locale.Region();
            v387 = *(v386 - 8);
            v388 = (*(v387 + 48))(v385, 1, v386);
            v370 = v641;
            if (v388 == 1)
            {

              outlined destroy of TaskPriority?(v385, &_s10Foundation6LocaleV6RegionVSgMd_0, &_s10Foundation6LocaleV6RegionVSgMR_0);
LABEL_268:
              v369 = v691;
              goto LABEL_269;
            }

            v692 = v384._countAndFlagsBits;
            Locale.Region.identifier.getter();
            (*(v387 + 8))(v385, v386);
            v445 = String.lowercased()();

            v446 = v601;
            Locale.language.getter();
            v447 = v602;
            Locale.Language.script.getter();
            v671(v446, v698);
            v369 = v691;
            if ((v691)(v447, 1, v370) == 1)
            {

              v379 = v447;
              v380 = &_s10Foundation6LocaleV6ScriptVSgMd_0;
              v381 = &_s10Foundation6LocaleV6ScriptVSgMR_0;
              goto LABEL_263;
            }

            v671 = v445._countAndFlagsBits;
            Locale.Script.identifier.getter();
            (v680)(v447, v370);
            v448 = String.lowercased()();

            if (one-time initialization token for chineseLanguages != -1)
            {
              swift_once();
            }

            v449 = static Lyrics.chineseLanguages;
            v141 = specialized Set.contains(_:)(countAndFlagsBits, object, static Lyrics.chineseLanguages);

            if ((v141 & 1) == 0)
            {

              goto LABEL_268;
            }

            v450 = specialized Set.contains(_:)(v692, v384._object, v449);
            v369 = v691;
            if ((v450 & 1) == 0)
            {

              goto LABEL_269;
            }

            if (v448._countAndFlagsBits == 1953390952 && v448._object == 0xE400000000000000)
            {

              v278 = v698;
              v142 = v692;
LABEL_337:
              v452 = v655;
              if (v671 == 27496 && v445._object == 0xE200000000000000)
              {

                goto LABEL_345;
              }

              v453 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v453)
              {
LABEL_345:

                goto LABEL_346;
              }
            }

            else
            {
              v451 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v278 = v698;
              v142 = v692;
              if (v451)
              {
                goto LABEL_337;
              }

              v452 = v655;
            }

            if (v142 == 6649209 && v384._object == 0xE300000000000000)
            {
              goto LABEL_345;
            }

            v458 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v458)
            {
LABEL_346:
              v454 = (v452 + v688[5]);
              v456 = *v454;
              v455 = v454[1];
              *&v699 = v456;
              *(&v699 + 1) = v455;
              *&v705 = 0x6E69796E6970;
              v457 = 0xE600000000000000;
            }

            else
            {
              v459 = (v452 + v688[5]);
              v461 = *v459;
              v460 = v459[1];
              *&v699 = v461;
              *(&v699 + 1) = v460;
              *&v705 = 0x676E69707475796ALL;
              v457 = 0xE800000000000000;
            }

            *(&v705 + 1) = v457;
            _sS2SSysWl_2();
            if (StringProtocol.contains<A>(_:)())
            {
              goto LABEL_297;
            }

LABEL_321:
            outlined destroy of Lyrics.Translation(v655, type metadata accessor for Lyrics.Transliteration);
            v277 = v647;
            v78 = v694;
            (*v668)(v647, v694);
            v141 = v644;
            goto LABEL_188;
          }

LABEL_269:
          v389 = Locale.Language.lyricsLanguageCode.getter();
          v391 = v390;
          v392 = *(v679 + 3);
          if (!v392[2])
          {
            if (!v390)
            {
              v396 = 1;
              v397 = v623;
              goto LABEL_283;
            }

            goto LABEL_276;
          }

          v393 = v389;
          v394 = v392[4];
          v395 = v392[5];

          if (v391)
          {
            if (v395)
            {
              if (v393 == v394 && v391 == v395)
              {

                v396 = 1;
              }

              else
              {
                v396 = _stringCompareWithSmolCheck(_:_:expecting:)();
              }

LABEL_281:
              v397 = v623;
LABEL_282:

              goto LABEL_283;
            }

LABEL_276:
            v396 = 0;
            goto LABEL_281;
          }

          v397 = v623;
          if (v395)
          {
            v396 = 0;
            goto LABEL_282;
          }

          v396 = 1;
LABEL_283:
          Locale.Language.script.getter();
          if (v369(v397, 1, v370) == 1)
          {
            outlined destroy of TaskPriority?(v397, &_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
            v398 = *(v673 + 24);
            v278 = v698;
            if (!v398[2])
            {
              goto LABEL_297;
            }

            v399 = 0;
            v142 = 0;
            goto LABEL_288;
          }

          v142 = Locale.Script.identifier.getter();
          v399 = v400;
          (v680)(v397, v370);
          v398 = *(v673 + 24);
          if (v398[2])
          {
            v278 = v698;
LABEL_288:
            v402 = v398[4];
            v401 = v398[5];

            if (v399)
            {
              if (v401)
              {
                if (v142 == v402 && v399 == v401)
                {

LABEL_297:
                  v403 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7LyricsX0C0C23LineTranslationMetadata023_023C7B06612B00822B4518G8EDD9DC67LLVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
                  v404 = v722;
                  v681 = v722[2];
                  if (!v681)
                  {
LABEL_315:
                    v428 = v621;
                    Locale.Language.languageCode.getter();
                    v429 = type metadata accessor for Locale.LanguageCode();
                    v430 = *(v429 - 8);
                    if ((*(v430 + 48))(v428, 1, v429) == 1)
                    {
                      outlined destroy of TaskPriority?(v428, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
                    }

                    else
                    {
                      Locale.LanguageCode.identifier.getter();
                      (*(v430 + 8))(v428, v429);
                    }

                    v142 = v695;
                    v431 = v618;
                    Locale.Language.init(identifier:)();
                    v432 = v647;
                    v433 = v694;
                    (*v668)(v647, v694);
                    v434 = v688;
                    v435 = (v655 + v688[5]);
                    v437 = *v435;
                    v436 = v435[1];
                    v438 = v619;
                    v439 = v431;
                    v278 = v698;
                    (*v633)(v619, v439, v698);
                    v440 = (v438 + v434[5]);
                    *v440 = v437;
                    v440[1] = v436;
                    *(v438 + v434[6]) = 0;
                    *(v438 + v434[7]) = v403;
                    v277 = v432;
                    v78 = v433;
                    v81 = v658;
                    v658(v438, 0, 1, v434);
                    v441 = v617;
                    swift_beginAccess();

                    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v438, v142 + v441, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
                    swift_endAccess();
                    v442 = v620;
                    outlined init with take of Lyrics.TextLine(v655, v620, type metadata accessor for Lyrics.Transliteration);
                    (v81)(v442, 0, 1, v434);
                    v443 = v640;
                    swift_beginAccess();
                    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v442, v142 + v443, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
                    swift_endAccess();
                    v141 = v644;
                    goto LABEL_188;
                  }

                  v405 = 0;
                  v680 = v722 + ((*(v682 + 80) + 32) & ~*(v682 + 80));
                  v78 = v693;
                  v142 = v672;
                  v671 = v722;
LABEL_302:
                  if (v405 >= v404[2])
                  {
                    __break(1u);
LABEL_394:
                    __break(1u);
LABEL_395:
                    __break(1u);
LABEL_396:
                    __break(1u);
LABEL_397:
                    __break(1u);
LABEL_398:
                    __break(1u);
LABEL_399:
                    __break(1u);
LABEL_400:
                    __break(1u);
LABEL_401:
                    __break(1u);
LABEL_402:
                    __break(1u);
LABEL_403:
                    __break(1u);
LABEL_404:
                    v192 = _CocoaArrayWrapper.endIndex.getter();
                    continue;
                  }

                  v412 = outlined init with copy of Lyrics.Translation(&v680[*(v682 + 72) * v405], v142, type metadata accessor for Lyrics.TextLine);
                  v413 = v142 + *(v78 + 52);
                  v414 = *(v413 + 8);
                  if (!v414)
                  {
                    goto LABEL_301;
                  }

                  v81 = *v413;
                  v691 = (*(v142 + *(v78 + 64)))(v412);
                  v692 = v415;
                  v141 = (*(v142 + *(v78 + 68)))();
                  (*(v142 + *(v78 + 72)))(&v705);
                  v78 = swift_isUniquelyReferenced_nonNull_native();
                  v720 = v403;
                  v142 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v414);
                  v417 = v403[2];
                  v418 = (v416 & 1) == 0;
                  v419 = v417 + v418;
                  if (__OFADD__(v417, v418))
                  {
                    goto LABEL_394;
                  }

                  v420 = v416;
                  if (v403[3] >= v419)
                  {
                    if (v78)
                    {
                      v78 = v693;
                      if ((v416 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }

                    else
                    {
                      specialized _NativeDictionary.copy()();
                      v78 = v693;
                      if ((v420 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v419, v78);
                    v421 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v414);
                    if ((v420 & 1) != (v422 & 1))
                    {
                      goto LABEL_433;
                    }

                    v142 = v421;
                    v78 = v693;
                    if ((v420 & 1) == 0)
                    {
LABEL_311:
                      v403 = v720;
                      v720[(v142 >> 6) + 8] |= 1 << v142;
                      v423 = (v403[6] + 16 * v142);
                      *v423 = v81;
                      v423[1] = v414;
                      v424 = v403[7] + 88 * v142;
                      v425 = v692;
                      *v424 = v691;
                      *(v424 + 8) = v425;
                      *(v424 + 16) = v141;
                      *(v424 + 24) = v705;
                      *(v424 + 40) = v706;
                      *(v424 + 56) = v707;
                      *(v424 + 72) = v708;
                      v426 = v403[2];
                      v196 = __OFADD__(v426, 1);
                      v427 = v426 + 1;
                      if (v196)
                      {
                        goto LABEL_400;
                      }

                      v403[2] = v427;

LABEL_300:
                      v142 = v672;
                      v404 = v671;
LABEL_301:
                      ++v405;
                      outlined destroy of Lyrics.Translation(v142, type metadata accessor for Lyrics.TextLine);
                      if (v681 == v405)
                      {
                        goto LABEL_315;
                      }

                      goto LABEL_302;
                    }
                  }

                  v403 = v720;
                  v406 = v720[7] + 88 * v142;
                  v407 = *(v406 + 16);
                  v699 = *v406;
                  v700 = v407;
                  v409 = *(v406 + 48);
                  v408 = *(v406 + 64);
                  v410 = *(v406 + 32);
                  v704 = *(v406 + 80);
                  v702 = v409;
                  v703 = v408;
                  v701 = v410;
                  v411 = v692;
                  *v406 = v691;
                  *(v406 + 8) = v411;
                  *(v406 + 16) = v141;
                  *(v406 + 24) = v705;
                  *(v406 + 40) = v706;
                  *(v406 + 56) = v707;
                  *(v406 + 72) = v708;
                  outlined destroy of Lyrics.LineTranslationMetadata(&v699);
                  goto LABEL_300;
                }

                v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v396 & v142 & 1) != 0 || ((v396 ^ 1))
                {
                  goto LABEL_297;
                }

                goto LABEL_321;
              }
            }

            else if (!v401)
            {
              goto LABEL_297;
            }
          }

          else
          {
            v278 = v698;
            if (!v399)
            {
              goto LABEL_297;
            }
          }

          if ((v396 & 1) == 0)
          {
            goto LABEL_297;
          }

          goto LABEL_321;
        }

        outlined destroy of Lyrics.Translation(v356, type metadata accessor for Lyrics.Transliteration);
        v277 = v647;
        v78 = v694;
        (*v668)(v647, v694);
        v355 = v357;
      }

      outlined destroy of TaskPriority?(v355, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
      v141 = v644;
LABEL_187:
      v278 = v698;
LABEL_188:
      v276 = v683 + 1;
      if ((v683 + 1) == v667)
      {

        v274 = v695;
        goto LABEL_353;
      }

      goto LABEL_189;
    }

    break;
  }

LABEL_353:
  v142 = v665;

  swift_beginAccess();

  v463 = specialized static Lyrics.vocalistType(for:)(v462);

  *(v274 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) = v463;
  v464 = v722;
  v274[6] = v722;
  v465 = *(v464 + 2);
  v696 = v464;
  if (v465)
  {
    v466 = v682;
    v467 = &v464[(*(v682 + 80) + 32) & ~*(v682 + 80)];
    outlined init with copy of Lyrics.Translation(v467, v142, type metadata accessor for Lyrics.TextLine);
    v698 = *(v466 + 72);

    v468 = 0;
    v78 = _swiftEmptyArrayStorage;
    v81 = v685;
    do
    {
      outlined init with copy of Lyrics.Translation(v467, v697, type metadata accessor for Lyrics.TextLine);
      if (v468 || (v469 = *v142, *v142 <= 7.0))
      {
        v473 = *v697;
        v474 = *(v142 + 8);
        if (*v697 - v474 > 7.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 16) + 1, 1, v78);
          }

          v142 = *(v78 + 16);
          v475 = *(v78 + 24);
          if (v142 >= v475 >> 1)
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v475 > 1), v142 + 1, 1, v78);
          }

          *(&v700 + 1) = &type metadata for Lyrics.InstrumentalLine;
          *&v701 = &protocol witness table for Lyrics.InstrumentalLine;
          v476 = swift_allocObject();
          *&v699 = v476;
          *(v476 + 16) = v468;
          *(v476 + 24) = v474 + 0.1;
          *(v476 + 32) = v473;
          *(v476 + 40) = v676;
          *(v78 + 16) = v142 + 1;
          outlined init with take of ActionPerforming(&v699, v78 + 40 * v142 + 32);
          v196 = __OFADD__(v468++, 1);
          if (v196)
          {
            goto LABEL_401;
          }
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 16) + 1, 1, v78);
        }

        v471 = *(v78 + 16);
        v470 = *(v78 + 24);
        if (v471 >= v470 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v470 > 1), v471 + 1, 1, v78);
        }

        *(&v700 + 1) = &type metadata for Lyrics.InstrumentalLine;
        *&v701 = &protocol witness table for Lyrics.InstrumentalLine;
        v472 = swift_allocObject();
        *&v699 = v472;
        *(v472 + 16) = 0;
        *(v472 + 24) = 0;
        *(v472 + 32) = v469;
        *(v472 + 40) = v676;
        *(v78 + 16) = v471 + 1;
        outlined init with take of ActionPerforming(&v699, v78 + 40 * v471 + 32);
        v468 = 1;
      }

      v477 = v684;
      outlined init with copy of Lyrics.Translation(v697, v684, type metadata accessor for Lyrics.TextLine);
      *(v477 + 16) = v468;
      outlined init with copy of Lyrics.Translation(v477, v685, type metadata accessor for Lyrics.TextLine);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 16) + 1, 1, v78);
      }

      v479 = *(v78 + 16);
      v478 = *(v78 + 24);
      if (v479 >= v478 >> 1)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v478 > 1), v479 + 1, 1, v78);
      }

      v141 = type metadata accessor for Lyrics.TextLine;
      outlined destroy of Lyrics.Translation(v697, type metadata accessor for Lyrics.TextLine);
      v142 = v665;
      outlined destroy of Lyrics.Translation(v665, type metadata accessor for Lyrics.TextLine);
      *(&v700 + 1) = v693;
      *&v701 = &protocol witness table for Lyrics.TextLine;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v699);
      outlined init with copy of Lyrics.Translation(v81, boxed_opaque_existential_1, type metadata accessor for Lyrics.TextLine);
      *(v78 + 16) = v479 + 1;
      outlined init with take of ActionPerforming(&v699, v78 + 40 * v479 + 32);
      outlined destroy of Lyrics.Translation(v81, type metadata accessor for Lyrics.TextLine);
      v196 = __OFADD__(v468++, 1);
      if (v196)
      {
        goto LABEL_398;
      }

      outlined init with take of Lyrics.TextLine(v684, v142, type metadata accessor for Lyrics.TextLine);
      v467 += v698;
      --v465;
    }

    while (v465);
    v481 = *(v142 + 8);
    outlined destroy of Lyrics.Translation(v142, type metadata accessor for Lyrics.TextLine);
    v274 = v695;
  }

  else
  {

    v468 = 0;
    v78 = _swiftEmptyArrayStorage;
    v481 = 0;
  }

  v482 = [v634 songwriters];
  v483 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v483 >> 62)
  {
    v484 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v484 = *((v483 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v485 = v626;
  if (!v484)
  {

LABEL_414:
    v274[4] = v689;
    v274[5] = v78;
    swift_beginAccess();
    swift_weakAssign();
    Lyrics.updateTransliterations()();
    v505 = v629;
    if (one-time initialization token for lyrics != -1)
    {
      swift_once();
    }

    v506 = type metadata accessor for Logger();
    __swift_project_value_buffer(v506, static Logger.lyrics);
    v507 = swift_allocObject();
    *(v507 + 16) = v485;
    *(v507 + 24) = v505;
    v508 = swift_allocObject();
    v509 = v679;
    *(v508 + 16) = partial apply for implicit closure #17 in Lyrics.init(identifier:songInfo:);
    *(v508 + 24) = v509;
    v510 = swift_allocObject();
    v696 = v510;
    v511 = v673;
    *(v510 + 16) = partial apply for implicit closure #18 in Lyrics.init(identifier:songInfo:);
    *(v510 + 24) = v511;
    swift_retain_n();

    v698 = Logger.logObject.getter();
    LODWORD(v697) = static os_log_type_t.default.getter();
    v694 = swift_allocObject();
    *(v694 + 16) = 34;
    v693 = swift_allocObject();
    *(v693 + 16) = 8;
    v512 = swift_allocObject();
    *(v512 + 16) = partial apply for implicit closure #12 in Lyrics.init(identifier:songInfo:);
    *(v512 + 24) = v507;
    v513 = swift_allocObject();
    v692 = v513;
    *(v513 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v513 + 24) = v512;
    v691 = swift_allocObject();
    v691[16] = 34;
    v690 = swift_allocObject();
    *(v690 + 16) = 8;
    v514 = swift_allocObject();
    *(v514 + 16) = partial apply for implicit closure #13 in Lyrics.init(identifier:songInfo:);
    *(v514 + 24) = v274;
    v515 = swift_allocObject();
    v689 = v515;
    v515[2] = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    v515[3] = v514;
    v687 = swift_allocObject();
    *(v687 + 16) = 34;
    v686 = swift_allocObject();
    *(v686 + 16) = 8;
    v516 = swift_allocObject();
    *(v516 + 16) = partial apply for implicit closure #14 in Lyrics.init(identifier:songInfo:);
    *(v516 + 24) = v274;
    v517 = swift_allocObject();
    *(v517 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v517 + 24) = v516;
    v685 = swift_allocObject();
    *(v685 + 16) = 34;
    v684 = swift_allocObject();
    *(v684 + 16) = 8;
    v518 = swift_allocObject();
    *(v518 + 16) = partial apply for implicit closure #15 in Lyrics.init(identifier:songInfo:);
    *(v518 + 24) = v274;
    v519 = swift_allocObject();
    *(v519 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v519 + 24) = v518;
    v683 = swift_allocObject();
    *(v683 + 16) = 34;
    v682 = swift_allocObject();
    *(v682 + 16) = 8;
    v520 = swift_allocObject();
    *(v520 + 16) = partial apply for implicit closure #16 in Lyrics.init(identifier:songInfo:);
    *(v520 + 24) = v274;
    v521 = swift_allocObject();
    *(v521 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v521 + 24) = v520;
    v681 = swift_allocObject();
    *(v681 + 16) = 34;
    v522 = swift_allocObject();
    *(v522 + 16) = 8;
    v523 = swift_allocObject();
    *(v523 + 16) = partial apply for specialized implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v523 + 24) = v508;
    v524 = swift_allocObject();
    *(v524 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v524 + 24) = v523;
    v525 = swift_allocObject();
    *(v525 + 16) = 34;
    v526 = swift_allocObject();
    *(v526 + 16) = 8;
    v527 = swift_allocObject();
    v528 = v696;
    *(v527 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)specialized partial apply;
    *(v527 + 24) = v528;
    v529 = swift_allocObject();
    *(v529 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v529 + 24) = v527;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    v530 = swift_allocObject();
    *(v530 + 16) = xmmword_100518190;
    v531 = v694;
    *(v530 + 32) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v530 + 40) = v531;
    v532 = v693;
    *(v530 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 56) = v532;
    v533 = v692;
    *(v530 + 64) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v530 + 72) = v533;
    v534 = v691;
    *(v530 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 88) = v534;
    v535 = v690;
    *(v530 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 104) = v535;
    v536 = v689;
    *(v530 + 112) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 120) = v536;
    v537 = v687;
    *(v530 + 128) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 136) = v537;
    v538 = v686;
    *(v530 + 144) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 152) = v538;
    *(v530 + 160) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 168) = v517;
    v539 = v685;
    *(v530 + 176) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 184) = v539;
    v540 = v684;
    *(v530 + 192) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 200) = v540;
    *(v530 + 208) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 216) = v519;
    v541 = v683;
    *(v530 + 224) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 232) = v541;
    v542 = v682;
    *(v530 + 240) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 248) = v542;
    *(v530 + 256) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 264) = v521;
    v543 = v681;
    *(v530 + 272) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 280) = v543;
    *(v530 + 288) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 296) = v522;
    *(v530 + 304) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 312) = v524;
    *(v530 + 320) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 328) = v525;
    *(v530 + 336) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 344) = v526;
    *(v530 + 352) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v530 + 360) = v529;
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v544 = v698;
    if (os_log_type_enabled(v698, v697))
    {
      v545 = swift_slowAlloc();
      v696 = swift_slowAlloc();
      v719 = v696;
      *v545 = 136447746;
      v717 = v626;
      v718 = v629;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_2, &_sSSSgMR_2);
      v546 = String.init<A>(describing:)();
      v548 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v546, v547, &v719);

      *(v545 + 4) = v548;
      *(v545 + 12) = 2082;
      v549 = v695;
      v550 = v695 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
      swift_beginAccess();
      v551 = *(v659 + 48);
      v659 += 48;
      v694 = v551;
      v552 = v551(v550, 1, v657);
      v553 = 0;
      v554 = 0;
      if (!v552)
      {
        v553 = *&v550[v657[5]];
      }

      v715 = v553;
      v716 = v554;
      v555 = String.init<A>(describing:)();
      v557 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v555, v556, &v719);

      *(v545 + 14) = v557;
      *(v545 + 22) = 2082;
      v558 = v549 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
      swift_beginAccess();
      v559 = *(v660 + 48);
      v560 = v688;
      v561 = v559(v558, 1, v688);
      v562 = 0;
      v563 = 0;
      if (!v561)
      {
        v562 = *(v558 + v560[5]);
      }

      v713 = v562;
      v714 = v563;
      v564 = String.init<A>(describing:)();
      v566 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v564, v565, &v719);

      *(v545 + 24) = v566;
      *(v545 + 32) = 2082;
      v567 = v549 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
      swift_beginAccess();
      v568 = v559(v567, 1, v560);
      v569 = 0;
      v570 = 0;
      if (!v568)
      {
        v569 = *(v567 + v560[5]);
      }

      v711 = v569;
      v712 = v570;
      v571 = String.init<A>(describing:)();
      v573 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v571, v572, &v719);

      *(v545 + 34) = v573;
      *(v545 + 42) = 2082;
      v574 = v549 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v575 = v657;
      v576 = (v694)(v574, 1, v657);
      v577 = 0;
      v578 = 0;
      v579 = v549;
      if (!v576)
      {
        v577 = *(v574 + v575[5]);
      }

      v709 = v577;
      v710 = v578;
      v580 = String.init<A>(describing:)();
      v582 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v580, v581, &v719);

      *(v545 + 44) = v582;
      *(v545 + 52) = 2082;
      swift_beginAccess();

      v584 = specialized _arrayDescription<A>(for:)(v583);
      v586 = v585;

      v587 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v584, v586, &v719);

      *(v545 + 54) = v587;
      *(v545 + 62) = 2082;
      swift_beginAccess();

      v589 = specialized _arrayDescription<A>(for:)(v588);
      v591 = v590;

      v592 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v589, v591, &v719);

      *(v545 + 64) = v592;
      v593 = v698;
      _os_log_impl(&_mh_execute_header, v698, v697, "Initialized lyrics with identifier %{public}s, preferredTranslation: %{public}s, preferredTransliteration: %{public}s, currentTransliteration: %{public}s, currentTranslation: %{public}s preferredLanguageCodes: %{public}s, preferredScriptCodes: %{public}s", v545, 0x48u);
      swift_arrayDestroy();
    }

    else
    {

      v579 = v695;
    }

    outlined destroy of TaskPriority?(v639, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
    return v579;
  }

  v486 = [v634 songwriters];
  v487 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v487 >> 62))
  {
    v488 = *((v487 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v488)
    {
      goto LABEL_381;
    }

LABEL_408:

    v498 = _swiftEmptyArrayStorage;
LABEL_409:
    v502 = swift_isUniquelyReferenced_nonNull_native();
    v721 = v78;
    if ((v502 & 1) == 0)
    {
      v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 16) + 1, 1, v78);
      v721 = v78;
    }

    v503 = *(v78 + 16);
    v504 = *(v78 + 24);
    if (v503 >= v504 >> 1)
    {
      v595 = *(v78 + 16);
      v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v504 > 1), v503 + 1, 1, v78);
      v503 = v595;
      v485 = v626;
      v721 = v78;
    }

    *&v699 = v468;
    *(&v699 + 1) = v481;
    *&v700 = 0x7FF0000000000000;
    BYTE8(v700) = v676;
    *&v701 = v498;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v503, &v699, &v721);
    v721 = v78;
    goto LABEL_414;
  }

  v488 = _CocoaArrayWrapper.endIndex.getter();
  if (!v488)
  {
    goto LABEL_408;
  }

LABEL_381:
  *&v699 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)(v488);
  if ((v488 & 0x8000000000000000) == 0)
  {
    v489 = 0;
    v490 = v487;
    v697 = (v487 & 0xC000000000000001);
    v698 = v487;
    v491 = v488;
    do
    {
      if (v697)
      {
        v492 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v492 = *(v490 + 8 * v489 + 32);
      }

      v493 = v492;
      v494 = [v492 name];
      v495 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v497 = v496;

      v498 = v699;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1(0, v498[2] + 1, 1);
        v498 = v699;
      }

      v500 = v498[2];
      v499 = v498[3];
      if (v500 >= v499 >> 1)
      {
        _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1((v499 > 1), v500 + 1, 1);
        v498 = v699;
      }

      ++v489;
      v498[2] = v500 + 1;
      v501 = &v498[2 * v500];
      v501[4] = v495;
      v501[5] = v497;
      v274 = v695;
      v490 = v698;
    }

    while (v491 != v489);

    v485 = v626;
    goto LABEL_409;
  }

LABEL_429:
  __break(1u);
LABEL_430:

  v596 = v695;

  outlined destroy of TaskPriority?(object + v596, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);

  outlined destroy of TaskPriority?(v596 + v627, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  outlined destroy of TaskPriority?(v596 + countAndFlagsBits, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  outlined destroy of TaskPriority?(v596 + v652, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  outlined destroy of TaskPriority?(v603 + v596, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  outlined destroy of TaskPriority?(v596 + v617, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  outlined destroy of TaskPriority?(v596 + v640, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
LABEL_432:

  swift_deallocPartialClassInstance();
  __break(1u);
LABEL_433:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _sSa9_getCountSiyF7LyricsX06SyncedC8LineViewC4WordC_Tg5_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL closure #2 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:)(uint64_t a1, BOOL a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  __chkstk_darwin();
  v4 = &v23 - v3;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  __chkstk_darwin();
  v10 = &v23 - v9;
  v11 = type metadata accessor for Lyrics.Transliteration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v16 = Strong;
  v23 = v6;
  v17 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v16 + v17, v10, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    outlined init with take of Lyrics.TextLine(v10, v14, type metadata accessor for Lyrics.Transliteration);
    v19 = Locale.Language.characterDirection.getter();

    v20 = type metadata accessor for Lyrics.Transliteration;
    v21 = v14;
LABEL_8:
    outlined destroy of Lyrics.Translation(v21, v20);
    return v19 == 2;
  }

  outlined destroy of TaskPriority?(v10, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  v18 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v16 + v18, v4, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  if ((*(v23 + 48))(v4, 1, v5) != 1)
  {
    outlined init with take of Lyrics.TextLine(v4, v8, type metadata accessor for Lyrics.Translation);
    v19 = Locale.Language.characterDirection.getter();

    v20 = type metadata accessor for Lyrics.Translation;
    v21 = v8;
    goto LABEL_8;
  }

  outlined destroy of TaskPriority?(v4, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  return a2;
}

uint64_t closure #4 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  __chkstk_darwin();
  v8 = &v32 - v7;
  v9 = type metadata accessor for Lyrics.Translation(0);
  v35 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  __chkstk_darwin();
  v13 = &v32 - v12;
  v14 = type metadata accessor for Lyrics.Transliteration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v19 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v32 = a3;
  v33 = a4;
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v19 + v20, v13, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    outlined init with take of Lyrics.TextLine(v13, v17, type metadata accessor for Lyrics.Transliteration);
    v23 = *&v17[*(v14 + 28)];
    a4 = v33;
    if (*(v23 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v32), (v25 & 1) != 0))
    {
      a4 = *(*(v23 + 56) + 88 * v24);
    }

    else
    {
    }

    v26 = type metadata accessor for Lyrics.Transliteration;
    v27 = v17;
    goto LABEL_18;
  }

  outlined destroy of TaskPriority?(v13, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v19 + v21, v8, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  v22 = (*(v35 + 48))(v8, 1, v9);
  a4 = v33;
  if (v22 != 1)
  {
    outlined init with take of Lyrics.TextLine(v8, v11, type metadata accessor for Lyrics.Translation);
    v28 = *&v11[*(v9 + 32)];
    if (*(v28 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v32), (v30 & 1) != 0))
    {
      a4 = *(*(v28 + 56) + 88 * v29);
    }

    else
    {
    }

    v26 = type metadata accessor for Lyrics.Translation;
    v27 = v11;
LABEL_18:
    outlined destroy of Lyrics.Translation(v27, v26);
    return a4;
  }

  outlined destroy of TaskPriority?(v8, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
LABEL_7:

  return a4;
}

uint64_t closure #5 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  __chkstk_darwin();
  v7 = &v33 - v6;
  v8 = type metadata accessor for Lyrics.Translation(0);
  v36 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = type metadata accessor for Lyrics.Transliteration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v18 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v33 = a3;
  v34 = a4;
  v19 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v18 + v19, v12, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    outlined init with take of Lyrics.TextLine(v12, v16, type metadata accessor for Lyrics.Transliteration);
    v22 = *&v16[*(v13 + 28)];
    v23 = v34;
    if (*(v22 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v33), (v25 & 1) != 0))
    {
      v21 = *(*(v22 + 56) + 88 * v24 + 16);
    }

    else
    {

      swift_beginAccess();
      v21 = *(v23 + 16);
    }

    v26 = type metadata accessor for Lyrics.Transliteration;
    v27 = v16;
    goto LABEL_18;
  }

  outlined destroy of TaskPriority?(v12, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v18 + v20, v7, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  if ((*(v36 + 48))(v7, 1, v8) != 1)
  {
    outlined init with take of Lyrics.TextLine(v7, v10, type metadata accessor for Lyrics.Translation);
    v28 = *&v10[*(v8 + 32)];
    v29 = v34;
    if (*(v28 + 16) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v33), (v31 & 1) != 0))
    {
      v21 = *(*(v28 + 56) + 88 * v30 + 16);
    }

    else
    {

      swift_beginAccess();
      v21 = *(v29 + 16);
    }

    v26 = type metadata accessor for Lyrics.Translation;
    v27 = v10;
LABEL_18:
    outlined destroy of Lyrics.Translation(v27, v26);
    return v21;
  }

  outlined destroy of TaskPriority?(v7, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  a4 = v34;
LABEL_7:
  swift_beginAccess();
  v21 = *(a4 + 16);

  return v21;
}

double closure #6 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X8>)
{
  v55 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v10 = type metadata accessor for Lyrics.Translation(0);
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin();
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  __chkstk_darwin();
  v13 = &v51 - v12;
  v14 = type metadata accessor for Lyrics.Transliteration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v19 = Strong;
  if (!a3)
  {

LABEL_7:
    swift_beginAccess();
    v24 = a4[1];
    v25 = a4[2];
    goto LABEL_8;
  }

  v52 = a3;
  v53 = a5;
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v19 + v20, v13, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    outlined init with take of Lyrics.TextLine(v13, v17, type metadata accessor for Lyrics.Transliteration);
    v27 = *&v17[*(v14 + 28)];
    if (*(v27 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v52), (v29 & 1) != 0))
    {
      v30 = *(v27 + 56) + 88 * v28;
      v31 = *(v30 + 72);
      v32 = *(v30 + 40);
      v33 = *(v30 + 56);
      v63 = *(v30 + 24);
      v64 = v32;
      v65 = v33;
      v66 = v31;
      outlined init with copy of TaskPriority?(&v63, &v67, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMR);

      a5 = v53;
      if (*(&v64 + 1))
      {
LABEL_15:
        v59 = v63;
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v36 = type metadata accessor for Lyrics.Transliteration;
        v37 = v17;
LABEL_23:
        outlined destroy of Lyrics.Translation(v37, v36);
        goto LABEL_24;
      }

      v67 = v63;
      v68 = v64;
      v69 = v65;
      v70 = v66;
    }

    else
    {

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      a5 = v53;
    }

    swift_beginAccess();
    v34 = a4[2];
    v63 = a4[1];
    v64 = v34;
    v35 = a4[4];
    v65 = a4[3];
    v66 = v35;
    outlined init with copy of TaskPriority?(&v63, v58, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMR);
    outlined destroy of TaskPriority?(&v67, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMR);
    goto LABEL_15;
  }

  outlined destroy of TaskPriority?(v13, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v19 + v21, v9, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  v22 = v57;
  v23 = (*(v56 + 48))(v9, 1, v57);
  a5 = v53;
  if (v23 != 1)
  {
    v38 = v54;
    outlined init with take of Lyrics.TextLine(v9, v54, type metadata accessor for Lyrics.Translation);
    v39 = *(v38 + *(v22 + 32));
    if (*(v39 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v52), (v41 & 1) != 0))
    {
      v42 = *(v39 + 56) + 88 * v40;
      v43 = *(v42 + 72);
      v44 = *(v42 + 40);
      v45 = *(v42 + 56);
      v63 = *(v42 + 24);
      v64 = v44;
      v65 = v45;
      v66 = v43;
      outlined init with copy of TaskPriority?(&v63, &v67, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMR);

      if (*(&v64 + 1))
      {
LABEL_22:
        v59 = v63;
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v36 = type metadata accessor for Lyrics.Translation;
        v37 = v38;
        goto LABEL_23;
      }

      v67 = v63;
      v68 = v64;
      v69 = v65;
      v70 = v66;
    }

    else
    {

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    swift_beginAccess();
    v46 = a4[2];
    v63 = a4[1];
    v64 = v46;
    v47 = a4[4];
    v65 = a4[3];
    v66 = v47;
    outlined init with copy of TaskPriority?(&v63, v58, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMR);
    outlined destroy of TaskPriority?(&v67, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMR);
    goto LABEL_22;
  }

  outlined destroy of TaskPriority?(v9, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  swift_beginAccess();
  v24 = a4[1];
  v25 = a4[2];
LABEL_8:
  v67 = v24;
  v68 = v25;
  v26 = a4[4];
  v69 = a4[3];
  v70 = v26;
  outlined init with copy of TaskPriority?(&v67, &v63, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMR);
  v59 = v67;
  v60 = v68;
  v61 = v69;
  v62 = v70;
LABEL_24:
  v48 = v60;
  *a5 = v59;
  a5[1] = v48;
  result = *&v61;
  v50 = v62;
  a5[2] = v61;
  a5[3] = v50;
  return result;
}

void _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation3URLVSg_SayAHGTg5_2(uint64_t a1)
{
  v2 = *(a1 + 16);
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2(isUniquelyReferenced_nonNull_native, v12, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2[3] >> 1) - New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3, &_s10Foundation3URLVSgMR_3);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2;
    return;
  }

  v9 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void closure #3 in Lyrics.init(identifier:songInfo:)(id a1@<X3>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  if ([a1 type] == 2)
  {
    v9 = [a2 hasBackgroundVocal];
    v10 = &selRef_primaryVocalText;
    if (!v9)
    {
      v10 = &selRef_lyricsText;
    }

    v11 = [a2 *v10];
    v12 = [v11 string];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = specialized static Lyrics.words(for:language:)(a2, a3, a4);
    v17 = [a2 backgroundVocals];
    if (!v17)
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      goto LABEL_8;
    }

    v18 = v17;

    specialized Lyrics.TextLine.BackgroundVocals.init(backgroundVocals:language:)(v18, a3, a4, v30);
    v28 = v30[1];
    v29 = v30[0];
    v19 = v30[3];
    v27 = v30[2];
  }

  else
  {
    v20 = [a2 lyricsText];
    v18 = [v20 string];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v21;
    v19 = 0uLL;
    v29 = 0u;
    v16 = _swiftEmptyArrayStorage;
    v27 = 0u;
    v28 = 0u;
  }

  v26 = v19;

  v23 = v28;
  v22 = v29;
  v25 = v26;
  v24 = v27;
LABEL_8:
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  *(a5 + 24) = v22;
  *(a5 + 40) = v23;
  *(a5 + 56) = v24;
  *(a5 + 72) = v25;
}

uint64_t Locale.Language.lyricsLanguageCode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
  __chkstk_darwin();
  v1 = v17 - v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
  __chkstk_darwin();
  v3 = v17 - v2;
  Locale.Language.languageCode.getter();
  v4 = type metadata accessor for Locale.LanguageCode();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
    return 0;
  }

  else
  {
    v6 = Locale.LanguageCode.identifier.getter();
    v8 = v7;
    (*(v5 + 8))(v3, v4);
    v9 = v6 == 26746 && v8 == 0xE200000000000000;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      Locale.Language.script.getter();
      v10 = type metadata accessor for Locale.Script();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v1, 1, v10) == 1)
      {
        outlined destroy of TaskPriority?(v1, &_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
      }

      else
      {

        v12 = Locale.Script.identifier.getter();
        v14 = v13;
        (*(v11 + 8))(v1, v10);
        v17[0] = 2975866;
        v17[1] = 0xE300000000000000;
        v15._countAndFlagsBits = v12;
        v15._object = v14;
        String.append(_:)(v15);

        return v17[0];
      }
    }
  }

  return v6;
}

BOOL _sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = qword_100519278[a1];
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100519278[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t implicit closure #12 in Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_2, &_sSSSgMR_2);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #13 in Lyrics.init(identifier:songInfo:)(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v4 = a1 + *a2;
  swift_beginAccess();
  v5 = (a3)(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_2, &_sSSSgMR_2);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #17 in Lyrics.init(identifier:songInfo:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = v4;
  a2[1] = v5;
}

Swift::Void __swiftcall Lyrics.updateTransliterations()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  __chkstk_darwin();
  v2 = &v10 - v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(3, *(static LyricsOptionsManager.shared + 40)))
  {
    v3 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v0 + v3, v2, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
    v4 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v2, v0 + v4, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
    swift_endAccess();
    v5 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v0 + v5, v2, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  }

  else
  {
    v7 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v0 + v7, v2, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
    v8 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v2, v0 + v8, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
    swift_endAccess();
    v9 = type metadata accessor for Lyrics.Transliteration(0);
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  }

  v6 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v2, v0 + v6, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  swift_endAccess();
}

void Lyrics.line(before:useOriginalLines:)(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    v6 = specialized _arrayForceCast<A, B>(_:)(*(v3 + 48));
    if (!v6[2])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v3 + 40);

    if (!v6[2])
    {
LABEL_6:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
LABEL_28:

      return;
    }
  }

  outlined init with copy of ActionPerforming((v6 + 4), &v34);
  v8 = *(&v35 + 1);
  v7 = v36;
  __swift_project_boxed_opaque_existential_0Tm(&v34, *(&v35 + 1));
  v9 = (*(*(v7 + 8) + 8))(v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v34);
  if (v9 > a3)
  {
    goto LABEL_6;
  }

  v10 = v6[2];
  v27 = a2;
  if (!v10)
  {
    goto LABEL_13;
  }

  outlined init with copy of ActionPerforming(&v6[5 * v10 - 1], &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd, &_s7LyricsX0A4Line_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v6[2])
  {
    goto LABEL_34;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v11 = v6[2];
    if (v11)
    {
LABEL_12:
      v12 = v11 - 1;
      __swift_destroy_boxed_opaque_existential_0Tm(&v6[5 * v11 - 1]);
      v6[2] = v12;
LABEL_13:
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      v13 = v6[2];
      if (!v13)
      {
LABEL_27:
        v26 = v35;
        *v27 = v34;
        *(v27 + 16) = v26;
        *(v27 + 32) = v36;
        goto LABEL_28;
      }

      v14 = 0;
      v15 = v13 - 1;
      v16 = v6 + 4;
      v17 = v13 - 1;
      while (1)
      {
        if (__OFSUB__(v17, v14))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v18 = v14 + (v17 - v14) / 2;
        if (__OFADD__(v14, (v17 - v14) / 2))
        {
          goto LABEL_30;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v18 >= v6[2])
        {
          goto LABEL_32;
        }

        outlined init with copy of ActionPerforming(&v16[5 * v18], v31);
        v20 = v32;
        v19 = v33;
        __swift_project_boxed_opaque_existential_0Tm(v31, v32);
        v21 = (*(*(v19 + 8) + 8))(v20);
        v22 = v21;
        if (v18 >= v15)
        {
          break;
        }

        if (v18 + 1 >= v6[2])
        {
          goto LABEL_33;
        }

        outlined init with copy of ActionPerforming(&v16[5 * v18 + 5], v28);
        v24 = v29;
        v23 = v30;
        __swift_project_boxed_opaque_existential_0Tm(v28, v29);
        v25 = (*(*(v23 + 8) + 8))(v24);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        if (v22 > a3)
        {
          goto LABEL_16;
        }

        v14 = v18 + 1;
        if (v25 >= a3)
        {
LABEL_26:
          outlined destroy of TaskPriority?(&v34, &_s7LyricsX0A4Line_pSgMd, &_s7LyricsX0A4Line_pSgMR);
          outlined init with copy of ActionPerforming(v31, &v34);
          __swift_destroy_boxed_opaque_existential_0Tm(v31);
          goto LABEL_27;
        }

LABEL_17:
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        if (v17 < v14)
        {
          goto LABEL_27;
        }
      }

      if (v21 <= a3)
      {
        goto LABEL_26;
      }

LABEL_16:
      v17 = v18 - 1;
      goto LABEL_17;
    }
  }

  else
  {
LABEL_35:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v11 = v6[2];
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void Lyrics.line(after:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v9 = *(v3 + 40);
  if (v8 >= *(v9 + 16))
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_11;
  }

  v10 = v9 + 40 * v8;
  outlined init with copy of ActionPerforming(v10 + 32, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd, &_s7LyricsX0A4Line_pMR);
  if (swift_dynamicCast())
  {

    goto LABEL_6;
  }

  if (v8 >= *(v9 + 16))
  {
    goto LABEL_12;
  }

  outlined init with copy of ActionPerforming(v10 + 32, a2);
}

id one-time initialization function for wordTokenizer()
{
  result = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  static Lyrics.wordTokenizer = result;
  return result;
}

uint64_t one-time initialization function for tokenizerLock()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  static Lyrics.tokenizerLock = result;
  return result;
}

void specialized closure #1 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char **a8)
{

  v71._countAndFlagsBits = a3;
  v71._object = a4;
  _NSRange.init(range:in:)(a1, a2, a3, a4);
  v14 = 0;
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v69 = a6;
  while (1)
  {
LABEL_4:
    v19 = v14;
    __chkstk_darwin();
    swift_beginAccess();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13MSVLyricsWordCGMd, &_sSaySo13MSVLyricsWordCGMR);
    Array.extractFirst(where:)(v20, &v72);
    swift_endAccess();
    v14 = v72;
    if (!v72)
    {
      if (*(v16 + 2))
      {
        v26 = 0.0;
        v28 = 0.0;
        if (v15)
        {
          [v15 startTime];
          v28 = v50;
        }

        if (v19)
        {
          [v19 endTime];
          v26 = v51;
        }

        v52 = *(v16 + 2);
        if (v52)
        {

          _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1(0, v52, 0);
          v53 = v16;
          v54 = (v16 + 56);
          do
          {
            v56 = *(v54 - 1);
            v55 = *v54;
            v58 = _swiftEmptyArrayStorage[2];
            v57 = _swiftEmptyArrayStorage[3];

            if (v58 >= v57 >> 1)
            {
              _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1((v57 > 1), v58 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v58 + 1;
            v59 = &_swiftEmptyArrayStorage[2 * v58];
            v59[4] = v56;
            v59[5] = v55;
            v54 += 7;
            --v52;
          }

          while (v52);
          v16 = v53;
        }

        else
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_2, &_sSaySSGMR_2);
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_sSaySSGSayxGSKsWL_2, &_sSaySSGMd_2, &_sSaySSGMR_2, &protocol conformance descriptor for [A]);
        v30 = BidirectionalCollection<>.joined(separator:)();
        v34 = v60;

        swift_beginAccess();
        v33 = *a8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v33;
        a7 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

LABEL_37:

      return;
    }

    if (!v15)
    {
      v21 = v14;
      v15 = v14;
    }

    v22 = v14;
    v23 = [v22 lyricsText];
    v24 = [v23 string];
    if (!v24)
    {
      break;
    }

    v18 = v24;

    v19 = v22;
    [v19 endTime];
    v26 = v25;
    [v19 startTime];
    v28 = v27;
    [v19 characterRange];
    v30 = v29;
    [v19 characterRange];
    v31._countAndFlagsBits = a6;
    v31._object = a7;
    location = _NSRange.convert(from:to:preserveLength:)(v31, v71, 0).location;
    if (v33)
    {

      v17 = v18;
      v18 = v19;
      goto LABEL_3;
    }

    v34 = location;
    v35 = [v18 length];
    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v36 = v35;
    if (v35)
    {
      v65 = v15;
      v37 = 0;
      v38 = (v26 - v28) / v30;
      v67 = v34;
      v68 = a7;
      while (1)
      {
        v39 = __OFADD__(v34, v37);
        v34 += v37;
        if (v39)
        {
          break;
        }

        [v19 startTime];
        v26 = v40;
        [v19 startTime];
        v28 = v41;
        v42 = v16;
        v43 = [v18 substringWithRange:{v37, 1}];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v45;

        v46 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
        }

        v30 = *(v46 + 2);
        v47 = *(v46 + 3);
        v48 = v46;
        if (v30 >= v47 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v30 + 1, 1, v46);
        }

        *(v48 + 2) = v30 + 1;
        v16 = v48;
        v49 = &v48[56 * v30];
        *(v49 + 4) = v38 * v37 + v26;
        *(v49 + 5) = v38 * (v37 + 1) + v28;
        *(v49 + 6) = v44;
        *(v49 + 7) = v70;
        *(v49 + 8) = v34;
        *(v49 + 72) = vdupq_n_s64(1uLL);
        ++v37;
        v34 = v67;
        a7 = v68;
        if (v37 == v36)
        {

          v15 = v65;
          a6 = v69;
          goto LABEL_4;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
      *a8 = v33;
LABEL_34:
      v63 = *(v33 + 2);
      v62 = *(v33 + 3);
      if (v63 >= v62 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v33);
        *a8 = v33;
      }

      *(v33 + 2) = v63 + 1;
      v64 = &v33[56 * v63];
      *(v64 + 4) = v28;
      *(v64 + 5) = v26;
      *(v64 + 6) = v30;
      *(v64 + 7) = v34;
      *(v64 + 8) = v16;
      *(v64 + 9) = 0;
      v64[80] = 1;
      swift_endAccess();
      v15 = a7;
      goto LABEL_37;
    }

    v17 = v19;
    a6 = v69;
LABEL_3:
  }

  __break(1u);
}

double closure #2 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (one-time initialization token for wordTokenizer != -1)
  {
    swift_once();
  }

  v4 = static Lyrics.wordTokenizer;
  v5 = String._bridgeToObjectiveC()();
  [v4 setString:v5];

  *a3 = NLTokenizer.tokens(for:)();

  return result;
}

BOOL closure #1 in closure #1 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(id *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  [*a1 characterRange];
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v11._countAndFlagsBits = a4;
  v11._object = a5;
  v12 = _NSRange.convert(from:to:preserveLength:)(v10, v11, 0);
  if (!v13)
  {
    return _NSRange.intersects(_:)(v12);
  }

  if (one-time initialization token for lyrics != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.lyrics);
  v15 = v9;

  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = v17;
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136446978;
    [v15 characterRange];
    v19 = _NSRange.description.getter();
    v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v19, v20, &v26);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    *(v18 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(a4, a5, &v26);
    *(v18 + 22) = 2082;
    *(v18 + 24) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(a2, a3, &v26);
    *(v18 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v22;
    *v24 = v22;
    _os_log_impl(&_mh_execute_header, v16, v25, "    Wasn't able to convert syllable range from primaryVocalText to lyricsText indicating a parsing issue.\n    MSVLyricsWord.characterRange=%{public}s\n    primaryVocalsText=%{public}s\n    lyricsText=%{public}s\n    thrownError=%{public}@", v18, 0x2Au);
    outlined destroy of TaskPriority?(v24, &_sSo8NSObjectCSgMd_2, _sSo8NSObjectCSgMR_2);

    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

void closure #4 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v39 = a1[4];
  v8 = *(v7 + 16);
  v9 = 0;
  if (!v8)
  {
    v11 = 0.0;
    v14 = 0;
LABEL_14:

    goto LABEL_15;
  }

  [*(v7 - 8 + 40 * v8) endTime];
  v11 = v10;
  if (!*(v7 + 16) || ([*(v7 + 32) startTime], v11 = v11 - v12, !*(v7 + 16)))
  {
    v14 = 0;
    goto LABEL_14;
  }

  [*(v7 + 32) startTime];
  v14 = v13;
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

  [*(v7 - 8 + 40 * v15) endTime];
  v9 = v16;
  v17 = *(v7 + 16);
  if (!v17)
  {
    goto LABEL_14;
  }

  v36 = a2;
  v37 = v5;
  v38 = a3;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
  v18 = (v7 + 64);
  do
  {
    v19 = *(v18 - 3);
    v20 = *(v18 - 2);
    v21 = *(v18 - 1);
    v40 = *v18;
    v22 = *(v18 - 4);

    [v22 startTime];
    v24 = v23;
    [v22 endTime];
    v26 = v25;

    v28 = _swiftEmptyArrayStorage[2];
    v27 = _swiftEmptyArrayStorage[3];
    if (v28 >= v27 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
    }

    v18 += 5;
    _swiftEmptyArrayStorage[2] = v28 + 1;
    v29 = &_swiftEmptyArrayStorage[7 * v28];
    v29[4] = v24;
    v29[5] = v26;
    v29[6] = v19;
    v29[7] = v20;
    v29[8] = v21;
    v29[9] = v40;
    v29[10] = v39;
    --v17;
  }

  while (v17);
  a3 = v38;
  v5 = v37;
  a2 = v36;
LABEL_15:
  v30 = 1;
  v31 = 0.0;
  if ((a2 & 1) != 0 && v11 > 1.0 && v39 <= 7)
  {
    v33 = 2.0;
    if (v11 <= 2.0)
    {
      v33 = v11;
    }

    v34 = v33 + -1.0;
    v31 = 0.0;
    if (v11 < 1.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v34;
    }

    if (v35 > 0.0)
    {
      v30 = 0;
      v31 = v35;
    }
  }

  *a3 = v14;
  *(a3 + 8) = v9;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = _swiftEmptyArrayStorage;
  *(a3 + 40) = v31;
  *(a3 + 48) = v30;
}

uint64_t closure #1 in static Lyrics.vocalistType(for:)(id *a1)
{
  result = [*a1 type];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0x6E6F73726570 && v5 == 0xE600000000000000)
    {

      return 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v7 & 1;
    }
  }

  return result;
}

uint64_t Lyrics.deinit()
{

  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);

  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, &_s7LyricsX0A0C11TranslationVSgMd_0, &_s7LyricsX0A0C11TranslationVSgMR_0);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, &_s7LyricsX0A0C15TransliterationVSgMd_0, &_s7LyricsX0A0C15TransliterationVSgMR_0);

  return v0;
}

uint64_t Lyrics.__deallocating_deinit()
{
  Lyrics.deinit();

  return swift_deallocClassInstance();
}

unint64_t Lyrics.ReportConcernData.dictionaryRepresentation()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s11AnyHashableVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  if (v0[1])
  {
    v8 = v0[1];

    AnyHashable.init<A>(_:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, 0xD000000000000017, 0x80000001004D64A0, isUniquelyReferenced_nonNull_native);
    v1 = v7;
  }

  v3 = v0[5];
  if (v3)
  {
    v7 = v0[4];
    v8 = v3;

    AnyHashable.init<A>(_:)();
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, 0x694C73636972796CLL, 0xEC0000006449656ELL, v4);
    return v7;
  }

  return v1;
}

uint64_t MSVLyricsAgent.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of TaskPriority?(a1, v48, &_sypSgMd_3, &_sypSgMR_3);
  if (v49)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
    if (swift_dynamicCast())
    {
      v2 = [v1 type];
      if (v2)
      {
        v3 = v2;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v47 type];
      if (v7)
      {
        v8 = v7;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        if (v6)
        {
          if (!v11)
          {
            goto LABEL_42;
          }

          if (v4 == v9 && v6 == v11)
          {
          }

          else
          {
            v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v12 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v11)
        {
          goto LABEL_45;
        }
      }

      else if (v6)
      {
        goto LABEL_42;
      }

      v13 = [v1 name];
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = [v47 name];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        if (v17)
        {
          if (!v22)
          {
            goto LABEL_42;
          }

          if (v15 == v20 && v17 == v22)
          {
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v23 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v22)
        {
          goto LABEL_45;
        }
      }

      else if (v17)
      {
        goto LABEL_42;
      }

      v24 = [v1 artistID];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v47 artistID];
      if (!v29)
      {
        if (v28)
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (v28)
      {
        if (!v33)
        {
          goto LABEL_42;
        }

        if (v26 == v31 && v28 == v33)
        {

          goto LABEL_47;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
LABEL_47:
          v35 = [v1 identifier];
          if (v35)
          {
            v36 = v35;
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;
          }

          else
          {
            v37 = 0;
            v39 = 0;
          }

          v42 = [v47 identifier];
          if (v42)
          {
            v43 = v42;
            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;

            if (!v39)
            {

              if (!v46)
              {
                v40 = 1;
                return v40 & 1;
              }

              goto LABEL_43;
            }

            if (v46)
            {
              if (v37 != v44 || v39 != v46)
              {
                v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

                return v40 & 1;
              }

              goto LABEL_61;
            }
          }

          else if (!v39)
          {
LABEL_61:

            v40 = 1;
            return v40 & 1;
          }

LABEL_42:

LABEL_43:

          goto LABEL_50;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (!v33)
      {
        goto LABEL_47;
      }

LABEL_45:
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v48, &_sypSgMd_3, &_sypSgMR_3);
  }

LABEL_50:
  v40 = 0;
  return v40 & 1;
}

uint64_t one-time initialization function for lyrics()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.lyrics);
  __swift_project_value_buffer(v0, static Logger.lyrics);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.lyrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for lyrics != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.lyrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t specialized implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(void (*a1)(void *__return_ptr))
{
  a1(v3);
  v1 = specialized _arrayDescription<A>(for:)(v3[1]);

  return v1;
}

char *specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1(result, v5, 0);
  }

  return result;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

void *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd_2, &_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMR_2);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3, &_s10Foundation3URLVSgMR_3) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3, &_s10Foundation3URLVSgMR_3) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_2, &_ss23_ContiguousArrayStorageCySSGMR_2);
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
    v10 = _swiftEmptyArrayStorage;
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