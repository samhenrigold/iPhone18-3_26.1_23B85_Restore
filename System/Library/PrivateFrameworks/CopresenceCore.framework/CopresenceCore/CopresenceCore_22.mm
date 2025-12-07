uint64_t closure #1 in CPApplicationController.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v54 = v9;
    *v8 = 136315138;
    v10 = MEMORY[0x1B2710180](a1, MEMORY[0x1E69E7CA0] + 8);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v54);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Caching Game Center Multiplayer games in supportedBundleIdentifierCache. Games: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  result = specialized _arrayConditionalCast<A, B>(_:)(a1);
  if (result)
  {
    v14 = *(result + 16);
    if (v14)
    {
      v47 = *(a4 + 256);
      v44 = OBJC_IVAR___CPApplicationController_supportedBundleIdentifierCache;
      for (i = (result + 40); ; i += 2)
      {
        v17 = *(i - 1);
        v16 = *i;

        v18 = v47(v17, v16);
        v19 = MEMORY[0x1B270FF70](0xD00000000000001FLL, 0x80000001AEE2EE80);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        v20 = [v18 objectForKey:v19 ofClass:swift_getObjCClassFromMetadata()];

        if (v20)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        v54 = v52;
        v55 = v53;
        if (*(&v53 + 1))
        {
          if (swift_dynamicCast())
          {
            v21 = v51;
            v22 = [v51 BOOLValue];

            if (v22)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          outlined destroy of NSObject?(&v54, &_sypSgMd, &_sypSgMR);
        }

        v23 = MEMORY[0x1B270FF70](0xD00000000000001FLL, 0x80000001AEE2EE80);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
        v25 = [v18 objectForKey:v23 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];

        if (v25)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        v54 = v52;
        v55 = v53;
        if (!*(&v53 + 1))
        {
          outlined destroy of NSObject?(&v54, &_sypSgMd, &_sypSgMR);
LABEL_27:

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *&v54 = v42;
            *v41 = 136315138;
            v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v54);

            *(v41 + 4) = v43;
            _os_log_impl(&dword_1AEB26000, v39, v40, "Do not cache value for %s: because it does not have Game Center entitlement.", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v42);
            MEMORY[0x1B27120C0](v42, -1, -1);
            MEMORY[0x1B27120C0](v41, -1, -1);
          }

          else
          {
          }

          goto LABEL_8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_27;
        }

        v26 = *(v51 + 2);

        if (!v26)
        {
          goto LABEL_27;
        }

LABEL_23:

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *&v54 = v30;
          *v29 = 136315138;
          *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v54);
          _os_log_impl(&dword_1AEB26000, v27, v28, "Caching value for %s: true", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          MEMORY[0x1B27120C0](v30, -1, -1);
          MEMORY[0x1B27120C0](v29, -1, -1);
        }

        swift_beginAccess();
        v46 = *(a3 + v44);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMd, &_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMR);
        v32 = objc_allocWithZone(v31);
        v33 = MEMORY[0x1E69E7D40];
        v32[*((*MEMORY[0x1E69E7D40] & *v32) + 0x68)] = 1;
        v50.receiver = v32;
        v50.super_class = v31;
        v34 = objc_msgSendSuper2(&v50, sel_init);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMR);
        v36 = objc_allocWithZone(v35);
        v37 = &v36[*((*v33 & *v36) + 0x68)];
        *v37 = v17;
        v37[1] = v16;
        v49.receiver = v36;
        v49.super_class = v35;
        v38 = objc_msgSendSuper2(&v49, sel_init);
        [v46 setObject:v34 forKey:v38];
        swift_endAccess();

LABEL_8:
        if (!--v14)
        {
        }
      }
    }
  }

  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v5);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for LSApplicationProxy, 0x1E69635E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void thunk for @escaping @callee_guaranteed (@guaranteed [Any], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

uint64_t static CPApplicationController.isAppHidden(for:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for ProtectedAppsObserver()) init];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x78))();

  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;
  LOBYTE(a2) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v7, v5);

  return a2 & 1;
}

id static CPApplicationController.entitlements(for:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v20);
    _os_log_impl(&dword_1AEB26000, v6, v7, "Looking up bundle record for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);

  result = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  if (!v2)
  {
    v11 = result;

    v12 = v11;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v20);
      *(v15 + 12) = 2112;
      *(v15 + 14) = v12;
      *v16 = v12;
      v18 = v12;
      _os_log_impl(&dword_1AEB26000, v13, v14, "bundleIdentifier: %s bundleRecord: %@", v15, 0x16u);
      outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    v19 = [v12 entitlements];
    return v19;
  }

  return result;
}

id @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1B270FF70](a1);

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

Swift::Bool __swiftcall CPApplicationController.lookupBundleIdentifierSupported(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  ObjectType = swift_getObjectType();
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v25);
    _os_log_impl(&dword_1AEB26000, v7, v8, "Attempting to check if bundle identifier is supported: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  if (one-time initialization token for systemBundleIdentifiers != -1)
  {
    v11 = swift_once();
  }

  v25[0] = countAndFlagsBits;
  v25[1] = object;
  MEMORY[0x1EEE9AC00](v11);
  v24[2] = v25;
  if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, v12))
  {
    v13 = 1;
  }

  else
  {

    v14 = specialized tryLog<A>(_:_:function:line:)("Entitlements", 12, 2, 0xD000000000000023, 0x80000001AEE37420, 95, countAndFlagsBits, object, ObjectType);
    if (v14)
    {
      v15 = v14;
      v16 = [(*((*MEMORY[0x1E69E7D40] & *v2) + 0xC8))() appProtectionEnabled];
      swift_unknownObjectRelease();
      if (!v16 || ((*(ObjectType + 248))(countAndFlagsBits, object) & 1) == 0)
      {
        LOBYTE(v25[0]) = 4;
        v21 = LSPropertyList.contains(entitlement:)(v25);
        LOBYTE(v25[0]) = 3;
        v22 = LSPropertyList.contains(entitlement:)(v25);

        v13 = v21 || v22;
        return v13 & 1;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v6, static Log.default);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v25);
        _os_log_impl(&dword_1AEB26000, v17, v18, "[CPApplicationController] Hidden app found for %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1B27120C0](v20, -1, -1);
        MEMORY[0x1B27120C0](v19, -1, -1);
      }
    }

    v13 = 0;
  }

  return v13 & 1;
}

Swift::Bool __swiftcall LSPropertyList.contains(entitlement:)(CopresenceCore::Entitlement entitlement)
{
  LOBYTE(v8) = *entitlement;
  v2 = Entitlement.rawValue.getter();
  v3 = MEMORY[0x1B270FF70](v2);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v4 = [v1 objectForKey:v3 ofClass:swift_getObjCClassFromMetadata()];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = [v7 BOOLValue];

      return v5;
    }
  }

  else
  {
    outlined destroy of NSObject?(v10, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

uint64_t static CPApplicationController.lookupDefinedSystemActivityIdentifiers(for:)(uint64_t a1, uint64_t a2)
{

  v5 = specialized tryLog<A>(_:_:function:line:)("Entitlements", 12, 2, 0xD00000000000002CLL, 0x80000001AEE37450, 114, a1, a2, v2);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1B270FF70](0xD00000000000002ELL, 0x80000001AEE2EDE0);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v9 = [v6 objectForKey:v7 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {

        return v11;
      }
    }

    else
    {
      outlined destroy of NSObject?(v14, &_sypSgMd, &_sypSgMR);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t CPApplicationController.isValidSystemActivity(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if ([a1 isSystemActivity] && (v5 = objc_msgSend(a1, sel_bundleIdentifier)) != 0)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = OBJC_IVAR___CPApplicationController_definedSystemActivityIdentifiersCache;
    swift_beginAccess();
    v11 = *(v2 + v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSaySSG_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSaySSG_GMR);
    v13 = objc_allocWithZone(v12);
    v14 = &v13[*((*MEMORY[0x1E69E7D40] & *v13) + 0x68)];
    *v14 = v7;
    v14[1] = v9;
    v44.receiver = v13;
    v44.super_class = v12;

    v15 = v11;
    v16 = objc_msgSendSuper2(&v44, sel_init);
    v17 = [v15 objectForKey_];

    if (v17)
    {
      v18 = *(v17 + *((*MEMORY[0x1E69E7D40] & *v17) + 0x68));

      v19 = [a1 activityIdentifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v42 = v20;
      v43 = v22;
      MEMORY[0x1EEE9AC00](v23);
    }

    else
    {

      v18 = (*(ObjectType + 272))(v7, v9);
      swift_beginAccess();
      v25 = *(v2 + v10);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV12WrappedValueCySSSaySSG_GMd, &_s14CopresenceCore5CacheV12WrappedValueCySSSaySSG_GMR);
      v27 = objc_allocWithZone(v26);
      v28 = MEMORY[0x1E69E7D40];
      *&v27[*((*MEMORY[0x1E69E7D40] & *v27) + 0x68)] = v18;
      v41.receiver = v27;
      v41.super_class = v26;

      v29 = objc_msgSendSuper2(&v41, sel_init);
      v30 = objc_allocWithZone(v12);
      v31 = &v30[*((*v28 & *v30) + 0x68)];
      *v31 = v7;
      v31[1] = v9;
      v40.receiver = v30;
      v40.super_class = v12;
      v32 = objc_msgSendSuper2(&v40, sel_init);
      [v25 setObject:v29 forKey:v32];
      swift_endAccess();

      v33 = [a1 activityIdentifier];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v42 = v34;
      v43 = v36;
      MEMORY[0x1EEE9AC00](v37);
    }

    v39[2] = &v42;
    v24 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v39, v18);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

id CPApplicationController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CPApplicationController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t CPApplicationController.notifyObservers(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR___CPApplicationController_lock) + 16));
  v4 = [*(v2 + OBJC_IVAR___CPApplicationController_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29CPApplicationObserverProtocol_pMd, &_s14CopresenceCore29CPApplicationObserverProtocol_pMR);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2710B10](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v10 = MEMORY[0x1B270FF70](a1, a2);
      [v8 applicationController:v2 bundleIdentifierChanged:v10];
      swift_unknownObjectRelease();

      ++v7;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v5 + 8 * v7 + 32);
    swift_unknownObjectRetain();
    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

Swift::Void __swiftcall CPApplicationController.invalidateCache(bundleIdentifier:)(Swift::String bundleIdentifier)
{
  v2 = v1;
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v25);
    _os_log_impl(&dword_1AEB26000, v6, v7, "Invalidating cached value for bundle identifier: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v10 = OBJC_IVAR___CPApplicationController_supportedBundleIdentifierCache;
  swift_beginAccess();
  v11 = *(v2 + v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMR);
  v13 = objc_allocWithZone(v12);
  v14 = MEMORY[0x1E69E7D40];
  v15 = &v13[*((*MEMORY[0x1E69E7D40] & *v13) + 0x68)];
  *v15 = countAndFlagsBits;
  v15[1] = object;
  v24.receiver = v13;
  v24.super_class = v12;

  v16 = objc_msgSendSuper2(&v24, sel_init);
  [v11 removeObjectForKey_];
  swift_endAccess();

  v17 = OBJC_IVAR___CPApplicationController_definedSystemActivityIdentifiersCache;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSaySSG_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSaySSG_GMR);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[*((*v14 & *v20) + 0x68)];
  *v21 = countAndFlagsBits;
  v21[1] = object;
  v23.receiver = v20;
  v23.super_class = v19;

  v22 = objc_msgSendSuper2(&v23, sel_init);
  [v18 removeObjectForKey_];
  swift_endAccess();
}

Swift::Void __swiftcall CPApplicationController.applicationsChanged(_:didInstall:)(Swift::OpaquePointer _, Swift::Bool didInstall)
{
  LOBYTE(v3) = didInstall;
  ObjectType = swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR___CPApplicationController_lock);
  os_unfair_lock_lock(*(v6 + 2));
  v7 = specialized _arrayConditionalCast<A, B>(_:)(_._rawValue);
  if (v7)
  {
    v8 = v7;
    v9 = (v7 & 0xFFFFFFFFFFFFFF8);
    if (v7 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v31 = v3;
      v30 = v6;
      if (i)
      {
        v3 = 0;
        v6 = MEMORY[0x1E69E7CC0];
        do
        {
          v11 = v3;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x1B2710B10](v11, v8);
            }

            else
            {
              if (v11 >= v9[2])
              {
                goto LABEL_36;
              }

              v12 = *(v8 + 8 * v11 + 32);
            }

            v13 = v12;
            v3 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v14 = [v12 bundleIdentifier];
            if (v14)
            {
              break;
            }

            ++v11;
            if (v3 == i)
            {
              goto LABEL_27;
            }
          }

          v15 = v14;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v17;
          v29 = v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
          }

          v19 = *(v6 + 2);
          v18 = *(v6 + 3);
          if (v19 >= v18 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v6);
          }

          *(v6 + 2) = v19 + 1;
          v20 = &v6[16 * v19];
          *(v20 + 4) = v29;
          *(v20 + 5) = v28;
        }

        while (v3 != i);
      }

      else
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

LABEL_27:

      v3 = *(v6 + 2);
      if (!v3)
      {
        break;
      }

      v25 = 0;
      v8 = 0;
      v9 = (v6 + 40);
      while (v25 < *(v6 + 2))
      {
        ++v25;
        v26 = *v9;
        v32[0] = *(v9 - 1);
        v32[1] = v26;

        closure #2 in CPApplicationController.applicationsChanged(_:didInstall:)(v32, v2, v31 & 1, ObjectType);

        v9 += 2;
        if (v3 == v25)
        {
          goto LABEL_31;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

LABEL_31:

    v6 = v30;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.default);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1AEB26000, v22, v23, "Failed to convert notifications' appProxies to LSApplicationProxy", v24, 2u);
      MEMORY[0x1B27120C0](v24, -1, -1);
    }
  }

  v27 = *(v6 + 2);

  os_unfair_lock_unlock(v27);
}

void closure #2 in CPApplicationController.applicationsChanged(_:didInstall:)(uint64_t *a1, void *a2, char a3, uint64_t a4)
{
  v7 = a1[1];
  v9._countAndFlagsBits = *a1;
  countAndFlagsBits = v9._countAndFlagsBits;
  v9._object = v7;
  CPApplicationController.invalidateCache(bundleIdentifier:)(v9);
  v10 = CPApplicationController.notifyObservers(bundleIdentifier:)(countAndFlagsBits, v7);
  if (a3)
  {
    v11 = [(*((*MEMORY[0x1E69E7D40] & *a2) + 0xC8))(v10) autoGameCenterEnabled];
    swift_unknownObjectRelease();
    if (v11)
    {

      v12 = specialized tryLog<A>(_:_:function:line:)("Entitlements", 12, 2, 0xD000000000000022, 0x80000001AEE374F0, 201, countAndFlagsBits, v7, a4);
      if (v12)
      {
        v13 = v12;
        if (LSPropertyList.containsAnyGameCenterEntitlements()())
        {
          v14 = [objc_opt_self() shared];
          v15 = MEMORY[0x1B270FF70](countAndFlagsBits, v7);
          v16 = swift_allocObject();
          v16[2] = countAndFlagsBits;
          v16[3] = v7;
          v16[4] = a2;
          aBlock[4] = partial apply for closure #1 in closure #2 in CPApplicationController.applicationsChanged(_:didInstall:);
          aBlock[5] = v16;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_21;
          v17 = _Block_copy(aBlock);

          v18 = a2;

          [v14 fetchGameCenterMultiplayerGameStatusForBundleID:v15 handler:v17];

          _Block_release(v17);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t implicit closure #2 in CPApplicationController.lookupBundleIdentifierSupported(_:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 256))();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void closure #1 in closure #2 in CPApplicationController.applicationsChanged(_:didInstall:)(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v25);
      _os_log_impl(&dword_1AEB26000, v9, v10, "Caching value for multiplayer game %s: true", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v13 = OBJC_IVAR___CPApplicationController_supportedBundleIdentifierCache;
    swift_beginAccess();
    v14 = *(a5 + v13);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMd, &_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMR);
    v16 = objc_allocWithZone(v15);
    v17 = MEMORY[0x1E69E7D40];
    v16[*((*MEMORY[0x1E69E7D40] & *v16) + 0x68)] = 1;
    v24.receiver = v16;
    v24.super_class = v15;

    v18 = objc_msgSendSuper2(&v24, sel_init);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMR);
    v20 = objc_allocWithZone(v19);
    v21 = &v20[*((*v17 & *v20) + 0x68)];
    *v21 = a3;
    *(v21 + 1) = a4;
    v23.receiver = v20;
    v23.super_class = v19;
    v22 = objc_msgSendSuper2(&v23, sel_init);
    [v14 setObject:v18 forKey:v22];
    swift_endAccess();
  }
}

void CPApplicationController.applicationsDidInstall(_:)(Swift::OpaquePointer a1, const char *a2, char a3, ...)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = MEMORY[0x1B2710180](a1._rawValue, MEMORY[0x1E69E7CA0] + 8);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v7, v8, a2, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  CPApplicationController.applicationsChanged(_:didInstall:)(a1, a3 & 1);
}

uint64_t @objc CPApplicationController.applicationsDidInstall(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);
}

