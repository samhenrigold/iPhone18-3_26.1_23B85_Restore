uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with take of _InnerAppExtensionIdentity(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id protocol witness for _InnerAppExtensionIdentity.bundleIdentifier.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  result = [*v0 bundleIdentifier];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of _InnerAppExtensionIdentity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of _InnerAppExtensionIdentity(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id _EXLegacyLog(uint64_t a1)
{
  if (_EXLegacyLog_onceToken != -1)
  {
    _EXLegacyLog_cold_1();
  }

  v2 = _EXLegacyLog_log;

  return v2;
}

objc_class *EXGetExtensionClass(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = _EXLegacyLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromClass(v2);
    v6 = 136446466;
    v7 = "Class EXGetExtensionClass(void)";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1847D1000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s returning %{public}@", &v6, 0x16u);
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t specialized _InnerAppExtensionIdentity.requiredHostEntitlements.getter(void *a1)
{
  v2 = [a1 extensionPointRecord];
  v3 = [v2 extensionPointType];

  if (v3 && (v4 = [a1 extensionPointRecord], v5 = objc_msgSend(v4, sel_extensionPointType), v4, v5 != 1))
  {
    v21 = MEMORY[0x1E69E7CC0];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(v21);
  }

  else
  {
    if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C2850), (v6 & 1) != 0))
    {
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
      if (swift_dynamicCast())
      {
        result = v23;
        if (v23)
        {
          return result;
        }
      }
    }

    else
    {
    }

    if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x80000001848C2C00), (v8 & 1) != 0))
    {
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
      v9 = swift_dynamicCast();
      v10 = v22;
      if (!v9)
      {
        v10 = 0;
      }
    }

    else
    {

      v10 = 0;
    }

    v24 = v10;

    result = v24;
    if (!v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXltGMd, &_ss23_ContiguousArrayStorageCySS_yXltGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1848BA260;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1848BA260;
      v14 = [a1 extensionPointRecord];
      v15 = [v14 identifier];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      *(v13 + 32) = v16;
      *(v13 + 40) = v18;
      isa = Array._bridgeToObjectiveC()().super.isa;

      *(inited + 48) = isa;
      v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of NSObject?(inited + 32, &_sSS_yXltMd, &_sSS_yXltMR);

      result = v20;
      if (!v20)
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = [v1 extensionPointRecord];
  v4 = [v3 SDKDictionary];

  v5 = [v2 ditionaryFromPropertyList_];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v6);

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized _InnerAppExtensionIdentity.requiresPerHostEnablement.getter(void *a1)
{
  v2 = [a1 extensionPointRecord];
  v3 = [v2 extensionPointType];

  switch(v3)
  {
    case 0u:
      return 0;
    case 2u:
      return 1;
    case 1u:
      if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000001848C6880), (v5 & 1) != 0))
      {
        swift_unknownObjectRetain();

        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v7 = [v6 BOOLValue];
          swift_unknownObjectRelease();
          return v7;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v8 = *(specialized _InnerAppExtensionIdentity.requiredHostEntitlements.getter(a1) + 16);

      return v8 == 0;
    default:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlGMd, &_ss18_DictionaryStorageCySSyXlGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v12, v27);
        *&v26 = v14;
        *(&v26 + 1) = v15;
        v24 = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v16 = v26;
        outlined init with take of Any(v25, &v22);

        swift_dynamicCast();
        v17 = v23;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          *(v2[7] + 8 * v9) = v17;
          result = swift_unknownObjectRelease();
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          *(v2[7] + 8 * result) = v17;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t AppExtensionIdentity.RecordIdentity.attributes.getter(void *a1)
{
  v1 = [a1 infoDictionary];
  v2 = MEMORY[0x1865F36D0](0xD000000000000018, 0x80000001848C6980);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlGMd, &_ss18_DictionaryStorageCySSyXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresHostToBeContainerApp.getter(void *a1)
{
  if (!*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27D0), (v2 & 1) == 0))
  {

    goto LABEL_6;
  }

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    goto LABEL_7;
  }

  v3 = v19;
LABEL_7:
  if (!*(v3 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C2870), (v4 & 1) == 0))
  {

LABEL_13:
    v5 = [a1 extensionPointRecord];
    v6 = [v5 extensionPointType];

    if (v6)
    {
      v7 = [a1 extensionPointRecord];
      v8 = [v7 extensionPointType];

      if (v8 != 1)
      {
        v9 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
        if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27B0), (v11 & 1) != 0))
        {
          v12 = *(*(v9 + 56) + 8 * v10);
          swift_unknownObjectRetain();
        }

        else
        {
          v12 = 0;
        }

        v13 = _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyXl_Tt1g5(v12, 0, 0);
        v15 = v14;
        outlined consume of _ScopeRestriction(v13, v14);
        if (!v15)
        {
          return 1;
        }
      }
    }

    if (*(AppExtensionIdentity.RecordIdentity.attributes.getter(a1) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27D0), (v16 & 1) != 0))
    {
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
      if (swift_dynamicCast())
      {
        if (!*(v19 + 16))
        {
          goto LABEL_30;
        }

LABEL_27:
        specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C2870);
        if (v17)
        {
          swift_unknownObjectRetain();

          if (swift_dynamicCast())
          {
            return v19;
          }

          return 0;
        }

LABEL_30:

        return 0;
      }
    }

    else
    {
    }

    if (!*(_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]) + 16))
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0 || (v19 & 1) == 0)
  {
    goto LABEL_13;
  }

  return 1;
}

id @nonobjc LSBundleRecord.__allocating_init(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
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

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for NSDictionary(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of _InnerAppExtensionIdentity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *_EXExtensionIdentity.init(applicationExtensionRecord:)(uint64_t a1)
{
  v7 = &type metadata for AppExtensionIdentity.RecordIdentity;
  v8 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
  *&v6 = a1;
  v1 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];
  outlined init with take of _InnerAppExtensionIdentity(&v6, v5);
  v2 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v3 = v1;
  outlined assign with take of _InnerAppExtensionIdentity?(v5, v1 + v2);
  swift_endAccess();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

void specialized closure #1 in closure #1 in _EXDiscoveryController.identities(matching:)(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v188 = a4;
  v218 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for NSFastEnumerationIterator();
  v186 = *(v7 - 8);
  v187 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0x8000000000000000;
  if (!a2[OBJC_IVAR____EXQuery_includePostprocessing])
  {
    v10 = 0;
  }

  if (a2[OBJC_IVAR____EXQuery_includeUpdatingApps])
  {
    v10 |= 0x2000000000000000uLL;
  }

  if (a2[OBJC_IVAR____EXQuery_allowsDuplicates])
  {
    v11 = v10 | 0x10;
  }

  else
  {
    v11 = v10;
  }

  v185 = [objc_opt_self() enumeratorWithExtensionPointRecord:a1 options:v11];
  NSEnumerator.makeIterator()();
  v12 = OBJC_IVAR____EXQuery_inner;
  v197 = OBJC_IVAR____EXQuery_excludeLockedApps;
  v190 = OBJC_IVAR____EXQuery_resultType;
  v178 = OBJC_IVAR____EXExtensionAvailability_unelectedCount;
  v177 = OBJC_IVAR____EXExtensionAvailability_disabledCount;
  v182 = OBJC_IVAR____EXExtensionAvailability_enabledCount;
  v180 = OBJC_IVAR____EXQuery_excludeDisabled;
  v184 = OBJC_IVAR____EXQuery_predicate;
  swift_beginAccess();
  swift_beginAccess();
  v200 = v9;
  NSFastEnumerationIterator.next()();
  if (!v217)
  {
LABEL_123:
    (*(v186 + 8))(v200, v187);

    return;
  }

  v193 = 0;
  *&v13 = 138543362;
  v191 = v13;
  *&v13 = 67109376;
  v183 = v13;
  *&v13 = 136446210;
  v176 = v13;
  *&v13 = 138543618;
  v179 = v13;
  v194 = a3;
  v198 = v12;
  v199 = a2;
  while (1)
  {
    outlined init with take of Any(&v216, &v213);
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v14 = v211;
    outlined init with copy of _InnerAppExtensionIdentity(&a2[v12], &v213);
    v15 = v214;
    v16 = v215;
    __swift_project_boxed_opaque_existential_1(&v213, v214);
    v17 = (*(v16 + 8))(v15, v16);
    if (!v18)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v213);
      outlined init with copy of _InnerAppExtensionIdentity(&a2[v12], &v213);
      v27 = v214;
      v28 = v215;
      __swift_project_boxed_opaque_existential_1(&v213, v214);
      v29 = (*(v28 + 40))(v27, v28);
      __swift_destroy_boxed_opaque_existential_0Tm(&v213);
      v30 = [v14 extensionPointRecord];
      v31 = [v30 platform];

      if ((v29 + 1) <= 1)
      {
        goto LABEL_23;
      }

LABEL_22:
      if (v31 != v29)
      {

        goto LABEL_12;
      }

      goto LABEL_23;
    }

    v19 = v17;
    v20 = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(&v213);
    v21 = v14;
    v22 = [v14 extensionPointRecord];
    v23 = [v22 identifier];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v19 == v24 && v20 == v26)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    outlined init with copy of _InnerAppExtensionIdentity(&a2[v12], &v213);
    v33 = v214;
    v34 = v215;
    __swift_project_boxed_opaque_existential_1(&v213, v214);
    v29 = (*(v34 + 40))(v33, v34);
    __swift_destroy_boxed_opaque_existential_0Tm(&v213);
    v14 = v21;
    v35 = [v21 extensionPointRecord];
    v31 = [v35 platform];

    if ((v29 + 1) >= 2)
    {
      goto LABEL_22;
    }

LABEL_23:
    v36 = [objc_allocWithZone(_EXExtensionIdentity) initWithApplicationExtensionRecord_];
    v37 = *a3;
    if ((*a3 & 0xC000000000000001) != 0)
    {

      v38 = v36;
      v39 = __CocoaSet.contains(_:)();

      if (v39)
      {
        goto LABEL_25;
      }
    }

    else if (*(v37 + 16))
    {
      v51 = v14;
      type metadata accessor for _EXExtensionIdentity();
      v52 = *(v37 + 40);

      v53 = NSObject._rawHashValue(seed:)(v52);
      v54 = -1 << *(v37 + 32);
      v55 = v53 & ~v54;
      if ((*(v37 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
      {
        v56 = ~v54;
        while (1)
        {
          v57 = *(*(v37 + 48) + 8 * v55);
          v58 = static NSObject.== infix(_:_:)();

          if (v58)
          {
            break;
          }

          v55 = (v55 + 1) & v56;
          if (((*(v37 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        a3 = v194;
        a2 = v199;
        v14 = v51;
LABEL_25:
        if (one-time initialization token for discovery != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static Logger.discovery);
        v41 = v36;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = v14;
          v46 = swift_slowAlloc();
          *v44 = v191;
          *(v44 + 4) = v41;
          *v46 = v41;
          v47 = v41;
          v48 = v43;
          v49 = v42;
          v50 = "Extension has already been evaluated: %{public}@";
LABEL_41:
          _os_log_impl(&dword_1847D1000, v49, v48, v50, v44, 0xCu);
          outlined destroy of NSObject?(v46, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
          MEMORY[0x1865F56C0](v46, -1, -1);
          MEMORY[0x1865F56C0](v44, -1, -1);

          goto LABEL_11;
        }

LABEL_48:

        goto LABEL_11;
      }

LABEL_34:

      a3 = v194;
      a2 = v199;
      v14 = v51;
    }

    if (a2[v197] == 1 && [v14 appProtectionLocked])
    {
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Logger.discovery);
      v41 = v36;
      v42 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v42, v60))
      {
        v44 = swift_slowAlloc();
        v45 = v14;
        v46 = swift_slowAlloc();
        *v44 = v191;
        *(v44 + 4) = v41;
        *v46 = v41;
        v47 = v41;
        v48 = v60;
        v49 = v42;
        v50 = "Skipping because extension is locked: %{public}@";
        goto LABEL_41;
      }

      goto LABEL_48;
    }

    v61 = OBJC_IVAR____EXExtensionIdentity__inner;
    swift_beginAccess();
    outlined init with copy of _InnerAppExtensionIdentity?(v36 + v61, &v211);
    if (!v212)
    {
      goto LABEL_126;
    }

    outlined init with take of _InnerAppExtensionIdentity(&v211, &v213);
    v62 = v214;
    v63 = v215;
    __swift_project_boxed_opaque_existential_1(&v213, v214);
    (*(v63 + 224))(v62, v63);
    if (v64)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v213);
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static Logger.discovery);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      v68 = os_log_type_enabled(v66, v67);
      a2 = v199;
      if (v68)
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_1847D1000, v66, v67, "Extension points with app group scope must be enumerated using AppExtensionPoint.Monitor.", v69, 2u);
        MEMORY[0x1865F56C0](v69, -1, -1);
      }

      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v213);
    [v36 targetsSystemExtensionPoint];
    outlined init with copy of _InnerAppExtensionIdentity?(v36 + v61, &v211);
    if (!v212)
    {
      goto LABEL_127;
    }

    outlined init with take of _InnerAppExtensionIdentity(&v211, &v213);
    v70 = v214;
    v71 = v215;
    __swift_project_boxed_opaque_existential_1(&v213, v214);
    LODWORD(v192) = (*(v71 + 408))(v70, v71);
    __swift_destroy_boxed_opaque_existential_0Tm(&v213);
    outlined init with copy of _InnerAppExtensionIdentity(&v199[v198], v208);
    v72 = v209;
    v73 = v210;
    __swift_project_boxed_opaque_existential_1(v208, v209);
    v74 = (*(v73 + 32))(v72, v73);
    v76 = v75;
    v78 = v77;
    v80 = v79;
    __swift_destroy_boxed_opaque_existential_0Tm(v208);
    *&v202 = v74;
    *(&v202 + 1) = v76;
    v203 = v78;
    v204 = v80;
    v81 = _EXAuditTokenForCurrentProcess();
    v82 = v81[1];
    v201[0] = *v81;
    v201[1] = v82;
    v83 = v193;
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    v195 = __swift_project_value_buffer(v84, static Logger.discovery);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = v183;
      swift_beginAccess();
      PID = _EXAuditTokenGetPID(v201);
      swift_endAccess();
      *(v87 + 4) = PID;
      *(v87 + 8) = 1024;
      swift_beginAccess();
      v89 = _EXAuditTokenGetPID(&v202);
      swift_endAccess();
      *(v87 + 10) = v89;
      _os_log_impl(&dword_1847D1000, v85, v86, "Process %d discovering extensions for process %d", v87, 0xEu);
      MEMORY[0x1865F56C0](v87, -1, -1);
    }

    v207 = 0;
    v90 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
    swift_beginAccess();
    v91 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v202, *(&v202 + 1), v203, v204);
    if (v83)
    {
      v92 = v83;
      v93 = v199;
      v94 = v199;
      v95 = v83;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v181 = v14;
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = v179;
        *(v98 + 4) = v94;
        *v99 = v93;
        *(v98 + 12) = 2114;
        v100 = v94;
        v101 = v92;
        v102 = _swift_stdlib_bridgeErrorToNSError();
        *(v98 + 14) = v102;
        v99[1] = v102;
        _os_log_impl(&dword_1847D1000, v96, v97, "Unable to resolve host app record for query: %{public}@ error: %{public}@", v98, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1865F56C0](v99, -1, -1);
        MEMORY[0x1865F56C0](v98, -1, -1);

        v103 = 0;
        v196 = 0;
        if (v192)
        {
          v192 = v36;
          v193 = 0;
          LODWORD(v189) = 1;
          v14 = v181;
          goto LABEL_98;
        }

        v193 = 0;
        v14 = v181;
      }

      else
      {

        v103 = 0;
        v196 = 0;
        if (v192)
        {
          v192 = v36;
          v193 = 0;
LABEL_97:
          LODWORD(v189) = 1;
          goto LABEL_98;
        }

        v193 = 0;
      }
    }

    else
    {
      v104 = v91;
      objc_opt_self();
      v105 = swift_dynamicCastObjCClass();
      if (!v105)
      {
      }

      swift_beginAccess();
      v207 = v105;
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();
      v108 = os_log_type_enabled(v106, v107);
      v196 = v105;
      v193 = 0;
      if (v108)
      {
        v109 = swift_slowAlloc();
        v189 = v90;
        v110 = v14;
        v111 = v109;
        v112 = swift_slowAlloc();
        v208[0] = v112;
        *v111 = v176;
        *&v205 = v105;
        v181 = v105;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19LSApplicationRecordCSgMd, &_sSo19LSApplicationRecordCSgMR);
        v113 = String.init<A>(describing:)();
        v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v208);
        v105 = v196;

        *(v111 + 4) = v115;
        _os_log_impl(&dword_1847D1000, v106, v107, "Resolved host app record: %{public}s", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v112);
        MEMORY[0x1865F56C0](v112, -1, -1);
        v116 = v111;
        v14 = v110;
        MEMORY[0x1865F56C0](v116, -1, -1);

        v117 = v181;
      }

      else
      {

        v117 = v105;
      }

      v118 = [v36 containingBundleRecord];
      if (v118)
      {
        v119 = v118;
        v120 = v14;
        v121 = v117;
        if (v105)
        {
          v122 = v121;
          v103 = static NSObject.== infix(_:_:)();
        }

        else
        {

          v103 = 0;
        }

        v14 = v120;
        if (v192)
        {
LABEL_96:
          v192 = v36;
          goto LABEL_97;
        }
      }

      else if (v105)
      {
        v103 = 0;
        if (v192)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v175 = v117;
        v103 = 1;
        if (v192)
        {
          goto LABEL_96;
        }
      }
    }

    LODWORD(v189) = 0;
    v123 = *&v199[v190];
    if (v123 != 1)
    {
      v124 = 0;
      if (!v123)
      {
        goto LABEL_78;
      }

      goto LABEL_103;
    }

    v192 = v36;
