uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.subscript.getter(implicit closure #1 in static String._copying(_:), 0, a1, a2);
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E12A8C80](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t SiriEnvironment.currentProcess.setter(uint64_t a1)
{
  v2 = type metadata accessor for CurrentProcess();
  OUTLINED_FUNCTION_7();
  v6 = *(v3 + 216);
  v4 = OUTLINED_FUNCTION_0_17(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess);

  return v6(a1, v2, v2, v4);
}

void (*SiriEnvironment.currentProcess.modify(void *a1))()
{
  a1[1] = v1;
  v3 = type metadata accessor for CurrentProcess();
  a1[2] = v3;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 208);
  v6 = OUTLINED_FUNCTION_0_17(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess);
  a1[3] = v6;
  *a1 = v5(v3, v3, v6);
  return SiriEnvironment.currentProcess.modify;
}

void SiriEnvironment.currentProcess.modify()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 216);
  if (v3)
  {
    v4 = v0;
    v2();
  }

  else
  {
    v2();
  }
}

uint64_t key path getter for CurrentProcess.mock : CurrentProcess@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CurrentProcess.mock : CurrentProcess(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);

  return v2(v3);
}

uint64_t CurrentProcess.mock.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUCurrentProcess_mock;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void CurrentProcess.idleTracker.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = v20;

  _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZAA11IdleTrackerCSg_AA14CurrentProcessCTt3g5(a1, v24, KeyPath, v23, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t key path getter for CurrentProcess.idleTracker : CurrentProcess@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CurrentProcess.idleTracker : CurrentProcess(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

void (*CurrentProcess.idleTracker.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[6] = v1;
  KeyPath = swift_getKeyPath();
  v3[7] = KeyPath;
  v3[8] = swift_getKeyPath();
  v5 = OBJC_IVAR___SUCurrentProcess__idleTracker;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);

  v9 = v7(v8);
  if (v9 && ((*(*v9 + 144))(KeyPath), , v10 = v3[5], v10 != 1))
  {
  }

  else
  {
    (*(*v6 + 104))();

    v10 = v3[4];
  }

  v3[3] = v10;
  return CurrentProcess.idleTracker.modify;
}

void *key path getter for CurrentProcess.$idleTracker : CurrentProcess@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentProcess.$idleTracker : CurrentProcess(uint64_t *a1, void **a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);

  return v3(&v5);
}

uint64_t CurrentProcess.$idleTracker.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_0(v2 + OBJC_IVAR___SUCurrentProcess__idleTracker, a2);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 152);

  v4(v5);
}

uint64_t CurrentProcess.$idleTracker.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_9_0(v2 + OBJC_IVAR___SUCurrentProcess__idleTracker, a2);
  v7[0] = v3;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 160);

  v5(v7);
}

uint64_t (*CurrentProcess.$idleTracker.modify(uint64_t a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = v2;
  CurrentProcess.$idleTracker.getter(a1, a2);
  return CurrentProcess.$idleTracker.modify;
}

uint64_t CurrentProcess.$idleTracker.modify(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *a1;

    CurrentProcess.$idleTracker.setter(&v4, v2);
  }

  else
  {
    v4 = *a1;
    return CurrentProcess.$idleTracker.setter(&v4, a2);
  }
}

uint64_t static CurrentProcess.default.getter()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v0 = type metadata accessor for CurrentProcess();
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 208);
  v3 = OUTLINED_FUNCTION_0_17(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess);
  v4 = v2(v0, v0, v3);

  return v4;
}

id CurrentProcess.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CurrentProcess.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurrentProcess();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for MockableEnvironmentProvider.mock.modify in conformance CurrentProcess(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  return protocol witness for MockableEnvironmentProvider.mock.modify in conformance NetworkAvailability;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CurrentProcess@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CurrentProcess();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CurrentProcess(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentProcess and conformance CurrentProcess(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess, &protocol conformance descriptor for CurrentProcess);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CurrentProcess and conformance CurrentProcess(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess, &protocol conformance descriptor for CurrentProcess);
  *(a1 + 8) = result;
  return result;
}

uint64_t static Transformation.canTransform(from:to:lengthLimit:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v13[0] = v4;
  v13[1] = v5;
  v12[0] = v6;
  v12[1] = v7;
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 200);

  v10 = v9(v13, v12, a3);

  return v10 & 1;
}

uint64_t static Transformation.canTransform(from:to:lengthLimit:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  TypeInformation.init(for:)(v14);
  v7 = v15;
  v6 = v16;

  outlined destroy of TypeInformation(v14);
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v13[0] = v7;
  v13[1] = v6;
  v12[0] = v4;
  v12[1] = v5;
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 200);

  v10 = v9(v13, v12, a3);

  return v10 & 1;
}

uint64_t static Transformation.transform<A>(_:to:lengthLimit:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return static Transformation.transform<A>(_:to:lengthLimit:tryAllPaths:)(a1, v6, a3, 0, a4);
}

uint64_t static Transformation.transform<A>(_:to:lengthLimit:tryAllPaths:)(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = *a2;
  v10 = a2[1];
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v11 = *(static TransformationPluginLoader.sharedInstance + 4);
  v14[0] = v9;
  v14[1] = v10;
  v12 = *(*v11 + 208);

  v12(a1, v14, a3, a4 & 1, a5);
}

uint64_t static Transformation.transform<A, B>(_:to:lengthLimit:)@<X0>(uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static Transformation.transform<A, B>(_:to:lengthLimit:), a5, &v9, x8_0);
}

uint64_t closure #1 in static Transformation.transform<A, B>(_:to:lengthLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v18[3] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v17[0] = a2;
  v17[1] = a3;
  static Transformation.transform<A>(_:to:lengthLimit:tryAllPaths:)(v18, v17, a4, 0, a6);
  result = __swift_destroy_boxed_opaque_existential_0(v18);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t static Transformation.transform<A>(_:to:lengthLimit:queue:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a3;
  v30 = a5;
  v32 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_5_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_5_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  v23 = a2[1];
  outlined init with copy of Any(a1, v35);
  v24 = swift_allocObject();
  *(v24 + 16) = a7;
  outlined init with take of Any(v35, (v24 + 24));
  *(v24 + 56) = v22;
  *(v24 + 64) = v23;
  v25 = v30;
  *(v24 + 72) = v29;
  *(v24 + 80) = v25;
  *(v24 + 88) = a6;
  aBlock[4] = partial apply for closure #1 in static Transformation.transform<A>(_:to:lengthLimit:queue:completion:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12A90D0](0, v21, v16, v26);
  _Block_release(v26);
  (*(v13 + 8))(v16, v11);
  (*(v18 + 8))(v21, v31);
}

uint64_t closure #1 in static Transformation.transform<A>(_:to:lengthLimit:queue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7)
{
  v21[1] = a6;
  v22 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v12 = type metadata accessor for Result();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - v15;
  v17 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a2;
  v23[1] = a3;
  static Transformation.transform<A>(_:to:lengthLimit:)(a1, v23, a4, a7);
  (*(v17 + 16))(v16, v19, a7);
  swift_storeEnumTagMultiPayload();
  v22(v16);
  (*(v13 + 8))(v16, v12);
  return (*(v17 + 8))(v19, a7);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t static Transformation.transformer<A, B>(from:to:lengthLimit:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *a2;
  v13 = a2[1];
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v14 = *(static TransformationPluginLoader.sharedInstance + 4);
  *&v22 = v10;
  *(&v22 + 1) = v11;
  *&v21[0] = v12;
  *(&v21[0] + 1) = v13;
  v15 = *(*v14 + 224);

  v16 = v15(&v22, v21, a3, 0);

  specialized Collection.first.getter(v16, &v22);

  if (v23)
  {
    outlined init with take of Transforming(&v22, v24);
    outlined init with copy of Transforming(v24, &v22);
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;
    outlined init with take of Transforming(&v22, v17 + 32);
    Transformer.init(transform:)(partial apply for closure #1 in static Transformation.transformer<A, B>(from:to:lengthLimit:), v17, a4, a5, v21);
    result = __swift_destroy_boxed_opaque_existential_0(v24);
    v19 = v21[0];
    v20 = v21[1];
  }

  else
  {
    result = outlined destroy of Transforming?(&v22);
    v19 = 0uLL;
    v20 = 0uLL;
  }

  *a6 = v19;
  a6[1] = v20;
  return result;
}

uint64_t closure #1 in static Transformation.transformer<A, B>(from:to:lengthLimit:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v10 = type metadata accessor for Optional();
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v14 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v22[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  (*(v13 + 24))(v23, v22, v14, v13);
  result = __swift_destroy_boxed_opaque_existential_0(v22);
  if (!v5)
  {
    v17 = v21;
    v18 = v24;
    outlined init with copy of Any(v23, v22);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v12, 0, 1, a4);
      __swift_destroy_boxed_opaque_existential_0(v23);
      return (*(*(a4 - 8) + 32))(v18, v12, a4);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v12, 1, 1, a4);
      (*(v17 + 8))(v12, v10);
      lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
      swift_allocError();
      *v19 = 0xD000000000000026;
      *(v19 + 8) = 0x80000001DD26A820;
      *(v19 + 16) = 0;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0(v23);
    }
  }

  return result;
}

uint64_t static Transformation.resolve(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v7[0] = v1;
  v7[1] = v2;
  v7[2] = v3;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 216);

  v5(v7);
}

uint64_t static Transformation.register(transformation:)(uint64_t a1)
{
  if (one-time initialization token for sharedInstance != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 184);

  v3(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of Transforming?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12Transforming_pSgMd, &_s13SiriUtilities12Transforming_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for Transformation(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  MEMORY[0x1E12A9750](*a1);
  v33 = v6;
  v34 = v5;
  String.hash(into:)();
  v32 = v7;
  MEMORY[0x1E12A9750](v7);
  v30 = v9;
  v31 = v8;
  String.hash(into:)();
  v29 = v11;
  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = a2 + 56;
  v14 = -1 << *(a2 + 32);
  v15 = v12 & ~v14;
  if (((*(a2 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v28 = v10;
  v16 = ~v14;
  v17 = *(a2 + 48);
  while (1)
  {
    v18 = (v17 + (v15 << 6));
    if (v4 == *v18)
    {
      v19 = v18[3];
      v20 = v18[4];
      v22 = v18[5];
      v21 = v18[6];
      v23 = v18[7];
      v24 = v18[1] == v34 && v18[2] == v33;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v19 == v32)
      {
        v25 = v20 == v31 && v22 == v30;
        if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v26 = v21 == v28 && v23 == v29;
          if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }
      }
    }

    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t one-time initialization function for lineIn()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.lineIn = result;
  *algn_1EDB28AC8 = v1;
  return result;
}

uint64_t one-time initialization function for builtInMic()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.builtInMic = result;
  unk_1EDB28B60 = v1;
  return result;
}

uint64_t one-time initialization function for wiredHeadsetMic()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.wiredHeadsetMic = result;
  *algn_1EDB28B18 = v1;
  return result;
}

uint64_t one-time initialization function for bluetoothHandsFreeDevice()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.bluetoothHandsFreeDevice = result;
  unk_1EDB28AE0 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.bluetoothHandsFreeDevice = result;
  unk_1EDB28420 = v1;
  return result;
}

uint64_t one-time initialization function for usbAudio()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.usbAudio = result;
  *algn_1EDB28B78 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.usbAudio = result;
  *algn_1EDB284D8 = v1;
  return result;
}

uint64_t one-time initialization function for carAudio()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.carAudio = result;
  unk_1EDB28B90 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.carAudio = result;
  unk_1EDB284F0 = v1;
  return result;
}

uint64_t one-time initialization function for bluetoothDoAPDevice()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.bluetoothDoAPDevice = result;
  unk_1EDB28AF8 = v1;
  return result;
}

uint64_t one-time initialization function for carJarvisDevice()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioSource.carJarvisDevice = result;
  unk_1EDB28B30 = v1;
  return result;
}