Swift::Void __swiftcall CPApplicationController.appProtectionsChanged(bundleIDs:)(Swift::OpaquePointer bundleIDs)
{
  v3 = *(v1 + OBJC_IVAR___CPApplicationController_lock);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(bundleIDs._rawValue + 2);
  if (v4)
  {
    v5 = (bundleIDs._rawValue + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8._countAndFlagsBits = v6;
      v8._object = v7;
      CPApplicationController.invalidateCache(bundleIdentifier:)(v8);
      CPApplicationController.notifyObservers(bundleIdentifier:)(v6, v7);

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v9 = *(v3 + 16);

  os_unfair_lock_unlock(v9);
}

void specialized CPApplicationController.registerObserver(observer:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR___CPApplicationController_lock);
  os_unfair_lock_lock(*(v4 + 16));
  [*(a2 + OBJC_IVAR___CPApplicationController_observers) addObject_];
  v5 = *(v4 + 16);

  os_unfair_lock_unlock(v5);
}

uint64_t outlined init with copy of ProtectedAppsObserverProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ProtectedAppsObserverProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ActivitySessionEvent.item.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPActivitySessionEvent_item);

  return v1;
}

void *ActivitySessionEvent.url.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPActivitySessionEvent_url);
  v2 = v1;
  return v1;
}

id ActivitySessionEvent.__allocating_init(type:item:originatorID:queueItemType:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  v17 = objc_allocWithZone(v7);
  *&v17[OBJC_IVAR___CPActivitySessionEvent_type] = a1;
  v18 = &v17[OBJC_IVAR___CPActivitySessionEvent_item];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = a6;
  *&v17[OBJC_IVAR___CPActivitySessionEvent_originatorID] = a4;
  *&v17[OBJC_IVAR___CPActivitySessionEvent_queueItemType] = a5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a6, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v23 = 0;
  if ((*(v21 + 48))(v16, 1, v20) != 1)
  {
    URL._bridgeToObjectiveC()(v22);
    v23 = v24;
    (*(v21 + 8))(v16, v20);
  }

  *&v17[OBJC_IVAR___CPActivitySessionEvent_url] = v23;
  v27.receiver = v17;
  v27.super_class = v7;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  outlined destroy of NSObject?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v25;
}

id ActivitySessionEvent.init(type:item:originatorID:queueItemType:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  *&v7[OBJC_IVAR___CPActivitySessionEvent_type] = a1;
  v17 = &v7[OBJC_IVAR___CPActivitySessionEvent_item];
  *v17 = a2;
  *(v17 + 1) = a3;
  *&v7[OBJC_IVAR___CPActivitySessionEvent_originatorID] = a4;
  *&v7[OBJC_IVAR___CPActivitySessionEvent_queueItemType] = a5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a6, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v21 = 0;
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    URL._bridgeToObjectiveC()(v20);
    v21 = v22;
    (*(v19 + 8))(v16, v18);
  }

  *&v7[OBJC_IVAR___CPActivitySessionEvent_url] = v21;
  v23 = type metadata accessor for ActivitySessionEvent();
  v26.receiver = v7;
  v26.super_class = v23;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  outlined destroy of NSObject?(a6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v24;
}

uint64_t ActivitySessionEvent.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v13, &_sypSgMd, &_sypSgMR);
  if (!v14)
  {
    outlined destroy of NSObject?(v13, &_sypSgMd, &_sypSgMR);
    goto LABEL_20;
  }

  type metadata accessor for ActivitySessionEvent();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v9 = 0;
    return v9 & 1;
  }

  if (*(v1 + OBJC_IVAR___CPActivitySessionEvent_type) != *&v12[OBJC_IVAR___CPActivitySessionEvent_type])
  {
    goto LABEL_19;
  }

  v2 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_item + 8);
  v3 = *&v12[OBJC_IVAR___CPActivitySessionEvent_item + 8];
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_14;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_item) == *&v12[OBJC_IVAR___CPActivitySessionEvent_item] && v2 == v3;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  if (*(v1 + OBJC_IVAR___CPActivitySessionEvent_originatorID) != *&v12[OBJC_IVAR___CPActivitySessionEvent_originatorID] || *(v1 + OBJC_IVAR___CPActivitySessionEvent_queueItemType) != *&v12[OBJC_IVAR___CPActivitySessionEvent_queueItemType])
  {
    goto LABEL_19;
  }

  v5 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_url);
  v6 = *&v12[OBJC_IVAR___CPActivitySessionEvent_url];
  if (!v5)
  {
    v11 = v6;

    if (!v6)
    {
      v9 = 1;
      return v9 & 1;
    }

    goto LABEL_20;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSURL, 0x1E695DFF8);
  v7 = v6;
  v8 = v5;
  v9 = static NSObject.== infix(_:_:)();

  return v9 & 1;
}

Swift::Int ActivitySessionEvent.hash.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init()();
  MEMORY[0x1B27111E0](*(v2 + OBJC_IVAR___CPActivitySessionEvent_type));
  if (*(v2 + OBJC_IVAR___CPActivitySessionEvent_item + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1B2711210](*(v2 + OBJC_IVAR___CPActivitySessionEvent_originatorID));
  MEMORY[0x1B27111E0](*(v2 + OBJC_IVAR___CPActivitySessionEvent_queueItemType));
  v3 = *(v2 + OBJC_IVAR___CPActivitySessionEvent_url);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    v4 = v3;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher.finalize()();
}

id ActivitySessionEvent.init(coder:)(void *a1)
{
  v2 = MEMORY[0x1B270FF70](1701869940, 0xE400000000000000);
  [a1 decodeIntegerForKey_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringCSgMd, &_sSo8NSStringCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (swift_dynamicCast())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v3 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v3)
    {
      v6 = 0;
      LOBYTE(v7) = 1;
      v4 = v3;
      static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
  }

  type metadata accessor for ActivitySessionEvent();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ActivitySessionEvent.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_type);
  v4 = MEMORY[0x1B270FF70](1701869940, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR___CPActivitySessionEvent_item + 8))
  {
    v5 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPActivitySessionEvent_item));
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1B270FF70](1835365481, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v8 = MEMORY[0x1B270FF70](0x74616E696769726FLL, 0xEC0000004449726FLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_queueItemType);
  v10 = MEMORY[0x1B270FF70](0x6574496575657571, 0xED0000657079546DLL);
  [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_url);
  v12 = MEMORY[0x1B270FF70](7107189, 0xE300000000000000);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
}

id ActivitySessionEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySessionEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySessionEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of BackgroundSessionManagerDataSource.updateShare(_:activityID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v11(a1, a2, a3, a4);
}

uint64_t specialized static TUConversationActivity.< infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v17 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = a2;
  v18 = [a2 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type TUConversationActivity and conformance NSObject(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v19(v16, v10);
  if (v18)
  {
    v20 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = UUID.uuidString.getter();
    v23 = v22;
    v24 = *(v36 + 8);
    v25 = v9;
    v26 = v37;
    v24(v25, v37);
    v27 = [v38 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = UUID.uuidString.getter();
    v30 = v29;
    v24(v7, v26);
    if (v21 == v28 && v23 == v30)
    {

      v31 = 0;
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v32 = [a1 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = [v38 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = static Date.< infix(_:_:)();
    v19(v14, v10);
    v19(v16, v10);
  }

  return v31 & 1;
}

unint64_t type metadata accessor for TUConversationActivity()
{
  result = lazy cache variable for type metadata for TUConversationActivity;
  if (!lazy cache variable for type metadata for TUConversationActivity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationActivity);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TUConversationActivity and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DG_Datagram.seqNum.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DG_Datagram(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(a1, v1 + v3, type metadata accessor for DG_SequenceNumber);
  v4 = type metadata accessor for DG_SequenceNumber(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t DG_Datagram.encryptionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DG_Datagram(0) + 32);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(a1, v1 + v3, type metadata accessor for DG_EncryptionID);
  v4 = type metadata accessor for DG_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t DG_Datagram.seqNum.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 28), v5, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v7 = type metadata accessor for DG_SequenceNumber(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v5, a1, type metadata accessor for DG_SequenceNumber);
  }

  *a1 = 0;
  a1[1] = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t DG_Datagram.encryptionID.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 32), v5, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v7 = type metadata accessor for DG_EncryptionID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v5, a1, type metadata accessor for DG_EncryptionID);
  }

  *a1 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t protocol witness for AnyRawIngressDatagram.data.getter in conformance DG_Datagram()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t DG_Datagram.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t DG_Datagram.data.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t key path getter for DG_Datagram.seqNum : DG_Datagram@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 28), v6, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v8 = type metadata accessor for DG_SequenceNumber(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v6, a2, type metadata accessor for DG_SequenceNumber);
  }

  *a2 = 0;
  a2[1] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path setter for DG_Datagram.seqNum : DG_Datagram(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DG_SequenceNumber(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14CopresenceCore17DG_SequenceNumberVWOcTm_0(a1, v7, type metadata accessor for DG_SequenceNumber);
  v8 = *(type metadata accessor for DG_Datagram(0) + 28);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v7, a2 + v8, type metadata accessor for DG_SequenceNumber);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t DG_SequenceNumber.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for DG_SequenceNumber(0);
  *a1 = 0;
  a1[1] = 0;
  return UnknownStorage.init()();
}

void (*DG_Datagram.seqNum.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for DG_SequenceNumber(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for DG_Datagram(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v8, v14, type metadata accessor for DG_SequenceNumber);
  }

  return DG_Datagram.seqNum.modify;
}

BOOL DG_Datagram.hasSeqNum.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v4 + 28), v3, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v5 = type metadata accessor for DG_SequenceNumber(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NSObject?(v3, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  return v6;
}

Swift::Void __swiftcall DG_Datagram.clearSeqNum()()
{
  v1 = *(type metadata accessor for DG_Datagram(0) + 28);
  outlined destroy of NSObject?(v0 + v1, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v2 = type metadata accessor for DG_SequenceNumber(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t key path getter for DG_Datagram.encryptionID : DG_Datagram@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 32), v6, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v8 = type metadata accessor for DG_EncryptionID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v6, a2, type metadata accessor for DG_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for DG_Datagram.encryptionID : DG_Datagram(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DG_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14CopresenceCore17DG_SequenceNumberVWOcTm_0(a1, v7, type metadata accessor for DG_EncryptionID);
  v8 = *(type metadata accessor for DG_Datagram(0) + 32);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v7, a2 + v8, type metadata accessor for DG_EncryptionID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t DG_EncryptionID.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  type metadata accessor for DG_EncryptionID(0);
  return UnknownStorage.init()();
}

void (*DG_Datagram.encryptionID.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for DG_EncryptionID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for DG_Datagram(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v8, v14, type metadata accessor for DG_EncryptionID);
  }

  return DG_Datagram.encryptionID.modify;
}

void DG_Datagram.seqNum.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    _s14CopresenceCore17DG_SequenceNumberVWOcTm_0(v11, v10, a5);
    outlined destroy of NSObject?(v14 + v9, a3, a4);
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v11, a5);
  }

  else
  {
    outlined destroy of NSObject?(v14 + v9, a3, a4);
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t _s14CopresenceCore17DG_SequenceNumberVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL DG_Datagram.hasEncryptionID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v4 + 32), v3, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v5 = type metadata accessor for DG_EncryptionID(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NSObject?(v3, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  return v6;
}

Swift::Void __swiftcall DG_Datagram.clearEncryptionID()()
{
  v1 = *(type metadata accessor for DG_Datagram(0) + 32);
  outlined destroy of NSObject?(v0 + v1, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v2 = type metadata accessor for DG_EncryptionID(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t DG_Datagram.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for DG_Datagram(0);
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for DG_SequenceNumber(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 32);
  v6 = type metadata accessor for DG_EncryptionID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t DG_Datagram.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t DG_Datagram.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t DG_EncryptionID.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DG_EncryptionID(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DG_EncryptionID.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DG_EncryptionID(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DG_Datagram.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in DG_Datagram.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in DG_Datagram.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in DG_Datagram.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DG_Datagram(0);
  type metadata accessor for DG_SequenceNumber(0);
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber, &protocol conformance descriptor for DG_SequenceNumber);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in DG_Datagram.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DG_Datagram(0);
  type metadata accessor for DG_EncryptionID(0);
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID, &protocol conformance descriptor for DG_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t DG_Datagram.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = closure #1 in DG_Datagram.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in DG_Datagram.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (v3[2])
    {
      dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
    }

    type metadata accessor for DG_Datagram(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in DG_Datagram.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for DG_SequenceNumber(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 28), v7, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  }

  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v7, v11, type metadata accessor for DG_SequenceNumber);
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber, &protocol conformance descriptor for DG_SequenceNumber);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v11, type metadata accessor for DG_SequenceNumber);
}

uint64_t closure #2 in DG_Datagram.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for DG_EncryptionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 32), v7, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  }

  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v7, v11, type metadata accessor for DG_EncryptionID);
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID, &protocol conformance descriptor for DG_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v11, type metadata accessor for DG_EncryptionID);
}

uint64_t protocol witness for Message.init() in conformance DG_Datagram@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for DG_SequenceNumber(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for DG_EncryptionID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance DG_Datagram(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram, type metadata accessor for DG_Datagram, &protocol conformance descriptor for DG_Datagram);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DG_Datagram(uint64_t a1)
{
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram, type metadata accessor for DG_Datagram, &protocol conformance descriptor for DG_Datagram);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DG_Datagram(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram, type metadata accessor for DG_Datagram, &protocol conformance descriptor for DG_Datagram);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t DG_SequenceNumber.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t DG_SequenceNumber.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for DG_SequenceNumber(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static DG_SequenceNumber.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for DG_SequenceNumber(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance DG_SequenceNumber(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber, &protocol conformance descriptor for DG_SequenceNumber);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DG_SequenceNumber(uint64_t a1)
{
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber, &protocol conformance descriptor for DG_SequenceNumber);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DG_SequenceNumber(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber, &protocol conformance descriptor for DG_SequenceNumber);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DG_SequenceNumber(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t DG_EncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t DG_EncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for DG_EncryptionID(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t static DG_EncryptionID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for DG_EncryptionID(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int DG_Datagram.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance DG_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID, &protocol conformance descriptor for DG_EncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DG_EncryptionID(uint64_t a1)
{
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID, &protocol conformance descriptor for DG_EncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DG_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID, &protocol conformance descriptor for DG_EncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DG_EncryptionID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static DG_Datagram.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DG_EncryptionID(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15DG_EncryptionIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v42 - v10;
  v11 = type metadata accessor for DG_SequenceNumber(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v42 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSg_ADtMd, &_s14CopresenceCore17DG_SequenceNumberVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_20;
  }

  v42 = v6;
  v21 = type metadata accessor for DG_Datagram(0);
  v49 = a2;
  v22 = *(v21 + 28);
  v23 = *(v18 + 48);
  v43 = v21;
  v44 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v22, v20, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v49 + v22, &v20[v23], &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v24 = *(v12 + 48);
  if (v24(v20, 1, v11) == 1)
  {
    if (v24(&v20[v23], 1, v11) == 1)
    {
      outlined destroy of NSObject?(v20, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v20, v17, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  if (v24(&v20[v23], 1, v11) == 1)
  {
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v17, type metadata accessor for DG_SequenceNumber);
LABEL_12:
    v34 = &_s14CopresenceCore17DG_SequenceNumberVSg_ADtMd;
    v35 = &_s14CopresenceCore17DG_SequenceNumberVSg_ADtMR;
LABEL_18:
    v37 = v20;
LABEL_19:
    outlined destroy of NSObject?(v37, v34, v35);
    goto LABEL_20;
  }

  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(&v20[v23], v14, type metadata accessor for DG_SequenceNumber);
  if (*v17 != *v14 || v17[1] != v14[1])
  {
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v14, type metadata accessor for DG_SequenceNumber);
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v17, type metadata accessor for DG_SequenceNumber);
    v34 = &_s14CopresenceCore17DG_SequenceNumberVSgMd;
    v35 = &_s14CopresenceCore17DG_SequenceNumberVSgMR;
    goto LABEL_18;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v14, type metadata accessor for DG_SequenceNumber);
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v17, type metadata accessor for DG_SequenceNumber);
  outlined destroy of NSObject?(v20, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  if ((v36 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  v25 = v44;
  v26 = *(v43 + 32);
  v27 = *(v9 + 48);
  v28 = v48;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v44 + v26, v48, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v29 = v49 + v26;
  v30 = v49;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v29, v28 + v27, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v31 = v47;
  v32 = *(v46 + 48);
  if (v32(v28, 1, v47) == 1)
  {
    if (v32(v28 + v27, 1, v31) == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  v39 = v45;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v45, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  if (v32(v28 + v27, 1, v31) == 1)
  {
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v39, type metadata accessor for DG_EncryptionID);
LABEL_24:
    v34 = &_s14CopresenceCore15DG_EncryptionIDVSg_ADtMd;
    v35 = &_s14CopresenceCore15DG_EncryptionIDVSg_ADtMR;
    v37 = v28;
    goto LABEL_19;
  }

  v40 = v42;
  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v28 + v27, v42, type metadata accessor for DG_EncryptionID);
  if (!specialized static Data.== infix(_:_:)(*v39, *(v39 + 8), *v40, *(v40 + 8)))
  {
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v40, type metadata accessor for DG_EncryptionID);
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v39, type metadata accessor for DG_EncryptionID);
    v34 = &_s14CopresenceCore15DG_EncryptionIDVSgMd;
    v35 = &_s14CopresenceCore15DG_EncryptionIDVSgMR;
    v37 = v28;
    goto LABEL_19;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v40, type metadata accessor for DG_EncryptionID);
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v39, type metadata accessor for DG_EncryptionID);
  outlined destroy of NSObject?(v28, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (*(v25 + 16) != *(v30 + 16))
  {
LABEL_20:
    v33 = 0;
    return v33 & 1;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v33 & 1;
}

uint64_t lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for DG_Datagram(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DG_SequenceNumber?(319, &lazy cache variable for type metadata for DG_SequenceNumber?, type metadata accessor for DG_SequenceNumber);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DG_SequenceNumber?(319, &lazy cache variable for type metadata for DG_EncryptionID?, type metadata accessor for DG_EncryptionID);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for DG_SequenceNumber?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t type metadata completion function for DG_SequenceNumber(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation4DataV_SSs5NeverOTg546_sSS14CopresenceCoreE5asHexSSyFSSs5UInt8VXEfU_Tf1cn_nTm(unint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v45 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AEE07B20;
      *(v20 + 56) = MEMORY[0x1E69E7508];
      *(v20 + 64) = MEMORY[0x1E69E7558];
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

Swift::String_optional __swiftcall Data.asBase64()()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = v2;
  v6 = v4;
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall String.asBase64()()
{
  v2 = v1;
  v3 = v0;

  v4 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v3, v2);
  v6 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v4, v6);
  v8 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = v9;
  v13 = v11;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall String.asHex()()
{
  v2 = v1;
  v3 = v0;

  v4 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v3, v2);
  v6 = v5;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation4DataV_SSs5NeverOTg546_sSS14CopresenceCoreE5asHexSSyFSSs5UInt8VXEfU_Tf1cn_nTm(v4, v5);
  outlined consume of Data._Representation(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall Data.asHex()()
{
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation4DataV_SSs5NeverOTg546_sSS14CopresenceCoreE5asHexSSyFSSs5UInt8VXEfU_Tf1cn_nTm(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v2 = BidirectionalCollection<>.joined(separator:)();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t Resettable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, v2, v6);
  v10 = *(v5 - 8);
  v11 = *(v10 + 48);
  if (v11(v9, 1, v5) != 1)
  {
    return (*(v10 + 32))(a2, v9, v5);
  }

  Resettable.initialize()(a1, a2);
  result = (v11)(v9, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

Swift::Void __swiftcall Resettable.reset()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6];
  (*(v5 + 16))(&v11[-v6], v2, v4);
  v12 = v3;
  v13 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Resettable.reset(), v11, MEMORY[0x1E69E73E0], v8, v9, v14);
  v10 = *(v5 + 8);
  v10(v7, v4);
  v10(v2, v4);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
}

uint64_t Resettable.value.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t Resettable.initialize()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(result + 28);
  v5 = *v4;
  if (*v4)
  {
    v6 = v2;
    v7 = result;
    v8 = *(v4 + 8);

    v5(v9);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v5, v8);
    v10 = *(v7 + 16);
    v11 = type metadata accessor for Optional();
    (*(*(v11 - 8) + 8))(v6, v11);
    v13 = *(v10 - 8);
    (*(v13 + 16))(v6, a2, v10);
    v12 = *(v13 + 56);

    return v12(v6, 0, 1, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Resettable.initializer.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(*v2, v2[1]);
  return v3;
}

uint64_t Resettable.initializer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));
  result = _sxRi_zRi0_zlyytIseghHr_SgWOe(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t key path getter for Resettable.onReset : <A>Resettable<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>, uint64_t a5@<X3>)
{
  v6 = *(a2 + a3 - 8);
  v7 = (a1 + *(type metadata accessor for Resettable(0, v6, a3, a5) + 32));
  v8 = *v7;
  v9 = v7[1];
  if (*v7)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v8;
    *(v10 + 32) = v9;
    v11 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ();
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a4 = v11;
  a4[1] = v10;

  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v8, v9);
}

uint64_t key path setter for Resettable.onReset : <A>Resettable<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];
  if (*a1)
  {
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v6;
    v8[4] = v7;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (a2 + *(type metadata accessor for Resettable(0, v5, a3, a4) + 32));
  v11 = *v10;
  v12 = v10[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v6, v7);
  result = _sxRi_zRi0_zlyytIseghHr_SgWOe(v11, v12);
  *v10 = v9;
  v10[1] = v8;
  return result;
}

uint64_t Resettable.onReset.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(*v2, v2[1]);
  return v3;
}

uint64_t Resettable.onReset.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));
  result = _sxRi_zRi0_zlyytIseghHr_SgWOe(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t closure #1 in Resettable.reset()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>, uint64_t a5@<X3>)
{
  result = type metadata accessor for Resettable(0, a3, a3, a5);
  v9 = a2 + *(result + 32);
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);

    v10(a1);
    result = _sxRi_zRi0_zlyytIseghHr_SgWOe(v10, v11);
  }

  *a4 = v10 == 0;
  return result;
}

uint64_t Resettable.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  result = type metadata accessor for Resettable(0, a1, v4, v5);
  v7 = (a2 + *(result + 28));
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + *(result + 32));
  *v8 = 0;
  v8[1] = 0;
  return result;
}