LABEL_98:
    v137 = v103;
    v138 = v14;
    outlined init with copy of _InnerAppExtensionIdentity?(v192 + v61, &v205);
    if (!v206)
    {
      goto LABEL_128;
    }

    outlined init with take of _InnerAppExtensionIdentity(&v205, v208);
    v139 = v209;
    v140 = v210;
    __swift_project_boxed_opaque_existential_1(v208, v209);
    v141 = *(v140 + 432);
    v142 = v196;
    v143 = v196;
    v144 = v141(v142, v139, v140);

    __swift_destroy_boxed_opaque_existential_0Tm(v208);
    v103 = v137;
    if ((v137 & ((v144 & 3) == 0)) != 0)
    {
      v124 = v144 | 2;
    }

    else
    {
      v124 = v144;
    }

    v14 = v138;
    v36 = v192;
    if (!*&v199[v190])
    {
LABEL_78:
      v125 = AuditToken.canHostOrDiscoverAnyExtension.getter(v202, *(&v202 + 1), v203, v204);
      if (v189 & 1) != 0 || (v199[v180])
      {
        a3 = v194;
        if ((v125 & 1) == 0)
        {
          if ((v124 & 2) == 0)
          {

LABEL_122:
            v12 = v198;
            a2 = v199;
            goto LABEL_12;
          }

LABEL_84:
          if ([v36 requiresHostToBeContainerApp])
          {
            v126 = v103;
            v127 = v36;
            v128 = Logger.logObject.getter();
            v129 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v128, v129))
            {
              v130 = v14;
              v131 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              *v131 = v179;
              *(v131 + 4) = v127;
              *v132 = v127;
              *(v131 + 12) = 1024;
              *(v131 + 14) = v126 & 1;
              v133 = v127;
              _os_log_impl(&dword_1847D1000, v128, v129, "Extension: %{public}@ must be contained in host app. hostIsContainer: %{BOOL}d", v131, 0x12u);
              outlined destroy of NSObject?(v132, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
              v134 = v132;
              a3 = v194;
              MEMORY[0x1865F56C0](v134, -1, -1);
              v135 = v131;
              v14 = v130;
              MEMORY[0x1865F56C0](v135, -1, -1);
            }

            if ((v126 & 1) == 0)
            {

              goto LABEL_122;
            }
          }
        }
      }

      else
      {
        a3 = v194;
        if ((v125 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      a2 = v199;
      v136 = *&v199[v184];
      if (v136 && ([v136 evaluateWithObject_] & 1) == 0 && *&a2[v184])
      {
      }

      else
      {
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v205, v36);
        swift_endAccess();
      }

LABEL_11:
      v12 = v198;
      goto LABEL_12;
    }

LABEL_103:
    if ((v124 & 2) != 0)
    {
      v159 = v36;
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.debug.getter();

      v162 = os_log_type_enabled(v160, v161);
      a3 = v194;
      if (v162)
      {
        v163 = swift_slowAlloc();
        v164 = v14;
        v165 = swift_slowAlloc();
        *v163 = v191;
        *(v163 + 4) = v159;
        *v165 = v159;
        v166 = v159;
        _os_log_impl(&dword_1847D1000, v160, v161, "Extension %{public}@ is enabled", v163, 0xCu);
        outlined destroy of NSObject?(v165, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        v167 = v165;
        v14 = v164;
        MEMORY[0x1865F56C0](v167, -1, -1);
        MEMORY[0x1865F56C0](v163, -1, -1);
        v159 = v160;
        v160 = v166;
      }

      v12 = v198;
      a2 = v199;

      v154 = v188;
      v155 = v182;
      v168 = *(v188 + v182);
      v157 = __OFADD__(v168, 1);
      v158 = v168 + 1;
      if (v157)
      {
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
      }
    }

    else
    {
      v145 = v36;
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.debug.getter();

      v148 = os_log_type_enabled(v146, v147);
      a3 = v194;
      if (v124)
      {
        if (v148)
        {
          v169 = swift_slowAlloc();
          v170 = v14;
          v171 = swift_slowAlloc();
          *v169 = v191;
          *(v169 + 4) = v145;
          *v171 = v145;
          v172 = v145;
          _os_log_impl(&dword_1847D1000, v146, v147, "Extension %{public}@ is disabled", v169, 0xCu);
          outlined destroy of NSObject?(v171, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
          v173 = v171;
          v14 = v170;
          MEMORY[0x1865F56C0](v173, -1, -1);
          MEMORY[0x1865F56C0](v169, -1, -1);
          v145 = v146;
          v146 = v172;
        }

        v12 = v198;
        a2 = v199;

        v154 = v188;
        v155 = v177;
        v174 = *(v188 + v177);
        v157 = __OFADD__(v174, 1);
        v158 = v174 + 1;
        if (v157)
        {
          goto LABEL_125;
        }
      }

      else
      {
        if (v148)
        {
          v149 = swift_slowAlloc();
          v150 = v14;
          v151 = swift_slowAlloc();
          *v149 = v191;
          *(v149 + 4) = v145;
          *v151 = v145;
          v152 = v145;
          _os_log_impl(&dword_1847D1000, v146, v147, "Extension %{public}@ is unelected", v149, 0xCu);
          outlined destroy of NSObject?(v151, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
          v153 = v151;
          v14 = v150;
          MEMORY[0x1865F56C0](v153, -1, -1);
          MEMORY[0x1865F56C0](v149, -1, -1);
          v145 = v146;
          v146 = v152;
        }

        v12 = v198;
        a2 = v199;

        v154 = v188;
        v155 = v178;
        v156 = *(v188 + v178);
        v157 = __OFADD__(v156, 1);
        v158 = v156 + 1;
        if (v157)
        {
          goto LABEL_124;
        }
      }
    }

    *(v154 + v155) = v158;

LABEL_12:
    NSFastEnumerationIterator.next()();
    if (!v217)
    {
      goto LABEL_123;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t AuditToken.canHostOrDiscoverAnyExtension.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = a3;
  v13 = a4;
  v4 = MEMORY[0x1865F36D0](0xD000000000000033, 0x80000001848C2B50);
  type metadata accessor for NSNumber();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = _EXAuditTokenGetEntitlementValue(&v11, v4, ObjCClassFromMetadata);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast() && (v10 & 1) != 0)
  {
    return 1;
  }

  v8 = MEMORY[0x1865F36D0](0xD000000000000031, 0x80000001848C2B90);
  v9 = _EXAuditTokenGetEntitlementValue(&v11, v8, ObjCClassFromMetadata);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return swift_dynamicCast() & v10;
}

id _EXAuditTokenGetEntitlementValue(_OWORD *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (a1 && v4)
  {
    v7 = objc_autoreleasePoolPush();
    [v5 UTF8String];
    v8 = xpc_copy_entitlement_for_token();
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v6 = 0;
    }

    objc_autoreleasePoolPop(v7);
  }

  return v6;
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
}

{
}

BOOL protocol witness for _InnerAppExtensionIdentity.targetsSystemExtensionPoint.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = *v0;
  v2 = [*v0 extensionPointRecord];
  v3 = [v2 extensionPointType];

  if (!v3)
  {
    return 1;
  }

  v4 = [v1 extensionPointRecord];
  v5 = [v4 extensionPointType];

  return v5 == 1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t AppExtensionProcess.Configuration.onInterruption.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void static _AppExtensionProcess.make(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _AppExtensionProcess.Configuration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _EXHostConfiguration(0);
  outlined init with copy of AppExtensionProcess._InstanceIdentifier(a1, v8, type metadata accessor for _AppExtensionProcess.Configuration);
  v9 = _EXHostConfiguration.__allocating_init(_:)(v8);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXHostConfiguration, off_1E6E4D218);
  if ([v9 isKindOfClass_])
  {
    v10 = objc_opt_self();
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    aBlock[4] = partial apply for closure #1 in static _AppExtensionProcess.make(with:completion:);
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _EXExtensionProcess?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_11;
    v13 = _Block_copy(aBlock);

    [v10 extensionProcessWithConfiguration:v11 completionHandler:v13];
    _Block_release(v13);
  }

  else
  {
    v14 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();

    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t sub_1847D6B54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t outlined init with copy of AppExtensionProcess._InstanceIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *_EXHostConfiguration.__allocating_init(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v31 - v4 + 16;
  outlined init with copy of _InnerAppExtensionIdentity(a1, v32);
  v6 = [objc_allocWithZone(_EXExtensionIdentity) init];
  outlined init with take of _InnerAppExtensionIdentity(v32, v31);
  v7 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v8 = v6;
  outlined assign with take of AppExtensionIdentity?(v31, v6 + v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  swift_endAccess();

  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = objc_allocWithZone(v1);
  v11 = objc_allocWithZone(type metadata accessor for _EXHostConfiguration(0));
  v12 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(v9, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v13 = *(a1 + 48);
  v14 = &v12[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  v15 = *&v12[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  v16 = *&v12[OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8];
  *v14 = *(a1 + 40);
  *(v14 + 1) = v13;
  v17 = v12;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v15, v16);

  v18 = *(a1 + 56);
  if (!v18)
  {
    goto LABEL_4;
  }

  type metadata accessor for _EXExtensionInstanceIdentifier(0);
  if ([v18 isKindOfClass_])
  {
    v19 = swift_dynamicCastClassUnconditional();
    v20 = *&v17[OBJC_IVAR____EXHostConfiguration_instanceIdentifier];
    *&v17[OBJC_IVAR____EXHostConfiguration_instanceIdentifier] = v19;

LABEL_4:
    *&v17[OBJC_IVAR____EXHostConfiguration_preferredLanguages] = *(a1 + 64);

    v21 = *(a1 + 88);
    v22 = &v17[OBJC_IVAR____EXHostConfiguration_sandboxProfileName];
    *v22 = *(a1 + 80);
    *(v22 + 1) = v21;

    *&v17[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables] = *(a1 + 72);

    v23 = *(a1 + 96);
    v24 = *&v17[OBJC_IVAR____EXHostConfiguration_launchPersona];
    *&v17[OBJC_IVAR____EXHostConfiguration_launchPersona] = v23;
    v25 = v23;

    *&v17[OBJC_IVAR____EXHostConfiguration_assertionAttributes] = *(a1 + 104);

    v17[OBJC_IVAR____EXHostConfiguration_requireInvalidation] = *(a1 + 112);
    v26 = type metadata accessor for _AppExtensionProcess.Configuration(0);
    outlined init with copy of NWApplicationID?(a1 + *(v26 + 52), v5);
    outlined destroy of AppExtensionProcess.Configuration(a1, type metadata accessor for _AppExtensionProcess.Configuration);
    v27 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined assign with take of AppExtensionIdentity?(v5, &v17[v27], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    swift_endAccess();
    return v17;
  }

  v29 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of NWApplicationID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AppExtensionProcess.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized static RBSDomainAttribute.defaultExtensionAttributes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1848BDC90;
  v1 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
  v2 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C6480);
  v3 = objc_opt_self();
  v4 = [v3 attributeWithDomain:v1 name:v2];

  *(v0 + 32) = v4;
  v5 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
  v6 = MEMORY[0x1865F36D0](0x654D656C646E6148, 0xED00006567617373);
  v7 = [v3 attributeWithDomain:v5 name:v6];

  *(v0 + 40) = v7;
  return v0;
}

uint64_t type metadata accessor for _EXHostConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for _EXHostConfiguration;
  if (!type metadata singleton initialization cache for _EXHostConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id specialized _EXHostConfiguration.init(with:instanceIdentifier:)(void *a1, void *a2)
{
  v5 = OBJC_IVAR____EXHostConfiguration__extensionIdentity;
  *&v2[OBJC_IVAR____EXHostConfiguration__extensionIdentity] = 0;
  v6 = &v2[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____EXHostConfiguration_instanceIdentifier;
  *&v2[OBJC_IVAR____EXHostConfiguration_instanceIdentifier] = 0;
  *&v2[OBJC_IVAR____EXHostConfiguration_preferredLanguages] = 0;
  *&v2[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables] = MEMORY[0x1E69E7CC8];
  v8 = &v2[OBJC_IVAR____EXHostConfiguration_sandboxProfileName];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____EXHostConfiguration_launchPersona] = 0;
  v9 = OBJC_IVAR____EXHostConfiguration_assertionAttributes;
  *&v2[v9] = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  v2[OBJC_IVAR____EXHostConfiguration_requireInvalidation] = 0;
  v10 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
  v11 = type metadata accessor for NWApplicationID();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v12 = *&v2[v5];
  *&v2[v5] = a1;
  v13 = a1;

  v14 = *&v2[v7];
  *&v2[v7] = a2;
  v15 = a2;

  v17.receiver = v2;
  v17.super_class = type metadata accessor for _EXHostConfiguration(0);
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t outlined assign with take of AppExtensionIdentity?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for AppExtensionPoint.Monitor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for _EXExtensionInstanceIdentifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for _EXExtensionInstanceIdentifier;
  if (!type metadata singleton initialization cache for _EXExtensionInstanceIdentifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t type metadata accessor for _EXExtensionIdentity()
{
  result = lazy cache variable for type metadata for _EXExtensionIdentity;
  if (!lazy cache variable for type metadata for _EXExtensionIdentity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _EXExtensionIdentity);
  }

  return result;
}

uint64_t _AppExtensionIdentity.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for _EXExtensionIdentity();
  if ([a1 isKindOfClass_])
  {
    v4 = OBJC_IVAR____EXExtensionIdentity__inner;
    swift_beginAccess();
    outlined init with copy of _InnerAppExtensionIdentity?(&a1[v4], &v7);
    if (v8)
    {

      return outlined init with take of _InnerAppExtensionIdentity(&v7, a2);
    }

    __break(1u);
  }

  v6 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

__n128 _AppExtensionProcess.Configuration.init(appExtension:onInterruption:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = MEMORY[0x1E69E7CC8];
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  *(a4 + 112) = 0;
  v8 = *(type metadata accessor for _AppExtensionProcess.Configuration(0) + 52);
  v9 = type metadata accessor for NWApplicationID();
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  result = *a1;
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t _EXExtensionIdentity.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  outlined init with copy of UUID?(a1, v18, &_sypSgMd, &_sypSgMR);
  if (!v19)
  {
    outlined destroy of NSObject?(v18, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for _EXExtensionIdentity();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  v11 = v17[1];
  v12 = [v2 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [v11 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return v14 & 1;
}

char *specialized _EXLaunchConfiguration.__allocating_init(_:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20[-v4];
  v6 = *&a1[OBJC_IVAR____EXHostConfiguration__extensionIdentity];
  if (v6)
  {
    v7 = objc_allocWithZone(type metadata accessor for _EXLaunchConfiguration(0));
    v8 = _EXLaunchConfiguration.init(extensionIdentity:)(v6);
    v9 = *&a1[OBJC_IVAR____EXHostConfiguration_instanceIdentifier];
    v10 = *&v8[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier];
    *&v8[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier] = v9;
    v11 = v8;
    v12 = v9;

    *&v11[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages] = *&a1[OBJC_IVAR____EXHostConfiguration_preferredLanguages];

    v13 = *&a1[OBJC_IVAR____EXHostConfiguration_sandboxProfileName + 8];
    v14 = &v11[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName];
    *v14 = *&a1[OBJC_IVAR____EXHostConfiguration_sandboxProfileName];
    *(v14 + 1) = v13;

    *&v11[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables] = *&a1[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables];

    v15 = *&a1[OBJC_IVAR____EXHostConfiguration_launchPersona];
    v16 = *&v11[OBJC_IVAR____EXLaunchConfiguration_launchPersona];
    *&v11[OBJC_IVAR____EXLaunchConfiguration_launchPersona] = v15;
    v17 = v15;

    *&v11[OBJC_IVAR____EXLaunchConfiguration_assertionAttributes] = *&a1[OBJC_IVAR____EXHostConfiguration_assertionAttributes];

    v18 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined init with copy of UUID?(&a1[v18], v5, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);

    v19 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined assign with take of AppExtensionIdentity?(v5, &v11[v19], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    swift_endAccess();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _EXLaunchConfiguration.init(extensionIdentity:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier] = 0;
  *&v1[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages] = 0;
  v3 = &v1[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____EXLaunchConfiguration_launchPersona] = 0;
  v4 = OBJC_IVAR____EXLaunchConfiguration_assertionAttributes;
  *&v1[v4] = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  v5 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
  v6 = type metadata accessor for NWApplicationID();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _EXLaunchConfiguration(0);
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _EXLaunchConfiguration.hash.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - v3;
  v5 = *(v0 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  if (v5)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v6 = one-time initialization token for _defaultInstanceIdentifier;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    if (static NSObject.== infix(_:_:)())
    {

      v8 = type metadata accessor for UUID();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    }

    else
    {
      v10 = OBJC_IVAR____EXExtensionInstanceIdentifier_identifier;
      v11 = type metadata accessor for UUID();
      v12 = *(v11 - 8);
      (*(v12 + 16))(v4, &v7[v10], v11);

      (*(v12 + 56))(v4, 0, 1, v11);
    }

    lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v9 = Optional<A>.hashValue.getter();
    outlined destroy of NSObject?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v9 = Int.hashValue.getter();
  }

  v13 = *(v1 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v14 = NSObject.hashValue.getter();

  return v14 ^ v9;
}

Class @objc _EXExtensionIdentity.uniqueIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(a1 + v7, &v13, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v14)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v13, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v10 + 56))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v11.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v6, v3);

    return v11.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for _InnerAppExtensionIdentity.uniqueIdentifier.getter in conformance AppExtensionIdentity.RecordIdentity(uint64_t a1, uint64_t a2, SEL *a3, void (*a4)(void))
{
  v6 = [*v4 *a3];
  a4();
}

_DWORD *specialized static _EXExtensionProcess.extensionProcess(configuration:)(void *a1)
{
  type metadata accessor for _EXHostConfiguration(0);
  if ([a1 isKindOfClass_])
  {
    v3 = a1;
    v4 = specialized _EXLaunchConfiguration.__allocating_init(_:)(v3);
    if (one-time initialization token for sharedInstance != -1)
    {
      swift_once();
    }

    v5 = _EXExtensionProcessMannger.process(configuration:)(v4);
    if (!v1)
    {
      v21 = v5;
      v3 = [objc_allocWithZone(_EXExtensionProcess) initWithProcessHandle:v5 configuration:v3];

      v4 = v21;
LABEL_13:

      return v3;
    }

    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.general);
    v7 = v3;
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {

      goto LABEL_12;
    }

    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v3 = 136446466;
    v12 = *(v7 + OBJC_IVAR____EXHostConfiguration__extensionIdentity);
    if (v12)
    {
      v13 = v12;

      v14 = [v13 bundleIdentifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v24);

      *(v3 + 1) = v18;
      *(v3 + 6) = 2114;
      v19 = v1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 14) = v20;
      *v11 = v20;
      _os_log_impl(&dword_1847D1000, v9, v10, "Failed to create extensionProcess for extension '%{public}s' error: %{public}@", v3, 0x16u);
      outlined destroy of NSObject?(v11);
      MEMORY[0x1865F56C0](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x1865F56C0](v23, -1, -1);
      MEMORY[0x1865F56C0](v3, -1, -1);

LABEL_12:
      swift_willThrow();
      goto LABEL_13;
    }

    __break(1u);
  }

  [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char **_EXExtensionProcessMannger.process(configuration:)(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____EXExtensionProcessMannger_processExtensionMapLock);
  os_unfair_lock_lock(v4 + 4);
  v5 = *(v1 + OBJC_IVAR____EXExtensionProcessMannger_processExtensionMap);
  v6 = &selRef_initWithIdentifier_platform_error_;
  v7 = [v5 objectForKey_];
  v8 = v7;
  os_unfair_lock_unlock(v4 + 4);
  if (v8)
  {

    if (one-time initialization token for launch != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.launch);
    v6 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      *(v12 + 4) = v6;
      *v13 = v7;
      v6 = v6;
      _os_log_impl(&dword_1847D1000, v10, v11, "Existing process %{public}@ is valid, returning it.", v12, 0xCu);
      outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v13, -1, -1);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }

    goto LABEL_31;
  }

  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.launch);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = v5;
    v20 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v20 = a1;
    v21 = v15;
    _os_log_impl(&dword_1847D1000, v16, v17, "Launching process with config: %{public}@", v18, 0xCu);
    outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    v22 = v20;
    v5 = v19;
    v6 = &selRef_initWithIdentifier_platform_error_;
    MEMORY[0x1865F56C0](v22, -1, -1);
    MEMORY[0x1865F56C0](v18, -1, -1);
  }

  v23 = OBJC_IVAR____EXLaunchConfiguration__extensionIdentity;
  if ([*&v15[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity] launchesViaExtensionKitService])
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v24 = _EXServiceClient.launch(with:)(v15);
    if (!v2)
    {
LABEL_19:
      v10 = v24;
      os_unfair_lock_lock(v4 + 4);
      v25 = [v5 objectForKey_];
      if (v25)
      {
        v26 = v25;
        v27 = OBJC_IVAR____EXExtensionProcessHandle_invalidationLock;
        os_unfair_lock_lock((*&v25[OBJC_IVAR____EXExtensionProcessHandle_invalidationLock] + 16));
        v28 = *&v26[OBJC_IVAR____EXExtensionProcessHandle_assertion];
        if (v28)
        {
          v29 = [v28 isValid];
          os_unfair_lock_unlock((*&v26[v27] + 16));
          if (v29)
          {
            v30 = v26;
            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              *v33 = 138543362;
              *(v33 + 4) = v30;
              *v34 = v26;
              v35 = v30;
              _os_log_impl(&dword_1847D1000, v31, v32, "New process was created in a race and is valid, returning existing process: %{public}@", v33, 0xCu);
              outlined destroy of NSObject?(v34, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
              MEMORY[0x1865F56C0](v34, -1, -1);
              MEMORY[0x1865F56C0](v33, -1, -1);
            }

LABEL_30:
            v6 = v30;
            os_unfair_lock_unlock(v4 + 4);

LABEL_31:
            v43 = v8;

            return v6;
          }
        }

        else
        {
          os_unfair_lock_unlock((*&v26[v27] + 16));
        }
      }

      v36 = v5;
      v37 = v10;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      log = v38;
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138543362;
        *(v40 + 4) = v37;
        *v41 = v10;
        v42 = v37;
        _os_log_impl(&dword_1847D1000, log, v39, "Created new process %{public}@.", v40, 0xCu);
        outlined destroy of NSObject?(v41, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v41, -1, -1);
        MEMORY[0x1865F56C0](v40, -1, -1);
      }

      swift_unknownObjectWeakAssign();
      v30 = v37;
      [v36 setObject:v30 forKey:v15];
      goto LABEL_30;
    }
  }

  else if (![*&v15[v23] requiresNetworkAttribution] || (specialized _EXExtensionProcessMannger.applyNetworkApplicationID(to:)(v15), !v2))
  {
    [objc_opt_self() auditTokenForCurrentProcess];
    v24 = specialized static _EXExtensionProcessMannger.launch(configuration:hostAuditToken:)(v15, v46, v47, v48, v49);
    if (!v2)
    {
      goto LABEL_19;
    }
  }

  return v6;
}

uint64_t _EXExtensionInstanceIdentifier.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of UUID?(a1, v5, &_sypSgMd, &_sypSgMR);
  if (!v6)
  {
    outlined destroy of NSObject?(v5, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  type metadata accessor for _EXExtensionInstanceIdentifier(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v2 = 0;
    return v2 & 1;
  }

  if (v4 == v1)
  {

    v2 = 1;
  }

  else
  {
    v2 = static UUID.== infix(_:_:)();
  }

  return v2 & 1;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter(uint64_t a1)
{
  if (specialized _InnerAppExtensionIdentity.requiresEnhancedSecurity.getter(a1))
  {
    return 1;
  }

  if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C6A80), (v2 & 1) != 0))
  {
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t specialized _InnerAppExtensionIdentity.groupIdentifier.getter(void *a1)
{
  if (!*(AppExtensionIdentity.RecordIdentity.attributes.getter(a1) + 16))
  {
    goto LABEL_18;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C6AE0);
  if ((v1 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(0x6369767265535845, 0xED00006570795465), (v2 & 1) == 0))
  {

    goto LABEL_11;
  }

  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    v3 = 0xE000000000000000;
    goto LABEL_12;
  }

  v4 = v19;
  v3 = v20;
  if (v19 == 0x656C646E7542 && v20 == 0xE600000000000000)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v5._countAndFlagsBits = 0x3A70756F7247, v5._object = 0xE600000000000000, !String.hasPrefix(_:)(v5)))
  {
LABEL_17:

LABEL_18:

    return 0;
  }

  v6 = String.count.getter();
  v7 = specialized Collection.dropFirst(_:)(v6, v4, v3);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x1865F3760](v7, v9, v11, v13);
  v16 = v15;

  if (v14 == v19 && v16 == v20)
  {

    return v19;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_18;
  }

  return result;
}

char *_EXServiceClient.launch(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  v4 = _EXServiceClient.launchConnection.getter();
  v28 = partial apply for closure #1 in _EXServiceClient.launch(with:);
  v29 = v2;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v27 = &block_descriptor_209;
  v5 = _Block_copy(&aBlock);

  v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v5);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation24_EXLaunchServiceProtocol_pMd, &_s19ExtensionFoundation24_EXLaunchServiceProtocol_pMR);
  if (swift_dynamicCast())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v7;
    v28 = partial apply for closure #2 in _EXServiceClient.launch(with:);
    v29 = v8;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v26 = thunk for @escaping @callee_guaranteed (@guaranteed _EXExtensionProcessHandle?, @guaranteed NSError?) -> ();
    v27 = &block_descriptor_218;
    v9 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v24 prepareWithLaunchConfiguration:a1 reply:v9];
    _Block_release(v9);
    swift_beginAccess();
    v10 = *(v7 + 16);
    if (v10)
    {
      v11 = *&v10[OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle];
      v12 = v10;
      [v11 auditToken];
      v23 = aBlock;
      v13 = v26;
      v14 = v27;
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      v28 = partial apply for closure #3 in _EXServiceClient.launch(with:);
      v29 = v15;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v26 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v27 = &block_descriptor_224;
      v16 = _Block_copy(&aBlock);
      v17 = v12;

      aBlock = v23;
      v26 = v13;
      v27 = v14;
      [v24 invalidateLaunchAssertionsForExtensionAuditToken:&aBlock reply:v16];
      _Block_release(v16);

      swift_unknownObjectRelease_n();

      return v17;
    }

    swift_beginAccess();
    if (*v3)
    {
      v21 = *v3;
      v22 = _convertErrorToNSError(_:)();
    }

    else
    {
      v22 = 0;
    }

    [objc_opt_self() _EX_errorWithCode_underlyingError_];

    swift_willThrow();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_beginAccess();
    if (*v3)
    {
      v19 = *v3;
      v20 = _convertErrorToNSError(_:)();
    }

    else
    {
      v20 = 0;
    }

    [objc_opt_self() _EX_errorWithCode_underlyingError_];

    swift_willThrow();
  }
}