uint64_t one-time initialization function for knownValues()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11AudioSourceVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11AudioSourceVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD268540;
  if (one-time initialization token for lineIn != -1)
  {
    swift_once();
  }

  v1 = *algn_1EDB28AC8;
  *(inited + 32) = static AudioSource.lineIn;
  *(inited + 40) = v1;
  v2 = one-time initialization token for builtInMic;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = unk_1EDB28B60;
  *(inited + 48) = static AudioSource.builtInMic;
  *(inited + 56) = v3;
  v4 = one-time initialization token for wiredHeadsetMic;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_1EDB28B18;
  *(inited + 64) = static AudioSource.wiredHeadsetMic;
  *(inited + 72) = v5;
  v6 = one-time initialization token for bluetoothHandsFreeDevice;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = unk_1EDB28AE0;
  *(inited + 80) = static AudioSource.bluetoothHandsFreeDevice;
  *(inited + 88) = v7;
  v8 = one-time initialization token for usbAudio;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *algn_1EDB28B78;
  *(inited + 96) = static AudioSource.usbAudio;
  *(inited + 104) = v9;
  v10 = one-time initialization token for carAudio;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_1EDB28B90;
  *(inited + 112) = static AudioSource.carAudio;
  *(inited + 120) = v11;
  v12 = one-time initialization token for bluetoothDoAPDevice;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = unk_1EDB28AF8;
  *(inited + 128) = static AudioSource.bluetoothDoAPDevice;
  *(inited + 136) = v13;
  v14 = one-time initialization token for carJarvisDevice;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_1EDB28B30;
  *(inited + 144) = static AudioSource.carJarvisDevice;
  *(inited + 152) = v15;
  *(inited + 160) = 0x6E776F6E6B6E55;
  *(inited + 168) = 0xE700000000000000;
  v23 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 9, 0);
  for (i = 0; i != 144; i += 16)
  {
    v18 = *(inited + i + 32);
    v17 = *(inited + i + 40);
    v20 = *(v23 + 16);
    v19 = *(v23 + 24);

    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
    }

    *(v23 + 16) = v20 + 1;
    v21 = v23 + 16 * v20;
    *(v21 + 32) = v18;
    *(v21 + 40) = v17;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v23);
  static AudioSource.knownValues = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12ResponseModeVGMd, "2T");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD268800;
  if (one-time initialization token for displayOnly != -1)
  {
    swift_once();
  }

  v1 = *algn_1EDB28A30;
  *(inited + 32) = static ResponseMode.displayOnly;
  *(inited + 40) = v1;
  v2 = one-time initialization token for displayForward;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_1EDB289E8;
  *(inited + 48) = static ResponseMode.displayForward;
  *(inited + 56) = v3;
  v4 = one-time initialization token for voiceForward;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = unk_1EDB28A00;
  *(inited + 64) = static ResponseMode.voiceForward;
  *(inited + 72) = v5;
  v6 = one-time initialization token for voiceOnly;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = unk_1EDB289C8;
  *(inited + 80) = static ResponseMode.voiceOnly;
  *(inited + 88) = v7;
  v33 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v8 = v33;
  v10 = *(inited + 32);
  v9 = *(inited + 40);
  v11 = *(v33 + 16);
  v12 = *(v33 + 24);
  v13 = v11 + 1;

  if (v11 >= v12 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1);
    v8 = v33;
  }

  *(v8 + 16) = v13;
  v14 = v8 + 16 * v11;
  *(v14 + 32) = v10;
  *(v14 + 40) = v9;
  v16 = *(inited + 48);
  v15 = *(inited + 56);
  v17 = *(v8 + 24);
  v18 = v11 + 2;

  if (v13 >= v17 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18, 1);
    v8 = v33;
  }

  *(v8 + 16) = v18;
  v19 = v8 + 16 * v13;
  *(v19 + 32) = v16;
  *(v19 + 40) = v15;
  v21 = *(inited + 64);
  v20 = *(inited + 72);
  v23 = *(v8 + 16);
  v22 = *(v8 + 24);
  v24 = v23 + 1;

  if (v23 >= v22 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
  }

  v25 = v33;
  *(v33 + 16) = v24;
  v26 = v33 + 16 * v23;
  *(v26 + 32) = v21;
  *(v26 + 40) = v20;
  v28 = *(inited + 80);
  v27 = *(inited + 88);
  v29 = *(v33 + 24);
  v30 = v23 + 2;

  if (v24 >= v29 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30, 1);
    v25 = v33;
  }

  *(v25 + 16) = v30;
  v31 = v25 + 16 * v24;
  *(v31 + 32) = v28;
  *(v31 + 40) = v27;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v25);
  static ResponseMode.knownValues = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities16AudioDestinationVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities16AudioDestinationVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD2698A0;
  if (one-time initialization token for builtInSpeaker != -1)
  {
    swift_once();
  }

  v1 = unk_1EDB28488;
  *(inited + 32) = static AudioDestination.builtInSpeaker;
  *(inited + 40) = v1;
  v2 = one-time initialization token for builtInReceiver;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = unk_1EDB28470;
  *(inited + 48) = static AudioDestination.builtInReceiver;
  *(inited + 56) = v3;
  v4 = one-time initialization token for headphones;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = unk_1EDB284B8;
  *(inited + 64) = static AudioDestination.headphones;
  *(inited + 72) = v5;
  v6 = one-time initialization token for bluetoothHandsFreeDevice;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = unk_1EDB28420;
  *(inited + 80) = static AudioDestination.bluetoothHandsFreeDevice;
  *(inited + 88) = v7;
  v8 = one-time initialization token for bluetoothLEDevice;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *algn_1EDB28458;
  *(inited + 96) = static AudioDestination.bluetoothLEDevice;
  *(inited + 104) = v9;
  v10 = one-time initialization token for bluetoothA2DPDevice;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_1EDB28440;
  *(inited + 112) = static AudioDestination.bluetoothA2DPDevice;
  *(inited + 120) = v11;
  v12 = one-time initialization token for usbAudio;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *algn_1EDB284D8;
  *(inited + 128) = static AudioDestination.usbAudio;
  *(inited + 136) = v13;
  v14 = one-time initialization token for carAudio;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_1EDB284F0;
  *(inited + 144) = static AudioDestination.carAudio;
  *(inited + 152) = v15;
  v16 = one-time initialization token for hdmi;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = *algn_1EDB28408;
  *(inited + 160) = static AudioDestination.hdmi;
  *(inited + 168) = v17;
  v18 = one-time initialization token for other;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_1EDB283F0;
  *(inited + 176) = static AudioDestination.other;
  *(inited + 184) = v19;
  v27 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 10, 0);
  for (i = 0; i != 160; i += 16)
  {
    v22 = *(inited + i + 32);
    v21 = *(inited + i + 40);
    v24 = *(v27 + 16);
    v23 = *(v27 + 24);

    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
    }

    *(v27 + 16) = v24 + 1;
    v25 = v27 + 16 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v27);
  static AudioDestination.knownValues = result;
  return result;
}

uint64_t AudioSource.aceValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AudioSource.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t AudioSource.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_5_1();
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static AudioSource.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int AudioSource.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioSource and conformance AudioSource()
{
  result = lazy protocol witness table cache variable for type AudioSource and conformance AudioSource;
  if (!lazy protocol witness table cache variable for type AudioSource and conformance AudioSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioSource and conformance AudioSource);
  }

  return result;
}

uint64_t static Logger.withSignpost<A>(name:log:completion:)(uint64_t a1, uint64_t a2, int a3, void *a4, void (*a5)(uint64_t))
{
  v21 = a3;
  v20[0] = a1;
  v20[1] = a2;
  v7 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_5_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OS_os_log.signpostsEnabled.getter();
  if ((v13 & 1) == 0)
  {
    return (a5)(v13, v14);
  }

  v15 = a4;
  OSSignpostID.init(log:)();
  v16 = static os_signpost_type_t.begin.getter();
  v17 = OUTLINED_FUNCTION_5_9(v16, &dword_1DD1FF000);
  a5(v17);
  v18 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_5_9(v18, &dword_1DD1FF000);
  return (*(v9 + 8))(v12, v7);
}

