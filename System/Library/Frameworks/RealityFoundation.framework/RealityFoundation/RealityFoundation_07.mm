void *one-time initialization function for weakInstances()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static __RealityFileURLResolver.weakInstances = result;
  return result;
}

uint64_t static __RealityFileURLResolver.weakShared.setter(uint64_t a1)
{
  specialized static __RealityFileURLResolver.weakShared.setter(a1);
}

uint64_t static __RealityFileURLResolver.weakShared.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    specialized static __RealityFileURLResolver.weakShared.setter(v3);
  }

  else
  {
    specialized static __RealityFileURLResolver.weakShared.setter(v2);
  }
}

void *static __RealityFileURLResolver.shared.getter()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v7);
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  v1 = static __RealityFileURLResolver.instances;
  v2 = v8;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v7, v8);

  v5 = specialized AssetServiceScopedRegistry.instance(for:)(v4, v1, v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

void *static __RealityFileURLResolver.instance(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized static __RealityFileURLResolver.instance(for:)(v4, v1, v2, v3);
}

uint64_t __RealityFileURLResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  __RealityFileURLResolver.init()();
  return v0;
}

void *__RealityFileURLResolver.init()()
{
  v1 = v0;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v19);
  v0[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = MEMORY[0x1E69E7CC0];
  v1[8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1[9] = v7;
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v8 + 120, (v1 + 2));
  if (one-time initialization token for weakInstances != -1)
  {
    swift_once();
  }

  v9 = v1[5];
  v10 = v1[6];
  v11 = __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  v12 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v13);
  v16 = (*(v10 + 32))(v9, v10);
  (*(v12 + 8))(v15, v9);
  swift_weakInit();
  swift_weakAssign();
  v20[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v20, v16);
  swift_endAccess();
  atexit(@objc closure #1 in __RealityFileURLResolver.init());
  return v1;
}

uint64_t closure #1 in __RealityFileURLResolver.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for weakInstances != -1)
  {
LABEL_16:
    swift_once();
  }

  swift_beginAccess();
  v4 = static __RealityFileURLResolver.weakInstances;
  v5 = static __RealityFileURLResolver.weakInstances + 64;
  v6 = 1 << *(static __RealityFileURLResolver.weakInstances + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(static __RealityFileURLResolver.weakInstances + 8);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd;
  v23 = v4;
  do
  {
    while (1)
    {
      if (!v8)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            goto LABEL_14;
          }

          v8 = *&v5[8 * v12];
          ++v10;
          if (v8)
          {
            v10 = v12;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_16;
      }

LABEL_11:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      outlined init with copy of [String : String](v4[7] + ((v10 << 9) | (8 * v13)), v28, v11, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

      outlined destroy of BodyTrackingComponent?(v28, v11, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
    }

    v15 = v11;
    v16 = *(Strong + 56);
    v17 = Strong;
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = v17;
    aBlock[4] = a3;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = a4;
    v19 = _Block_copy(aBlock);
    v20 = v16;

    dispatch_sync(v20, v19);

    v11 = v15;
    v4 = v23;
    _Block_release(v19);

    outlined destroy of BodyTrackingComponent?(v28, v11, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  }

  while ((isEscapingClosureAtFileLocation & 1) == 0);
  __break(1u);
LABEL_14:
}

uint64_t __RealityFileURLResolver.deinit()
{
  v1 = *(v0 + 56);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in __RealityFileURLResolver.unregisterRealityFileResolver();
  *(v2 + 24) = v0;
  v6[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed () -> ();
  v6[3] = &block_descriptor;
  v3 = _Block_copy(v6);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    return v0;
  }

  return result;
}

uint64_t __RealityFileURLResolver.__deallocating_deinit()
{
  __RealityFileURLResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for schemePrefix()
{
  *&v1 = 0x7974696C616572;
  *(&v1 + 1) = 0xE700000000000000;
  result = MEMORY[0x1C68F3410](58, 0xE100000000000000);
  static __RealityFileURLResolver.schemePrefix = v1;
  return result;
}

uint64_t static __RealityFileURLResolver.schemePrefix.getter()
{
  if (one-time initialization token for schemePrefix != -1)
  {
    swift_once();
  }

  v0 = static __RealityFileURLResolver.schemePrefix;

  return v0;
}

uint64_t __RealityFileURLResolver.registerRealityFileResolver(assetService:)()
{
  outlined init with copy of __REAssetService(v0 + 16, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v6);
  outlined init with copy of __REAssetService(v0 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 32))(v3, v4);
  String.utf8CString.getter();
  REAssetManagerRegisterAssetResolver();

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Void __swiftcall __RealityFileURLResolver.unregisterRealityFileResolver()()
{
  v1 = *(v0 + 56);
  v2 = swift_allocObject();
  *(v2 + 16) = closure #1 in __RealityFileURLResolver.unregisterRealityFileResolver()partial apply;
  *(v2 + 24) = v0;
  v5[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> ();
  v5[3] = &block_descriptor_8;
  v3 = _Block_copy(v5);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

uint64_t closure #1 in __RealityFileURLResolver.unregisterRealityFileResolver()(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = type metadata accessor for URL();
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v4 = *(a1 + 64);

  v5 = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  v6 = 0;
  v40 = *(a1 + 72);
  v41 = 0;
  *(a1 + 72) = v5;
  v7 = v4 + 64;
  v8 = v4;
  v9 = 1 << *(v4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v4 + 64);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v15 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v15);
    ++v6;
    if (v11)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v17 = (*(v8 + 56) + ((v15 << 10) | (16 * v16)));
        v18 = *v17;
        v19 = v17[1];
        v20 = objc_opt_self();

        v21 = [v20 defaultManager];
        v22 = MEMORY[0x1C68F3280](v18, v19);

        v43 = 0;
        LODWORD(v19) = [v21 removeItemAtPath:v22 error:&v43];

        if (v19)
        {
          v23 = v43;
          v6 = v15;
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v13 = v43;
          v14 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v41 = 0;
          v6 = v15;
          if (!v11)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v15 = v6;
      }
    }
  }

  v24 = v40;
  v25 = *(v40 + 16);
  if (v25)
  {
    v41 = objc_opt_self();
    v26 = *(v39 + 16);
    v27 = v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v28 = *(v39 + 72);
    v29 = (v39 + 8);
    do
    {
      v31 = v42;
      v26(v3, v27, v42);
      v32 = [v41 defaultManager];
      URL._bridgeToObjectiveC()(v33);
      v35 = v34;
      (*v29)(v3, v31);
      v43 = 0;
      LODWORD(v31) = [v32 removeItemAtURL:v35 error:&v43];

      if (v31)
      {
        v30 = v43;
      }

      else
      {
        v36 = v43;
        v37 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v27 += v28;
      --v25;
    }

    while (v25);
  }
}

uint64_t __RealityFileURLResolver.resolvedURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for CharacterSet();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a2;
  static CharacterSet.urlQueryAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v20 = v19;
  (*(v16 + 8))(v18, v15);
  if (!v20)
  {
    return (*(v9 + 56))(v39, 1, 1, v8);
  }

  URL.init(string:)();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v9 + 56))(v39, 1, 1, v8);
  }

  v21 = *(v9 + 32);
  v21(v14, v7, v8);
  v22 = URL.pathComponents.getter();
  v23 = v22;
  v24 = *(v22 + 16);
  if (!v24 || (v37 = v21, v38 = &v36, MEMORY[0x1EEE9AC00](v22), *(&v36 - 2) = v25, *(&v36 - 1) = v23, v27 = v26, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR), OS_dispatch_queue.sync<A>(execute:)(), v27, !v41))
  {
    (*(v9 + 8))(v14, v8);

    return (*(v9 + 56))(v39, 1, 1, v8);
  }

  URL.init(fileURLWithPath:)();

  v29 = v24 - 1;
  if (v24 == 1)
  {
LABEL_11:

    (*(v9 + 8))(v14, v8);
    v35 = v39;
    v37(v39, v11, v8);
    return (*(v9 + 56))(v35, 0, 1, v8);
  }

  v30 = *(v23 + 16);
  if (v30 >= 2 && v24 <= v30)
  {
    v31 = (v23 + 56);
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;

      v34._countAndFlagsBits = v32;
      v34._object = v33;
      URL.appendPathComponent(_:)(v34);

      v31 += 2;
      --v29;
    }

    while (v29);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in __RealityFileURLResolver.resolvedURL(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for schemePrefix != -1)
  {
    v15 = a2;
    swift_once();
    a2 = v15;
  }

  result = *(&static __RealityFileURLResolver.schemePrefix + 1);
  v16 = static __RealityFileURLResolver.schemePrefix;
  if (a2[2])
  {
    v6 = a2[4];
    v7 = a2[5];

    MEMORY[0x1C68F3410](v6, v7);

    swift_beginAccess();
    v8 = *(a1 + 64);
    if (*(v8 + 16) && (, v9 = specialized __RawDictionaryStorage.find<A>(_:)(v16, *(&v16 + 1)), v11 = v10, , (v11 & 1) != 0))
    {
      v12 = (*(v8 + 56) + 16 * v9);
      v14 = *v12;
      v13 = v12[1];
    }

    else
    {

      v14 = 0;
      v13 = 0;
    }

    *a3 = v14;
    a3[1] = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __RealityFileURLResolver.resolvedURL(group:name:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10._countAndFlagsBits = 47;
  v10._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v10) || (v11 = 47, v12 = 0xE100000000000000, v13._countAndFlagsBits = 47, v13._object = 0xE100000000000000, String.hasPrefix(_:)(v13)))
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v11, v12);

  MEMORY[0x1C68F3410](a3, a4);

  if (one-time initialization token for schemePrefix != -1)
  {
    swift_once();
  }

  if (String.hasPrefix(_:)(static __RealityFileURLResolver.schemePrefix) && (lazy protocol witness table accessor for type String and conformance String(), v14 = StringProtocol.components<A>(separatedBy:)(), , (v15 = *(v14 + 16)) != 0))
  {
    v16 = (v14 + 16 + 16 * v15);
    v17 = *v16;
    v18 = v16[1];

    __RealityFileURLResolver.resolvedURL(for:)(v17, v18, a5);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1887600;
    _StringGuts.grow(_:)(53);
    MEMORY[0x1C68F3410](0xD000000000000027, 0x80000001C18DE8A0);
    MEMORY[0x1C68F3410](a1, a2);
    MEMORY[0x1C68F3410](0x20656D616E202C22, 0xE900000000000022);
    MEMORY[0x1C68F3410](a3, a4);
    MEMORY[0x1C68F3410](34, 0xE100000000000000);
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 32) = 0;
    *(v20 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();

    v21 = type metadata accessor for URL();
    return (*(*(v21 - 8) + 56))(a5, 1, 1, v21);
  }
}

Swift::Void __swiftcall __RealityFileURLResolver.setResolvedURLPath(_:for:)(Swift::String _, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;
  v8 = *(v3 + 56);
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = countAndFlagsBits;
  v9[4] = object;
  v9[5] = v7;
  v9[6] = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in __RealityFileURLResolver.setResolvedURLPath(_:for:);
  *(v10 + 24) = v9;
  v13[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed () -> ();
  v13[3] = &block_descriptor_18;
  v11 = _Block_copy(v13);
  v12 = v8;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t closure #1 in __RealityFileURLResolver.setResolvedURLPath(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v39 = &v34 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v40 = &v34 - v22;
  swift_beginAccess();
  if (*(*(a1 + 64) + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v23)
    {
      v36 = a2;
      v34 = v11;

      URL.init(fileURLWithPath:)();

      v24 = v39;
      v35 = a4;
      v37 = a5;
      v25 = v34;
      URL.init(fileURLWithPath:)();
      URL.standardized.getter();
      URL.standardized.getter();
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v25 + 8);
      v27(v15, v10);
      v27(v18, v10);
      if (v26)
      {
        v27(v24, v10);
        v27(v40, v10);
        a2 = v36;
        a5 = v37;
        a4 = v35;
      }

      else
      {
        (*(v25 + 16))(v38, v40, v10);
        v28 = *(a1 + 72);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 72) = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
          *(a1 + 72) = v28;
        }

        a4 = v35;
        v31 = v28[2];
        v30 = v28[3];
        if (v31 >= v30 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
        }

        v28[2] = v31 + 1;
        (*(v25 + 32))(v28 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v31, v38, v10);
        *(a1 + 72) = v28;
        v27(v39, v10);
        v27(v40, v10);
        a2 = v36;
        a5 = v37;
      }
    }

    else
    {
    }
  }

  swift_beginAccess();

  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(a1 + 64);
  *(a1 + 64) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5, a2, a3, v32);

  *(a1 + 64) = v41;
  return swift_endAccess();
}

Swift::String __swiftcall __RealityFileURLResolver.createSchemePrefix(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  if (one-time initialization token for schemePrefix != -1)
  {
    swift_once();
  }

  v6 = static __RealityFileURLResolver.schemePrefix;

  MEMORY[0x1C68F3410](countAndFlagsBits, object);
  v4 = *(&v6 + 1);
  v3 = v6;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall __RealityFileURLResolver.createSubAssetPath(with:)(Swift::String with)
{
  MEMORY[0x1C68F3410](with._countAndFlagsBits, with._object);
  v1 = 0x2F737465737361;
  v2 = 0xE700000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t __RealityFileURLResolver.createFullSchemePath(group:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7._countAndFlagsBits = 47;
  v7._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v7) || (v8 = 47, v9 = 0xE100000000000000, v10._countAndFlagsBits = 47, v10._object = 0xE100000000000000, String.hasPrefix(_:)(v10)))
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v8, v9);

  MEMORY[0x1C68F3410](a3, a4);

  return a1;
}

void *specialized static __RealityFileURLResolver.instance(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  v10 = static __RealityFileURLResolver.instances;

  v11 = specialized AssetServiceScopedRegistry.instance(for:)(v9, v10, a3, a4);

  (*(v6 + 8))(v9, a3);
  return v11;
}

void *specialized AssetServiceScopedRegistry.instance(for:)(uint64_t a1, uint64_t a2)
{
  v27[3] = type metadata accessor for __REAssetManager();
  v27[4] = &protocol witness table for __REAssetManager;
  v27[0] = a1;
  v4 = *(a1 + 88);
  v5 = *(a2 + 16);

  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    os_unfair_lock_unlock(v5 + 4);
    outlined init with copy of __REAssetService(v27, aBlock);
    type metadata accessor for __RealityFileURLResolver();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, v23);
    v12 = MEMORY[0x1EEE9AC00](v11);
    v14 = (&aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v9 = specialized __RealityFileURLResolver.init(_:)(*v14, v10);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    os_unfair_lock_lock(v5 + 4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a2 + 24);
    *(a2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v4, isUniquelyReferenced_nonNull_native);
    *(a2 + 24) = v26;
    swift_endAccess();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v4;
    v24 = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v25 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v23 = &block_descriptor_42;
    v19 = _Block_copy(aBlock);

    REAssetManagerAddCleanupCallback();
    _Block_release(v19);
  }

  os_unfair_lock_unlock(v5 + 4);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v9;
}