uint64_t sub_1847D978C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id _EXServiceClient.launchConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &aBlock - v2;
  v4 = *(v0 + OBJC_IVAR____EXServiceClient_connectionLock);
  os_unfair_lock_lock(v4 + 4);
  v5 = OBJC_IVAR____EXServiceClient__launchConnection;
  v6 = *(v0 + OBJC_IVAR____EXServiceClient__launchConnection);
  if (v6)
  {
    v7 = v6;
    os_unfair_lock_unlock(v4 + 4);
    return v7;
  }

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  v11 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3B70);
  isa = 0;
  if ((*(v10 + 48))(v3, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v3, v9);
  }

  v13 = MEMORY[0x1865F36D0](0x68636E75614CLL, 0xE600000000000000);
  v14 = [objc_opt_self() endpointForServiceName:v11 oneshot:isa service:v13 instance:0];

  if (!v14)
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.general);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136446466;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001848C3B70, &aBlock);
      *(v27 + 12) = 2082;
      *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x68636E75614CLL, 0xE600000000000000, &aBlock);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v28, -1, -1);
      MEMORY[0x1865F56C0](v27, -1, -1);
    }

    v23 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) init];
    goto LABEL_14;
  }

  v15 = objc_opt_self();
  v33 = destructiveProjectEnumData for Platform;
  v34 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v32 = &block_descriptor_227;
  v16 = _Block_copy(&aBlock);

  v17 = [v15 NSXPCConnectionWithEndpoint:v14 configurator:v16];
  _Block_release(v16);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_16;
  }

  if (one-time initialization token for launchServiceInterface != -1)
  {
LABEL_16:
    swift_once();
  }

  [v17 setRemoteObjectInterface_];
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = partial apply for closure #2 in _EXServiceClient.launchConnection.getter;
  v34 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_231;
  v19 = _Block_copy(&aBlock);

  [v17 setInterruptionHandler_];
  _Block_release(v19);
  v20 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = partial apply for closure #3 in _EXServiceClient.launchConnection.getter;
  v34 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_235;
  v21 = _Block_copy(&aBlock);

  [v17 setInvalidationHandler_];
  _Block_release(v21);
  v22 = *(v0 + v5);
  *(v0 + v5) = v17;
  v23 = v17;

  [v23 activate];
LABEL_14:
  os_unfair_lock_unlock(v4 + 4);
  return v23;
}

uint64_t sub_1847D9DCC()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id _EXExtensionInstanceIdentifier.init(instanceIdentifier:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  outlined init with copy of UUID?(a1, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    UUID.init()();
    (*(v7 + 32))(&v1[OBJC_IVAR____EXExtensionInstanceIdentifier_identifier], v10, v6);
  }

  else
  {
    v13 = *(v7 + 32);
    v13(v12, v5, v6);
    v13(&v1[OBJC_IVAR____EXExtensionInstanceIdentifier_identifier], v12, v6);
  }

  v14 = type metadata accessor for _EXExtensionInstanceIdentifier(0);
  v17.receiver = v1;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  outlined destroy of NSObject?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v15;
}

unint64_t type metadata accessor for RBSDomainAttribute()
{
  result = lazy cache variable for type metadata for RBSDomainAttribute;
  if (!lazy cache variable for type metadata for RBSDomainAttribute)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBSDomainAttribute);
  }

  return result;
}

uint64_t sub_1847DA3C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t specialized static _EXExtensionProcess.extensionProcess(configuration:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for _extensionProcessBackgroundQueue != -1)
  {
    swift_once();
  }

  v17[1] = static _EXExtensionProcess._extensionProcessBackgroundQueue;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  aBlock[4] = partial apply for closure #1 in static _EXExtensionProcess.extensionProcess(configuration:completionHandler:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_7;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1865F3C00](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_1847DA6F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void closure #1 in static _EXExtensionProcess.extensionProcess(configuration:completionHandler:)(void (*a1)(id, void), uint64_t a2, void *a3)
{
  v4 = specialized static _EXExtensionProcess.extensionProcess(configuration:)(a3);
  a1(v4, 0);
}