void type metadata completion function for Resettable(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (())?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Resettable(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for Resettable(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFE)
  {
    v22 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v22 = 0;
      v22[1] = 0;
      *v22 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v22 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

void type metadata accessor for (())?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (())?);
    }
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation4DataVSgG_14CopresenceCore11CP_KeyValueVs5NeverOTg5017_sSS10Foundation4e5VSg14f6Core11h1_ij27VIgggr_SS3key_AD5valuetAGs5k20OIegnrzr_TR04_s14c66p45PubSubTopicC14upsertMetadata_10completionySDym39Foundation4b40VSgG_ys6ResultOyytAA0cdE5C70OGctFyAA09e31_UpserteG7RequestVzXEfU0_AA0M9_fG12VSS_AItXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CP_KeyValue(0);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v45 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v42 = a1 + 64;
    v43 = v45;
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v44 = *(a1 + 36);
    v34 = a1 + 72;
    v35 = v7;
    v36 = a1;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v42 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v44 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v39 = v10;
      v13 = *(a1 + 56);
      v14 = (*(a1 + 48) + 16 * v9);
      v41 = v2;
      v15 = *v14;
      v16 = v14[1];
      v17 = (v13 + 16 * v9);
      v19 = *v17;
      v18 = v17[1];
      swift_bridgeObjectRetain_n();
      outlined copy of Data?(v19, v18);
      outlined copy of Data?(v19, v18);

      v20 = outlined consume of Data?(v19, v18);
      v40 = &v33;
      MEMORY[0x1EEE9AC00](v20);
      *(&v33 - 4) = v15;
      *(&v33 - 3) = v16;
      *(&v33 - 2) = v19;
      *(&v33 - 1) = v18;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue);
      v21 = v41;
      static Message.with(_:)();
      v2 = v21;

      outlined consume of Data?(v19, v18);
      v22 = v43;
      v45 = v43;
      v24 = *(v43 + 16);
      v23 = *(v43 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v45;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v43 = v22;
      result = _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v6, v22 + v25 + *(v37 + 72) * v24, type metadata accessor for CP_KeyValue);
      a1 = v36;
      v11 = 1 << *(v36 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v26 = *(v42 + 8 * v12);
      if ((v26 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (v44 != *(v36 + 36))
      {
        goto LABEL_27;
      }

      v27 = v26 & (-2 << (v9 & 0x3F));
      if (v27)
      {
        v11 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v12 << 6;
        v29 = v12 + 1;
        v30 = (v34 + 8 * v12);
        while (v29 < (v11 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v9, v44, 0);
            v11 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v9, v44, 0);
      }

LABEL_4:
      v10 = v39 + 1;
      v9 = v11;
      if (v39 + 1 == v35)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDys6UInt64VAGG_14CopresenceCore17CP_SequenceNumberVs5NeverOTg504_ss6d5VAB14e6Core17g1_hi27VIgyyr_AB3key_AB5valuetAEs5J215OIegnrzr_TR04_s14b115Core11PubSubTopicC20setupSubscribeStream33_6FF60077F0B19FDD9659960D5DD0DECCLL05reuseH014isFirstAttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v32 = v6;
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v37 = v38;
    v9 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v29 = a1 + 72;
    v30 = v7;
    v31 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      MEMORY[0x1EEE9AC00](result);
      *(&v28 - 2) = v14;
      *(&v28 - 1) = v15;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
      v16 = v32;
      static Message.with(_:)();
      v35 = v2;
      v17 = v37;
      v38 = v37;
      v19 = *(v37 + 16);
      v18 = *(v37 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v17 = v38;
      }

      *(v17 + 16) = v19 + 1;
      v20 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v37 = v17;
      result = _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v16, v17 + v20 + *(v33 + 72) * v19, type metadata accessor for CP_SequenceNumber);
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v9 = v31;
      v21 = *(v31 + 8 * v13);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v12 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v13 << 6;
        v24 = v13 + 1;
        v25 = (v29 + 8 * v13);
        while (v24 < (v12 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v10, v36, 0);
            v12 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v10, v36, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      v2 = v35;
      if (v11 == v30)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v12;
    }

    v10 = *(v9 + 56) + 16 * v7;
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *a2 = v11;
    *(a2 + 8) = v10;
    result = specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 2;
  }

  return result;
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (__CocoaSet.count.getter())
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1B2710B10](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = __CocoaSet.count.getter();
LABEL_13:
      if (v3)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

Swift::Int TopicCatchupError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

unint64_t PubSubTopic.Participant.description.getter()
{
  v1 = *(v0 + 8);
  _StringGuts.grow(_:)(39);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE375C0);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v3, v4);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t static PubSubTopic.Participant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PubSubTopic.Participant.init(participantID:isSaltVerified:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PubSubTopic.Participant(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

double PubSubTopic.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE1ADF0;
  *(a1 + 16) = xmmword_1AEE1AE00;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 3;
  result = 10.0;
  *(a1 + 48) = xmmword_1AEE1AE10;
  return result;
}

uint64_t PubSubTopic.Configuration.init(publishPayloadMaxSizeBytes:publishQueueMaxSize:decryptionQueueMaxSize:rpcStreamMaxTries:rpcStreamRetryInterval:refreshDataCryptorMaxTries:refreshDataCryptorInterval:gracefulShutdownWindow:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a5;
  *(a6 + 48) = a8;
  *(a6 + 56) = a9;
  return result;
}

uint64_t PubSubTopic.Message.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t PubSubTopic.Message.typeIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PubSubTopic.Message.init(data:participants:typeIdentifier:seqNum:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

CopresenceCore::PubSubTopic::QueueState __swiftcall PubSubTopic.QueueState.init()()
{
  v1 = v0;
  result.messages._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1->messages._rawValue = result.messages._rawValue;
  return result;
}

Swift::Int PubSubTopic.QueueState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PubSubTopic.QueueState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PubSubTopic.QueueState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t PubSubTopic.Configuration.init(proto:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  if (!v4)
  {
    goto LABEL_6;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 16);
    if (v5)
    {
      while (v5 < 0)
      {
        __break(1u);
LABEL_6:
        v4 = 1000;
        v5 = *(result + 16);
        if (!v5)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v5 = 1000;
    }

    v7 = *(result + 28);
    v6 = *(result + 32);
    v8 = *(result + 24);
    if (v7)
    {
      v9 = v7 / 1000.0;
    }

    else
    {
      v9 = 1.0;
    }

    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = 3;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 2;
    }

    if (v3)
    {
      v12 = v3;
    }

    else
    {
      v12 = 0x10000;
    }

    v13 = *(result + 36);
    result = outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(result, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    v14.i64[0] = v13;
    v14.i64[1] = HIDWORD(v13);
    *a2 = v12;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
    *(a2 + 48) = vbslq_s8(vceqzq_s64(v14), xmmword_1AEE1AE10, vcvtq_f64_u64(v14));
  }

  return result;
}

uint64_t PubSubTopic.ReceivedRecord.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t PubSubTopic.ReceivedRecord.topicName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PubSubTopic.ReceivedRecord.init(from:withDecryptedData:withTopic:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for CP_SequenceNumber(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v30 - v18);
  swift_weakInit();
  v20 = *(type metadata accessor for CP_Record(0) + 36);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v20, v12, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    *v19 = 0;
    v19[1] = 0;
    UnknownStorage.init()();
    if (v21(v12, 1, v13) != 1)
    {
      outlined destroy of NSObject?(v12, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v12, v19, type metadata accessor for CP_SequenceNumber);
  }

  v22 = *v19;
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v19, type metadata accessor for CP_SequenceNumber);
  *a5 = v22;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v20, v10, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if (v21(v10, 1, v13) == 1)
  {
    *v17 = 0;
    v17[1] = 0;
    UnknownStorage.init()();
    if (v21(v10, 1, v13) != 1)
    {
      outlined destroy of NSObject?(v10, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v10, v17, type metadata accessor for CP_SequenceNumber);
  }

  v23 = v17[1];
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v17, type metadata accessor for CP_SequenceNumber);
  v24 = v31;
  v25 = v32;
  a5[1] = v23;
  a5[2] = v24;
  v26 = *(v33 + 16);
  v27 = *(v33 + 24);
  a5[3] = v25;
  a5[4] = v26;
  a5[5] = v27;
  v28 = *(a1 + 32);
  if (*(v28 + 16))
  {
  }

  else
  {
    v28 = 0;
  }

  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(a1, type metadata accessor for CP_Record);
  a5[6] = v28;
  swift_weakAssign();
}

Swift::Void __swiftcall PubSubTopic.ReceivedRecord.acknowledge()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23[2] = *(Strong + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
    v24 = v5;
    v10 = Strong;
    outlined init with copy of PubSubTopic.ReceivedRecord(v0, v33);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v23[1] = v10;
    outlined init with take of PubSubTopic.ReceivedRecord(v33, v11 + 24);
    v31 = partial apply for closure #1 in PubSubTopic.ReceivedRecord.acknowledge();
    v32 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v30 = &block_descriptor_36;
    v12 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v26[0] = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v8, v4, v12);
    _Block_release(v12);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v24);
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, log);
    outlined init with copy of PubSubTopic.ReceivedRecord(v0, v33);
    outlined init with copy of PubSubTopic.ReceivedRecord(v0, &aBlock);
    outlined init with copy of PubSubTopic.ReceivedRecord(v0, v26);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 134218498;
      v18 = v33[0];
      outlined destroy of PubSubTopic.ReceivedRecord(v33);
      *(v16 + 4) = v18;
      *(v16 + 12) = 2048;
      v19 = v28;
      outlined destroy of PubSubTopic.ReceivedRecord(&aBlock);
      *(v16 + 14) = v19;
      *(v16 + 22) = 2080;
      v20 = v26[4];
      v21 = v26[5];

      outlined destroy of PubSubTopic.ReceivedRecord(v26);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v25);

      *(v16 + 24) = v22;
      _os_log_impl(&dword_1AEB26000, v14, v15, "Ignoring ack, topic released publisherID=%llu seqNum=%llu topic=%s", v16, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }

    else
    {
      outlined destroy of PubSubTopic.ReceivedRecord(&aBlock);
      outlined destroy of PubSubTopic.ReceivedRecord(v33);

      outlined destroy of PubSubTopic.ReceivedRecord(v26);
    }
  }
}

void PubSubTopic.ack(publisherID:seqNum:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CP_SubscribeRequest(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (*(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) > 3u)
  {
    if (one-time initialization token for log == -1)
    {
LABEL_4:
      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, log);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134218240;
        *(v18 + 4) = a1;
        *(v18 + 12) = 2048;
        *(v18 + 14) = a2;
        _os_log_impl(&dword_1AEB26000, v16, v17, "Ignoring ack, shutting down publisherID=%llu seqNum=%llu", v18, 0x16u);
        MEMORY[0x1B27120C0](v18, -1, -1);
      }

      return;
    }

LABEL_38:
    swift_once();
    goto LABEL_4;
  }

  v19 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    v24 = swift_endAccess();
    if (v23 >= a2)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, log);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v54[0] = v29;
        *v28 = 134218754;
        *(v28 + 4) = a1;
        *(v28 + 12) = 2048;
        *(v28 + 14) = a2;
        *(v28 + 22) = 2048;
        *(v28 + 24) = v23;
        *(v28 + 32) = 2080;
        v30 = PubSubTopic.description.getter();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v54);

        *(v28 + 34) = v32;
        _os_log_impl(&dword_1AEB26000, v26, v27, "Ignoring ack, publisherID=%llu currentSeqNum=%llu <= previousSeqNum=%llu %s", v28, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x1B27120C0](v29, -1, -1);
        MEMORY[0x1B27120C0](v28, -1, -1);
      }

      return;
    }
  }

  else
  {
    v24 = swift_endAccess();
  }

  MEMORY[0x1EEE9AC00](v24);
  *(&v51 - 2) = a1;
  *(&v51 - 1) = a2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest, &protocol conformance descriptor for CP_SubscribeRequest);
  static Message.with(_:)();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = *(v3 + v19);
  *(v3 + v19) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + v19) = v53[0];
  swift_endAccess();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, log);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  v37 = os_log_type_enabled(v35, v36);
  v52 = v8;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v54[0] = v39;
    *v38 = 134218498;
    *(v38 + 4) = a1;
    *(v38 + 12) = 2048;
    *(v38 + 14) = a2;
    *(v38 + 22) = 2080;
    *(v38 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 16), *(v3 + 24), v54);
    _os_log_impl(&dword_1AEB26000, v35, v36, "Sending ack publisherID=%llu seqNum=%llu topic=%s", v38, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1B27120C0](v39, -1, -1);
    MEMORY[0x1B27120C0](v38, -1, -1);
  }

  v40 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
  swift_beginAccess();
  v51 = v40;
  v41 = *(v3 + v40);
  v42 = *(v41 + 16);

  if (v42)
  {
    v43 = 0;
    v44 = v41 + 32;
    v45 = MEMORY[0x1E69E7CC0];
    while (v43 < *(v41 + 16))
    {
      outlined init with copy of PubSubTopic.ReceivedRecord(v44, v54);
      if (v54[0] != a1 || v54[1] > a2)
      {
        outlined init with take of PubSubTopic.ReceivedRecord(v54, v53);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v45;
        if ((v47 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1);
          v45 = v55;
        }

        v49 = *(v45 + 16);
        v48 = *(v45 + 24);
        if (v49 >= v48 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
          v45 = v55;
        }

        *(v45 + 16) = v49 + 1;
        outlined init with take of PubSubTopic.ReceivedRecord(v53, v45 + (v49 << 6) + 32);
      }

      else
      {
        outlined destroy of PubSubTopic.ReceivedRecord(v54);
      }

      ++v43;
      v44 += 64;
      if (v42 == v43)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_35:

  *(v3 + v51) = v45;

  v50 = v52;
  PassthroughSubject.send(_:)();

  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v50, type metadata accessor for CP_SubscribeRequest);
}