void *specialized __RealityFileURLResolver.init(_:)(uint64_t a1, void *a2)
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v16[3] = type metadata accessor for __REAssetManager();
  v16[4] = &protocol witness table for __REAssetManager;
  v13 = a1;
  v16[0] = a1;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v12);
  a2[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = MEMORY[0x1E69E7CC0];
  a2[8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a2[9] = v9;
  outlined init with copy of __REAssetService(v16, (a2 + 2));
  if (one-time initialization token for weakInstances != -1)
  {
    swift_once();
  }

  v10 = *(v13 + 88);
  swift_weakInit();
  swift_weakAssign();
  v15[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v15, v10);
  swift_endAccess();
  atexit(@objc closure #1 in __RealityFileURLResolver.init(_:));
  __swift_destroy_boxed_opaque_existential_1(v16);
  return a2;
}

void *specialized __RealityFileURLResolver.init(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v11);
  v12 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v23[3] = a3;
  v23[4] = a4;
  v20 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v14 = *(*(a3 - 8) + 32);
  v18[1] = boxed_opaque_existential_1;
  v14(boxed_opaque_existential_1, a1, a3);
  v18[0] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8090], v19);
  a2[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = MEMORY[0x1E69E7CC0];
  a2[8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a2[9] = v15;
  outlined init with copy of __REAssetService(v23, (a2 + 2));
  if (one-time initialization token for weakInstances != -1)
  {
    swift_once();
  }

  v16 = (*(v20 + 32))(a3);
  swift_weakInit();
  swift_weakAssign();
  v22[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v22, v16);
  swift_endAccess();
  atexit(@objc closure #1 in __RealityFileURLResolver.init(_:));
  __swift_destroy_boxed_opaque_existential_1(v23);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_So19REComponentClassPtraTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSo19REComponentClassPtraGMd, &_ss18_DictionaryStorageCySOSo19REComponentClassPtraGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo19REComponentClassPtra_10RealityKit9Component_pXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19REComponentClassPtra10RealityKit9Component_pXpGMd, &_ss18_DictionaryStorageCySo19REComponentClassPtra10RealityKit9Component_pXpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_17RealityFoundation13ComponentInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation13ComponentInfoVGMd, &_ss18_DictionaryStorageCySO17RealityFoundation13ComponentInfoVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v23[48] = *(a1 + 80);
  *&v23[64] = v5;
  *&v23[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v23 = *(a1 + 32);
  *&v23[16] = v6;
  *&v23[32] = v4;
  v7 = *v23;
  result = specialized __RawDictionaryStorage.find<A>(_:)(*v23);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of [String : String](v23, v22, &_sSO_17RealityFoundation13ComponentInfoVtMd, &_sSO_17RealityFoundation13ComponentInfoVtMR);
    return v3;
  }

  v10 = a1 + 120;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v7;
    v11 = (v3[7] + 80 * result);
    *v11 = *&v23[8];
    v12 = *&v23[24];
    v13 = *&v23[40];
    v14 = *&v23[72];
    v11[3] = *&v23[56];
    v11[4] = v14;
    v11[1] = v12;
    v11[2] = v13;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of [String : String](v23, v22, &_sSO_17RealityFoundation13ComponentInfoVtMd, &_sSO_17RealityFoundation13ComponentInfoVtMR);
    v18 = *(v10 + 32);
    v19 = *(v10 + 64);
    *&v23[48] = *(v10 + 48);
    *&v23[64] = v19;
    *&v23[80] = *(v10 + 80);
    v20 = *(v10 + 16);
    *v23 = *v10;
    *&v23[16] = v20;
    *&v23[32] = v18;
    v7 = *v23;
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v23);
    v10 += 88;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation13ComponentInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation13ComponentInfoVGMd, &_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation13ComponentInfoVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v23[48] = *(a1 + 80);
  *&v23[64] = v5;
  *&v23[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v23 = *(a1 + 32);
  *&v23[16] = v6;
  *&v23[32] = v4;
  v7 = *v23;
  result = specialized __RawDictionaryStorage.find<A>(_:)(*v23);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of [String : String](v23, v22, &_ss13OpaquePointerV_17RealityFoundation13ComponentInfoVtMd, &_ss13OpaquePointerV_17RealityFoundation13ComponentInfoVtMR);
    return v3;
  }

  v10 = a1 + 120;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v7;
    v11 = (v3[7] + 80 * result);
    *v11 = *&v23[8];
    v12 = *&v23[24];
    v13 = *&v23[40];
    v14 = *&v23[72];
    v11[3] = *&v23[56];
    v11[4] = v14;
    v11[1] = v12;
    v11[2] = v13;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of [String : String](v23, v22, &_ss13OpaquePointerV_17RealityFoundation13ComponentInfoVtMd, &_ss13OpaquePointerV_17RealityFoundation13ComponentInfoVtMR);
    v18 = *(v10 + 32);
    v19 = *(v10 + 64);
    *&v23[48] = *(v10 + 48);
    *&v23[64] = v19;
    *&v23[80] = *(v10 + 80);
    v20 = *(v10 + 16);
    *v23 = *v10;
    *&v23[16] = v20;
    *&v23[32] = v18;
    v7 = *v23;
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v23);
    v10 += 88;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_17RealityFoundation9LoadTraceVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_17RealityFoundation9LoadTraceVtMd, &_ss6UInt32V_17RealityFoundation9LoadTraceVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32V17RealityFoundation9LoadTraceVGMd, &_ss18_DictionaryStorageCys6UInt32V17RealityFoundation9LoadTraceVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of [String : String](v9, v5, &_ss6UInt32V_17RealityFoundation9LoadTraceVtMd, &_ss6UInt32V_17RealityFoundation9LoadTraceVtMR);
      v11 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 4 * result) = v11;
      v15 = v7[7];
      Trace = type metadata accessor for LoadTrace(0);
      result = outlined init with take of LoadTrace(v5 + v8, v15 + *(*(Trace - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation12EntityAction_pXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_pXpGMd, &_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_pXpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertGMd, &_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i = (i + 72))
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v16 = i[1];
      v17 = *i;
      v15 = i[2];
      v7 = *(i + 6);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 56 * result;
      *v11 = v17;
      *(v11 + 16) = v16;
      *(v11 + 32) = v15;
      *(v11 + 48) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGGMd, &_ss18_DictionaryStorageCySOSDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGMd, &_ss18_DictionaryStorageCy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcGMd, &_ss18_DictionaryStorageCySO17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_17RealityFoundation19ForceEffectProtocol_SeSEpXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_SeSEpXpGMd, &_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_SeSEpXpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 3);
      v12 = *i;
      v13 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit15TextureResourceCSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit15TextureResourceCSgGMd, &_ss18_DictionaryStorageCySS10RealityKit15TextureResourceCSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit9Component_pXpTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v9 = *(i - 1);
      v15 = *i;
      result = a4(v9);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 16 * result) = v15;
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      if (!--v4)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11REAssetTypeV_17RealityFoundation16LoadableResource_pXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11REAssetTypeV17RealityFoundation16LoadableResource_pXpGMd, &_ss18_DictionaryStorageCySo11REAssetTypeV17RealityFoundation16LoadableResource_pXpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 2);
      v11 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit13AudioResourceCTt0gq5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = a4(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation13AudioMixGroupVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation13AudioMixGroupVGMd, &_ss18_DictionaryStorageCySS17RealityFoundation13AudioMixGroupVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v4;
  v28[0] = *(a1 + 96);
  *(v28 + 9) = *(a1 + 105);
  v5 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v5;
  v7 = *(&v24 + 1);
  v6 = v24;
  outlined init with copy of [String : String](&v24, v23, &_sSS_17RealityFoundation13AudioMixGroupVtMd, &_sSS_17RealityFoundation13AudioMixGroupVtMR);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 128);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + 80 * result);
    *v12 = v25;
    v13 = v26;
    v14 = v27;
    v15 = v28[0];
    *(v12 + 57) = *(v28 + 9);
    v12[2] = v14;
    v12[3] = v15;
    v12[1] = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 6;
    v20 = v10[3];
    v26 = v10[2];
    v27 = v20;
    v28[0] = v10[4];
    *(v28 + 9) = *(v10 + 73);
    v21 = v10[1];
    v24 = *v10;
    v25 = v21;
    v7 = *(&v24 + 1);
    v6 = v24;
    outlined init with copy of [String : String](&v24, v23, &_sSS_17RealityFoundation13AudioMixGroupVtMd, &_sSS_17RealityFoundation13AudioMixGroupVtMR);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_SayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64VSayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGGMd, &_ss18_DictionaryStorageCys6UInt64VSayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGGMd, &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 16)
    {
      outlined init with copy of [String : String](i, &v11, &_ss13OpaquePointerV_10RealityKit02__C15FileURLResolverC4Weak013_E37E9A4A00F7J18D3DDD061C85B1FFBD5LLVy_AEGtMd, &_ss13OpaquePointerV_10RealityKit02__C15FileURLResolverC4Weak013_E37E9A4A00F7J18D3DDD061C85B1FFBD5LLVy_AEGtMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of __RealityFileURLResolver.Weak<__RealityFileURLResolver>(&v12, v3[7] + 8 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit6EntityC_SayAC34__RKEntityInteractionSpecificationVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit6EntityCSayAC34__RKEntityInteractionSpecificationVGGMd, &_ss18_DictionaryStorageCy10RealityKit6EntityCSayAC34__RKEntityInteractionSpecificationVGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)();
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_AETt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      outlined init with copy of [String : String](v9, v5, &_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = type metadata accessor for UUID();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE16OpacityComponentVGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit30__RKEntityTriggerSpecificationOG0C10Foundation19USDDecodableContextVcTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s13OpaquePointerVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaADGMd, &_ss18_DictionaryStorageCySo11CFStringRefaADGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit6EntityC_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit6EntityCSbGMd, &_ss18_DictionaryStorageCy10RealityKit6EntityCSbGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v4;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = result;
    *(v3[7] + v8) = v5 & 1;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 16;
    v15 = *(v10 - 1);
    v5 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of [String : String](v9, v5, &_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of Any(&v5[v8], (v7[7] + 32 * v13));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation14CustomMaterialV0E16ShaderParametersV_ScTy0C3Kit02__F8ResourceCs5Error_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersVScTy0C3Kit02__F8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersVScTy0C3Kit02__F8ResourceCs5Error_pGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[5];
      v24 = v4[4];
      v25 = v6;
      v7 = v4[7];
      v26 = v4[6];
      v27 = v7;
      v8 = v4[1];
      v21[0] = *v4;
      v21[1] = v8;
      v9 = v4[3];
      v22 = v4[2];
      v23 = v9;
      v10 = *(&v7 + 1);
      v30 = v22;
      v31 = v9;
      v28 = v21[0];
      v29 = v8;
      v35 = *(v4 + 14);
      v33 = v6;
      v34 = v26;
      v32 = v24;
      outlined init with copy of [String : String](v21, &v20, &_s17RealityFoundation14CustomMaterialV0C16ShaderParametersV_ScTy0A3Kit02__D8ResourceCs5Error_pGtMd, &_s17RealityFoundation14CustomMaterialV0C16ShaderParametersV_ScTy0A3Kit02__D8ResourceCs5Error_pGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v28);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 120 * result;
      v14 = v33;
      *(v13 + 64) = v32;
      *(v13 + 80) = v14;
      *(v13 + 96) = v34;
      *(v13 + 112) = v35;
      v15 = v29;
      *v13 = v28;
      *(v13 + 16) = v15;
      v16 = v31;
      *(v13 + 32) = v30;
      *(v13 + 48) = v16;
      *(v3[7] + 8 * result) = v10;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_11;
      }

      v3[2] = v19;
      if (!i)
      {

        return v3;
      }

      v4 += 8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation14CustomMaterialV0E16ShaderParametersV_0C3Kit02__F8ResourceCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersV0C3Kit02__F8ResourceCGMd, &_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersV0C3Kit02__F8ResourceCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[5];
      v24 = v4[4];
      v25 = v6;
      v7 = v4[7];
      v26 = v4[6];
      v27 = v7;
      v8 = v4[1];
      v21[0] = *v4;
      v21[1] = v8;
      v9 = v4[3];
      v22 = v4[2];
      v23 = v9;
      v10 = *(&v7 + 1);
      v30 = v22;
      v31 = v9;
      v28 = v21[0];
      v29 = v8;
      v35 = *(v4 + 14);
      v33 = v6;
      v34 = v26;
      v32 = v24;
      outlined init with copy of [String : String](v21, &v20, &_s17RealityFoundation14CustomMaterialV0C16ShaderParametersV_0A3Kit02__D8ResourceCtMd, &_s17RealityFoundation14CustomMaterialV0C16ShaderParametersV_0A3Kit02__D8ResourceCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v28);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 120 * result;
      v14 = v33;
      *(v13 + 64) = v32;
      *(v13 + 80) = v14;
      *(v13 + 96) = v34;
      *(v13 + 112) = v35;
      v15 = v29;
      *v13 = v28;
      *(v13 + 16) = v15;
      v16 = v31;
      *(v13 + 32) = v30;
      *(v13 + 48) = v16;
      *(v3[7] + 8 * result) = v10;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_11;
      }

      v3[2] = v19;
      if (!i)
      {

        return v3;
      }

      v4 += 8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit13UnlitMaterialV0E16ShaderParametersV_ScTyAC02__F8ResourceCs5Error_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVScTyAC02__F8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVScTyAC02__F8ResourceCs5Error_pGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 34);
  v6 = *(a1 + 36);
  v7 = *(a1 + 37);
  v8 = *(a1 + 40);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 16) | (v6 << 32) | (v7 << 40));
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v8;
  v13 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = v3[6] + 6 * v11;
    *v14 = v4 & 1;
    *(v14 + 2) = v5;
    *(v14 + 4) = v6;
    *(v14 + 5) = v7;
    *(v3[7] + 8 * v11) = result;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 2;
    v4 = *(v13 - 8);
    v5 = *(v13 - 3);
    v6 = *(v13 - 4);
    v7 = *(v13 - 3);
    v19 = *v13;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 16) | (v6 << 32) | (v7 << 40));
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit13UnlitMaterialV0E16ShaderParametersV_AC02__F8ResourceCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVAC02__F8ResourceCGMd, &_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVAC02__F8ResourceCGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 34);
  v6 = *(a1 + 36);
  v7 = *(a1 + 37);
  v8 = *(a1 + 40);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 16) | (v6 << 32) | (v7 << 40));
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v8;
  v13 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = v3[6] + 6 * v11;
    *v14 = v4 & 1;
    *(v14 + 2) = v5;
    *(v14 + 4) = v6;
    *(v14 + 5) = v7;
    *(v3[7] + 8 * v11) = result;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 2;
    v4 = *(v13 - 8);
    v5 = *(v13 - 3);
    v6 = *(v13 - 4);
    v7 = *(v13 - 3);
    v19 = *v13;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 16) | (v6 << 32) | (v7 << 40));
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV_ScTy0C3Kit02__G8ResourceCs5Error_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersVScTy0C3Kit02__G8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersVScTy0C3Kit02__G8ResourceCs5Error_pGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (v2 + 56); ; i += 4)
    {
      v18 = v1;
      v5 = *(i - 24);
      v6 = *(i - 11);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *(i - 7);
      v10 = *(i - 6);
      v11 = *i;
      LODWORD(v2) = v2 & 0xFF00 | v5 | (v6 << 16);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v2, v7, (v9 << 8) | (v10 << 16) | v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 24 * result;
      *v14 = v5;
      *(v14 + 2) = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 17) = v9;
      *(v14 + 18) = v10;
      *(v3[7] + 8 * result) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;

      v1 = v18 - 1;
      if (v18 == 1)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV_0C3Kit02__G8ResourceCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV0C3Kit02__G8ResourceCGMd, &_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV0C3Kit02__G8ResourceCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (v2 + 56); ; i += 4)
    {
      v18 = v1;
      v5 = *(i - 24);
      v6 = *(i - 11);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *(i - 7);
      v10 = *(i - 6);
      v11 = *i;
      LODWORD(v2) = v2 & 0xFF00 | v5 | (v6 << 16);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v2, v7, (v9 << 8) | (v10 << 16) | v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 24 * result;
      *v14 = v5;
      *(v14 + 2) = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 17) = v9;
      *(v14 + 18) = v10;
      *(v3[7] + 8 * result) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;

      v1 = v18 - 1;
      if (v18 == 1)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit18__MaterialResourceC15BuildParametersV5ValueOGMd, &_ss18_DictionaryStorageCySS10RealityKit18__MaterialResourceC15BuildParametersV5ValueOGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 48)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 32 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMd, &_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)();
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15CIContextOptiona_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15CIContextOptionaypGMd, &_ss18_DictionaryStorageCySo15CIContextOptionaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, &v11, &_sSo15CIContextOptiona_yptMd, &_sSo15CIContextOptiona_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, &v11, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16AlchemistService10ALCServiceC16GenerationOptionO_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMd, &_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16AlchemistService10ALCServiceC16GenerationOptionOypGMd, &_ss18_DictionaryStorageCy16AlchemistService10ALCServiceC16GenerationOptionOypGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of [String : String](v9, v5, &_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMd, &_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ALCService.GenerationOption();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of Any(&v5[v8], (v7[7] + 32 * v13));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLVSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation29StateMachineParameterProtocol_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss18_DictionaryStorageCySS17RealityFoundation29StateMachineParameterProtocol_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, &v13, &_sSS_17RealityFoundation29StateMachineParameterProtocol_ptMd, &_sSS_17RealityFoundation29StateMachineParameterProtocol_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of ForceEffectBase(&v15, v3[7] + 40 * result);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = static _DictionaryStorage.allocate(capacity:)();

  v10 = *(a1 + 80);
  v32 = *(a1 + 64);
  v33 = v10;
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  v11 = *(a1 + 48);
  v30 = *(a1 + 32);
  v31 = v11;
  v13 = *(&v30 + 1);
  v12 = v30;
  outlined init with copy of [String : String](&v30, v29, a4, a5);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
  if (v15)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v9;
  }

  v16 = (a1 + 128);
  while (1)
  {
    *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v9[6] + 16 * result);
    *v17 = v12;
    v17[1] = v13;
    v18 = v9[7] + 80 * result;
    *v18 = v31;
    v19 = v32;
    v20 = v33;
    v21 = v34;
    *(v18 + 64) = v35;
    *(v18 + 32) = v20;
    *(v18 + 48) = v21;
    *(v18 + 16) = v19;
    v22 = v9[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      break;
    }

    v9[2] = v24;
    if (!--v5)
    {
      goto LABEL_8;
    }

    v25 = v16 + 6;
    v26 = v16[3];
    v32 = v16[2];
    v33 = v26;
    v34 = v16[4];
    v35 = *(v16 + 80);
    v27 = v16[1];
    v30 = *v16;
    v31 = v27;
    v13 = *(&v30 + 1);
    v12 = v30;
    outlined init with copy of [String : String](&v30, v29, a4, a5);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
    v16 = v25;
    if (v28)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSV_17RealityFoundation21ActionHandlerProtocol_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySV17RealityFoundation21ActionHandlerProtocol_pGMd, &_ss18_DictionaryStorageCySV17RealityFoundation21ActionHandlerProtocol_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      outlined init with copy of [String : String](i, &v11, &_sSV_17RealityFoundation21ActionHandlerProtocol_ptMd, &_sSV_17RealityFoundation21ActionHandlerProtocol_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of ForceEffectBase(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ScTyyts5NeverOGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ScTyyts5NeverOGtMd, &_s10Foundation4UUIDV_ScTyyts5NeverOGtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of [String : String](v9, v5, &_s10Foundation4UUIDV_ScTyyts5NeverOGtMd, &_s10Foundation4UUIDV_ScTyyts5NeverOGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_So13simd_float4x4aSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSo13simd_float4x4aSgGMd, &_ss18_DictionaryStorageCySiSo13simd_float4x4aSgGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v16 = *(a1 + 80);
  v17 = *(a1 + 96);
  v18 = *(a1 + 112);
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v8 = v3[7] + 80 * result;
    *(v8 + 64) = v18;
    *(v8 + 32) = v16;
    *(v8 + 48) = v17;
    *v8 = v14;
    *(v8 + 16) = v15;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v12 = v7 + 6;
    v4 = *(v7 - 2);
    v16 = v7[2];
    v17 = v7[3];
    v18 = *(v7 + 64);
    v14 = *v7;
    v15 = v7[1];
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_17RealityFoundation21PhotogrammetrySessionC4PoseVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi17RealityFoundation21PhotogrammetrySessionC4PoseVGMd, &_ss18_DictionaryStorageCySi17RealityFoundation21PhotogrammetrySessionC4PoseVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 144)
    {
      outlined init with copy of [String : String](i, &v18, &_sSi_17RealityFoundation21PhotogrammetrySessionC4PoseVtMd, &_sSi_17RealityFoundation21PhotogrammetrySessionC4PoseVtMR);
      v5 = v18;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = v3[7] + (result << 7);
      v9 = v19;
      v10 = v20;
      v11 = v22;
      *(v8 + 32) = v21;
      *(v8 + 48) = v11;
      *v8 = v9;
      *(v8 + 16) = v10;
      v12 = v23;
      v13 = v24;
      v14 = v25;
      *(v8 + 112) = v26;
      *(v8 + 80) = v13;
      *(v8 + 96) = v14;
      *(v8 + 64) = v12;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10Foundation3URLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10Foundation3URLVtMd, &_sSi_10Foundation3URLVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation3URLVGMd, &_ss18_DictionaryStorageCySi10Foundation3URLVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of [String : String](v9, v5, &_sSi_10Foundation3URLVtMd, &_sSi_10Foundation3URLVtMR);
      v11 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for URL();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation11MeshBuffersO10IdentifierVAC0E12BufferErased_pGMd, &_ss18_DictionaryStorageCy17RealityFoundation11MeshBuffersO10IdentifierVAC0E12BufferErased_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, &v15, &_s17RealityFoundation11MeshBuffersO10IdentifierV_AA0C12BufferErased_ptMd, &_s17RealityFoundation11MeshBuffersO10IdentifierV_AA0C12BufferErased_ptMR);
      v5 = v18 ? 256 : 0;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, v5 | v17);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v3[6] + 24 * result;
      v9 = v16;
      v10 = v17;
      v11 = v18;
      *v8 = v15;
      *(v8 + 8) = v9;
      *(v8 + 16) = v10;
      *(v8 + 17) = v11;
      result = outlined init with take of ForceEffectBase(&v19, v3[7] + 40 * result);
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_13;
      }

      v3[2] = v14;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_17RealityFoundation16BufferDescriptorVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi17RealityFoundation16BufferDescriptorVGMd, &_ss18_DictionaryStorageCySi17RealityFoundation16BufferDescriptorVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v9 = *(a1 + 58);
  v10 = *(a1 + 59);
  v24 = a1;
  v11 = *(a1 + 60);
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = v12;
  result = v6;
  v16 = (v24 + 92);
  while (1)
  {
    *(v3 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    *(v3[6] + 8 * v14) = v4;
    v17 = v3[7] + 24 * v14;
    *v17 = v5;
    *(v17 + 8) = result;
    *(v17 + 16) = v7 & 1;
    *(v17 + 17) = v8 & 1;
    *(v17 + 18) = v9;
    *(v17 + 19) = v10;
    *(v17 + 20) = v11 & 1;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v16 + 32;
    v4 = *(v16 - 28);
    v25 = *(v16 - 20);
    v22 = *(v16 - 12);
    v7 = *(v16 - 4);
    v8 = *(v16 - 3);
    v9 = *(v16 - 2);
    v10 = *(v16 - 1);
    v11 = *v16;

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v16 = v21;
    result = v22;
    v5 = v25;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s5Int32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs5Int32VGMd, &_ss18_DictionaryStorageCySSs5Int32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SSTt0g5Tf4g_nTm(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a4(v8);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  result = v10;
  v15 = a1 + 9;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v7[6] + 8 * v13) = v8;
    v16 = (v7[7] + 16 * v13);
    *v16 = v9;
    v16[1] = result;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v20 = v15 + 3;
    v8 = *(v15 - 2);
    v9 = *(v15 - 1);
    v21 = *v15;

    v13 = a4(v8);
    v15 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
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
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_s5Int32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerVs5Int32VGMd, &_ss18_DictionaryStorageCys13OpaquePointerVs5Int32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit02__E15FileURLResolverCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v15 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v8 = (a1 + 48);
  v9 = v3 - 1;
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v15;
    *(v5[7] + 8 * result) = *(&v15 + 1);
    v10 = v5[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v5[2] = v12;
    if (!v9)
    {
      goto LABEL_8;
    }

    v13 = *v8++;
    v15 = v13;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    --v9;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_So09CFBooleanD0aSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSgSo09CFBooleanD0aSgGMd, &_ss18_DictionaryStorageCySo11CFStringRefaSgSo09CFBooleanD0aSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_AETt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23ExtrudedGlyphDescriptorV4InfoVAEGMd, &_ss18_DictionaryStorageCy17RealityFoundation23ExtrudedGlyphDescriptorV4InfoVAEGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 112);
  *&v30[16] = *(a1 + 96);
  *&v30[32] = v4;
  v5 = *(a1 + 144);
  *&v30[48] = *(a1 + 128);
  *&v30[64] = v5;
  v6 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v6;
  v7 = *(a1 + 80);
  v29 = *(a1 + 64);
  *v30 = v7;
  v34 = *(a1 + 80);
  v32 = v6;
  v33 = v29;
  v31 = v27;
  outlined init with copy of [String : String](&v27, v26, &_s17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_ACtMd, &_s17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_ACtMR);
  result = specialized __RawDictionaryStorage.find<A>(_:)(&v31);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 160);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = v3[6] + 56 * result;
    v12 = v32;
    *v11 = v31;
    *(v11 + 16) = v12;
    *(v11 + 32) = v33;
    *(v11 + 48) = v34;
    v13 = v3[7] + 72 * result;
    v14 = *&v30[72];
    v15 = *&v30[56];
    v16 = *&v30[40];
    *(v13 + 16) = *&v30[24];
    *(v13 + 32) = v16;
    *(v13 + 48) = v15;
    *(v13 + 64) = v14;
    *v13 = *&v30[8];
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v10 + 8;
    v21 = v10[5];
    *&v30[16] = v10[4];
    *&v30[32] = v21;
    v22 = v10[7];
    *&v30[48] = v10[6];
    *&v30[64] = v22;
    v23 = v10[1];
    v27 = *v10;
    v28 = v23;
    v24 = v10[3];
    v29 = v10[2];
    *v30 = v24;
    v34 = *(v10 + 6);
    v32 = v23;
    v33 = v29;
    v31 = v27;
    outlined init with copy of [String : String](&v27, v26, &_s17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_ACtMd, &_s17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_ACtMR);
    result = specialized __RawDictionaryStorage.find<A>(_:)(&v31);
    v10 = v20;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s13OpaquePointerVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefayXlGMd, &_ss18_DictionaryStorageCySo11CFStringRefayXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of [String : String](v16, v12, a2, v27);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

uint64_t specialized static __RealityFileURLResolver.weakShared.getter()
{
  if (one-time initialization token for weakInstances != -1)
  {
    swift_once();
  }

  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v11);
  v1 = v12;
  v2 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v3 = (*(v2 + 32))(v1, v2);
  swift_beginAccess();
  v4 = static __RealityFileURLResolver.weakInstances;
  if (*(static __RealityFileURLResolver.weakInstances + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v6 & 1) != 0))
  {
    outlined init with copy of [String : String](v4[7] + 8 * v5, &v9, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
    v10 = 0;
    Strong = swift_weakLoadStrong();
    outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMR);
    swift_endAccess();
  }

  else
  {
    v9 = 0;
    v10 = 1;
    outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGSgMR);
    swift_endAccess();
    Strong = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return Strong;
}