BOOL _EXLaunchConfiguration.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of UUID?(a1, v7, &_sypSgMd, &_sypSgMR);
  if (!v8)
  {
    outlined destroy of NSObject?(v7, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  type metadata accessor for _EXLaunchConfiguration(0);
  if ((swift_dynamicCast() & 1) == 0 || (v6, v6 != v1))
  {
LABEL_6:
    outlined init with copy of UUID?(a1, v7, &_sypSgMd, &_sypSgMR);
    if (v8)
    {
      type metadata accessor for _EXLaunchConfiguration(0);
      if (swift_dynamicCast())
      {
        v3 = _EXLaunchConfiguration.isLaunchConfigurationEqual(_:)(v6, v4);

        return v3;
      }
    }

    else
    {
      outlined destroy of NSObject?(v7, &_sypSgMd, &_sypSgMR);
    }

    return 0;
  }

  return 1;
}

BOOL _EXLaunchConfiguration.isLaunchConfigurationEqual(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v16 = *(a1 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v17 = *(v2 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v18 = v16;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v20 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = one-time initialization token for _defaultInstanceIdentifier;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  if (static NSObject.== infix(_:_:)())
  {

LABEL_7:
    v23 = v41;
    v24 = *(v41 + 56);
    v24(v15, 1, 1, v4);
    goto LABEL_9;
  }

  v25 = v41;
  (*(v41 + 16))(v15, v22 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v4);

  v23 = v25;
  v24 = *(v25 + 56);
  v24(v15, 0, 1, v4);
LABEL_9:
  v26 = *(a1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  if (v26)
  {
    v27 = one-time initialization token for _defaultInstanceIdentifier;
    v28 = v26;
    if (v27 != -1)
    {
      swift_once();
    }

    if (static NSObject.== infix(_:_:)())
    {
      v29 = 1;
    }

    else
    {
      (*(v23 + 16))(v13, v28 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v4);
      v29 = 0;
    }
  }

  else
  {
    v29 = 1;
  }

  v24(v13, v29, 1, v4);
  v30 = *(v40 + 48);
  outlined init with copy of UUID?(v15, v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of UUID?(v13, &v7[v30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v31 = *(v23 + 48);
  if (v31(v7, 1, v4) != 1)
  {
    v32 = v39;
    outlined init with copy of UUID?(v7, v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v31(&v7[v30], 1, v4) != 1)
    {
      v34 = v38;
      (*(v23 + 32))(v38, &v7[v30], v4);
      lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v35 = v32;
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v23 + 8);
      v37(v34, v4);
      outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v37(v35, v4);
      outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return (v36 & 1) != 0;
    }

    outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v23 + 8))(v32, v4);
LABEL_22:
    outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v31(&v7[v30], 1, v4) != 1)
  {
    goto LABEL_22;
  }

  outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return 1;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresEnhancedSecurity.getter(uint64_t a1)
{
  if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C6AA0), (v1 & 1) != 0))
  {
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

Swift::Void __swiftcall _EXLaunchConfiguration.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for NWApplicationID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v53 - v8;
  v9 = *(v1 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v10 = MEMORY[0x1865F36D0](0x6F69736E65747865, 0xE90000000000006ELL);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  v12 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C3550);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName);

    v15 = MEMORY[0x1865F36D0](v14, v13);
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C35E0);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages))
  {

    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  v18 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C35A0);
  [(objc_class *)with.super.isa encodeObject:v17.super.isa forKey:v18];
  swift_unknownObjectRelease();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = MEMORY[0x1865F36D0](0xD00000000000001ELL, 0x80000001848C35C0);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v20];

  v21 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_launchPersona);
  v22 = MEMORY[0x1865F36D0](0x655068636E75616CLL, 0xED0000616E6F7372);
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

  v58 = v1;
  v23 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_assertionAttributes);
  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24)
  {
    v60[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v24 < 0)
    {
      __break(1u);
      return;
    }

    v53 = v6;
    v54 = v4;
    v55 = with.super.isa;
    v56 = v3;
    v25 = 0;
    v59 = v23 & 0xC000000000000001;
    do
    {
      if (v59)
      {
        v30 = MEMORY[0x1865F3F40](v25, v23);
      }

      else
      {
        v30 = *(v23 + 8 * v25 + 32);
      }

      v31 = v30;
      v32 = type metadata accessor for _EXDomainAttribute();
      v33 = objc_allocWithZone(v32);
      v34 = &v33[OBJC_IVAR____EXDomainAttribute_sourceEnvironment];
      *v34 = 0;
      v34[1] = 0;
      v35 = [v31 domain];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = &v33[OBJC_IVAR____EXDomainAttribute_domain];
      *v39 = v36;
      v39[1] = v38;
      v40 = [v31 name];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = &v33[OBJC_IVAR____EXDomainAttribute_name];
      *v44 = v41;
      v44[1] = v43;
      v45 = [v31 sourceEnvironment];
      if (v45)
      {
        v26 = v45;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      ++v25;
      *v34 = v27;
      v34[1] = v29;

      v61.receiver = v33;
      v61.super_class = v32;
      objc_msgSendSuper2(&v61, sel_init);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v24 != v25);

    with.super.isa = v55;
    v3 = v56;
    v6 = v53;
    v4 = v54;
  }

  type metadata accessor for _EXDomainAttribute();
  v46 = Array._bridgeToObjectiveC()().super.isa;

  v47 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C3610);
  [(objc_class *)with.super.isa encodeObject:v46 forKey:v47];

  v48 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
  v49 = v58;
  swift_beginAccess();
  v50 = v49 + v48;
  v51 = v57;
  outlined init with copy of UUID?(v50, v57, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  if ((*(v4 + 48))(v51, 1, v3))
  {
    outlined destroy of NSObject?(v51, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  }

  else
  {
    (*(v4 + 16))(v6, v51, v3);
    outlined destroy of NSObject?(v51, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v52._countAndFlagsBits = 0xD000000000000014;
    v52._object = 0x80000001848C3650;
    NWApplicationID.encode(with:forKey:)(with, v52);
    (*(v4 + 8))(v6, v3);
  }
}

void specialized _InnerAppExtensionIdentity.encode(to:)(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for UUID();
  v6 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a2;
  if ((specialized _InnerAppExtensionIdentity.requiresPerHostEnablement.getter(a2) & 1) != 0 && (objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) != 0) && (v10 = [v9 connection]) != 0)
  {
    v11 = v10;
    [v10 auditToken];
    v12 = v98;
    v13 = v99;
    v15 = v100;
    v14 = v101;

    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
    v90 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v12, v13, v15, v14);
    objc_opt_self();
    v91 = swift_dynamicCastObjCClass();
    v16 = v91;
    if (!v91)
    {
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [a2 extensionPointRecord];
  v18 = [v17 identifier];

  if (!v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = MEMORY[0x1865F36D0](v19);
  }

  v20 = MEMORY[0x1865F36D0](0xD000000000000018, 0x80000001848C3400);
  [a1 encodeObject:v18 forKey:v20];

  v21 = [a2 extensionPointRecord];
  [v21 extensionPointType];

  isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  v23 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C3E70);
  [a1 encodeObject:isa forKey:v23];

  v24 = [a2 bundleIdentifier];
  if (!v24)
  {
    goto LABEL_31;
  }

  v25 = v24;
  v93 = v16;
  v26 = MEMORY[0x1865F36D0](0xD000000000000010, 0x80000001848C4450);
  [a1 encodeObject:v25 forKey:v26];

  v27 = [a2 bundleVersion];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v31 = 0xE100000000000000;
    v29 = 49;
  }

  v32 = MEMORY[0x1865F36D0](v29, v31);

  v33 = MEMORY[0x1865F36D0](0x6556656C646E7562, 0xED00006E6F697372);
  [a1 encodeObject:v32 forKey:v33];

  v34 = [a2 containingBundleRecord];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 persistentIdentifier];

    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    v40 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v37, v39);
    v41 = MEMORY[0x1865F36D0](0xD000000000000020, 0x80000001848C6DB0);
    [a1 encodeObject:v40 forKey:v41];
  }

  v42 = [a2 platform];
  if ((v42 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = MEMORY[0x1865F36D0](0x6D726F6674616C70, 0xE800000000000000);
  [a1 encodeInt32:v43 forKey:v44];

  v45 = [a2 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v94);
  v47 = MEMORY[0x1865F36D0](0xD000000000000010, 0x80000001848C5DC0);
  [a1 encodeObject:v46 forKey:v47];

  v48 = [a2 localizedName];
  if (!v48)
  {
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = MEMORY[0x1865F36D0](v49);
  }

  v50 = MEMORY[0x1865F36D0](0x657A696C61636F6CLL, 0xED0000656D614E64);
  [a1 encodeObject:v48 forKey:v50];

  v51 = [a2 containingBundleRecord];
  if (v51 && (v52 = v51, v53 = [v51 developerType], v52, v53 != 1))
  {
    v55 = 0;
    v54 = 0xE000000000000000;
  }

  else
  {
    v54 = 0xE500000000000000;
    v55 = 0x656C707041;
  }

  v56 = MEMORY[0x1865F36D0](v55, v54);

  v57 = MEMORY[0x1865F36D0](0x65706F6C65766564, 0xED0000656D614E72);
  [a1 encodeObject:v56 forKey:v57];

  v58 = [a2 URL];
  v59 = v95;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v60);
  v62 = v61;
  (*(v96 + 8))(v59, v97);
  v63 = MEMORY[0x1865F36D0](7107189, 0xE300000000000000);
  [a1 encodeObject:v62 forKey:v63];

  protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  v64 = Dictionary._bridgeToObjectiveC()().super.isa;

  v65 = MEMORY[0x1865F36D0](0x69746369446B6473, 0xED00007972616E6FLL);
  [a1 encodeObject:v64 forKey:v65];

  AppExtensionIdentity.RecordIdentity.extensionDictionary.getter(a2);
  v66 = Dictionary._bridgeToObjectiveC()().super.isa;

  v67 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C60D0);
  [a1 encodeObject:v66 forKey:v67];

  AppExtensionIdentity.RecordIdentity.attributes.getter(a2);
  v68 = Dictionary._bridgeToObjectiveC()().super.isa;

  v69 = MEMORY[0x1865F36D0](0x7475626972747461, 0xEA00000000007365);
  [a1 encodeObject:v68 forKey:v69];

  protocol witness for _InnerAppExtensionIdentity.entitlements.getter in conformance AppExtensionIdentity.RecordIdentity();
  v70 = Dictionary._bridgeToObjectiveC()().super.isa;

  v71 = MEMORY[0x1865F36D0](0x6D656C7469746E65, 0xEC00000073746E65);
  [a1 encodeObject:v70 forKey:v71];

  v72 = [objc_opt_self() sharedInstance];
  v73 = v93;
  v74 = AppExtensionIdentity.RecordIdentity.extensionSettingsKey(for:)(v93, a2);
  v75 = MEMORY[0x1865F36D0](v74);

  [v72 userElectionForExtensionKey_];

  v76 = UInt8._bridgeToObjectiveC()().super.super.isa;
  v77 = MEMORY[0x1865F36D0](0x63656C4572657375, 0xEC0000006E6F6974);
  [a1 encodeObject:v76 forKey:v77];

  AppExtensionIdentity.RecordIdentity.defaultUserElection.getter(a2);
  v78 = UInt8._bridgeToObjectiveC()().super.super.isa;
  v79 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C6110);
  [a1 encodeObject:v78 forKey:v79];

  v80 = [a2 containingBundleRecord];
  if (v80)
  {
    v81 = v80;
    v82 = [v80 developerType];

    v83 = v82 == 1;
  }

  else
  {
    v83 = 1;
  }

  v84 = MEMORY[0x1865F36D0](0xD000000000000011, 0x80000001848C6D90);
  [a1 encodeBool:v83 forKey:v84];

  v85 = [a2 extensionPointRecord];
  LODWORD(v84) = [v85 extensionPointType];

  if (v84)
  {
    v86 = [a2 extensionPointRecord];
    v87 = [v86 extensionPointType];

    v88 = v87 == 1;
  }

  else
  {
    v88 = 1;
  }

  v89 = MEMORY[0x1865F36D0](0xD00000000000001BLL, 0x80000001848C5F40);
  [a1 encodeBool:v88 forKey:v89];
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id AppExtensionIdentity.RecordIdentity.extensionSettingsKey(for:)(id a1, void *a2)
{
  if (specialized _InnerAppExtensionIdentity.requiresPerHostEnablement.getter(a2))
  {
    v4 = [a2 extensionPointRecord];
    v5 = [v4 extensionPointType];

    if (v5 && (v6 = [a2 extensionPointRecord], v7 = objc_msgSend(v6, sel_extensionPointType), v6, v7 != 1))
    {
      v12 = [a2 extensionPointRecord];
      a1 = [v12 parentAppRecord];
    }

    else
    {
      v8 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v13 = swift_allocObject();
    v14 = v13;
    *(v13 + 16) = xmmword_1848BE160;
    if (a1)
    {
      v15 = [a1 bundleIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xE000000000000000;
      }

      v14[4] = v17;
      v14[5] = v19;
      v22 = [a1 teamIdentifier];
      if (v22)
      {
        v23 = v22;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v24;
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0xE000000000000000;
    }

    v14[6] = v20;
    v14[7] = v21;
    v25 = [a2 extensionPointRecord];
    v26 = [v25 identifier];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v14[8] = v27;
    v14[9] = v29;
    v30 = [a2 bundleIdentifier];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    v14[10] = v32;
    v14[11] = v34;
    v35 = [a2 teamIdentifier];
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v14[12] = v37;
    v14[13] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v40 = BidirectionalCollection<>.joined(separator:)();

    return v40;
  }

  else
  {
    result = [a2 bundleIdentifier];
    if (result)
    {
      v10 = result;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v11;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t _EXLaunchConfiguration.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(28);

  v2 = [*(v0 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity) bundleIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1865F37A0](v3, v5);

  MEMORY[0x1865F37A0](0x636E6174736E6920, 0xEE00203A44492065);
  v6 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation30_EXExtensionInstanceIdentifierCSgMd, &_s19ExtensionFoundation30_EXExtensionInstanceIdentifierCSgMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1865F37A0](v7);

  return 0x4449656C646E7562;
}

unint64_t AppExtensionIdentity.RecordIdentity.extensionDictionary.getter(void *a1)
{
  v1 = [a1 infoDictionary];
  v2 = MEMORY[0x1865F36D0](0x736E65747845534ELL, 0xEB000000006E6F69);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

unint64_t protocol witness for _InnerAppExtensionIdentity.entitlements.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = [v1 entitlements];
  v4 = [v2 ditionaryFromPropertyList_];

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

  return v6;
}

id specialized _EXLaunchConfiguration.init(coder:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v55 - v5;
  v6 = OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier;
  *&v2[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier] = 0;
  v7 = OBJC_IVAR____EXLaunchConfiguration_preferredLanguages;
  *&v2[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages] = 0;
  v8 = &v2[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables;
  *&v2[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables] = MEMORY[0x1E69E7CC8];
  v10 = OBJC_IVAR____EXLaunchConfiguration_launchPersona;
  *&v2[OBJC_IVAR____EXLaunchConfiguration_launchPersona] = 0;
  v11 = OBJC_IVAR____EXLaunchConfiguration_assertionAttributes;
  v12 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  v57 = v11;
  *&v2[v11] = v12;
  v13 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
  v14 = type metadata accessor for NWApplicationID();
  v15 = *(*(v14 - 8) + 56);
  v58 = v13;
  v15(&v2[v13], 1, 1, v14);
  type metadata accessor for _EXExtensionIdentity();
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
    goto LABEL_34;
  }

  *&v2[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity] = result;
  type metadata accessor for _EXExtensionInstanceIdentifier(0);
  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  v18 = *&v2[v6];
  *&v2[v6] = v17;

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v60 = a1;
  v19 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v19)
  {
    v65 = 0;
    v66 = 0;
    v20 = v19;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v22 = v65;
    v21 = v66;
    if (!v66)
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  *v8 = v22;
  *(v8 + 1) = v21;

  v23 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (v23)
  {
    v65 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSStringCGMd, &_sSaySo8NSStringCGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v24 = swift_dynamicCast();
    v25 = v63;
    if (!v24)
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  *&v2[v7] = v25;

  v26 = NSCoder.decodeDictionary<A, B>(withKeyClass:objectClass:forKey:)();
  if (v26 && (v65 = v26, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo8NSStringCABGMd, &_sSDySo8NSStringCABGMR), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR), (swift_dynamicCast() & 1) != 0))
  {
    v27 = v63;
  }

  else
  {
    v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *&v2[v9] = v27;

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXPersona, off_1E6E4D230);
  v28 = NSCoder.decodeObject<A>(of:forKey:)();
  v29 = *&v2[v10];
  *&v2[v10] = v28;

  type metadata accessor for _EXDomainAttribute();
  v30 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (!v30)
  {
    v51 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
LABEL_32:
    *&v2[v57] = v51;

    v52 = v59;
    static NWApplicationID.decode(from:forKey:)(v59);
    v53 = v58;
    swift_beginAccess();
    outlined assign with take of AppExtensionIdentity?(v52, &v2[v53], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    swift_endAccess();
    v54 = type metadata accessor for _EXLaunchConfiguration(0);
    v64.receiver = v2;
    v64.super_class = v54;
    return objc_msgSendSuper2(&v64, sel_init);
  }

  v31 = v30;
  if (v30 >> 62)
  {
    v32 = __CocoaSet.count.getter();
    if (v32)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

  v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
LABEL_31:

    v51 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

LABEL_19:
  v65 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v32 & 0x8000000000000000) == 0)
  {
    v56 = v2;
    v33 = 0;
    v61 = v31 & 0xC000000000000001;
    v62 = v31;
    do
    {
      if (v61)
      {
        v41 = MEMORY[0x1865F3F40](v33, v31);
      }

      else
      {
        v41 = *(v31 + 8 * v33 + 32);
      }

      v42 = v41;
      v43 = *&v41[OBJC_IVAR____EXDomainAttribute_sourceEnvironment + 8];
      if (v43)
      {
        v44 = *&v41[OBJC_IVAR____EXDomainAttribute_sourceEnvironment];
        v46 = *&v41[OBJC_IVAR____EXDomainAttribute_domain];
        v45 = *&v41[OBJC_IVAR____EXDomainAttribute_domain + 8];
        v48 = *&v41[OBJC_IVAR____EXDomainAttribute_name];
        v47 = *&v41[OBJC_IVAR____EXDomainAttribute_name + 8];

        v49 = MEMORY[0x1865F36D0](v46, v45);

        v38 = MEMORY[0x1865F36D0](v48, v47);

        v39 = MEMORY[0x1865F36D0](v44, v43);

        v50 = [objc_opt_self() attributeWithDomain:v49 name:v38 sourceEnvironment:v39];
      }

      else
      {
        v34 = *&v41[OBJC_IVAR____EXDomainAttribute_domain];
        v35 = *&v41[OBJC_IVAR____EXDomainAttribute_domain + 8];
        v36 = *&v41[OBJC_IVAR____EXDomainAttribute_name];
        v37 = *&v41[OBJC_IVAR____EXDomainAttribute_name + 8];

        v38 = MEMORY[0x1865F36D0](v34, v35);

        v39 = MEMORY[0x1865F36D0](v36, v37);

        v40 = [objc_opt_self() attributeWithDomain:v38 name:v39];
      }

      ++v33;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v31 = v62;
    }

    while (v32 != v33);

    v51 = v65;
    v2 = v56;
    goto LABEL_32;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id _EXExtensionIdentity.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____EXExtensionIdentity__inner;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = [objc_opt_self() sharedDatabaseContext];
  v6 = [v5 canAccess];

  if (v6)
  {
    v7 = a1;
    v14 = &type metadata for AppExtensionIdentity.RecordIdentity;
    v15 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
    v13[0] = specialized AppExtensionIdentity.RecordIdentity.init(coder:)(v7, v8);
  }

  else
  {
    v14 = type metadata accessor for AppExtensionIdentity.ValueIdentity(0);
    v15 = &protocol witness table for AppExtensionIdentity.ValueIdentity;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    AppExtensionIdentity.ValueIdentity.init(coder:)(a1, boxed_opaque_existential_1);
  }

  swift_beginAccess();
  outlined assign with take of _InnerAppExtensionIdentity?(v13, v4);
  swift_endAccess();
  v12.receiver = v2;
  v12.super_class = _EXExtensionIdentity;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id @nonobjc LSApplicationExtensionRecord.init(uuid:)(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13[0] = 0;
  v5 = [v2 initWithUUID:isa error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t _AppExtensionIdentity.bundleIdentifier.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t AppExtensionIdentity.RecordIdentity.defaultUserElection.getter(void *a1)
{
  v2 = objc_opt_self();
  v3 = [a1 extensionPointRecord];
  v4 = [v3 SDKDictionary];

  v5 = [v2 ditionaryFromPropertyList_];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v6);

  if (!*(v7 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000001848C6B00), (v8 & 1) == 0))
  {

    goto LABEL_9;
  }

  swift_unknownObjectRetain();

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v19;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 <= 0xFF)
  {
    if (v19 == 1)
    {
      return v10;
    }

LABEL_10:
    v11 = [a1 extensionPointRecord];
    v12 = [v11 extensionPointType];

    if (v12 == 1)
    {
      return 1;
    }

    v13 = [a1 containingBundleRecord];
    if (v13)
    {
      v14 = v13;
      objc_opt_self();
      if (swift_dynamicCastObjCClass() && (v15 = [a1 extensionPointRecord], v16 = objc_msgSend(v15, sel_parentAppRecord), v15, v16))
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x1E69635F8);
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          return 1;
        }

        else
        {
          return v10;
        }
      }

      else
      {
      }
    }

    return v10;
  }

  __break(1u);
  return result;
}

void _EXDomainAttribute.encode(with:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____EXDomainAttribute_domain);
  v4 = *(v1 + OBJC_IVAR____EXDomainAttribute_domain + 8);

  v5 = MEMORY[0x1865F36D0](v3, v4);

  v6 = MEMORY[0x1865F36D0](0x6E69616D6F64, 0xE600000000000000);
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____EXDomainAttribute_name);
  v8 = *(v1 + OBJC_IVAR____EXDomainAttribute_name + 8);

  v9 = MEMORY[0x1865F36D0](v7, v8);

  v10 = MEMORY[0x1865F36D0](1701667182, 0xE400000000000000);
  [a1 encodeObject:v9 forKey:v10];

  v11 = (v1 + OBJC_IVAR____EXDomainAttribute_sourceEnvironment);
  v12 = *(v1 + OBJC_IVAR____EXDomainAttribute_sourceEnvironment + 8);
  if (v12)
  {
    v13 = *v11;

    v14 = MEMORY[0x1865F36D0](v13, v12);

    v15 = MEMORY[0x1865F36D0](0xD000000000000011, 0x80000001848C4520);
    [a1 encodeObject:v14 forKey:v15];
  }
}