void static SiriUtilitiesCrashHelper.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.logger);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v16 = v11;
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v12 = 136315650;
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a6;
    *(v12 + 22) = 2080;
    *(v12 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    _os_log_impl(&dword_1DD1FF000, v10, v16, "FatalError at %s:%lu - %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12AA0F0](v17, -1, -1);
    MEMORY[0x1E12AA0F0](v12, -1, -1);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t Logger.Subsystem.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Subsystem.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Logger.Subsystem@<X0>(void *a1@<X8>)
{
  result = Logger.Subsystem.rawValue.getter();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

SiriUtilities::Logger::Category_optional __swiftcall Logger.Category.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Category.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t Logger.Category.rawValue.getter()
{
  v1 = 0x6F4C6E6967756C50;
  if (*v0 != 1)
  {
    v1 = 0x6D6E6F7269766E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656974696C697455;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Logger.Category@<X0>(uint64_t *a1@<X8>)
{
  result = Logger.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

id static Logger.log.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t one-time initialization function for logger(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return Logger.init(_:)();
}

uint64_t static Logger.logger.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t static Logger.makeSignpostID(log:)(void *a1)
{
  v1 = a1;

  return OSSignpostID.init(log:)();
}

uint64_t static Logger.begin(_:log:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.begin(_:_:log:)()
{
  OUTLINED_FUNCTION_3_11();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_0_20();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.event(_:log:)()
{
  v0 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_5_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  OUTLINED_FUNCTION_0_20();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v2 + 8))(v5, v0);
}

uint64_t static Logger.end(_:_:log:)()
{
  OUTLINED_FUNCTION_3_11();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_0_20();

  return os_signpost(_:dso:log:name:signpostID:)();
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Logger.Subsystem and conformance Logger.Subsystem()
{
  result = lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem;
  if (!lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Logger.Category and conformance Logger.Category()
{
  result = lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category;
  if (!lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Logger.Category(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Logger(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t one-time initialization function for displayOnly()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ResponseMode.displayOnly = result;
  *algn_1EDB28A30 = v1;
  return result;
}

uint64_t one-time initialization function for displayForward()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ResponseMode.displayForward = result;
  *algn_1EDB289E8 = v1;
  return result;
}

uint64_t one-time initialization function for voiceForward()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ResponseMode.voiceForward = result;
  unk_1EDB28A00 = v1;
  return result;
}

uint64_t one-time initialization function for voiceOnly()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ResponseMode.voiceOnly = result;
  unk_1EDB289C8 = v1;
  return result;
}

uint64_t ResponseMode.aceValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResponseMode.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t ResponseMode.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_5_1();
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int ResponseMode.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode()
{
  result = lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode;
  if (!lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode);
  }

  return result;
}

uint64_t static NamedTransformerLoggingIdentity.identity<A>(name:)@<X0>(uint64_t a1@<X0>, BOOL *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = String.init<A>(_:)();
  v9 = v8;
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  v11 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of static NamedTransformerLoggingIdentity.identity<A>(name:), v10);

  v13 = 0;
  if (v11)
  {
    v13 = v11 == 1;
  }

  *a4 = v13;
  return result;
}

SiriUtilities::NamedTransformerLoggingIdentity_optional __swiftcall NamedTransformerLoggingIdentity.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NamedTransformerLoggingIdentity.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t NamedTransformerLoggingIdentity.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t lazy protocol witness table accessor for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity()
{
  result = lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity;
  if (!lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity;
  if (!lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NamedTransformerLoggingIdentity and conformance NamedTransformerLoggingIdentity);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NamedTransformerLoggingIdentity@<X0>(uint64_t *a1@<X8>)
{
  result = NamedTransformerLoggingIdentity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NamedTransformerLoggingIdentity(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t PThreadMutex.__allocating_init(name:abortOnFail:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  PThreadMutex.init(name:abortOnFail:)(a1, a2, v3);
  return v6;
}

uint64_t PThreadMutex.init(name:abortOnFail:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v13;
    (*(v9 + 8))(v11, v8);
  }

  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3 & 1;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_5(v14, static Logger.logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_11_9();
    v11 = OUTLINED_FUNCTION_8_8();
    v39 = v11;
    *v17 = 136315138;
    v18 = *(v4 + 40);
    v19 = *(v4 + 48);

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v39);

    *(v17 + 4) = v20;
    OUTLINED_FUNCTION_17_3(&dword_1DD1FF000, v21, v22, "PThreadMutex#init created mutex: %s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_27();
  }

  v23 = swift_slowAlloc();
  *(v4 + 16) = v23;
  v24 = pthread_mutex_init(v23, 0);
  OUTLINED_FUNCTION_15_1();
  if (((*(v25 + 200))() & 1) == 0)
  {
    return v4;
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  OUTLINED_FUNCTION_6_11();
  MEMORY[0x1E12A8C40](0xD00000000000002DLL);
  v38[3] = v24;
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A8C40](v26);

  v27 = OUTLINED_FUNCTION_3_12();
  MEMORY[0x1E12A8C40](v27, 0xE500000000000000);
  v28 = *(v4 + 40);
  v29 = *(v4 + 48);

  MEMORY[0x1E12A8C40](v28, v29);

  v30 = v40;
  OUTLINED_FUNCTION_12_6();
  if (!v31)
  {
    v32 = v39;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_11_9();
      v39 = OUTLINED_FUNCTION_7_9();
      *v11 = 136315138;
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v30, &v39);

      *(v11 + 4) = v35;
      OUTLINED_FUNCTION_5_10(&dword_1DD1FF000, v36, v34, "%s");
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_2_13();
    }

    else
    {
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t PThreadMutex.deinit()
{
  v2 = v0;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_5(v3, static Logger.logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_11_9();
    v1 = OUTLINED_FUNCTION_8_8();
    v22[0] = v1;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 40), *(v2 + 48), v22);
    OUTLINED_FUNCTION_17_3(&dword_1DD1FF000, v7, v8, "PThreadMutex#deinit for mutex: %s");
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_27();
  }

  pthread_mutex_destroy(*(v2 + 16));
  OUTLINED_FUNCTION_15_1();
  if (((*(v9 + 200))() & 1) == 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9_6();
  _StringGuts.grow(_:)(57);
  OUTLINED_FUNCTION_6_11();
  MEMORY[0x1E12A8C40](0xD000000000000030);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A8C40](v10);

  v11 = OUTLINED_FUNCTION_3_12();
  MEMORY[0x1E12A8C40](v11, 0xE500000000000000);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);

  MEMORY[0x1E12A8C40](v12, v13);

  v14 = v22[1];
  OUTLINED_FUNCTION_12_6();
  if (!v15)
  {
    v16 = v22[0];

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_11_9();
      v22[0] = OUTLINED_FUNCTION_7_9();
      *v1 = 136315138;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v14, v22);

      *(v1 + 4) = v19;
      OUTLINED_FUNCTION_5_10(&dword_1DD1FF000, v20, v18, "%s");
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_2_13();
    }

    else
    {
    }

LABEL_11:
    OUTLINED_FUNCTION_27();

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t PThreadMutex.__deallocating_deinit()
{
  PThreadMutex.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

Swift::Bool __swiftcall PThreadMutex.lock()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_5(v2, static Logger.logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_8_8();
    v28 = v6;
    *v5 = 136315394;
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 40), *(v1 + 48), &v28);
    OUTLINED_FUNCTION_10_8(v7);
    OUTLINED_FUNCTION_18_3(&dword_1DD1FF000, v8, v9, "PThreadMutex#lock %s lockCount: %d");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  pthread_mutex_lock(*(v1 + 16));
  OUTLINED_FUNCTION_15_1();
  v11 = (*(v10 + 200))();
  if (v11)
  {
    OUTLINED_FUNCTION_9_6();
    _StringGuts.grow(_:)(54);
    OUTLINED_FUNCTION_6_11();
    MEMORY[0x1E12A8C40](0xD00000000000002DLL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A8C40](v12);

    v13 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x1E12A8C40](v13, 0xE500000000000000);
    MEMORY[0x1E12A8C40](*(v1 + 40), *(v1 + 48));
    OUTLINED_FUNCTION_12_6();
    if (!v14)
    {

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_11_9();
        v28 = OUTLINED_FUNCTION_8_8();
        v21 = OUTLINED_FUNCTION_16_3(4.8149e-34, v28, v18, v19, v20);

        *(v17 + 4) = v21;
        OUTLINED_FUNCTION_15_5(&dword_1DD1FF000, v22, v23, "%s");
        OUTLINED_FUNCTION_1_15();
        OUTLINED_FUNCTION_27();
      }

      else
      {
      }

      return (v11 & 1) == 0;
    }
  }

  else
  {
    *(v1 + 24) = pthread_self();
    v24 = *(v1 + 32);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      *(v1 + 32) = v26;
      return (v11 & 1) == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall PThreadMutex.unlock()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_5(v2, static Logger.logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_8_8();
    v28 = v6;
    *v5 = 136315394;
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 40), *(v1 + 48), &v28);
    OUTLINED_FUNCTION_10_8(v7);
    OUTLINED_FUNCTION_18_3(&dword_1DD1FF000, v8, v9, "PThreadMutex#unlock %s lockCount: %d");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  pthread_mutex_unlock(*(v1 + 16));
  OUTLINED_FUNCTION_15_1();
  v11 = (*(v10 + 200))();
  if (v11)
  {
    OUTLINED_FUNCTION_9_6();
    _StringGuts.grow(_:)(58);
    OUTLINED_FUNCTION_6_11();
    MEMORY[0x1E12A8C40](0xD000000000000031);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A8C40](v12);

    v13 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x1E12A8C40](v13, 0xE500000000000000);
    MEMORY[0x1E12A8C40](*(v1 + 40), *(v1 + 48));
    OUTLINED_FUNCTION_12_6();
    if (!v14)
    {

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_11_9();
        v28 = OUTLINED_FUNCTION_8_8();
        v21 = OUTLINED_FUNCTION_16_3(4.8149e-34, v28, v18, v19, v20);

        *(v17 + 4) = v21;
        OUTLINED_FUNCTION_15_5(&dword_1DD1FF000, v22, v23, "%s");
        OUTLINED_FUNCTION_1_15();
        OUTLINED_FUNCTION_27();
      }

      else
      {
      }

      return (v11 & 1) == 0;
    }
  }

  else
  {
    v24 = *(v1 + 32);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (!v25)
    {
      *(v1 + 32) = v26;
      if (!v26)
      {
        *(v1 + 24) = 0;
      }

      return (v11 & 1) == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall PThreadMutex.getName()()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t static PThreadMutex.mutexCheckIsLockedOnThisThread(mutex:)(_BYTE *a1)
{
  v3 = (*(*a1 + 224))();
  v4 = pthread_self();
  if (v3)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v5)
  {
    return v6;
  }

  _StringGuts.grow(_:)(78);
  v7 = MEMORY[0x1E12A8C40](0xD00000000000002FLL, 0x80000001DD26B030);
  v8 = (*(*a1 + 240))(v7);
  MEMORY[0x1E12A8C40](v8);

  OUTLINED_FUNCTION_6_11();
  MEMORY[0x1E12A8C40](0xD00000000000001DLL);
  if (a1[56] != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_11_9();
      v12 = OUTLINED_FUNCTION_7_9();
      v20 = OUTLINED_FUNCTION_19_3(4.8149e-34, v12, v13, v14, v15, v16, v17, v18, v19, v12);

      *(v1 + 4) = v20;
      OUTLINED_FUNCTION_5_10(&dword_1DD1FF000, v21, v11, "%s");
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_2_13();
    }

    else
    {
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t static PThreadMutex.mutexCheckIsNotLockedOnThisThread(mutex:)(_BYTE *a1)
{
  v3 = (*(*a1 + 224))();
  v4 = pthread_self();
  if (v3)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  if (!v5)
  {
    return v6;
  }

  _StringGuts.grow(_:)(82);
  v7 = MEMORY[0x1E12A8C40](0xD00000000000002FLL, 0x80000001DD26B030);
  v8 = (*(*a1 + 240))(v7);
  MEMORY[0x1E12A8C40](v8);

  OUTLINED_FUNCTION_6_11();
  MEMORY[0x1E12A8C40](0xD000000000000021);
  if (a1[56] != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_11_9();
      v12 = OUTLINED_FUNCTION_7_9();
      v20 = OUTLINED_FUNCTION_19_3(4.8149e-34, v12, v13, v14, v15, v16, v17, v18, v19, v12);

      *(v1 + 4) = v20;
      OUTLINED_FUNCTION_5_10(&dword_1DD1FF000, v21, v11, "%s");
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_2_13();
    }

    else
    {
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t closure #1 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = type metadata accessor for Result();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v7 - v3);
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
  v5 = swift_allocError();
  CancellationError.init()();
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  ManagedContinuation.resume(with:)(v4);
  return (*(v2 + 8))(v4, v1);
}

uint64_t ManagedContinuation.__allocating_init(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = type metadata accessor for CheckedContinuation();
  v4 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_5_0();
  v6 = v5;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_7();
  v8 = ManagedContinuation.__allocating_init()();
  OUTLINED_FUNCTION_5_11();
  (*(v9 + 32))(v1, a1, v3);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_7();
  v11 = *(v10 + 88);
  swift_beginAccess();
  v12 = *(v6 + 40);

  v12(v8 + v11, v1, v4);
  swift_endAccess();

  return v8;
}

uint64_t ManagedContinuation.resume(throwing:)(void *a1)
{
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for Result();
  OUTLINED_FUNCTION_5_0();
  v4 = v3;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  *(&v10 - v6) = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a1;
  ManagedContinuation.resume(with:)(v7);
  return (*(v4 + 8))(v7, v2);
}

uint64_t type metadata completion function for ManagedContinuation(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Result();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t Transformer<>.transformer.unsafeMutableAddressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_61();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_58();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_56();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_55();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_54();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_53();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_52();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_51();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_50_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_45_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_43_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_42_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_40_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_37_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_35_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_34_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_33_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_29_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_28_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_25_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_21_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_60();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_59();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_57();
  return Transformer<>.transformer.unsafeMutableAddressor(v3, v4, v5);
}

uint64_t Transformer<>.transformer.unsafeMutableAddressor()
{
  OUTLINED_FUNCTION_49_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_48_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_47_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_46_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_44_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_41_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_39_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_38_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_36_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_32_1();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_31_1();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_30_1();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_27_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_26_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_24_2();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_23_3();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_22_0();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_20_3();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_19_4();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_18_4();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_17_4();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_16_4();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_15_6();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_14_5();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_13_6();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_12_8();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_11_10();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_10_10();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_9_8();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_8_9();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_7_10();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_6_12();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_5_12();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_4_11();
  return Transformer<>.transformer.unsafeMutableAddressor(v0, v1, v2);
}

uint64_t Transformer<>.transformer.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

void *one-time initialization function for transformer()
{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_2_14();
  static Transformer<>.transformer = result;
  *result = closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer;
  result[1] = 0;
  result[2] = specialized closure #1 in Transformer.init(transform:);
  result[3] = 0;
  return result;
}

uint64_t static Transformer<>.transformer.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_61();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_58();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_56();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_55();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_54();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_53();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_52();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_51();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_50_0();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_45_0();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_43_0();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_42_0();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_40_0();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_37_0();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_35_0();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_34_0();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_33_0();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_29_2();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_28_2();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_25_2();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_21_2();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_60();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_59();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_57();
  return static Transformer<>.transformer.getter(v3, v4, v5);
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *x8_0@<X8>)
{
  return closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(x8_0);
}

{
  return closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(x8_0);
}

{
  return closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(x8_0);
}

{
  return closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(x8_0);
}

{
  return closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(x8_0);
}

uint64_t static Transformer<>.transformer.getter()
{
  OUTLINED_FUNCTION_49_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_48_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_47_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_46_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_44_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_41_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_39_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_38_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_36_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_32_1();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_31_1();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_30_1();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_27_2();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_26_2();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_24_2();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_23_3();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_22_0();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_20_3();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_19_4();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_18_4();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_17_4();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_16_4();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_15_6();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_14_5();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_13_6();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_12_8();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_11_10();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_10_10();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_9_8();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_8_9();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_7_10();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_6_12();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_5_12();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_4_11();
  return static Transformer<>.transformer.getter(v0, v1, v2);
}

unsigned int *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if ((v2 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2;
  }

  return result;
}

double closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<D0>(int *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<S0>(int *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

double closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<D0>(_DWORD *a1@<X0>, double *a2@<X8>, unint64_t a3@<D0>)
{
  LODWORD(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

float closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<S0>(unsigned int *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a3@<X8>)
{
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a3 = result;
  a3[1] = v5;
  return result;
}

{
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(void *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result >> 31)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

{
  if (HIDWORD(*result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

double closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<D0>(unint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<S0>(unint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(double *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 2147483650.0)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v2 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 4294967300.0)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(double *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 1.84467441e19)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(void *a1@<X8>, double *a2@<X0>)
{
  v2 = *a2;
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    OUTLINED_FUNCTION_2(a1);
    return;
  }

LABEL_7:
  __break(1u);
}

float closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<S0>(double *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(void *a2@<X8>)
{
  result = Double.write<A>(to:)();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

{
  result = Float.write<A>(to:)();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

float *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(float *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -2147500000.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 2147500000.0)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v2 = *result;
  if ((*result & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 4295000000.0)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

float *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(float *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 1.8447e19)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<D0>(float *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

void closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(void *a1@<X8>, float *a2@<X0>)
{
  v2 = *a2;
  if ((*a2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.2234e18)
  {
    OUTLINED_FUNCTION_2(a1);
    return;
  }

LABEL_7:
  __break(1u);
}

_BYTE *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 1702195828;
  if (!*result)
  {
    v2 = 0x65736C6166;
  }

  v3 = 0xE500000000000000;
  if (*result)
  {
    v3 = 0xE400000000000000;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t *closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = HIBYTE(v4) & 0xF;
  v6 = *result & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v7 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_63;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {

    v9 = specialized _parseInteger<A, B>(ascii:radix:)(v3, v4, 10);
    v29 = v28;

    if (v29)
    {
      goto LABEL_63;
    }

LABEL_65:
    *a2 = v9;
    return result;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      result = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v16 = result + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            result = (result + 1);
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v31 = v5;
      if (v5)
      {
LABEL_63:
        lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
        swift_allocError();
        *v27 = 0xD00000000000001CLL;
        *(v27 + 8) = 0x80000001DD26B190;
        *(v27 + 16) = 0;
        return swift_willThrow();
      }

      goto LABEL_65;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = result + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v30[0] = *result;
  v30[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      if (v5)
      {
        v9 = 0;
        v24 = v30;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v9 = 0;
        v13 = v30 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v5)
  {
    if (--v5)
    {
      v9 = 0;
      v19 = v30 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  result = _sSdySdSgxcSyRzlufCSS_Tt0g5(v3, v4);
  if (v6)
  {
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v7 = 0xD00000000000001FLL;
    *(v7 + 8) = 0x80000001DD26B170;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t _sSdySdSgxcSyRzlufCSS_Tt0g5(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = specialized String.withCString<A>(_:)(a1, a2, &v4, MEMORY[0x1E69E7CD8], partial apply for closure #1 in closure #1 in Double.init<A>(_:));

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  result = _sSfySfSgxcSyRzlufCSS_Tt0g5(v3, v4);
  if ((result & 0x100000000) != 0)
  {
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v6 = 0xD00000000000001ELL;
    *(v6 + 8) = 0x80000001DD26B150;
    *(v6 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t _sSfySfSgxcSyRzlufCSS_Tt0g5(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = specialized String.withCString<A>(_:)(a1, a2, &v5, MEMORY[0x1E69E7CE0], partial apply for closure #1 in closure #1 in Float.init<A>(_:));

  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | (!v2 << 32);
}

unsigned __int8 closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<W0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = String.lowercased()();
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.trimmingCharacters(in:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  result = Bool.init(_:)(v9).value;
  if (result == 2)
  {
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v11 = 0xD00000000000001DLL;
    *(v11 + 8) = 0x80000001DD26B130;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t static Transformer<>.transformer.getter@<X0>(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = *a2;
  v7 = **a2;
  v8 = (*a2)[3];
  *a4 = v7;
  *(a4 + 8) = *(v6 + 1);
  *(a4 + 24) = v8;
}

uint64_t specialized closure #1 in Transformer.init(transform:)()
{
  lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  return swift_willThrow();
}

{
  v0 = lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
  v1 = OUTLINED_FUNCTION_27_0(&type metadata for TransformationError, v0);
  return OUTLINED_FUNCTION_0_21(v1, v2);
}

{
  lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  swift_willThrow();
  return 0;
}

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X2>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = a2()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 < 0x21 && ((0x100003E01uLL >> v7) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

LABEL_14:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v5)
    {
      return v12;
    }

    return v9;
  }

  v11[0] = a1;
  v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

  v6 = v11;
LABEL_10:
  v8 = a4(v6, a3);
  if (!v8)
  {
    return 0;
  }

  return *v8 == 0;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(void *a1@<X8>)
{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(_DWORD *a1@<X8>)
{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(_BYTE *a1@<X8>)
{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = result & 1;
  }

  return result;
}

{
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v1)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

void closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(void *a1@<X8>)
{
  sub_1DD216A30(a1);
}

{
  sub_1DD216A4C(a1);
}

{
  sub_1DD2169E0(a1);
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(uint64_t *a2@<X8>)
{
  return sub_1DD216B3C(a2);
}

{
  return sub_1DD216ADC(a2);
}

{
  return sub_1DD216B0C(a2);
}

uint64_t specialized closure #1 in Transformer.init(transform:)@<X0>(_DWORD *a2@<X8>)
{
  return sub_1DD216C28(a2);
}

{
  return sub_1DD216BC8(a2);
}

{
  return sub_1DD216BF8(a2);
}

uint64_t specialized closure #1 in Transformer.init(transform:)(unsigned int *a1)
{
  return sub_1DD216A84(a1);
}

{
  return sub_1DD216B9C(a1);
}

{
  return sub_1DD216C5C(a1);
}

{
  return sub_1DD216CB4(a1);
}

uint64_t specialized closure #1 in Transformer.init(transform:)(uint64_t a1)
{
  return sub_1DD216AB0(a1);
}

{
  return sub_1DD216B70(a1);
}

{
  return sub_1DD216C88(a1);
}

{
  return sub_1DD216CE0(a1);
}

uint64_t static IdleTracker.defaultTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    OUTLINED_FUNCTION_8_10(&one-time initialization token for defaultTimeout);
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static IdleTracker.defaultTimeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void IdleTracker.__allocating_init(name:queue:timeout:timeoutAction:)()
{
  OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_10_11();
  IdleTracker.init(name:queue:timeout:timeoutAction:)();
}

void IdleTracker.init(name:queue:timeout:timeoutAction:)()
{
  OUTLINED_FUNCTION_15_7();
  v33 = v1;
  v34 = v2;
  v32 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_19_5();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_16();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_0();
  v12 = type metadata accessor for DispatchQoS();
  v13 = OUTLINED_FUNCTION_18_5(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_0();
  *&v0[OBJC_IVAR___SUIdleTracker_timer] = 0;
  *&v0[OBJC_IVAR___SUIdleTracker_refs] = MEMORY[0x1E69E7CC8];
  v14 = &v0[OBJC_IVAR___SUIdleTracker_name];
  v30 = v9;
  *v14 = v9;
  *(v14 + 1) = v7;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  OUTLINED_FUNCTION_3_13();
  v36[1] = v15;

  MEMORY[0x1E12A8C40](v9, v7);
  static DispatchQoS.default.getter();
  v36[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_15();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v16, v17, MEMORY[0x1E69E8040]);
  v31 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  v18 = _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  OUTLINED_FUNCTION_21_3(v36, v19, v18);
  v20 = OUTLINED_FUNCTION_20_4();
  v21(v20);
  *&v0[OBJC_IVAR___SUIdleTracker_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = OBJC_IVAR___SUIdleTracker_timeout;
  v23 = type metadata accessor for DispatchTimeInterval();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v0[v22], v32, v23);
  v25 = &v0[OBJC_IVAR___SUIdleTracker_timeoutAction];
  *v25 = v33;
  *(v25 + 1) = v34;
  OUTLINED_FUNCTION_9_9();

  MEMORY[0x1E12A8C40](v30, v7);

  v26 = type metadata accessor for DeadlockDetectingLock();
  OUTLINED_FUNCTION_13_7(v26);
  v27 = OUTLINED_FUNCTION_5_13();
  v28 = &v0[OBJC_IVAR___SUIdleTracker_lock];
  *(v28 + 3) = v26;
  *(v28 + 4) = &protocol witness table for DeadlockDetectingLock;
  *v28 = v27;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for IdleTracker(0);
  v29 = objc_msgSendSuper2(&v35, sel_init);
  IdleTracker.scheduleTimerIfIdle()();

  (*(v24 + 8))(v32, v23);
  OUTLINED_FUNCTION_14();
}

void IdleTracker.init(lock:name:queue:timeout:timeoutAction:)()
{
  OUTLINED_FUNCTION_15_7();
  v32 = v1;
  v33 = v2;
  v31 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v34 = v10;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_5_0();
  v29 = v12;
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_0();
  v15 = v14 - v13;
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_16();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_0();
  v17 = type metadata accessor for DispatchQoS();
  v18 = OUTLINED_FUNCTION_18_5(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8_0();
  *&v0[OBJC_IVAR___SUIdleTracker_timer] = 0;
  *&v0[OBJC_IVAR___SUIdleTracker_refs] = MEMORY[0x1E69E7CC8];
  v19 = &v0[OBJC_IVAR___SUIdleTracker_name];
  *v19 = v9;
  *(v19 + 1) = v7;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  OUTLINED_FUNCTION_3_13();
  v37 = v20;

  MEMORY[0x1E12A8C40](v9, v7);

  static DispatchQoS.default.getter();
  v36 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_15();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v21, v22, MEMORY[0x1E69E8040]);
  v28 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v15, *MEMORY[0x1E69E8090], v30);
  *&v0[OBJC_IVAR___SUIdleTracker_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = OBJC_IVAR___SUIdleTracker_timeout;
  v24 = type metadata accessor for DispatchTimeInterval();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v0[v23], v31, v24);
  v26 = &v0[OBJC_IVAR___SUIdleTracker_timeoutAction];
  *v26 = v32;
  *(v26 + 1) = v33;
  outlined init with copy of Transforming(v34, &v0[OBJC_IVAR___SUIdleTracker_lock]);
  v35.receiver = v0;
  v35.super_class = type metadata accessor for IdleTracker(0);

  v27 = objc_msgSendSuper2(&v35, sel_init);
  IdleTracker.scheduleTimerIfIdle()();

  (*(v25 + 8))(v31, v24);
  __swift_destroy_boxed_opaque_existential_0(v34);
  OUTLINED_FUNCTION_14();
}

void IdleTracker.__allocating_init(name:queue:timeoutSeconds:timeoutAction:)()
{
  OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_10_11();
  IdleTracker.init(name:queue:timeoutSeconds:timeoutAction:)();
}

void IdleTracker.init(name:queue:timeoutSeconds:timeoutAction:)()
{
  OUTLINED_FUNCTION_15_7();
  v1 = v0;
  v33 = v2;
  v34 = v3;
  v32 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_19_5();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_16();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_0();
  v13 = type metadata accessor for DispatchQoS();
  v14 = OUTLINED_FUNCTION_18_5(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_0();
  *&v0[OBJC_IVAR___SUIdleTracker_timer] = 0;
  *&v0[OBJC_IVAR___SUIdleTracker_refs] = MEMORY[0x1E69E7CC8];
  v15 = &v0[OBJC_IVAR___SUIdleTracker_name];
  *v15 = v10;
  *(v15 + 1) = v8;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  OUTLINED_FUNCTION_3_13();
  v36[1] = v16;

  MEMORY[0x1E12A8C40](v10, v8);
  static DispatchQoS.default.getter();
  v36[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_15();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(v17, v18, MEMORY[0x1E69E8040]);
  v31 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  v19 = _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  OUTLINED_FUNCTION_21_3(v36, v20, v19);
  v21 = OUTLINED_FUNCTION_20_4();
  v22(v21);
  *&v0[OBJC_IVAR___SUIdleTracker_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = OBJC_IVAR___SUIdleTracker_timeout;
  *&v1[OBJC_IVAR___SUIdleTracker_timeout] = v32;
  v24 = *MEMORY[0x1E69E7F48];
  type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_16();
  (*(v25 + 104))(&v1[v23], v24);
  v26 = &v1[OBJC_IVAR___SUIdleTracker_timeoutAction];
  *v26 = v33;
  *(v26 + 1) = v34;
  OUTLINED_FUNCTION_9_9();

  MEMORY[0x1E12A8C40](v10, v8);

  v27 = type metadata accessor for DeadlockDetectingLock();
  OUTLINED_FUNCTION_13_7(v27);
  v28 = OUTLINED_FUNCTION_5_13();
  v29 = &v1[OBJC_IVAR___SUIdleTracker_lock];
  *(v29 + 3) = v27;
  *(v29 + 4) = &protocol witness table for DeadlockDetectingLock;
  *v29 = v28;
  v35.receiver = v1;
  v35.super_class = type metadata accessor for IdleTracker(0);
  v30 = objc_msgSendSuper2(&v35, sel_init);
  IdleTracker.scheduleTimerIfIdle()();

  OUTLINED_FUNCTION_14();
}

uint64_t IdleTracker.init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_5_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_0();
  v10 = v9 - v8;
  ObjectType = swift_getObjectType();
  if (one-time initialization token for defaultTimeout != -1)
  {
    OUTLINED_FUNCTION_8_10(&one-time initialization token for defaultTimeout);
  }

  v12 = __swift_project_value_buffer(v4, static IdleTracker.defaultTimeout);
  (*(v6 + 16))(v10, v12, v4);
  v13 = (*(ObjectType + 136))(a1, a2, 0, v10, implicit closure #1 in variable initialization expression of static IdleTracker.defaultAction, 0);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t IdleTracker.idle.getter()
{
  v0 = OUTLINED_FUNCTION_16_5(OBJC_IVAR___SUIdleTracker_lock, v10, v12, v14, v16, v18);
  OUTLINED_FUNCTION_11_11(v0, v1, v2, v3, v4, v5, v6, v7, v11, v13, v15, v17, v19, v21[0], v21[1], v21[2], v21[3]);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_6_13();
  v8();
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v20;
}

uint64_t closure #1 in IdleTracker.idle.getter@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = OBJC_IVAR___SUIdleTracker_refs;
  result = swift_beginAccess();
  *a2 = *(*(a1 + v4) + 16) == 0;
  return result;
}

uint64_t IdleTracker.count.getter()
{
  v0 = OUTLINED_FUNCTION_16_5(OBJC_IVAR___SUIdleTracker_lock, v10, v12, v14, v16, v18);
  OUTLINED_FUNCTION_11_11(v0, v1, v2, v3, v4, v5, v6, v7, v11, v13, v15, v17, v19, v21[0], v21[1], v21[2], v21[3]);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_6_13();
  v8();
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v20;
}

uint64_t closure #1 in IdleTracker.count.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR___SUIdleTracker_refs;
  result = swift_beginAccess();
  *a2 = *(*(a1 + v4) + 16);
  return result;
}

uint64_t IdleTracker.track(name:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Transforming(v2 + OBJC_IVAR___SUIdleTracker_lock, v16);
  v5 = v17;
  v6 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v12 = v2;
  v13 = a1;
  v14 = a2;
  v7 = *(v6 + 24);
  v8 = type metadata accessor for AnyCancellable();
  v7(&v15, partial apply for closure #1 in IdleTracker.track(name:), &v11, v8, v5, v6);
  v9 = v15;
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v9;
}

uint64_t closure #1 in IdleTracker.track(name:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a4;
  v32 = a2;
  v34 = type metadata accessor for UUID();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = OBJC_IVAR___SUIdleTracker_timer;
  if (*&a1[OBJC_IVAR___SUIdleTracker_timer])
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.logger);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    v31 = v14;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = a3;
      v18 = v17;
      v36[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v13[OBJC_IVAR___SUIdleTracker_name], *&v13[OBJC_IVAR___SUIdleTracker_name + 8], v36);
      v19 = v31;
      _os_log_impl(&dword_1DD1FF000, v31, v15, "IdleTracker:%s detects active condition; cancelling existing timer", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v20 = v18;
      a3 = v30;
      MEMORY[0x1E12AA0F0](v20, -1, -1);
      MEMORY[0x1E12AA0F0](v16, -1, -1);
    }

    else
    {
    }

    *&a1[v11] = 0;
    swift_unknownObjectRelease();
  }

  UUID.init()();
  v21 = OBJC_IVAR___SUIdleTracker_refs;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *&a1[v21];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, a3, v10, isUniquelyReferenced_nonNull_native);
  *&a1[v21] = v37;
  swift_endAccess();
  v24 = v33;
  v23 = v34;
  (*(v6 + 16))(v33, v10, v34);
  v25 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  (*(v6 + 32))(v26 + v25, v24, v23);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v27 = a1;
  v28 = AnyCancellable.init(_:)();
  result = (*(v6 + 8))(v10, v23);
  *v35 = v28;
  return result;
}

uint64_t IdleTracker.track()()
{
  v1 = OUTLINED_FUNCTION_22_1();
  v2 = MEMORY[0x1E12A8BC0](v1);
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();

  return v3;
}

id IdleTracker.track(name:)(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))(v2);

  v4 = type metadata accessor for IdleTrackerActivity();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___SUIdleTrackerActivity_cancellable] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

id IdleTrackerActivity.__allocating_init(cancellable:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___SUIdleTrackerActivity_cancellable] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t one-time initialization function for defaultTimeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static IdleTracker.defaultTimeout);
  *__swift_project_value_buffer(v0, static IdleTracker.defaultTimeout) = 180;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t type metadata accessor for IdleTracker(uint64_t a1)
{
  result = type metadata singleton initialization cache for IdleTracker;
  if (!type metadata singleton initialization cache for IdleTracker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static IdleTracker.exitProcess()()
{
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD1FF000, v1, v2, "IdleTracker exiting process after idle timeout.", v3, 2u);
    MEMORY[0x1E12AA0F0](v3, -1, -1);
  }

  exit(0);
}

uint64_t IdleTracker.dump()()
{
  v1 = OUTLINED_FUNCTION_16_5(OBJC_IVAR___SUIdleTracker_lock, v11, v13, v15, v17, v19);
  OUTLINED_FUNCTION_11_11(v1, v2, v3, v4, v5, v6, v7, v8, v12, v14, v16, v18, v20, v22[0], v22[1], v22[2], v22[3]);
  v9 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_6_13();
  v9();
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v21;
}

uint64_t closure #1 in IdleTracker.dump()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = OBJC_IVAR___SUIdleTracker_refs;
  result = swift_beginAccess();
  v7 = *(a1 + v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v9;
    return result;
  }

  v12[9] = v2;
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v8, 0);
  v10 = specialized Sequence._copySequenceContents(initializing:)(v12, v9 + 4, v8, v7);
  v11 = v12[0];

  result = outlined consume of [String : Data].Iterator._Variant(v11);
  if (v10 == v8)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t IdleTracker.untrack(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_16_5(OBJC_IVAR___SUIdleTracker_lock, v6[0], v6[1], v7, v8, v9);
  v3 = v11;
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = v1;
  v8 = a1;
  (*(v4 + 24))(partial apply for closure #1 in IdleTracker.untrack(_:), v6, MEMORY[0x1E69E7CA8] + 8, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

void closure #1 in IdleTracker.untrack(_:)(uint64_t a1)
{
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)();
  swift_endAccess();

  IdleTracker.scheduleTimerIfIdle()();
}

void IdleTracker.scheduleTimerIfIdle()()
{
  OUTLINED_FUNCTION_15_7();
  type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_5_0();
  v78 = v2;
  v79 = v1;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v76 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v62 - v5;
  OUTLINED_FUNCTION_19_5();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_5_0();
  v74 = v7;
  v75 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_0();
  v73 = v9 - v8;
  OUTLINED_FUNCTION_19_5();
  v10 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_5_0();
  v72 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for OS_dispatch_source.TimerFlags();
  OUTLINED_FUNCTION_5_0();
  v70 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8_0();
  v21 = v20 - v19;
  v22 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_5_0();
  v24 = v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (&v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v62 - v29;
  v31 = OBJC_IVAR___SUIdleTracker_refs;
  swift_beginAccess();
  v71 = v0;
  if (!*(*&v0[v31] + 16))
  {
    v64 = v21;
    v65 = v16;
    v66 = v15;
    v67 = v30;
    v68 = v28;
    v69 = v24;
    v32 = v22;
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.logger);
    v34 = v71;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    v37 = os_log_type_enabled(v35, v36);
    v71 = v10;
    v63 = v32;
    if (v37)
    {
      v38 = v32;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v80[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v34[OBJC_IVAR___SUIdleTracker_name], *&v34[OBJC_IVAR___SUIdleTracker_name + 8], v80);
      *(v39 + 12) = 2080;
      v41 = v67;
      (*(v69 + 16))(v67, &v34[OBJC_IVAR___SUIdleTracker_timeout], v38);
      v42 = v41;
      v43 = String.init<A>(describing:)();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v80);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_1DD1FF000, v35, v36, "IdleTracker:%s detects idle condition; scheduling timer for %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12AA0F0](v40, -1, -1);
      MEMORY[0x1E12AA0F0](v39, -1, -1);
    }

    else
    {

      v42 = v67;
    }

    v46 = v65;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_source, 0x1E69E9630);
    v80[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    v47 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v48 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v70 + 8))(v47, v46);
    ObjectType = swift_getObjectType();
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v80[4] = partial apply for closure #1 in IdleTracker.scheduleTimerIfIdle();
    v80[5] = v50;
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 1107296256;
    v80[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v80[3] = &block_descriptor_1;
    v51 = _Block_copy(v80);

    v52 = v66;
    static DispatchQoS.unspecified.getter();
    v53 = v73;
    default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v51);
    (*(v74 + 8))(v53, v75);
    (*(v72 + 8))(v52, v71);

    v54 = v76;
    static DispatchTime.now()();
    v55 = v77;
    DispatchTime.advanced(by:)();
    v56 = v79;
    v57 = *(v78 + 8);
    v57(v54, v79);
    v70 = ObjectType;
    default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v42);
    v58 = v68;
    default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v68);
    MEMORY[0x1E12A9180](v55, v42, v58, ObjectType);
    v59 = *(v69 + 8);
    v60 = v58;
    v61 = v63;
    v59(v60, v63);
    v59(v42, v61);
    v57(v55, v56);
    OS_dispatch_source.resume()();
    *&v34[OBJC_IVAR___SUIdleTracker_timer] = v48;
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_14();
}

void closure #1 in IdleTracker.scheduleTimerIfIdle()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    IdleTracker.invokeTimeoutAction()();
  }
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t IdleTracker.invokeTimeoutAction()()
{
  v0 = OUTLINED_FUNCTION_16_5(OBJC_IVAR___SUIdleTracker_lock, v10, v12, v14, v16, v18);
  OUTLINED_FUNCTION_11_11(v0, v1, v2, v3, v4, v5, v6, v7, v11, v13, v15, v17, v19, v20[0], v20[1], v20[2], v20[3]);
  OUTLINED_FUNCTION_6_13();
  v8();
  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t closure #1 in IdleTracker.invokeTimeoutAction()(uint64_t a1)
{
  v2 = OBJC_IVAR___SUIdleTracker_refs;
  result = swift_beginAccess();
  if (!*(*(a1 + v2) + 16))
  {
    return (*(a1 + OBJC_IVAR___SUIdleTracker_timeoutAction))(result);
  }

  return result;
}

id IdleTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdleTrackerActivity.init(cancellable:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SUIdleTrackerActivity_cancellable] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IdleTrackerActivity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id IdleTracker.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata completion function for IdleTracker(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t dispatch thunk of IdleTracker.track(name:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 56) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in IdleTracker.track(name:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_18_5(v1);
  return IdleTracker.untrack(_:)(v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t one-time initialization function for tailspinRequestQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v5 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  v7[1] = 0;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static TailSpinManager.tailspinRequestQueue = result;
  return result;
}

void static TailSpinManager.createTailSpinFile(fileName:suiteName:options:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, Class isa, void (*a6)(void, void, void), uint64_t a7)
{
  if (!IsAppleInternalBuild())
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.logger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_22;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "TailSpinManager#createTailSpinFile refusing to generate tailspin file";
    goto LABEL_21;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
LABEL_13:
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.logger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_22;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "TailSpinManager#createTailSpinFile invalid param(s) passed in";
LABEL_21:
    _os_log_impl(&dword_1DD1FF000, v23, v24, v26, v25, 2u);
    MEMORY[0x1E12AA0F0](v25, -1, -1);
LABEL_22:

    a6(0, 0, 0);
    return;
  }

  v16 = [objc_allocWithZone(TailSpinHelper) init];
  v17 = MEMORY[0x1E12A8BC0](a1, a2);
  v18 = MEMORY[0x1E12A8BC0](a3, a4);
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (one-time initialization token for tailspinRequestQueue != -1)
  {
    OUTLINED_FUNCTION_1_17(&one-time initialization token for tailspinRequestQueue);
  }

  v19 = static TailSpinManager.tailspinRequestQueue;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  v28[4] = partial apply for closure #1 in static TailSpinManager.createTailSpinFile(fileName:suiteName:options:completion:);
  v28[5] = v20;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed String?) -> ();
  v28[3] = &block_descriptor_2;
  v21 = _Block_copy(v28);

  [v16 dumpTailSpinOutputToFile:v17 suiteName:v18 options:isa queue:v19 handler:v21];
  _Block_release(v21);
}

uint64_t closure #1 in static TailSpinManager.createTailSpinFile(fileName:suiteName:options:completion:)(char a1, uint64_t a2, unint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = 4271950;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = one-time initialization token for logger;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.logger);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 67109378;
    *(v12 + 4) = a1 & 1;
    *(v12 + 8) = 2080;
    *(v12 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v15);
    _os_log_impl(&dword_1DD1FF000, v10, v11, "TailSpinManager#createTailSpinFile status: %{BOOL}d, path: %s", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1E12AA0F0](v13, -1, -1);
    MEMORY[0x1E12AA0F0](v12, -1, -1);
  }

  a4(a1 & 1, v6, v7);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed String?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(a2, v5, v7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static TailSpinManager.deleteTailSpinFiles(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (IsAppleInternalBuild())
  {
    v4 = [objc_allocWithZone(TailSpinHelper) init];
    oslog = MEMORY[0x1E12A8BC0](a1, a2);
    if (one-time initialization token for tailspinRequestQueue != -1)
    {
      OUTLINED_FUNCTION_1_17(&one-time initialization token for tailspinRequestQueue);
    }

    [v4 clearDirectory_queue_];
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.logger);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DD1FF000, oslog, v6, "TailSpinManager#createTailSpinFile refusing to delete tailspin files", v7, 2u);
      MEMORY[0x1E12AA0F0](v7, -1, -1);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TailSpinManager(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

void _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_44_1(v2, v3, v4);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v0;
    OSSignpostID.init(log:)();
    v6 = static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_5_9(v6, &dword_1DD1FF000);
    OUTLINED_FUNCTION_12_10();
    v1();
    v7 = static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_5_9(v7, &dword_1DD1FF000);
    v8 = OUTLINED_FUNCTION_21_4();
    v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_12_10();
    v1();
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_14_4();
}

void _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZAA23PluginCapabilityCatalogCySo8NSBundleCG_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_14_6();
  type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v20;
    OSSignpostID.init(log:)();
    v25 = static os_signpost_type_t.begin.getter();
    v26 = OUTLINED_FUNCTION_10_12(v25, &dword_1DD1FF000);
    (v21)(&a10, v26);
    v27 = static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_10_12(v27, &dword_1DD1FF000);
    v28 = OUTLINED_FUNCTION_21_4();
    v29(v28);
  }

  else
  {
    v21(&a10);
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_14_4();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t key path setter for PluginCatalog.packageCache : PluginCatalog(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t PluginCatalog.__allocating_init(finder:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = (*(v1 + 120))(v5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t PluginCatalog.__allocating_init(packageCache:)(uint64_t a1)
{
  OUTLINED_FUNCTION_24_3();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PluginCatalog.__allocating_init(packages:)()
{
  OUTLINED_FUNCTION_24_3();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_8();
  PluginCatalog.init(packages:)(v1);
  return v0;
}

uint64_t PluginCatalog.init(packages:)(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (v29)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC8];
    while (v3 < *(a1 + 16))
    {
      outlined init with copy of PluginPackage(v4, &v32);
      v6 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, v33);
      v7 = OUTLINED_FUNCTION_8();
      v9 = v8(v7, v6);
      v11 = v10;
      outlined init with take of Transforming(&v32, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v5;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
      v15 = v5[2];
      v16 = (v14 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_17;
      }

      v18 = v13;
      v19 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS13SiriUtilities13PluginPackage_pGMd, &_ss17_NativeDictionaryVySS13SiriUtilities13PluginPackage_pGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
      {
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_19;
        }

        v18 = v20;
      }

      if (v19)
      {

        v5 = v30;
        v22 = (v30[7] + 40 * v18);
        __swift_destroy_boxed_opaque_existential_0(v22);
        outlined init with take of Transforming(v31, v22);
      }

      else
      {
        v5 = v30;
        v30[(v18 >> 6) + 8] |= 1 << v18;
        v23 = (v30[6] + 16 * v18);
        *v23 = v9;
        v23[1] = v11;
        outlined init with take of Transforming(v31, v30[7] + 40 * v18);
        v24 = v30[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_18;
        }

        v30[2] = v26;
      }

      ++v3;
      v4 += 40;
      if (v29 == v3)
      {

        v1 = v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC8];
LABEL_15:
    *(v1 + 16) = v5;
    return v1;
  }

  return result;
}

uint64_t PluginCatalog.getPluginPackage(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_7();
  v7 = (*(v6 + 88))();
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) != 0))
  {
    outlined init with copy of PluginPackage(*(v7 + 56) + 40 * v8, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t PluginCatalog.getPlugin(id:)()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 128))(v10);
  outlined init with copy of PluginPackage?(v10, &v8);
  if (v9)
  {
    outlined init with take of Transforming(&v8, v5);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = (*(v2 + 40))(v1, v2);
    outlined destroy of PluginPackage?(v10, &_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    outlined destroy of PluginPackage?(v10, &_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
    return 0;
  }

  return v3;
}

uint64_t PluginCatalog.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_24_3();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t key path setter for PluginCapabilityCatalog.capabilityCache : <A>PluginCapabilityCatalog<A>(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 184);

  return v2(v3);
}

uint64_t PluginCapabilityCatalog.capabilityCache.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t PluginCapabilityCatalog.__allocating_init(finder:)()
{
  OUTLINED_FUNCTION_23();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_8();
  PluginCapabilityCatalog.init(finder:)(v1);
  return v0;
}

void *PluginCapabilityCatalog.init(finder:)(void *a1)
{
  v181 = *v1;
  v3 = v181[19];
  v160 = v1;
  v4 = v181[18];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_0();
  v182 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_16(&v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_2_16(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_2_16(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_2_16(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_2_16(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_2_16(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_8();
  v194 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_7_11(v22);
  v158 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_7_11(v25);
  OUTLINED_FUNCTION_28_3();
  v169 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_5_0();
  v192 = v26;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_11(&v158 - v28);
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_38_1();
  v190 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_7_11(v33);
  OUTLINED_FUNCTION_28_3();
  v34 = type metadata accessor for Array();
  v184 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v193 = v34;
  v36 = Dictionary.init()();
  v203 = v36;
  v37 = a1[3];
  v38 = a1[4];
  v159 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = OUTLINED_FUNCTION_8();
  v40 = AssociatedTypeWitness;
  v42 = v41(v39, v38);
  v188 = AssociatedConformanceWitness;
  v202 = Set.init()();
  v43 = *(v42 + 16);
  v183 = v3;
  v171 = v42;
  v168 = 0;
  if (!v43)
  {
    v191 = 0;
    v44 = 0;
    v189 = 0;
    v45 = 0;
    v47 = v182;
LABEL_29:
    OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_39_1();
    v91 = 0;

    OUTLINED_FUNCTION_20_5();
    v94 = v93 & v92;
    v192 = v47 + 2;
    v179 = v47 + 4;
    v187 = v47 + 1;
    *&v95 = 136315394;
    v175 = v95;
    OUTLINED_FUNCTION_31_2();
    v98 = v161;
    v185 = v97;
    v180 = v96;
    if (v94)
    {
      goto LABEL_34;
    }

    do
    {
LABEL_30:
      v99 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_57;
      }

      if (v99 >= v96)
      {

        v156 = v160;
        v160[3] = v203;
        PluginCatalog.init(packages:)(v171);
        __swift_destroy_boxed_opaque_existential_0(v159);
        _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v191, v44);
        _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v189, v45);
        return v156;
      }

      v94 = *(v97 + 8 * v99);
      ++v91;
    }

    while (!v94);
    v91 = v99;
    while (1)
    {
LABEL_34:
      v100 = OUTLINED_FUNCTION_27_3(&v189);
      v194 = v101;
      (v101)(v100);
      OUTLINED_FUNCTION_41_1();
      v102();
      v103 = MEMORY[0x1E12A8B50](&v198, v98, v203, v40, v193, v36);
      v104 = v198;
      v105 = v184;
      if (!v198)
      {
        v103 = static Array._allocateUninitialized(_:)();
        v104 = v103;
      }

      v190 = &v158;
      v94 &= v94 - 1;
      v198 = v104;
      MEMORY[0x1EEE9AC00](v103);
      v106 = v183;
      *(&v158 - 4) = v105;
      *(&v158 - 3) = v106;
      *(&v158 - 2) = v181[20];
      swift_getWitnessTable();
      OUTLINED_FUNCTION_33_1();
      v112 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v107, v108, v109, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v110, MEMORY[0x1E69E7410], v111);
      v168 = AssociatedConformanceWitness;
      v198 = v112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], MEMORY[0x1E69E6310]);
      AssociatedConformanceWitness = BidirectionalCollection<>.joined(separator:)();
      v114 = v113;

      v115 = OUTLINED_FUNCTION_22_2(&v190);
      v116 = MEMORY[0x1E12A8FC0](v115);
      v190 = AssociatedConformanceWitness;
      if ((v116 & 1) == 0)
      {
        break;
      }

      v117 = MEMORY[0x1E12A8E20](v104, v184);

      if (v117 <= 1)
      {
        goto LABEL_43;
      }

      v118 = v194;
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v119 = type metadata accessor for Logger();
      v120 = __swift_project_value_buffer(v119, static Logger.logger);
      v121 = OUTLINED_FUNCTION_42_1(&v188);
      v118(v121, v112, v40);

      v178 = v120;
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v174 = v114;
        v125 = AssociatedConformanceWitness;
        AssociatedConformanceWitness = v124;
        v126 = swift_slowAlloc();
        *AssociatedConformanceWitness = OUTLINED_FUNCTION_26_3(v126).n128_u32[0];
        LODWORD(v176) = v123;
        v127 = OUTLINED_FUNCTION_27_3(&v199);
        v194(v127, v125, v40);
        v128 = String.init<A>(describing:)();
        v130 = v129;
        OUTLINED_FUNCTION_19_6();
        v131 = v125;
        v133 = *v132;
        (*v132)(v131, v40);
        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v130, &v198);

        *(AssociatedConformanceWitness + 4) = v134;
        *(AssociatedConformanceWitness + 12) = 2080;
        v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v174, &v198);

        *(AssociatedConformanceWitness + 14) = v135;
        _os_log_impl(&dword_1DD1FF000, v122, v176, "Capability %s is marked exclusive, but multiple registrations were found: %s", AssociatedConformanceWitness, 0x16u);
        OUTLINED_FUNCTION_27_3(&v203);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1E12AA0F0]();
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1E12AA0F0]();
      }

      else
      {

        OUTLINED_FUNCTION_19_6();
        v133 = *v153;
        (*v153)(AssociatedConformanceWitness, v40);
      }

      OUTLINED_FUNCTION_31_2();
      v154 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v154, v36))
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&dword_1DD1FF000, v154, v36, "All of the plugins for this capability will be ignored.", v155, 2u);
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1E12AA0F0]();
      }

      OUTLINED_FUNCTION_40_1();
      OUTLINED_FUNCTION_39_1();
      type metadata accessor for Dictionary();
      v98 = v161;
      Dictionary.removeValue(forKey:)();

      OUTLINED_FUNCTION_19_6();
      v133();
LABEL_53:
      v97 = v185;
      v96 = v180;
      if (!v94)
      {
        goto LABEL_30;
      }
    }

LABEL_43:
    v136 = v162;
    v137 = v194;
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    __swift_project_value_buffer(v138, static Logger.logger);
    v137(v136, v112, v40);

    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.debug.getter();

    LODWORD(v178) = v140;
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v141 = OUTLINED_FUNCTION_26_3(v142).n128_u32[0];
      v176 = v139;
      v143 = OUTLINED_FUNCTION_27_3(&v199);
      v194(v143, v162, v40);
      v144 = String.init<A>(describing:)();
      v146 = v145;
      OUTLINED_FUNCTION_19_6();
      v148 = *v147;
      (*v147)(v162, v40);
      v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, &v198);

      *(v141 + 4) = v149;
      *(v141 + 12) = 2080;
      AssociatedConformanceWitness = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v114, &v198);

      *(v141 + 14) = AssociatedConformanceWitness;
      v150 = v176;
      _os_log_impl(&dword_1DD1FF000, v176, v178, "Capability %s is supported by: %s", v141, 0x16u);
      OUTLINED_FUNCTION_42_1(&v203);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();

      v98 = v161;
      OUTLINED_FUNCTION_19_6();
      v148();
      OUTLINED_FUNCTION_31_2();
    }

    else
    {

      AssociatedConformanceWitness = v187;
      isa = v187->isa;
      (v187->isa)(v162, v40);
      v152 = OUTLINED_FUNCTION_21_4();
      isa(v152);
      OUTLINED_FUNCTION_31_2();
      v98 = v112;
    }

    v36 = v188;
    goto LABEL_53;
  }

  v191 = 0;
  v44 = 0;
  v189 = 0;
  v45 = 0;
  v46 = 0;
  v172 = v42 + 32;
  v167 = v192 + 1;
  v166 = v29 + 32;
  v165 = v3 + 40;
  v177 = &v182[2];
  v176 = v182 + 4;
  v186 = &v182[1];
  *&v175 = v29 + 16;
  v163 = v29 + 8;
  AssociatedConformanceWitness = v184;
  v192 = v40;
  v47 = v182;
  v48 = v170;
  v164 = v43;
  while (v46 < *(v42 + 16))
  {
    v173 = v46;
    outlined init with copy of PluginPackage(v172 + 40 * v46, &v198);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v48, 0, 1, AssociatedConformanceWitness);
      OUTLINED_FUNCTION_16_6();
      v49(v185, v48, AssociatedConformanceWitness);
      v50 = (*(v3 + 40))(AssociatedConformanceWitness, v3);

      v51 = Array.startIndex.getter();

      after = v51;
      if (v51 != MEMORY[0x1E12A8E40](v50, v40))
      {
        v54 = v189;
        v180 = v50;
        while (1)
        {
          v189 = v44;
          v57 = v45;
          IsNativeType = Array._hoistableIsNativeTypeChecked()();
          Array._checkSubscript(_:wasNativeTypeChecked:)();
          v59 = v177;
          v60 = v177 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          if (IsNativeType)
          {
            v61 = v47[2].isa;
            v62 = OUTLINED_FUNCTION_22_2(&v205);
            v61(v62);
          }

          else
          {
            v89 = _ArrayBuffer._getElementSlowPath(_:)();
            if (v158 != 8)
            {
              goto LABEL_59;
            }

            v198 = v89;
            v61 = *v59;
            v90 = OUTLINED_FUNCTION_22_2(&v205);
            v61(v90);
            swift_unknownObjectRelease();
          }

          Array.formIndex(after:)(&after);
          OUTLINED_FUNCTION_16_6();
          v63 = v194;
          v64(v194, v36, v40);
          v65 = OUTLINED_FUNCTION_27_3(v204);
          (v61)(v65, v63, v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pMd, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pMR);
          OUTLINED_FUNCTION_41_1();
          v66 = swift_dynamicCast();
          v187 = v60;
          if (v66)
          {
            outlined init with take of Transforming(v195, &v198);
            v67 = v200;
            v68 = v201;
            __swift_project_boxed_opaque_existential_1(&v198, v200);
            v69 = v57;
            v70 = v61;
            if ((*(v68 + 8))(v67, v68))
            {
              (v61)(v174, v194, v40);
              OUTLINED_FUNCTION_40_1();
              type metadata accessor for Set();
              OUTLINED_FUNCTION_42_1(&v199);
              Set.insert(_:)();
              OUTLINED_FUNCTION_16_6();
              v71(v54, v40);
            }

            __swift_destroy_boxed_opaque_existential_0(&v198);
          }

          else
          {
            v70 = v61;
            v196 = 0;
            memset(v195, 0, sizeof(v195));
            outlined destroy of PluginPackage?(v195, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pSgMd, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pSgMR);
            v69 = v57;
          }

          v72 = v189;
          v52 = swift_allocObject();
          v73 = v184;
          v74 = v183;
          v52[2] = v184;
          v52[3] = v74;
          v75 = v181[20];
          v52[4] = v75;
          _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v191, v72);
          OUTLINED_FUNCTION_16_6();
          v76(v190, v185, v73);
          v53 = swift_allocObject();
          v53[2] = v73;
          v53[3] = v74;
          v53[4] = v75;
          v53[5] = partial apply for implicit closure #1 in PluginCapabilityCatalog.init(finder:);
          v53[6] = v52;
          _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v54, v69);
          v77 = v203;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v198 = v77;
          v79 = v192;
          v80 = v188;
          __RawDictionaryStorage.find<A>(_:)(v194, v192, v188);
          v82 = *(v77 + 16);
          v83 = (v81 & 1) == 0;
          v84 = v82 + v83;
          if (__OFADD__(v82, v83))
          {
            break;
          }

          v85 = v81;
          type metadata accessor for _NativeDictionary();
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v84))
          {
            __RawDictionaryStorage.find<A>(_:)(v194, v79, v80);
            if ((v85 & 1) != (v86 & 1))
            {
              goto LABEL_60;
            }
          }

          v36 = v198;
          v203 = v198;
          if ((v85 & 1) == 0)
          {
            v198 = (v53[5])();
            OUTLINED_FUNCTION_42_1(&v199);
            OUTLINED_FUNCTION_19_6();
            v70();
            _NativeDictionary._insert(at:key:value:)();
          }

          Array.append(_:)();
          OUTLINED_FUNCTION_16_6();
          v40 = v192;
          v87(v194, v192);
          v88 = MEMORY[0x1E12A8E40](v180, v40);
          v54 = partial apply for thunk for @callee_guaranteed () -> (@owned [A]);
          v191 = partial apply for implicit closure #1 in PluginCapabilityCatalog.init(finder:);
          v44 = v52;
          v45 = v53;
          v47 = v182;
          if (after == v88)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        break;
      }

      v52 = v44;
      v53 = v45;
      v54 = v189;
LABEL_7:
      v189 = v54;

      OUTLINED_FUNCTION_16_6();
      AssociatedConformanceWitness = v184;
      v55(v185, v184);
      v44 = v52;
      v45 = v53;
      v3 = v183;
      v42 = v171;
      v48 = v170;
      v43 = v164;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v48, 1, 1, AssociatedConformanceWitness);
      OUTLINED_FUNCTION_16_6();
      v56(v48, v169);
    }

    v46 = v173 + 1;
    if (v173 + 1 == v43)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PluginCapabilityCatalog.getAll(capability:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  (*(v1 + 208))();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v2 = Sequence.compactMap<A>(_:)();

  return v2;
}

uint64_t (*static PluginCapabilityCatalog.load<A>(finder:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v5 = v4;
  v69 = 0;
  v70 = a4;
  v66 = a1;
  type metadata accessor for CodingUserInfoKey();
  OUTLINED_FUNCTION_5_0();
  v62 = v9;
  v63 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_0();
  v64 = v11 - v10;
  OUTLINED_FUNCTION_40_1();
  v12 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_5_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38_1();
  v67 = v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - v19;
  v21 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8_0();
  v24 = v23 - v22;
  v25 = *(v14 + 16);
  v68 = a2;
  v65 = v25;
  v25(v20, a2, v12);
  if (__swift_getEnumTagSinglePayload(v20, 1, a3) == 1)
  {
    v26 = (*(v14 + 8))(v20, v12);
    v27 = v5;
    v28 = v69;
  }

  else
  {
    v61 = v12;
    v60 = v14;
    OUTLINED_FUNCTION_41_1();
    v30 = v29();
    if (one-time initialization token for pluginLoaderLog != -1)
    {
      v30 = OUTLINED_FUNCTION_11_12(&one-time initialization token for pluginLoaderLog);
    }

    MEMORY[0x1EEE9AC00](v30);
    v27 = v5;
    v32 = v5[18];
    v31 = v5[19];
    *(&v55 - 6) = v32;
    *(&v55 - 5) = a3;
    v33 = v5[20];
    v34 = v31;
    *(&v55 - 4) = v31;
    *(&v55 - 3) = v33;
    v59 = v33;
    v28 = v69;
    *(&v55 - 2) = v70;
    *(&v55 - 1) = v24;
    _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();
    v69 = v75;
    if (v75 >> 60 != 15)
    {
      v57 = v24;
      v58 = v21;
      v56 = v74;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      v55 = PropertyListDecoder.init()();
      if (one-time initialization token for catalogPackageInflator != -1)
      {
        OUTLINED_FUNCTION_0_22();
        swift_once();
      }

      v35 = v63;
      v36 = __swift_project_value_buffer(v63, static CodingUserInfoKey.catalogPackageInflator);
      (*(v62 + 16))(v64, v36, v35);
      v37 = swift_allocObject();
      v37[2] = v32;
      v37[3] = a3;
      v38 = v59;
      v37[4] = v34;
      v37[5] = v38;
      v39 = v70;
      v37[6] = v70;
      v40 = swift_allocObject();
      v40[2] = v32;
      v40[3] = a3;
      v40[4] = v34;
      v40[5] = v38;
      v40[6] = v39;
      v40[7] = partial apply for closure #2 in static PluginCapabilityCatalog.load<A>(finder:cache:);
      v40[8] = v37;
      type metadata accessor for Optional();
      FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
      v74 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
      v75 = v40;
      v41 = dispatch thunk of PropertyListDecoder.userInfo.modify();
      specialized Dictionary.subscript.setter(&v74, v64);
      v41(&v71, 0);
      type metadata accessor for PluginCapabilityCatalog(0, v32, v34, v38);
      swift_getWitnessTable();
      v42 = v56;
      v43 = v69;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (!v28)
      {

        outlined consume of Data?(v42, v43);
        v49 = v74;
        (*(v58 + 8))(v57, a3);
        return v49;
      }

      outlined consume of Data?(v42, v43);
      v28 = 0;
      v21 = v58;
      v24 = v57;
    }

    v26 = (*(v21 + 8))(v24, a3);
    v14 = v60;
    v12 = v61;
  }

  if (one-time initialization token for pluginLoaderLog != -1)
  {
    v26 = OUTLINED_FUNCTION_11_12(&one-time initialization token for pluginLoaderLog);
  }

  v44 = static Logger.pluginLoaderLog;
  MEMORY[0x1EEE9AC00](v26);
  v45 = v27[18];
  v46 = v27[19];
  *(&v55 - 6) = v45;
  *(&v55 - 5) = a3;
  v47 = v27[20];
  *(&v55 - 4) = v46;
  *(&v55 - 3) = v47;
  v48 = v66;
  *(&v55 - 2) = v70;
  *(&v55 - 1) = v48;
  type metadata accessor for PluginCapabilityCatalog(0, v45, v46, v47);
  static Logger.withSignpost<A>(name:log:completion:)("FindPlugins", 11, 2, v44, partial apply for closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:));
  v49 = v74;
  v50 = v67;
  v65(v67, v68, v12);
  if (__swift_getEnumTagSinglePayload(v50, 1, a3) == 1)
  {
    (*(v14 + 8))(v50, v12);
LABEL_20:
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13CacheDataSink_pMd, "~f");
  OUTLINED_FUNCTION_41_1();
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  if (!*(&v72 + 1))
  {
LABEL_21:
    outlined destroy of PluginPackage?(&v71, &_s13SiriUtilities13CacheDataSink_pSgMd, "|f");
    return v49;
  }

  outlined init with take of Transforming(&v71, &v74);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v51 = PropertyListEncoder.init()();
  v52 = dispatch thunk of PropertyListEncoder.outputFormat.setter();
  MEMORY[0x1EEE9AC00](v52);
  v53 = v70;
  *(&v55 - 6) = a3;
  *(&v55 - 5) = v53;
  *(&v55 - 4) = v51;
  *(&v55 - 3) = v49;
  *(&v55 - 2) = &v74;
  _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();

  if (v28)
  {
  }

  __swift_destroy_boxed_opaque_existential_0(&v74);
  return v49;
}

uint64_t closure #1 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t *a3@<X8>)
{
  result = (*(a2 + 8))(a1, a2);
  if (v3)
  {

    result = 0;
    v6 = 0xF000000000000000;
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t CodingUserInfoKey.catalogPackageInflator.unsafeMutableAddressor()
{
  if (one-time initialization token for catalogPackageInflator != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v0 = type metadata accessor for CodingUserInfoKey();

  return __swift_project_value_buffer(v0, static CodingUserInfoKey.catalogPackageInflator);
}

uint64_t closure #2 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  (*(a4 + 24))(v9, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a5, v7 ^ 1u, 1, a3);
}

uint64_t closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  type metadata accessor for PluginCapabilityCatalog(0, a2, a3, a4);
  outlined init with copy of PluginPackage(a1, v8);
  result = PluginCapabilityCatalog.__allocating_init(finder:)();
  *a5 = result;
  return result;
}

uint64_t closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for PluginCapabilityCatalog(0, *(*a2 + 144), *(*a2 + 152), *(*a2 + 160));
  swift_getWitnessTable();
  result = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = a3[3];
    v10 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v9);
    (*(v10 + 8))(v7, v8, v9, v10);
    return outlined consume of Data._Representation(v7, v8);
  }

  return result;
}

uint64_t PluginCapabilityCatalog.advertisedCapabilities()()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 176))();
  OUTLINED_FUNCTION_28_3();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_8();

  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t PluginCapabilityCatalog.get(capability:)@<X0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  v3 = (*(v2 + 216))();
  if (*(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32, a1);
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
  }
}

unint64_t PluginCapabilityCatalog.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PluginCapabilityCatalog.CodingKeys.init(rawValue:), v3);
  OUTLINED_FUNCTION_8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t PluginCapabilityCatalog.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F6973726556736FLL;
  }

  if (a1 == 1)
  {
    return 0x696C696261706163;
  }

  return 0x736567616B636170;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PluginCapabilityCatalog<A>.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = PluginCapabilityCatalog.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PluginCapabilityCatalog<A>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PluginCapabilityCatalog.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance PluginCapabilityCatalog<A>.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = PluginCapabilityCatalog.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PluginCapabilityCatalog<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void PluginCapabilityCatalog.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_15();
  v85 = v24;
  v26 = v23;
  v28 = v27;
  v29 = *(*v26 + 144);
  v30 = *(*v26 + 160);
  v83 = *(*v26 + 152);
  v84 = v29;
  v82 = v30;
  type metadata accessor for PluginCapabilityCatalog.CodingKeys(255, v29, v83, v30);
  OUTLINED_FUNCTION_5_14();
  swift_getWitnessTable();
  v31 = type metadata accessor for KeyedEncodingContainer();
  OUTLINED_FUNCTION_5_0();
  v33 = v32;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_36_1();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v35 = [objc_opt_self() processInfo];
  v36 = [v35 operatingSystemVersionString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v86[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v24)
  {
    (*(v33 + 8))(v25, v31);

LABEL_16:
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_14_4();
    return;
  }

  v80 = v33;

  v38 = *(*v26 + 176);
  v81 = 0;
  v79 = v38(v37);
  v85 = &v77;
  MEMORY[0x1EEE9AC00](v79);
  swift_getAssociatedTypeWitness();
  v82 = type metadata accessor for Array();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  swift_getAssociatedConformanceWitness();
  v39 = v81;
  v40 = Dictionary.mapValues<A>(_:)();
  v82 = v39;
  v41 = v40;

  v86[0] = v41;
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for Dictionary();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v89 = AssociatedConformanceWitness;
  v90 = v43;
  swift_getWitnessTable();
  v44 = v82;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v44)
  {

    (*(v80 + 8))(v25, v31);
    goto LABEL_16;
  }

  v81 = 0;
  v77 = v25;
  v78 = v31;

  v46 = (*(*v26 + 88))(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  OUTLINED_FUNCTION_8();
  v47 = static _DictionaryStorage.copy(original:)();
  v48 = 0;
  v49 = v46 + 64;
  v82 = v47;
  v83 = v46;
  OUTLINED_FUNCTION_20_5();
  v52 = v51 & v50;
  v54 = (v53 + 63) >> 6;
  v79 = v55 + 64;
  if (v52)
  {
    while (1)
    {
      v56 = __clz(__rbit64(v52));
      v84 = (v52 - 1) & v52;
LABEL_12:
      v60 = v56 | (v48 << 6);
      v61 = *(v83 + 56);
      v62 = (*(v83 + 48) + 16 * v60);
      v63 = v62[1];
      v85 = *v62;
      outlined init with copy of PluginPackage(v61 + 40 * v60, v86);
      v64 = v87;
      v65 = v88;
      __swift_project_boxed_opaque_existential_1(v86, v87);
      v66 = *(v65 + 16);

      v67 = v66(v64, v65);
      v69 = v68;
      __swift_destroy_boxed_opaque_existential_0(v86);
      *(v79 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
      v47 = v82;
      v70 = (*(v82 + 48) + 16 * v60);
      *v70 = v85;
      v70[1] = v63;
      v71 = (*(v47 + 56) + 16 * v60);
      *v71 = v67;
      v71[1] = v69;
      v72 = *(v47 + 16);
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        break;
      }

      *(v47 + 16) = v74;
      v52 = v84;
      if (!v84)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v57 = v48;
    v58 = v80;
    while (1)
    {
      v48 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v48 >= v54)
      {

        v86[0] = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
        lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
        v75 = v77;
        v76 = v78;
        KeyedEncodingContainer.encode<A>(_:forKey:)();

        (*(v58 + 8))(v75, v76);
        goto LABEL_16;
      }

      v59 = *(v49 + 8 * v48);
      ++v57;
      if (v59)
      {
        v56 = __clz(__rbit64(v59));
        v84 = (v59 - 1) & v59;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in PluginCapabilityCatalog.encode(to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v11[4] = a4;
  v11[5] = v6;
  v11[2] = a2;
  v11[3] = a3;
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in PluginCapabilityCatalog.encode(to:), v11, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  *a5 = result;
  return result;
}

uint64_t PluginCapabilityCatalog.__allocating_init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23();
  v1 = swift_allocObject();
  PluginCapabilityCatalog.init(from:)();
  return v1;
}

void PluginCapabilityCatalog.init(from:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v0;
  v4 = v3;
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 160);
  v66 = *(*v0 + 144);
  v7 = v5;
  v72 = v6;
  type metadata accessor for PluginCapabilityCatalog.CodingKeys(255, v66, v5, v6);
  OUTLINED_FUNCTION_5_14();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  OUTLINED_FUNCTION_5_0();
  v63 = v9;
  v64 = v8;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v57 - v11;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v12 = dispatch thunk of Decoder.userInfo.getter();
  if (one-time initialization token for catalogPackageInflator != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v13 = type metadata accessor for CodingUserInfoKey();
  __swift_project_value_buffer(v13, static CodingUserInfoKey.catalogPackageInflator);
  specialized Dictionary.subscript.getter(v12, &v70);

  v14 = v7;
  if (!v71)
  {
    outlined destroy of PluginPackage?(&v70, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  v15 = v66;
  type metadata accessor for Optional();
  swift_getFunctionTypeMetadata1();
  if (!swift_dynamicCast())
  {
LABEL_8:
    lazy protocol witness table accessor for type PluginCatalogError and conformance PluginCatalogError();
    swift_allocError();
    *v20 = 0u;
    v20[1] = 0u;
    swift_willThrow();
    v19 = v72;
    goto LABEL_9;
  }

  v61 = v2;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v7;
  *(v16 + 32) = v72;
  *(v16 + 40) = v69;
  v17 = v4[3];
  v62 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v17);
  v18 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {

    v14 = v7;
    v19 = v72;
    v4 = v62;
  }

  else
  {
    v60 = v16;
    LOBYTE(v70) = 0;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = v61;
    v26 = v24;
    v28 = v27;
    v29 = [objc_opt_self() processInfo];
    v30 = [v29 operatingSystemVersionString];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = v31;
    v35 = v26 == v31 && v28 == v33;
    v14 = v7;
    if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v36 = v66;
      swift_getAssociatedTypeWitness();
      v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
      OUTLINED_FUNCTION_33_1();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v59 = v37;
      type metadata accessor for Dictionary();
      LOBYTE(v69) = 1;
      OUTLINED_FUNCTION_33_1();
      v38 = swift_getAssociatedConformanceWitness();
      v39 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      v67 = v38;
      v68 = v39;
      swift_getWitnessTable();
      v40 = KeyedDecodingContainer.decode<A>(_:forKey:)();
      v57 = &v57;
      MEMORY[0x1EEE9AC00](v40);
      *(&v57 - 6) = v36;
      *(&v57 - 5) = v14;
      OUTLINED_FUNCTION_4_12(&v57);
      *(v41 - 16) = v60;
      type metadata accessor for Array();
      v42 = Dictionary.compactMapValues<A>(_:)();

      *(v25 + 24) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      LOBYTE(v69) = 2;
      lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
      v43 = KeyedDecodingContainer.decode<A>(_:forKey:)();
      v53 = v70;
      MEMORY[0x1EEE9AC00](v43);
      *(&v57 - 6) = v36;
      *(&v57 - 5) = v14;
      OUTLINED_FUNCTION_4_12(&v57);
      *(v54 - 16) = v60;
      v56 = specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #2 in PluginCapabilityCatalog.init(from:), v55, v53);
      (*(v63 + 8))(v65, v64);

      *(v25 + 16) = v56;
      __swift_destroy_boxed_opaque_existential_0(v62);
      goto LABEL_10;
    }

    AssociatedConformanceWitness = v34;
    v59 = v26;
    v44 = v33;
    if (one-time initialization token for loader != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.loader);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    v19 = v72;
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v70 = v57;
      *v48 = 136315394;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v28, &v70);
      *(v48 + 12) = 2080;
      v49 = AssociatedConformanceWitness;
      *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(AssociatedConformanceWitness, v44, &v70);
      _os_log_impl(&dword_1DD1FF000, v46, v47, "Not using cached plugin information, as it is from %s and we are running %s.", v48, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();
      v18 = v65;
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();

      v50 = v64;
    }

    else
    {

      v50 = v64;
      v49 = AssociatedConformanceWitness;
    }

    lazy protocol witness table accessor for type PluginCatalogError and conformance PluginCatalogError();
    swift_allocError();
    *v51 = v49;
    v51[1] = v44;
    v51[2] = v59;
    v51[3] = v28;
    swift_willThrow();

    OUTLINED_FUNCTION_35_1();
    v52(v18, v50);
    v4 = v62;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(v4);
  v21 = OUTLINED_FUNCTION_28_3();
  v23 = type metadata accessor for PluginCapabilityCatalog(v21, v22, v14, v19);
  OUTLINED_FUNCTION_43_1(v23);
LABEL_10:
  OUTLINED_FUNCTION_14_4();
}

uint64_t closure #1 in PluginCapabilityCatalog.init(from:)@<X0>(uint64_t *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], MEMORY[0x1E69E6328]);
  result = Sequence.compactMap<A>(_:)();
  *a7 = result;
  return result;
}

Swift::Int specialized Dictionary.compactMapValues<A>(_:)(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    if (!v8)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          return v4;
        }

        v8 = *(v5 + 8 * v12);
        ++v11;
        if (v8)
        {
          v31 = v4;
          v11 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v31 = v4;
LABEL_11:
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
    v14 = (*(a3 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + v13);
    v18 = v17[1];
    v36[0] = *v17;
    v36[1] = v18;

    a1(&v32, v36);
    if (v3)
    {
      break;
    }

    v8 &= v8 - 1;

    if (v33)
    {
      outlined init with take of Transforming(&v32, v35);
      outlined init with take of Transforming(v35, v34);
      v4 = v31;
      if (*(v31 + 24) <= *(v31 + 16))
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
        v4 = v37;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = v4 + 64;
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v4 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_25;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v4 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (*(v4 + 48) + 16 * v23);
      *v28 = v15;
      v28[1] = v16;
      result = outlined init with take of Transforming(v34, *(v4 + 56) + 40 * v23);
      ++*(v4 + 16);
    }

    else
    {

      result = outlined destroy of PluginPackage?(&v32, &_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
      v4 = v31;
    }
  }

  v4 = v31;

  return v4;
}

uint64_t closure #2 in PluginCapabilityCatalog.init(from:)@<X0>(void *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  a2(*a1, a1[1]);
  if (__swift_getEnumTagSinglePayload(v13, 1, a3) == 1)
  {
    result = (*(v11 + 8))(v13, v10);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    *(a5 + 24) = a3;
    *(a5 + 32) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
    return (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, v13, a3);
  }

  return result;
}

uint64_t PluginCapabilityCatalog.deinit()
{

  return v0;
}

uint64_t PluginCapabilityCatalog.__deallocating_deinit()
{
  PluginCapabilityCatalog.deinit();
  v0 = OUTLINED_FUNCTION_23();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PluginCapabilityCatalog<A>@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 256))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t one-time initialization function for catalogPackageInflator()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static CodingUserInfoKey.catalogPackageInflator);
  v4 = __swift_project_value_buffer(v3, static CodingUserInfoKey.catalogPackageInflator);
  CodingUserInfoKey.init(rawValue:)();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_11();
    return (*(v6 + 32))(v4, v2, v3);
  }

  return result;
}