uint64_t specialized static __RealityFileURLResolver.weakShared.setter(uint64_t a1)
{
  if (one-time initialization token for weakInstances != -1)
  {
    swift_once();
  }

  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v5 = (*(v4 + 32))(v3, v4);
  if (a1)
  {
    swift_weakInit();
    swift_weakAssign();
  }

  else
  {
    v7 = 0;
  }

  v8 = a1 == 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v7, v5);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v9);
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id specialized closure #1 in __RealityFileURLResolver.registerRealityFileResolver()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = String.init(cString:)();
  v12 = v11;
  if (a2)
  {
    v13 = v10;
    type metadata accessor for __REAssetManager();
    v14 = swift_allocObject();
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 2;
    *(v14 + 96) = 514;
    *(v14 + 88) = a2;
    v15 = one-time initialization token for instances;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = static __RealityFileURLResolver.instances;

    specialized AssetServiceScopedRegistry.instance(for:)(v14, v16);

    __RealityFileURLResolver.resolvedURL(for:)(v13, v12, v5);

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return 0;
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v18 = URL.path.getter();
      v20 = v19;
      v21 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
      v22 = MEMORY[0x1C68F3280](v18, v20);

      v23 = [v21 initWithString_];

      v24 = [v23 fileSystemRepresentation];

      (*(v7 + 8))(v9, v6);
      v25 = v23;
      return v24;
    }
  }

  else
  {

    return 0;
  }
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

uint64_t partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:)()
{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24));
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

{
  return specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(*(v0 + 16), *(v0 + 24), specialized Dictionary.subscript.setter);
}

uint64_t type metadata instantiation function for __RealityFileURLResolver.Weak(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t __RKEntityActionSpecification.init(decodeContext:)@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = *a1;
  result = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x736E6F69746361, 0xE700000000000000, 0, *a1);
  v7 = v2;
  if (v2)
  {

    v74 = v3[3];
    outlined destroy of BodyTrackingComponent?(&v74, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v73[0] = v3[4];
    outlined destroy of BodyTrackingComponent?(v73, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v72 = v3[5];
    v8 = &v72;
    return outlined destroy of BodyTrackingComponent?(v8, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  v53 = result;
  if (result >> 62)
  {
    goto LABEL_54;
  }

  v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v50 = v5;
    v49 = a2;
    if (v9)
    {
      v10 = v53;
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = MEMORY[0x1E69E7CC0];
        v60 = v3[1];
        v52 = v3;
        v54 = v9;
        while (1)
        {
          v13 = (v53 & 0xC000000000000001) != 0 ? MEMORY[0x1C68F41F0](v11, v10) : *(v10 + 8 * v11 + 32);
          v14 = v13;
          v15 = [v60 objectAtPath_];
          if (v15)
          {
            break;
          }

LABEL_10:
          if (v9 == ++v11)
          {
            goto LABEL_44;
          }
        }

        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {

LABEL_34:
          v9 = v54;
          goto LABEL_10;
        }

        v18 = v17;
        v55 = v14;
        v19 = v12;
        v20 = v7;
        v21 = v3[2];
        v22 = v3[3];
        v24 = v3[4];
        v23 = v3[5];
        v56 = v60;
        v57 = v21;

        v59 = v22;

        v58 = v24;
        v5 = v23;

        v3 = v16;
        v25 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x64693A6F666E69, 0xE700000000000000, 1, v18);
        if (v20)
        {

          v7 = MEMORY[0x1E69E7CC0];
          v12 = v19;
        }

        else
        {
          v37 = v26;
          v12 = v19;
          if (v26)
          {
            v38 = v25;
            v27 = v55;
            if (one-time initialization token for actionTypeToActionSpecificationsGenerator != -1)
            {
              swift_once();
            }

            v39 = static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator;
            if (*(static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator + 2) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v37), (v41 & 1) != 0))
            {
              v42 = v40;

              v43 = *(v39[7] + 16 * v42);
              v62[0] = v18;
              v62[1] = v56;
              v62[2] = v57;
              v62[3] = v59;
              v62[4] = v58;
              v62[5] = v5;

              v43(&v61, v62);

              v7 = v61;
            }

            else
            {
              v51 = static os_log_type_t.debug.getter();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_1C1887600;
              *(v44 + 56) = MEMORY[0x1E69E6158];
              *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v44 + 32) = v38;
              *(v44 + 40) = v37;
              type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
              v45 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)(v51, &dword_1C1358000, v45, "USD action loading: Unknown action type", 39, 2, v44);

              v7 = MEMORY[0x1E69E7CC0];
            }

LABEL_19:
            v28 = v7[2];
            a2 = v12[2];
            v29 = a2 + v28;
            if (__OFADD__(a2, v28))
            {
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              result = __CocoaSet.count.getter();
              v9 = result;
              continue;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v31 = v12[3] >> 1, v31 >= v29))
            {
              if (v7[2])
              {
LABEL_23:
                a2 = v12[2];
                v32 = v31 - a2;
                type metadata accessor for __RKEntityActionSpecification(0);
                if (v32 < v28)
                {
                  goto LABEL_52;
                }

                swift_arrayInitWithCopy();

                v7 = 0;
                if (v28)
                {
                  v33 = v12[2];
                  v34 = __OFADD__(v33, v28);
                  v35 = v33 + v28;
                  if (v34)
                  {
                    goto LABEL_53;
                  }

                  v12[2] = v35;
                }

LABEL_33:

                v3 = v52;
                v10 = v53;
                goto LABEL_34;
              }
            }

            else
            {
              if (a2 <= v29)
              {
                v36 = a2 + v28;
              }

              else
              {
                v36 = a2;
              }

              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v36, 1, v12);
              v31 = v12[3] >> 1;
              if (v7[2])
              {
                goto LABEL_23;
              }
            }

            v7 = 0;
            if (v28)
            {
              goto LABEL_51;
            }

            goto LABEL_33;
          }

          v7 = MEMORY[0x1E69E7CC0];
        }

        v27 = v55;
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
LABEL_44:

      if (!v12[2])
      {

        lazy protocol witness table accessor for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError();
        swift_allocError();
        swift_willThrow();

        v65 = v3[3];
        outlined destroy of BodyTrackingComponent?(&v65, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v64 = v3[4];
        outlined destroy of BodyTrackingComponent?(&v64, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
        v63 = v3[5];
        v8 = &v63;
        return outlined destroy of BodyTrackingComponent?(v8, &_sSDyS2SGMd, &_sSDyS2SGMR);
      }

      v46 = MEMORY[0x1C68F3280](0x766973756C637865, 0xE900000000000065);
      v47 = [v50 property_];

      if (v47)
      {
        v48 = [v47 BOOLValue];

        v68 = v3[3];
        outlined destroy of BodyTrackingComponent?(&v68, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v67 = v3[4];
        outlined destroy of BodyTrackingComponent?(&v67, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
        v66 = v3[5];
        outlined destroy of BodyTrackingComponent?(&v66, &_sSDyS2SGMd, &_sSDyS2SGMR);
      }

      else
      {

        v71 = v3[3];
        outlined destroy of BodyTrackingComponent?(&v71, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v70 = v3[4];
        outlined destroy of BodyTrackingComponent?(&v70, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
        v69 = v3[5];
        outlined destroy of BodyTrackingComponent?(&v69, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v48 = 0;
      }

      *v49 = 1;
      *(v49 + 8) = v12;
      *(v49 + 16) = v48;
      *(v49 + 24) = 1;
      *(v49 + 32) = 0;
      type metadata accessor for __RKEntityActionSpecification(0);
      return swift_storeEnumTagMultiPayload();
    }

    return result;
  }
}

uint64_t one-time initialization function for actionTypeToActionSpecificationsGenerator()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit29__RKEntityActionSpecificationOG0C10Foundation19USDDecodableContextVcTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for actionTypeToActionSpecificationsGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yyctMd, &_sSS_yyctMR);
  result = swift_arrayDestroy();
  static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator = v0;
  return result;
}

uint64_t static __RKEntityActionSpecification.generateGroupActionSpecifications(decodeContext:)(void **a1)
{
  v2 = type metadata accessor for __RKEntityActionSpecification(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v90 - v7;
  v9 = *a1;
  v109 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x73706F6F6CLL, 0xE500000000000000, 1, *a1);
  v10 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x436D726F66726570, 0xEC000000746E756FLL, 1, v9);
  v11 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1701869940, 0xE400000000000000, 1, v9);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v94 = v10;
  v97 = v3;
  v14 = v12;
  v15._countAndFlagsBits = v11;
  v15._object = v14;
  v16 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityGroupActionOrderUSD.init(rawValue:), v15);

  if (v16)
  {
    if (v16 != 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v96 = v2;
    v91 = v8;
    v92 = v5;
    v93 = 0;
  }

  else
  {
    v96 = v2;
    v91 = v8;
    v92 = v5;
    v93 = 1;
  }

  v17 = MEMORY[0x1C68F3280](0x736E6F69746361, 0xE700000000000000);
  v18 = [v9 property_];

  if (!v18)
  {
    v72 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1C1897FD0;
    v74 = MEMORY[0x1E69E6158];
    *(v73 + 56) = MEMORY[0x1E69E6158];
    v75 = lazy protocol witness table accessor for type String and conformance String();
    *(v73 + 32) = 0xD000000000000012;
    *(v73 + 40) = 0x80000001C18DE9B0;
    *(v73 + 96) = v74;
    *(v73 + 104) = v75;
    *(v73 + 64) = v75;
    *(v73 + 72) = 0x736E6F69746361;
    *(v73 + 80) = 0xE700000000000000;
    v76 = [v9 path];
    v77 = [v76 stringValue];

    if (v77)
    {
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = (v73 + 112);
      *(v73 + 136) = v74;
      *(v73 + 144) = v75;
      if (v80)
      {
        *v81 = v78;
LABEL_49:
        *(v73 + 120) = v80;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v82 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v72, &dword_1C1358000, v82, "%s: No property named %s for node at path: %s", v90, *(&v90 + 1), v91);

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v81 = (v73 + 112);
      *(v73 + 136) = v74;
      *(v73 + 144) = v75;
    }

    *v81 = 7104878;
    v80 = 0xE300000000000000;
    goto LABEL_49;
  }

  v106 = 0;
  v19 = v18;
  v20 = [v19 objectPathArray];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v21 >> 62)
  {
    goto LABEL_53;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = &off_1C1887000;
  if (!v22)
  {
LABEL_54:
    v99 = MEMORY[0x1E69E7CC0];
LABEL_55:

    v83 = v99;
    if (v99[2])
    {
      v84 = v94;
      v85 = v91;
      *v91 = v93;
      if (v109)
      {
        v86 = 0;
      }

      else
      {
        v86 = v84;
      }

      *(v85 + 1) = v83;
      *(v85 + 16) = 0;
      *(v85 + 3) = v86;
      *(v85 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      v87 = v92;
      static __RKEntityActionSpecification.collapseAndReturnGroupActionSpecification(_:)(v85, v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v88 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1C1887600;
      outlined init with take of __RKEntityHideActionArguments(v87, v89 + v88, type metadata accessor for __RKEntityActionSpecification);
      outlined destroy of __RKEntityActionSpecification(v85, type metadata accessor for __RKEntityActionSpecification);
      return v89;
    }

    return MEMORY[0x1E69E7CC0];
  }

  while (v22 >= 1)
  {
    v24 = 0;
    v25 = v21 & 0xC000000000000001;
    v26 = a1[1];
    v27 = &property descriptor for UnlitMaterial.readsDepth;
    v90 = *(v23 + 96);
    v99 = MEMORY[0x1E69E7CC0];
    v95 = v26;
    v98 = v21;
    v100 = v21 & 0xC000000000000001;
    while (1)
    {
      if (v25)
      {
        v28 = MEMORY[0x1C68F41F0](v24, v21);
      }

      else
      {
        v28 = *(v21 + 8 * v24 + 32);
      }

      v29 = v28;
      v30 = v26;
      v31 = [v30 v27[411]];
      v32 = v29;
      if (!v31)
      {

        goto LABEL_14;
      }

      v33 = v31;
      v107 = v32;
      v108 = v30;
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (!v34)
      {

        goto LABEL_14;
      }

      v35 = v34;
      v36 = v22;
      v37 = a1[3];
      v39 = a1[4];
      v38 = a1[5];
      v102 = a1[2];

      v105 = v37;

      v104 = v39;

      v103 = v38;

      v40 = v33;
      v41 = v106;
      v42 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x64693A6F666E69, 0xE700000000000000, 1, v35);
      v101 = v40;
      if (v41)
      {

        v41 = 0;
LABEL_22:
        v44 = MEMORY[0x1E69E7CC0];
        v22 = v36;
        goto LABEL_23;
      }

      v60 = v43;
      if (!v43)
      {
        goto LABEL_22;
      }

      if (one-time initialization token for actionTypeToActionSpecificationsGenerator != -1)
      {
        v71 = v42;
        swift_once();
        v42 = v71;
      }

      v61 = static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator;
      v22 = v36;
      if (*(static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator + 2) && (v62 = v42, v63 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v60), v42 = v62, (v64 & 1) != 0))
      {
        v65 = v63;

        v66 = *(v61[7] + 16 * v65);
        v111[0] = v35;
        v111[1] = v108;
        v111[2] = v102;
        v111[3] = v105;
        v111[4] = v104;
        v111[5] = v103;

        v66(&v110, v111);
        v41 = 0;
        v27 = &property descriptor for UnlitMaterial.readsDepth;

        v44 = v110;
      }

      else
      {
        v68 = v42;
        LODWORD(v106) = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v69 = swift_allocObject();
        *(v69 + 16) = v90;
        *(v69 + 56) = MEMORY[0x1E69E6158];
        *(v69 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v69 + 32) = v68;
        *(v69 + 40) = v60;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v70 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v106, &dword_1C1358000, v70, "USD action loading: Unknown action type", 39, 2, v69);

        v44 = MEMORY[0x1E69E7CC0];
      }

LABEL_23:
      v25 = v100;
      v45 = v44[2];
      v106 = v41;
      if (!v45)
      {

        v67 = v101;

        v21 = v98;
        goto LABEL_14;
      }

      v46 = v22;
      v47 = a1;
      a1 = v44;
      v48 = v27;
      v49 = v98;
      v50 = v99;
      v51 = v99[2];
      v21 = v45 + v51;
      if (__OFADD__(v51, v45))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v53 = v50[3] >> 1, v53 < v21))
      {
        if (v51 <= v21)
        {
          v54 = v45 + v51;
        }

        else
        {
          v54 = v51;
        }

        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v54, 1, v50);
        v53 = v50[3] >> 1;
      }

      v21 = a1;
      if (!a1[2])
      {
        goto LABEL_62;
      }

      v25 = v100;
      if (v53 - v50[2] < v45)
      {
        goto LABEL_51;
      }

      a1 = v47;
      swift_arrayInitWithCopy();

      v55 = v50[2];
      v56 = __OFADD__(v55, v45);
      v57 = v45 + v55;
      v58 = v95;
      if (v56)
      {
        goto LABEL_52;
      }

      v22 = v46;
      v99 = v50;
      v50[2] = v57;

      v59 = v101;

      v21 = v49;
      v27 = v48;
      v26 = v58;
LABEL_14:
      if (v22 == ++v24)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v22 = __CocoaSet.count.getter();
    v23 = &off_1C1887000;
    if (!v22)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_62:

  __break(1u);
  return result;
}