uint64_t protocol witness for PubSubTopicRecord.data.getter in conformance PubSubTopic.ReceivedRecord()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t PubSubTopic.SendItem.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t PubSubTopic.SendItem.messageTypeIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PubSubTopic.SendItem.seqNum.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t PubSubTopic.SendItem.previousSeqNumUnacked.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t PubSubTopic.SendItem.__allocating_init(data:to:messageTypeIdentifier:previousSeqNumUnacked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  *(v14 + 56) = 0;
  *(v14 + 64) = 1;
  *(v14 + 72) = 0;
  *(v14 + 80) = 1;
  v15 = OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt;
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  swift_beginAccess();
  *(v14 + 72) = a6;
  *(v14 + 80) = a7 & 1;
  return v14;
}

uint64_t PubSubTopic.SendItem.init(data:to:messageTypeIdentifier:previousSeqNumUnacked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = 0;
  *(v7 + 64) = 1;
  *(v7 + 72) = 0;
  *(v7 + 80) = 1;
  v15 = OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt;
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v7 + v15, 1, 1, v16);
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  swift_beginAccess();
  *(v7 + 72) = a6;
  *(v7 + 80) = a7 & 1;
  return v7;
}

void *PubSubTopic.SendItem.deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v0;
}

uint64_t PubSubTopic.SendItem.__deallocating_deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  return swift_deallocClassInstance();
}

uint64_t PubSubTopic.State.description.getter()
{
  v1 = *v0;
  v2 = 0x676E697472617453;
  v3 = 0x7964616552;
  v4 = 0x676E697474756853;
  if (v1 != 3)
  {
    v4 = 0x6E776F6474756853;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696863746143;
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

Swift::Int PubSubTopic.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PubSubTopic.State()
{
  v1 = *v0;
  v2 = 0x676E697472617453;
  v3 = 0x7964616552;
  v4 = 0x676E697474756853;
  if (v1 != 3)
  {
    v4 = 0x6E776F6474756853;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696863746143;
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

uint64_t PubSubTopic.PrimaryStreamState.description.getter(unsigned __int8 a1)
{
  v1 = 0x696C616974696E49;
  v2 = 0x7964616552;
  if (a1 != 2)
  {
    v2 = 0x6465736F6C43;
  }

  if (a1)
  {
    v1 = 0x676E697972746552;
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

Swift::Int PubSubTopic.PrimaryStreamState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PubSubTopic.PrimaryStreamState()
{
  v1 = 0x696C616974696E49;
  v2 = 0x7964616552;
  if (*v0 != 2)
  {
    v2 = 0x6465736F6C43;
  }

  if (*v0)
  {
    v1 = 0x676E697972746552;
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

uint64_t PubSubTopic.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

__n128 PubSubTopic.config.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t PubSubTopic.localParticipantID.getter()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t PubSubTopic.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 144) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PubSubTopic.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 144);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PubSubTopic.delegate.modify;
}

void PubSubTopic.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 144) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PubSubTopic.SendItem.publishedAt.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2 + v4, a2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t PubSubTopic.SendItem.publishedAt.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t PubSubTopic.reporterTag.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);

  return v1;
}

uint64_t key path getter for PubSubTopic.subscribers : PubSubTopic@<X0>(void *a4@<X8>)
{
  return key path getter for PubSubTopic.subscribers : PubSubTopic(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t PubSubTopic.subscribers.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*PubSubTopic.subscribers.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConversationManagerClient.activeSessionContainer.modify;
}

uint64_t key path setter for PubSubTopic.$subscribers : PubSubTopic(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t PubSubTopic.$subscribers.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PubSubTopic.$subscribers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

uint64_t PubSubTopic.queueState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for PubSubTopic.queueState : PubSubTopic@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for PubSubTopic.queueState : PubSubTopic(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PubSubTopic.$subscribers.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for PubSubTopic.$subscribers : PubSubTopic(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for PubSubTopic.$queueState : PubSubTopic(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t PubSubTopic.subscribers.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t PubSubTopic.__allocating_init(name:config:service:dataCryptorProvider:delegate:seqNumWatermark:reporter:reporterTag:)(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v113 = a8;
  v105 = a7;
  v126 = a6;
  v127 = a5;
  v128 = a4;
  v103 = a3;
  v101 = a2;
  v124 = a1;
  v104 = a11;
  v102 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v122 = *(v11 - 8);
  v123 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v120 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v94 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v94 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v118 = *(v16 - 8);
  v119 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v94 - v17;
  v111 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v106 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for UUID();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMd, &_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMR);
  v100 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v99 = &v94 - v23;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64VAEGGMd, &_s7Combine9PublishedVySDys6UInt64VAEGGMR);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v25 = &v94 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v94 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v94 - v32;
  v34 = swift_allocObject();
  *(v34 + 144) = 0;
  swift_unknownObjectWeakInit();
  v35 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
  v36 = type metadata accessor for Date();
  (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v38 = MEMORY[0x1E69E7CC8];
  v131 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  Published.init(initialValue:)();
  (*(v31 + 32))(v34 + v37, v33, v30);
  v39 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__queueState;
  v40 = MEMORY[0x1E69E7CC0];
  v131 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  Published.init(initialValue:)();
  v41 = *(v27 + 32);
  v112 = v26;
  v41(v34 + v39, v29, v26);
  v42 = v101;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata) = v38;
  v43 = v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason;
  *v43 = 0;
  *(v43 + 8) = -1;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = 0;
  v44 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscriberSeqNums;
  v131 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64VABGMd, &_sSDys6UInt64VABGMR);
  Published.init(initialValue:)();
  v45 = v34 + v44;
  v46 = v124;
  v47 = v25;
  v48 = v102;
  (*(v97 + 32))(v45, v47, v98);
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked) = v38;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue) = v38;
  v49 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__sendQueue;
  v131 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore11PubSubTopicC8SendItemCGMd, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMR);
  v50 = v99;
  Published.init(initialValue:)();
  (*(v100 + 32))(v34 + v49, v50, v125);
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue) = v40;
  v51 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
  swift_allocObject();
  *(v34 + v51) = PassthroughSubject.init()();
  v52 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
  swift_allocObject();
  *(v34 + v52) = PassthroughSubject.init()();
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable) = 0;
  v53 = MEMORY[0x1E69E7CD0];
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_upsertMetadataCancellables) = MEMORY[0x1E69E7CD0];
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable) = 0;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorCancellables) = v53;
  *(v34 + 16) = v46;
  *(v34 + 24) = v42;
  v54 = v103;
  v55 = v103[3];
  *(v34 + 64) = v103[2];
  *(v34 + 80) = v55;
  v56 = v54[1];
  *(v34 + 32) = *v54;
  *(v34 + 48) = v56;
  outlined init with copy of UserNotificationCenter(v128, v34 + 96);
  outlined init with copy of UserNotificationCenter(v127, v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  swift_beginAccess();
  *(v34 + 144) = v105;
  swift_unknownObjectWeakAssign();
  v57 = v104;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter) = v48;
  if (v57)
  {
    v58 = (v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v58 = a10;
    v58[1] = v57;
  }

  else
  {

    v59 = v94;
    UUID.init()();
    v60 = UUID.uuidString.getter();
    v62 = v61;
    (*(v95 + 8))(v59, v96);
    v63 = (v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v63 = v60;
    v63[1] = v62;
    if (v48)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, log);

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v130[0] = v68;
        *v67 = 136315138;
        v69 = v40;
        v70 = *v63;
        v71 = v63[1];

        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v130);

        *(v67 + 4) = v72;
        v40 = v69;
        _os_log_impl(&dword_1AEB26000, v65, v66, "PubSubTopic initialized with a reporter, but no tag. Assigning random tag=%s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x1B27120C0](v68, -1, -1);
        v73 = v67;
        v46 = v124;
        MEMORY[0x1B27120C0](v73, -1, -1);
      }
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  strcpy(v130, "PubSubTopic.");
  BYTE5(v130[1]) = 0;
  HIWORD(v130[1]) = -5120;
  MEMORY[0x1B2710020](v46, v42);

  static DispatchQoS.unspecified.getter();
  v130[0] = v40;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v110 + 104))(v109, *MEMORY[0x1E69E8090], v111);
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) = 0;
  v74 = v113;
  if (v113)
  {
    v75 = *(v34 + 120);
    v76 = *(v34 + 128);
    __swift_project_boxed_opaque_existential_1((v34 + 96), v75);
    v77 = (*(v76 + 16))(v75, v76);
    if (*(v74 + 16))
    {
      v78 = specialized __RawDictionaryStorage.find<A>(_:)(v77);
      if (v79)
      {
        v80 = *(*(v74 + 56) + 8 * v78);
        *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = v80;
        *(v34 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v80;
      }
    }

    v81 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked;
    swift_beginAccess();
    *(v34 + v81) = v74;

    v130[0] = v74;
    v82 = *(v34 + 120);
    v83 = *(v34 + 128);
    __swift_project_boxed_opaque_existential_1((v34 + 96), v82);
    v84 = (*(v83 + 16))(v82, v83);
    specialized Dictionary._Variant.removeValue(forKey:)(v84);
    v85 = v130[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v129 = v85;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  v86 = v114;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[PubSubTopic.SendItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR, MEMORY[0x1E695C068]);
  v87 = v117;
  v88 = v116;
  Publisher.map<A>(_:)();
  (*(v115 + 8))(v86, v88);
  swift_beginAccess();
  v89 = v121;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[PubSubTopic.SendItem]>.Publisher, PubSubTopic.QueueState> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR, MEMORY[0x1E695BD60]);
  v90 = v119;
  Publisher<>.assign(to:)();
  (*(v118 + 8))(v87, v90);
  v92 = v122;
  v91 = v123;
  (*(v122 + 16))(v120, v89, v123);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v92 + 8))(v89, v91);
  PubSubTopic.bootstrap()();
  __swift_destroy_boxed_opaque_existential_1Tm(v127);
  __swift_destroy_boxed_opaque_existential_1Tm(v128);
  swift_unknownObjectRelease();

  return v34;
}

uint64_t PubSubTopic.init(name:config:service:dataCryptorProvider:delegate:seqNumWatermark:reporter:reporterTag:)(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = specialized PubSubTopic.init(name:config:service:dataCryptorProvider:delegate:seqNumWatermark:reporter:reporterTag:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  swift_unknownObjectRelease();
  return v11;
}

unint64_t *closure #1 in PubSubTopic.init(name:config:service:dataCryptorProvider:delegate:seqNumWatermark:reporter:reporterTag:)@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (*result >> 62)
  {
    goto LABEL_28;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = MEMORY[0x1E69E7CC8];
      while ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B2710B10](v4, v2);
        v7 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_23;
        }

LABEL_7:
        v9 = *(v6 + 40);
        v8 = *(v6 + 48);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
        v13 = v5[2];
        v14 = (v12 & 1) == 0;
        v15 = __OFADD__(v13, v14);
        v16 = v13 + v14;
        if (v15)
        {
          goto LABEL_25;
        }

        v17 = v12;
        if (v5[3] < v16)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
          v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
          if ((v17 & 1) != (v18 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_12:
          if (v17)
          {
            goto LABEL_13;
          }

          goto LABEL_18;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        v20 = v11;
        specialized _NativeDictionary.copy()();
        v11 = v20;
        if (v17)
        {
LABEL_13:
          v19 = v11;

          v11 = v19;
          goto LABEL_20;
        }

LABEL_18:
        v5[(v11 >> 6) + 8] |= 1 << v11;
        v21 = (v5[6] + 16 * v11);
        *v21 = v9;
        v21[1] = v8;
        *(v5[7] + 8 * v11) = 0;
        v22 = v5[2];
        v15 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v15)
        {
          goto LABEL_27;
        }

        v5[2] = v23;
LABEL_20:
        v24 = v5[7];
        v25 = *(v24 + 8 * v11);
        v15 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v15)
        {
          goto LABEL_26;
        }

        *(v24 + 8 * v11) = v26;

        ++v4;
        if (v7 == v3)
        {
          goto LABEL_30;
        }
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(v2 + 8 * v4 + 32);

      v7 = (v4 + 1);
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_7;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      result = __CocoaSet.count.getter();
      v3 = result;
    }

    while (result);
  }

  v5 = MEMORY[0x1E69E7CC8];
LABEL_30:
  *a2 = v5;
  return result;
}

uint64_t PubSubTopic.bootstrap()()
{
  v1 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), v11);
    _os_log_impl(&dword_1AEB26000, v3, v4, "Bootstrapping topic=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in PubSubTopic.bootstrap();
  *(v8 + 24) = v1;
  v11[4] = _sIg_Ieg_TRTA_0;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_149;
  v9 = _Block_copy(v11);

  dispatch_sync(v7, v9);
  _Block_release(v9);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopic.__allocating_init(name:config:service:dataCryptorProvider:delegate:)(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v79 = a7;
  v80 = a6;
  v95 = a5;
  v78 = a4;
  v75 = a2;
  v74 = a1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v92 = *(v93 - 8);
  v9 = MEMORY[0x1EEE9AC00](v93);
  v91 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v64 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v87 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v64 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v89 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v64 - v13;
  v83 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UUID();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMd, &_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMR);
  v68 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v67 = &v64 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64VAEGGMd, &_s7Combine9PublishedVySDys6UInt64VAEGGMR);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v69 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v64 - v28;
  v30 = a3[1];
  v100 = *a3;
  v101 = v30;
  v31 = a3[3];
  v102 = a3[2];
  v103 = v31;
  outlined init with copy of UserNotificationCenter(a4, &v99);
  outlined init with copy of UserNotificationCenter(v95, &v98);
  v32 = swift_allocObject();
  *(v32 + 144) = 0;
  swift_unknownObjectWeakInit();
  v33 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
  v34 = type metadata accessor for Date();
  (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v36 = MEMORY[0x1E69E7CC8];
  v97 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  Published.init(initialValue:)();
  (*(v27 + 32))(v32 + v35, v29, v26);
  v37 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__queueState;
  v38 = MEMORY[0x1E69E7CC0];
  v97 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  Published.init(initialValue:)();
  (*(v23 + 32))(v32 + v37, v25, v22);
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata) = v36;
  v39 = v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason;
  *v39 = 0;
  *(v39 + 8) = -1;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = 0;
  v40 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscriberSeqNums;
  v97 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64VABGMd, &_sSDys6UInt64VABGMR);
  Published.init(initialValue:)();
  (*(v65 + 32))(v32 + v40, v21, v66);
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked) = v36;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue) = v36;
  v41 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__sendQueue;
  v97 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore11PubSubTopicC8SendItemCGMd, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMR);
  v42 = v67;
  Published.init(initialValue:)();
  (*(v68 + 32))(v32 + v41, v42, v94);
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue) = v38;
  v43 = v38;
  v44 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
  swift_allocObject();
  *(v32 + v44) = PassthroughSubject.init()();
  v45 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
  swift_allocObject();
  *(v32 + v45) = PassthroughSubject.init()();
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable) = 0;
  v46 = MEMORY[0x1E69E7CD0];
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_upsertMetadataCancellables) = MEMORY[0x1E69E7CD0];
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable) = 0;
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorCancellables) = v46;
  v47 = v74;
  v48 = v75;
  *(v32 + 16) = v74;
  *(v32 + 24) = v48;
  v49 = v103;
  *(v32 + 64) = v102;
  *(v32 + 80) = v49;
  v50 = v101;
  *(v32 + 32) = v100;
  *(v32 + 48) = v50;
  outlined init with copy of UserNotificationCenter(&v99, v32 + 96);
  outlined init with copy of UserNotificationCenter(&v98, v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  swift_beginAccess();
  *(v32 + 144) = v79;
  swift_unknownObjectWeakAssign();
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter) = 0;

  v51 = v70;
  UUID.init()();
  v52 = UUID.uuidString.getter();
  v54 = v53;
  (*(v71 + 8))(v51, v72);
  v55 = (v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
  *v55 = v52;
  v55[1] = v54;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  strcpy(v96, "PubSubTopic.");
  BYTE5(v96[1]) = 0;
  HIWORD(v96[1]) = -5120;
  MEMORY[0x1B2710020](v47, v48);

  static DispatchQoS.unspecified.getter();
  v96[0] = v43;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v82 + 104))(v81, *MEMORY[0x1E69E8090], v83);
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) = 0;
  swift_beginAccess();
  v56 = v85;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[PubSubTopic.SendItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR, MEMORY[0x1E695C068]);
  v57 = v84;
  v58 = v86;
  Publisher.map<A>(_:)();
  (*(v87 + 8))(v56, v58);
  swift_beginAccess();
  v59 = v90;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[PubSubTopic.SendItem]>.Publisher, PubSubTopic.QueueState> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR, MEMORY[0x1E695BD60]);
  v60 = v88;
  Publisher<>.assign(to:)();
  (*(v89 + 8))(v57, v60);
  v61 = v92;
  v62 = v93;
  (*(v92 + 16))(v91, v59, v93);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v61 + 8))(v59, v62);
  PubSubTopic.bootstrap()();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(&v98);
  __swift_destroy_boxed_opaque_existential_1Tm(&v99);
  return v32;
}