uint64_t static CodingUserInfoKey.catalogPackageInflator.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for catalogPackageInflator != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  __swift_project_value_buffer(v2, static CodingUserInfoKey.catalogPackageInflator);
  OUTLINED_FUNCTION_5_11();
  v4 = *(v3 + 16);

  return v4(a1);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a1;
  v14[1] = a4;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4;
  v16 = v4 + 64;
  v9 = ~(-1 << *(v4 + 32));
  for (i = v10 & v9; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * i, a3);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v6 + 8))(v8, a3);
    if (v12)
    {
      break;
    }
  }

  return i;
}

uint64_t outlined init with copy of PluginPackage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PluginCapabilityCatalog.init(finder:)()
{
  OUTLINED_FUNCTION_25_3();
  result = (*(v1 + 8))(v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed () -> (@owned [A])@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
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

uint64_t outlined destroy of PluginPackage?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_11();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PluginCatalogError and conformance PluginCatalogError()
{
  result = lazy protocol witness table cache variable for type PluginCatalogError and conformance PluginCatalogError;
  if (!lazy protocol witness table cache variable for type PluginCatalogError and conformance PluginCatalogError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginCatalogError and conformance PluginCatalogError);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out A?)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PluginCapabilityCatalog.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t destroy for PluginCatalogError(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PluginCatalogError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 < 0xFFFFFFFF)
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v3;
    v4 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v4;
  }

  return a1;
}