uint64_t static __RKEntityActionSpecification.collapseAndReturnGroupActionSpecification(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](started);
  v69 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for UUID();
  v70 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for __RKEntityAudioActionArguments(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v65 - v11;
  v12 = type metadata accessor for __RKEntitySpinActionArguments(0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for __RKEntityActionSpecification(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  outlined init with copy of __RKEntityActionSpecification(a1, &v65 - v22);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    outlined destroy of __RKEntityActionSpecification(v23, type metadata accessor for __RKEntityActionSpecification);
    v28 = a1;
    return outlined init with copy of __RKEntityActionSpecification(v28, v74);
  }

  v24 = a1;
  v25 = *(v23 + 1);
  if (*(v25 + 16) != 1)
  {
    goto LABEL_13;
  }

  if (v23[32])
  {
    v26 = 1;
    v27 = v73;
    goto LABEL_8;
  }

  v26 = *(v23 + 3);
  v27 = v73;
  if (v26 < 1)
  {
LABEL_13:
    outlined init with copy of __RKEntityActionSpecification(v24, v74);
  }

LABEL_8:
  v73 = v26;
  v30 = v24;
  outlined init with copy of __RKEntityActionSpecification(v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 15)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 10)
      {

        v32 = v69;
        outlined init with take of __RKEntityHideActionArguments(v20, v69, type metadata accessor for __RKEntityStartAnimateActionArguments);
        v33 = v70;
        v34 = v68;
        result = (*(v70 + 16))(v68, v32, v27);
        v35 = *(v32 + started[5]);
        v36 = v35 * v73;
        if ((v35 * v73) >> 64 == (v35 * v73) >> 63)
        {
          v37 = v27;
          v38 = started[7];
          LODWORD(v73) = *(v32 + started[6]);
          v39 = *(v32 + v38);
          v40 = started[9];
          v41 = *(v32 + started[8]);
          v42 = started[11];
          LODWORD(v67) = *(v32 + started[10]);
          v43 = *(v32 + v42);
          LODWORD(v72) = *(v32 + v40);
          v44 = started;
          outlined destroy of __RKEntityActionSpecification(v32, type metadata accessor for __RKEntityStartAnimateActionArguments);
          v45 = v44[14];
          v46 = *(v33 + 56);
          v47 = v74;
          v46(v74 + v45, 1, 1, v37);
          (*(v33 + 32))(v47, v34, v37);
          *(v47 + v44[5]) = v36;
          *(v47 + v44[6]) = v73;
          *(v47 + v44[10]) = v67;
          *(v47 + v44[8]) = v41;
          *(v47 + v44[7]) = v39;
          *(v47 + v44[11]) = v43;
          *(v47 + v44[9]) = v72;
          *(v47 + v44[12]) = 0;
          v48 = v47 + v44[13];
          *v48 = 0x3FF0000000000000;
          *(v48 + 8) = 0;
          outlined destroy of BodyTrackingComponent?(v47 + v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v46(v47 + v45, 1, 1, v37);
          return swift_storeEnumTagMultiPayload();
        }

        else
        {
          __break(1u);
        }

        return result;
      }

LABEL_21:

      outlined init with copy of __RKEntityActionSpecification(v30, v74);
      return outlined destroy of __RKEntityActionSpecification(v20, type metadata accessor for __RKEntityActionSpecification);
    }

    outlined init with take of __RKEntityHideActionArguments(v20, v7, type metadata accessor for __RKEntityAudioActionArguments);
    outlined destroy of __RKEntityActionSpecification(v7, type metadata accessor for __RKEntityAudioActionArguments);
    v28 = v30;
    return outlined init with copy of __RKEntityActionSpecification(v28, v74);
  }

  if (EnumCaseMultiPayload == 16)
  {
    v56 = v20;
    v57 = v66;
    outlined init with take of __RKEntityHideActionArguments(v56, v66, type metadata accessor for __RKEntityOrbitEntityActionArguments);
    v58 = (v57 + *(v8 + 24));
    v59 = *v58;
    v60 = (v57 + *(v8 + 28));
    v61 = *v60;
    LOBYTE(v60) = *(v60 + 4);
    v78 = *(v58 + 4);
    v77 = v60;
    v62 = specialized static __RKEntityActionSpecification.calculateMaximumMultiplier(lhs:rhs:)(v59 | (v78 << 32), v61 | (v60 << 32));

    if (v62 >= v73)
    {
      v62 = v73;
      v63 = v74;
    }

    else
    {
      v63 = v74;
      if ((~LODWORD(v62) & 0x7F800000) == 0 && (LODWORD(v62) & 0x7FFFFF) != 0)
      {
        v62 = v73;
      }
    }

    v64 = v67;
    static __RKEntityActionSpecification.copyOrbitActionArguments(_:multiplier:)(v57, v67, v62);
    outlined destroy of __RKEntityActionSpecification(v57, type metadata accessor for __RKEntityOrbitEntityActionArguments);
    outlined init with take of __RKEntityHideActionArguments(v64, v63, type metadata accessor for __RKEntityOrbitEntityActionArguments);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (EnumCaseMultiPayload != 19)
    {
      goto LABEL_21;
    }

    outlined init with take of __RKEntityHideActionArguments(v20, v16, type metadata accessor for __RKEntitySpinActionArguments);
    v49 = &v16[*(v12 + 20)];
    v50 = *v49;
    v51 = &v16[*(v12 + 24)];
    v52 = *v51;
    LOBYTE(v51) = v51[4];
    v76 = v49[4];
    v75 = v51;
    v53 = specialized static __RKEntityActionSpecification.calculateMaximumMultiplier(lhs:rhs:)(v50 | (v76 << 32), v52 | (v51 << 32));

    if (v53 >= v73)
    {
      v53 = v73;
      v54 = v74;
      v55 = v72;
    }

    else
    {
      v54 = v74;
      v55 = v72;
      if ((~LODWORD(v53) & 0x7F800000) == 0 && (LODWORD(v53) & 0x7FFFFF) != 0)
      {
        v53 = v73;
      }
    }

    static __RKEntityActionSpecification.copySpinActionArguments(_:multiplier:)(v16, v55, v53);
    outlined destroy of __RKEntityActionSpecification(v16, type metadata accessor for __RKEntitySpinActionArguments);
    outlined init with take of __RKEntityHideActionArguments(v55, v54, type metadata accessor for __RKEntitySpinActionArguments);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t static __RKEntityActionSpecification.copySpinActionArguments(_:multiplier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v12 = a1 + v11[5];
  v13 = *v12;
  v14 = *(v12 + 4);
  v15 = a1 + v11[6];
  v16 = *v15;
  v17 = *(v15 + 4);
  v18 = v11[7];
  v19 = *(a1 + v18);
  v20 = a1 + v11[8];
  if (*(v20 + 16))
  {
    v21 = 0;
    v22 = 0x3F80000000000000;
  }

  else
  {
    v22 = *v20;
    v21 = *(v20 + 8);
  }

  if (v17)
  {
    v16 = 1.0;
  }

  if (v14)
  {
    v13 = 1.0;
  }

  v23 = v13 * a3;
  v24 = v16 * a3;
  *(a2 + v18) = 2;
  result = (*(v7 + 32))(a2, v10, v6);
  if (v23 < 0.0)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = v23;
  }

  v27 = a2 + v11[5];
  *v27 = v26;
  *(v27 + 4) = 0;
  if (v24 < 0.0)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = v24;
  }

  v29 = a2 + v11[6];
  v30 = a2 + v11[8];
  *v29 = v28;
  *(v29 + 4) = 0;
  *(a2 + v18) = v19 & 1;
  *v30 = v22;
  *(v30 + 8) = v21;
  *(v30 + 16) = 0;
  return result;
}

uint64_t static __RKEntityActionSpecification.copyOrbitActionArguments(_:multiplier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = *(v7 + 16);
  v14(&v40 - v12, a1, v6, v11);
  v15 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  (v14)(v9, a1 + v15[5], v6);
  v16 = a1 + v15[6];
  v17 = *v16;
  v18 = *(v16 + 4);
  v19 = a1 + v15[7];
  v20 = *v19;
  v21 = *(v19 + 4);
  v22 = a1 + v15[8];
  if (*(v22 + 16))
  {
    v41 = 0;
    v23 = 0x3F80000000000000;
  }

  else
  {
    v23 = *v22;
    v41 = *(a1 + v15[8] + 8);
  }

  v40 = v23;
  if (v21)
  {
    v20 = 1.0;
  }

  if (v18)
  {
    v17 = 1.0;
  }

  v24 = v15[10];
  v25 = *(a1 + v15[9]);
  v26 = *(a1 + v24);
  v27 = v17 * a3;
  v28 = v20 * a3;
  *(a2 + v24) = 2;
  v29 = *(v7 + 32);
  v29(a2, v13, v6);
  result = (v29)(a2 + v15[5], v9, v6);
  if (v27 < 0.0)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = v27;
  }

  v32 = a2 + v15[6];
  v33 = a2 + v15[7];
  v34 = v15[9];
  v35 = a2 + v15[8];
  v36 = v15[11];
  v37 = a2 + v15[12];
  v38 = a2 + v15[13];
  *v32 = v31;
  *(v32 + 4) = 0;
  *v33 = v28;
  *(v33 + 4) = 0;
  v39 = v41;
  *v35 = v40;
  *(v35 + 8) = v39;
  *(v35 + 16) = 0;
  *(a2 + v34) = v25 & 1;
  *(a2 + v24) = v26 & 1;
  *(a2 + v36) = 0;
  *v37 = 0;
  *(v37 + 4) = 0;
  *v38 = 0;
  *(v38 + 4) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionSpecification.ActionUSDLoadingError, &type metadata for __RKEntityActionSpecification.ActionUSDLoadingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionSpecification.ActionUSDLoadingError, &type metadata for __RKEntityActionSpecification.ActionUSDLoadingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionSpecification.ActionUSDLoadingError and conformance __RKEntityActionSpecification.ActionUSDLoadingError);
  }

  return result;
}

uint64_t closure #1 in static __RKEntityActionSpecification.generateNotificationActionSpecifications(decodeContext:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v44 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for __RKEntityCustomActionArguments(0);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v38 = type metadata accessor for __RKEntityActionSpecification(0);
  v41 = *(v38 - 8);
  v20 = MEMORY[0x1EEE9AC00](v38);
  v40 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v19, a1, v5, v20);
  (*(v6 + 56))(v19, 0, 1, v5);
  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of [String : String](v19, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(v6 + 48);
  if (v22(v16, 1, v5) == 1)
  {
    v36 = v8;
    UUID.init(uuidString:)();
    result = v22(v13, 1, v5);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v24 = *(v6 + 32);
    v24(v36, v13, v5);
    if (v22(v16, 1, v5) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    v25 = v44;
    v26 = v40;
    v27 = v36;
  }

  else
  {
    v24 = *(v6 + 32);
    v24(v8, v16, v5);
    v25 = v44;
    v26 = v40;
    v27 = v8;
  }

  v24(v10, v27, v5);
  v28 = v39;
  v29 = &v10[*(v39 + 20)];
  v30 = v43;
  *v29 = v42;
  v29[1] = v30;

  outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *&v10[*(v28 + 24)] = v37;
  outlined init with take of __RKEntityHideActionArguments(v10, v26, type metadata accessor for __RKEntityCustomActionArguments);
  swift_storeEnumTagMultiPayload();
  v31 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *v25 = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
    *v25 = v31;
  }

  v31[2] = v34 + 1;
  return outlined init with take of __RKEntityHideActionArguments(v26, v31 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v34, type metadata accessor for __RKEntityActionSpecification);
}

uint64_t closure #1 in static __RKEntityActionSpecification.generateOrbitActionSpecifications(decodeContext:)(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, __n128 a5, float a6, __n128 a7)
{
  v46 = a4;
  v45 = a7;
  v8 = a5.n128_f32[0];
  v43 = a3;
  v44 = a2;
  v42 = a1;
  v9 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = type metadata accessor for __RKEntityActionSpecification(0);
  v47 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v14 + 16);
  v24(v19, v42, v13, v21);
  (v24)(v16, v43, v13);
  v25 = v10[12];
  v12[v25] = 2;
  v26 = *(v14 + 32);
  v26(v12, v19, v13);
  v26(&v12[v10[7]], v16, v13);
  v27 = 1.0;
  if (v8 >= 0.0)
  {
    v27 = v8;
  }

  v28 = &v12[v10[8]];
  v29 = &v12[v10[9]];
  v30 = v10[11];
  v31 = &v12[v10[10]];
  v32 = v10[13];
  v33 = &v12[v10[14]];
  v34 = &v12[v10[15]];
  *v28 = v27;
  v28[4] = 0;
  *v29 = a6;
  v29[4] = 0;
  *v31 = v45;
  v31[1].n128_u8[0] = 0;
  v12[v30] = v46;
  v12[v25] = 0;
  v35 = v44;
  v12[v32] = 0;
  *v33 = 0;
  v33[4] = 0;
  *v34 = 0;
  v34[4] = 0;
  outlined init with take of __RKEntityHideActionArguments(v12, v23, type metadata accessor for __RKEntityOrbitEntityActionArguments);
  swift_storeEnumTagMultiPayload();
  v36 = *v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v35 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    *v35 = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
    *v35 = v36;
  }

  v36[2] = v39 + 1;
  return outlined init with take of __RKEntityHideActionArguments(v23, v36 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v39, type metadata accessor for __RKEntityActionSpecification);
}