uint64_t PubSubTopic.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable))
  {

    AnyCancellable.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable))
  {

    AnyCancellable.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable))
  {

    AnyCancellable.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable))
  {

    AnyCancellable.cancel()();
  }

  v2 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_upsertMetadataCancellables;
  swift_beginAccess();
  *(v0 + v2) = MEMORY[0x1E69E7CD0];

  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable))
  {

    AnyCancellable.cancel()();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + 136);
  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider));
  v3 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__queueState;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);

  outlined consume of PubSubTopic.ClosedReason?(*(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason), *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason + 8));
  v7 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscriberSeqNums;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64VAEGGMd, &_s7Combine9PublishedVySDys6UInt64VAEGGMR);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);

  v9 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__sendQueue;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMd, &_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMR);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);

  return v1;
}

uint64_t PubSubTopic.__deallocating_deinit()
{
  PubSubTopic.deinit();

  return swift_deallocClassInstance();
}

void closure #1 in PubSubTopic.bootstrap()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMR);
  v3 = *(v2 - 8);
  v46 = v2;
  v47 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGGMR);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMR);
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v16 = &v33 - v15;
  v17 = (a1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  v18 = *(a1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
  v19 = *(a1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v18);
  v50 = (*(v19 + 16))(v18, v19);
  v51 = *(a1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  v20 = v51;
  v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v21 = *(v41 - 8);
  v40 = *(v21 + 56);
  v42 = v21 + 56;
  v40(v10, 1, 1, v41);
  v38 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
  v36 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v37 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<UUID, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR, MEMORY[0x1E695BED8]);
  v35 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v10, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v22 = MEMORY[0x1E695BE98];
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v23 = v33;
  Publisher.dropFirst(_:)();
  (*(v34 + 8))(v14, v23);
  swift_allocObject();
  swift_weakInit();
  v24 = MEMORY[0x1E695BD78];
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Drop<Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue>> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMR, MEMORY[0x1E695BD78]);
  v25 = v39;
  Publisher<>.sink(receiveValue:)();

  (*(v43 + 8))(v16, v25);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v26 = v17[3];
  v27 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v26);
  v50 = (*(v27 + 32))(v26, v27);
  v28 = v38;
  v51 = v38;
  v40(v10, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR, v37);
  v29 = v44;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v10, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[UUID], Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMR, v22);
  v31 = v45;
  v30 = v46;
  Publisher.dropFirst(_:)();
  (*(v47 + 8))(v29, v30);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Drop<Publishers.ReceiveOn<AnyPublisher<[UUID], Never>, OS_dispatch_queue>> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGGMR, v24);
  v32 = v48;
  Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v31, v32);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(0, 1);
  PubSubTopic.setupPublishStream()();
}

uint64_t closure #1 in closure #1 in PubSubTopic.bootstrap()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PubSubTopic.onLocalEncryptionIDRotated(encryptionID:)(a1);
  }

  return result;
}

void PubSubTopic.onLocalEncryptionIDRotated(encryptionID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CP_PublishRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) <= 2u)
  {
    MEMORY[0x1EEE9AC00](v16);
    *(&v32 - 2) = v1;
    *(&v32 - 1) = a1;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest, &protocol conformance descriptor for CP_PublishRequest);
    static Message.with(_:)();
    if (one-time initialization token for log == -1)
    {
LABEL_4:
      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, log);
      (*(v5 + 16))(v7, a1, v4);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v34 = v21;
        *v20 = 136315394;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        (*(v5 + 8))(v7, v4);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v34);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2080;
        *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v34);
        _os_log_impl(&dword_1AEB26000, v18, v19, "[Decrypt] Sending encryptionID, encryptionID=%s topic=%s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v21, -1, -1);
        MEMORY[0x1B27120C0](v20, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }

      v31 = v33;
      PassthroughSubject.send(_:)();

      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v31, type metadata accessor for CP_PublishRequest);
      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, log);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v29 = 136315138;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v34);
    _os_log_impl(&dword_1AEB26000, v27, v28, "[Decrypt] Skipping local-encryptionID-update, topic=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }
}

uint64_t closure #2 in closure #1 in PubSubTopic.bootstrap()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PubSubTopic.onEncryptionIDsRefreshed()();
  }

  return result;
}

Swift::Void __swiftcall PubSubTopic.onEncryptionIDsRefreshed()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
    v10 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v9);
    v8 = (*(v10 + 24))(v9, v10);
    if (one-time initialization token for log == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, log);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315394;
    v16 = type metadata accessor for UUID();
    v17 = MEMORY[0x1B2710180](v8, v16);
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v30);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v30);
    _os_log_impl(&dword_1AEB26000, v12, v13, "[Decrypt] Refreshed encryptionIDs, encryptionIDs=%s topic=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  else
  {
  }

  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state))
  {
    PubSubTopic.processDecryptionQueue()();
  }

  else
  {
    v21 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    if (v21)
    {
      if (v24)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30 = v26;
        *v25 = 136315138;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v30);
        _os_log_impl(&dword_1AEB26000, v22, v23, "[Decrypt] Skipping retry, initialize-in-flight topic=%s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x1B27120C0](v26, -1, -1);
        MEMORY[0x1B27120C0](v25, -1, -1);
      }

      *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 1;
    }

    else
    {
      if (v24)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v27 = 136315138;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v30);
        _os_log_impl(&dword_1AEB26000, v22, v23, "[Decrypt] Retrying Subscribe stream, topic=%s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1B27120C0](v28, -1, -1);
        MEMORY[0x1B27120C0](v27, -1, -1);
      }

      *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 1;
      PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(1, 0);
    }
  }
}

void PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(int a1, int a2)
{
  v3 = v2;
  v111 = a2;
  v109 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v108 = &v97 - v5;
  v113 = type metadata accessor for CP_SubscribeRequest(0);
  v6 = MEMORY[0x1EEE9AC00](v113);
  v110 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v114 = &v97 - v8;
  v116 = type metadata accessor for UUID();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v104 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR);
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v97 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v100 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v15 = &v97 - v14;
  v16 = type metadata accessor for Publishers.PrefetchStrategy();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGGMR);
  v101 = *(v20 - 8);
  v102 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v97 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v26 = v27;
  (*(v24 + 104))(v26, *MEMORY[0x1E69E8020], v23);
  v99 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = 0;

  *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = 0;

  if (*(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) <= 2u)
  {
    if ((v109 & 1) == 0)
    {
      v28 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
      LOBYTE(v117) = 1;

      PassthroughSubject.send(completion:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
      swift_allocObject();
      v29 = PassthroughSubject.init()();
      *(v3 + v28) = v29;

      v117 = v29;
      v30 = *MEMORY[0x1E695BD28];
      v31 = *(v17 + 104);
      v98 = v16;
      v31(v19, v30, v16);
      v32 = v100;
      v33 = v103;
      (*(v100 + 104))(v15, *MEMORY[0x1E695BD40], v103);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<CP_SubscribeRequest, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR, MEMORY[0x1E695BF88]);
      Publisher.buffer(size:prefetch:whenFull:)();
      (*(v32 + 8))(v15, v33);
      (*(v17 + 8))(v19, v98);

      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<PassthroughSubject<CP_SubscribeRequest, Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGGMR, MEMORY[0x1E695BDD8]);
      v34 = v102;
      v35 = Publisher.eraseToAnyPublisher()();
      (*(v101 + 8))(v22, v34);
      v36 = v3[15];
      v37 = v3[16];
      __swift_project_boxed_opaque_existential_1(v3 + 12, v36);
      v117 = (*(v37 + 48))(v35, v36, v37);
      v38 = v99;
      v119[0] = v99;
      v39 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v40 = v104;
      (*(*(v39 - 8) + 56))(v104, 1, 1, v39);
      v41 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAD14PluginRpcErrorOGMR);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_SubscribeResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAD14PluginRpcErrorOGMR, MEMORY[0x1E695BED8]);
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
      v42 = v105;
      Publisher.receive<A>(on:options:)();
      outlined destroy of NSObject?(v40, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CP_SubscribeResponse, PluginRpcError>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
      swift_retain_n();
      v43 = v107;
      v44 = Publisher.sink(receiveCompletion:receiveValue:)();

      (*(v106 + 8))(v42, v43);
      *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable) = v44;
    }

    v45 = (v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
    v46 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
    v47 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v46);
    v48 = v115;
    (*(v47 + 8))(v46, v47);
    v49 = v45[3];
    v50 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v49);
    v51 = (*(v50 + 24))(v49, v50);
    v52 = MEMORY[0x1EEE9AC00](v51);
    *(&v97 - 4) = v3;
    *(&v97 - 3) = v52;
    *(&v97 - 2) = v48;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest, &protocol conformance descriptor for CP_SubscribeRequest);
    v16 = v114;
    static Message.with(_:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v53 = v117;
    v54 = v3[15];
    v55 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v54);
    v56 = (*(v55 + 16))(v54, v55);
    v57 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v53;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v56, isUniquelyReferenced_nonNull_native);
    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x1B2710020](0x7165536E776F6E6BLL, 0xED00003D736D754ELL);
    v59 = Dictionary.description.getter();
    v61 = v60;

    MEMORY[0x1B2710020](v59, v61);

    MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE37A50);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v62 = v116;
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v63);

    MEMORY[0x1B2710020](0x7470797263656420, 0xEF3D7344496E6F69);
    v64 = MEMORY[0x1B2710180](v51, v62);
    v66 = v65;

    MEMORY[0x1B2710020](v64, v66);

    v22 = v117;
    v15 = v118;
    if (one-time initialization token for log == -1)
    {
LABEL_6:
      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, log);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v117 = v71;
        *v70 = 136315394;
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v15, &v117);

        *(v70 + 4) = v72;
        *(v70 + 12) = 2080;
        v73 = PubSubTopic.description.getter();
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v117);

        *(v70 + 14) = v75;
        _os_log_impl(&dword_1AEB26000, v68, v69, "[Subscribe] Initializing, %s %s", v70, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v71, -1, -1);
        v76 = v70;
        v16 = v114;
        MEMORY[0x1B27120C0](v76, -1, -1);
      }

      else
      {
      }

      v85 = v110;
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v16, v110, type metadata accessor for CP_SubscribeRequest);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v117 = v89;
        *v88 = 136315138;
        v90 = Message.debugDescription.getter();
        v92 = v91;
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v85, type metadata accessor for CP_SubscribeRequest);
        v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v117);

        *(v88 + 4) = v93;
        _os_log_impl(&dword_1AEB26000, v86, v87, "[Subscribe] Sending Initialize request=%s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x1B27120C0](v89, -1, -1);
        MEMORY[0x1B27120C0](v88, -1, -1);

        if ((v111 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {

        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v85, type metadata accessor for CP_SubscribeRequest);
        if ((v111 & 1) == 0)
        {
LABEL_19:
          *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 1;

          PassthroughSubject.send(_:)();

          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for CP_SubscribeRequest);
          (*(v112 + 8))(v115, v116);
          return;
        }
      }

      v94 = v108;
      static Date.now.getter();
      v95 = type metadata accessor for Date();
      (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
      v96 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
      swift_beginAccess();
      outlined assign with take of Date?(v94, v3 + v96);
      swift_endAccess();
      goto LABEL_19;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  __swift_project_value_buffer(v77, log);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v117 = v81;
    *v80 = 136315138;
    v82 = PubSubTopic.description.getter();
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v117);

    *(v80 + 4) = v84;
    _os_log_impl(&dword_1AEB26000, v78, v79, "Skipping Subscribe stream setup, closing, %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    MEMORY[0x1B27120C0](v81, -1, -1);
    MEMORY[0x1B27120C0](v80, -1, -1);
  }
}

void PubSubTopic.setupPublishStream()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v53 = v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = v46 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v5 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v7 = v46 - v6;
  v8 = type metadata accessor for Publishers.PrefetchStrategy();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGGMR);
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = v46 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v50 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v19 = v0;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) <= 2u)
  {
    v20 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
    LOBYTE(v58) = 1;

    PassthroughSubject.send(completion:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
    swift_allocObject();
    v21 = PassthroughSubject.init()();
    *(v0 + v20) = v21;

    v58 = v21;
    v46[1] = v0[5];
    v22 = *MEMORY[0x1E695BD28];
    v23 = *(v9 + 104);
    v47 = v8;
    v23(v11, v22, v8);
    v24 = v48;
    (*(v5 + 104))(v7, *MEMORY[0x1E695BD40], v48);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<CP_PublishRequest, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR, MEMORY[0x1E695BF88]);
    v25 = v49;
    Publisher.buffer(size:prefetch:whenFull:)();
    (*(v5 + 8))(v7, v24);
    (*(v9 + 8))(v11, v47);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<PassthroughSubject<CP_PublishRequest, Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGGMR, MEMORY[0x1E695BDD8]);
    v26 = v52;
    v27 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v25, v26);
    v28 = v0[15];
    v29 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v28);
    v30 = (*(v29 + 56))(v27, v28, v29);
    *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) = 2;
    PubSubTopic.attemptSendQueueFlush()();
    v31 = v50;
    v57 = v50;
    v58 = v30;
    v32 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v33 = v53;
    (*(*(v32 - 8) + 56))(v53, 1, 1, v32);
    v34 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAD14PluginRpcErrorOGMR);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_PublishResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAD14PluginRpcErrorOGMR, MEMORY[0x1E695BED8]);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
    v35 = v54;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v33, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CP_PublishResponse, PluginRpcError>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
    swift_retain_n();
    v36 = v56;
    v37 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v55 + 8))(v35, v36);
    *(v19 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable) = v37;

    return;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, log);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v58 = v42;
    *v41 = 136315138;
    v43 = PubSubTopic.description.getter();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v58);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1AEB26000, v39, v40, "Skipping Publish stream setup, closing, %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1B27120C0](v42, -1, -1);
    MEMORY[0x1B27120C0](v41, -1, -1);
  }
}

uint64_t PubSubTopic.description.getter()
{
  v1 = v0;
  v2 = 0x7964616552;
  v3 = 0xE500000000000000;
  MEMORY[0x1B2710020](0x3D666C6573, 0xE500000000000000);
  _print_unlocked<A, B>(_:_:)();
  v46[0] = 0x3D656D616ELL;
  v46[1] = 0xE500000000000000;
  MEMORY[0x1B2710020](v0[2], v0[3]);
  v46[0] = 0x3D6574617473;
  v46[1] = 0xE600000000000000;
  v4 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state);
  if (v4 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state))
    {
      v3 = 0xEA00000000007055;
      v6 = 0x696863746143;
      goto LABEL_11;
    }

    v3 = 0xE800000000000000;
    v5 = 1918989395;
  }

  else
  {
    if (v4 == 2)
    {
      v7 = 0x7964616552;
      goto LABEL_12;
    }

    if (v4 != 3)
    {
      v3 = 0xE800000000000000;
      v7 = 0x6E776F6474756853;
      goto LABEL_12;
    }

    v3 = 0xEC0000006E776F44;
    v5 = 1953851475;
  }

  v6 = v5 & 0xFFFF0000FFFFFFFFLL | 0x697400000000;
LABEL_11:
  v7 = v6 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
LABEL_12:
  MEMORY[0x1B2710020](v7, v3);

  v9 = v46[0];
  v8 = v46[1];
  _StringGuts.grow(_:)(23);

  v46[0] = 0xD000000000000015;
  v46[1] = 0x80000001AEE375E0;
  v44 = v8;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) > 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 2)
    {
      v11 = 0xE500000000000000;
      v10 = 0x7964616552;
    }

    else
    {
      v11 = 0xE600000000000000;
      v10 = 0x6465736F6C43;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState))
  {
    v11 = 0xE800000000000000;
    v10 = 0x676E697972746552;
  }

  else
  {
    v10 = 0x696C616974696E49;
    v11 = 0xEC000000676E697ALL;
  }

  MEMORY[0x1B2710020](v10, v11);

  v13 = v46[0];
  v12 = v46[1];
  _StringGuts.grow(_:)(21);

  v46[0] = 0xD000000000000013;
  v46[1] = 0x80000001AEE37600;
  v43 = v12;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) > 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) == 2)
    {
      v14 = 0xE500000000000000;
    }

    else
    {
      v14 = 0xE600000000000000;
      v2 = 0x6465736F6C43;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState))
  {
    v14 = 0xE800000000000000;
    v2 = 0x676E697972746552;
  }

  else
  {
    v2 = 0x696C616974696E49;
    v14 = 0xEC000000676E697ALL;
  }

  MEMORY[0x1B2710020](v2, v14);

  v41 = v46[0];
  v42 = v46[1];
  _StringGuts.grow(_:)(21);

  v46[0] = 0xD000000000000013;
  v46[1] = 0x80000001AEE36200;
  v15 = v0[15];
  v16 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v15);
  (*(v16 + 16))(v15, v16);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v17);

  HIDWORD(v46[1]) = -335544320;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v18);

  v40 = strcpy(v46, "seqNum=");
  strcpy(v46, "seqNumAcked=");
  v45 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v19);

  v20 = v46[1];
  v39 = v46[0];
  _StringGuts.grow(_:)(17);

  v46[0] = 0x75657551646E6573;
  v46[1] = 0xEF3D657A69732D65;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v45 >> 62)
  {
LABEL_41:
    __CocoaSet.count.getter();
  }

  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v21);

  v22 = v46[0];
  v23 = v46[1];
  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  swift_beginAccess();
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v24);

  v25 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue;
  swift_beginAccess();
  v26 = 0;
  v27 = 0;
  v28 = *(v1 + v25);
  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v28 + 64);
  v32 = (v29 + 63) >> 6;
  do
  {
    if (!v31)
    {
      while (1)
      {
        v33 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v33 >= v32)
        {
          goto LABEL_39;
        }

        v31 = *(v28 + 64 + 8 * v33);
        ++v26;
        if (v31)
        {
          v26 = v33;
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v33 = v26;
LABEL_36:
    v34 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v35 = *(*(*(v28 + 56) + ((v33 << 9) | (8 * v34))) + 16);
    v36 = __OFADD__(v27, v35);
    v27 += v35;
  }

  while (!v36);
  __break(1u);
LABEL_39:
  _StringGuts.grow(_:)(20);

  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v37);

  _StringGuts.grow(_:)(32);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0x3D656D616ELL, 0xE500000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v9, v44);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v13, v43);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v41, v42);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE36200);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v40, 0xE700000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v39, v20);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v22, v23);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE37620);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE37640);

  return 0;
}