id specialized AppExtensionIdentity.RecordIdentity.init(coder:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v12 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 16))(v8, v10, v4);
    v13 = objc_allocWithZone(MEMORY[0x1E69635D0]);
    v14 = @nonobjc LSApplicationExtensionRecord.init(uuid:)(v8);
    v15 = v14;
    if (v2)
    {
    }

    else if (v14)
    {
      (*(v5 + 8))(v10, v4);

      return v15;
    }

    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v27 = a1;
    result = NSCoder.decodeObject<A>(of:forKey:)();
    if (result)
    {
      v16 = result;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = objc_allocWithZone(MEMORY[0x1E69635D0]);
      v21 = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(v17, v19);
      v22 = objc_opt_self();
      v25 = 0;
      v26 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v25 = 0xD00000000000001ALL;
      v26 = 0x80000001848C6E40;
      _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865F37A0](v23);

      v24 = MEMORY[0x1865F36D0](v25, v26);

      [v22 _EX_errorWithCode_description_];

      swift_willThrow();
      (*(v5 + 8))(v10, v4);
      if (v21)
      {
      }

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id _EXDomainAttribute.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____EXDomainAttribute_sourceEnvironment);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *v4 = 0;
  v4[1] = 0;
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    v6 = v5;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = NSCoder.decodeObject<A>(of:forKey:)();
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v7)
  {
LABEL_5:
    v8 = v7;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

LABEL_6:

  type metadata accessor for _EXDomainAttribute();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t static NWApplicationID.decode(from:forKey:)@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v6 = type metadata accessor for NWApplicationID();
    v7 = v5;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    lazy protocol witness table accessor for type NWApplicationID and conformance NWApplicationID(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID, MEMORY[0x1E6977CB8]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v8, v10);

    v12 = *(*(v6 - 8) + 56);
    v13 = a3;
    v14 = 0;
    v15 = v6;
  }

  else
  {
    v11 = type metadata accessor for NWApplicationID();
    v12 = *(*(v11 - 8) + 56);
    v15 = v11;
    v13 = a3;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

void specialized Service.prepare(withLaunchConfiguration:reply:)(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentConnection];
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = v4;
  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.launch);
  v7 = a1;
  v34 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v7;
    *(v10 + 12) = 2114;
    *(v10 + 14) = v34;
    *v11 = v7;
    v11[1] = v5;
    v12 = v7;
    v13 = v34;
    _os_log_impl(&dword_1847D1000, v8, v9, "Preparing extension %{public}@ for host: %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1865F56C0](v11, -1, -1);
    MEMORY[0x1865F56C0](v10, -1, -1);
  }

  [v34 auditToken];
  v14 = specialized static _EXExtensionProcessMannger.launch(configuration:hostAuditToken:)(v7, aBlock, v36, v37, v38);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1847D1000, v15, v16, "launched extension process: %{public}@", v17, 0xCu);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v18, -1, -1);
    MEMORY[0x1865F56C0](v17, -1, -1);
  }

  (*(a2 + 16))(a2, v14, 0);
  v20 = *&v14[OBJC_IVAR____EXExtensionProcessHandle_assertion];
  if (v20)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v21 = v20;
    v22 = static OS_dispatch_queue.main.getter();
    a2 = swift_allocObject();
    *(a2 + 16) = v14;
    *(a2 + 24) = v34;
    *(a2 + 32) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #1 in Service.prepare(withLaunchConfiguration:reply:);
    *(v23 + 24) = a2;
    v39 = _sIg_Ieg_TRTA_0;
    v40 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = thunk for @escaping @callee_guaranteed () -> ();
    v38 = &block_descriptor_39;
    v24 = _Block_copy(&aBlock);
    v25 = v34;
    v26 = v14;
    v27 = v21;

    dispatch_sync(v22, v24);

    _Block_release(v24);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if ((v26 & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_18:
    _Block_release(a2);
    __break(1u);
    return;
  }

  v28 = v14;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v14;
    v33 = v28;
    _os_log_impl(&dword_1847D1000, v29, v30, "No assertion taken during launch of %@", v31, 0xCu);
    outlined destroy of NSObject?(v32, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v32, -1, -1);
    MEMORY[0x1865F56C0](v31, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1847DEF2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

char *specialized static _EXExtensionProcessMannger.launch(configuration:hostAuditToken:)(char *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v117 = *MEMORY[0x1E69E9840];
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v12 = HIDWORD(a4);
  v13 = HIDWORD(a5);
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  *v114.val = *static AuditToken.current;
  *&v114.val[4] = *&static AuditToken.current[16];
  atoken.val[0] = a2;
  atoken.val[1] = v10;
  atoken.val[2] = v7;
  atoken.val[3] = v11;
  atoken.val[4] = a4;
  atoken.val[5] = v12;
  atoken.val[6] = a5;
  atoken.val[7] = v13;
  v110 = v13;
  v14 = audit_token_to_pid(&atoken);
  atoken = v114;
  v108 = v7;
  v109 = v12;
  v107 = a2;
  if (v14 == audit_token_to_pid(&atoken) && (atoken.val[0] = a2, atoken.val[1] = v10, atoken.val[2] = v7, atoken.val[3] = v11, atoken.val[4] = a4, atoken.val[5] = v12, atoken.val[6] = a5, atoken.val[7] = v110, v15 = audit_token_to_pidversion(&atoken), atoken = v114, v15 == audit_token_to_pidversion(&atoken)))
  {
    v16 = specialized static _EXExtensionProcessMannger.makeLaunchContext(configuration:hostAuditToken:)(a1, a2, v7, a4, a5);
    if (v5)
    {
      return v7;
    }

    v17 = v16;
    v104 = a5;
    v105 = v11;
  }

  else
  {
    v18 = specialized static _EXExtensionProcessMannger.makeLaunchContext(configuration:hostAuditToken:)(a1, a2, v7, a4, a5);
    if (v5)
    {
      return v7;
    }

    v17 = v18;
    v19 = type metadata accessor for _EXLaunchConfiguration(0);
    *atoken.val = 0;
    if (![v19 configureLaunchContext:v17 error:&atoken])
    {
      v27 = *atoken.val;
      v28 = _convertNSErrorToError(_:)();

      v7 = v28;
      swift_willThrow();

      return v7;
    }

    v104 = a5;
    v105 = v11;
    v20 = *atoken.val;
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69C7598]) initWithContext_];
  v22 = [v21 executeRequest];
  v23 = a1;
  v24 = v22;
  v25 = v23;
  v26 = v24;
  v7 = specialized _EXExtensionProcessHandle.__allocating_init(launchConfiguration:response:)(v23, v24);
  v103 = OBJC_IVAR____EXLaunchConfiguration__extensionIdentity;
  if ([*&v23[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity] launchesViaExtensionKitService])
  {
    v29 = MEMORY[0x1E69E7CC0];
    v113 = MEMORY[0x1E69E7CC0];
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v99 = v7;
    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.general);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v25;
      v34 = swift_slowAlloc();
      *v34 = 67240192;
      atoken.val[0] = v107;
      atoken.val[1] = v10;
      atoken.val[2] = v108;
      atoken.val[3] = v105;
      atoken.val[4] = a4;
      atoken.val[5] = v109;
      atoken.val[6] = v104;
      atoken.val[7] = v110;
      *(v34 + 4) = audit_token_to_pid(&atoken);
      _os_log_impl(&dword_1847D1000, v31, v32, "Adding extension service sandbox extension for host pid %{public}d", v34, 8u);
      v35 = v34;
      v25 = v33;
      MEMORY[0x1865F56C0](v35, -1, -1);
    }

    v98 = v26;
    v100 = v21;

    v102 = v25;
    v36 = [*&v25[v103] serviceName];
    v37 = objc_allocWithZone(_EXSandboxExtension);
    v38 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C1EB0);
    atoken.val[0] = v107;
    atoken.val[1] = v10;
    atoken.val[2] = v108;
    atoken.val[3] = v105;
    atoken.val[4] = a4;
    atoken.val[5] = v109;
    atoken.val[6] = v104;
    atoken.val[7] = v110;
    v39 = [v37 initWithExtensionClass:v38 machServiceName:v36 process:&atoken];

    v40 = v39;
    MEMORY[0x1865F38A0]();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v97 = v40;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v41 = v113;
    v42 = [v17 extensionOverlay];
    if (v42)
    {
      v43 = v42;
      v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v44 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(0x6976726553435058, 0xEA00000000006563), (v46 & 1) != 0))
      {
        outlined init with copy of Any(*(v44 + 56) + 32 * v45, &v115);

        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
        if (swift_dynamicCast())
        {
          *v115.val = 0xD000000000000016;
          *&v115.val[2] = 0x80000001848C1EE0;
          v47 = [v112 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();

          if (v47)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            memset(&v115, 0, sizeof(v115));
          }

          v7 = v99;
          atoken = v115;
          if (*&v115.val[6])
          {
            if (swift_dynamicCast())
            {
              v92 = *v115.val;
              v93 = [*v115.val allKeys];

              v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
              v95 = specialized _arrayConditionalCast<A, B>(_:)(v94);

              if (v95)
              {
                v49 = v95;
              }

              else
              {
                v49 = v29;
              }

              goto LABEL_30;
            }

LABEL_29:
            v49 = MEMORY[0x1E69E7CC0];
LABEL_30:
            v50 = *(v49 + 16);
            if (v50)
            {
              v96 = v17;
              v51 = (v49 + 40);
              v52 = v104;
              v101 = v10;
              do
              {
                v106 = v50;
                v53 = v10;
                v55 = *(v51 - 1);
                v54 = *v51;

                v56 = Logger.logObject.getter();
                v57 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v56, v57))
                {
                  v58 = swift_slowAlloc();
                  v59 = swift_slowAlloc();
                  *v115.val = v59;
                  *v58 = 136446466;
                  *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v115);
                  *(v58 + 12) = 1026;
                  v60 = v107;
                  atoken.val[0] = v107;
                  atoken.val[1] = v53;
                  v61 = v55;
                  v62 = v108;
                  atoken.val[2] = v108;
                  atoken.val[3] = v105;
                  atoken.val[4] = a4;
                  atoken.val[5] = v109;
                  atoken.val[6] = v104;
                  atoken.val[7] = v110;
                  *(v58 + 14) = audit_token_to_pid(&atoken);
                  _os_log_impl(&dword_1847D1000, v56, v57, "Adding '%{public}s'subservice sandbox extension for host pid %{public}d", v58, 0x12u);
                  __swift_destroy_boxed_opaque_existential_0Tm(v59);
                  v63 = v59;
                  v52 = v104;
                  MEMORY[0x1865F56C0](v63, -1, -1);
                  MEMORY[0x1865F56C0](v58, -1, -1);
                }

                else
                {

                  v64 = v55;
                  v60 = v107;
                  v62 = v108;
                  v61 = v64;
                }

                v65 = [*&v102[v103] bundleIdentifier];
                v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v68 = v67;

                *atoken.val = v66;
                *&atoken.val[2] = v68;
                MEMORY[0x1865F37A0](46, 0xE100000000000000);
                MEMORY[0x1865F37A0](v61, v54);

                v69 = *atoken.val;
                v70 = *&atoken.val[2];
                v71 = objc_allocWithZone(_EXSandboxExtension);
                v72 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C1EB0);
                v73 = MEMORY[0x1865F36D0](v69, v70);

                atoken.val[0] = v60;
                LODWORD(v10) = v101;
                atoken.val[1] = v101;
                atoken.val[2] = v62;
                atoken.val[3] = v105;
                atoken.val[4] = a4;
                atoken.val[5] = v109;
                atoken.val[6] = v52;
                atoken.val[7] = v110;
                v74 = [v71 initWithExtensionClass:v72 machServiceName:v73 process:&atoken];

                v75 = v74;
                MEMORY[0x1865F38A0]();
                if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v51 += 2;
                v50 = v106 - 1;
              }

              while (v106 != 1);
              v41 = v113;
              v17 = v96;
              v7 = v99;
            }

            *&v7[OBJC_IVAR____EXExtensionProcessHandle_sandboxExtensions] = v41;

            v21 = v100;
            v26 = v98;
            v25 = v102;
            goto LABEL_40;
          }

LABEL_28:
          outlined destroy of NSObject?(&atoken, &_sypSgMd, &_sypSgMR);
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    memset(&atoken, 0, sizeof(atoken));
    v7 = v99;
    goto LABEL_28;
  }

LABEL_40:
  v76 = *&v25[OBJC_IVAR____EXLaunchConfiguration_assertionAttributes];
  if (v76 >> 62)
  {
    v77 = __CocoaSet.count.getter();
  }

  else
  {
    v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v77 < 1)
  {
    if (one-time initialization token for launch != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.launch);
    v79 = v25;
    v90 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v80))
    {
      v81 = swift_slowAlloc();
      v82 = v7;
      v83 = swift_slowAlloc();
      *v81 = 138543362;
      *(v81 + 4) = v79;
      *v83 = v79;
      v84 = v79;
      _os_log_impl(&dword_1847D1000, v90, v80, "Assertion not taken, empty assertion attributes specified by launch configuration %{public}@.", v81, 0xCu);
      outlined destroy of NSObject?(v83, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      v85 = v83;
      v7 = v82;
      MEMORY[0x1865F56C0](v85, -1, -1);
      MEMORY[0x1865F56C0](v81, -1, -1);
    }

    v91 = v21;
    v21 = v17;
  }

  else
  {
    v86 = _EXExtensionProcessHandle._acquireAsertion()();
    v87 = OBJC_IVAR____EXExtensionProcessHandle_invalidationLock;
    os_unfair_lock_lock((*&v7[OBJC_IVAR____EXExtensionProcessHandle_invalidationLock] + 16));
    v88 = *&v7[OBJC_IVAR____EXExtensionProcessHandle_assertion];
    *&v7[OBJC_IVAR____EXExtensionProcessHandle_assertion] = v86;
    v89 = v86;

    *&v7[OBJC_IVAR____EXExtensionProcessHandle_assertionAquireCount] = 1;
    os_unfair_lock_unlock((*&v7[v87] + 16));
    v90 = v17;
    v91 = v26;
    v26 = v89;
  }

  return v7;
}