uint64_t __RKEntityMoveEase.init(decodeContext:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *a1;
  v6._countAndFlagsBits = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6570795465736165, 0xE800000000000000, 1, *a1);
  if (v2)
  {

    v20 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v20, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v19 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v19, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v18 = *(a1 + 40);
    v7 = &v18;
    return outlined destroy of BodyTrackingComponent?(v7, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  if (!v6._object || (v8 = specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(v6), v8 == 4))
  {
    lazy protocol witness table accessor for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError();
    swift_allocError();
    swift_willThrow();

    v17 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v17, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v16 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v16, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v15 = *(a1 + 40);
    v7 = &v15;
    return outlined destroy of BodyTrackingComponent?(v7, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  v10 = v8;

  v14 = *(a1 + 24);
  outlined destroy of BodyTrackingComponent?(&v14, &_sSDyS2SGMd, &_sSDyS2SGMR);
  v13 = *(a1 + 32);
  outlined destroy of BodyTrackingComponent?(&v13, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  v12 = *(a1 + 40);
  result = outlined destroy of BodyTrackingComponent?(&v12, &_sSDyS2SGMd, &_sSDyS2SGMR);
  if ((v10 - 1) >= 3u)
  {
    v11 = 0;
  }

  else
  {
    v11 = 6;
  }

  *a2 = v11;
  return result;
}

uint64_t __RKEntityMoveEaseType.init(decodeContext:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  v6._countAndFlagsBits = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6570795465736165, 0xE800000000000000, 1, *a1);
  if (v2)
  {

    v18 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v18, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v17 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v17, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v16 = *(a1 + 40);
    v7 = &v16;
    return outlined destroy of BodyTrackingComponent?(v7, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  if (!v6._object || (v8 = specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(v6), v8 == 4))
  {
    lazy protocol witness table accessor for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError();
    swift_allocError();
    swift_willThrow();

    v15 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v15, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v14 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v14, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v13 = *(a1 + 40);
    v7 = &v13;
    return outlined destroy of BodyTrackingComponent?(v7, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  v12 = *(a1 + 24);
  outlined destroy of BodyTrackingComponent?(&v12, &_sSDyS2SGMd, &_sSDyS2SGMR);
  v11 = *(a1 + 32);
  outlined destroy of BodyTrackingComponent?(&v11, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  v10 = *(a1 + 40);
  result = outlined destroy of BodyTrackingComponent?(&v10, &_sSDyS2SGMd, &_sSDyS2SGMR);
  *a2 = 0x2010000u >> (8 * v8);
  return result;
}

uint64_t closure #1 in static __RKEntityActionSpecification.generateTransformAnimationActionSpecifications(decodeContext:)(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v26 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25[-v8];
  v10 = type metadata accessor for __RKEntityActionSpecification(0);
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v15(v12, a1, v13);
  v15(v9, a4, v13);
  v16 = *(v14 + 56);
  v16(v9, 0, 1, v13);
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v18 = started[14];
  v16(&v12[v18], 1, 1, v13);
  *&v12[started[5]] = 1;
  v12[started[6]] = v26;
  v12[started[10]] = 0;
  *&v12[started[8]] = 0;
  *&v12[started[7]] = 0;
  *&v12[started[11]] = 1065353216;
  v12[started[9]] = 0;
  v12[started[12]] = 0;
  v19 = &v12[started[13]];
  *v19 = 0x3FF0000000000000;
  v19[8] = 0;
  outlined assign with take of UUID?(v9, &v12[v18]);
  swift_storeEnumTagMultiPayload();
  v20 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    *a2 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *a2 = v20;
  }

  v20[2] = v23 + 1;
  return outlined init with take of __RKEntityHideActionArguments(v12, v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, type metadata accessor for __RKEntityActionSpecification);
}

uint64_t __RKEntityShowActionBuildInAnimationType.init(decodeContext:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  v6._countAndFlagsBits = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x79546E6F69746F6DLL, 0xEA00000000006570, 1, *a1);
  if (v2)
  {

    v21 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v21, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v20 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v20, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v19 = *(a1 + 40);
    result = outlined destroy of BodyTrackingComponent?(&v19, &_sSDyS2SGMd, &_sSDyS2SGMR);
    *a2 = 0;
  }

  else if (v6._object)
  {
    v8 = specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(v6);
    if (v8 == 10)
    {
      lazy protocol witness table accessor for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError();
      swift_allocError();
      swift_willThrow();

      v15 = *(a1 + 24);
      outlined destroy of BodyTrackingComponent?(&v15, &_sSDyS2SGMd, &_sSDyS2SGMR);
      v14 = *(a1 + 32);
      outlined destroy of BodyTrackingComponent?(&v14, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
      v13 = *(a1 + 40);
      return outlined destroy of BodyTrackingComponent?(&v13, &_sSDyS2SGMd, &_sSDyS2SGMR);
    }

    else
    {
      v9 = v8;

      v12 = *(a1 + 24);
      outlined destroy of BodyTrackingComponent?(&v12, &_sSDyS2SGMd, &_sSDyS2SGMR);
      v11 = *(a1 + 32);
      outlined destroy of BodyTrackingComponent?(&v11, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
      v10 = *(a1 + 40);
      result = outlined destroy of BodyTrackingComponent?(&v10, &_sSDyS2SGMd, &_sSDyS2SGMR);
      *a2 = byte_1C189A612[v9];
    }
  }

  else
  {

    v18 = *(a1 + 24);
    outlined destroy of BodyTrackingComponent?(&v18, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v17 = *(a1 + 32);
    outlined destroy of BodyTrackingComponent?(&v17, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v16 = *(a1 + 40);
    result = outlined destroy of BodyTrackingComponent?(&v16, &_sSDyS2SGMd, &_sSDyS2SGMR);
    *a2 = 0;
  }

  return result;
}

uint64_t specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(uint64_t a1)
{
  v2 = a1;
  if (*(a1 + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v3 = *(type metadata accessor for __RKEntityActionSpecification(0) - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C1887600;
    v5 = v2 + v4;
    *v5 = 0;
    *(v5 + 8) = a1;
    *(v5 + 16) = 0;
    *(v5 + 24) = 1;
    *(v5 + 32) = 0;
    swift_storeEnumTagMultiPayload();
  }

  return v2;
}

uint64_t specialized static __RKEntityActionSpecification.generateAudioActionSpecifications(decodeContext:)(void **a1)
{
  v170 = type metadata accessor for __RKEntityActionSpecification(0);
  v167 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v140 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v140 - v10;
  v12 = type metadata accessor for UUID();
  v169 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v140 - v16;
  v18 = *a1;
  v19 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1701869940, 0xE400000000000000, 1, *a1);
  v22 = v20;
  v163 = a1;
  v23 = v169;
  v164 = v17;
  v160 = v14;
  v165 = v12;
  v166 = v11;
  v161 = v8;
  v162 = v5;
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v24._countAndFlagsBits = v19;
  v24._object = v22;
  v25 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityAudioActionType.init(rawValue:), v24);

  if (v25 >= 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1852399975, 0xE400000000000000, 1, v18);
  v27 = v26;
  v28 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x646F4D6C61727561, 0xE900000000000065, 1, v18);
  if (!v29)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v30 = v29;
  v31._countAndFlagsBits = v28;
  v31._object = v30;
  v32 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKAudioSpatialModeSelectionUSD.init(rawValue:), v31);

  if (v32 >= 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v149 = 0;
  v34 = v163[1];
  v33 = v163[2];
  v35 = v163[3];
  v179 = v163[4];
  v180 = v35;
  v178 = v163[5];
  v36 = v18;
  v37 = v34;
  v38 = v36;
  v39 = v37;
  v146 = v33;

  outlined init with copy of [String : String](&v180, v171, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v179, v171, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v178, v171, &_sSDyS2SGMd, &_sSDyS2SGMR);
  v40 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v41 = [v36 property_];

  if (!v41)
  {
    v127 = v39;
    v128 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1C1897FD0;
    v130 = MEMORY[0x1E69E6158];
    *(v129 + 56) = MEMORY[0x1E69E6158];
    v131 = lazy protocol witness table accessor for type String and conformance String();
    *(v129 + 32) = 0xD000000000000012;
    *(v129 + 40) = 0x80000001C18DE9B0;
    *(v129 + 96) = v130;
    *(v129 + 104) = v131;
    *(v129 + 64) = v131;
    *(v129 + 72) = 0x6465746365666661;
    *(v129 + 80) = 0xEF737463656A624FLL;
    v132 = [v38 path];
    v133 = [v132 stringValue];

    if (v133)
    {
      v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v136 = v135;

      v137 = (v129 + 112);
      *(v129 + 136) = v130;
      *(v129 + 144) = v131;
      if (v136)
      {
        *v137 = v134;
LABEL_69:
        *(v129 + 120) = v136;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v138 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v128, &dword_1C1358000, v138, "%s: No property named %s for node at path: %s", v140, v141, v142);

        goto LABEL_72;
      }
    }

    else
    {
      v137 = (v129 + 112);
      *(v129 + 136) = v130;
      *(v129 + 144) = v131;
    }

    *v137 = 7104878;
    v136 = 0xE300000000000000;
    goto LABEL_69;
  }

  v142 = v25;
  v42 = v41;
  v43 = [v42 objectPathArray];
  v155 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = v44;
  if (v44 >> 62)
  {
    result = __CocoaSet.count.getter();
    v45 = v44;
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

  result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_71:

LABEL_72:
    v126 = MEMORY[0x1E69E7CC0];
LABEL_73:

    outlined destroy of BodyTrackingComponent?(&v180, &_sSDyS2SGMd, &_sSDyS2SGMR);
    outlined destroy of BodyTrackingComponent?(&v179, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    outlined destroy of BodyTrackingComponent?(&v178, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v139 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v126);

    return v139;
  }

LABEL_10:
  v153 = v38;
  if (result >= 1)
  {
    v46 = 0;
    HIDWORD(v141) = 0x10200u >> (8 * v32);
    v148 = v180;
    v144 = v178;
    v163 = (v45 & 0xC000000000000001);
    v151 = (v23 + 56);
    v147 = (v23 + 32);
    v150 = (v23 + 48);
    v140 = (v23 + 16);
    v145 = (v23 + 8);
    v154 = 0x80000001C18DE9B0;
    v143 = MEMORY[0x1E69E7CC0];
    v156 = xmmword_1C1897FC0;
    v159 = v45;
    v157 = result;
    v158 = v39;
    while (1)
    {
      v169 = v46;
      if (v163)
      {
        v52 = MEMORY[0x1C68F41F0](v46);
      }

      else
      {
        v52 = *(v45 + 8 * v46 + 32);
      }

      v53 = v52;
      v54 = [v39 objectAtPath_];
      if (!v54)
      {
        goto LABEL_13;
      }

      v55 = v54;
      objc_opt_self();
      v56 = swift_dynamicCastObjCClass();

      if (!v56)
      {
        goto LABEL_13;
      }

      v57 = [v53 stringValue];
      if (v57)
      {
        v58 = v57;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v176 = v59;
        v177 = v61;
        v152 = v61;
        v174 = 91;
        v175 = 0xE100000000000000;
        v172 = 0;
        v173 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v176 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v177 = v62;
        v174 = 93;
        v175 = 0xE100000000000000;
        v172 = 0;
        v173 = 0xE000000000000000;
        v63 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v65 = v64;

        v66 = v148;
        if (*(v148 + 16))
        {
          v67 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v65);
          v69 = v68;

          if (v69)
          {
            v70 = (*(v66 + 56) + 16 * v67);
            v71 = *v70;
            v72 = v70[1];

            specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v71, v72, v146, v66);
            v74 = v73;

            if (v74)
            {
              swift_beginAccess();
              v75 = v162;
              if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
              {
                v76 = v161;
                UUID.init(uuid:)();
                v77 = *v151;
                (*v151)(v76, 0, 1, v165);
                result = outlined destroy of BodyTrackingComponent?(v76, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v77 = *v151;
                v121 = v161;
                v122 = v165;
                (*v151)(v161, 1, 1, v165);
                outlined destroy of BodyTrackingComponent?(v121, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                UUID.init()();
                v77(v75, 0, 1, v122);
                result = Entity.__interactionIdentifier.setter(v75);
              }

              v123 = v160;
              if (!static __RKEntityUUIDComponent.registration)
              {
                goto LABEL_75;
              }

              result = REEntityGetCustomComponent();
              if (!result)
              {
                goto LABEL_75;
              }

              result = RECustomComponentGetObject();
              if (!result)
              {
                goto LABEL_75;
              }

              UUID.init(uuid:)();

              v78 = v165;
              v124 = v166;
              (*v147)(v166, v123, v165);
              v77(v124, 0, 1, v78);
              goto LABEL_31;
            }
          }
        }

        else
        {
        }
      }

      v78 = v165;
      (*v151)(v166, 1, 1, v165);
LABEL_31:

      if ((*v150)(v166, 1, v78) != 1)
      {
        (*v147)(v164, v166, v78);
        v79 = [v153 path];
        v80 = [v79 stringValue];

        if (v80)
        {
          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;

          if (v144[2])
          {
            v84 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v83);
            v86 = v85;

            if (v86)
            {
              v87 = (v144[7] + 16 * v84);
              v89 = *v87;
              v88 = v87[1];
              v90 = v168;
              (*v140)(v168, v164, v78);
              v91 = type metadata accessor for __RKEntityAudioActionArguments(0);
              v92 = v91[6];
              v90[v92] = 3;
              v93 = v91[8];
              v94 = &v90[v91[7]];
              v95 = v91[9];
              v90[v95] = 3;
              v96 = &v90[v91[5]];
              *v96 = v89;
              *(v96 + 1) = v88;
              v90[v92] = v142;
              v90[v95] = BYTE4(v141);
              *v94 = v27;
              v94[8] = 0;
              v90[v93] = 0;
              v90[v91[10]] = 1;
              swift_storeEnumTagMultiPayload();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v143[2] + 1, 1, v143);
              }

              v98 = v167;
              v97 = v168;
              v100 = v143[2];
              v99 = v143[3];
              if (v100 >= v99 >> 1)
              {
                v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1, v143);
                v98 = v167;
                v143 = v125;
                v97 = v168;
              }

              v101 = v143;
              v143[2] = v100 + 1;
              outlined init with take of __RKEntityHideActionArguments(v97, v101 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v100, type metadata accessor for __RKEntityActionSpecification);
              goto LABEL_53;
            }
          }

          else
          {
          }
        }

        v102 = static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v103 = swift_allocObject();
        *(v103 + 16) = v156;
        v104 = [v153 path];
        v105 = [v104 stringValue];

        if (v105)
        {
          v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v107;
        }

        else
        {
          v106 = 0;
          v108 = 0;
        }

        *(v103 + 56) = MEMORY[0x1E69E6158];
        v109 = lazy protocol witness table accessor for type String and conformance String();
        *(v103 + 64) = v109;
        v110 = 0x296C6C756E28;
        if (v108)
        {
          v110 = v106;
        }

        v111 = 0xE600000000000000;
        if (v108)
        {
          v111 = v108;
        }

        *(v103 + 32) = v110;
        *(v103 + 40) = v111;
        v112 = v149;
        v113 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6F69647561, 0xE500000000000000, 1, v153);
        if (v112)
        {

          v149 = 0;
          goto LABEL_50;
        }

        v149 = 0;
        if (v113)
        {
          v117 = v113;
          v118 = [v113 path];

          v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v115 = v120;

          v114 = (v103 + 72);
          *(v103 + 96) = MEMORY[0x1E69E6158];
          *(v103 + 104) = v109;
          if (v115)
          {
            *v114 = v119;
            v78 = v165;
            goto LABEL_52;
          }

          v78 = v165;
        }

        else
        {
LABEL_50:
          v114 = (v103 + 72);
          *(v103 + 96) = MEMORY[0x1E69E6158];
          *(v103 + 104) = v109;
        }

        *v114 = 0x296C6C756E28;
        v115 = 0xE600000000000000;
LABEL_52:
        *(v103 + 80) = v115;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v116 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v102, &dword_1C1358000, v116, "USD action loading: No audio asset path found for node: %s , audio: %s", v140, v141);

        v53 = v116;
LABEL_53:

        (*v145)(v164, v78);
        goto LABEL_14;
      }

      outlined destroy of BodyTrackingComponent?(v166, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_13:
      v47 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = v156;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = lazy protocol witness table accessor for type String and conformance String();
      v49 = v154;
      *(v48 + 32) = 0xD000000000000012;
      *(v48 + 40) = v49;
      *(v48 + 96) = v155;
      *(v48 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v48 + 72) = v53;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v50 = v53;
      v51 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v47, &dword_1C1358000, v51, "%s: No target entity identifier found for affected object path: %s", v140, v141);

LABEL_14:
      v45 = v159;
      v39 = v158;
      v46 = v169 + 1;
      if (v157 == v169 + 1)
      {

        v126 = v143;
        goto LABEL_73;
      }
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t specialized static __RKEntityActionSpecification.generateChangeSceneActionSpecifications(decodeContext:)(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v15 = *a1;
  v16 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x656E656373, 0xE500000000000000, 1, *a1);
  if (v16)
  {
    v58 = v9;
    v17 = [a1[1] objectAtPath_];
    v18 = &property descriptor for UnlitMaterial.readsDepth;
    if (!v17 || (v19 = v17, objc_opt_self(), v20 = swift_dynamicCastObjCClass(), v19, v18 = &property descriptor for UnlitMaterial.readsDepth, !v20))
    {
LABEL_9:
      v28 = [v16 v18[419]];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {
        v30 = 0x6E776F6E6B6E753CLL;
        v32 = 0xE90000000000003ELL;
      }

      v33 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1C1887600;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v34 + 32) = v30;
      *(v34 + 40) = v32;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v35 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v33, &dword_1C1358000, v35, "USD action loading: No scene identifier found for affected object path: %s", v56);

      return MEMORY[0x1E69E7CC0];
    }

    v57 = v16;
    v21 = [v16 stringValue];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    USDDecodableContext.identifierForScene(uskNodePath:)(v23, v25, v7);

    v26 = v58;
    v27 = *(v58 + 48);
    if (v27(v7, 1, v8) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v16 = v57;
      v18 = &property descriptor for UnlitMaterial.readsDepth;
      goto LABEL_9;
    }

    v37 = v7;
    v38 = *(v26 + 32);
    v38(v14, v37, v8);
    Scene.__sceneIdentifier.getter(v4);
    if (v27(v4, 1, v8) != 1)
    {
      v38(v11, v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v44 = *(type metadata accessor for __RKEntityActionSpecification(0) - 8);
      v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1C1887600;
      v47 = v46 + v45;
      v48 = v58;
      v49 = *(v58 + 16);
      v49(v47, v11, v8);
      v50 = type metadata accessor for __RKChangeSceneActionArguments(0);
      v49(v47 + *(v50 + 20), v14, v8);
      swift_storeEnumTagMultiPayload();

      v51 = *(v48 + 8);
      v51(v11, v8);
      v51(v14, v8);
      return v46;
    }

    outlined destroy of BodyTrackingComponent?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v39 = [v15 path];
    v40 = [v39 stringValue];

    if (v40)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
    }

    else
    {
      v41 = 0x6E776F6E6B6E753CLL;
      v43 = 0xE90000000000003ELL;
    }

    v52 = v57;
    v53 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1C1887600;
    *(v54 + 56) = MEMORY[0x1E69E6158];
    *(v54 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v54 + 32) = v41;
    *(v54 + 40) = v43;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v55 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v53, &dword_1C1358000, v55, "USD action loading: No root entity found in scene containing path: %s", v56);

    (*(v58 + 8))(v14, v8);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized static __RKEntityActionSpecification.generateEmphasizeActionSpecifications(decodeContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v141 = a4;
  v142 = a3;
  v143 = a2;
  v140 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __RKEntityActionSpecification(0);
  v137 = *(v6 - 8);
  v138 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v113 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v113 - v16;
  v18 = type metadata accessor for UUID();
  v136 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v113 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v113 - v25;
  v27 = a1;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, a1);
  v133 = v26;
  v132 = v23;
  v130 = v20;
  v135 = v17;
  v131 = v14;
  v129 = v11;
  v134 = v8;
  v28 = v142;
  v29 = v143;
  v31 = v30;
  v32 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x79546E6F69746F6DLL, 0xEA00000000006570, 1, a1);
  if (!v33)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __RKEntityEmphasisAnimationType.init(rawValue:)(*&v32);
  v35 = v144[0];
  if (v144[0] == 8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v36 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x656C797473, 0xE500000000000000, 1, a1);
  if (!v37)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v38 = v37;
  v39._countAndFlagsBits = v36;
  v39._object = v38;
  v40 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionAnimationStyle.init(rawValue:), v39);

  v118 = v40;
  if (v40 >= 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v41 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v42 = [v27 property_];

  if (!v42)
  {
    v101 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1C1897FD0;
    v103 = MEMORY[0x1E69E6158];
    *(v102 + 56) = MEMORY[0x1E69E6158];
    v104 = lazy protocol witness table accessor for type String and conformance String();
    *(v102 + 32) = 0xD000000000000012;
    *(v102 + 40) = 0x80000001C18DE9B0;
    *(v102 + 96) = v103;
    *(v102 + 104) = v104;
    *(v102 + 64) = v104;
    *(v102 + 72) = 0x6465746365666661;
    *(v102 + 80) = 0xEF737463656A624FLL;
    v105 = [v27 path];
    v106 = [v105 stringValue];

    if (v106)
    {
      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v109 = v108;

      v110 = (v102 + 112);
      *(v102 + 136) = v103;
      *(v102 + 144) = v104;
      if (v109)
      {
        *v110 = v107;
LABEL_56:
        *(v102 + 120) = v109;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v111 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v101, &dword_1C1358000, v111, "%s: No property named %s for node at path: %s", v113, v114, v115);

LABEL_57:
        v100 = MEMORY[0x1E69E7CC0];
LABEL_58:
        v112 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v100);

        return v112;
      }
    }

    else
    {
      v110 = (v102 + 112);
      *(v102 + 136) = v103;
      *(v102 + 144) = v104;
    }

    *v110 = 7104878;
    v109 = 0xE300000000000000;
    goto LABEL_56;
  }

  v116 = v35;
  v43 = v42;
  v44 = [v43 objectPathArray];
  v124 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = v45;
  if (v45 >> 62)
  {
    result = __CocoaSet.count.getter();
    v46 = v45;
  }

  else
  {
    result = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = v29;
  v48 = v18;
  if (!result)
  {

    goto LABEL_57;
  }

  if (result >= 1)
  {
    v127 = v46 & 0xC000000000000001;
    v119 = (v136 + 56);
    v117 = (v136 + 32);
    v49 = (v136 + 48);
    v115 = (v136 + 16);
    if (v31 < 0.0)
    {
      v31 = 1.0;
    }

    v114 = (v136 + 8);
    v50 = 0x80000001C18DE9B0;
    v121 = MEMORY[0x1E69E7CC0];
    v123 = xmmword_1C1897FC0;
    v126 = v46;
    v125 = result;
    v51 = 0;
    v120 = 0x80000001C18DE9B0;
    while (1)
    {
      v136 = v51;
      if (v127)
      {
        v55 = MEMORY[0x1C68F41F0]();
      }

      else
      {
        v55 = *(v46 + 8 * v51 + 32);
      }

      v56 = v55;
      v57 = [v47 objectAtPath_];
      if (!v57)
      {
        goto LABEL_16;
      }

      v58 = v57;
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();

      if (!v59)
      {
        goto LABEL_16;
      }

      v60 = [v56 stringValue];
      v122 = v56;
      if (!v60)
      {
        goto LABEL_36;
      }

      v61 = v60;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v149 = v62;
      v150 = v64;
      v128 = v64;
      v147 = 91;
      v148 = 0xE100000000000000;
      v145 = 0;
      v146 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v149 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v150 = v65;
      v147 = 93;
      v148 = 0xE100000000000000;
      v145 = 0;
      v146 = 0xE000000000000000;
      v66 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v68 = v67;

      v69 = v141;
      if (*(v141 + 16))
      {
        v70 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v68);
        v72 = v71;

        if (v72)
        {
          v73 = (*(v69 + 56) + 16 * v70);
          v74 = *v73;
          v75 = v73[1];

          specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v74, v75, v28, v69);
          v77 = v76;

          v50 = v120;
          if (v77)
          {
            swift_beginAccess();
            v48 = v18;
            if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
            {
              v78 = v131;
              UUID.init(uuid:)();
              v79 = *v119;
              (*v119)(v78, 0, 1, v18);
              result = outlined destroy of BodyTrackingComponent?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            }

            else
            {
              v79 = *v119;
              v97 = v131;
              (*v119)(v131, 1, 1, v18);
              outlined destroy of BodyTrackingComponent?(v97, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              v98 = v129;
              UUID.init()();
              v79(v98, 0, 1, v18);
              result = Entity.__interactionIdentifier.setter(v98);
            }

            v80 = v135;
            if (!static __RKEntityUUIDComponent.registration)
            {
              goto LABEL_61;
            }

            result = REEntityGetCustomComponent();
            if (!result)
            {
              goto LABEL_61;
            }

            result = RECustomComponentGetObject();
            if (!result)
            {
              goto LABEL_61;
            }

            v99 = v130;
            UUID.init(uuid:)();

            (*v117)(v80, v99, v18);
            v79(v80, 0, 1, v18);
            v47 = v143;
            v56 = v122;
            goto LABEL_37;
          }

          v47 = v29;
          v48 = v18;
          goto LABEL_35;
        }

        v47 = v29;
        v48 = v18;
      }

      else
      {

        v47 = v29;
        v48 = v18;
      }

      v50 = v120;
LABEL_35:
      v56 = v122;
LABEL_36:
      v80 = v135;
      (*v119)(v135, 1, 1, v48);
LABEL_37:

      if ((*v49)(v80, 1, v48) != 1)
      {
        v81 = *v117;
        v82 = v133;
        (*v117)(v133, v80, v48);
        v83 = v132;
        (*v115)(v132, v82, v48);
        v84 = v83;
        v85 = v140;
        v86 = *(v140 + 28);
        v87 = v48;
        v88 = v139;
        v139[v86] = 3;
        v89 = v85[8];
        *(v88 + v89) = 8;
        v81(v88, v84, v87);
        v90 = v88 + v85[5];
        v91 = v88 + v85[6];
        *v90 = v31;
        *(v90 + 4) = 0;
        *v91 = 1065353216;
        *(v91 + 4) = 0;
        *(v88 + v86) = v118;
        *(v88 + v89) = v116;
        outlined init with take of __RKEntityHideActionArguments(v88, v134, type metadata accessor for __RKEntityEmphasisActionArguments);
        swift_storeEnumTagMultiPayload();
        v92 = v121;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92[2] + 1, 1, v92);
        }

        v93 = v126;
        v121 = v92;
        v95 = v92[2];
        v94 = v92[3];
        v48 = v18;
        v47 = v143;
        if (v95 >= v94 >> 1)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v121);
        }

        v50 = v120;
        v96 = v121;
        v121[2] = v95 + 1;
        outlined init with take of __RKEntityHideActionArguments(v134, v96 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v95, type metadata accessor for __RKEntityActionSpecification);

        (*v114)(v133, v18);
        v46 = v93;
        goto LABEL_17;
      }

      outlined destroy of BodyTrackingComponent?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_16:
      LODWORD(v128) = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v52 = swift_allocObject();
      *(v52 + 16) = v123;
      *(v52 + 56) = MEMORY[0x1E69E6158];
      *(v52 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v52 + 32) = 0xD000000000000012;
      *(v52 + 40) = v50;
      *(v52 + 96) = v124;
      *(v52 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v52 + 72) = v56;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v53 = v56;
      v54 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v128, &dword_1C1358000, v54, "%s: No target entity identifier found for affected object path: %s", v113, v114);

      v46 = v126;