uint64_t PubSubTopic.seqNumWatermark.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v9 = v16;
    v10 = v1[15];
    v11 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v10);
    v12 = (*(v11 + 16))(v10, v11);
    v13 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v9;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v12, isUniquelyReferenced_nonNull_native);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopic.updateState(state:)(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v8 = v10;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    LODWORD(v2) = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state);
    *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) = v9;
    if (one-time initialization token for log == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, log);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34[0] = v16;
    *v15 = 136315650;
    v31 = v2;
    if (v2 <= 1)
    {
      if (v2)
      {
        v17 = 0x676E696863746143;
        v18 = 0xEA00000000007055;
      }

      else
      {
        v18 = 0xE800000000000000;
        v17 = 0x676E697472617453;
      }
    }

    else if (v2 == 2)
    {
      v18 = 0xE500000000000000;
      v17 = 0x7964616552;
    }

    else if (v2 == 3)
    {
      v17 = 0x676E697474756853;
      v18 = 0xEC0000006E776F44;
    }

    else
    {
      v18 = 0xE800000000000000;
      v17 = 0x6E776F6474756853;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v34);

    v20 = 0xE800000000000000;
    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v21 = 0xE500000000000000;
    v22 = 0x7964616552;
    v23 = 0x676E697474756853;
    v24 = 0xEC0000006E776F44;
    if (v9 != 3)
    {
      v23 = 0x6E776F6474756853;
      v24 = 0xE800000000000000;
    }

    if (v9 != 2)
    {
      v22 = v23;
      v21 = v24;
    }

    v25 = 0x676E696863746143;
    if (v9)
    {
      v20 = 0xEA00000000007055;
    }

    else
    {
      v25 = 0x676E697472617453;
    }

    if (v9 <= 1)
    {
      v26 = v25;
    }

    else
    {
      v26 = v22;
    }

    if (v9 <= 1)
    {
      v2 = v20;
    }

    else
    {
      v2 = v21;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v2, v34);

    *(v15 + 14) = v27;
    *(v15 + 22) = 2080;
    *(v15 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3[2], v3[3], v34);
    _os_log_impl(&dword_1AEB26000, v13, v14, "Updated state old-state=%s new-state=%s topic=%s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);

    LOBYTE(v2) = v31;
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = v3[18];
    ObjectType = swift_getObjectType();
    v33 = v2;
    v32 = v9;
    (*(v29 + 40))(v3, &v33, &v32, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

void PubSubTopic._setMetadata(metadata:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CP_KeyValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = *(a1 + 16);
    if (v14)
    {
      v41 = v2;
      v43[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v15 = v43[0];
      v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v17 = *(v5 + 72);
      do
      {
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v16, v7, type metadata accessor for CP_KeyValue);
        v18 = *v7;
        v19 = v7[1];
        v20 = v7[2];
        v21 = v7[3];

        outlined copy of Data._Representation(v20, v21);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for CP_KeyValue);
        v43[0] = v15;
        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v40 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v24 = v23 + 1;
          v17 = v40;
          v15 = v43[0];
        }

        *(v15 + 16) = v24;
        v25 = (v15 + 32 * v23);
        v25[4] = v18;
        v25[5] = v19;
        v25[6] = v20;
        v25[7] = v21;
        v16 += v17;
        --v14;
      }

      while (v14);
      v2 = v41;
    }

    else if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      v26 = MEMORY[0x1E69E7CC8];
LABEL_10:
      v43[0] = v26;

      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v27, 1, v43);

      v28 = v43[0];
      v29 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata;
      swift_beginAccess();
      *(v2 + v29) = v28;

      if (one-time initialization token for log == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v26 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_10;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_11:
  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, log);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136315138;

    v35 = Dictionary.Keys.description.getter();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v42);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1AEB26000, v31, v32, "Setting metadata with keys %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1B27120C0](v34, -1, -1);
    MEMORY[0x1B27120C0](v33, -1, -1);
  }
}

uint64_t PubSubTopic.updateMetadata(metadata:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CP_KeyValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v87 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_40;
  }

  v93 = MEMORY[0x1E69E7CD0];
  v13 = *(a1 + 16);
  if (v13)
  {
    v90 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata;
    v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    v88 = MEMORY[0x1E69E7CC8];
    v16 = v87;
    v85 = v15;
    v86 = v2;
    while (1)
    {
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v14, v16, type metadata accessor for CP_KeyValue);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      v21 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_4;
        }

        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = __OFSUB__(v23, v22);
        v25 = v23 - v22;
        if (v24)
        {
          goto LABEL_49;
        }

        if (v25 < 1)
        {
          goto LABEL_4;
        }
      }

      else if (v21)
      {
        if (__OFSUB__(DWORD1(v19), v19))
        {
          goto LABEL_48;
        }

        if (DWORD1(v19) - v19 < 1)
        {
LABEL_4:
          v17 = *v16;
          v18 = *(v16 + 8);
          swift_beginAccess();
          specialized Dictionary._Variant.removeValue(forKey:)(v17, v18, &v91);
          swift_endAccess();
          outlined consume of Data?(v91, *(&v91 + 1));

          specialized Set._Variant.insert(_:)(&v92, v17, v18);

          goto LABEL_5;
        }
      }

      else if (!BYTE6(v20))
      {
        goto LABEL_4;
      }

      v27 = *v16;
      v26 = *(v16 + 8);
      v28 = v90;
      v89 = v19;
      swift_beginAccess();
      v29 = v89;
      outlined copy of Data._Representation(v89, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v91 = *(v2 + v28);
      v31 = v91;
      *(v2 + v28) = 0x8000000000000000;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
      v34 = *(v31 + 16);
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v2 = v32;
      if (*(v31 + 24) >= v36)
      {
        v39 = v89;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_22;
        }

        specialized _NativeDictionary.copy()();
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
        if ((v2 & 1) != (v38 & 1))
        {
          goto LABEL_54;
        }

        v33 = v37;
      }

      v39 = v89;
LABEL_22:
      v40 = v91;
      if (v2)
      {
        v41 = (*(v91 + 56) + 16 * v33);
        v42 = *v41;
        v43 = v41[1];
        *v41 = v29;
        v41[1] = v20;
        outlined consume of Data._Representation(v42, v43);
      }

      else
      {
        *(v91 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v44 = (v40[6] + 16 * v33);
        *v44 = v27;
        v44[1] = v26;
        *(v40[7] + 16 * v33) = v39;
        v45 = v40[2];
        v24 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v24)
        {
          goto LABEL_50;
        }

        v40[2] = v46;
      }

      *(v86 + v90) = v40;
      swift_endAccess();
      v48 = *(v87 + 2);
      v47 = *(v87 + 3);
      outlined copy of Data._Representation(v48, v47);
      v49 = v88;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v49;
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
      v53 = *(v49 + 16);
      v54 = (v52 & 1) == 0;
      v24 = __OFADD__(v53, v54);
      v55 = v53 + v54;
      if (v24)
      {
        goto LABEL_47;
      }

      v2 = v52;
      if (*(v49 + 24) >= v55)
      {
        if ((v50 & 1) == 0)
        {
          v65 = v51;
          specialized _NativeDictionary.copy()();
          v51 = v65;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v50);
        v51 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
        if ((v2 & 1) != (v56 & 1))
        {
LABEL_54:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v57 = v92;
      v88 = v92;
      if (v2)
      {
        v58 = (v92[7] + 16 * v51);
        v59 = *v58;
        v60 = v58[1];
        *v58 = v48;
        v58[1] = v47;
        outlined consume of Data._Representation(v59, v60);
      }

      else
      {
        v92[(v51 >> 6) + 8] |= 1 << v51;
        v61 = (v57[6] + 16 * v51);
        *v61 = v27;
        v61[1] = v26;
        v62 = (v57[7] + 16 * v51);
        *v62 = v48;
        v62[1] = v47;
        v63 = v57[2];
        v24 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v24)
        {
          goto LABEL_51;
        }

        v57[2] = v64;
      }

      v2 = v86;
      v16 = v87;
      v15 = v85;
LABEL_5:
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for CP_KeyValue);
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_39;
      }
    }
  }

  v88 = MEMORY[0x1E69E7CC8];
LABEL_39:
  if (one-time initialization token for log != -1)
  {
    goto LABEL_53;
  }

LABEL_40:
  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, log);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v92 = v70;
    *v69 = 136315394;
    swift_beginAccess();

    v71 = Set.description.getter();
    v73 = v72;

    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v92);

    *(v69 + 4) = v74;
    *(v69 + 12) = 2080;

    v75 = Dictionary.description.getter();
    v77 = v76;

    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v92);

    *(v69 + 14) = v78;
    _os_log_impl(&dword_1AEB26000, v67, v68, "Updating metadata removedKeys=%s upsertedKeyValues=%s", v69, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v70, -1, -1);
    MEMORY[0x1B27120C0](v69, -1, -1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v79 = *(v2 + 144);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v81 = v93;
    v82 = *(v79 + 16);
    v83 = v88;

    v82(v2, v81, v83, ObjectType, v79);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t PubSubTopic._publish(_:)(uint64_t a1)
{
  v2 = v1;
  v148 = *MEMORY[0x1E69E9840];
  v131 = type metadata accessor for OSSignpostID();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v135 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for CP_PublishRequest(0);
  MEMORY[0x1EEE9AC00](v134);
  v139 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v132 = &v129 - v7;
  v138 = type metadata accessor for Date();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for CP_SequenceNumber(0);
  v9 = MEMORY[0x1EEE9AC00](v140);
  v133 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v141 = &v129 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = v2;
  v16 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v15 = v16;
  v17 = *MEMORY[0x1E69E8020];
  v18 = *(v13 + 104);
  v18(v15, v17, v12);
  v19 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  if ((v16 & 1) == 0)
  {
    goto LABEL_116;
  }

  swift_beginAccess();
  v142 = a1;
  if ((*(a1 + 80) & 1) != 0 || (v21 = *(v142 + 72), *(v143 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) < v21))
  {
    *v15 = v19;
    v18(v15, v17, v12);
    v22 = v19;
    v23 = _dispatchPreconditionTest(_:)();
    v20(v15, v12);
    if ((v23 & 1) == 0)
    {
      goto LABEL_117;
    }

    v24 = v143;
    v25 = *(v143 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum);
    v79 = __CFADD__(v25, 1);
    v26 = v25 + 1;
    if (v79)
    {
      goto LABEL_118;
    }

    *(v143 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = v26;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
    v17 = v141;
    static Message.with(_:)();
    v27 = *(v17 + 8);
    v28 = v142;
    swift_beginAccess();
    *(v28 + 56) = v27;
    *(v28 + 64) = 0;
    v29 = *(v24 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
    v30 = *(v24 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v29);
    v31 = (*(v30 + 56))(*(v28 + 16), *(v28 + 24), v27, v29, v30);
    if (v32 >> 60 == 15)
    {
      if (one-time initialization token for log != -1)
      {
        goto LABEL_123;
      }

      goto LABEL_8;
    }

    v43 = v31;
    v44 = v32;
    v45 = v136;
    Date.init()();
    v46 = v137;
    v47 = v132;
    v48 = v138;
    (*(v137 + 16))(v132, v45, v138);
    (*(v46 + 56))(v47, 0, 1, v48);
    v49 = OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt;
    swift_beginAccess();
    outlined assign with take of Date?(v47, v28 + v49);
    v50 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v50);
    *(&v129 - 6) = v24;
    *(&v129 - 5) = v17;
    *(&v129 - 4) = v43;
    *(&v129 - 3) = v44;
    *(&v129 - 2) = v28;
    *(&v129 - 1) = v45;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest, &protocol conformance descriptor for CP_PublishRequest);
    static Message.with(_:)();
    if (one-time initialization token for messenger != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v51, static Signposts.messenger);
    v52 = *(v28 + 16);
    v53 = *(v28 + 24);
    v54 = OSSignposter.isEnabled.getter();
    v55 = v135;
    v140 = v43;
    if (v54)
    {
      outlined copy of Data._Representation(v52, v53);
      _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(v52, v53, v55);
    }

    else
    {
      OSSignpostID.init(_:)();
    }

    lazy protocol witness table accessor for type Int and conformance Int();

    default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v103, v104);
    swift_retain_n();

    v105 = OSSignposter.logHandle.getter();
    v106 = static os_signpost_type_t.event.getter();

    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {

      (*(v130 + 8))(v55, v131);
LABEL_112:

      v128 = v139;
      PassthroughSubject.send(_:)();
      outlined consume of Data?(v140, v44);

      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v128, type metadata accessor for CP_PublishRequest);
      (*(v137 + 8))(v136, v138);
      return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v17, type metadata accessor for CP_SequenceNumber);
    }

    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v109 = v28;
    v110 = v108;
    v147[0] = v108;
    *v107 = 134218754;
    v111 = *(v109 + 16);
    v112 = *(v109 + 24);
    v113 = v112 >> 62;
    if ((v112 >> 62) > 1)
    {
      if (v113 == 2)
      {
        v116 = v111 + 16;
        v114 = *(v111 + 16);
        v115 = *(v116 + 8);
        v84 = __OFSUB__(v115, v114);
        v111 = v115 - v114;
        if (v84)
        {
          __break(1u);
LABEL_104:

          swift_getKeyPath();
          swift_getKeyPath();
          v117 = static Published.subscript.modify();
          specialized Array.remove(at:)(v44);

          v117(v145, 0);
        }
      }

      else
      {
        v111 = 0;
      }

      goto LABEL_108;
    }

    if (!v113)
    {
      v111 = BYTE6(v112);
LABEL_108:
      *(v107 + 4) = v111;
      *(v107 + 12) = 2080;
      v118 = v143;
      *(v107 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143[2], v143[3], v147);
      *(v107 + 22) = 2048;
      v119 = v118[15];
      v120 = v118[16];
      __swift_project_boxed_opaque_existential_1(v118 + 12, v119);
      v121 = (*(v120 + 16))(v119, v120);

      *(v107 + 24) = v121;

      *(v107 + 32) = 2080;
      if (*(v142 + 64))
      {
        v122 = 0xE300000000000000;
        v123 = 7104878;
      }

      else
      {
        v146 = *(v142 + 56);
        v123 = String.init<A>(reflecting:)();
        v122 = v124;
      }

      v17 = v141;
      v125 = v135;
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v122, v147);

      *(v107 + 34) = v126;
      v127 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1AEB26000, v105, v106, v127, "transport-message-sent", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu seqNum=%s", v107, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v110, -1, -1);
      MEMORY[0x1B27120C0](v107, -1, -1);

      (*(v130 + 8))(v125, v131);
      goto LABEL_112;
    }

    v84 = __OFSUB__(HIDWORD(v111), v111);
    LODWORD(v111) = HIDWORD(v111) - v111;
    if (!v84)
    {
      v111 = v111;
      goto LABEL_108;
    }