id specialized static _EXExtensionProcessMannger.makeLaunchContext(configuration:hostAuditToken:)(char *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v152 = HIDWORD(a4);
  v153 = HIDWORD(a5);
  v138 = type metadata accessor for URL();
  v137 = *(v138 - 8);
  v12 = MEMORY[0x1EEE9AC00](v138);
  v136 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v143 = &v133 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v150 = &v133 - v16;
  v146 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v17 = MEMORY[0x1EEE9AC00](v146);
  v145 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v139 = &v133 - v19;
  v151 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v142 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v148 = (&v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for UUID();
  v155 = *(v21 - 1);
  v156 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v144 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v147 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v140 = &v133 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v133 - v31;
  v154 = a1;
  v141 = OBJC_IVAR____EXLaunchConfiguration__extensionIdentity;
  v33 = *&a1[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity];
  atoken.val[0] = a2;
  atoken.val[1] = v10;
  atoken.val[2] = a3;
  atoken.val[3] = v11;
  atoken.val[4] = a4;
  atoken.val[5] = v152;
  atoken.val[6] = a5;
  atoken.val[7] = v153;
  v34 = audit_token_to_pid(&atoken);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
  v35 = v161;
  v36 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(a2, a3, a4, a5);
  if (v35)
  {

    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  v38 = [objc_opt_self() identifierWithPid_];
  if (!v38)
  {
    v44 = objc_opt_self();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1865F37A0](0xD000000000000032, 0x80000001848C1F00);
    LODWORD(v157) = v34;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865F37A0](v45);

    v46 = MEMORY[0x1865F36D0](*atoken.val, *&atoken.val[2]);

    [v44 _EX_errorWithCode_description_];

    swift_willThrow();
    return v44;
  }

  v39 = v38;
  v134 = 0;
  v40 = *&v154[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier];
  v161 = v32;
  v153 = v37;
  v149 = v33;
  LODWORD(v152) = v34;
  if (v40)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v41 = one-time initialization token for _defaultInstanceIdentifier;
    v42 = v40;
    if (v41 != -1)
    {
      swift_once();
    }

    if (static NSObject.== infix(_:_:)())
    {
      v43 = 1;
    }

    else
    {
      (*(v155 + 16))(v32, v42 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v156);
      v43 = 0;
    }
  }

  else
  {
    v43 = 1;
  }

  v47 = v155;
  v48 = v156;
  v49 = *(v155 + 56);
  v50 = v161;
  v49(v161, v43, 1, v156);
  outlined init with copy of UUID?(v50, v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  LODWORD(v50) = (*(v47 + 48))(v30, 1, v48);
  outlined destroy of NSObject?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v51 = v50 == 1;
  v52 = v39;
  v53 = v154;
  v54 = v152;
  if (v51 && [*&v141[v154] requiresMultiInstance])
  {
    v135 = v39;
    if (one-time initialization token for _defaultInstanceIdentifier != -1)
    {
      swift_once();
    }

    v55 = static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier;
    v56 = v161;
    outlined destroy of NSObject?(v161, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v57 = v55 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier;
    v58 = v140;
    v59 = v156;
    (*(v155 + 16))(v140, v57, v156);
    v49(v58, 0, 1, v59);
    outlined init with take of UUID?(v58, v56);
    v52 = v135;
  }

  v60 = [v53 rbsProcessIdentityWithHost_];
  if (!v60)
  {
    v44 = objc_opt_self();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    *atoken.val = 0xD000000000000027;
    *&atoken.val[2] = 0x80000001848C1F40;
    v91 = [v53 description];
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    MEMORY[0x1865F37A0](v92, v94);

    v95 = MEMORY[0x1865F36D0](*atoken.val, *&atoken.val[2]);

    [v44 _EX_errorWithCode_description_];

    swift_willThrow();
    outlined destroy of NSObject?(v161, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return v44;
  }

  v61 = v60;
  v62 = objc_opt_self();
  v141 = v61;
  v63 = [v62 contextWithIdentity_];
  [v63 setHostPid_];
  *atoken.val = 0;
  *&atoken.val[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  *atoken.val = 0xD000000000000014;
  *&atoken.val[2] = 0x80000001848C1F70;
  v64 = v149;
  v65 = [v149 bundleIdentifier];
  v66 = v54;
  v67 = v53;
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  MEMORY[0x1865F37A0](v68, v70);

  MEMORY[0x1865F37A0](40, 0xE100000000000000);
  v71 = [v64 uniqueIdentifier];
  v72 = v144;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type UUID and conformance UUID(v73, v74);
  v75 = v156;
  v76 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v76);

  (*(v155 + 8))(v72, v75);
  MEMORY[0x1865F37A0](0x736F6820726F6620, 0xEA00000000002074);
  LODWORD(v157) = v66;
  v77 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v77);

  v78 = MEMORY[0x1865F36D0](*atoken.val, *&atoken.val[2]);

  v156 = v63;
  [v63 setExplanation_];

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v79 = *(v151 + 28);
  v80 = type metadata accessor for NWApplicationID();
  v81 = v148;
  (*(*(v80 - 8) + 56))(v148 + v79, 1, 1, v80);
  v82 = *&v67[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables];

  v83 = *&v67[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8];
  *v81 = *&v67[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName];
  v81[1] = v83;
  v84 = *&v67[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages];
  v81[2] = v82;
  v81[3] = v84;
  v85 = *&v67[OBJC_IVAR____EXLaunchConfiguration_launchPersona];
  v135 = v52;
  if (v85)
  {

    v86 = [v85 personaUniqueString];
    v87 = v153;
    if (v86)
    {
      v88 = v86;
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;
    }

    else
    {
      v85 = 0;
      v90 = 0;
    }
  }

  else
  {

    v90 = 0;
    v87 = v153;
  }

  v97 = v150;
  v96 = v151;
  v98 = (v81 + *(v151 + 32));
  *v98 = v85;
  v98[1] = v90;
  v99 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v64 + v99, &v157, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  v101 = v146;
  v102 = v145;
  if (v158)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v157, &atoken);
    outlined init with copy of _EXExtensionProcessIdentity.JobConfiguration(v81, v97);
    (*(v142 + 56))(v97, 0, 1, v96);
    v103 = v147;
    outlined init with copy of UUID?(v161, v147, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v104 = (v102 + v101[9]);
    *v104 = 0;
    v104[1] = 0;
    v105 = (v102 + v101[10]);
    *v105 = 0;
    v105[1] = 0;
    v106 = (v102 + v101[11]);
    *v106 = 0;
    v106[1] = 0;
    v107 = (v102 + v101[12]);
    *v107 = 0;
    v107[1] = 0;
    *(v102 + v101[13]) = 0;
    v108 = v101[14];
    *(v102 + v108) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v102 + v101[15]) = 0;
    v44 = *&atoken.val[6];
    v109 = v160;
    __swift_project_boxed_opaque_existential_1(&atoken, *&atoken.val[6]);
    v110 = v143;
    v111 = v134;
    _InnerAppExtensionIdentity.translocatedExecutableURL.getter(v44, v109, v143);
    v155 = v111;
    if (v111)
    {

      outlined destroy of NSObject?(v103, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v150, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      outlined destroy of NSObject?(v161, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(&atoken);

      outlined destroy of _EXExtensionProcessIdentity.JobConfiguration(v81, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    }

    else
    {
      v112 = v136;
      URL.absoluteURL.getter();
      v113 = *(v137 + 8);
      v114 = v110;
      v115 = v138;
      v113(v114, v138);
      v116 = URL.path(percentEncoded:)(0);
      v113(v112, v115);
      *(v102 + v101[8]) = v116;
      outlined init with copy of _InnerAppExtensionIdentity(&atoken, v102);
      v117 = v150;
      outlined init with copy of UUID?(v150, v102 + v101[5], &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      v118 = v147;
      outlined init with copy of UUID?(v147, v102 + v101[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v119 = *&atoken.val[6];
      v120 = v160;
      __swift_project_boxed_opaque_existential_1(&atoken, *&atoken.val[6]);
      v121 = _InnerAppExtensionIdentity.serviceName.getter(v119, v120);
      v123 = v122;
      outlined destroy of NSObject?(v118, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v117, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      v124 = (v102 + v101[7]);
      *v124 = v121;
      v124[1] = v123;
      v125 = v139;
      outlined init with take of _EXExtensionProcessIdentity.JobDescriptor(v102, v139);
      __swift_destroy_boxed_opaque_existential_0Tm(&atoken);
      v126 = MEMORY[0x1865F36D0](*(v125 + v101[8]), *(v125 + v101[8] + 8));
      v44 = v156;
      [v156 _setOverrideExecutablePath_];

      _EXExtensionProcessIdentity.JobDescriptor.programArguments.getter();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v44 setArguments_];

      v128 = _EXExtensionProcessIdentity.JobDescriptor.environmentVariables.getter();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v128);

      v129 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v44 _setAdditionalEnvironment_];

      _EXExtensionProcessIdentity.JobDescriptor.xpcOverlay.getter();
      v130 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v44 setExtensionOverlay_];

      v131 = _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter();
      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(v131);
      v132 = Set._bridgeToObjectiveC()().super.isa;

      [v44 setManagedEndpointLaunchIdentifiers_];

      outlined destroy of _EXExtensionProcessIdentity.JobConfiguration(v125, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
      outlined destroy of NSObject?(v161, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of _EXExtensionProcessIdentity.JobConfiguration(v148, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    }

    return v44;
  }

  __break(1u);
  return result;
}

id _EXLaunchConfiguration.rbsProcessIdentity(withHost:)(uint64_t a1)
{
  v2 = v1;
  v87 = a1;
  v3 = type metadata accessor for URL();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v79 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v79 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v80 = &v79 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v79 - v14;
  v15 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = type metadata accessor for RBSProcessIdentity.Attachment(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v85 = v9;
  v86 = v8;
  v20 = *(v9 + 56);
  v88 = &v79 - v21;
  v20();
  v22 = _EXLaunchConfiguration.hostConfiguration.getter();
  v23 = *&v22[OBJC_IVAR____EXHostConfiguration_instanceIdentifier];
  v24 = v23;

  if (v23)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    if (one-time initialization token for _defaultInstanceIdentifier != -1)
    {
      swift_once();
    }

    if (static NSObject.== infix(_:_:)())
    {
    }

    else
    {
      v25 = v88;
      outlined destroy of NSObject?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v26 = v86;
      (*(v85 + 16))(v25, v24 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v86);

      (v20)(v25, 0, 1, v26);
    }
  }

  v27 = OBJC_IVAR____EXLaunchConfiguration__extensionIdentity;
  if ([*(v2 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity) targetsSystemExtensionPoint])
  {
    v28 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8);
    *v18 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName);
    v18[1] = v28;
    v29 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables);
    v18[2] = *(v2 + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages);
    v18[3] = v29;
    v30 = *(v2 + v27);

    v31 = [v30 bundleIdentifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v18[4] = v32;
    v18[5] = v34;
    v35 = *(v16 + 32);
    v36 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined init with copy of UUID?(v2 + v36, v18 + v35, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    static JSONEncoder.OutputFormatting.sortedKeys.getter();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment, type metadata accessor for RBSProcessIdentity.Attachment, &protocol conformance descriptor for RBSProcessIdentity.Attachment);
    v37 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v39 = v38;
    _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v18, type metadata accessor for RBSProcessIdentity.Attachment);

    v40 = [*(v2 + v27) bundleIdentifier];
    if (!v40)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = MEMORY[0x1865F36D0](v41);
    }

    v42 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_launchPersona);
    if (!v42 || (v43 = [v42 personaUniqueString]) == 0)
    {
      v43 = 0;
    }

    isa = *(v2 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
    if (isa)
    {
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v45 = one-time initialization token for _defaultInstanceIdentifier;
      v46 = isa;
      if (v45 != -1)
      {
        swift_once();
      }

      if (static NSObject.== infix(_:_:)())
      {

        isa = 0;
      }

      else
      {
        v67 = v85;
        v66 = v86;
        v68 = v81;
        (*(v85 + 16))(v81, v46 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v86);

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v67 + 8))(v68, v66);
      }
    }

    v69 = objc_opt_self();
    v70 = Data._bridgeToObjectiveC()().super.isa;
    v71 = [v69 extensionIdentityForBundleIdentifier:v40 persona:v43 instanceUUID:isa hostIdentifier:v87 validationToken:v70];
    outlined consume of Data._Representation(v37, v39);
  }

  else
  {
    v47 = [*(v2 + v27) containingBundleRecord];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v82;
      v50 = v83;
      v52 = v84;
      (*(v83 + 32))(v82, v6, v84);
      v54 = [*(v2 + v27) bundleIdentifier];
      if (!v54)
      {
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = MEMORY[0x1865F36D0](v55);
      }

      URL._bridgeToObjectiveC()(v53);
      v57 = v56;
      v58 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
      if (v58)
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v59 = one-time initialization token for _defaultInstanceIdentifier;
        v60 = v58;
        if (v59 != -1)
        {
          swift_once();
        }

        if (static NSObject.== infix(_:_:)())
        {

          v58 = 0;
        }

        else
        {
          v73 = v85;
          v72 = v86;
          v74 = v80;
          (*(v85 + 16))(v80, v60 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v86);

          v58 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v73 + 8))(v74, v72);
        }
      }

      v71 = [objc_opt_self() externalExtensionIdentityForExtensionKitIdentifier:v54 bundledURL:v57 hostIdentifier:v87 UUID:v58];

      (*(v50 + 8))(v51, v52);
    }

    else
    {
      v61 = [*(v2 + v27) bundleIdentifier];
      if (!v61)
      {
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = MEMORY[0x1865F36D0](v62);
      }

      v63 = *(v2 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
      if (v63)
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v64 = one-time initialization token for _defaultInstanceIdentifier;
        v65 = v63;
        if (v64 != -1)
        {
          swift_once();
        }

        if (static NSObject.== infix(_:_:)())
        {

          v63 = 0;
        }

        else
        {
          v76 = v85;
          v75 = v86;
          v77 = v79;
          (*(v85 + 16))(v79, v65 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v86);

          v63 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v76 + 8))(v77, v75);
        }
      }

      v71 = [objc_opt_self() externalExtensionIdentityForExtensionKitIdentifier:v61 hostIdentifier:v87 UUID:v63];
    }
  }

  outlined destroy of NSObject?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v71;
}

void __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke(uint64_t a1)
{
  v2 = _EXLegacyLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_cold_1();
  }

  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_400;
  v6[3] = &unk_1E6E4DE80;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v4 _safelyEndUsingRequestWithPKUUID:v3 processAssertion:v5 continuation:v6];
}

id _sharedSafePluginQueue(uint64_t a1)
{
  if (_sharedSafePluginQueue_onceToken != -1)
  {
    _sharedSafePluginQueue_cold_1();
  }

  v2 = _sharedSafePluginQueue_q;

  return v2;
}

void __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_400(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXLegacyLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_400_cold_1();
  }

  if (v3)
  {
    v6 = _EXLegacyLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_400_cold_2(a1, v3);
    }
  }

  v7 = objc_opt_self();
  [*(a1 + 40) invalidate];
}

Swift::Void __swiftcall QueryController.resume()()
{
  if (one-time initialization token for discovery != -1)
  {
LABEL_35:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.discovery);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38[0] = v6;
    *v5 = 136446210;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v38);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1847D1000, v3, v4, "Resuming Query observer: '%{public}s'", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 preferInProcessDiscovery];

  if (v11)
  {
    v0 = *&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__queries];
    if (v0 >> 62)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v13 = 0;
      while (1)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1865F3F40](v13, v0);
        }

        else
        {
          if (v13 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v14 = *(v0 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v17 = static _EXDiscoveryController.shared;
        type metadata accessor for _EXQuery();
        if (![v15 isKindOfClass_])
        {
          break;
        }

        v18 = v15;
        specialized _EXDiscoveryController.add(activeQueryObserver:query:)(v2, v18, v17);

        ++v13;
        if (v16 == v12)
        {
          goto LABEL_22;
        }
      }

      v36 = [objc_opt_self() _EX_parameterError];
      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }

    else
    {
LABEL_22:

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v27 = _EXDiscoveryController.identities(matching:)(v26);

      v28 = *&v27[OBJC_IVAR____EXQueryResult_identities];

      if (!v28)
      {
        if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20_EXExtensionIdentityC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v28 = v35;
        }

        else
        {
          v28 = MEMORY[0x1E69E7CD0];
        }
      }

      v29 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock;
      v30 = *&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock];

      os_unfair_lock_lock(v30 + 4);

      if (*&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions])
      {
        v31 = *&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions];
      }

      else
      {
        v31 = MEMORY[0x1E69E7CD0];
      }

      v32 = *&v2[v29];

      os_unfair_lock_unlock(v32 + 4);

      v33 = objc_allocWithZone(type metadata accessor for _EXQueryResultUpdate());
      _EXQueryResultUpdate.init(currentExtensions:updatedExtensions:)(v31, v28);
      v37 = v34;
      QueryController.resultDidUpdate(_:)(v34);
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v19 = static _EXServiceClient.shared;
    v38[3] = type metadata accessor for QueryController(0);
    v39 = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type QueryController and conformance QueryController, type metadata accessor for QueryController, &protocol conformance descriptor for QueryController);
    v38[0] = v2;
    v20 = *(v19 + OBJC_IVAR____EXServiceClient_activeQueriesLock);
    MEMORY[0x1EEE9AC00](v39);
    v21 = v2;
    os_unfair_lock_lock(v20 + 4);
    partial apply for closure #1 in _EXServiceClient.add(queryObserver:)(v22);
    os_unfair_lock_unlock(v20 + 4);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    v24 = v21;

    _EXServiceClient.fetchExtensions(with:completion:)(v25, partial apply for closure #1 in QueryController.resume(), v23);
  }
}

uint64_t sub_1847E22C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t one-time initialization function for discovery(uint64_t a1)
{
  return one-time initialization function for general(a1, static Logger.discovery, 0x7265766F63736964, 0xE900000000000079);
}

{
  return one-time initialization function for general(a1, 0x7265766F63736964, 0xE900000000000079, &static OS_os_log.discovery);
}