LABEL_17:
      v51 = v136 + 1;
      if (v125 == v136 + 1)
      {

        v100 = v121;
        goto LABEL_58;
      }
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

float specialized static __RKEntityActionSpecification.calculateMaximumMultiplier(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  v2 = *&a1;
  v3 = 1.0;
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 1.0;
  }

  if ((a2 & 0x100000000) == 0)
  {
    v3 = *&a2;
  }

  if (v2 <= v3)
  {
    if ((LODWORD(v3) & 0x7FFFFF) == 0)
    {
      v2 = v3;
    }

    if ((~LODWORD(v3) & 0x7F800000) != 0)
    {
      v2 = v3;
    }
  }

  return roundf(3.4028e38 / v2);
}

uint64_t specialized implicit closure #4 in variable initialization expression of static __RKEntityActionSpecification.actionTypeToActionSpecificationsGenerator(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x797469636F6C6576, 0xE800000000000000, 1, a1);
  *&v8.f64[0] = vcvt_f32_f64(v8);
  *&v9 = v9;
  *&v8.f64[1] = LODWORD(v9);
  v12 = MEMORY[0x1E69E7CC0];
  specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 1, a1, a2, a3, a4, &v12, v8);
  v10 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v12);

  return v10;
}

void specialized static __RKEntityActionSpecification.generateLookAtCameraActionSpecifications(decodeContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v127 = a4;
  v125 = a3;
  v129 = a2;
  v5 = type metadata accessor for __RKEntityActionSpecification(0);
  v126 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v101 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v101 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v101 - v22;
  v128 = a1;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, a1);
  v121 = v18;
  v122 = v23;
  v115 = v20;
  v118 = v7;
  v123 = v16;
  v116 = v13;
  v117 = v10;
  v124 = v5;
  v25 = v24;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x746E6F7266, 0xE500000000000000, 1, v128);
  v120 = v26;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x726F746365567075, 0xE800000000000000, 1, v128);
  v119 = v27;
  v28 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v29 = [v128 property_];

  if (!v29)
  {
    v90 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1C1897FD0;
    v92 = MEMORY[0x1E69E6158];
    *(v91 + 56) = MEMORY[0x1E69E6158];
    v93 = lazy protocol witness table accessor for type String and conformance String();
    *(v91 + 32) = 0xD000000000000012;
    *(v91 + 40) = 0x80000001C18DE9B0;
    *(v91 + 96) = v92;
    *(v91 + 104) = v93;
    *(v91 + 64) = v93;
    *(v91 + 72) = 0x6465746365666661;
    *(v91 + 80) = 0xEF737463656A624FLL;
    v94 = [v128 path];
    v95 = [v94 stringValue];

    if (v95)
    {
      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;

      v99 = (v91 + 112);
      *(v91 + 136) = v92;
      *(v91 + 144) = v93;
      if (v98)
      {
        *v99 = v96;
LABEL_44:
        *(v91 + 120) = v98;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v100 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v90, &dword_1C1358000, v100, "%s: No property named %s for node at path: %s", v101, v102, v103);

LABEL_45:
        v89 = MEMORY[0x1E69E7CC0];
LABEL_46:
        specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v89);

        return;
      }
    }

    else
    {
      v99 = (v91 + 112);
      *(v91 + 136) = v92;
      *(v91 + 144) = v93;
    }

    *v99 = 7104878;
    v98 = 0xE300000000000000;
    goto LABEL_44;
  }

  v30 = v29;
  v31 = [v30 objectPathArray];
  v32 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v33 >> 62)
  {
    v34 = __CocoaSet.count.getter();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v17;
  v36 = v129;
  v37 = v118;
  if (!v34)
  {

    goto LABEL_45;
  }

  if (v34 >= 1)
  {
    v38 = 0;
    v128 = (v33 & 0xC000000000000001);
    v113 = (v121 + 56);
    v108 = (v121 + 32);
    v109 = (v121 + 48);
    v107 = (v121 + 16);
    v105 = *(&v120 + 1);
    v106 = v120;
    v103 = *(&v119 + 1);
    v104 = v119;
    v102 = (v121 + 8);
    v121 = 0x80000001C18DE9B0;
    *&v119 = MEMORY[0x1E69E7CC0];
    v120 = xmmword_1C1897FC0;
    v111 = v34;
    v112 = v33;
    v110 = v32;
    while (1)
    {
      if (v128)
      {
        v43 = MEMORY[0x1C68F41F0](v38, v33);
      }

      else
      {
        v43 = *(v33 + 8 * v38 + 32);
      }

      v44 = v43;
      v45 = [v36 objectAtPath_];
      if (!v45)
      {
        goto LABEL_8;
      }

      v46 = v45;
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();

      if (!v47)
      {
        goto LABEL_8;
      }

      v48 = [v44 stringValue];
      if (v48)
      {
        v49 = v48;
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        v134 = v50;
        v135 = v52;
        v114 = v52;
        v132 = 91;
        v133 = 0xE100000000000000;
        v130 = 0;
        v131 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v134 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v135 = v53;
        v132 = 93;
        v133 = 0xE100000000000000;
        v130 = 0;
        v131 = 0xE000000000000000;
        v54 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v56 = v55;

        v57 = v127;
        v58 = v119;
        if (*(v127 + 16))
        {
          v59 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
          v61 = v60;

          if (v61)
          {
            v62 = (*(v57 + 56) + 16 * v59);
            v63 = *v62;
            v64 = v62[1];

            specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v63, v64, v125, v57);
            v66 = v65;

            if (v66)
            {
              swift_beginAccess();
              v67 = v117;
              if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
              {
                v68 = v116;
                UUID.init(uuid:)();
                v101 = *v113;
                (v101)(v68, 0, 1, v35);
                outlined destroy of BodyTrackingComponent?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v85 = *v113;
                v86 = v116;
                (*v113)(v116, 1, 1, v35);
                outlined destroy of BodyTrackingComponent?(v86, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                UUID.init()();
                v101 = v85;
                (v85)(v67, 0, 1, v35);
                v58 = v119;
                Entity.__interactionIdentifier.setter(v67);
              }

              v87 = v115;
              if (!static __RKEntityUUIDComponent.registration || !REEntityGetCustomComponent() || !RECustomComponentGetObject())
              {
                goto LABEL_49;
              }

              UUID.init(uuid:)();

              v69 = v123;
              (*v108)(v123, v87, v35);
              (v101)(v69, 0, 1, v35);
              goto LABEL_26;
            }
          }
        }

        else
        {
        }
      }

      else
      {
        v58 = v119;
      }

      v69 = v123;
      (*v113)(v123, 1, 1, v35);
LABEL_26:

      if ((*v109)(v69, 1, v35) != 1)
      {
        v70 = v122;
        (*v108)(v122, v69, v35);
        (*v107)(v37, v70, v35);
        v71 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
        v72 = v37 + v71[5];
        v73 = v37 + v71[6];
        v74 = v37 + v71[7];
        v75 = v37 + v71[8];
        v76 = v71[10];
        v77 = v37 + v71[9];
        *v72 = v25;
        *(v72 + 4) = 0;
        *v73 = 0;
        *(v73 + 4) = 0;
        v78 = v105;
        *v74 = v106;
        *(v74 + 8) = v78;
        *(v74 + 16) = 0;
        *v75 = 0;
        *(v75 + 4) = 0;
        v79 = v103;
        *v77 = v104;
        *(v77 + 8) = v79;
        *(v77 + 16) = 0;
        *(v37 + v76) = 0;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v81 = v58[2];
        v80 = v58[3];
        v82 = v126;
        v83 = v122;
        if (v81 >= v80 >> 1)
        {
          v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v58);
          v82 = v126;
          v58 = v88;
        }

        v58[2] = v81 + 1;
        v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        *&v119 = v58;
        outlined init with take of __RKEntityHideActionArguments(v37, v58 + v84 + *(v82 + 72) * v81, type metadata accessor for __RKEntityActionSpecification);

        (*v102)(v83, v35);
        v32 = v110;
        v33 = v112;
        v36 = v129;
        v34 = v111;
        goto LABEL_9;
      }

      outlined destroy of BodyTrackingComponent?(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v32 = v110;
      v33 = v112;
      v34 = v111;
LABEL_8:
      v39 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v40 = swift_allocObject();
      *(v40 + 16) = v120;
      *(v40 + 56) = MEMORY[0x1E69E6158];
      *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v40 + 32) = 0xD000000000000012;
      *(v40 + 40) = v121;
      *(v40 + 96) = v32;
      *(v40 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v40 + 72) = v44;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v41 = v44;
      v42 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v39, &dword_1C1358000, v42, "%s: No target entity identifier found for affected object path: %s", v101, v102);

      v36 = v129;

LABEL_9:
      if (v34 == ++v38)
      {

        v89 = v119;
        goto LABEL_46;
      }
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t specialized static __RKEntityActionSpecification.generateNotificationActionSpecifications(decodeContext:)(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v60 = a4;
  v61 = a2;
  v62 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for __RKEntityCustomActionArguments(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x696669746E656469, 0xEA00000000007265, 1, a1);
  v59 = v11;
  v24 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v25 = v17;
    v56 = v6;
    v57 = v22;
    v54 = v9;
    v58 = v21;
    v26 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
    v27 = a1;
    v28 = [a1 property_];

    v55 = v8;
    v29 = v5;
    v30 = v20;
    v31 = v14;
    v32 = v25;
    v34 = v61;
    v33 = v62;
    if (v28)
    {
      v35 = [v28 objectPathArray];

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v36 >> 62 ? __CocoaSet.count.getter() : *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v37 >= 1)
      {
        v63 = v24;
        v38 = v57;

        specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 1, v27, v34, v33, v60, &v63, v58, v38);
        swift_bridgeObjectRelease_n();
        v39 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v63);

        return v39;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v40 = type metadata accessor for __RKEntityActionSpecification(0);
    v62 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C1887600;
    v41 = v56;
    (*(v56 + 56))(v30, 1, 1, v29);
    v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    outlined init with copy of [String : String](v30, v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v42 = *(v41 + 48);
    if (v42(v32, 1, v29) == 1)
    {
      v60 = v40;
      UUID.init(uuidString:)();
      result = v42(v31, 1, v29);
      v43 = v55;
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v44 = *(v41 + 32);
      v44(v55, v31, v29);
      if (v42(v32, 1, v29) != 1)
      {
        outlined destroy of BodyTrackingComponent?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      v45 = v54;
      v46 = v59;
      v44(v59, v43, v29);
    }

    else
    {
      v47 = *(v41 + 32);
      v48 = v55;
      v47(v55, v32, v29);
      v45 = v54;
      v46 = v59;
      v47(v59, v48, v29);
    }

    v49 = (v46 + *(v45 + 20));
    v50 = v57;
    *v49 = v58;
    v49[1] = v50;
    outlined destroy of BodyTrackingComponent?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v51 = *(v45 + 24);
    v52 = v62;
    *(v46 + v51) = v61;
    outlined init with take of __RKEntityHideActionArguments(v46, v24 + v52, type metadata accessor for __RKEntityCustomActionArguments);
    swift_storeEnumTagMultiPayload();
  }

  return v24;
}

uint64_t specialized static __RKEntityActionSpecification.generateOrbitActionSpecifications(decodeContext:)(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7265746E6563, 0xE600000000000000, 1, *a1);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = MEMORY[0x1E69E7CC0];
    specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, v9);
    v14 = v13;
    specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6974756C6F766572, 0xEB00000000736E6FLL, 1, v9);
    v16 = v15;
    specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1936291937, 0xE400000000000000, 1, v9);
    v34 = v17;
    v33 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x506F546E67696C61, 0xEB00000000687461, 1, v9);
    v18 = [a1[1] objectAtPath_];
    if (!v18)
    {
      goto LABEL_11;
    }

    v19 = v18;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();

    if (!v20)
    {
      goto LABEL_11;
    }

    v21 = [v10 stringValue];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    USDDecodableContext.identifierForPath(uskNodePath:)(v23, v25, v4);

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_11:
      v26 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1C1887600;
      *(v27 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      *(v27 + 64) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v27 + 32) = v10;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v28 = v10;
      v29 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v26, &dword_1C1358000, v29, "USD action loading: No center entity identifier found for affected object path: %s", v32);

      return MEMORY[0x1E69E7CC0];
    }

    v30 = (*(v6 + 32))(v8, v4, v5);
    v35 = v12;
    MEMORY[0x1EEE9AC00](v30);
    *(&v32 - 8) = &v35;
    *(&v32 - 7) = v8;
    *(&v32 - 12) = v14;
    *(&v32 - 11) = v16;
    *(&v32 - 2) = v34;
    *(&v32 - 16) = v33 & 1;
    USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 1, partial apply for closure #1 in static __RKEntityActionSpecification.generateOrbitActionSpecifications(decodeContext:), (&v32 - 10));
    v31 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v35);

    (*(v6 + 8))(v8, v5);
    return v31;
  }

  return result;
}

void specialized static __RKEntityActionSpecification.generateSpinActionSpecifications(decodeContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v133 = a4;
  v128 = a3;
  v135 = a2;
  v131 = type metadata accessor for __RKEntitySpinActionArguments(0);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for __RKEntityActionSpecification(0);
  v132 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v106 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v106 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v106 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v106 - v26;
  v134 = a1;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, a1);
  v124 = v27;
  v121 = v24;
  v119 = v21;
  v127 = v18;
  v126 = v17;
  v120 = v14;
  v118 = v11;
  v125 = v8;
  v29 = v28;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6974756C6F766572, 0xEB00000000736E6FLL, 1, v134);
  v31 = v30;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1936291937, 0xE400000000000000, 1, v134);
  v123 = v32;
  v33 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v34 = [v134 property_];

  if (!v34)
  {
    v95 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1C1897FD0;
    v97 = MEMORY[0x1E69E6158];
    *(v96 + 56) = MEMORY[0x1E69E6158];
    v98 = lazy protocol witness table accessor for type String and conformance String();
    *(v96 + 32) = 0xD000000000000012;
    *(v96 + 40) = 0x80000001C18DE9B0;
    *(v96 + 96) = v97;
    *(v96 + 104) = v98;
    *(v96 + 64) = v98;
    *(v96 + 72) = 0x6465746365666661;
    *(v96 + 80) = 0xEF737463656A624FLL;
    v99 = [v134 path];
    v100 = [v99 stringValue];

    if (v100)
    {
      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;

      v104 = (v96 + 112);
      *(v96 + 136) = v97;
      *(v96 + 144) = v98;
      if (v103)
      {
        *v104 = v101;
LABEL_48:
        *(v96 + 120) = v103;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v105 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v95, &dword_1C1358000, v105, "%s: No property named %s for node at path: %s", v106, v107, v108);

LABEL_49:
        v42 = MEMORY[0x1E69E7CC0];
LABEL_50:
        specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v42);

        return;
      }
    }

    else
    {
      v104 = (v96 + 112);
      *(v96 + 136) = v97;
      *(v96 + 144) = v98;
    }

    *v104 = 7104878;
    v103 = 0xE300000000000000;
    goto LABEL_48;
  }

  v35 = v34;
  v36 = [v35 objectPathArray];
  v37 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v38 >> 62)
  {
    v39 = __CocoaSet.count.getter();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v135;
  if (!v39)
  {

    goto LABEL_49;
  }

  if (v39 >= 1)
  {
    v41 = 0;
    v134 = (v38 & 0xC000000000000001);
    v116 = (v19 + 56);
    v112 = (v19 + 32);
    v115 = (v19 + 48);
    v111 = (v19 + 16);
    if (v29 < 0.0)
    {
      v29 = 1.0;
    }

    v109 = *(&v123 + 1);
    v110 = v123;
    v108 = (v19 + 8);
    if (v31 < 0.0)
    {
      v31 = 1.0;
    }

    *&v123 = 0x80000001C18DE9B0;
    v42 = MEMORY[0x1E69E7CC0];
    v122 = xmmword_1C1897FC0;
    v114 = v39;
    v113 = v38;
    while (1)
    {
      if (v134)
      {
        v48 = MEMORY[0x1C68F41F0](v41, v38);
      }

      else
      {
        v48 = *(v38 + 8 * v41 + 32);
      }

      v49 = v48;
      v50 = [v40 objectAtPath_];
      if (!v50)
      {
        goto LABEL_12;
      }

      v51 = v50;
      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();

      if (!v52)
      {
        goto LABEL_12;
      }

      v53 = v37;
      v54 = [v49 stringValue];
      if (v54)
      {
        v55 = v54;
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v140 = v56;
        v141 = v58;
        v117 = v58;
        v138 = 91;
        v139 = 0xE100000000000000;
        v136 = 0;
        v137 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v140 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v141 = v59;
        v138 = 93;
        v139 = 0xE100000000000000;
        v136 = 0;
        v137 = 0xE000000000000000;
        v60 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v62 = v61;

        v63 = v133;
        if (*(v133 + 16))
        {
          v64 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v62);
          v66 = v65;

          if (v66)
          {
            v67 = (*(v63 + 56) + 16 * v64);
            v69 = *v67;
            v68 = v67[1];

            specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v69, v68, v128, v63);
            v71 = v70;

            if (v71)
            {
              v107 = v42;
              swift_beginAccess();
              if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
              {
                v72 = v120;
                UUID.init(uuid:)();
                v73 = *v116;
                v74 = v127;
                (*v116)(v72, 0, 1, v127);
                outlined destroy of BodyTrackingComponent?(v72, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v73 = *v116;
                v91 = v120;
                v74 = v127;
                (*v116)(v120, 1, 1, v127);
                outlined destroy of BodyTrackingComponent?(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v92 = v118;
                UUID.init()();
                v73(v92, 0, 1, v74);
                Entity.__interactionIdentifier.setter(v92);
              }

              v75 = v126;
              if (!static __RKEntityUUIDComponent.registration || !REEntityGetCustomComponent() || !RECustomComponentGetObject())
              {
                goto LABEL_53;
              }

              v93 = v119;
              UUID.init(uuid:)();

              (*v112)(v75, v93, v74);
              v73(v75, 0, 1, v74);
              v42 = v107;
              goto LABEL_30;
            }
          }
        }

        else
        {
        }
      }

      v75 = v126;
      v74 = v127;
      (*v116)(v126, 1, 1, v127);
LABEL_30:

      if ((*v115)(v75, 1, v74) != 1)
      {
        v76 = *v112;
        v77 = v124;
        (*v112)(v124, v75, v74);
        v78 = v121;
        (*v111)(v121, v77, v74);
        v79 = v131;
        v80 = *(v131 + 28);
        v81 = v74;
        v82 = v130;
        v130[v80] = 2;
        v76(v82, v78, v81);
        v83 = v82 + v79[5];
        *v83 = v29;
        *(v83 + 4) = 0;
        v84 = v82 + v79[6];
        v85 = v82 + v79[8];
        *v84 = v31;
        *(v84 + 4) = 0;
        *(v82 + v80) = 0;
        v86 = v109;
        *v85 = v110;
        *(v85 + 8) = v86;
        *(v85 + 16) = 0;
        outlined init with take of __RKEntityHideActionArguments(v82, v125, type metadata accessor for __RKEntitySpinActionArguments);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
        }

        v88 = *(v42 + 2);
        v87 = *(v42 + 3);
        v40 = v135;
        v89 = v132;
        v90 = v124;
        if (v88 >= v87 >> 1)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v42);
          v89 = v132;
          v42 = v94;
        }

        *(v42 + 2) = v88 + 1;
        outlined init with take of __RKEntityHideActionArguments(v125, &v42[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v88], type metadata accessor for __RKEntityActionSpecification);

        (*v108)(v90, v127);
        v37 = v53;
        v38 = v113;
        v39 = v114;
        goto LABEL_13;
      }

      outlined destroy of BodyTrackingComponent?(v75, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v37 = v53;
      v38 = v113;
      v39 = v114;
LABEL_12:
      v43 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v44 = swift_allocObject();
      *(v44 + 16) = v122;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
      v45 = v123;
      *(v44 + 32) = 0xD000000000000012;
      *(v44 + 40) = v45;
      *(v44 + 96) = v37;
      *(v44 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v44 + 72) = v49;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v46 = v49;
      v47 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v43, &dword_1C1358000, v47, "%s: No target entity identifier found for affected object path: %s", v106, v107);

      v40 = v135;