LABEL_130:
    __break(1u);
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, log);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v142;
  if (v59)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v145 = v62;
    *v61 = 134218242;
    *(v61 + 4) = v21;
    *(v61 + 12) = 2080;
    v63 = PubSubTopic.description.getter();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v145);

    *(v61 + 14) = v65;
    _os_log_impl(&dword_1AEB26000, v57, v58, "[Publish] Dropping previously sent message with seqNum=%llu %s", v61, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x1B27120C0](v62, -1, -1);
    MEMORY[0x1B27120C0](v61, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v66 = *v145;
  if (*v145 >> 62)
  {
    v67 = __CocoaSet.count.getter();
    if (v67)
    {
      goto LABEL_20;
    }
  }

  v67 = *((*v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v67)
  {
  }

LABEL_20:
  v69 = *(v60 + 16);
  v68 = *(v60 + 24);
  v70 = v66 & 0xC000000000000001;
  swift_beginAccess();
  v44 = 0;
  v138 = 0;
  v140 = v66 & 0xFFFFFFFFFFFFFF8;
  if (v69)
  {
    v71 = 0;
  }

  else
  {
    v71 = v68 == 0xC000000000000000;
  }

  v72 = !v71;
  LODWORD(v141) = v72;
  v73 = v68 >> 62;
  v74 = __OFSUB__(HIDWORD(v69), v69);
  LODWORD(v137) = v74;
  v136 = (HIDWORD(v69) - v69);
  v135 = v68;
  v139 = BYTE6(v68);
  v134 = v66 & 0xC000000000000001;
  v133 = v67;
  while (1)
  {
    if (v70)
    {
      v17 = MEMORY[0x1B2710B10](v44, v66);
    }

    else
    {
      if (v44 >= *(v140 + 16))
      {
        goto LABEL_115;
      }

      v17 = *(v66 + 8 * v44 + 32);
    }

    v75 = *(v17 + 16);
    v76 = *(v17 + 24);
    v77 = v76 >> 62;
    if (v76 >> 62 == 3)
    {
      if (v75)
      {
        v78 = 0;
      }

      else
      {
        v78 = v76 == 0xC000000000000000;
      }

      v79 = v78 && v73 >= 3;
      v80 = !v79;
      if (((v80 | v141) & 1) == 0)
      {
        goto LABEL_83;
      }

LABEL_56:
      v81 = 0;
      if (v73 <= 1)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    if (v77 > 1)
    {
      if (v77 != 2)
      {
        goto LABEL_56;
      }

      v83 = *(v75 + 16);
      v82 = *(v75 + 24);
      v84 = __OFSUB__(v82, v83);
      v81 = v82 - v83;
      if (v84)
      {
        goto LABEL_122;
      }

      if (v73 <= 1)
      {
        goto LABEL_53;
      }
    }

    else if (v77)
    {
      LODWORD(v81) = HIDWORD(v75) - v75;
      if (__OFSUB__(HIDWORD(v75), v75))
      {
        goto LABEL_121;
      }

      v81 = v81;
      if (v73 <= 1)
      {
LABEL_53:
        v85 = v139;
        if (v73)
        {
          v85 = v136;
          if (v137)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_59;
      }
    }

    else
    {
      v81 = BYTE6(v76);
      if (v73 <= 1)
      {
        goto LABEL_53;
      }
    }

LABEL_57:
    if (v73 != 2)
    {
      if (v81)
      {
        goto LABEL_65;
      }

      goto LABEL_83;
    }

    v87 = *(v69 + 16);
    v86 = *(v69 + 24);
    v84 = __OFSUB__(v86, v87);
    v85 = (v86 - v87);
    if (v84)
    {
      goto LABEL_120;
    }

LABEL_59:
    if (v81 != v85)
    {
      goto LABEL_65;
    }

    if (v81 < 1)
    {
      goto LABEL_83;
    }

    if (v77 > 1)
    {
      if (v77 != 2)
      {
        *&v145[6] = 0;
        *v145 = 0;
        goto LABEL_81;
      }

      v88 = v69;
      v90 = *(v75 + 16);
      v89 = *(v75 + 24);
      v91 = __DataStorage._bytes.getter();
      if (v91)
      {
        v92 = __DataStorage._offset.getter();
        if (__OFSUB__(v90, v92))
        {
          goto LABEL_128;
        }

        v91 += v90 - v92;
      }

      if (__OFSUB__(v89, v90))
      {
        goto LABEL_127;
      }

LABEL_79:
      MEMORY[0x1B270E950]();
      v69 = v88;
      v95 = v138;
      closure #1 in static Data.== infix(_:_:)(v91, v88, v135, v145);
      v138 = v95;
      v96 = v145[0];
      v60 = v142;
      v67 = v133;
      goto LABEL_82;
    }

    if (v77)
    {
      v88 = v69;
      v93 = v75;
      if (v75 >> 32 < v75)
      {
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v91 = __DataStorage._bytes.getter();
      if (v91)
      {
        v94 = __DataStorage._offset.getter();
        if (__OFSUB__(v93, v94))
        {
          goto LABEL_129;
        }

        v91 += v93 - v94;
      }

      goto LABEL_79;
    }

    *v145 = *(v17 + 16);
    *&v145[8] = v76;
    v145[10] = BYTE2(v76);
    v145[11] = BYTE3(v76);
    v145[12] = BYTE4(v76);
    v145[13] = BYTE5(v76);
LABEL_81:
    v97 = v138;
    closure #1 in static Data.== infix(_:_:)(v145, v69, v135, &v144);
    v138 = v97;
    v96 = v144;
LABEL_82:
    v70 = v134;
    if ((v96 & 1) == 0)
    {
LABEL_65:

      goto LABEL_89;
    }

LABEL_83:
    swift_beginAccess();
    v98 = *(v17 + 56);
    v99 = *(v17 + 64);

    v100 = *(v60 + 64);
    if (v99)
    {
      if (*(v60 + 64))
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v98 != *(v60 + 56))
      {
        v100 = 1;
      }

      if ((v100 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

LABEL_89:
    v101 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    ++v44;
    if (v101 == v67)
    {
    }
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
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
  swift_once();
LABEL_8:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, log);
  v34 = v133;
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v17, v133, type metadata accessor for CP_SequenceNumber);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v147[0] = v38;
    *v37 = 134218242;
    v39 = *(v34 + 8);
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v34, type metadata accessor for CP_SequenceNumber);
    *(v37 + 4) = v39;
    *(v37 + 12) = 2080;
    v40 = PubSubTopic.description.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v147);

    *(v37 + 14) = v42;
    _os_log_impl(&dword_1AEB26000, v35, v36, "Unexpected encryption failure, dropping message seqNum=%llu %s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1B27120C0](v38, -1, -1);
    MEMORY[0x1B27120C0](v37, -1, -1);
  }

  else
  {
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v34, type metadata accessor for CP_SequenceNumber);
  }

  return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v17, type metadata accessor for CP_SequenceNumber);
}

uint64_t closure #2 in PubSubTopic._publish(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for CP_Record(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record, &protocol conformance descriptor for CP_Record);
  static Message.with(_:)();
  outlined destroy of NSObject?(a1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v16, a1, type metadata accessor for CP_Record);
  v17 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
}

void closure #1 in closure #2 in PubSubTopic._publish(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a5;
  v33 = a7;
  v32 = a6;
  v28 = a3;
  v29 = a4;
  v9 = type metadata accessor for CP_EncryptionID(0);
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CP_SequenceNumber(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);

  *a1 = v16;
  *(a1 + 1) = v17;
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v28, v15, type metadata accessor for CP_SequenceNumber);
  v18 = type metadata accessor for CP_Record(0);
  v19 = *(v18 + 36);
  outlined destroy of NSObject?(&a1[v19], &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v15, &a1[v19], type metadata accessor for CP_SequenceNumber);
  (*(v13 + 56))(&a1[v19], 0, 1, v12);
  v20 = *(a1 + 2);
  v21 = *(a1 + 3);
  v22 = v29;
  v23 = v30;
  *(a1 + 2) = v29;
  *(a1 + 3) = v23;
  outlined copy of Data._Representation(v22, v23);
  outlined consume of Data._Representation(v20, v21);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);
  static Message.with(_:)();
  v24 = *(v18 + 40);
  outlined destroy of NSObject?(&a1[v24], &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v11, &a1[v24], type metadata accessor for CP_EncryptionID);
  (*(v31 + 56))(&a1[v24], 0, 1, v9);
  if (*(v32 + 32))
  {
    v25 = *(v32 + 32);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  *(a1 + 4) = v25;
  Date.timeIntervalSince1970.getter();
  v27 = v26 * 1000.0;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v27 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v27 < 1.84467441e19)
  {
    *(a1 + 5) = v27;
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #2 in PubSubTopic._publish(_:)(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
  v9 = *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v8);
  (*(v9 + 8))(v8, v9);
  v16[0] = UUID.uuid.getter();
  v16[1] = v10;
  v11 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v16, &v17);
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v11;
  *(a1 + 8) = v13;
  return result;
}

void PubSubTopic.attemptSendQueueFlush()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) != 2 || *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) != 2)
  {
    if (one-time initialization token for log == -1)
    {
LABEL_11:
      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, log);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v36 = v20;
        *v19 = 136315138;
        v21 = PubSubTopic.description.getter();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v36);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1AEB26000, v17, v18, "[Flush] sendQueue flush ignored %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1B27120C0](v20, -1, -1);
        MEMORY[0x1B27120C0](v19, -1, -1);
      }

      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v36 >> 62)
  {
    v34 = __CocoaSet.count.getter();

    if (!v34)
    {
      return;
    }
  }

  else
  {
    v8 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v8)
    {
      return;
    }
  }

  v9 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum;
  v10 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked;
  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) >= *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum))
  {
    goto LABEL_17;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, log);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 134218498;
      *(v14 + 4) = *(v9 + v1);
      *(v14 + 12) = 2048;
      *(v14 + 14) = *(v1 + v10);

      *(v14 + 22) = 2080;
      *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v36);
      _os_log_impl(&dword_1AEB26000, v12, v13, "[Flush] Rewinding seqNum from=%llu to=%llu topic=%s", v14, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1B27120C0](v15, -1, -1);
      MEMORY[0x1B27120C0](v14, -1, -1);
    }

    else
    {
    }

    *(v9 + v1) = *(v1 + v10);
LABEL_17:
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, log);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v27 = 136315138;
      v28 = PubSubTopic.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v36);

      *(v27 + 4) = v10;
      _os_log_impl(&dword_1AEB26000, v25, v26, "[Flush] Flushing sendQueue %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B27120C0](v9, -1, -1);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v30 = v36;
    if (v36 >> 62)
    {
      v31 = __CocoaSet.count.getter();
      if (!v31)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v31 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_34;
      }
    }

    if (v31 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  for (i = 0; i != v31; ++i)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1B2710B10](i, v30);
    }

    else
    {
      v33 = *(v30 + 8 * i + 32);
    }

    PubSubTopic._publish(_:)(v33);
  }

LABEL_34:
}

uint64_t closure #1 in PubSubTopic.ack(publisherID:seqNum:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a2;
  v13 = a3;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck, &protocol conformance descriptor for CP_SubscribeRequest.RecordAck);
  static Message.with(_:)();
  outlined destroy of NSObject?(a1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v8, a1, type metadata accessor for CP_SubscribeRequest.RecordAck);
  v9 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

uint64_t closure #1 in closure #1 in PubSubTopic.ack(publisherID:seqNum:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore17CP_SequenceNumberVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore17CP_SequenceNumberVGMR);
  type metadata accessor for CP_SequenceNumber(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B20;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
  static Message.with(_:)();

  *a1 = v4;
  return result;
}

char *PubSubTopic.close(reason:description:)(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v49 = a2;
  v48 = a1;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v5 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_6;
  }

  if (*(v5 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) == 4)
  {
    return result;
  }

  LOBYTE(v53[0]) = 4;
  PubSubTopic.updateState(state:)(v53);
  if (*(v5 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable))
  {

    AnyCancellable.cancel()();
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_26;
  }

LABEL_6:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, log);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v53[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v53);
    *(v19 + 12) = 2080;
    v21 = PubSubTopic.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v53);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1AEB26000, v17, v18, "Shutdown reason='%s' %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = v53[0];
  if (v53[0] >> 62)
  {
    v46 = v53[0];
    v25 = __CocoaSet.count.getter();
    v24 = v46;
  }

  else
  {
    v25 = *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v27 = v24;
    v53[0] = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25 & ~(v25 >> 63), 0);
    if (v25 < 0)
    {
      __break(1u);
      return result;
    }

    v47 = v5;
    v28 = 0;
    v29 = v53[0];
    v30 = v27;
    v50 = v27 & 0xC000000000000001;
    v31 = v27;
    v32 = v25;
    do
    {
      if (v50)
      {
        v33 = MEMORY[0x1B2710B10](v28, v30);
      }

      else
      {
        v33 = *(v30 + 8 * v28 + 32);
      }

      v34 = *(v33 + 16);
      v51 = *(v33 + 32);
      v52 = v34;
      v35 = *(v33 + 48);
      swift_beginAccess();
      v36 = *(v33 + 56);
      v37 = *(v33 + 64);
      outlined copy of Data._Representation(v52, *(&v52 + 1));

      v53[0] = v29;
      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        v29 = v53[0];
      }

      ++v28;
      *(v29 + 16) = v39 + 1;
      v40 = v29 + 56 * v39;
      v41 = v51;
      *(v40 + 32) = v52;
      *(v40 + 48) = v41;
      *(v40 + 64) = v35;
      *(v40 + 72) = v36;
      *(v40 + 80) = v37;
      v30 = v31;
    }

    while (v32 != v28);

    v5 = v47;
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v42 = static Published.subscript.modify();
  *v43 = v26;

  v42(v53, 0);

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v44 = *(v5 + 144);
  ObjectType = swift_getObjectType();
  (*(v44 + 56))(v5, v48, v49, v29, ObjectType, v44);

  return swift_unknownObjectRelease();
}

uint64_t CP_Record.decodedEncryptionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for CP_EncryptionID(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for CP_Record(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v13 + 40), v5, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v14 = *(v7 + 48);
  if (v14(v5, 1, v6) == 1)
  {
    *v9 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v14(v5, 1, v6) != 1)
    {
      outlined destroy of NSObject?(v5, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v5, v9, type metadata accessor for CP_EncryptionID);
  }

  v15 = *v9;
  v16 = v9[1];
  outlined copy of Data._Representation(*v9, v16);
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v9, type metadata accessor for CP_EncryptionID);
  UUID.init(data:)(v15, v16, v12);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    outlined destroy of NSObject?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v19 = 1;
  }

  else
  {
    (*(v18 + 32))(a1, v12, v17);
    v19 = 0;
  }

  return (*(v18 + 56))(a1, v19, 1, v17);
}

uint64_t CP_EncryptionID.toUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v7 = *v1;
  v6 = v1[1];
  outlined copy of Data._Representation(v7, v6);
  UUID.init(data:)(v7, v6, v5);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a1, v5, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a1, v10, 1, v8);
}

uint64_t PubSubTopic.processDecryptionQueue()()
{
  i = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v119 = &v107 - v3;
  v118 = type metadata accessor for CP_EncryptionID(0);
  v4 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v120 = (&v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v111 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v117 = &v107 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v107 - v11;
  v123 = type metadata accessor for UUID();
  v12 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v110 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for CP_Record(0);
  v137 = *(v115 - 8);
  v14 = MEMORY[0x1EEE9AC00](v115);
  v122 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v138 = &v107 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v134 = &v107 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v107 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(i + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v25 = v26;
  (*(v23 + 104))(v25, *MEMORY[0x1E69E8020], v22);
  v27 = v26;
  v28 = _dispatchPreconditionTest(_:)();
  v30 = *(v23 + 8);
  v29 = v23 + 8;
  v30(v25, v22);
  if (v28)
  {
    v125 = MEMORY[0x1E69E7CC8];
    v141 = MEMORY[0x1E69E7CC8];
    v31 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue;
    swift_beginAccess();
    v124 = v31;
    v32 = *(i + v31);
    v33 = v32 + 64;
    v34 = 1 << *(v32 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v32 + 64);
    v37 = (v34 + 63) >> 6;
    v29 = v4 + 48;
    v121 = (v12 + 48);
    v114 = (v12 + 32);
    v109 = (v12 + 16);
    v108 = (v12 + 8);
    v131 = v32;

    v126 = 0;
    v38 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    *&v40 = 134218754;
    v128 = v40;
    v107 = xmmword_1AEE0C200;
    v135 = i;
    v129 = v37;
    v130 = v33;
    v112 = (v4 + 48);
    v113 = (v12 + 56);
LABEL_5:
    v41 = v38;
    if (!v36)
    {
      goto LABEL_7;
    }

    do
    {
      v42 = v41;
LABEL_10:
      v132 = v42;
      v133 = v36;
      v43 = (v42 << 9) | (8 * __clz(__rbit64(v36)));
      v44 = *(*(v131 + 48) + v43);
      v45 = *(*(v131 + 56) + v43);
      v140 = v39;
      v46 = *(v45 + 16);
      v136 = v44;
      if (v46)
      {
        v47 = (*(v137 + 80) + 32) & ~*(v137 + 80);

        v127 = (v46 - 1);
        for (i = 0; ; ++i)
        {
          while (1)
          {
            if (i >= *(v45 + 16))
            {
              __break(1u);
              goto LABEL_65;
            }

            v29 = v137[9];
            _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v45 + v47 + v29 * i, v21, type metadata accessor for CP_Record);
            v50 = v39[2];
            if (!v50)
            {
              break;
            }

            _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v21, v138, type metadata accessor for CP_Record);
            swift_beginAccess();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50 + 1, 1, v39);
            }

            v52 = v39[2];
            v51 = v39[3];
            if (v52 >= v51 >> 1)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v39);
            }

            v39[2] = v52 + 1;
            v48 = v39 + v47 + v52 * v29;
            v49 = v138;
LABEL_13:
            _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v49, v48, type metadata accessor for CP_Record);
            v140 = v39;
            swift_endAccess();
            v44 = v136;
LABEL_14:
            ++i;
            outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v21, type metadata accessor for CP_Record);
            if (v46 == i)
            {
              goto LABEL_31;
            }
          }

          v53 = PubSubTopic.decryptAndMarkReady(record:)(v21);
          if (v53 == 1)
          {
            _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v21, v134, type metadata accessor for CP_Record);
            swift_beginAccess();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
            }

            v55 = v39[2];
            v54 = v39[3];
            if (v55 >= v54 >> 1)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v39);
            }

            v39[2] = v55 + 1;
            v48 = v39 + v47 + v55 * v29;
            v49 = v134;
            goto LABEL_13;
          }

          if (v53)
          {
            goto LABEL_14;
          }

          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v21, type metadata accessor for CP_Record);
          v126 = 1;
          if (v127 == i)
          {
            goto LABEL_31;
          }
        }
      }