id _EXQuery.init(extensionPointIdentifier:)(uint64_t a1, uint64_t a2)
{
  active_platform = dyld_get_active_platform();
  v5 = _EXAuditTokenForCurrentProcess();
  v6 = v5[1];
  v19 = *v5;
  v20 = v6;
  v7 = type metadata accessor for _EXQuery();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____EXQuery_resultType] = 0;
  *&v8[OBJC_IVAR____EXQuery_predicate] = 0;
  v8[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
  v9 = OBJC_IVAR____EXQuery_allowsDuplicates;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 queryAllowsDuplicates];

  v8[v9] = v11;
  v8[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
  v8[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
  v8[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
  *&v21 = a1;
  *(&v21 + 1) = a2;
  *v22 = active_platform;
  *&v22[4] = v19;
  *&v22[20] = v20;
  v23[0] = a1;
  v23[1] = a2;
  v24 = active_platform;
  v25 = v19;
  v26 = v20;
  outlined init with copy of _EXQuery.ValuesQuery(&v21, v18);
  outlined destroy of _EXQuery.ValuesQuery(v23);
  v12 = &v8[OBJC_IVAR____EXQuery_inner];
  v12[3] = &type metadata for _EXQuery.ValuesQuery;
  v12[4] = &protocol witness table for _EXQuery.ValuesQuery;
  v13 = swift_allocObject();
  *v12 = v13;
  v14 = *v22;
  *(v13 + 16) = v21;
  *(v13 + 32) = v14;
  *(v13 + 48) = *&v22[16];
  *(v13 + 64) = *&v22[32];
  v17.receiver = v8;
  v17.super_class = v7;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

uint64_t _EXAuditTokenForCurrentProcess()
{
  if (_EXAuditTokenForCurrentProcess_once != -1)
  {
    _EXAuditTokenForCurrentProcess_cold_1();
  }

  return _EXAuditTokenForCurrentProcess_result;
}

uint64_t type metadata accessor for QueryController(uint64_t a1)
{
  result = type metadata singleton initialization cache for QueryController;
  if (!type metadata singleton initialization cache for QueryController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id QueryController.init(queries:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v20 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v7 - 8);
  UUID.init()();
  v8 = &v1[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
  *v8 = 1;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *&v1[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions] = 0;
  *&v1[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__unelectedCount] = 0;
  v9 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v1[v9] = v10;
  v19 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_notificationQueue;
  v18[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v21 + 104))(v20, *MEMORY[0x1E69E8090], v22);
  *&v1[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:

    v16 = MEMORY[0x1E69E7CC0];
LABEL_12:
    *&v2[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__queries] = v16;
    Controller = type metadata accessor for QueryController(0);
    v23.receiver = v2;
    v23.super_class = Controller;
    return objc_msgSendSuper2(&v23, sel_init);
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_3:
  v25 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1865F3F40](v13, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      [v14 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      type metadata accessor for _EXQuery();
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v11 != v13);

    v16 = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

char *_EXQueryController.init(queries:delegate:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(type metadata accessor for QueryController(0));
  *&v3[OBJC_IVAR____EXQueryController_innerController] = QueryController.init(queries:)(a1);
  v18.receiver = v3;
  v18.super_class = type metadata accessor for _EXQueryController();
  v6 = objc_msgSendSuper2(&v18, sel_init);
  v7 = *&v6[OBJC_IVAR____EXQueryController_innerController];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = &v7[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
  v11 = *&v7[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
  v12 = *&v7[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 8];
  v13 = *&v7[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 16];
  v14 = *&v7[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 24];
  *v10 = partial apply for closure #1 in _EXQueryController.init(queries:delegate:);
  v10[1] = v8;
  v10[2] = partial apply for closure #2 in _EXQueryController.init(queries:delegate:);
  v10[3] = v9;
  v15 = v6;
  v16 = v7;
  outlined consume of QueryController.Callbacks?(v11, v12, v13, v14);

  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1847E32A0()
{
  MEMORY[0x1865F57F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t type metadata completion function for QueryController(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for _EXQueryResultType(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void _EXQuery.copy(with:)(void *a1@<X8>)
{
  v3 = type metadata accessor for _EXQuery();
  v4 = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(v1 + v5, v10);
  v6 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(&v4[v6]);
  outlined init with take of _InnerAppExtensionIdentity(v10, &v4[v6]);
  swift_endAccess();
  *&v4[OBJC_IVAR____EXQuery_resultType] = *(v1 + OBJC_IVAR____EXQuery_resultType);
  v4[OBJC_IVAR____EXQuery_allowsDuplicates] = *(v1 + OBJC_IVAR____EXQuery_allowsDuplicates);
  v4[OBJC_IVAR____EXQuery_includePostprocessing] = *(v1 + OBJC_IVAR____EXQuery_includePostprocessing);
  v4[OBJC_IVAR____EXQuery_includeUpdatingApps] = *(v1 + OBJC_IVAR____EXQuery_includeUpdatingApps);
  v4[OBJC_IVAR____EXQuery_excludeLockedApps] = *(v1 + OBJC_IVAR____EXQuery_excludeLockedApps);
  v4[OBJC_IVAR____EXQuery_excludeDisabled] = *(v1 + OBJC_IVAR____EXQuery_excludeDisabled);
  v7 = *(v1 + OBJC_IVAR____EXQuery_predicate);
  v8 = *&v4[OBJC_IVAR____EXQuery_predicate];
  *&v4[OBJC_IVAR____EXQuery_predicate] = v7;
  v9 = v7;

  a1[3] = v3;
  *a1 = v4;
}

uint64_t specialized static QueryController.execute(queries:)(unint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 preferInProcessDiscovery];

  if (v3)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = _EXDiscoveryController.identities(matching:)(a1);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = _EXServiceClient.extensions(with:)(a1);
  }

  v5 = v4;
  v6 = *(v4 + OBJC_IVAR____EXQueryResult_identities);
  if (v6)
  {
    v7 = v6;
  }

  else if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20_EXExtensionIdentityC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v7 = v10;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  v8 = specialized _copyCollectionToContiguousArray<A>(_:)(v7);

  return v8;
}

id _EXDiscoveryController.identities(matching:)(char *a1)
{
  v2 = v1;
  v51 = MEMORY[0x1E69E7CD0];
  v4 = &selRef_setService_;
  v5 = [objc_allocWithZone(type metadata accessor for _EXExtensionAvailability()) init];
  if (specialized static _EXDiscoveryController.canRun(query:)(a1))
  {
    v6 = *&v1[OBJC_IVAR____EXDiscoveryController_queryQueue];
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = v5;
    v7[4] = &v51;
    v8 = swift_allocObject();
    v9 = partial apply for closure #1 in _EXDiscoveryController.identities(matching:);
    *(v8 + 16) = partial apply for closure #1 in _EXDiscoveryController.identities(matching:);
    *(v8 + 24) = v7;
    aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_1;
    v10 = _Block_copy(aBlock);
    v11 = a1;
    v12 = v5;

    dispatch_sync(v6, v10);
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      v13 = partial apply for closure #1 in _EXDiscoveryController.identities(matching:);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = &selRef_setService_;
  if (one-time initialization token for discovery != -1)
  {
LABEL_18:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.discovery);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    outlined destroy of NSObject?(v19, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v19, -1, -1);
    MEMORY[0x1865F56C0](v18, -1, -1);
  }

  v13 = 0;
  v7 = 0;
  v4 = v9;
LABEL_8:
  v21 = *&a1[OBJC_IVAR____EXQuery_resultType];
  if (v21 == 1)
  {
    v22 = type metadata accessor for _EXQueryResult();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____EXQueryResult_identities] = 0;
    *&v23[OBJC_IVAR____EXQueryResult_availablility] = v5;
    v50.receiver = v23;
    v50.super_class = v22;
    v24 = objc_msgSendSuper2(&v50, v4[490]);
LABEL_16:

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v13, v7);
    return v24;
  }

  if (!v21)
  {
    v47 = v5;
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.discovery);
    v26 = a1;
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v30 = 138543874;
      *(v30 + 4) = v27;
      *(v30 + 12) = 2114;
      *(v30 + 14) = v26;
      *v31 = v27;
      v31[1] = v26;
      *(v30 + 22) = 2082;
      swift_beginAccess();
      v45 = v29;
      type metadata accessor for _EXExtensionIdentity();
      lazy protocol witness table accessor for type _EXExtensionIdentity and conformance NSObject(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity, MEMORY[0x1E69E81B8]);
      v32 = v13;
      v33 = v26;
      v34 = v27;

      v35 = Set.description.getter();
      v37 = v36;

      v38 = v35;
      v4 = &selRef_setService_;
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, aBlock);
      v13 = v32;

      *(v30 + 24) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x1865F56C0](v46, -1, -1);
      MEMORY[0x1865F56C0](v30, -1, -1);
    }

    swift_beginAccess();
    v40 = v51;
    v41 = type metadata accessor for _EXQueryResult();
    v42 = objc_allocWithZone(v41);
    *&v42[OBJC_IVAR____EXQueryResult_identities] = v40;
    *&v42[OBJC_IVAR____EXQueryResult_availablility] = 0;
    v49.receiver = v42;
    v49.super_class = v41;
    v43 = v4[490];

    v24 = objc_msgSendSuper2(&v49, v43);

    goto LABEL_16;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1847E3FF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t specialized static _EXDiscoveryController.canRun(query:)(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(a1 + v2, v35);
  v3 = v36;
  v4 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  *&v32 = v5;
  *(&v32 + 1) = v7;
  v33 = v9;
  v34 = v11;
  outlined init with copy of _InnerAppExtensionIdentity(a1 + v2, v35);
  v12 = v36;
  v13 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v14 = (*(v13 + 8))(v12, v13);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  if (!v16)
  {
    return 1;
  }

  if (AuditToken.canHostOrDiscoverAnyExtension.getter(v5, v7, v9, v11))
  {
LABEL_15:

    return 1;
  }

  outlined init with copy of _InnerAppExtensionIdentity(a1 + v2, v35);
  v17 = v36;
  v18 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v19 = (*(v18 + 64))(v17, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  if (v19 >> 62)
  {
    goto LABEL_19;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
    while (1)
    {
      v21 = 0;
      while (1)
      {
        if (v20 == v21)
        {

          return 0;
        }

        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1865F3F40](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v24 = specialized closure #1 in static _EXDiscoveryController.canRun(query:)(v22, v14, v16, &v32);

        ++v21;
        if (v24)
        {

          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      if (!__CocoaSet.count.getter())
      {
        break;
      }

      v20 = __CocoaSet.count.getter();
    }
  }

  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.discovery);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35[0] = v30;
    *v29 = 136446210;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v35);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1847D1000, v27, v28, "Failed to get LSExtensionPointRecord for extension point identifier '%{public}s'", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x1865F56C0](v30, -1, -1);
    MEMORY[0x1865F56C0](v29, -1, -1);
  }

  else
  {
  }

  return 0;
}

unint64_t _EXQuery.ValuesQuery.extensionPointRecords.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  if (v6)
  {
    v8._countAndFlagsBits = 0x6C7070612E6D6F63;
    v8._object = 0xEA00000000002E65;
    v75 = String.hasPrefix(_:)(v8);
  }

  else
  {
    v75 = 1;
  }

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
  v9 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(*(v0 + 20), *(v0 + 28), *(v0 + 36), *(v0 + 44));
  v74 = v3;
  v24 = v9;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v23 = v25;
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.discovery);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v70 = 0;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = v7;
      v32 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v23;
      *v32 = v23;
      v33 = v23;
      _os_log_impl(&dword_1847D1000, v27, v28, "Resolved host app record for value query: %@", v30, 0xCu);
      outlined destroy of NSObject?(v32, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      v34 = v32;
      v7 = v31;
      MEMORY[0x1865F56C0](v34, -1, -1);
      MEMORY[0x1865F56C0](v30, -1, -1);
    }
  }

  else
  {

    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.discovery);
    outlined init with copy of _EXQuery.ValuesQuery(v1, &v79);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    outlined destroy of _EXQuery.ValuesQuery(v1);
    v13 = os_log_type_enabled(v11, v12);
    v70 = 0;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v73 = v6;
      v16 = v7;
      v17 = v15;
      *&v79 = v15;
      *v14 = 136446210;
      v18 = _EXQuery.ValuesQuery.description.getter();
      v20 = v2;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v79);

      *(v14 + 4) = v21;
      v2 = v20;
      _os_log_impl(&dword_1847D1000, v11, v12, "Unable to resolve host app record for value query: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      v22 = v17;
      v7 = v16;
      v6 = v73;
      MEMORY[0x1865F56C0](v22, -1, -1);
      MEMORY[0x1865F56C0](v14, -1, -1);
    }

    v23 = 0;
  }

  v78 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    if (v23)
    {
      v47 = one-time initialization token for discovery;
      v48 = v23;
      if (v47 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.discovery);
      v50 = v48;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138543362;
        *(v53 + 4) = v50;
        *v54 = v23;
        v55 = v50;
        _os_log_impl(&dword_1847D1000, v51, v52, "Enumerating all available extensions for host: %{public}@", v53, 0xCu);
        outlined destroy of NSObject?(v54, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v54, -1, -1);
        MEMORY[0x1865F56C0](v53, -1, -1);
      }

      v56 = [objc_opt_self() enumeratorWithParentApplicationRecord_];
      v57 = [v56 allObjects];
      v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = specialized _arrayForceCast<A, B>(_:)(v58);

      specialized Array.append<A>(contentsOf:)(v59);
    }

    return v78;
  }

  v72 = v2;
  v35 = objc_opt_self();
  v36 = MEMORY[0x1865F36D0](v7, v6);
  v37 = [v35 enumeratorForExtensionPointIdentifier_];

  v71 = v37;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v80)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v23;
    goto LABEL_44;
  }

  v38 = MEMORY[0x1E69E7CC0];
  v39 = v23;
  do
  {
    v73 = v38;
    while (1)
    {
      outlined init with take of Any(&v79, &v77);
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSExtensionPointRecord, 0x1E6963668);
      swift_dynamicCast();
      v40 = v76;
      if (v75)
      {
        break;
      }

      v42 = [v76 parentAppRecord];
      if (v42)
      {
        v43 = v42;
        if (v23)
        {
          type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x1E69635F8);
          v44 = v23;
          v45 = static NSObject.== infix(_:_:)();

          v39 = v23;
          if (v45)
          {
            break;
          }
        }

        else
        {

          v39 = 0;
        }
      }

      else
      {
        v39 = v23;
        if (!v23)
        {
          break;
        }
      }

LABEL_21:

      NSFastEnumerationIterator.next()();
      if (!v80)
      {
        v38 = v73;
        goto LABEL_44;
      }
    }

    v41 = *(v1 + 16);
    if ((v41 + 1) >= 2 && [v40 platform] != v41)
    {
      goto LABEL_21;
    }

    v46 = v40;
    MEMORY[0x1865F38A0]();
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v38 = v78;
    NSFastEnumerationIterator.next()();
  }

  while (v80);
LABEL_44:
  (*(v74 + 8))(v5, v72);
  if (v38 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_49;
    }

LABEL_46:
  }

  else
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

LABEL_49:
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.discovery);
    outlined init with copy of _EXQuery.ValuesQuery(v1, &v79);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    outlined destroy of _EXQuery.ValuesQuery(v1);
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v79 = v64;
      *v63 = 136446210;
      v65 = _EXQuery.ValuesQuery.description.getter();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v79);

      *(v63 + 4) = v67;
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x1865F56C0](v64, -1, -1);
      MEMORY[0x1865F56C0](v63, -1, -1);
    }
  }

  return v78;
}

uint64_t protocol witness for InnerQuery.extensionPointIdentifier.getter in conformance _EXQuery.ValuesQuery()
{
  v1 = *v0;

  return v1;
}

id _EXDiscoveryController.identities(matching:)(unint64_t a1)
{
  v15 = MEMORY[0x1E69E7CD0];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    v11 = MEMORY[0x1E69E7CD0];
LABEL_16:
    v12 = type metadata accessor for _EXQueryResult();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____EXQueryResult_identities] = v11;
    *&v13[OBJC_IVAR____EXQueryResult_availablility] = 0;
    v14.receiver = v13;
    v14.super_class = v12;
    return objc_msgSendSuper2(&v14, sel_init);
  }

LABEL_14:
  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1865F3F40](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v7 = _EXDiscoveryController.identities(matching:)(v4);
    result = *&v7[OBJC_IVAR____EXQueryResult_identities];
    if (!result)
    {
      break;
    }

    specialized Set.formUnion<A>(_:)(v9, v10);

    ++v3;
    if (v6 == v2)
    {
      v11 = v15;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in _EXDiscoveryController.identities(matching:)(char *a1, uint64_t a2)
{
  v16 = MEMORY[0x1E69E7CD0];
  v4 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(&a1[v4], v13);
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = (*(v6 + 64))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:

    swift_beginAccess();
    specialized Set.formUnion<A>(_:)(v16, v12);
    return;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1865F3F40](i, v7);
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      specialized closure #1 in closure #1 in _EXDiscoveryController.identities(matching:)(v10, a1, &v16, a2);
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t specialized closure #1 in static _EXDiscoveryController.canRun(query:)(void *a1, uint64_t a2, unint64_t a3, _OWORD *a4)
{
  v7 = [a1 SDKDictionary];
  v8 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C27B0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [v7 objectForKey:v8 ofClass:ObjCClassFromMetadata];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v11 = _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyp_Tt1g5(&v62, 0, 0);
  if (v12 < 2)
  {
    v56 = v11;
    v57 = v12;
    v13._countAndFlagsBits = 0x6C7070612E6D6F63;
    v13._object = 0xEA00000000002E65;
    if (String.hasPrefix(_:)(v13))
    {
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.discovery);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_21;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v62 = v18;
      *v17 = 136446210;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v62);
      _os_log_impl(&dword_1847D1000, v15, v16, "Skipping host app record lookup for system extension point: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1865F56C0](v18, -1, -1);
      v19 = v17;
    }

    else
    {
      v25 = [a1 parentAppRecord];
      if (v25)
      {
LABEL_22:
        if ([a1 extensionPointType] && objc_msgSend(a1, sel_extensionPointType) != 1)
        {
          v33 = MEMORY[0x1E69E7CC8];
          goto LABEL_40;
        }

        v30 = [a1 SDKDictionary];
        v31 = MEMORY[0x1865F36D0](0xD00000000000001ALL, 0x80000001848C2850);
        v32 = [v30 objectForKey:v31 ofClass:ObjCClassFromMetadata];

        if (v32)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = 0u;
          v61 = 0u;
        }

        v62 = v60;
        v63 = v61;
        if (*(&v61 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
          if (swift_dynamicCast())
          {
            goto LABEL_37;
          }
        }

        else
        {
          outlined destroy of NSObject?(&v62, &_sypSgMd, &_sypSgMR);
        }

        v34 = [a1 SDKDictionary];
        v35 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C2C00);
        v36 = [v34 objectForKey:v35 ofClass:ObjCClassFromMetadata];

        if (v36)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = 0u;
          v61 = 0u;
        }

        v62 = v60;
        v63 = v61;
        if (*(&v61 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
          if (swift_dynamicCast())
          {
LABEL_37:
            v33 = v59;
            goto LABEL_40;
          }
        }

        else
        {
          outlined destroy of NSObject?(&v62, &_sypSgMd, &_sypSgMR);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXltGMd, &_ss23_ContiguousArrayStorageCySS_yXltGMR);
        inited = swift_initStackObject();
        v55 = xmmword_1848BA260;
        *(inited + 16) = xmmword_1848BA260;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1848BA260;
        *(v39 + 32) = a2;
        *(v39 + 40) = a3;

        isa = Array._bridgeToObjectiveC()().super.isa;

        *(inited + 48) = isa;
        v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of NSObject?(inited + 32, &_sSS_yXltMd, &_sSS_yXltMR);
LABEL_40:
        v41 = [a1 _EX_parentAppRecord];
        v42 = v25 == 0;
        if (v41)
        {
          v43 = v41;
          if (v25)
          {
            type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x1E69635F8);
            v44 = v25;
            v42 = static NSObject.== infix(_:_:)();
          }

          else
          {
            v42 = 0;
          }
        }

        if ([a1 extensionPointType] == 2 && (v42 & 1) != 0)
        {
          outlined consume of _ScopeRestriction(v56, v57);

          if (one-time initialization token for discovery != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          __swift_project_value_buffer(v45, static Logger.discovery);

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v46, v47))
          {
            goto LABEL_58;
          }

          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v62 = v49;
          *v48 = 136446210;
          *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v62);
          v50 = "Extension point '%{public}s' is declared by the Host, allowing discovery.";
        }

        else
        {
          v51 = *(v33 + 16);
          outlined consume of _ScopeRestriction(v56, v57);
          if (v51)
          {
            specialized _dictionaryUpCast<A, B, C, D>(_:)(v33);

            v52 = Dictionary._bridgeToObjectiveC()().super.isa;

            swift_beginAccess();
            HasRequiredEntitlements = _EXAuditTokenHasRequiredEntitlements(a4, v52, 0);
            swift_endAccess();

            return HasRequiredEntitlements;
          }

          if (one-time initialization token for discovery != -1)
          {
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          __swift_project_value_buffer(v54, static Logger.discovery);

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v46, v47))
          {
            goto LABEL_58;
          }

          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v62 = v49;
          *v48 = 136446210;
          *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v62);
          v50 = "Extension point '%{public}s' requires no entitlements.";
        }

        _os_log_impl(&dword_1847D1000, v46, v47, v50, v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x1865F56C0](v49, -1, -1);
        MEMORY[0x1865F56C0](v48, -1, -1);
LABEL_58:

        return 1;
      }

      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.discovery);

      v15 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v15, v27))
      {
LABEL_21:

        v25 = 0;
        goto LABEL_22;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v62 = v29;
      *v28 = 136446210;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v62);
      _os_log_impl(&dword_1847D1000, v15, v27, "Extension point:  %{public}s has no parent app.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x1865F56C0](v29, -1, -1);
      v19 = v28;
    }

    MEMORY[0x1865F56C0](v19, -1, -1);
    goto LABEL_21;
  }

  outlined consume of _ScopeRestriction(v11, v12);
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.discovery);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1847D1000, v21, v22, "Extension points with app group scope must be enumerated using AppExtensionPoint.Monitor.", v23, 2u);
    MEMORY[0x1865F56C0](v23, -1, -1);
  }

  return 0;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
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
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
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
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = outlined init with take of Any(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t _EXAuditTokenHasRequiredEntitlements(_OWORD *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 _EX_arrayForKey:@"com.apple.extensionkit.host.extension-point-identifiers"];
  v7 = [v6 firstObject];

  if ([v5 count] == 1 && v7)
  {
    v8 = objc_opt_class();
    v9 = _EXAuditTokenGetEntitlementValue(a1, @"com.apple.extensionkit.host.extension-point-identifiers", v8);
    v10 = [v9 containsObject:v7];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v5;
    v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v23 = a3;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v9 objectForKeyedSubscript:v15];
          v17 = objc_opt_class();
          v18 = _EXAuditTokenGetEntitlementValue(a1, v15, v17);
          v19 = [v18 isEqual:v16];
          if ((v19 & 1) == 0)
          {
            v20 = _EXDefaultLog(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              _EXAuditTokenHasRequiredEntitlements_cold_1(v15, v18, v20);
            }

            v10 = 0;
            goto LABEL_16;
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v10 = 1;
LABEL_16:
      a3 = v23;
    }

    else
    {
      v10 = 1;
    }
  }

  if (a3 && (v10 & 1) == 0)
  {
    v21 = a1[1];
    *atoken.val = *a1;
    *&atoken.val[4] = v21;
    *a3 = [MEMORY[0x1E696ABC0] _EX_hostIsLackingRequiredEntitlementErrorWithHostPID:audit_token_to_pid(&atoken) requiredEntitlements:v5];
  }

  return v10;
}