LABEL_13:
      if (v39 == ++v41)
      {

        goto LABEL_50;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t specialized static __RKEntityActionSpecification.generateStartAnimationActionSpecifications(decodeContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v143 = a3;
  v144 = a4;
  v147 = a2;
  v5 = type metadata accessor for __RKEntityActionSpecification(0);
  v145 = *(v5 - 8);
  v146 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v117 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v117 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v117 - v22;
  v24 = a1;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7472617473, 0xE500000000000000, 1, a1);
  v142 = v23;
  v139 = v20;
  v141 = v17;
  v140 = v16;
  v138 = v10;
  v25 = v145;
  v26 = v147;
  v28 = v27;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, a1);
  v30 = v29;
  v31 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6465737265766572, 0xE800000000000000, 1, a1);
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6F6974616D696E61, 0xEE0064656570536ELL, 1, a1);
  v33 = v32;
  LODWORD(v137) = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7365737265766572, 0xE800000000000000, 1, a1);
  v34 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0xD000000000000018, 0x80000001C18DEA50, 1, a1);
  v126 = v7;
  v37 = v35;
  if (v35)
  {
    v38._countAndFlagsBits = v34;
    v38._object = v37;
    v39 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionMultiplePerformBehaviorUSD.init(rawValue:), v38);

    if (v39 >= 3)
    {
      v36 = 1;
    }

    else
    {
      v36 = 0x20001u >> (8 * v39);
    }
  }

  else
  {
    v36 = 1;
  }

  v124 = v36;
  v40 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v41 = [v24 property_];

  v42 = v142;
  if (!v41)
  {
    v105 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_1C1897FD0;
    v107 = MEMORY[0x1E69E6158];
    *(v106 + 56) = MEMORY[0x1E69E6158];
    v108 = lazy protocol witness table accessor for type String and conformance String();
    *(v106 + 32) = 0xD000000000000012;
    *(v106 + 40) = 0x80000001C18DE9B0;
    *(v106 + 96) = v107;
    *(v106 + 104) = v108;
    *(v106 + 64) = v108;
    *(v106 + 72) = 0x6465746365666661;
    *(v106 + 80) = 0xEF737463656A624FLL;
    v109 = [v24 path];
    v110 = [v109 stringValue];

    if (v110)
    {
      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;

      v114 = (v106 + 112);
      *(v106 + 136) = v107;
      *(v106 + 144) = v108;
      if (v113)
      {
        *v114 = v111;
LABEL_50:
        *(v106 + 120) = v113;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v115 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v105, &dword_1C1358000, v115, "%s: No property named %s for node at path: %s", v117, v118, v119);

        goto LABEL_53;
      }
    }

    else
    {
      v114 = (v106 + 112);
      *(v106 + 136) = v107;
      *(v106 + 144) = v108;
    }

    *v114 = 7104878;
    v113 = 0xE300000000000000;
    goto LABEL_50;
  }

  v118 = v13;
  v43 = v137;
  v44 = v31;
  v45 = v41;
  v46 = [v45 objectPathArray];
  v133 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = v47;
  if (v47 >> 62)
  {
    result = __CocoaSet.count.getter();
    v48 = v47;
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

  result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_52:

LABEL_53:
    v104 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v116 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v104);

    return v116;
  }

LABEL_10:
  if (result >= 1)
  {
    v50 = 0;
    v136 = v48 & 0xC000000000000001;
    v129 = (v18 + 56);
    v123 = (v18 + 32);
    v125 = (v18 + 48);
    v122 = (v18 + 16);
    v121 = v44 & 1;
    v120 = v43 & 1;
    v119 = (v18 + 8);
    v51 = 0x80000001C18DE9B0;
    v128 = MEMORY[0x1E69E7CC0];
    v132 = xmmword_1C1897FC0;
    v52 = v26;
    v135 = v48;
    v127 = 0x80000001C18DE9B0;
    v134 = result;
    while (1)
    {
      v137 = v50;
      if (v136)
      {
        v57 = MEMORY[0x1C68F41F0](v50);
      }

      else
      {
        v57 = *(v48 + 8 * v50 + 32);
      }

      v58 = v57;
      v59 = [v52 objectAtPath_];
      if (!v59)
      {
        goto LABEL_13;
      }

      v60 = v59;
      objc_opt_self();
      v61 = swift_dynamicCastObjCClass();

      if (!v61)
      {
        goto LABEL_13;
      }

      v62 = [v58 stringValue];
      v131 = v58;
      if (v62)
      {
        v63 = v62;
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v152 = v64;
        v153 = v66;
        v130 = v66;
        v150 = 91;
        v151 = 0xE100000000000000;
        v148 = 0;
        v149 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v152 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v153 = v67;
        v150 = 93;
        v151 = 0xE100000000000000;
        v148 = 0;
        v149 = 0xE000000000000000;
        v68 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v70 = v69;

        v71 = v144;
        if (*(v144 + 16))
        {
          v72 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v70);
          v74 = v73;

          v58 = v131;
          if (v74)
          {
            v75 = (*(v71 + 56) + 16 * v72);
            v77 = *v75;
            v76 = v75[1];

            specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v77, v76, v143, v71);
            v79 = v78;

            if (v79)
            {
              swift_beginAccess();
              if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
              {
                v80 = v118;
                UUID.init(uuid:)();
                v81 = *v129;
                (*v129)(v80, 0, 1, v141);
                result = outlined destroy of BodyTrackingComponent?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v82 = v139;
                v51 = v127;
              }

              else
              {
                v81 = *v129;
                v99 = v118;
                v100 = v141;
                (*v129)(v118, 1, 1, v141);
                outlined destroy of BodyTrackingComponent?(v99, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v101 = v138;
                UUID.init()();
                v81(v101, 0, 1, v100);
                v51 = v127;
                result = Entity.__interactionIdentifier.setter(v101);
                v82 = v139;
              }

              v42 = v142;
              if (!static __RKEntityUUIDComponent.registration)
              {
                goto LABEL_56;
              }

              result = REEntityGetCustomComponent();
              if (!result)
              {
                goto LABEL_56;
              }

              result = RECustomComponentGetObject();
              if (!result)
              {
                goto LABEL_56;
              }

              UUID.init(uuid:)();

              v83 = v140;
              v102 = v82;
              v86 = v141;
              (*v123)(v140, v102, v141);
              v84 = v83;
              v85 = 0;
              v87 = v86;
              goto LABEL_33;
            }
          }

          v42 = v142;
        }

        else
        {

          v42 = v142;
          v58 = v131;
        }

        v51 = v127;
      }

      else
      {
        v130 = 0;
      }

      v81 = *v129;
      v83 = v140;
      v84 = v140;
      v85 = 1;
      v86 = v141;
      v87 = v141;
LABEL_33:
      v81(v84, v85, 1, v87);

      if ((*v125)(v83, 1, v86) != 1)
      {
        (*v123)(v42, v83, v86);
        v88 = v126;
        (*v122)(v126, v42, v86);
        started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
        v90 = started[14];
        v81((v88 + v90), 1, 1, v141);
        *(v88 + started[5]) = 1;
        *(v88 + started[6]) = v124;
        *(v88 + started[10]) = v121;
        *(v88 + started[8]) = v30;
        *(v88 + started[7]) = v28;
        *(v88 + started[11]) = v33;
        *(v88 + started[9]) = v120;
        *(v88 + started[12]) = 0;
        v91 = v88 + started[13];
        *v91 = 0x3FF0000000000000;
        *(v91 + 8) = 0;
        outlined destroy of BodyTrackingComponent?(v88 + v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v81((v88 + v90), 1, 1, v141);
        swift_storeEnumTagMultiPayload();
        v92 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92[2] + 1, 1, v92);
        }

        v93 = v25;
        v128 = v92;
        v95 = v92[2];
        v94 = v92[3];
        v52 = v26;
        v96 = v127;
        v97 = v131;
        if (v95 >= v94 >> 1)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v128);
          v93 = v25;
          v128 = v103;
        }

        v98 = v128;
        v128[2] = v95 + 1;
        outlined init with take of __RKEntityHideActionArguments(v126, v98 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v95, type metadata accessor for __RKEntityActionSpecification);

        (*v119)(v42, v141);
        v51 = v96;
        goto LABEL_14;
      }

      outlined destroy of BodyTrackingComponent?(v83, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_13:
      v53 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v54 = swift_allocObject();
      *(v54 + 16) = v132;
      *(v54 + 56) = MEMORY[0x1E69E6158];
      *(v54 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v54 + 32) = 0xD000000000000012;
      *(v54 + 40) = v51;
      *(v54 + 96) = v133;
      *(v54 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v54 + 72) = v58;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v55 = v58;
      v56 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v53, &dword_1C1358000, v56, "%s: No target entity identifier found for affected object path: %s", v117, v118);

      v42 = v142;

      v52 = v26;
LABEL_14:
      v50 = v137 + 1;
      v48 = v135;
      if (v134 == v137 + 1)
      {

        v104 = v128;
        goto LABEL_54;
      }
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t specialized static __RKEntityActionSpecification.generateTransformActionSpecifications(decodeContext:)(void *a1)
{
  v192 = type metadata accessor for __RKEntityTransformActionArguments(0);
  MEMORY[0x1EEE9AC00](v192);
  v196 = &v154 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for __RKEntityActionSpecification(0);
  v197 = *(v3 - 8);
  v198 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v193 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for UUID();
  v191 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v190 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v194 = &v154 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v154 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v154 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v154 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v154 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v154 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v154 - v27;
  v29 = *a1;
  v30 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7261546D726F6678, 0xEB00000000746567, 1, *a1);
  v31 = v29;
  v182 = v25;
  v188 = a1;
  v185 = v22;
  v186 = v19;
  v184 = v16;
  v183 = v13;
  v187 = v10;
  v32 = v197;
  if (!v30)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v189 = v30;
  v33 = v31;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, v31);
  v36 = v35;
  v37 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1701869940, 0xE400000000000000, 1, v33);
  v39 = v38;
  if (!v38)
  {
    goto LABEL_3;
  }

  v181 = v28;
  v40._countAndFlagsBits = v37;
  v40._object = v39;
  v41 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveSelectionUSD.init(rawValue:), v40);

  if (v41)
  {
    v42 = v188;
    if (v41 == 1)
    {
      v43 = 0;
      goto LABEL_10;
    }

LABEL_3:

    return MEMORY[0x1E69E7CC0];
  }

  v43 = 1;
  v42 = v188;
LABEL_10:
  v45 = v42[1];
  v44 = v42[2];
  v46 = v42[3];
  v207 = v42[4];
  v208 = v46;
  v206 = v42[5];
  v47 = v33;
  v48 = v45;

  outlined init with copy of [String : String](&v208, v199, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v207, v199, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v206, v199, &_sSDyS2SGMd, &_sSDyS2SGMR);
  __RKEntityMoveEase.init(decodeContext:)(v42, &v204);
  v174 = v43;
  v49 = v48;
  LODWORD(v48) = v204;
  v50 = v47;
  v51 = v49;

  outlined init with copy of [String : String](&v208, v199, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v207, v199, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v206, v199, &_sSDyS2SGMd, &_sSDyS2SGMR);
  __RKEntityMoveEaseType.init(decodeContext:)(v42, &v204);
  v52 = v48;
  v179 = v50;
  v170 = v204;
  v53 = [v51 objectAtPath_];
  if (!v53)
  {
LABEL_16:
    v64 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1C1887600;
    *(v65 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
    *(v65 + 64) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
    v66 = v189;
    *(v65 + 32) = v189;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v67 = v66;
    v68 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v64, &dword_1C1358000, v68, "USD action loading: No target transform node found for affected object path: %s", v154);

    return MEMORY[0x1E69E7CC0];
  }

  v54 = v53;
  v180 = v51;
  objc_opt_self();
  v55 = swift_dynamicCastObjCClass();
  if (!v55)
  {

    goto LABEL_16;
  }

  v56 = v191;
  [objc_opt_self() localTransformWithNode:v55 time:0.0];
  REMakeSRTFromMatrix();
  v177 = v57;
  v178 = v58;
  v176 = v59;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v60 = *(v56 + 56);
  v61 = v181;
  v172 = v56 + 56;
  v175 = v60;
  v60(v181, 1, 1, v195);
  v62 = v179;
  v63 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0xD000000000000010, 0x80000001C18DEAC0, 1, v179);
  v164 = v52;
  v155 = v44;
  if (v63)
  {
    v69 = v63;
    v70 = [v63 stringValue];
    v71 = v182;
    if (v70)
    {
      v72 = v70;
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v61 = v181;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    USDDecodableContext.identifierForPath(uskNodePath:)(v73, v75, v71);

    outlined assign with take of UUID?(v71, v61);
    v62 = v179;
  }

  v76 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v77 = [v62 property_];

  if (!v77)
  {
    v138 = v54;
    v140 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_1C1897FD0;
    v142 = MEMORY[0x1E69E6158];
    *(v141 + 56) = MEMORY[0x1E69E6158];
    v143 = lazy protocol witness table accessor for type String and conformance String();
    v144 = v62;
    v145 = v143;
    *(v141 + 32) = 0xD000000000000012;
    *(v141 + 40) = 0x80000001C18DE9B0;
    *(v141 + 96) = v142;
    *(v141 + 104) = v143;
    *(v141 + 64) = v143;
    *(v141 + 72) = 0x6465746365666661;
    *(v141 + 80) = 0xEF737463656A624FLL;
    v146 = [v144 path];
    v147 = [v146 stringValue];

    if (v147)
    {
      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v150 = v149;

      v151 = (v141 + 112);
      *(v141 + 136) = v142;
      *(v141 + 144) = v145;
      if (v150)
      {
        *v151 = v148;
LABEL_70:
        v61 = v181;
        *(v141 + 120) = v150;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v152 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v140, &dword_1C1358000, v152, "%s: No property named %s for node at path: %s", v154, v155, v156);

        v139 = MEMORY[0x1E69E7CC0];
        goto LABEL_71;
      }
    }

    else
    {
      v151 = (v141 + 112);
      *(v141 + 136) = v142;
      *(v141 + 144) = v145;
    }

    *v151 = 7104878;
    v150 = 0xE300000000000000;
    goto LABEL_70;
  }

  v78 = v54;
  v79 = v77;
  v80 = [v79 objectPathArray];
  v179 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v81 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v194;
  v82 = v195;
  v84 = v191;
  if (!result)
  {

    v139 = MEMORY[0x1E69E7CC0];
    v138 = v78;
LABEL_71:
    v153 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v139);

    outlined destroy of BodyTrackingComponent?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return v153;
  }

  v154 = v78;
  if (result >= 1)
  {
    v85 = 0;
    v191 = v81 & 0xC000000000000001;
    v165 = v208;
    v163 = (v84 + 32);
    v171 = (v84 + 48);
    v162 = (v84 + 16);
    v160 = *(&v176 + 1);
    v161 = v176;
    v159 = v177;
    v157 = *(&v178 + 1);
    v158 = v178;
    if (v36 < 0.0)
    {
      v36 = 1.0;
    }

    v156 = (v84 + 8);
    v173 = MEMORY[0x1E69E7CC0];
    *&v178 = 0x80000001C18DE9B0;
    v177 = xmmword_1C1897FC0;
    v182 = result;
    v188 = v81;
    while (1)
    {
      if (v191)
      {
        v91 = MEMORY[0x1C68F41F0](v85, v81);
      }

      else
      {
        v91 = *(v81 + 8 * v85 + 32);
      }

      v86 = v91;
      v92 = [v180 objectAtPath_];
      if (!v92)
      {
        goto LABEL_31;
      }

      v93 = v92;
      objc_opt_self();
      v94 = swift_dynamicCastObjCClass();

      if (!v94)
      {
        goto LABEL_31;
      }

      *&v176 = v86;
      v95 = [v86 stringValue];
      if (v95)
      {
        break;
      }

      v115 = 1;
      v116 = v192;
LABEL_50:
      v117 = v185;
LABEL_51:
      v175(v117, v115, 1, v82);

      if ((*v171)(v117, 1, v82) != 1)
      {
        v166 = *v163;
        v118 = v117;
        v119 = v187;
        v166(v187, v118, v82);
        (*v162)(v83, v119, v82);
        outlined init with copy of [String : String](v181, v186, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v167 = v116[9];
        v196[v167] = 2;
        v168 = v116[10];
        v196[v168] = 10;
        v120 = v116[11];
        v196[v120] = 3;
        v169 = v116[15];
        v175(&v196[v169], 1, 1, v82);
        v166(v196, v83, v82);
        v121 = &v196[v116[5]];
        v122 = &v196[v116[6]];
        v123 = &v196[v116[7]];
        v124 = &v196[v116[8]];
        v125 = v116[12];
        v126 = &v196[v116[13]];
        v127 = &v196[v116[14]];
        *v124 = v36;
        v124[4] = 0;
        *v121 = v161;
        *(v121 + 1) = v160;
        v121[16] = 0;
        v128 = v157;
        *v122 = v158;
        *(v122 + 1) = v128;
        v122[16] = 0;
        *v123 = v159;
        v123[4] = 0;
        v196[v167] = v174;
        v196[v168] = v164;
        v129 = v196;
        v196[v120] = v170;
        *(v129 + v125) = 0;
        *v126 = 0;
        v126[4] = 0;
        *v127 = 0;
        v127[4] = 0;
        outlined assign with take of UUID?(v186, v129 + v169);
        outlined init with take of __RKEntityHideActionArguments(v129, v193, type metadata accessor for __RKEntityTransformActionArguments);
        swift_storeEnumTagMultiPayload();
        v130 = v173;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v130[2] + 1, 1, v130);
        }

        v131 = v32;
        v173 = v130;
        v133 = v130[2];
        v132 = v130[3];
        v61 = v181;
        v83 = v194;
        v82 = v195;
        v81 = v188;
        if (v133 >= v132 >> 1)
        {
          v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v173);
          v131 = v32;
          v173 = v137;
        }

        v134 = v173;
        v173[2] = v133 + 1;
        outlined init with take of __RKEntityHideActionArguments(v193, v134 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v133, type metadata accessor for __RKEntityActionSpecification);

        (*v156)(v187, v82);
        goto LABEL_32;
      }

      outlined destroy of BodyTrackingComponent?(v117, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v86 = v176;
LABEL_31:
      v87 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v88 = swift_allocObject();
      *(v88 + 16) = v177;
      *(v88 + 56) = MEMORY[0x1E69E6158];
      *(v88 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v88 + 32) = 0xD000000000000012;
      *(v88 + 40) = v178;
      *(v88 + 96) = v179;
      *(v88 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      *(v88 + 72) = v86;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v89 = v86;
      v90 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v87, &dword_1C1358000, v90, "%s: No target entity identifier found for affected object path: %s", v154, v155);

      v61 = v181;
      v81 = v188;
LABEL_32:
      if (v182 == ++v85)
      {

        v138 = v154;
        v139 = v173;
        goto LABEL_71;
      }
    }

    v96 = v95;
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    v204 = v97;
    v205 = v99;
    v202 = 91;
    v203 = 0xE100000000000000;
    v200 = 0;
    v201 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v204 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v205 = v100;
    v202 = 93;
    v203 = 0xE100000000000000;
    v200 = 0;
    v201 = 0xE000000000000000;
    v101 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v103 = v102;

    v104 = v165;
    if (*(v165 + 16))
    {
      v105 = specialized __RawDictionaryStorage.find<A>(_:)(v101, v103);
      v107 = v106;

      if (v107)
      {
        v108 = (*(v104 + 56) + 16 * v105);
        v110 = *v108;
        v109 = v108[1];

        specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v110, v109, v155, v104);
        v112 = v111;

        v82 = v195;
        v113 = v190;
        if (v112)
        {
          swift_beginAccess();
          if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
          {
            v114 = v184;
            UUID.init(uuid:)();
            v175(v114, 0, 1, v82);
            result = outlined destroy of BodyTrackingComponent?(v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v135 = v184;
            v175(v184, 1, 1, v82);
            outlined destroy of BodyTrackingComponent?(v135, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v136 = v183;
            UUID.init()();
            v175(v136, 0, 1, v82);
            result = Entity.__interactionIdentifier.setter(v136);
          }

          v116 = v192;
          if (!static __RKEntityUUIDComponent.registration)
          {
            goto LABEL_74;
          }

          result = REEntityGetCustomComponent();
          if (!result)
          {
            goto LABEL_74;
          }

          result = RECustomComponentGetObject();
          if (!result)
          {
            goto LABEL_74;
          }

          UUID.init(uuid:)();

          v117 = v185;
          (*v163)(v185, v113, v82);
          v115 = 0;
          v83 = v194;
          goto LABEL_51;
        }

        v115 = 1;
        v116 = v192;
        goto LABEL_49;
      }
    }

    else
    {
    }

    v115 = 1;
    v116 = v192;
    v82 = v195;
LABEL_49:
    v83 = v194;
    goto LABEL_50;
  }

  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t specialized static __RKEntityActionSpecification.generateTransformAnimationActionSpecifications(decodeContext:)(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v11 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6F6974616D696E61, 0xE90000000000006ELL, 1, *a1);
  result = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return result;
  }

  v12 = [a1[1] objectAtPath_];
  if (!v12)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v13 = v12;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    return MEMORY[0x1E69E7CC0];
  }

  v14 = [v11 stringValue];
  if (v14)
  {
    v15 = v14;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v14 = v25;
  }

  else
  {
    v17 = 0;
  }

  USDDecodableContext.identifierForPath(uskNodePath:)(v14, v17, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    outlined destroy of BodyTrackingComponent?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v6 + 32))(v8, v4, v5);
  v18 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0xD000000000000018, 0x80000001C18DEA50, 1, v9);
  if (v19)
  {
    v22 = v19;
    v23._countAndFlagsBits = v18;
    v23._object = v22;
    _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionMultiplePerformBehaviorUSD.init(rawValue:), v23);
  }

  v26 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v18);
  *(&v24 - 4) = &v26;
  *(&v24 - 24) = v20;
  *(&v24 - 2) = v8;
  USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 1, partial apply for closure #1 in static __RKEntityActionSpecification.generateTransformAnimationActionSpecifications(decodeContext:), (&v24 - 6));
  v21 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v26);

  (*(v6 + 8))(v8, v5);
  return v21;
}