LABEL_31:
      v29 = *(v45 + 16);
      v56 = v39[2];
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, log);
      i = v135;

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v29 -= v56;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v139 = v61;
        *v60 = v128;
        *(v60 + 4) = v44;
        *(v60 + 12) = 2048;
        *(v60 + 14) = v29;
        *(v60 + 22) = 2048;
        *(v60 + 24) = v39[2];
        *(v60 + 32) = 2080;
        *(v60 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(i + 16), *(i + 24), &v139);
        _os_log_impl(&dword_1AEB26000, v58, v59, "[Decrypt] Processed decrypt-queue, publisherID=%llu decrypted-count=%ld remaining-count=%ld topic=%s", v60, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x1B27120C0](v61, -1, -1);
        MEMORY[0x1B27120C0](v60, -1, -1);
      }

      v36 = (v133 - 1) & v133;
      if (v39[2])
      {

        if (!v39[2])
        {
          goto LABEL_69;
        }

        v63 = v122;
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v39 + ((*(v137 + 80) + 32) & ~*(v137 + 80)), v122, type metadata accessor for CP_Record);

        v64 = v119;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v63 + *(v115 + 40), v119, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
        v65 = *v112;
        v66 = v118;
        v67 = (*v112)(v64, 1, v118);
        v37 = v129;
        v33 = v130;
        v133 = v36;
        if (v67 == 1)
        {
          v68 = v120;
          *v120 = v107;
          UnknownStorage.init()();
          v69 = v65(v64, 1, v66);
          v70 = v68;
          v71 = v113;
          if (v69 != 1)
          {
            outlined destroy of NSObject?(v64, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
          }
        }

        else
        {
          v70 = v120;
          _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v64, v120, type metadata accessor for CP_EncryptionID);
          v71 = v113;
        }

        v72 = *v70;
        v73 = v70[1];
        outlined copy of Data._Representation(*v70, v73);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v70, type metadata accessor for CP_EncryptionID);
        v74 = v72;
        v75 = v117;
        UUID.init(data:)(v74, v73, v117);
        v76 = *v121;
        v77 = v123;
        v78 = (*v121)(v75, 1, v123);
        v79 = v116;
        if (v78 == 1)
        {
          outlined destroy of NSObject?(v75, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v80 = 1;
        }

        else
        {
          (*v114)(v116, v75, v77);
          v80 = 0;
        }

        v81 = *v71;
        (*v71)(v79, v80, 1, v77);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v122, type metadata accessor for CP_Record);
        if (v76(v79, 1, v77) == 1)
        {
          outlined destroy of NSObject?(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v36 = v133;
          v82 = v136;
        }

        else
        {
          v83 = v79;
          v84 = v110;
          (*v114)(v110, v83, v77);
          v85 = v111;
          (*v109)(v111, v84, v77);
          v81(v85, 0, 1, v77);
          v86 = v85;
          v87 = v136;
          specialized Dictionary.subscript.setter(v86, v136);
          v88 = v77;
          v82 = v87;
          (*v108)(v84, v88);
          v36 = v133;
        }

        v29 = v125;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v139 = v29;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v82, isUniquelyReferenced_nonNull_native);

        v125 = v139;
        v39 = MEMORY[0x1E69E7CC0];
        v38 = v132;
        goto LABEL_5;
      }

      v41 = v132;
      v37 = v129;
      v33 = v130;
      v39 = MEMORY[0x1E69E7CC0];
    }

    while (v36);
LABEL_7:
    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v37)
      {

        *(i + v124) = v125;

        v29 = v141;
        if (!*(v141 + 16))
        {
          goto LABEL_59;
        }

        if (one-time initialization token for log != -1)
        {
          goto LABEL_67;
        }

        goto LABEL_52;
      }

      v36 = *(v33 + 8 * v42);
      ++v41;
      if (v36)
      {
        goto LABEL_10;
      }
    }

LABEL_65:
    __break(1u);
  }

  __break(1u);
LABEL_67:
  swift_once();
LABEL_52:
  v90 = type metadata accessor for Logger();
  __swift_project_value_buffer(v90, log);

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v139 = v94;
    *v93 = 136315394;

    v95 = Dictionary.description.getter();
    v97 = v96;

    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v139);

    *(v93 + 4) = v98;
    *(v93 + 12) = 2080;
    *(v93 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(i + 16), *(i + 24), &v139);
    _os_log_impl(&dword_1AEB26000, v91, v92, "[Decrypt] Requesting encryptionIDs, missingPublisherEncryptionIDs=%s topic=%s", v93, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v94, -1, -1);
    MEMORY[0x1B27120C0](v93, -1, -1);
  }

  v99 = *(i + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
  v100 = *(i + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
  v101 = __swift_project_boxed_opaque_existential_1((i + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v99);
  v102 = *(v29 + 16);
  if (!v102)
  {
    v103 = MEMORY[0x1E69E7CC0];
LABEL_58:
    (*(v100 + 72))(v103, v99, v100);

LABEL_59:
    if ((v126 & 1) == 0)
    {
    }

    if (*(i + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) != 2)
    {
    }

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    v105 = *(i + 144);
    ObjectType = swift_getObjectType();
    (*(v105 + 8))(i, ObjectType, v105);

    return swift_unknownObjectRelease();
  }

  v137 = v101;
  v103 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5(v102, 0);
  v138 = specialized Sequence._copySequenceContents(initializing:)();
  v104 = v139;

  result = outlined consume of Set<String>.Iterator._Variant(v104);
  if (v138 == v102)
  {
    i = v135;
    goto LABEL_58;
  }

  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t closure #1 in PubSubTopic.onLocalEncryptionIDRotated(encryptionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a2;
  v13 = a3;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID, &protocol conformance descriptor for CP_PublishRequest.UpdatedEncryptionID);
  static Message.with(_:)();
  outlined destroy of NSObject?(a1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v8, a1, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  v9 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

uint64_t closure #1 in closure #1 in PubSubTopic.onLocalEncryptionIDRotated(encryptionID:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CP_EncryptionID(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);

  *a1 = v11;
  *(a1 + 1) = v10;
  v15 = a3;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);
  static Message.with(_:)();
  v12 = *(type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0) + 24);
  outlined destroy of NSObject?(&a1[v12], &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v9, &a1[v12], type metadata accessor for CP_EncryptionID);
  return (*(v7 + 56))(&a1[v12], 0, 1, v6);
}

uint64_t PubSubTopic.decryptAndMarkReady(record:)(unint64_t a1)
{
  v90 = a1;
  v93 = type metadata accessor for CP_Record(0);
  MEMORY[0x1EEE9AC00](v93);
  v86 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v84 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v82 - v10;
  v94 = type metadata accessor for CP_SequenceNumber(0);
  v96 = *(v94 - 8);
  v12 = MEMORY[0x1EEE9AC00](v94);
  v83 = (&v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v82 = (&v82 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v82 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v82 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = v1;
  v28 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v27 = v28;
  (*(v25 + 104))(v27, *MEMORY[0x1E69E8020], v24);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v32 = *(v25 + 8);
  v31 = v25 + 8;
  v32(v27, v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v1 = v90;
  CP_Record.decodedEncryptionID.getter(v23);
  v30 = v95 + 48;
  v31 = *(v95 + 48);
  v27 = (v31)(v23, 1, v3);
  outlined destroy of NSObject?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v27 == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v34 = v3;
  v35 = v1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v93 + 36), v11, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v36 = v96 + 48;
  v37 = *(v96 + 48);
  v38 = v94;
  v39 = v37(v11, 1, v94);
  v96 = v36;
  v87 = v37;
  if (v39 == 1)
  {
    *v17 = 0;
    v17[1] = 0;
    UnknownStorage.init()();
    if (v37(v11, 1, v38) != 1)
    {
      outlined destroy of NSObject?(v11, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v11, v17, type metadata accessor for CP_SequenceNumber);
  }

  v88 = v17[1];
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v17, type metadata accessor for CP_SequenceNumber);
  v40 = v35;
  CP_Record.decodedEncryptionID.getter(v21);
  result = (v31)(v21, 1, v34);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v31 = v95;
  v42 = *(v95 + 32);
  v43 = v92;
  v91 = v34;
  v42(v92, v21, v34);
  v44 = *(v35 + 32);
  v21 = v89;
  if (!*(v44 + 16))
  {
LABEL_12:
    v53 = *&v21[OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24];
    v54 = *&v21[OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v21[OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider], v53);
    v1 = (*(v54 + 64))(*(v40 + 16), *(v40 + 24), v43, v88, v53, v54);
    v90 = v55;
    v56 = v86;
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v40, v86, type metadata accessor for CP_Record);
    v57 = v38;
    swift_weakInit();
    v58 = *(v93 + 36);
    v59 = v84;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v56 + v58, v84, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    v60 = v38;
    v61 = v87;
    v62 = v87(v59, 1, v60);
    if (v62 == 1)
    {
      v63 = v1;
      v64 = v82;
      *v82 = 0;
      v64[1] = 0;
      outlined copy of Data._Representation(v63, v90);
      UnknownStorage.init()();
      v65 = v61(v59, 1, v57);
      v66 = v64;
      v1 = v63;
      v31 = v95;
      if (v65 != 1)
      {
        outlined destroy of NSObject?(v59, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      }
    }

    else
    {
      v66 = v82;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v59, v82, type metadata accessor for CP_SequenceNumber);
      outlined copy of Data._Representation(v1, v90);
    }

    v67 = *v66;
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v66, type metadata accessor for CP_SequenceNumber);
    v97[0] = v67;
    v68 = v56 + v58;
    v69 = v85;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v68, v85, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    v70 = v94;
    v71 = v87;
    if (v87(v69, 1, v94) == 1)
    {
      v72 = v83;
      *v83 = 0;
      v72[1] = 0;
      UnknownStorage.init()();
      v73 = v71(v69, 1, v70);
      v17 = v92;
      v30 = v90;
      if (v73 != 1)
      {
        outlined destroy of NSObject?(v69, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      }
    }

    else
    {
      v72 = v83;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v69, v83, type metadata accessor for CP_SequenceNumber);
      v17 = v92;
      v30 = v90;
    }

    v74 = v72[1];
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v72, type metadata accessor for CP_SequenceNumber);
    v97[1] = v74;
    v97[2] = v1;
    v75 = *(v21 + 2);
    v76 = *(v21 + 3);
    v97[3] = v30;
    v97[4] = v75;
    v97[5] = v76;
    v77 = *(v56 + 32);
    if (*(v77 + 16))
    {
    }

    else
    {
      v77 = 0;
    }

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v56, type metadata accessor for CP_Record);
    v97[6] = v77;
    swift_weakAssign();
    outlined init with take of PubSubTopic.ReceivedRecord(v97, v98);
    outlined init with copy of PubSubTopic.ReceivedRecord(v98, v97);
    v24 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
    swift_beginAccess();
    v27 = *&v21[v24];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v21[v24] = v27;
    v33 = &v99;
    if (isUniquelyReferenced_nonNull_native)
    {
      v79 = v91;
LABEL_27:
      v81 = v27[2];
      v80 = v27[3];
      if (v81 >= v80 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v27);
      }

      v27[2] = v81 + 1;
      outlined init with take of PubSubTopic.ReceivedRecord(v97, &v27[8 * v81 + 4]);
      *&v21[v24] = v27;
      swift_endAccess();
      outlined consume of Data._Representation(v1, v30);
      outlined destroy of PubSubTopic.ReceivedRecord(v98);
      (*(v31 + 8))(v17, v79);
      return 0;
    }

LABEL_32:
    v79 = *(v33 - 32);
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
    *&v21[v24] = v27;
    goto LABEL_27;
  }

  v45 = *(v89 + 15);
  v46 = *(v89 + 16);
  __swift_project_boxed_opaque_existential_1(v89 + 12, v45);
  v47 = *(v46 + 16);
  v48 = v46;
  v40 = v35;
  v49 = v47(v45, v48);
  v50 = *(v44 + 16);
  v51 = (v44 + 32);
  while (v50)
  {
    v52 = *v51++;
    --v50;
    if (v52 == v49)
    {
      goto LABEL_12;
    }
  }

  (*(v31 + 8))(v43, v91);
  return 4;
}

uint64_t PubSubTopic.queueRecordForDecryption(_:)(uint64_t a1)
{
  v98 = a1;
  v90 = type metadata accessor for CP_Record(0);
  v88 = *(v90 - 8);
  v2 = MEMORY[0x1EEE9AC00](v90);
  v87 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v86 = &v85 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v96 = v5;
  v97 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v85 - v11;
  v13 = type metadata accessor for CP_SequenceNumber(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = (&v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v85 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v91 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v85 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = v1;
  v28 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v27 = v28;
  (*(v25 + 104))(v27, *MEMORY[0x1E69E8020], v24);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v32 = *(v25 + 8);
  v31 = (v25 + 8);
  v32(v27, v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  CP_Record.decodedEncryptionID.getter(v23);
  v24 = v96;
  v30 = v97 + 48;
  v33 = *(v97 + 48);
  v34 = v33(v23, 1, v96);
  outlined destroy of NSObject?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v34 == 1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v35 = *(v90 + 36);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v98 + v35, v12, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v36 = *(v14 + 48);
  v37 = v36(v12, 1, v13);
  v89 = v33;
  if (v37 == 1)
  {
    *v18 = 0;
    v18[1] = 0;
    UnknownStorage.init()();
    if (v36(v12, 1, v13) != 1)
    {
      outlined destroy of NSObject?(v12, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v12, v18, type metadata accessor for CP_SequenceNumber);
  }

  v38 = *v18;
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v18, type metadata accessor for CP_SequenceNumber);
  v39 = v93;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v98 + v35, v93, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if (v36(v39, 1, v13) == 1)
  {
    v40 = v92;
    *v92 = 0;
    v40[1] = 0;
    UnknownStorage.init()();
    v41 = v36(v39, 1, v13);
    v13 = v94;
    v42 = v97;
    if (v41 != 1)
    {
      outlined destroy of NSObject?(v39, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    v40 = v92;
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v39, v92, type metadata accessor for CP_SequenceNumber);
    v13 = v94;
    v42 = v97;
  }

  v43 = v40[1];
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v40, type metadata accessor for CP_SequenceNumber);
  v44 = v91;
  CP_Record.decodedEncryptionID.getter(v91);
  result = v89(v44, 1, v24);
  if (result != 1)
  {
    (*(v42 + 32))(v95, v44, v24);
    v99[0] = 0;
    v99[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    strcpy(v99, "publisherID=");
    BYTE5(v99[1]) = 0;
    HIWORD(v99[1]) = -5120;
    v100 = v38;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v46);

    MEMORY[0x1B2710020](0x3D6D754E71657320, 0xE800000000000000);
    v100 = v43;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v47);

    MEMORY[0x1B2710020](0x74707972636E6520, 0xEE003D44496E6F69);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v48);

    MEMORY[0x1B2710020](0x3D6369706F7420, 0xE700000000000000);
    MEMORY[0x1B2710020](*(v13 + 16), *(v13 + 24));
    v24 = v99[0];
    v14 = v99[1];
    v49 = v38;
    v23 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue;
    swift_beginAccess();
    v50 = *&v23[v13];
    if (*(v50 + 16))
    {
      v30 = v49;
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
      if (v52)
      {
        v31 = *(*(v50 + 56) + 8 * v51);

        goto LABEL_17;
      }
    }

    else
    {
      v30 = v49;
    }

    v31 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v53 = v98;
    swift_endAccess();
    v54 = v31[2];
    if (v54)
    {
      if (*(v13 + 48) <= v54)
      {

        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        __swift_project_value_buffer(v69, log);

        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();

        v72 = os_log_type_enabled(v70, v71);
        v73 = v97;
        if (v72)
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v99[0] = v75;
          *v74 = 136315138;
          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v14, v99);

          *(v74 + 4) = v76;
          _os_log_impl(&dword_1AEB26000, v70, v71, "[Decrypt] Decrypt-queue max capacity exceeded, closing streams, %s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          MEMORY[0x1B27120C0](v75, -1, -1);
          MEMORY[0x1B27120C0](v74, -1, -1);
        }

        else
        {
        }

        v77 = v96;
        PubSubTopic.closeStreams(reason:)(4, 2u);
        return (*(v73 + 8))(v95, v77);
      }

      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v53, v87, type metadata accessor for CP_Record);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54 + 1, 1, v31);
      }

      v56 = v31[2];
      v55 = v31[3];
      if (v56 >= v55 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v31);
      }

      v31[2] = v56 + 1;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v87, v31 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v56, type metadata accessor for CP_Record);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, log);

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v99[0] = v61;
        *v60 = 134218242;
        *(v60 + 4) = v31[2];

        *(v60 + 12) = 2080;
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v14, v99);

        *(v60 + 14) = v62;
        _os_log_impl(&dword_1AEB26000, v58, v59, "[Decrypt] Decrypt-queue found, count=%ld %s", v60, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x1B27120C0](v61, -1, -1);
        MEMORY[0x1B27120C0](v60, -1, -1);
      }

      else
      {
      }

      v77 = v96;
LABEL_42:
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = *&v23[v13];
      *&v23[v13] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v30, isUniquelyReferenced_nonNull_native);
      *&v23[v13] = v100;
      swift_endAccess();
      v73 = v97;
      return (*(v73 + 8))(v95, v77);
    }

    if (one-time initialization token for log == -1)
    {
LABEL_28:
      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, log);

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v99[0] = v67;
        *v66 = 136315138;
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v14, v99);

        *(v66 + 4) = v68;
        _os_log_impl(&dword_1AEB26000, v64, v65, "[Decrypt] Decrypt-queue created, %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x1B27120C0](v67, -1, -1);
        MEMORY[0x1B27120C0](v66, -1, -1);
      }

      else
      {
      }

      v77 = v96;
      v78 = v88;
      v79 = v86;
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v98, v86, type metadata accessor for CP_Record);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
      }

      v81 = v31[2];
      v80 = v31[3];
      if (v81 >= v80 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v31);
      }

      v31[2] = v81 + 1;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v79, v31 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v81, type metadata accessor for CP_Record);
      v82 = *(v13 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
      __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), *(v13 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1AEE07B20;
      *(v83 + 32) = v30;
      (*(v82 + 72))();

      goto LABEL_42;
    }

LABEL_48:
    swift_once();
    goto LABEL_28;
  }

  __break(1u);
  return result;
}