char *_EXQuery.init(extensionPointIdentifier:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  active_platform = dyld_get_active_platform();
  v6 = _EXAuditTokenForCurrentProcess();
  v7 = v6[1];
  v22 = *v6;
  v23 = v7;
  v8 = type metadata accessor for _EXQuery();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____EXQuery_resultType] = 0;
  *&v9[OBJC_IVAR____EXQuery_predicate] = 0;
  v9[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
  v10 = OBJC_IVAR____EXQuery_allowsDuplicates;
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 queryAllowsDuplicates];

  v9[v10] = v12;
  v9[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
  v9[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
  v9[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
  *&v24 = a1;
  *(&v24 + 1) = a2;
  *v25 = active_platform;
  *&v25[4] = v22;
  *&v25[20] = v23;
  v26[0] = a1;
  v26[1] = a2;
  v27 = active_platform;
  v28 = v22;
  v29 = v23;
  outlined init with copy of _EXQuery.ValuesQuery(&v24, v21);
  outlined destroy of _EXQuery.ValuesQuery(v26);
  v13 = &v9[OBJC_IVAR____EXQuery_inner];
  v13[3] = &type metadata for _EXQuery.ValuesQuery;
  v13[4] = &protocol witness table for _EXQuery.ValuesQuery;
  v14 = swift_allocObject();
  *v13 = v14;
  v15 = *v25;
  *(v14 + 16) = v24;
  *(v14 + 32) = v15;
  *(v14 + 48) = *&v25[16];
  *(v14 + 64) = *&v25[32];
  v20.receiver = v9;
  v20.super_class = v8;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v17 = *&v16[OBJC_IVAR____EXQuery_predicate];
  *&v16[OBJC_IVAR____EXQuery_predicate] = a3;

  return v16;
}

id _EXQuery.init()()
{
  *&v0[OBJC_IVAR____EXQuery_resultType] = 0;
  *&v0[OBJC_IVAR____EXQuery_predicate] = 0;
  v0[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
  v1 = OBJC_IVAR____EXQuery_allowsDuplicates;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 queryAllowsDuplicates];

  v0[v1] = v3;
  v0[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
  v0[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
  v0[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
  v4 = _EXAuditTokenForCurrentProcess();
  v5 = v4[1];
  v12 = *v4;
  v13 = v5;
  v14 = 0uLL;
  *v15 = 0;
  *&v15[4] = v12;
  *&v15[20] = v5;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v18 = v12;
  v19 = v5;
  outlined init with copy of _EXQuery.ValuesQuery(&v14, v11);
  outlined destroy of _EXQuery.ValuesQuery(v16);
  v6 = &v0[OBJC_IVAR____EXQuery_inner];
  v6[3] = &type metadata for _EXQuery.ValuesQuery;
  v6[4] = &protocol witness table for _EXQuery.ValuesQuery;
  v7 = swift_allocObject();
  *v6 = v7;
  v8 = *v15;
  *(v7 + 16) = v14;
  *(v7 + 32) = v8;
  *(v7 + 48) = *&v15[16];
  *(v7 + 64) = *&v15[32];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for _EXQuery();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1847E6434()
{

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
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

char *_EXQueryController.init(queries:)(unint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(type metadata accessor for QueryController(0));
  *&v2[OBJC_IVAR____EXQueryController_innerController] = QueryController.init(queries:)(a1);
  v16.receiver = v2;
  v16.super_class = type metadata accessor for _EXQueryController();
  v5 = objc_msgSendSuper2(&v16, sel_init);
  v6 = *&v5[OBJC_IVAR____EXQueryController_innerController];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = &v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
  v10 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
  v11 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 8];
  v12 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 16];
  v13 = *&v6[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks + 24];
  *v9 = partial apply for closure #1 in _EXQueryController.init(queries:);
  *(v9 + 1) = v7;
  *(v9 + 2) = partial apply for closure #2 in _EXQueryController.init(queries:);
  *(v9 + 3) = v8;
  v14 = v6;
  outlined consume of QueryController.Callbacks?(v10, v11, v12, v13);

  return v5;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for _EXDiscoveryController()) init];
  static _EXDiscoveryController.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for LocalLSDatabaseObserver()) init];
  static LocalLSDatabaseObserver.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for Service()) init];
  static Service.shared = result;
  return result;
}

char *_EXDiscoveryController.init()()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v5 - 8);
  *&v0[OBJC_IVAR____EXDiscoveryController_activeQueries] = MEMORY[0x1E69E7CC8];
  v6 = OBJC_IVAR____EXDiscoveryController_observer;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x1E6963670]) init];
  v7 = &v0[OBJC_IVAR____EXDiscoveryController_settingsStoreToken];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = OBJC_IVAR____EXDiscoveryController_activeQueriesLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v0[v8] = v9;
  v14 = OBJC_IVAR____EXDiscoveryController_queryQueue;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type _EXExtensionIdentity and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v15);
  *&v0[v14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = type metadata accessor for _EXDiscoveryController();
  v16.receiver = v0;
  v16.super_class = v10;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  [*&v11[OBJC_IVAR____EXDiscoveryController_observer] setDelegate_];
  return v11;
}

uint64_t outlined consume of QueryController.Callbacks?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(result, a2);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(a3, a4);
  }

  return result;
}

uint64_t one-time initialization function for general(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
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

uint64_t specialized Set._Variant.insert(_:)(_OWORD *a1, uint64_t a2, Swift::Int a3)
{
  v21 = a1;
  v24 = a2;
  v25 = a3;
  v6 = *v3;
  Hasher.init(_seed:)();
  swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v20 - v9;
  v22 = a2;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    lazy protocol witness table accessor for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver();
    while (1)
    {
      v23 = *(*(v6 + 48) + 16 * v13);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
    *v21 = *(*(v6 + 48) + 16 * v13);
    swift_unknownObjectRetain();
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v23 = *v15;
    v17 = swift_unknownObjectRetain();
    specialized _NativeSet.insertNew(_:at:isUnique:)(v17, a3, v13, isUniquelyReferenced_nonNull_native);
    *v15 = v23;
    v18 = v21;
    *v21 = a2;
    *(v18 + 1) = a3;
    return 1;
  }
}

uint64_t protocol witness for Identifiable.id.getter in conformance QueryController@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_id;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v24 = result;
  v25 = a2;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22[0] = v22;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v22 - v13;
  v22[1] = v7;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  result = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  a3 = result & ~v15;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v16 = ~v15;
    lazy protocol witness table accessor for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver();
    do
    {
      v23 = *(*(v10 + 48) + 16 * a3);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v16;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v7;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type _EXExtensionIdentity and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

void specialized _EXDiscoveryController.add(activeQueryObserver:query:)(void *a1, void *a2, void *a3)
{
  v6 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type QueryController and conformance QueryController, type metadata accessor for QueryController, &protocol conformance descriptor for QueryController);
  if (specialized static _EXDiscoveryController.canRun(query:)(a2))
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.discovery);
    v8 = a3;
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543618;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v8;
      v13[1] = v9;
      v14 = v8;
      v15 = v9;
      _os_log_impl(&dword_1847D1000, v10, v11, "%{public}@ Adding observer for query '%{public}@'", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v13, -1, -1);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }

    v16 = *&v8[OBJC_IVAR____EXDiscoveryController_activeQueriesLock];
    os_unfair_lock_lock(v16 + 4);
    v17 = OBJC_IVAR____EXDiscoveryController_activeQueries;
    swift_beginAccess();
    v18 = *&v8[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = __CocoaSet.count.getter();

      v18 = *&v8[v17];
    }

    else
    {
      v19 = *(v18 + 16);
    }

    v28 = specialized Dictionary.subscript.getter(v9, v18);

    if (!v28)
    {
      type metadata accessor for _EXActiveQuery();
      v29 = swift_allocObject();
      v29[2] = v9;
      v29[3] = v8;
      v30 = MEMORY[0x1E69E7CD0];
      v29[4] = MEMORY[0x1E69E7CD0];
      v29[5] = v30;
      v29[6] = v30;
      swift_beginAccess();
      v31 = *&v8[v17];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 >= 0)
        {
          v31 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v32 = v8;
        v33 = v9;

        v34 = __CocoaSet.count.getter();
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          return;
        }

        *&v8[v17] = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC19ExtensionFoundation8_EXQueryC_AG14_EXActiveQueryCTt1g5(v31, v34 + 1);
      }

      else
      {
        v35 = v8;
        v36 = v9;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = *&v8[v17];
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v9, isUniquelyReferenced_nonNull_native);
      *&v8[v17] = v61;
      swift_endAccess();
      v38 = v9;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v59 = v16;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138543362;
        *(v41 + 4) = v38;
        *v42 = v38;
        v43 = v38;
        _os_log_impl(&dword_1847D1000, v39, v40, "New active query %{public}@'", v41, 0xCu);
        outlined destroy of NSObject?(v42, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v42, -1, -1);
        v44 = v41;
        v16 = v59;
        MEMORY[0x1865F56C0](v44, -1, -1);
      }
    }

    swift_beginAccess();
    v45 = a1;
    specialized Set._Variant.insert(_:)(&v61, v45, v6);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v46 = v45;
    specialized Set._Variant.insert(_:)(&v61, v46, v6);
    swift_endAccess();

    swift_unknownObjectRelease();
    if (v19 <= 0)
    {
      v47 = v8;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138543362;
        *(v50 + 4) = v47;
        *v51 = v47;
        v52 = v47;
        _os_log_impl(&dword_1847D1000, v48, v49, "%{public}@ LS database observing started.", v50, 0xCu);
        outlined destroy of NSObject?(v51, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v51, -1, -1);
        MEMORY[0x1865F56C0](v50, -1, -1);
      }

      v53 = [objc_opt_self() sharedInstance];
      v54 = swift_allocObject();
      *(v54 + 16) = v47;
      aBlock[4] = closure #1 in _EXDiscoveryController.add(activeQueryObserver:query:)partial apply;
      aBlock[5] = v54;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_32;
      v55 = _Block_copy(aBlock);
      v56 = v47;

      v57 = [v53 addChangeObserver_];
      _Block_release(v55);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v58 = OBJC_IVAR____EXDiscoveryController_settingsStoreToken;
      swift_beginAccess();
      outlined assign with take of Any?(aBlock, &v56[v58]);
      swift_endAccess();
      [*&v56[OBJC_IVAR____EXDiscoveryController_observer] startObserving];
    }

    _EXActiveQuery.update()();

    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.discovery);
    v21 = a3;
    v22 = a2;
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543618;
      *(v24 + 4) = v21;
      *(v24 + 12) = 2114;
      *(v24 + 14) = v22;
      *v25 = v21;
      v25[1] = v22;
      v26 = v21;
      v27 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v25, -1, -1);
      MEMORY[0x1865F56C0](v24, -1, -1);
    }
  }
}

{
  v6 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(lazy protocol witness table cache variable for type _EXConnectionActiveQueryObserver and conformance _EXConnectionActiveQueryObserver, type metadata accessor for _EXConnectionActiveQueryObserver, &protocol conformance descriptor for _EXConnectionActiveQueryObserver);
  if (specialized static _EXDiscoveryController.canRun(query:)(a2))
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.discovery);
    v8 = a3;
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543618;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v8;
      v13[1] = v9;
      v14 = v8;
      v15 = v9;
      _os_log_impl(&dword_1847D1000, v10, v11, "%{public}@ Adding observer for query '%{public}@'", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v13, -1, -1);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }

    v16 = *&v8[OBJC_IVAR____EXDiscoveryController_activeQueriesLock];
    os_unfair_lock_lock(v16 + 4);
    v17 = OBJC_IVAR____EXDiscoveryController_activeQueries;
    swift_beginAccess();
    v18 = *&v8[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = __CocoaSet.count.getter();

      v18 = *&v8[v17];
    }

    else
    {
      v19 = *(v18 + 16);
    }

    v28 = specialized Dictionary.subscript.getter(v9, v18);

    if (!v28)
    {
      type metadata accessor for _EXActiveQuery();
      v29 = swift_allocObject();
      v29[2] = v9;
      v29[3] = v8;
      v30 = MEMORY[0x1E69E7CD0];
      v29[4] = MEMORY[0x1E69E7CD0];
      v29[5] = v30;
      v29[6] = v30;
      swift_beginAccess();
      v31 = *&v8[v17];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 >= 0)
        {
          v31 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v32 = v8;
        v33 = v9;

        v34 = __CocoaSet.count.getter();
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          return;
        }

        *&v8[v17] = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC19ExtensionFoundation8_EXQueryC_AG14_EXActiveQueryCTt1g5(v31, v34 + 1);
      }

      else
      {
        v35 = v8;
        v36 = v9;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = *&v8[v17];
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v9, isUniquelyReferenced_nonNull_native);
      *&v8[v17] = v61;
      swift_endAccess();
      v38 = v9;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v59 = v16;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138543362;
        *(v41 + 4) = v38;
        *v42 = v38;
        v43 = v38;
        _os_log_impl(&dword_1847D1000, v39, v40, "New active query %{public}@'", v41, 0xCu);
        outlined destroy of NSObject?(v42, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v42, -1, -1);
        v44 = v41;
        v16 = v59;
        MEMORY[0x1865F56C0](v44, -1, -1);
      }
    }

    swift_beginAccess();
    v45 = a1;
    specialized Set._Variant.insert(_:)(&v61, v45, v6);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v46 = v45;
    specialized Set._Variant.insert(_:)(&v61, v46, v6);
    swift_endAccess();

    swift_unknownObjectRelease();
    if (v19 <= 0)
    {
      v47 = v8;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138543362;
        *(v50 + 4) = v47;
        *v51 = v47;
        v52 = v47;
        _os_log_impl(&dword_1847D1000, v48, v49, "%{public}@ LS database observing started.", v50, 0xCu);
        outlined destroy of NSObject?(v51, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v51, -1, -1);
        MEMORY[0x1865F56C0](v50, -1, -1);
      }

      v53 = [objc_opt_self() sharedInstance];
      v54 = swift_allocObject();
      *(v54 + 16) = v47;
      aBlock[4] = closure #1 in _EXDiscoveryController.add(activeQueryObserver:query:)partial apply;
      aBlock[5] = v54;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_39_0;
      v55 = _Block_copy(aBlock);
      v56 = v47;

      v57 = [v53 addChangeObserver_];
      _Block_release(v55);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v58 = OBJC_IVAR____EXDiscoveryController_settingsStoreToken;
      swift_beginAccess();
      outlined assign with take of Any?(aBlock, &v56[v58]);
      swift_endAccess();
      [*&v56[OBJC_IVAR____EXDiscoveryController_observer] startObserving];
    }

    _EXActiveQuery.update()();

    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.discovery);
    v21 = a3;
    v22 = a2;
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543618;
      *(v24 + 4) = v21;
      *(v24 + 12) = 2114;
      *(v24 + 14) = v22;
      *v25 = v21;
      v25[1] = v22;
      v26 = v21;
      v27 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v25, -1, -1);
      MEMORY[0x1865F56C0](v24, -1, -1);
    }
  }
}

uint64_t sub_1847E7A14()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t instantiation function for generic protocol witness table for QueryController(uint64_t a1)
{
  result = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type QueryController and conformance QueryController, type metadata accessor for QueryController, &protocol conformance descriptor for QueryController);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type QueryController and conformance NSObject, type metadata accessor for QueryController, MEMORY[0x1E69E81B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      type metadata accessor for _EXActiveQuery();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v5)
    {
    }
  }

  return 0;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation8_EXQueryCAC14_EXActiveQueryCGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation8_EXQueryCAC14_EXActiveQueryCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation0C4TypeOAC010_EXRunningC0CycGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation0C4TypeOAC010_EXRunningC0CycGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x1865F42C0](v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation03AppC5PointV7MonitorC8IdentityVAG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation03AppC5PointV7MonitorC8IdentityVAG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *v22;
      v42 = *(v22 + 9);
      v43 = *(v22 + 8);
      v41 = *(v22 + 10);
      v24 = *(v22 + 11);
      v25 = *(v5 + 56) + 40 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      v39 = *(v25 + 16);
      v40 = *(v25 + 32);
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      specialized Set.hash(into:)(v44, v23);
      Hasher._combine(_:)(v43);
      Hasher._combine(_:)(v42);
      Hasher._combine(_:)(v41);
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v43;
      *(v16 + 9) = v42;
      *(v16 + 10) = v41;
      *(v16 + 11) = v24;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v26;
      *(v17 + 8) = v27;
      *(v17 + 16) = v39;
      *(v17 + 32) = v40;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v38)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation10AuditTokenVSo12RBSAssertionCGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation10AuditTokenVSo12RBSAssertionCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v21 = (*(v5 + 48) + 32 * v20);
      v34 = v21[1];
      v35 = *v21;
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v4 & 1) == 0)
      {
        v23 = v22;
      }

      Hasher.init(_seed:)();
      *atoken.val = v35;
      *&atoken.val[4] = v34;
      v24 = audit_token_to_pid(&atoken);
      Hasher._combine(_:)(v24);
      *atoken.val = v35;
      *&atoken.val[4] = v34;
      v25 = audit_token_to_pidversion(&atoken);
      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
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
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v35;
      v16[1] = v34;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for _EXQuery();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t _EXQuery.hash.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(v0 + v2, v13);
  v3 = v14;
  v4 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  if (v7)
  {
    v8 = MEMORY[0x1865F3830](v5, v7);
  }

  else
  {
    v8 = Int.hashValue.getter();
  }

  outlined init with copy of _InnerAppExtensionIdentity(v1 + v2, v13);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v11 = (*(v10 + 40))(v9, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return MEMORY[0x1865F4330](v11) ^ v8;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMd, &_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = result;
    v6 = 0;
    v7 = v3 + 56;
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
    v31 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
LABEL_15:
      v34 = *(*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      swift_getObjectType();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v33 = &v28;
      v18 = *(AssociatedTypeWitness - 8);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v20 = &v28 - v19;
      v35 = v34;
      swift_unknownObjectRetain();
      dispatch thunk of Identifiable.id.getter();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of Hashable.hash(into:)();
      (*(v18 + 8))(v20, AssociatedTypeWitness);
      result = Hasher._finalize()();
      v5 = v30;
      v21 = -1 << *(v30 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v3 = v31;
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v3 = v31;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 16 * v13) = v34;
      ++*(v5 + 16);
      v10 = v32;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v32 = (v16 - 1) & v16;
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMd, &_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v1;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = (v3 + 8);
    v35 = v5;
    v14 = result + 56;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      outlined init with copy of AppExtensionIdentity(*(v5 + 48) + 40 * (v19 | (v8 << 6)), &v38);
      Hasher.init(_seed:)();
      v22 = *(&v39 + 1);
      v23 = v40;
      __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
      v24 = v36;
      (*(v23 + 56))(v22, v23);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v25 = v37;
      dispatch thunk of Hashable.hash(into:)();
      (*v34)(v24, v25);
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v5 = v35;
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v5 = v35;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v38;
      v18 = v39;
      *(v16 + 32) = v40;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v2 = v33;
        goto LABEL_26;
      }

      v21 = *(v9 + 8 * v8);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
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
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMd, _ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      Hasher.init(_seed:)();

      v23 = v22;
      String.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

{
  v2 = v1;
  v3 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMd, &_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      outlined init with copy of LocalLSDatabaseObserver.Observer(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      UUID.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = outlined init with take of LocalLSDatabaseObserver.Observer(v5, *(v8 + 48) + v15 * v19);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      outlined init with copy of AnyHashable(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26[0];
      v15 = v26[1];
      *(v13 + 32) = v27;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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