uint64_t specialized static __RKEntityActionSpecification.generateVisibilityActionSpecifications(decodeContext:)(void *a1)
{
  v212 = type metadata accessor for __RKEntityHideActionArguments(0);
  MEMORY[0x1EEE9AC00](v212);
  v203 = &v168 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for __RKEntityShowActionArguments(0);
  MEMORY[0x1EEE9AC00](v207);
  v209 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  v5 = *(v4 - 8);
  v210 = v4;
  v211 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v204 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v208 = &v168 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v205 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v168 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v168 - v15;
  v17 = type metadata accessor for UUID();
  v206 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v168 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v168 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v168 - v27;
  v29 = *a1;
  v30 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(1701869940, 0xE400000000000000, 1, *a1);
  v32 = v29;
  v200 = a1;
  v201 = v28;
  v197 = v25;
  v194 = v22;
  v195 = v19;
  v199 = v17;
  v198 = v16;
  v196 = v13;
  v34 = v211;
  v33 = v212;
  if (!v31)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v35 = v30;
  v202 = v31;
  v36 = v32;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x6E6F697461727564, 0xE800000000000000, 1, v32);
  v38 = v37;
  specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7473694465766F6DLL, 0xEC00000065636E61, 1, v36);
  v41 = v40;
  v42 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x656C797473, 0xE500000000000000, 1, v36);
  v44 = v43;
  if (!v43 || (v45._countAndFlagsBits = v42, v45._object = v44, v46 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionAnimationStyle.init(rawValue:), v45), , v46 >= 3))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v47 = v200;
  v49 = v200[1];
  v48 = v200[2];
  v50 = v200[3];
  v221 = v200[4];
  v222 = v50;
  v220 = v200[5];
  v51 = v36;
  v52 = v49;
  v191 = v48;

  outlined init with copy of [String : String](&v222, v213, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v221, v213, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v220, v213, &_sSDyS2SGMd, &_sSDyS2SGMR);
  __RKEntityMoveEase.init(decodeContext:)(v47, &v218);
  v177 = v218;
  v193 = v51;
  v53 = v52;

  outlined init with copy of [String : String](&v222, v213, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v221, v213, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v220, v213, &_sSDyS2SGMd, &_sSDyS2SGMR);
  __RKEntityMoveEaseType.init(decodeContext:)(v200, &v218);
  v183 = 0;
  v173 = v46;
  v172 = v218;
  v54 = v193;
  v192 = v53;

  outlined init with copy of [String : String](&v222, v213, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v221, v213, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v220, v213, &_sSDyS2SGMd, &_sSDyS2SGMR);

  v55 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v181 = v54;
  v56 = [v54 property_];

  if (!v56)
  {
    v156 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v157 = swift_allocObject();
    *(v157 + 16) = xmmword_1C1897FD0;
    v158 = MEMORY[0x1E69E6158];
    *(v157 + 56) = MEMORY[0x1E69E6158];
    v159 = lazy protocol witness table accessor for type String and conformance String();
    *(v157 + 32) = 0xD000000000000012;
    *(v157 + 40) = 0x80000001C18DE9B0;
    *(v157 + 96) = v158;
    *(v157 + 104) = v159;
    *(v157 + 64) = v159;
    *(v157 + 72) = 0x6465746365666661;
    *(v157 + 80) = 0xEF737463656A624FLL;
    v160 = [v181 path];
    v161 = [v160 stringValue];

    if (v161)
    {
      v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v164 = v163;

      v165 = (v157 + 112);
      *(v157 + 136) = v158;
      *(v157 + 144) = v159;
      if (v164)
      {
        *v165 = v162;
LABEL_80:
        *(v157 + 120) = v164;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v166 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v156, &dword_1C1358000, v166, "%s: No property named %s for node at path: %s", v168, v169, v170);

        v155 = MEMORY[0x1E69E7CC0];
        goto LABEL_81;
      }
    }

    else
    {
      v165 = (v157 + 112);
      *(v157 + 136) = v158;
      *(v157 + 144) = v159;
    }

    *v165 = 7104878;
    v164 = 0xE300000000000000;
    goto LABEL_80;
  }

  v57 = v56;
  v58 = [v57 objectPathArray];
  v188 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v59;
  if (v59 >> 62)
  {
    result = __CocoaSet.count.getter();
    v60 = v59;
  }

  else
  {
    result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v201;
  if (!result)
  {

    v155 = MEMORY[0x1E69E7CC0];
LABEL_81:

    outlined destroy of BodyTrackingComponent?(&v222, &_sSDyS2SGMd, &_sSDyS2SGMR);
    outlined destroy of BodyTrackingComponent?(&v221, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    outlined destroy of BodyTrackingComponent?(&v220, &_sSDyS2SGMd, &_sSDyS2SGMR);
    swift_bridgeObjectRelease_n();
    v167 = specialized static __RKEntityActionSpecification.packageAndReturnActionSpecifications(_:)(v155);

    return v167;
  }

  if (result >= 1)
  {
    v62 = 0;
    v178 = v222;
    v63 = v60 & 0xC000000000000001;
    v184 = v206 + 56;
    v179 = (v206 + 32);
    v182 = (v206 + 48);
    v64 = v202 == 0xE400000000000000 && v35 == 2003789939;
    v175 = v64;
    v65 = v202 == 0xE400000000000000 && v35 == 1701079400;
    HIDWORD(v169) = v65;
    v170 = (v206 + 16);
    if (v38 < 0.0)
    {
      v38 = 1.0;
    }

    v174 = (v206 + 8);
    v176 = MEMORY[0x1E69E7CC0];
    v187 = 0x80000001C18DE9B0;
    v186 = xmmword_1C1897FC0;
    v189 = v60;
    v190 = result;
    v180 = v60 & 0xC000000000000001;
    while (1)
    {
      if (v63)
      {
        v73 = MEMORY[0x1C68F41F0](v62);
      }

      else
      {
        v73 = *(v60 + 8 * v62 + 32);
      }

      v193 = v62;
      v206 = v73;
      v74 = [v192 objectAtPath_];
      if (!v74)
      {
        goto LABEL_22;
      }

      v75 = v74;
      objc_opt_self();
      v76 = swift_dynamicCastObjCClass();

      if (!v76)
      {
        goto LABEL_22;
      }

      v77 = [v206 stringValue];
      if (v77)
      {
        v78 = v77;
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v218 = v79;
        v219 = v81;
        v185 = v81;
        v216 = 91;
        v217 = 0xE100000000000000;
        v214 = 0;
        v215 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v218 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v219 = v82;
        v216 = 93;
        v217 = 0xE100000000000000;
        v214 = 0;
        v215 = 0xE000000000000000;
        v83 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v85 = v84;

        v86 = v178;
        if (*(v178 + 16))
        {
          v87 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v85);
          v89 = v88;

          if (v89)
          {
            v90 = (*(v86 + 56) + 16 * v87);
            v91 = *v90;
            v92 = v90[1];

            specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v91, v92, v191, v86);
            v94 = v93;

            if (v94)
            {
              v171 = v94;
              swift_beginAccess();
              if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
              {
                v95 = v196;
                UUID.init(uuid:)();
                v96 = *v184;
                (*v184)(v95, 0, 1, v199);
                result = outlined destroy of BodyTrackingComponent?(v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v96 = *v184;
                v133 = v196;
                v134 = v199;
                (*v184)(v196, 1, 1, v199);
                outlined destroy of BodyTrackingComponent?(v133, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v135 = v205;
                UUID.init()();
                v96(v135, 0, 1, v134);
                result = Entity.__interactionIdentifier.setter(v135);
              }

              v97 = v198;
              v136 = v195;
              if (!static __RKEntityUUIDComponent.registration)
              {
                goto LABEL_84;
              }

              result = REEntityGetCustomComponent();
              if (!result)
              {
                goto LABEL_84;
              }

              result = RECustomComponentGetObject();
              if (!result)
              {
                goto LABEL_84;
              }

              UUID.init(uuid:)();

              v98 = v199;
              (*v179)(v97, v136, v199);
              v96(v97, 0, 1, v98);
              v61 = v201;
              v63 = v180;
              goto LABEL_41;
            }
          }
        }

        else
        {
        }

        v61 = v201;
        v63 = v180;
      }

      v97 = v198;
      v98 = v199;
      (*v184)(v198, 1, 1, v199);
LABEL_41:

      if ((*v182)(v97, 1, v98) != 1)
      {
        v99 = *v179;
        (*v179)(v61, v97, v98);
        v185 = v99;
        if (v175 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v100 = v181;
          v101 = v192;

          outlined init with copy of [String : String](&v222, &v218, &_sSDyS2SGMd, &_sSDyS2SGMR);
          outlined init with copy of [String : String](&v221, &v218, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
          outlined init with copy of [String : String](&v220, &v218, &_sSDyS2SGMd, &_sSDyS2SGMR);
          v102 = v183;
          __RKEntityShowActionBuildInAnimationType.init(decodeContext:)(v200, &v216);
          if (v102)
          {

            v183 = 0;
            goto LABEL_46;
          }

          v183 = 0;
          v103 = v216;
          v104 = v197;
          (*v170)(v197, v61, v98);
          v105 = v207;
          v106 = *(v207 + 28);
          v107 = v104;
          v108 = v209;
          v209[v106] = 10;
          v109 = v105[8];
          v108[v109] = 3;
          v110 = v98;
          v111 = v105[14];
          v108[v111] = 3;
          v112 = v105[15];
          v108[v112] = 10;
          v185(v108, v107, v110);
          v113 = &v108[v105[5]];
          v114 = &v108[v105[6]];
          v115 = v105[9];
          v116 = &v108[v105[10]];
          v117 = v105[11];
          v118 = &v108[v105[12]];
          v119 = &v108[v105[13]];
          *v113 = v38;
          v113[4] = 0;
          *v114 = v41;
          v114[4] = 0;
          v108[v106] = v177;
          v120 = v108;
          v121 = v208;
          *(v120 + v109) = v172;
          *(v120 + v115) = 1;
          *v116 = 1065353216;
          v116[4] = 0;
          *(v120 + v117) = 0;
          *v118 = 0;
          v118[4] = 0;
          *v119 = 0;
          v119[4] = 0;
          *(v120 + v111) = v173;
          *(v120 + v112) = v103;
          outlined init with take of __RKEntityHideActionArguments(v120, v121, type metadata accessor for __RKEntityShowActionArguments);
          swift_storeEnumTagMultiPayload();
          v122 = v176;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122[2] + 1, 1, v122);
          }

          v123 = v34;
          v176 = v122;
          v125 = v122[2];
          v124 = v122[3];
          v61 = v201;
          v72 = v193;
          if (v125 >= v124 >> 1)
          {
            v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v125 + 1, 1, v176);
            v123 = v34;
            v176 = v154;
          }

          v126 = v176;
          v176[2] = v125 + 1;
          outlined init with take of __RKEntityHideActionArguments(v121, v126 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v125, type metadata accessor for __RKEntityActionSpecification);

          v98 = v199;
          v71 = v190;
LABEL_60:
          v63 = v180;
LABEL_61:
          (*v174)(v61, v98);
          goto LABEL_23;
        }

        if (!HIDWORD(v169) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

LABEL_46:
          v71 = v190;
          v72 = v193;
          goto LABEL_61;
        }

        v127 = v181;
        v128 = v192;

        outlined init with copy of [String : String](&v222, &v218, &_sSDyS2SGMd, &_sSDyS2SGMR);
        outlined init with copy of [String : String](&v221, &v218, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
        outlined init with copy of [String : String](&v220, &v218, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v129 = v183;
        v130._countAndFlagsBits = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x79546E6F69746F6DLL, 0xEA00000000006570, 1, v127);
        v131 = v129;
        if (v129)
        {
LABEL_58:

          outlined destroy of BodyTrackingComponent?(&v222, &_sSDyS2SGMd, &_sSDyS2SGMR);
          outlined destroy of BodyTrackingComponent?(&v221, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
          outlined destroy of BodyTrackingComponent?(&v220, &_sSDyS2SGMd, &_sSDyS2SGMR);

          v183 = 0;
        }

        else
        {
          v183 = 0;
          if (!v130._object || (v132 = specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(v130), v132 == 10))
          {
            lazy protocol witness table accessor for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError();
            v131 = swift_allocError();
            swift_willThrow();
            goto LABEL_58;
          }

          v137 = v132;

          outlined destroy of BodyTrackingComponent?(&v222, &_sSDyS2SGMd, &_sSDyS2SGMR);
          outlined destroy of BodyTrackingComponent?(&v221, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
          outlined destroy of BodyTrackingComponent?(&v220, &_sSDyS2SGMd, &_sSDyS2SGMR);
          LODWORD(v171) = byte_1C189A612[v137];
          v138 = v194;
          v139 = v199;
          (*v170)(v194, v201, v199);
          v140 = v33[7];
          v141 = v203;
          v203[v140] = 10;
          v142 = v33[8];
          *(v141 + v142) = 3;
          v143 = v33[14];
          *(v141 + v143) = 3;
          v168 = v33[15];
          v168[v141] = 10;
          v185(v141, v138, v139);
          v144 = v141 + v33[5];
          v145 = v141 + v33[6];
          v146 = v33[9];
          v147 = v141 + v33[10];
          v148 = v33[11];
          v149 = v141 + v33[12];
          v150 = v141 + v33[13];
          *v144 = v38;
          *(v144 + 4) = 0;
          *v145 = v41;
          *(v145 + 4) = 0;
          *(v141 + v140) = v177;
          *(v141 + v142) = v172;
          *(v141 + v146) = 1;
          *v147 = 0;
          *(v147 + 4) = 0;
          *(v141 + v148) = 0;
          *v149 = 0;
          *(v149 + 4) = 0;
          *v150 = 0;
          *(v150 + 4) = 0;
          *(v141 + v143) = v173;
          v168[v141] = v171;
          outlined init with take of __RKEntityHideActionArguments(v141, v204, type metadata accessor for __RKEntityHideActionArguments);
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v176[2] + 1, 1, v176);
          }

          v152 = v176[2];
          v151 = v176[3];
          if (v152 >= v151 >> 1)
          {
            v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v151 > 1), v152 + 1, 1, v176);
          }

          v153 = v176;
          v176[2] = v152 + 1;
          outlined init with take of __RKEntityHideActionArguments(v204, v153 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v152, type metadata accessor for __RKEntityActionSpecification);
        }

        v98 = v199;
        v61 = v201;
        v71 = v190;
        v72 = v193;
        goto LABEL_60;
      }

      outlined destroy of BodyTrackingComponent?(v97, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_22:
      v66 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v67 = swift_allocObject();
      *(v67 + 16) = v186;
      *(v67 + 56) = MEMORY[0x1E69E6158];
      *(v67 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v67 + 32) = 0xD000000000000012;
      *(v67 + 40) = v187;
      *(v67 + 96) = v188;
      *(v67 + 104) = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      v68 = v206;
      *(v67 + 72) = v206;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v69 = v68;
      v70 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v66, &dword_1C1358000, v70, "%s: No target entity identifier found for affected object path: %s", v168, v169);

      v61 = v201;

      v71 = v190;
      v72 = v193;
LABEL_23:
      v62 = v72 + 1;
      v60 = v189;
      if (v71 == v62)
      {

        v155 = v176;
        goto LABEL_81;
      }
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}