void *assignWithCopy for PluginCatalogError(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];

      return a1;
    }

LABEL_7:
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for PluginCatalogError(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 8);
  if (v4 < 0xFFFFFFFF)
  {

LABEL_5:
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    return a1;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for PluginCatalogError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PluginCatalogError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PluginCatalogError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for PluginCatalogError(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PluginCapabilityCatalog.encode(to:)()
{
  OUTLINED_FUNCTION_25_3();
  result = (*(v1 + 16))(v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t outlined init with copy of PluginPackage(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_5_11();
  (*v3)(a2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v26 = result;
  for (i = a2; v7; v10 = v11)
  {
    v11 = v10;
LABEL_8:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(v3 + 48) + ((v11 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *a2;
      v20 = *(*a2 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20);

      v21 = (*(v28 + 56) + 16 * v18);
      v22 = *v21;
      v23 = v21[1];
      _NativeDictionary._delete(at:)();
      *i = v28;
      v24 = v22;
      v25 = v23;
      v3 = v26;
      a2 = i;
      outlined consume of Data._Representation(v24, v25);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Dictionary._Variant.removeValue(forKey:)(&v14);
    outlined consume of Data?(v14, *(&v14 + 1));
    specialized Set._Variant.remove(_:)(v12, v13);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = outlined consume of Data._Representation(v15, v16))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = (v8 << 10) | (16 * v9);
    v11 = (*(a1 + 48) + v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*(a1 + 56) + v10);
    v15 = *v14;
    v16 = v14[1];

    outlined copy of Data._Representation(v15, v16);
    specialized Set._Variant.remove(_:)(v12, v13);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DataV_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1E12A8FA0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v9;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;

        specialized Set._Variant.insert(_:)();
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t SiriEnvironmentKeyValuePairs.init()@<X0>(uint64_t *a1@<X8>)
{
  result = Dictionary.init(dictionaryLiteral:)();
  v3 = MEMORY[0x1E69E7CD0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SiriEnvironmentKeyValuePairs.update(addingValues:removingKeys:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DataV_GTt0g5(v6);
  OUTLINED_FUNCTION_3_14();

  v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DataV_GTt0g5(v7);
  specialized Set.subtracting(_:)(v8, v2);

  v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DataV_GTt0g5(v9);

  v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DataV_GTt0g5(v11);
  specialized _NativeSet.intersection(_:)(v12, v10);

  if (one-time initialization token for environment != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.environment);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v16 = 136315650;
    v17 = Set.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v40);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = Set.description.getter();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v40);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    v25 = Set.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v40);

    *(v16 + 24) = v27;
    _os_log_impl(&dword_1DD1FF000, v14, v15, "SiriEnvironmentKeyPairs adding keys: %s, overwriting keys: %s, and removing keys: %s", v16, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v28, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v3);
  specialized Sequence.forEach(_:)(a2, v3);
  v29 = v3[1];

  v3[1] = specialized Set.union<A>(_:)(v30, v29);
  specialized Sequence.forEach(_:)(a1);

  v31 = specialized _NativeSet.genericIntersection<A>(_:)(a1, a2);
  if (*(v31 + 16))
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40[0] = v35;
      *v34 = 136315138;
      v36 = Set.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v40);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1DD1FF000, v32, v33, "Atempted to both add and remove keys %s, these keys will be ignored", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    specialized Sequence.forEach(_:)(v31);
  }
}

Swift::Int specialized Set.subtracting(_:)(uint64_t a1, Swift::Int a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    specialized Set._subtract<A>(_:)(a1);
    return a2;
  }

  else
  {

    return specialized _NativeSet.subtracting<A>(_:)(a1, a2);
  }
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return a2;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;

        specialized Set._Variant.insert(_:)();
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t SiriEnvironmentKeyValuePairs.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61566465646461 && a2 == 0xEB00000000736575;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x566465766F6D6572 && a2 == 0xED00007365756C61)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t SiriEnvironmentKeyValuePairs.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x566465766F6D6572;
  }

  else
  {
    return 0x6C61566465646461;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriEnvironmentKeyValuePairs.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriEnvironmentKeyValuePairs.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriEnvironmentKeyValuePairs.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriEnvironmentKeyValuePairs.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriEnvironmentKeyValuePairs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13SiriUtilities0D24EnvironmentKeyValuePairsV10CodingKeys33_BF7BB75CF3ED7CB7A6B91CC4921FED77LLOGMd, &_ss22KeyedEncodingContainerVy13SiriUtilities0D24EnvironmentKeyValuePairsV10CodingKeys33_BF7BB75CF3ED7CB7A6B91CC4921FED77LLOGMR);
  OUTLINED_FUNCTION_5_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v14 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = lazy protocol witness table accessor for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
  v11 = lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B], lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  OUTLINED_FUNCTION_7_12(v11);

  if (!v10)
  {
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v12 = lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    OUTLINED_FUNCTION_7_12(v12);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t SiriEnvironmentKeyValuePairs.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13SiriUtilities0D24EnvironmentKeyValuePairsV10CodingKeys33_BF7BB75CF3ED7CB7A6B91CC4921FED77LLOGMd, &_ss22KeyedDecodingContainerVy13SiriUtilities0D24EnvironmentKeyValuePairsV10CodingKeys33_BF7BB75CF3ED7CB7A6B91CC4921FED77LLOGMR);
  OUTLINED_FUNCTION_5_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  Dictionary.init(dictionaryLiteral:)();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    v18 = 0;
    v12 = lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B], lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    OUTLINED_FUNCTION_5_15(v12);

    v13 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v18 = 1;
    v14 = lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    OUTLINED_FUNCTION_5_15(v14);
    (*(v10 + 8))(v9, v4);
    v16 = v19;
    *v11 = v13;
    v11[1] = v16;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void specialized _NativeSet.copy()()
{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  OUTLINED_FUNCTION_3_14();
  v7 = static _SetStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_1_18();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_0_23();
    while (v5)
    {
      OUTLINED_FUNCTION_2_17();
LABEL_15:
      OUTLINED_FUNCTION_6_14(v13);
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_4_13();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities14TypeIdentifierVGMd, "\bq");
  OUTLINED_FUNCTION_3_14();
  v7 = static _SetStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_1_18();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_0_23();
    while (v5)
    {
      OUTLINED_FUNCTION_2_17();
LABEL_15:
      OUTLINED_FUNCTION_6_14(v13);
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_4_13();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities24TransformationCapabilityVGMd, &_ss11_SetStorageCy13SiriUtilities24TransformationCapabilityVGMR);
  OUTLINED_FUNCTION_3_14();
  v7 = static _SetStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_1_18();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_0_23();
    while (v5)
    {
      OUTLINED_FUNCTION_2_17();
LABEL_15:
      v15 = v13 | (v3 << 6);
      v16 = (*(v1 + 48) + (v15 << 6));
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[3];
      v25[2] = v16[2];
      v25[3] = v19;
      v25[0] = v18;
      v25[1] = v17;
      v20 = (*(v7 + 48) + (v15 << 6));
      v21 = *v16;
      v22 = v16[1];
      v23 = v16[3];
      v20[2] = v16[2];
      v20[3] = v23;
      *v20 = v21;
      v20[1] = v22;
      outlined init with copy of TransformationCapability(v25, &v24);
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_4_13();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  outlined copy of Data._Representation(a4, a5);
  return a2;
}

uint64_t specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

Swift::Int specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v5 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x1EEE9AC00](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v34 = Hasher._finalize()();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = specialized _NativeSet.extractSubset(using:count:)(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x1E12AA0F0](v41, -1, -1);
            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    outlined consume of [String : Data].Iterator._Variant(v14);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}