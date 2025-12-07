void *specialized CPApplicationPolicyManager.hashedHandles(from:)(uint64_t a1)
{
  v3 = type metadata accessor for SHA256Digest();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v71 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v79 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - v9;
  v73 = type metadata accessor for String.Encoding();
  v11 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SharableObjectIdentifier(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized Sequence.compactMap<A>(_:)(a1);
  v17 = v16;
  v18 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *(a1 + 16);
  }

  if (v19 != *(v17 + 16))
  {

    lazy protocol witness table accessor for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError();
    swift_allocError();
    swift_willThrow();
    return v17;
  }

  if (!v19)
  {

    v22 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v22);

    return v17;
  }

  v85 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
  v21 = 0;
  v22 = v85;
  v69 = (v11 + 8);
  v70 = v17 + 32;
  v68 = (v4 + 16);
  v63 = (v4 + 8);
  v81 = xmmword_1AEE07B20;
  v66 = v10;
  v67 = v3;
  v78 = v15;
  v65 = v17;
  v64 = v19;
  while (v21 < *(v17 + 16))
  {
    v76 = v21;
    v77 = v22;
    v23 = (v70 + 16 * v21);
    v24 = *v23;
    v25 = v23[1];

    SHA256.init()();
    v83 = v24;
    v84 = v25;
    v75 = v25;
    v26 = v72;
    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v27 = StringProtocol.data(using:allowLossyConversion:)();
    v29 = v28;
    result = (*v69)(v26, v73);
    if (v29 >> 60 == 15)
    {
      goto LABEL_43;
    }

    outlined copy of Data._Representation(v27, v29);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v27, v29, v15);
    v74 = v18;
    outlined consume of Data?(v27, v29);
    outlined consume of Data?(v27, v29);
    SHA256.finalize()();
    v30 = *v68;
    v31 = v79;
    (*v68)(v79, v10, v3);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
    v32 = dispatch thunk of Sequence.underestimatedCount.getter();
    v82 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
    v33 = v82;
    v30(v71, v31, v3);
    result = dispatch thunk of Sequence.makeIterator()();
    if (v32 < 0)
    {
      goto LABEL_42;
    }

    v34 = v84;
    if (v32)
    {
      v35 = v83;
      v80 = *(v83 + 16);
      v36 = v84;
      while (v80 != v36)
      {
        if (v34 < 0)
        {
          goto LABEL_37;
        }

        if (v36 >= *(v35 + 16))
        {
          goto LABEL_38;
        }

        v37 = *(v35 + 32 + v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v38 = swift_allocObject();
        *(v38 + 16) = v81;
        *(v38 + 56) = MEMORY[0x1E69E7508];
        *(v38 + 64) = MEMORY[0x1E69E7558];
        *(v38 + 32) = v37;
        result = String.init(format:_:)();
        v82 = v33;
        v41 = *(v33 + 16);
        v40 = *(v33 + 24);
        if (v41 >= v40 >> 1)
        {
          v62 = result;
          v43 = v39;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
          v39 = v43;
          result = v62;
          v33 = v82;
        }

        *(v33 + 16) = v41 + 1;
        v42 = v33 + 16 * v41;
        *(v42 + 32) = result;
        *(v42 + 40) = v39;
        ++v36;
        if (!--v32)
        {
          v84 = v36;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v36 = v84;
LABEL_20:
    v44 = v83;
    v45 = *(v83 + 16);
    if (v36 != v45)
    {
      v53 = v36;
      while ((v36 & 0x8000000000000000) == 0)
      {
        if (v53 >= *(v44 + 16))
        {
          goto LABEL_40;
        }

        v54 = *(v44 + 32 + v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v55 = swift_allocObject();
        *(v55 + 16) = v81;
        *(v55 + 56) = MEMORY[0x1E69E7508];
        *(v55 + 64) = MEMORY[0x1E69E7558];
        *(v55 + 32) = v54;
        result = String.init(format:_:)();
        v82 = v33;
        v58 = *(v33 + 16);
        v57 = *(v33 + 24);
        if (v58 >= v57 >> 1)
        {
          v80 = result;
          v60 = v56;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
          v56 = v60;
          result = v80;
          v33 = v82;
        }

        ++v53;
        *(v33 + 16) = v58 + 1;
        v59 = v33 + 16 * v58;
        *(v59 + 32) = result;
        *(v59 + 40) = v56;
        if (v45 == v53)
        {
          goto LABEL_21;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      break;
    }

LABEL_21:

    v83 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v46 = BidirectionalCollection<>.joined(separator:)();
    v48 = v47;

    v49 = *v63;
    v3 = v67;
    (*v63)(v79, v67);
    v10 = v66;
    v49(v66, v3);
    result = outlined destroy of SharableObjectIdentifier(v78);
    v22 = v77;
    v85 = v77;
    v51 = *(v77 + 16);
    v50 = *(v77 + 24);
    if (v51 >= v50 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
      v22 = v85;
    }

    v21 = v76 + 1;
    *(v22 + 16) = v51 + 1;
    v52 = v22 + 16 * v51;
    *(v52 + 32) = v46;
    *(v52 + 40) = v48;
    v18 = v74;
    v15 = v78;
    v17 = v65;
    if (v21 == v64)
    {

      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError()
{
  result = lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError;
  if (!lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError;
  if (!lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError);
  }

  return result;
}

uint64_t dispatch thunk of ChangeHistoryProcessor.visit(_:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNContactStoreConfiguration) -> (@out TUContactsDataSource)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNContactStoreConfiguration) -> (@owned TUContactsDataSource)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void partial apply for closure #1 in CPApplicationPolicyManager.persist(_:authorizationChanged:)(void *a1)
{
  v3 = v1[2];
  v4 = MEMORY[0x1B270FF70](v1[4], v1[5]);
  [a1 applicationPolicyManager:v3 authorizationChangedForBundleIdentifier:v4];
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL partial apply for closure #1 in closure #1 in closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v5[2] = v6;
  return (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v5, v3) & 1) == 0;
}

void partial apply for closure #1 in closure #1 in CPApplicationPolicyManager.autoSharePlayEnabled.setter(void *a1)
{
  v3 = v1[2];
  v4 = MEMORY[0x1B270FF70](v1[3], v1[4]);
  [a1 applicationPolicyManager:v3 authorizationChangedForBundleIdentifier:v4];
}

uint64_t OperationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  OperationManager.init()();
  return v0;
}

uint64_t OperationManager.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v26 = &v22 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMd, &_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v22 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMd, &_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMR);
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v25);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pMd, &_s14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pMR);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8650], v2);
  v23 = v8;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v3 + 8))(v5, v2);
  v15 = v24;
  (*(v6 + 16))(v27 + OBJC_IVAR____TtC14CopresenceCore16OperationManager_queueContinuation, v8, v24);
  v16 = type metadata accessor for TaskPriority();
  v17 = v26;
  (*(*(v16 - 8) + 56))(v26, 1, 1, v16);
  v18 = v25;
  (*(v9 + 16))(v12, v14, v25);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v9 + 32))(v20 + v19, v12, v18);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in OperationManager.init(), v20);

  (*(v6 + 8))(v23, v15);
  (*(v9 + 8))(v14, v18);
  return v27;
}

uint64_t closure #1 in OperationManager.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS8IteratorVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in OperationManager.init(), 0, 0);
}

uint64_t partial apply for closure #1 in OperationManager.init()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMd, &_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in OperationManager.init()(a1, v6, v7, v1 + v5);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (a2)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v7[9] = v8;
  v7[10] = v10;

  return MEMORY[0x1EEE6DFA0](_s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTY0_, v8, v10);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTY0_()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 56);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTQ1_;
  v4 = *(v0 + 56);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, v5, v6, 0xD000000000000015, 0x80000001AEE383C0, _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFyScCyxs5Error_pGXEfU_TA, v1, v4);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTQ1_()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[9];
    v4 = v2[10];

    return MEMORY[0x1EEE6DFA0](_s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTY2_, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTY2_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFyScCyxs5Error_pGXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v9 = type metadata accessor for CheckedContinuation();
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMd, &_sScS12ContinuationV11YieldResultOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  v22 = OBJC_IVAR____TtC14CopresenceCore16OperationManager_queueContinuation;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a3;
  v17[4] = a4;
  v18 = *(v9 - 8);
  (*(v18 + 16))(v12, v23, v9);
  (*(v18 + 56))(v12, 0, 1, v9);
  v19 = MEMORY[0x1E69E7288];
  v25[3] = type metadata accessor for OperationManager.Operation(0, a5, v8, MEMORY[0x1E69E7288]);
  v25[4] = &protocol witness table for OperationManager.Operation<A, B>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  _s14CopresenceCore16OperationManagerC0C033_53D0A0FB5E0A41085D46C72FE7DB1DF1LLV4body12continuationAFy_xq_GxyYaYbq_YKc_ScCyxq_GSgtcfC(&async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error), v17, v12, a5, v8, v19, boxed_opaque_existential_1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v14 + 8))(v16, v13);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error);

  return v9(a1);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error)()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t _s14CopresenceCore16OperationManagerC0C033_53D0A0FB5E0A41085D46C72FE7DB1DF1LLV4body12continuationAFy_xq_GxyYaYbq_YKc_ScCyxq_GSgtcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v9 = *(type metadata accessor for OperationManager.Operation(0, a4, a5, a6) + 44);
  type metadata accessor for CheckedContinuation();
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a7[v9], a3, v10);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (a2)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  return MEMORY[0x1EEE6DFA0](_s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFTY0_, v8, v10);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFTY0_()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 56);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFTQ1_;
  v4 = *(v0 + 56);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v7, v5, v6, 0xD000000000000015, 0x80000001AEE383C0, _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFyScCyxs5NeverOGXEfU_TA, v1, v4);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFTQ1_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFyScCyxs5NeverOGXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = a2;
  v9 = type metadata accessor for CheckedContinuation();
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMd, &_sScS12ContinuationV11YieldResultOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  v23[1] = OBJC_IVAR____TtC14CopresenceCore16OperationManager_queueContinuation;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a3;
  v17[4] = a4;
  v18 = *(v9 - 8);
  (*(v18 + 16))(v12, a1, v9);
  (*(v18 + 56))(v12, 0, 1, v9);
  v19 = MEMORY[0x1E69E73E0];
  v20 = MEMORY[0x1E69E7410];
  v24[3] = type metadata accessor for OperationManager.Operation(0, a5, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  v24[4] = &protocol witness table for OperationManager.Operation<A, B>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  _s14CopresenceCore16OperationManagerC0C033_53D0A0FB5E0A41085D46C72FE7DB1DF1LLV4body12continuationAFy_xq_GxyYaYbq_YKc_ScCyxq_GSgtcfC(&async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A), v17, v12, a5, v19, v20, boxed_opaque_existential_1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v14 + 8))(v16, v13);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A);

  return v6(a1);
}

uint64_t OperationManager.deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore16OperationManager_queueContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OperationManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore16OperationManager_queueContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OperationManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for OperationManager;
  if (!type metadata singleton initialization cache for OperationManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for OperationManager(uint64_t a1)
{
  type metadata accessor for AsyncStream<OperationManager.OperationProtocol>.Continuation(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncStream<OperationManager.OperationProtocol>.Continuation(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<OperationManager.OperationProtocol>.Continuation)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pMd, &_s14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pMR);
    v1 = type metadata accessor for AsyncStream.Continuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<OperationManager.OperationProtocol>.Continuation);
    }
  }
}

unint64_t type metadata completion function for OperationManager.Operation(void *a1)
{
  result = type metadata accessor for ()();
  if (v2 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(a1, v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error)(a1, v7, v8, v6, a2);
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.__deallocating_deinit()
{
  MEMORY[0x1B27120C0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t BackgroundApplicationLaunchBehavior.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for BackgroundApplicationLaunchBehavior.AssertionStore();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t BackgroundApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), 0, 0);
}

uint64_t BackgroundApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)()
{
  v1 = (*(**(v0 + 32) + 88))();
  *(v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), v1, 0);
}

{
  BackgroundApplicationLaunchBehavior.AssertionStore.revokeBackgroundAuthorization(for:)(v0[1]);

  object = v0->_object;

  return object();
}

uint64_t BackgroundApplicationLaunchBehavior.init()(uint64_t a1)
{
  type metadata accessor for BackgroundApplicationLaunchBehavior.AssertionStore();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = v2;
  return v1;
}

uint64_t BackgroundApplicationLaunchBehavior.assertionStore.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:), 0, 0);
}

uint64_t BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:)()
{
  v1 = [*(v0 + 32) activity];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = *(v0 + 48);
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;

    *(v0 + 64) = v6;
    v7 = v3[3];
    v8 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v7);
    v15 = (*(v8 + 8) + **(v8 + 8));
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);

    return v15(v11, v10, v7, v8);
  }

  else
  {
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v7 = (*(**(v2 + 56) + 160) + **(**(v2 + 56) + 160));
    v4 = swift_task_alloc();
    *(v2 + 88) = v4;
    *v4 = v2;
    v4[1] = BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:);
    v5 = *(v2 + 64);

    return v7(v3, v5);
  }
}

{
  if ((*(v0 + 96) & 1) == 0)
  {
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:)(char a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:), 0, 0);
}

unint64_t BackgroundApplicationLaunchBehavior.createProcessAssertion(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_opt_self();
  v7 = MEMORY[0x1B270FF70](a1, a2);
  v8 = [v6 processAssertionWithBundleIdentifier_];

  result = type metadata accessor for BKSProcessAssertion();
  a3[3] = result;
  a3[4] = &protocol witness table for BKSProcessAssertion;
  *a3 = v8;
  return result;
}

uint64_t BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:), 0, 0);
}

uint64_t BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:)()
{
  v1 = v0[9];
  v2 = (*(*v1 + 152))(v0[7], v0[8]);
  v0[10] = (*(*v1 + 88))(v2);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:);
  v4 = v0[7];
  v5 = v0[8];

  return BackgroundApplicationLaunchBehavior.AssertionStore.acquireBackgroundAssertion(_:bundleIdentifier:)((v0 + 2), v4, v5);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:)(char a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:), 0, 0);
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t BackgroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2, a3);
}

uint64_t BackgroundApplicationLaunchBehavior.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:) in conformance BackgroundApplicationLaunchBehavior(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for ApplicationLaunchBehavior.revokeBackgroundAuthorization(for:) in conformance BackgroundApplicationLaunchBehavior(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v8(a1, a2);
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.assertions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.acquireBackgroundAssertion(_:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.AssertionStore.acquireBackgroundAssertion(_:bundleIdentifier:), v3, 0);
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.acquireBackgroundAssertion(_:bundleIdentifier:)()
{
  v21 = v0;
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v0[12];
    v6 = v0[11];
    outlined init with copy of UserNotificationCenter(v0[10], (v0 + 2));
    swift_beginAccess();

    specialized Dictionary.subscript.setter((v0 + 2), v6, v5);
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.default);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[11];
      v10 = v0[12];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v20);
      v14 = "Acquired assertion for %s";
LABEL_10:
      _os_log_impl(&dword_1AEB26000, v8, v9, v14, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B27120C0](v13, -1, -1);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.default);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v17 = v0[11];
      v16 = v0[12];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v20);
      v14 = "Failed to acquire assertion for %s";
      goto LABEL_10;
    }
  }

  v18 = v0[1];

  return v18(v4 & 1);
}

Swift::Void __swiftcall BackgroundApplicationLaunchBehavior.AssertionStore.revokeBackgroundAuthorization(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 112);
  if (*(v4 + 16))
  {

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v6)
    {
      outlined init with copy of UserNotificationCenter(*(v4 + 56) + 40 * v5, v19);

      outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v19, v21);
      v7 = v22;
      v8 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v8 + 16))(v7, v8);
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      swift_beginAccess();

      specialized Dictionary.subscript.setter(v19, countAndFlagsBits, object);
      swift_endAccess();
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Log.default);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v19[0] = v13;
        *v12 = 136315138;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v19);
        _os_log_impl(&dword_1AEB26000, v10, v11, "Removing process assertion for %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x1B27120C0](v13, -1, -1);
        MEMORY[0x1B27120C0](v12, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      return;
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.default);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v21);
    _os_log_impl(&dword_1AEB26000, v15, v16, "No existing process assertion for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1B27120C0](v18, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

unint64_t type metadata accessor for BKSProcessAssertion()
{
  result = lazy cache variable for type metadata for BKSProcessAssertion;
  if (!lazy cache variable for type metadata for BKSProcessAssertion)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BKSProcessAssertion);
  }

  return result;
}

uint64_t dispatch thunk of BackgroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of BackgroundApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v8(a1, a2);
}

uint64_t dispatch thunk of BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of BackgroundApplicationLaunchBehavior.AssertionStore.acquireBackgroundAssertion(_:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of ABCReporterProtocol.report(with:duration:);

  return v10(a1, a2, a3);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of ContiguousBytes?(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = specialized Data.InlineData.init(_:)(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = specialized Data.LargeSlice.init(_:)(v3, v4);
    }

    else
    {
      v6 = specialized Data.InlineSlice.init(_:)(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t UUID.data.getter(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = UUID.uuid.getter();
  v3[1] = v1;
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v3, &v4);
}

uint64_t UUID.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(a2) != 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      lazy protocol witness table accessor for type Data and conformance Data();
      DataProtocol.copyBytes(to:)();
      UUID.init(uuid:)();
      outlined consume of Data._Representation(a1, a2);
      v11 = type metadata accessor for UUID();
      return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined consume of Data._Representation(a1, a2);
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 56);

  return v14(a3, 1, 1, v13);
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *closure #2 in Data.init<A>(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      outlined consume of Data._Representation(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v7, v6);
    *v4 = xmmword_1AEE0C200;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    outlined consume of Data._Representation(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1AEE0C200;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1B270E950]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

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
    v5 = MEMORY[0x1B2710050](15, a1 >> 16);
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

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t Histogram.bucketCounts.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore9Histogram_bucketCounts;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t Histogram.init(buckets:log:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v76 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v76 - v16;
  v17 = v3 + OBJC_IVAR____TtC14CopresenceCore9Histogram_minValue;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v3 + OBJC_IVAR____TtC14CopresenceCore9Histogram_maxValue;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v3 + OBJC_IVAR____TtC14CopresenceCore9Histogram_totalCount) = 0;
  v82 = a1;

  specialized MutableCollection<>.sort(by:)(&v82);
  v19 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1, v82);

  if (v19)
  {
    v20 = *(a1 + 16);
    if (v20 < 2)
    {

      outlined init with copy of Logger?(a2, v12);
      v25 = type metadata accessor for Logger();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v12, 1, v25) == 1)
      {
        outlined destroy of Logger?(a2);
        outlined destroy of Logger?(v12);
      }

      else
      {
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = a2;
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_1AEB26000, v31, v32, "Bucket count must be greater than 1", v34, 2u);
          v35 = v34;
          a2 = v33;
          MEMORY[0x1B27120C0](v35, -1, -1);
        }

        outlined destroy of Logger?(a2);
        (*(v26 + 8))(v12, v25);
      }
    }

    else if (*(a1 + 32))
    {

      outlined init with copy of Logger?(a2, v15);
      v21 = type metadata accessor for Logger();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v15, 1, v21) == 1)
      {
        outlined destroy of Logger?(a2);
        outlined destroy of Logger?(v15);
      }

      else
      {
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = a2;
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_1AEB26000, v61, v62, "First bucket must be 0", v64, 2u);
          v65 = v64;
          a2 = v63;
          MEMORY[0x1B27120C0](v65, -1, -1);
        }

        outlined destroy of Logger?(a2);
        (*(v22 + 8))(v15, v21);
      }
    }

    else
    {
      v77 = v3;
      v78 = a2;
      v36 = 0;
      v37 = MEMORY[0x1E69E7CC8];
      v82 = MEMORY[0x1E69E7CC8];
      v80 = xmmword_1AEE07B20;
      v81 = v20;
      do
      {
        if (v36 >= *(a1 + 16))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);

          type metadata accessor for Histogram(0);
          result = swift_deallocPartialClassInstance();
          __break(1u);
          return result;
        }

        v38 = *(a1 + 8 * v36 + 32);
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
        v41 = *(v37 + 2);
        v42 = (v39 & 1) == 0;
        v43 = v41 + v42;
        if (__OFADD__(v41, v42))
        {
          goto LABEL_44;
        }

        v44 = v39;
        if (*(v37 + 3) < v43)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, 1);
          v37 = v82;
          v45 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_46;
          }

          v40 = v45;
        }

        if (v44)
        {
          v47 = *(v37 + 7);
          v48 = *(v47 + 8 * v40);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v47 + 8 * v40) = v48;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
            *(v47 + 8 * v40) = v48;
          }

          v51 = *(v48 + 2);
          v50 = *(v48 + 3);
          if (v51 >= v50 >> 1)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v48);
            *(v47 + 8 * v40) = v48;
          }

          *(v48 + 2) = v51 + 1;
          *&v48[8 * v51 + 32] = v38;
          v20 = v81;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
          v52 = swift_allocObject();
          *(v52 + 16) = v80;
          *(v52 + 32) = v38;
          *&v37[8 * (v40 >> 6) + 64] |= 1 << v40;
          *(*(v37 + 6) + 8 * v40) = v38;
          *(*(v37 + 7) + 8 * v40) = v52;
          v53 = *(v37 + 2);
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_45;
          }

          *(v37 + 2) = v55;
        }

        ++v36;
      }

      while (v20 != v36);
      v56 = specialized _NativeDictionary.filter(_:)(v37);

      v57 = v78;
      if (!v56[2])
      {
        v67 = v77;
        outlined init with copy of Logger?(v78, v77 + OBJC_IVAR____TtC14CopresenceCore9Histogram_log);
        *(v67 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets) = a1;
        v68 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v68 + 16) = v20;
        bzero((v68 + 32), 8 * v20);

        outlined destroy of Logger?(v57);
        result = v67;
        *(v67 + OBJC_IVAR____TtC14CopresenceCore9Histogram_bucketCounts) = v68;
        return result;
      }

      v58 = v79;
      outlined init with copy of Logger?(v57, v79);
      v59 = type metadata accessor for Logger();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v58, 1, v59) == 1)
      {
        outlined destroy of Logger?(v57);

        outlined destroy of Logger?(v58);
      }

      else
      {

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v82 = v72;
          *v71 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
          v73 = Dictionary.Keys.description.getter();
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v82);

          *(v71 + 4) = v75;
          _os_log_impl(&dword_1AEB26000, v69, v70, "Duplicates found, %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          MEMORY[0x1B27120C0](v72, -1, -1);
          v58 = v79;
          MEMORY[0x1B27120C0](v71, -1, -1);
        }

        else
        {
        }

        outlined destroy of Logger?(v78);
        (*(v60 + 8))(v58, v59);
      }
    }
  }

  else
  {

    outlined init with copy of Logger?(a2, v9);
    v23 = type metadata accessor for Logger();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v9, 1, v23) == 1)
    {
      outlined destroy of Logger?(a2);
      outlined destroy of Logger?(v9);
    }

    else
    {
      v27 = a2;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1AEB26000, v28, v29, "Buckets not sorted", v30, 2u);
        MEMORY[0x1B27120C0](v30, -1, -1);
      }

      outlined destroy of Logger?(v27);
      (*(v24 + 8))(v9, v23);
    }
  }

  type metadata accessor for Histogram(0);
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t Histogram.indexForValue(_:low:high:)(unint64_t result, int64_t a2, int64_t a3)
{
  if (a3 < a2)
  {
    return 0;
  }

  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = *(v3 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  v5 = *(v4 + 16);
  if (v5 <= a3)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = v4 + 32;
  if (*(v4 + 32 + 8 * a3) <= result)
  {
    return a3;
  }

  v7 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    goto LABEL_25;
  }

  if (v7 >= -1)
  {
    v8 = v7 / 2;
    if (v7 / 2 < v5)
    {
      v9 = *(v6 + 8 * v8);
      if (v9 == result)
      {
        return v7 / 2;
      }

      if (v7 >= 2)
      {
        v10 = *(v6 + 8 * (v8 - 1));
        if (v9 > result && v10 <= result)
        {
          return v8 - 1;
        }
      }

      if (v9 <= result)
      {
        a2 = v8 + 1;
      }

      else
      {
        a3 = v8 - 1;
      }

      return Histogram.indexForValue(_:low:high:)(result, a2, a3);
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t Histogram.totalCount.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore9Histogram_totalCount;
  swift_beginAccess();
  return *(v0 + v1);
}

Swift::Bool __swiftcall Histogram.recordValue(_:)(Swift::UInt64 a1)
{
  v3 = Histogram.indexForValue(_:low:high:)(a1, 0, *(*(v1 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets) + 16) - 1);
  v5 = v4;
  if ((v4 & 1) == 0)
  {
    v6 = v3;
    v7 = (*(*v1 + 144))(v26);
    v9 = v8;
    v10 = *v8;
    LOBYTE(v11) = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v10;
    if ((v11 & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = v11;
      *v9 = v11;
    }

    if (v6 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = *(v10 + 32 + 8 * v6);
      v13 = __CFADD__(v12, 1);
      v14 = v12 + 1;
      if (!v13)
      {
        *(v10 + 32 + 8 * v6) = v14;
        v7(v26, 0);
        v15 = OBJC_IVAR____TtC14CopresenceCore9Histogram_totalCount;
        v11 = swift_beginAccess();
        v16 = *(v1 + v15);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (!v17)
        {
          *(v1 + v15) = v18;
          v19 = (*(*v1 + 184))(v11);
          if ((v20 & 1) != 0 || v19 > a1)
          {
            v21 = v1 + OBJC_IVAR____TtC14CopresenceCore9Histogram_minValue;
            v19 = swift_beginAccess();
            *v21 = a1;
            *(v21 + 8) = 0;
          }

          v22 = (*(*v1 + 208))(v19);
          if ((v23 & 1) != 0 || v22 < a1)
          {
            v24 = v1 + OBJC_IVAR____TtC14CopresenceCore9Histogram_maxValue;
            swift_beginAccess();
            *v24 = a1;
            *(v24 + 8) = 0;
          }

          goto LABEL_13;
        }

LABEL_16:
        __break(1u);
        return v11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_13:
  LOBYTE(v11) = (v5 & 1) == 0;
  return v11;
}

Swift::Void __swiftcall Histogram.clearCounts()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets) + 16);
  if (v1)
  {
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v2 + 16) = v1;
    bzero((v2 + 32), 8 * v1);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  (*(*v0 + 136))(v2);
  v3 = OBJC_IVAR____TtC14CopresenceCore9Histogram_totalCount;
  swift_beginAccess();
  *(v0 + v3) = 0;
}

Swift::Void __swiftcall Histogram.clearMaxValue()()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_maxValue;
  swift_beginAccess();
  *v1 = 0;
  *(v1 + 8) = 1;
}

Swift::Void __swiftcall Histogram.clearMinValue()()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_minValue;
  swift_beginAccess();
  *v1 = 0;
  *(v1 + 8) = 1;
}

Swift::Void __swiftcall Histogram.reset()()
{
  (*(*v0 + 264))();
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_minValue;
  swift_beginAccess();
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_maxValue;
  swift_beginAccess();
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t Histogram.conciseDescription.getter()
{
  return Histogram.conciseDescription.getter();
}

{
  return (*(*v0 + 312))();
}

Swift::String __swiftcall Histogram.intervalDescription(omitEmptyBins:)(Swift::Bool omitEmptyBins)
{
  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_20:
    if (*(v6 + 2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v22 = BidirectionalCollection<>.joined(separator:)();
      v24 = v23;
    }

    else
    {

      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v12 = v22;
    v13 = v24;
    goto LABEL_28;
  }

  v4 = omitEmptyBins;
  v5 = v2 + 40;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = 4;
  v27 = *(v1 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  while (1)
  {
    v11 = v7 - 4;
    if (v4)
    {
      break;
    }

LABEL_10:
    if (v11 >= *(v2 + 16) - 1)
    {
      _StringGuts.grow(_:)(16);

      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v19);

      v20 = MEMORY[0x1B2710020](0x8FB8EFBE99E2202CLL, 0xAB00000000203A29);
      v12 = (*(*v28 + 128))(v20);
      if (v11 >= *(v12 + 16))
      {
        goto LABEL_25;
      }

      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v21);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }
    }

    else
    {
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v15);

      v12 = MEMORY[0x1B2710020](8236, 0xE200000000000000);
      if ((v7 - 3) >= *(v2 + 16))
      {
        goto LABEL_26;
      }

      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v16);

      v17 = MEMORY[0x1B2710020](2112041, 0xE300000000000000);
      v12 = (*(*v28 + 128))(v17);
      if (v11 >= *(v12 + 16))
      {
        goto LABEL_27;
      }

      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v18);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v4 = omitEmptyBins;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    v2 = v27;
    if (v9 >= v8 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[16 * v9];
    *(v10 + 4) = 91;
    *(v10 + 5) = 0xE100000000000000;
LABEL_6:
    v5 += 8;
    ++v7;
    if (!--v3)
    {
      goto LABEL_20;
    }
  }

  v12 = (*(*v28 + 128))();
  if (v11 < *(v12 + 16))
  {
    v14 = *(v12 + 8 * v7);

    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t Histogram.deinit()
{
  outlined destroy of Logger?(v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_log);

  return v0;
}

uint64_t Histogram.__deallocating_deinit()
{
  outlined destroy of Logger?(v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_log);

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Histogram(uint64_t a1)
{
  result = type metadata singleton initialization cache for Histogram;
  if (!type metadata singleton initialization cache for Histogram)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVys6UInt64VSayAIGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_s6I11V_SayAJGTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiJIsgnndzo_Tf1nc_n04_ss6i22VSayABGSbIgygd_AbCSbs5T112_pIegnndzo_TR050_s14CopresenceCore9HistogramC7buckets3logACSgSays6A34VG_2os6LoggerVSgtcfcSbAH_AItXEfU0_Tf3nnpf_nTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVys6UInt64VSayAIGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_s6I11V_SayAJGTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiJIsgnndzo_Tf1nc_n04_ss6i22VSayABGSbIgygd_AbCSbs5T112_pIegnndzo_TR050_s14CopresenceCore9HistogramC7buckets3logACSgSays6A34VG_2os6LoggerVSgtcfcSbAH_AItXEfU0_Tf3nnpf_nTf1nnc_n(v8, v4, v2);
  result = MEMORY[0x1B27120C0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64VSayADGGMd, &_ss18_DictionaryStorageCys6UInt64VSayADGGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = MEMORY[0x1B27111C0](*(v9 + 40), v17);
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    v33 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = type metadata accessor for Date();
  v54 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    Hasher.init(_seed:)();

    v52 = v27;
    String.hash(into:)();
    result = Hasher._finalize()();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized static Histogram.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  v3 = *(a2 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    v10 = (*(*result + 128))(result);
    v11 = (*(*a2 + 128))();
    v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v10, v11);

    if (v12)
    {
      v14 = (*(*v6 + 184))(v13);
      v16 = v15;
      result = (*(*a2 + 184))();
      if (v16)
      {
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v18 = result;
        result = 0;
        if ((v17 & 1) != 0 || v14 != v18)
        {
          return result;
        }
      }

      v19 = (*(*v6 + 208))(result);
      v21 = v20;
      result = (*(*a2 + 208))();
      if (v21)
      {
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v23 = result;
        result = 0;
        if ((v22 & 1) != 0 || v19 != v23)
        {
          return result;
        }
      }

      v24 = (*(*v6 + 232))(result);
      return v24 == (*(*a2 + 232))();
    }

    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t keypath_set_2Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

void type metadata completion function for Histogram(uint64_t a1)
{
  type metadata accessor for Logger?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Logger?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Logger?)
  {
    type metadata accessor for Logger();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Logger?);
    }
  }
}

uint64_t DarwinNotification.__allocating_init(name:queue:)(char a1, void *a2)
{
  if (a1)
  {
    v3 = 0xD000000000000056;
  }

  else
  {
    v3 = 0xD00000000000003ALL;
  }

  if (a1)
  {
    v4 = "nmanagerhost.shouldconnect";
  }

  else
  {
    v4 = "com.apple.facetime";
  }

  v5 = swift_allocObject();
  DarwinNotification.init(name:queue:)(v3, v4 | 0x8000000000000000, a2);
  return v5;
}

Swift::Void __swiftcall DarwinNotification.post()()
{
  v0 = String.utf8CString.getter();
  notify_post((v0 + 32));
}

uint64_t DarwinNotification.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void (*DarwinNotification.state.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 48) = DarwinNotification.state.getter();
  return DarwinNotification.state.modify;
}

void DarwinNotification.state.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  v4 = *(*a1 + 7);
  swift_beginAccess();
  notify_set_state(*(v4 + 32), v3);

  free(v2);
}

uint64_t DarwinNotification.__allocating_init(name:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  DarwinNotification.init(name:queue:)(a1, a2, a3);
  return v6;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t DarwinNotification.deinit()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));

  return v0;
}

uint64_t DarwinNotification.__deallocating_deinit()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in DarwinNotification.init(name:queue:)()
{
  swift_unownedRetainStrong();
  DarwinNotification.handleNotification()();
}

uint64_t AsyncBroadcastStream.State.init(generation:continuations:currentValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = *(type metadata accessor for AsyncBroadcastStream.State(0, a4, a3, a4) + 32);
  v11 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, a4, v9, v10);
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v8], a3, v11);
}

void *AsyncBroadcastStream.__allocating_init(initialValue:shouldYieldValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v5 + 80);
  v10 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, v9, a3, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *(v9 - 8);
  (*(v14 + 16))(&v18 - v12, a1, v9);
  (*(v14 + 56))(v13, 0, 1, v9);
  v15 = swift_allocObject();
  v16 = specialized AsyncBroadcastStream.init(initialValue:shouldYieldValue:)(v13, a2, a3, v15);

  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(a1, v9);
  return v16;
}

void *AsyncBroadcastStream.__allocating_init<>(initialValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 80);
  v8 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *(v7 - 8);
  (*(v12 + 16))(&v17 - v10, a1, v7);
  (*(v12 + 56))(v11, 0, 1, v7);
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = a2;
  swift_allocObject();
  v15 = specialized AsyncBroadcastStream.init(initialValue:shouldYieldValue:)(v11, partial apply for closure #1 in AsyncBroadcastStream.init<>(initialValue:), v13, v14);

  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(a1, v7);
  return v15;
}

void *AsyncBroadcastStream.__allocating_init(_:shouldYieldValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 80);
  v8 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(*(v7 - 8) + 56))(&v15 - v10, 1, 1, v7);
  swift_allocObject();
  v13 = specialized AsyncBroadcastStream.init(initialValue:shouldYieldValue:)(v11, a2, a3, v12);

  (*(v9 + 8))(v11, v8);
  return v13;
}

void *AsyncBroadcastStream.__allocating_init<>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 80);
  v7 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  (*(*(v6 - 8) + 56))(&v15 - v9, 1, 1, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = a2;
  swift_allocObject();
  v13 = specialized AsyncBroadcastStream.init(initialValue:shouldYieldValue:)(v10, partial apply for closure #1 in AsyncBroadcastStream.init<>(_:), v11, v12);

  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t AsyncBroadcastStream.deinit()
{
  AsyncBroadcastStream.finish()();

  return v0;
}

Swift::Void __swiftcall AsyncBroadcastStream.finish()()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for AsyncStream.Continuation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - v4;
  v6 = v0[2];
  v21[4] = v1;
  type metadata accessor for AsyncBroadcastStream.State(0, v1, v7, v8);
  type metadata accessor for Dictionary();
  v9 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v10));
  partial apply for closure #1 in AsyncBroadcastStream.finish()(v6 + v9, &v22);
  os_unfair_lock_unlock((v6 + v10));
  v11 = 0;
  v12 = v22;
  v14 = v22 + 64;
  v13 = *(v22 + 64);
  v15 = 1 << *(v22 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v21[1] = v3 + 16;
  if ((v16 & v13) != 0)
  {
    do
    {
      v19 = v11;
LABEL_9:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v3 + 16))(v5, *(v12 + 56) + *(v3 + 72) * (v20 | (v19 << 6)), v2);
      AsyncStream.Continuation.finish()();
      (*(v3 + 8))(v5, v2);
    }

    while (v17);
  }

  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v19);
    ++v11;
    if (v17)
    {
      v11 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t AsyncBroadcastStream.__deallocating_deinit()
{
  AsyncBroadcastStream.deinit();

  return swift_deallocClassInstance();
}

uint64_t AsyncBroadcastStream.sequence.getter@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = *(*v1 + 80);
  v3 = v1;
  v4 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v56 = &v53 - v6;
  v67 = *(v2 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v53 - v9;
  v12 = type metadata accessor for AsyncBroadcastStream.CurrentValue(255, v2, v10, v11);
  v62 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = TupleTypeMetadata2 - 8;
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v53 - v16;
  v61 = *(v12 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v60 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v53 - v20;
  v21 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - v23;
  v25 = type metadata accessor for AsyncStream.Continuation();
  v66 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  v28 = type metadata accessor for AsyncStream();
  v64 = *(v28 - 8);
  v65 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v53 - v29;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8650], v21);
  v63 = v30;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v22 + 8))(v24, v21);
  v31 = *(v3 + 16);
  v69 = v2;
  v70 = v27;
  type metadata accessor for AsyncBroadcastStream.State(0, v2, v32, v33);
  v34 = *(*v31 + *MEMORY[0x1E69E6B68] + 16);
  v35 = (*(*v31 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v31 + v35));
  partial apply for closure #1 in AsyncBroadcastStream.sequence.getter((v31 + v34), v17);
  v36 = (v31 + v35);
  v37 = v59;
  os_unfair_lock_unlock(v36);
  v38 = *v17;
  v39 = *(v14 + 56);
  v40 = v60;
  v41 = v61;
  v42 = &v17[v39];
  v43 = v25;
  v44 = v62;
  (*(v61 + 32))(v37, v42, v62);
  v45 = swift_allocObject();
  v46 = v41;
  swift_weakInit();
  v47 = swift_allocObject();
  v47[2] = v2;
  v47[3] = v45;
  v47[4] = v38;
  v48 = v67;
  AsyncStream.Continuation.onTermination.setter();
  (*(v41 + 16))(v40, v37, v44);
  if ((*(v48 + 48))(v40, 1, v2) == 1)
  {
    v49 = *(v41 + 8);
    v49(v37, v44);
    v49(v40, v44);
  }

  else
  {
    v50 = v55;
    (*(v48 + 32))(v55, v40, v2);
    (*(v48 + 16))(v54, v50, v2);
    v51 = v56;
    AsyncStream.Continuation.yield(_:)();
    (*(v57 + 8))(v51, v58);
    (*(v48 + 8))(v50, v2);
    (*(v46 + 8))(v37, v44);
  }

  (*(v64 + 32))(v68, v63, v65);
  return (*(v66 + 8))(v27, v43);
}

uint64_t closure #1 in AsyncBroadcastStream.sequence.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for AsyncStream.Continuation();
  v9 = type metadata accessor for Optional();
  result = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v22 - v11;
  v13 = *a1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a1;
    v14 = *(v8 - 8);
    (*(v14 + 16))(v12, a2, v8);
    (*(v14 + 56))(v12, 0, 1, v8);
    v22[3] = v13;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v17 = type metadata accessor for AsyncBroadcastStream.CurrentValue(255, a3, v15, v16);
    v18 = *(swift_getTupleTypeMetadata2() + 48);
    *a4 = v13;
    v21 = type metadata accessor for AsyncBroadcastStream.State(0, a3, v19, v20);
    return (*(*(v17 - 8) + 16))(&a4[v18], &a1[*(v21 + 32)], v17);
  }

  return result;
}

uint64_t closure #2 in AsyncBroadcastStream.sequence.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 16);

    MEMORY[0x1EEE9AC00](v7);
    type metadata accessor for AsyncBroadcastStream.State(0, a4, v8, v9);
    v10 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
    v11 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v11));
    partial apply for closure #1 in closure #2 in AsyncBroadcastStream.sequence.getter(v6 + v10);
    os_unfair_lock_unlock((v6 + v11));
  }

  return result;
}

uint64_t closure #1 in closure #2 in AsyncBroadcastStream.sequence.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AsyncStream.Continuation();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = a2;
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t AsyncBroadcastStream.yield(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v31 - v5;
  v38 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - v7;
  v8 = type metadata accessor for AsyncStream.Continuation();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v31 - v10;
  v11 = v1[2];
  v43 = v1;
  v44 = a1;
  v40 = v3;
  v41 = a1;
  type metadata accessor for AsyncBroadcastStream.State(0, v3, v12, v13);
  v36 = v8;
  type metadata accessor for Dictionary.Values();
  type metadata accessor for Optional();
  v14 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
  v15 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v11 + v15));
  partial apply for closure #1 in AsyncBroadcastStream.yield(_:)(v11 + v14, v16, &v45);
  os_unfair_lock_unlock((v11 + v15));
  result = v45;
  if (v45)
  {
    v18 = v45 + 64;
    v19 = 1 << *(v45 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v45 + 64);
    v22 = (v19 + 63) >> 6;
    v32 = (v4 + 16);
    v33 = v9 + 16;
    v34 = v9;
    v31 = v9 + 8;
    v23 = (v6 + 8);
    v42 = v45;

    v24 = 0;
    v25 = v34;
    for (i = v37; v21; result = (*v23)(i, v38))
    {
      v27 = v24;
LABEL_10:
      v28 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v29 = v35;
      v30 = v36;
      (*(v25 + 16))(v35, *(v42 + 56) + *(v25 + 72) * (v28 | (v27 << 6)), v36);
      (*v32)(v39, v41, v40);
      AsyncStream.Continuation.yield(_:)();
      (*(v25 + 8))(v29, v30);
    }

    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v27 >= v22)
      {
      }

      v21 = *(v18 + 8 * v27);
      ++v24;
      if (v21)
      {
        v24 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in AsyncBroadcastStream.yield(_:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v24 = a3;
  v25 = a5;
  v7 = (*a2)[10];
  v8 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, v7, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - v14;
  v18 = *(type metadata accessor for AsyncBroadcastStream.State(0, v7, v16, v17) + 32);
  (*(v9 + 16))(v12, a1 + v18, v8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    v19 = *(v9 + 8);
    v19(v12, v8);
    v20 = v24;
LABEL_5:
    v19((a1 + v18), v8);
    (*(v13 + 16))(a1 + v18, v20, v7);
    (*(v13 + 56))(a1 + v18, 0, 1, v7);
    v23 = *(a1 + 8);
    type metadata accessor for AsyncStream.Continuation();
    *v25 = v23;
  }

  (*(v13 + 32))(v15, v12, v7);
  v20 = v24;
  v21 = (a2[3])(v15, v24);
  result = (*(v13 + 8))(v15, v7);
  if (v21)
  {
    v19 = *(v9 + 8);
    goto LABEL_5;
  }

  *v25 = 0;
  return result;
}

void closure #1 in AsyncBroadcastStream.finish()(uint64_t a1@<X0>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  type metadata accessor for AsyncStream.Continuation();
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(0);
  *a3 = v4;
}

uint64_t AsyncBroadcastStream<>.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a4;
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, v6, a2, a3);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = v4[2];
  v25 = v6;
  v26 = a1;
  type metadata accessor for AsyncBroadcastStream.State(0, v6, v15, v16);
  v17 = *(*v14 + *MEMORY[0x1E69E6B68] + 16);
  v18 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v18));
  partial apply for closure #1 in AsyncBroadcastStream<>.value.getter(v14 + v17, v19, v20, v13);
  os_unfair_lock_unlock((v14 + v18));
  (*(v8 + 16))(v11, v13, v7);
  v21 = *(v6 - 8);
  if ((*(v21 + 48))(v11, 1, v6) == 1)
  {
    swift_getAssociatedTypeWitness();
    static Array._allocateUninitialized(_:)();
    dispatch thunk of ExpressibleByArrayLiteral.init(arrayLiteral:)();
    return (*(v8 + 8))(v13, v7);
  }

  else
  {
    (*(v8 + 8))(v13, v7);
    return (*(v21 + 32))(v24, v11, v6);
  }
}

{
  v24 = a4;
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, v6, a2, a3);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = v4[2];
  v25 = v6;
  v26 = a1;
  type metadata accessor for AsyncBroadcastStream.State(0, v6, v15, v16);
  v17 = *(*v14 + *MEMORY[0x1E69E6B68] + 16);
  v18 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v18));
  partial apply for closure #1 in AsyncBroadcastStream<>.value.getter(v14 + v17, v19, v20, v13);
  os_unfair_lock_unlock((v14 + v18));
  (*(v8 + 16))(v11, v13, v7);
  v21 = *(v6 - 8);
  if ((*(v21 + 48))(v11, 1, v6) == 1)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    static Array._allocateUninitialized(_:)();
    dispatch thunk of ExpressibleByDictionaryLiteral.init(dictionaryLiteral:)();
    return (*(v8 + 8))(v13, v7);
  }

  else
  {
    (*(v8 + 8))(v13, v7);
    return (*(v21 + 32))(v24, v11, v6);
  }
}

uint64_t AsyncBroadcastStream<>.yield<A>(modifyingCurrentValue:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  return AsyncBroadcastStream<>.yield<A>(modifyingCurrentValue:)(a1);
}

{
  return AsyncBroadcastStream<>.yield<A>(modifyingCurrentValue:)(a1);
}

uint64_t AsyncBroadcastStream<>.yield<A>(modifyingCurrentValue:)(void (*a1)(char *))
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v8(v7);
  a1(v6);
  AsyncBroadcastStream.yield(_:)(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t AsyncBroadcastStream.value.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + 80);
  v6 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, v5, a1, a2);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  v13 = v3[2];
  v24 = v5;
  type metadata accessor for AsyncBroadcastStream.State(0, v5, v14, v15);
  v16 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  v17 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v17));
  partial apply for closure #1 in AsyncBroadcastStream.value.getter(v13 + v16, v12, v18, v19);
  os_unfair_lock_unlock((v13 + v17));
  (*(v7 + 32))(v10, v12, v6);
  v20 = *(v5 - 8);
  v21 = 1;
  if ((*(v20 + 48))(v10, 1, v5) != 1)
  {
    (*(v20 + 32))(a3, v10, v5);
    v21 = 0;
  }

  return (*(v20 + 56))(a3, v21, 1, v5);
}

uint64_t closure #1 in AsyncBroadcastStream.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *(type metadata accessor for AsyncBroadcastStream.State(0, a2, a4, a5) + 32);
  v11 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, a2, v9, v10);
  return (*(*(v11 - 8) + 16))(a3, a1 + v8, v11);
}

uint64_t specialized OSAllocatedUnfairLock.init(uncheckedState:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  return static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
}

void *specialized AsyncBroadcastStream.init(initialValue:shouldYieldValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v7 = *(*v4 + 80);
  v8 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v14 = type metadata accessor for AsyncBroadcastStream.State(0, v7, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v4[3] = a2;
  v4[4] = a3;
  (*(v9 + 16))(v11, v22, v8);
  type metadata accessor for AsyncStream.Continuation();

  v18 = Dictionary.init()();
  AsyncBroadcastStream.State.init(generation:continuations:currentValue:)(0, v18, v11, v7, v17);
  v19 = specialized OSAllocatedUnfairLock.init(uncheckedState:)(v17, v14);
  (*(v15 + 8))(v17, v14);
  v4[2] = v19;
  return v4;
}

uint64_t partial apply for closure #1 in AsyncBroadcastStream<>.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  return partial apply for closure #1 in AsyncBroadcastStream<>.value.getter(a1, a2, a3, a4);
}

{
  v7 = *(v4 + 16);
  v8 = *(type metadata accessor for AsyncBroadcastStream.State(0, v7, a2, a3) + 32);
  v11 = type metadata accessor for AsyncBroadcastStream.CurrentValue(0, v7, v9, v10);
  return (*(*(v11 - 8) + 16))(a4, a1 + v8, v11);
}

{
  return partial apply for closure #1 in AsyncBroadcastStream<>.value.getter(a1, a2, a3, a4);
}

uint64_t type metadata completion function for AsyncBroadcastStream.State(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for AsyncStream.Continuation();
  result = type metadata accessor for Dictionary();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for AsyncBroadcastStream.CurrentValue(319, v1, v3, v4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncBroadcastStream.State(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for AsyncBroadcastStream.State(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v23 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v27 = *(v7 + 56);
      v28 = a2 + 1;

      v27((v21 + v11 + 8) & ~v11, v28);
    }

    else
    {
      if (v12 <= 3)
      {
        v24 = ~(-1 << (8 * v12));
      }

      else
      {
        v24 = -1;
      }

      if (v12)
      {
        v25 = v24 & (~v9 + a2);
        if (v12 <= 3)
        {
          v26 = v12;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v12);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *v21 = v22;
  }
}

uint64_t partial apply for closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t PeoplePickerHostConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PeoplePickerHostConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for PeoplePickerHostConnection.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

Swift::Void __swiftcall PeoplePickerHostConnection.handleHostConnectionInvalidated()()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1AEB26000, v3, v4, "handleHostConnectionInvalidated: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v8 = &v2[direct field offset for PeoplePickerHostConnection.delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

char *PeoplePickerHostConnection.__allocating_init(connection:queue:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[direct field offset for PeoplePickerHostConnection.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  return specialized XPCHostConnection.init(connection:queue:)(a1, a2);
}

char *PeoplePickerHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  *(v2 + direct field offset for PeoplePickerHostConnection.delegate + 8) = 0;
  swift_unknownObjectWeakInit();

  return specialized XPCHostConnection.init(connection:queue:)(a1, a2);
}

id PeoplePickerHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PeoplePickerHostConnection.shareSheetSessionHasRecipients(sessionID:reply:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v7 = v3 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 32))(a1, a2, ObjectType, v8);
    a3(v10 & 1);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.host);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000001AEE385F0, &v17);
      _os_log_impl(&dword_1AEB26000, v13, v14, "%s: People picker host connection delegate is unexpectedly nil", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    return (a3)(0);
  }
}

uint64_t PeoplePickerHostConnection.checkIn(_:reply:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return a2(1);
}

uint64_t PeoplePickerHostConnection.updateActivity(_:)(uint64_t a1)
{
  v3 = v1 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall PeoplePickerHostConnection.dismissViewController()()
{
  v1 = v0 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t type metadata accessor for PeoplePickerHostConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for PeoplePickerHostConnection;
  if (!type metadata singleton initialization cache for PeoplePickerHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized PeoplePickerHostConnection.shareSheetSessionHasRecipients(sessionID:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 32))(a1, a2, ObjectType, v8);
    (*(a4 + 16))(a4, v10 & 1);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.host);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000001AEE385F0, &v17);
      _os_log_impl(&dword_1AEB26000, v13, v14, "%s: People picker host connection delegate is unexpectedly nil", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    return (*(a4 + 16))(a4, 0);
  }
}

uint64_t specialized PeoplePickerHostConnection.checkIn(_:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return (*(a3 + 16))(a3, 1);
}

void *AttachmentLedger_SubscribeResponse.InitializeAck.otherParticipants.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    v9 = v4[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      goto LABEL_19;
    }

    v13 = v8;
    if (v4[3] < v12)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, isUniquelyReferenced_nonNull_native);
      v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v13)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v17 = v7;
    specialized _NativeDictionary.copy()();
    v7 = v17;
    if (v13)
    {
LABEL_3:
      *(v4[7] + 8 * v7) = v5;
      goto LABEL_4;
    }

LABEL_12:
    v4[(v7 >> 6) + 8] |= 1 << v7;
    *(v4[6] + 8 * v7) = v5;
    *(v4[7] + 8 * v7) = v5;
    v15 = v4[2];
    v11 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v11)
    {
      goto LABEL_20;
    }

    v4[2] = v16;
LABEL_4:
    if (v2 == ++v3)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.uploadStatus.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v28 - v15);
  if (*(v1 + 24) != 1)
  {
    goto LABEL_4;
  }

  v17 = *(v1 + 16);
  if (v17 <= 1)
  {
    if (!v17)
    {
LABEL_4:
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v18 = 1;
      return swift_willThrow();
    }

    *a1 = 0;
    a1[1] = 0;
    v21 = 0xF000000000000000;
    goto LABEL_11;
  }

  if (v17 != 2)
  {
    *a1 = 0;
    a1[1] = 0;
    v21 = 0xB000000000000000;
LABEL_11:
    a1[2] = v21;
    return result;
  }

  v29 = a1;
  v28 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0) + 28);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v28, v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v19 = *(v10 + 48);
  v20 = v19(v8, 1, v9);
  v30 = v19;
  if (v20 == 1)
  {
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0xC000000000000000;
    UnknownStorage.init()();
    if (v19(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v8, v16, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  v22 = *v16;
  _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v16, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v28, v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v23 = v30;
  v24 = v30(v6, 1, v9);
  v25 = v29;
  if (v24 == 1)
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0xC000000000000000;
    UnknownStorage.init()();
    if (v23(v6, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v6, v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  v26 = v13[1];
  v27 = v13[2];
  outlined copy of Data._Representation(v26, v27);
  result = _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  *v25 = v22;
  v25[1] = v26;
  v25[2] = v27;
  return result;
}

uint64_t AttachmentLedger_AttachmentMetadata.uploadStatus.getter@<X0>(void *a1@<X8>)
{
  v58 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - v6;
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v46 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v46 - v24;
  if (*(v1 + 32) != 1)
  {
    goto LABEL_4;
  }

  v26 = *(v1 + 24);
  if (v26 <= 1)
  {
    if (!v26)
    {
LABEL_4:
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v27 = 1;
      return swift_willThrow();
    }

    v30 = v58;
    *v58 = 0;
    v30[1] = 0;
    v31 = 0xF000000000000000;
    goto LABEL_11;
  }

  if (v26 != 2)
  {
    v30 = v58;
    *v58 = 0;
    v30[1] = 0;
    v31 = 0xB000000000000000;
LABEL_11:
    v30[2] = v31;
    return result;
  }

  v48 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v48, v17, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v52 = *(v19 + 48);
  v28 = v52(v17, 1, v18);
  v50 = v19 + 48;
  if (v28 == 1)
  {
    *v25 = 0;
    *(v25 + 1) = 0xE000000000000000;
    *(v25 + 2) = 0;
    *(v25 + 3) = 0xE000000000000000;
    *(v25 + 2) = xmmword_1AEE0C200;
    *(v25 + 3) = xmmword_1AEE0C200;
    UnknownStorage.init()();
    v29 = *(v18 + 36);
    v49 = v2;
    v51 = *(v56 + 56);
    v51(&v25[v29], 1, 1, v57);
    v51(&v25[*(v18 + 40)], 1, 1, v57);
    if (v52(v17, 1, v18) != 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v17, v25, type metadata accessor for AttachmentLedger_MMCSMetadata);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v25[*(v18 + 40)], v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v32 = v57;
  v33 = v56 + 48;
  v51 = *(v56 + 48);
  v34 = (v51)(v7, 1, v57);
  v49 = v33;
  if (v34 == 1)
  {
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0xC000000000000000;
    UnknownStorage.init()();
    _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v25, type metadata accessor for AttachmentLedger_MMCSMetadata);
    v35 = v51;
    if ((v51)(v7, 1, v32) != 1)
    {
      outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v25, type metadata accessor for AttachmentLedger_MMCSMetadata);
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v7, v12, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    v35 = v51;
  }

  v47 = *v12;
  _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v12, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v36 = v53;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v48, v53, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v37 = v52;
  if (v52(v36, 1, v18) == 1)
  {
    *v22 = 0;
    *(v22 + 1) = 0xE000000000000000;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0xE000000000000000;
    *(v22 + 2) = xmmword_1AEE0C200;
    *(v22 + 3) = xmmword_1AEE0C200;
    UnknownStorage.init()();
    v38 = v57;
    v39 = *(v56 + 56);
    v39(&v22[*(v18 + 36)], 1, 1, v57);
    v39(&v22[*(v18 + 40)], 1, 1, v38);
    v40 = v37(v36, 1, v18);
    v35 = v51;
    v42 = v54;
    v41 = v55;
    if (v40 != 1)
    {
      outlined destroy of NSObject?(v36, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v36, v22, type metadata accessor for AttachmentLedger_MMCSMetadata);
    v42 = v54;
    v41 = v55;
    v38 = v57;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v22[*(v18 + 40)], v41, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if (v35(v41, 1, v38) == 1)
  {
    *v42 = 0;
    v42[1] = 0;
    v42[2] = 0xC000000000000000;
    UnknownStorage.init()();
    _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v22, type metadata accessor for AttachmentLedger_MMCSMetadata);
    if (v35(v41, 1, v38) != 1)
    {
      outlined destroy of NSObject?(v41, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v22, type metadata accessor for AttachmentLedger_MMCSMetadata);
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v41, v42, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  v43 = v42[1];
  v44 = v42[2];
  outlined copy of Data._Representation(v43, v44);
  result = _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v42, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v45 = v58;
  *v58 = v47;
  v45[1] = v43;
  v45[2] = v44;
  return result;
}

uint64_t _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed PresenceSessionConnectionInfo?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t BackgroundSessionManagerXPCClient.prewarm()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManagerXPCClient.prewarm(), 0, 0);
}

uint64_t BackgroundSessionManagerXPCClient.prewarm()()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = BackgroundSessionManagerXPCClient.prewarm();
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0x286D726177657270, 0xE900000000000029, partial apply for closure #1 in BackgroundSessionManagerXPCClient.prewarm(), v1, v3);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = ConversationManagerClient.advertiseGroupActivity(_:);
  }

  else
  {

    v2 = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void closure #1 in BackgroundSessionManagerXPCClient.prewarm()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.prewarm();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_38_0;
  v10 = _Block_copy(aBlock);

  [a2 prewarmWithCompletion_];
  _Block_release(v10);
}

void closure #1 in closure #1 in BackgroundSessionManagerXPCClient.prewarm()(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.default);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Failed to prewarm xpc connection: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.default);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1AEB26000, oslog, v14, "Successfully prewarmed xpc connection", v15, 2u);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }
  }
}

uint64_t BackgroundSessionManagerXPCClient.begin(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManagerXPCClient.begin(request:), 0, 0);
}

uint64_t BackgroundSessionManagerXPCClient.begin(request:)()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = BackgroundSessionManagerXPCClient.begin(request:);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0x6572286E69676562, 0xEF293A7473657571, partial apply for closure #1 in BackgroundSessionManagerXPCClient.begin(request:), v2, v4);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = BackgroundSessionManagerXPCClient.begin(request:);
  }

  else
  {

    v2 = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in BackgroundSessionManagerXPCClient.begin(request:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.begin(request:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_32_2;
  v12 = _Block_copy(aBlock);
  v13 = a3;

  [a2 beginWithRequest:v13 completion:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in BackgroundSessionManagerXPCClient.begin(request:)(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    v6 = a1;
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315394;
      type metadata accessor for BackgroundSessionCreationRequest(0);
      v12 = v7;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v31);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v16 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v31);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1AEB26000, v8, v9, "Failed to begin activity: %s with error %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    v31 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.default);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      type metadata accessor for BackgroundSessionCreationRequest(0);
      v27 = v22;
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v31);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1AEB26000, v23, v24, "Successfully began activity: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t BackgroundSessionManagerXPCClient.leave(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManagerXPCClient.leave(identifier:), 0, 0);
}

uint64_t BackgroundSessionManagerXPCClient.leave(identifier:)()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = BackgroundSessionManagerXPCClient.leave(identifier:);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000012, 0x80000001AEE38670, partial apply for closure #1 in BackgroundSessionManagerXPCClient.leave(identifier:), v2, v4);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = BackgroundSessionManagerXPCClient.leave(identifier:);
  }

  else
  {

    v2 = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void closure #1 in BackgroundSessionManagerXPCClient.leave(identifier:)(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a2;
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 16))(v11, a3, v8);
  v12 = v4;
  (*(v5 + 16))(v7, v19, v4);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + *(v5 + 80) + v13) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v11, v8);
  (*(v5 + 32))(v15 + v14, v7, v12);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.leave(identifier:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_26_2;
  v16 = _Block_copy(aBlock);

  v17 = isa;
  [v21 leaveWithIdentifier:isa completion:v16];
  _Block_release(v16);
}

uint64_t BackgroundSessionManagerXPCClient.updateMembers(identifier:members:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManagerXPCClient.updateMembers(identifier:members:), 0, 0);
}

uint64_t BackgroundSessionManagerXPCClient.updateMembers(identifier:members:)()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = BackgroundSessionManagerXPCClient.updateMembers(identifier:members:);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000022, 0x80000001AEE38690, partial apply for closure #1 in BackgroundSessionManagerXPCClient.updateMembers(identifier:members:), v1, v4);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = BackgroundSessionManagerXPCClient.updateMembers(identifier:members:);
  }

  else
  {

    v2 = SKPresenceDataSource.releasePresence();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in BackgroundSessionManagerXPCClient.updateMembers(identifier:members:)(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v19 = a4;
  v20 = a1;
  v22 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v19 = Set._bridgeToObjectiveC()().super.isa;
  (*(v10 + 16))(v12, a3, v9);
  (*(v6 + 16))(v8, v20, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, v12, v9);
  (*(v6 + 32))(v15 + v14, v8, v5);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.updateMembers(identifier:members:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_20_1;
  v16 = _Block_copy(aBlock);

  v17 = isa;
  v18 = v19;
  [v22 updateMembersWithIdentifier:isa members:v19 completion:v16];
  _Block_release(v16);
}

uint64_t closure #1 in closure #1 in BackgroundSessionManagerXPCClient.leave(identifier:)(void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  if (a1)
  {
    v17 = a1;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.default);
    (*(v11 + 16))(v14, a2, v10);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = a4;
      v24 = v23;
      v47 = v23;
      *v22 = 136315394;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = a3;
      v27 = v26;
      (*(v11 + 8))(v14, v10);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v47);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      v46 = a1;
      v29 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v30 = String.init<A>(reflecting:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v47);

      *(v22 + 14) = v32;
      _os_log_impl(&dword_1AEB26000, v20, v21, v44, v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v24, -1, -1);
      MEMORY[0x1B27120C0](v22, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    v47 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.default);
    (*(v11 + 16))(v16, a2, v10);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45 = a3;
      v38 = v37;
      v47 = v37;
      *v36 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v11 + 8))(v16, v10);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v47);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_1AEB26000, v34, v35, a5, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1B27120C0](v38, -1, -1);
      MEMORY[0x1B27120C0](v36, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t BackgroundSessionManagerXPCClient.createPresenceSession(with:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManagerXPCClient.createPresenceSession(with:), 0, 0);
}

uint64_t BackgroundSessionManagerXPCClient.createPresenceSession(with:)()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for PresenceSessionConnectionInfo();
  *v3 = v0;
  v3[1] = BackgroundSessionManagerXPCClient.createPresenceSession(with:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001AEE386C0, partial apply for closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:), v2, v4);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = BackgroundSessionManagerXPCClient.updateMembers(identifier:members:);
  }

  else
  {

    v2 = BackgroundSessionManagerXPCClient.createPresenceSession(with:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed PresenceSessionConnectionInfo?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_42;
  v12 = _Block_copy(aBlock);
  v13 = a3;

  [a2 createPresenceSessionWith:v13 completion:v12];
  _Block_release(v12);
}

void closure #1 in closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:)(void *a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);
    v7 = a2;
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v36 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2080;
      v14 = a2;
      v15 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Failed to create presence session with request: %@ with error: %s", v11, 0x16u);
      outlined destroy of NSObject?(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B27120C0](v13, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v36 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.default);
    v21 = a1;
    v22 = a3;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v25 = 138412546;
      *(v25 + 4) = v22;
      *v26 = v22;
      *(v25 + 12) = 2080;
      if (a1)
      {
        type metadata accessor for PresenceSessionConnectionInfo();
        v28 = v22;
        v29 = v21;
        v30 = String.init<A>(reflecting:)();
        v32 = v31;
      }

      else
      {
        v33 = v22;
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v36);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_1AEB26000, v23, v24, "Successfully created presence session with request: %@, connectionInfo: %s", v25, 0x16u);
      outlined destroy of NSObject?(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    if (a1)
    {
      v36 = v21;
      v35 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      __break(1u);
    }
  }
}

id closure #1 in variable initialization expression of static BackgroundSessionManagerInterface.hostObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(inited + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_updateMembersWithIdentifier_members_completion_ argumentIndex:1 ofReply:0];

  return v0;
}

id closure #1 in variable initialization expression of static BackgroundSessionManagerInterface.clientObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(inited + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_updateWithActivitySessions_ argumentIndex:0 ofReply:0];

  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AEE07B10;
  *(v6 + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(v6 + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  specialized _arrayForceCast<A, B>(_:)(v6);
  swift_setDeallocating();
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v10 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v10 forSelector:sel_sessionDidReceiveUpdatedUnknownParticipantListWithSessionID_unknownParticipants_ argumentIndex:1 ofReply:0];

  return v0;
}

void partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
  v5 = *(v2 + 16);

  closure #1 in closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:)(a1, a2, v5);
}

uint64_t objectdestroy_16Tm_1()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.updateMembers(identifier:members:)(void *a1, const char *a2, const char *a3, ...)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  return closure #1 in closure #1 in BackgroundSessionManagerXPCClient.leave(identifier:)(a1, v3 + v8, v3 + ((v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

uint64_t objectdestroyTm_6(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.begin(request:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v3 = *(v1 + 16);

  return closure #1 in closure #1 in BackgroundSessionManagerXPCClient.begin(request:)(a1, v3);
}

void partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.prewarm()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  closure #1 in closure #1 in BackgroundSessionManagerXPCClient.prewarm()(a1);
}

Swift::Int TopicDecryptionError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError()
{
  result = lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError;
  if (!lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError;
  if (!lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000027;
    }

    else
    {
      v3 = 0xD00000000000002CLL;
    }

    if (v2 == 2)
    {
      v4 = "rsationmanagerhost";
    }

    else
    {
      v4 = "lay.GroupSessionService";
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000032;
    }

    else
    {
      v3 = 0xD00000000000002CLL;
    }

    if (v2)
    {
      v4 = "ence.conversationmanagerhost";
    }

    else
    {
      v4 = "stablishing";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000027;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (a2 == 2)
    {
      v6 = "rsationmanagerhost";
    }

    else
    {
      v6 = "lay.GroupSessionService";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000032;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (a2)
    {
      v6 = "ence.conversationmanagerhost";
    }

    else
    {
      v6 = "stablishing";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7368801;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x6D6574737973;
  }

  else if (a1 == 3)
  {
    v3 = 0x68536E6565726373;
    v4 = 0xEB00000000657261;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x636E795374736166;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7368801;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x68536E6565726373;
    v6 = 0xEB00000000657261;
    if (a2 != 3)
    {
      v5 = 0x636E795374736166;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D6574737973;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

void PubSubClient.TopicCategory.init(activity:)(void *a1@<X0>, char *a2@<X8>)
{
  if (a1)
  {
    if ([a1 isSystemActivity])
    {

      v4 = 2;
    }

    else
    {
      v5 = [a1 isScreenSharingActivity];

      if (v5)
      {
        v4 = 3;
      }

      else
      {
        v4 = 1;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

Swift::Int PubSubClientError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

CopresenceCore::PubSubClient::TopicCategory_optional __swiftcall PubSubClient.TopicCategory.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PubSubClient.TopicCategory.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t PubSubClient.TopicCategory.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6D6574737973;
  v4 = 0x68536E6565726373;
  if (v1 != 3)
  {
    v4 = 0x636E795374736166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7368801;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PubSubClient.TopicCategory()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PubSubClient.TopicCategory(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PubSubClient.TopicCategory(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PubSubClient.TopicCategory(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x6D6574737973;
  v7 = 0xEB00000000657261;
  v8 = 0x68536E6565726373;
  if (v2 != 3)
  {
    v8 = 0x636E795374736166;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7368801;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t PubSubClient.reporterTag.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PubSubClient.__allocating_init(serviceProvider:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:topicReporter:topicReporterTag:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CD0];
  *(v12 + 96) = MEMORY[0x1E69E7CC8];
  *(v12 + 104) = v13;
  outlined init with take of ContiguousBytes(a1, v12 + 16);
  *(v12 + 56) = a6;
  *(v12 + 64) = a2;
  *(v12 + 72) = a3;
  *(v12 + 80) = a4;
  *(v12 + 88) = a5;
  return v12;
}

uint64_t PubSubClient.init(serviceProvider:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:topicReporter:topicReporterTag:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = MEMORY[0x1E69E7CD0];
  *(v6 + 96) = MEMORY[0x1E69E7CC8];
  *(v6 + 104) = v12;
  outlined init with take of ContiguousBytes(a1, v6 + 16);
  *(v6 + 56) = a6;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  return v6;
}

uint64_t PubSubClient.__allocating_init(pluginClient:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:topicReporter:topicReporterTag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = type metadata accessor for PluginPubSubServiceProvider();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v16[3] = v13;
  v16[4] = &protocol witness table for PluginPubSubServiceProvider;
  v16[0] = v14;
  return (*(v6 + 184))(v16, a2, a3, a4, a5, a6);
}

void *PubSubClient.deinit()
{
  swift_beginAccess();
  *(v0 + 104) = MEMORY[0x1E69E7CD0];

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t PubSubClient.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 104) = MEMORY[0x1E69E7CD0];

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall PubSubClient.close()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 24))(v1, v2);
}

uint64_t PubSubClient.updateVirtualParticipant(_:localParticipantID:)(void *a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 32))([a1 identifier], a2, v5, v6);
}

uint64_t PubSubClient.localParticipantID.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58 = a8;
  v59 = a6;
  v60 = a4;
  TopicRequest = type metadata accessor for CP_CreateTopicRequest(0);
  v54 = *(TopicRequest - 8);
  v17 = *(v54 + 8);
  v18 = MEMORY[0x1EEE9AC00](TopicRequest);
  v55 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  swift_beginAccess();
  v21 = *(a1[12] + 16);
  v61 = a5;
  v62 = a2;
  if (v21)
  {

    v22 = a2;
    v23 = a3;
    specialized __RawDictionaryStorage.find<A>(_:)(v22, a3);
    if (v24)
    {

      OS_dispatch_queue.sync<A>(execute:)();
      if (LOBYTE(v63[0]) == 1)
      {

        v60(v25, 0);
      }
    }

    else
    {
    }
  }

  else
  {
    v23 = a3;
  }

  v52 = a11;
  v51 = a10;
  v50 = a9;
  v27 = swift_allocObject();
  v57 = v27;
  *(v27 + 16) = 0;
  MEMORY[0x1EEE9AC00](v27);
  *(&v50 - 4) = v62;
  *(&v50 - 3) = v23;
  v56 = v23;
  *(&v50 - 16) = v59;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type CP_CreateTopicRequest and conformance CP_CreateTopicRequest, type metadata accessor for CP_CreateTopicRequest, &protocol conformance descriptor for CP_CreateTopicRequest);
  static Message.with(_:)();
  v28 = a1[5];
  v29 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v28);
  v53 = (*(v29 + 64))(v20, v28, v29);
  v64 = v53;
  v30 = v55;
  _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v20, v55, type metadata accessor for CP_CreateTopicRequest);
  outlined init with copy of UserNotificationCenter(v58, v63);
  v31 = (v54[80] + 64) & ~v54[80];
  v32 = (v17 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 73) & 0xFFFFFFFFFFFFFFF8;
  v54 = v20;
  v34 = (v33 + 47) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v35[2] = v57;
  v35[3] = a1;
  v36 = v61;
  v35[4] = v60;
  v35[5] = v36;
  v37 = v56;
  v35[6] = v62;
  v35[7] = v37;
  outlined init with take of CP_CreateTopicRequest(v30, v35 + v31, type metadata accessor for CP_CreateTopicRequest);
  v38 = v35 + v32;
  v39 = *(a7 + 48);
  *(v38 + 2) = *(a7 + 32);
  *(v38 + 3) = v39;
  v38[64] = *(a7 + 64);
  v40 = *(a7 + 16);
  *v38 = *a7;
  *(v38 + 1) = v40;
  LOBYTE(v32) = v59;
  v38[65] = v59;
  outlined init with take of ContiguousBytes(v63, v35 + v33);
  v41 = (v35 + v34);
  v42 = v50;
  v43 = v51;
  *v41 = v50;
  v41[1] = v43;
  v44 = v52;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = v52;
  outlined init with copy of UserNotificationCenter(v58, v63);
  v45 = swift_allocObject();
  v46 = *(a7 + 48);
  *(v45 + 48) = *(a7 + 32);
  *(v45 + 64) = v46;
  *(v45 + 80) = *(a7 + 64);
  v47 = *(a7 + 16);
  *(v45 + 16) = *a7;
  *(v45 + 32) = v47;
  v48 = v56;
  *(v45 + 88) = v62;
  *(v45 + 96) = v48;
  *(v45 + 104) = v32;
  *(v45 + 112) = a1;
  outlined init with take of ContiguousBytes(v63, v45 + 120);
  *(v45 + 160) = v42;
  *(v45 + 168) = v43;
  v49 = v60;
  *(v45 + 176) = v44;
  *(v45 + 184) = v49;
  *(v45 + 192) = v61;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_CreateTopicResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMR, MEMORY[0x1E695BED8]);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  outlined destroy of CP_CreateTopicRequest(v54, type metadata accessor for CP_CreateTopicRequest);
}

uint64_t closure #1 in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 1;
  return result;
}

uint64_t closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), void (*a5)(void *, uint64_t), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v186 = a8;
  v197 = a7;
  v194 = a6;
  v200 = a5;
  v199 = a4;
  v201 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v179 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v180 = (&v164 - v19);
  v178 = type metadata accessor for PluginConnectError(0);
  v177 = *(v178 - 8);
  v20 = MEMORY[0x1EEE9AC00](v178);
  v175 = &v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v176 = &v164 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v181 = &v164 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v164 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v193 = &v164 - v29;
  v192 = type metadata accessor for DispatchWorkItemFlags();
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v188 = &v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for DispatchQoS();
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v187 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  TopicRequest = type metadata accessor for CP_CreateTopicRequest(0);
  v183 = *(TopicRequest - 8);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v184 = v33;
  v185 = &v164 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for DispatchTime();
  v198 = *(v196 - 8);
  v34 = MEMORY[0x1EEE9AC00](v196);
  v182 = &v164 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v195 = &v164 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v164 - v38;
  v40 = type metadata accessor for PluginRpcError(0);
  v41 = *(v40 - 8);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v164 - v45;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v39, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    return outlined destroy of NSObject?(v39, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  }

  outlined init with take of CP_CreateTopicRequest(v39, v46, type metadata accessor for PluginRpcError);
  swift_beginAccess();
  v48 = v201;
  if (*(a2 + 16) == *(v201 + 64))
  {
    type metadata accessor for PubSubTopicError(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type PubSubTopicError and conformance PubSubTopicError, type metadata accessor for PubSubTopicError, &protocol conformance descriptor for PubSubTopicError);
    v49 = swift_allocError();
    _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v46, v50, type metadata accessor for PluginRpcError);
    swift_storeEnumTagMultiPayload();
    v199(v49, 1);

    return outlined destroy of CP_CreateTopicRequest(v46, type metadata accessor for PluginRpcError);
  }

  v51 = a2;
  v52 = a12;
  v173 = a11;
  v174 = a9;
  _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v46, v44, type metadata accessor for PluginRpcError);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = *v44;
    v54 = *(v44 + 1);
    v55 = *(v44 + 3);
    if (v53 != 14)
    {
      type metadata accessor for PubSubTopicError(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type PubSubTopicError and conformance PubSubTopicError, type metadata accessor for PubSubTopicError, &protocol conformance descriptor for PubSubTopicError);
      v79 = swift_allocError();
      _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v46, v80, type metadata accessor for PluginRpcError);
      swift_storeEnumTagMultiPayload();
      v199(v79, 1);

      return outlined destroy of CP_CreateTopicRequest(v46, type metadata accessor for PluginRpcError);
    }

    v172 = a10;
    v170 = a13;
    v171 = a14;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, log);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v197;
    if (v59)
    {
      v61 = v54;
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1AEB26000, v57, v58, "[CreateTopic] Failed, server bouncing", v62, 2u);
      v63 = v62;
      v54 = v61;
      v52 = a12;
      v60 = v197;
      MEMORY[0x1B27120C0](v63, -1, -1);
    }

    swift_beginAccess();
    v64 = *(v51 + 16);
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (!v65)
    {
      v181 = v54;
      *(v51 + 16) = v66;

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      v69 = os_log_type_enabled(v67, v68);
      v169 = v46;
      v168 = v52;
      v193 = v55;
      v167 = v51;
      if (v69)
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        aBlock = v71;
        *v70 = 134218498;
        *(v70 + 4) = v48[7];
        *(v70 + 12) = 2048;
        swift_beginAccess();
        *(v70 + 14) = *(v51 + 16);

        *(v70 + 22) = 2080;
        *(v70 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v60, &aBlock);
        _os_log_impl(&dword_1AEB26000, v67, v68, "[CreateTopic] Retrying stream in %f seconds, attempt=#%ld topic=%s", v70, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x1B27120C0](v71, -1, -1);
        MEMORY[0x1B27120C0](v70, -1, -1);
      }

      else
      {
      }

      v96 = v182;
      static DispatchTime.now()();
      + infix(_:_:)();
      v97 = *(v198 + 8);
      v198 += 8;
      v180 = v97;
      v97(v96, v196);
      v98 = v48[5];
      v99 = v48[6];
      __swift_project_boxed_opaque_existential_1(v48 + 2, v98);
      v182 = (*(v99 + 8))(v98, v99);
      v100 = v185;
      _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v186, v185, type metadata accessor for CP_CreateTopicRequest);
      outlined init with copy of UserNotificationCenter(v173, &v209);
      v101 = (*(v183 + 80) + 24) & ~*(v183 + 80);
      v102 = (v184 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
      v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
      v104 = (v103 + 23) & 0xFFFFFFFFFFFFFFF8;
      v105 = (v104 + 23) & 0xFFFFFFFFFFFFFFF8;
      v106 = (v105 + 73) & 0xFFFFFFFFFFFFFFF8;
      v186 = (v106 + 47) & 0xFFFFFFFFFFFFFFF8;
      v184 = (v186 + 23) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      *(v107 + 16) = v48;
      outlined init with take of CP_CreateTopicRequest(v100, v107 + v101, type metadata accessor for CP_CreateTopicRequest);
      *(v107 + v102) = v167;
      v108 = (v107 + v103);
      v109 = v200;
      *v108 = v199;
      v108[1] = v109;
      v110 = (v107 + v104);
      v111 = v197;
      *v110 = v194;
      v110[1] = v111;
      v112 = v107 + v105;
      v113 = v174;
      *(v112 + 64) = *(v174 + 64);
      v114 = v113[3];
      *(v112 + 32) = v113[2];
      *(v112 + 48) = v114;
      v115 = v113[1];
      *v112 = *v113;
      *(v112 + 16) = v115;
      *(v112 + 65) = v172;
      outlined init with take of ContiguousBytes(&v209, v107 + v106);
      v116 = (v107 + v186);
      v117 = v170;
      *v116 = v168;
      v116[1] = v117;
      *(v107 + v184) = v171;
      v207 = closure #1 in retry #1 () in closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)partial apply;
      v208 = v107;
      aBlock = MEMORY[0x1E69E9820];
      v204 = 1107296256;
      v205 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v206 = &block_descriptor_47_2;
      v118 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      v119 = v187;
      static DispatchQoS.unspecified.getter();
      v202 = MEMORY[0x1E69E7CC0];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      v120 = v188;
      v121 = v192;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v122 = v195;
      v123 = v182;
      MEMORY[0x1B2710670](v195, v119, v120, v118);
      _Block_release(v118);

      (*(v191 + 8))(v120, v121);
      (*(v189 + 8))(v119, v190);
      v180(v122, v196);
LABEL_36:
      outlined destroy of CP_CreateTopicRequest(v169, type metadata accessor for PluginRpcError);
    }

    __break(1u);
    goto LABEL_38;
  }

  v172 = a10;
  v60 = v193;
  outlined init with take of CP_CreateTopicRequest(v44, v193, type metadata accessor for PluginConnectError);
  _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v60, v28, type metadata accessor for PluginConnectError);
  v72 = type metadata accessor for NWError();
  v73 = (*(*(v72 - 8) + 48))(v28, 3, v72);
  outlined destroy of CP_CreateTopicRequest(v28, type metadata accessor for PluginConnectError);
  if (v73 == 3)
  {
    if (one-time initialization token for log == -1)
    {
LABEL_17:
      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, log);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_1AEB26000, v75, v76, "[CreateTopic] Failed, service-provider client closed", v77, 2u);
        MEMORY[0x1B27120C0](v77, -1, -1);
      }

      lazy protocol witness table accessor for type PubSubClientError and conformance PubSubClientError();
      v78 = swift_allocError();
      v199(v78, 1);

      outlined destroy of CP_CreateTopicRequest(v60, type metadata accessor for PluginConnectError);
      return outlined destroy of CP_CreateTopicRequest(v46, type metadata accessor for PluginRpcError);
    }

LABEL_38:
    swift_once();
    goto LABEL_17;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  v82 = __swift_project_value_buffer(v81, log);
  v83 = v181;
  _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v60, v181, type metadata accessor for PluginConnectError);
  v166 = v82;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();
  v86 = os_log_type_enabled(v84, v85);
  v87 = v197;
  v171 = a14;
  v170 = a13;
  if (v86)
  {
    v165 = v85;
    v88 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    aBlock = v164;
    *v88 = 136315138;
    v89 = v180;
    _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v83, v180, type metadata accessor for PluginConnectError);
    v90 = v177;
    v91 = v178;
    (*(v177 + 56))(v89, 0, 1, v178);
    v92 = v89;
    v93 = v179;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v92, v179, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
    if ((*(v90 + 48))(v93, 1, v91) == 1)
    {
      v94 = 0xE300000000000000;
      v95 = 7104878;
    }

    else
    {
      v124 = v176;
      outlined init with take of CP_CreateTopicRequest(v93, v176, type metadata accessor for PluginConnectError);
      _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v124, v175, type metadata accessor for PluginConnectError);
      v95 = String.init<A>(reflecting:)();
      v94 = v125;
      outlined destroy of CP_CreateTopicRequest(v124, type metadata accessor for PluginConnectError);
    }

    outlined destroy of NSObject?(v180, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
    outlined destroy of CP_CreateTopicRequest(v181, type metadata accessor for PluginConnectError);
    v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, &aBlock);

    *(v88 + 4) = v126;
    _os_log_impl(&dword_1AEB26000, v84, v165, "[CreateTopic] Failed with connection error, error=%s", v88, 0xCu);
    v127 = v164;
    __swift_destroy_boxed_opaque_existential_1Tm(v164);
    MEMORY[0x1B27120C0](v127, -1, -1);
    MEMORY[0x1B27120C0](v88, -1, -1);

    v87 = v197;
  }

  else
  {

    outlined destroy of CP_CreateTopicRequest(v83, type metadata accessor for PluginConnectError);
  }

  result = swift_beginAccess();
  v128 = *(v51 + 16);
  v65 = __OFADD__(v128, 1);
  v129 = v128 + 1;
  v130 = v194;
  if (!v65)
  {
    *(v51 + 16) = v129;

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();

    v133 = os_log_type_enabled(v131, v132);
    v169 = v46;
    v168 = a12;
    v167 = v51;
    if (v133)
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      aBlock = v135;
      *v134 = 134218498;
      *(v134 + 4) = v48[7];
      *(v134 + 12) = 2048;
      swift_beginAccess();
      *(v134 + 14) = *(v51 + 16);

      *(v134 + 22) = 2080;
      *(v134 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v87, &aBlock);
      _os_log_impl(&dword_1AEB26000, v131, v132, "[CreateTopic] Retrying stream in %f seconds, attempt=#%ld topic=%s", v134, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v135);
      MEMORY[0x1B27120C0](v135, -1, -1);
      MEMORY[0x1B27120C0](v134, -1, -1);
    }

    else
    {
    }

    v136 = v182;
    static DispatchTime.now()();
    + infix(_:_:)();
    v137 = *(v198 + 8);
    v198 += 8;
    v181 = v137;
    (v137)(v136, v196);
    v138 = v48[5];
    v139 = v48[6];
    __swift_project_boxed_opaque_existential_1(v48 + 2, v138);
    v182 = (*(v139 + 8))(v138, v139);
    v140 = v185;
    _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v186, v185, type metadata accessor for CP_CreateTopicRequest);
    outlined init with copy of UserNotificationCenter(v173, &v209);
    v141 = (*(v183 + 80) + 24) & ~*(v183 + 80);
    v142 = (v184 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
    v143 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
    v144 = (v143 + 23) & 0xFFFFFFFFFFFFFFF8;
    v145 = (v144 + 23) & 0xFFFFFFFFFFFFFFF8;
    v146 = (v145 + 73) & 0xFFFFFFFFFFFFFFF8;
    v186 = (v146 + 47) & 0xFFFFFFFFFFFFFFF8;
    v184 = (v186 + 23) & 0xFFFFFFFFFFFFFFF8;
    v147 = swift_allocObject();
    *(v147 + 16) = v48;
    outlined init with take of CP_CreateTopicRequest(v140, v147 + v141, type metadata accessor for CP_CreateTopicRequest);
    *(v147 + v142) = v167;
    v148 = (v147 + v143);
    v149 = v200;
    *v148 = v199;
    v148[1] = v149;
    v150 = (v147 + v144);
    v151 = v197;
    *v150 = v194;
    v150[1] = v151;
    v152 = v147 + v145;
    v153 = v174;
    *(v152 + 64) = *(v174 + 64);
    v154 = v153[3];
    *(v152 + 32) = v153[2];
    *(v152 + 48) = v154;
    v155 = v153[1];
    *v152 = *v153;
    *(v152 + 16) = v155;
    *(v152 + 65) = v172;
    outlined init with take of ContiguousBytes(&v209, v147 + v146);
    v156 = (v147 + v186);
    v157 = v170;
    *v156 = v168;
    v156[1] = v157;
    *(v147 + v184) = v171;
    v207 = partial apply for closure #1 in retry #1 () in closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:);
    v208 = v147;
    aBlock = MEMORY[0x1E69E9820];
    v204 = 1107296256;
    v205 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v206 = &block_descriptor_40_0;
    v158 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v159 = v187;
    static DispatchQoS.unspecified.getter();
    v202 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v160 = v188;
    v161 = v192;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v162 = v195;
    v163 = v182;
    MEMORY[0x1B2710670](v195, v159, v160, v158);
    _Block_release(v158);

    (*(v191 + 8))(v160, v161);
    (*(v189 + 8))(v159, v190);
    (v181)(v162, v196);
    outlined destroy of CP_CreateTopicRequest(v193, type metadata accessor for PluginConnectError);
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in retry #1 () in closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v44 = a7;
  v50 = a6;
  v51 = a4;
  v52 = a5;
  v53 = a3;
  v47 = a12;
  v48 = a13;
  v45 = a9;
  v46 = a11;
  v42 = a10;
  TopicRequest = type metadata accessor for CP_CreateTopicRequest(0);
  v17 = *(TopicRequest - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[5];
  v21 = a1[6];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 2, v20);
  v49 = (*(v21 + 64))(a2, v20, v21);
  v55 = v49;
  _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(a2, v19, type metadata accessor for CP_CreateTopicRequest);
  outlined init with copy of UserNotificationCenter(a10, v54);
  v22 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 73) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v26[2] = v53;
  v26[3] = a1;
  v27 = v52;
  v26[4] = v51;
  v26[5] = v27;
  v28 = v44;
  v26[6] = v50;
  v26[7] = v28;
  outlined init with take of CP_CreateTopicRequest(v19, v26 + v22, type metadata accessor for CP_CreateTopicRequest);
  v29 = v26 + v23;
  v30 = *(a8 + 48);
  *(v29 + 2) = *(a8 + 32);
  *(v29 + 3) = v30;
  v29[64] = *(a8 + 64);
  v31 = *(a8 + 16);
  *v29 = *a8;
  *(v29 + 1) = v31;
  LOBYTE(v19) = v45;
  v29[65] = v45;
  outlined init with take of ContiguousBytes(v54, v26 + v24);
  v32 = (v26 + v25);
  v33 = v46;
  v34 = v47;
  *v32 = v46;
  v32[1] = v34;
  v35 = v48;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v48;
  outlined init with copy of UserNotificationCenter(v42, v54);
  v36 = swift_allocObject();
  v37 = *(a8 + 48);
  *(v36 + 48) = *(a8 + 32);
  *(v36 + 64) = v37;
  *(v36 + 80) = *(a8 + 64);
  v38 = *(a8 + 16);
  *(v36 + 16) = *a8;
  *(v36 + 32) = v38;
  *(v36 + 88) = v50;
  *(v36 + 96) = v28;
  *(v36 + 104) = v19;
  *(v36 + 112) = v43;
  outlined init with take of ContiguousBytes(v54, v36 + 120);
  *(v36 + 160) = v33;
  *(v36 + 168) = v34;
  v39 = v51;
  *(v36 + 176) = v35;
  *(v36 + 184) = v39;
  *(v36 + 192) = v52;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_CreateTopicResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMR, MEMORY[0x1E695BED8]);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #2 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void *, uint64_t), uint64_t a12)
{
  v205 = a8;
  v169 = a7;
  v206 = a6;
  v165 = a5;
  v207 = a4;
  v208 = a3;
  v209 = a12;
  v210 = a11;
  v204 = a10;
  v180 = a9;
  v14 = *(a2 + 8);
  v201 = *a2;
  v200 = v14;
  v15 = *(a2 + 24);
  v199 = *(a2 + 16);
  v198 = v15;
  v16 = *(a2 + 32);
  v197 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v195 = *(v196 - 8);
  v19 = MEMORY[0x1EEE9AC00](v196);
  v193 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v194 = &v157 - v21;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v187 = &v157 - v22;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v190 = &v157 - v23;
  v186 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v184 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v182);
  v183 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v181 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for UUID();
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMd, &_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMR);
  v179 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v178 = &v157 - v29;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64VAEGGMd, &_s7Combine9PublishedVySDys6UInt64VAEGGMR);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v157 - v30;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v174 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v173 = &v157 - v31;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v157 - v32;
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v34 = *(Topic - 8);
  v35 = MEMORY[0x1EEE9AC00](Topic);
  v37 = &v157 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v157 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = (&v157 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v157 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v157 - v47;
  v49 = *a1;
  if (*(a1 + 8) != 1)
  {
    goto LABEL_41;
  }

  if (v49 <= 3)
  {
    if (v49 > 1)
    {
      if (v49 == 2)
      {
        v49 = 3;
      }

      else
      {
        v49 = 4;
      }

      goto LABEL_41;
    }

    if (!v49)
    {
LABEL_41:
      v64 = *(a1 + 16);
      v63 = *(a1 + 24);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, log);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v211[0] = v69;
        *v68 = 134218242;
        *(v68 + 4) = v49;
        *(v68 + 12) = 2080;
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v63, v211);

        *(v68 + 14) = v70;
        _os_log_impl(&dword_1AEB26000, v66, v67, "[CreateTopic] Failed, unexpected response-status, code=%ld error=%s", v68, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x1B27120C0](v69, -1, -1);
        MEMORY[0x1B27120C0](v68, -1, -1);
      }

      else
      {
      }

      v71 = v210;
      type metadata accessor for PubSubTopicError(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type PubSubTopicError and conformance PubSubTopicError, type metadata accessor for PubSubTopicError, &protocol conformance descriptor for PubSubTopicError);
      v72 = swift_allocError();
      *v73 = 0xD000000000000017;
      v73[1] = 0x80000001AEE304C0;
      swift_storeEnumTagMultiPayload();
      v71(v72, 1);

      return;
    }
  }

  else
  {
    if (v49 <= 5)
    {
      if (v49 == 4)
      {
        v49 = 5;
      }

      else
      {
        v49 = 6;
      }

      goto LABEL_41;
    }

    if (v49 == 6)
    {
      v49 = 7;
      goto LABEL_41;
    }

    if (v49 == 7)
    {
      v49 = 8;
      goto LABEL_41;
    }
  }

  v159 = *(a2 + 64);
  v50 = 0x10000;
  if ((v159 & 1) == 0)
  {
    v50 = v201;
  }

  v164 = v50;
  v51 = 1000;
  v52 = v200;
  if (v159)
  {
    v52 = 1000;
  }

  v163 = v52;
  if ((v159 & 1) == 0)
  {
    v51 = v199;
  }

  v162 = v51;
  v53 = 2;
  if ((v159 & 1) == 0)
  {
    v53 = v198;
  }

  v161 = v53;
  if (v159)
  {
    v54 = 1.0;
  }

  else
  {
    v54 = v16;
  }

  v55 = 3;
  if ((v159 & 1) == 0)
  {
    v55 = v197;
  }

  v160 = v55;
  if (v159)
  {
    v56 = 10.0;
  }

  else
  {
    v56 = v17;
  }

  if (v159)
  {
    v57 = 1.0;
  }

  else
  {
    v57 = v18;
  }

  v58 = *(type metadata accessor for CP_CreateTopicResponse(0) + 28);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v58, v48, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v158 = *(v34 + 48);
  v59 = v158(v48, 1, Topic);
  outlined destroy of NSObject?(v48, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  if (v59 == 1)
  {
    v60 = v169;
    v61 = v160;
  }

  else if (v159)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v58, v46, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
    v62 = v158;
    if (v158(v46, 1, Topic) == 1)
    {
      *(v42 + 28) = 0u;
      *v42 = 0u;
      v42[1] = 0u;
      UnknownStorage.init()();
      if (v62(v46, 1, Topic) != 1)
      {
        outlined destroy of NSObject?(v46, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
      }
    }

    else
    {
      outlined init with take of CP_CreateTopicRequest(v46, v42, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, log);
    _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v42, v40, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    v75 = v207;

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v211[0] = v79;
      *v78 = 136315650;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for CP_CreateTopicResponse.ClientTopicConfig);
      v80 = Message.debugDescription.getter();
      v82 = v81;
      outlined destroy of CP_CreateTopicRequest(v40, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v211);

      *(v78 + 4) = v83;
      *(v78 + 12) = 2080;
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208, v75, v211);
      v85 = v165;
      *(v78 + 14) = v84;
      v86 = 0xE700000000000000;
      v87 = 0x6E776F6E6B6E75;
      *(v78 + 22) = 2080;
      v88 = 0xE600000000000000;
      v89 = 0x6D6574737973;
      v90 = 0xEB00000000657261;
      v91 = 0x68536E6565726373;
      if (v85 != 3)
      {
        v91 = 0x636E795374736166;
        v90 = 0xE800000000000000;
      }

      if (v85 != 2)
      {
        v89 = v91;
        v88 = v90;
      }

      if (v85)
      {
        v87 = 7368801;
        v86 = 0xE300000000000000;
      }

      if (v85 <= 1)
      {
        v92 = v87;
      }

      else
      {
        v92 = v89;
      }

      if (v85 <= 1)
      {
        v93 = v86;
      }

      else
      {
        v93 = v88;
      }

      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v211);

      *(v78 + 24) = v94;
      _os_log_impl(&dword_1AEB26000, v76, v77, "[CreateTopic] Using server-specified topic-config, config=%s topic=%s, category=%s", v78, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v79, -1, -1);
      MEMORY[0x1B27120C0](v78, -1, -1);
    }

    else
    {

      outlined destroy of CP_CreateTopicRequest(v40, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    }

    v60 = v169;
    _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v42, v37, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    PubSubTopic.Configuration.init(proto:)(v37, v211);
    outlined destroy of CP_CreateTopicRequest(v42, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    v164 = v211[0];
    v163 = v211[1];
    v162 = v211[2];
    v161 = v211[3];
    v54 = *&v211[4];
    v61 = v211[5];
    v56 = *&v211[6];
    v57 = *&v211[7];
  }

  else
  {
    v164 = v201;
    v163 = v200;
    v162 = v199;
    v161 = v198;
    v54 = v16;
    v61 = v197;
    v56 = v17;
    v57 = v18;
    v60 = v169;
  }

  v95 = v206;
  outlined init with copy of UserNotificationCenter((v206 + 2), v211);
  outlined init with copy of UserNotificationCenter(v60, &v214);
  v96 = v95[9];
  v201 = v95[10];
  v97 = v95[11];
  type metadata accessor for PubSubTopic(0);
  v98 = swift_allocObject();
  *(v98 + 144) = 0;
  swift_unknownObjectWeakInit();
  v99 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
  v100 = type metadata accessor for Date();
  (*(*(v100 - 8) + 56))(v98 + v99, 1, 1, v100);
  v101 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v102 = MEMORY[0x1E69E7CC8];
  v213 = MEMORY[0x1E69E7CC8];
  swift_unknownObjectRetain();
  v103 = v207;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  v104 = v170;
  Published.init(initialValue:)();
  (*(v171 + 32))(v98 + v101, v104, v172);
  v105 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__queueState;
  v106 = MEMORY[0x1E69E7CC0];
  v213 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v107 = v173;
  Published.init(initialValue:)();
  (*(v174 + 32))(v98 + v105, v107, v203);
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata) = v102;
  v108 = v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason;
  *v108 = 0;
  *(v108 + 8) = -1;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = 0;
  v109 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscriberSeqNums;
  v213 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64VABGMd, &_sSDys6UInt64VABGMR);
  v110 = v175;
  Published.init(initialValue:)();
  (*(v176 + 32))(v98 + v109, v110, v177);
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked) = v102;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue) = v102;
  v111 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__sendQueue;
  v213 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore11PubSubTopicC8SendItemCGMd, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMR);
  v112 = v178;
  Published.init(initialValue:)();
  (*(v179 + 32))(v98 + v111, v112, v202);
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue) = v106;
  v113 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
  swift_allocObject();
  *(v98 + v113) = PassthroughSubject.init()();
  v114 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
  swift_allocObject();
  *(v98 + v114) = PassthroughSubject.init()();
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable) = 0;
  v115 = MEMORY[0x1E69E7CD0];
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_upsertMetadataCancellables) = MEMORY[0x1E69E7CD0];
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable) = 0;
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorCancellables) = v115;
  *(v98 + 16) = v208;
  *(v98 + 24) = v103;
  v116 = v163;
  *(v98 + 32) = v164;
  *(v98 + 40) = v116;
  v117 = v161;
  *(v98 + 48) = v162;
  *(v98 + 56) = v117;
  *(v98 + 64) = v54;
  *(v98 + 72) = v61;
  *(v98 + 80) = v56;
  *(v98 + 88) = v57;
  outlined init with copy of UserNotificationCenter(v211, v98 + 96);
  outlined init with copy of UserNotificationCenter(&v214, v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  swift_beginAccess();
  *(v98 + 144) = v180;
  swift_unknownObjectWeakAssign();
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter) = v96;
  if (v97)
  {
    v118 = (v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v118 = v201;
    v118[1] = v97;

    v119 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v120 = v166;
    UUID.init()();
    v121 = UUID.uuidString.getter();
    v123 = v122;
    (*(v167 + 8))(v120, v168);
    v124 = (v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v124 = v121;
    v124[1] = v123;
    v119 = MEMORY[0x1E69E7CC0];
    if (v96)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      __swift_project_value_buffer(v125, log);

      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v212[0] = v129;
        *v128 = 136315138;
        v130 = *v124;
        v131 = v124[1];

        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, v212);

        *(v128 + 4) = v132;
        v103 = v207;
        _os_log_impl(&dword_1AEB26000, v126, v127, "PubSubTopic initialized with a reporter, but no tag. Assigning random tag=%s", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        MEMORY[0x1B27120C0](v129, -1, -1);
        MEMORY[0x1B27120C0](v128, -1, -1);
      }
    }
  }

  v201 = v96;
  type metadata accessor for OS_dispatch_queue();
  strcpy(v212, "PubSubTopic.");
  BYTE5(v212[1]) = 0;
  HIWORD(v212[1]) = -5120;
  MEMORY[0x1B2710020](v208, v103);

  static DispatchQoS.unspecified.getter();
  v212[0] = v119;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v185 + 104))(v184, *MEMORY[0x1E69E8090], v186);
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) = 0;
  v133 = v210;
  v134 = v204;
  if (v204)
  {
    v135 = *(v98 + 120);
    v136 = *(v98 + 128);
    __swift_project_boxed_opaque_existential_1((v98 + 96), v135);
    v137 = (*(v136 + 16))(v135, v136);
    if (*(v134 + 16))
    {
      v138 = specialized __RawDictionaryStorage.find<A>(_:)(v137);
      if (v139)
      {
        v140 = *(*(v134 + 56) + 8 * v138);
        *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = v140;
        *(v98 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v140;
      }
    }

    v141 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked;
    swift_beginAccess();
    *(v98 + v141) = v134;

    v212[0] = v134;
    v142 = *(v98 + 120);
    v143 = *(v98 + 128);
    __swift_project_boxed_opaque_existential_1((v98 + 96), v142);
    v144 = (*(v143 + 16))(v142, v143);
    specialized Dictionary._Variant.removeValue(forKey:)(v144);
    v145 = v212[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v211[8] = v145;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  v146 = v187;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[PubSubTopic.SendItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR, MEMORY[0x1E695C068]);
  v147 = v190;
  v148 = v189;
  Publisher.map<A>(_:)();
  (*(v188 + 8))(v146, v148);
  swift_beginAccess();
  v149 = v194;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[PubSubTopic.SendItem]>.Publisher, PubSubTopic.QueueState> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR, MEMORY[0x1E695BD60]);
  v150 = v192;
  Publisher<>.assign(to:)();
  (*(v191 + 8))(v147, v150);
  v151 = v195;
  v152 = v196;
  (*(v195 + 16))(v193, v149, v196);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v151 + 8))(v149, v152);
  PubSubTopic.bootstrap()();
  __swift_destroy_boxed_opaque_existential_1Tm(&v214);
  __swift_destroy_boxed_opaque_existential_1Tm(v211);
  swift_unknownObjectRelease();

  v153 = v206;
  swift_beginAccess();
  v154 = v207;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v214 = v153[12];
  v153[12] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v98, v208, v154, isUniquelyReferenced_nonNull_native);

  v153[12] = v214;
  swift_endAccess();

  v133(v156, 0);
}

uint64_t PubSubClient.createTopic(name:topicConfig:category:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a4;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a5, v22, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v16 = swift_allocObject();
  v17 = *(a3 + 48);
  *(v16 + 80) = *(a3 + 32);
  *(v16 + 96) = v17;
  v18 = *(a3 + 16);
  *(v16 + 48) = *a3;
  *(v16 + 64) = v18;
  v19 = v22[0];
  *(v16 + 136) = v22[1];
  *(v16 + 16) = v8;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = v15;
  *(v16 + 112) = *(a3 + 64);
  v20 = v23;
  *(v16 + 120) = v19;
  *(v16 + 152) = v20;
  *(v16 + 160) = a6;
  *(v16 + 168) = a7;
  *(v16 + 176) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMR);
  swift_allocObject();

  swift_unknownObjectRetain();
  return Future.init(_:)();
}

uint64_t closure #1 in PubSubClient.createTopic(name:topicConfig:category:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a5;
  v38 = a11;
  v37 = a10;
  v41 = a9;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v42 = *(v20 - 8);
  v43 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a8, &aBlock, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  if (v48)
  {
    outlined init with take of ContiguousBytes(&aBlock, v52);
  }

  else
  {
    v24 = type metadata accessor for TransparentTopicCryptorProvider();
    v25 = swift_allocObject();
    v52[3] = v24;
    v52[4] = &protocol witness table for TransparentTopicCryptorProvider;
    v52[0] = v25;
  }

  if (a6 == 5)
  {
    v26 = 0;
  }

  else
  {
    v26 = a6;
  }

  v27 = a3[5];
  v28 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v27);
  v29 = (*(v28 + 8))(v27, v28);
  outlined init with copy of UserNotificationCenter(v52, v51);
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  *(v30 + 32) = v40;
  *(v30 + 40) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<PluginAttachmentLedgerTopic, Error>) -> ();
  *(v30 + 48) = v23;
  *(v30 + 56) = v26;
  v31 = *(a7 + 48);
  *(v30 + 96) = *(a7 + 32);
  *(v30 + 112) = v31;
  *(v30 + 128) = *(a7 + 64);
  v32 = *(a7 + 16);
  *(v30 + 64) = *a7;
  *(v30 + 80) = v32;
  outlined init with take of ContiguousBytes(v51, v30 + 136);
  v33 = v37;
  *(v30 + 176) = v41;
  *(v30 + 184) = v33;
  *(v30 + 192) = v38;
  v49 = partial apply for closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:);
  v50 = v30;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v47 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v48 = &block_descriptor_43;
  v34 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v45 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v35 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v22, v19, v34);
  _Block_release(v34);

  (*(v44 + 8))(v19, v35);
  (*(v42 + 8))(v22, v43);

  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

unint64_t lazy protocol witness table accessor for type PubSubClientError and conformance PubSubClientError()
{
  result = lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError;
  if (!lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError;
  if (!lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PubSubClient.TopicCategory and conformance PubSubClient.TopicCategory()
{
  result = lazy protocol witness table cache variable for type PubSubClient.TopicCategory and conformance PubSubClient.TopicCategory;
  if (!lazy protocol witness table cache variable for type PubSubClient.TopicCategory and conformance PubSubClient.TopicCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubClient.TopicCategory and conformance PubSubClient.TopicCategory);
  }

  return result;
}

uint64_t outlined init with take of CP_CreateTopicRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CP_CreateTopicRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_36Tm()
{
  v1 = (type metadata accessor for CP_CreateTopicRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (((((((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[10];
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t partial apply for closure #1 in retry #1 () in closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)()
{
  v1 = *(type metadata accessor for CP_CreateTopicRequest(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 73) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in retry #1 () in closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v5 + 8), v0 + v6, *(v0 + v6 + 65), v0 + v7, *(v0 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_28Tm()
{
  v1 = (type metadata accessor for CP_CreateTopicRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[10];
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t partial apply for closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_CreateTopicRequest(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 73) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, v1 + v5, *(v1 + v5 + 65), v1 + v6, *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_31Tm_0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t TopicInfo.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PubSubTopicsObserver.__allocating_init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(void *a1, uint64_t a2, double a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = specialized PubSubTopicsObserver.__allocating_init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

uint64_t TopicInfo.description.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v2 = *(v0 + 24);
    v5 = *v0;
    v8 = v5;
    v6 = v1;
    v7 = v2;
    outlined init with copy of String(&v8, v4);
  }

  else
  {
    v5 = *v0;
    v8 = v5;
    v9 = v1;
    v6 = v1;
    outlined init with copy of String(&v8, v4);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v9, v4, &_sShys6UInt64VGMd, &_sShys6UInt64VGMR);
  }

  return String.init<A>(describing:)();
}

uint64_t protocol witness for IDProviding.id.getter in conformance TopicInfo@<X0>(void *a1@<X8>)
{
  v3 = *v1;

  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TopicInfo()
{
  if (*(v0 + 32))
  {
  }

  else
  {
  }

  return String.init<A>(describing:)();
}

uint64_t PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(void *a1, uint64_t a2, double a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = specialized PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(v11, a2, v3, v7, v8, a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

uint64_t PubSubTopicsObserver.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));

  PassthroughSubject.receive<A>(subscriber:)();

  if (!*(v3 + 88))
  {
    *(v3 + 88) = PubSubTopicsObserver.createListenTopicSubscription()();
  }

  return result;
}

uint64_t PubSubTopicsObserver.createListenTopicSubscription()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAH14PluginRpcErrorOGSayAH0I4InfoOGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAH14PluginRpcErrorOGSayAH0I4InfoOGGMR);
  v2 = *(v1 - 8);
  v31 = v1;
  v32 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v26 - v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v26 - v5;
  v7 = type metadata accessor for Publishers.PrefetchStrategy();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGGMR);
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGMR);
  swift_allocObject();
  v15 = PassthroughSubject.init()();
  v0[9] = v15;
  v16 = v15;
  v29 = v15;

  v33 = v16;
  (*(v8 + 104))(v10, *MEMORY[0x1E695BD28], v7);
  v17 = v26;
  (*(v4 + 104))(v6, *MEMORY[0x1E695BD40], v26);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<CP_TopicSubscribersRequest, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGMR, MEMORY[0x1E695BF88]);
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v4 + 8))(v6, v17);
  (*(v8 + 8))(v10, v7);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<PassthroughSubject<CP_TopicSubscribersRequest, Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGGMR, MEMORY[0x1E695BDD8]);
  v18 = v27;
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v28 + 8))(v14, v18);
  v20 = v0[5];
  v21 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v20);
  v33 = (*(v21 + 88))(v19, v20, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAD14PluginRpcErrorOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore9TopicInfoOGMd, &_sSay14CopresenceCore9TopicInfoOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_TopicSubscribers, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAD14PluginRpcErrorOGMR, MEMORY[0x1E695BED8]);
  v22 = v30;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<CP_TopicSubscribers, PluginRpcError>, [TopicInfo]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAH14PluginRpcErrorOGSayAH0I4InfoOGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAH14PluginRpcErrorOGSayAH0I4InfoOGGMR, MEMORY[0x1E695BD60]);
  v23 = v31;
  v24 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v32 + 8))(v22, v23);
  return v24;
}

char *closure #1 in PubSubTopicsObserver.createListenTopicSubscription()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v51 = a3;
  v5 = type metadata accessor for CP_TopicSubscribers.TerminateTopic(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v50 = a2;
  if (v13)
  {
    v48 = a1;
    v49 = v6;
    v61 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v16 = 0;
    v14 = v61;
    v52 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v53 = v13;
    v54 = v12;
    v55 = v9;
    while (v16 < *(v12 + 16))
    {
      v59 = v14;
      _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v52 + *(v9 + 72) * v16, v11, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
      v17 = *v11;
      v57 = v11[1];
      v58 = v17;
      v18 = v11[2];
      v19 = *(v18 + 16);

      v20 = MEMORY[0x1B27104E0](v19, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
      v21 = v20;
      v22 = *(v18 + 16);
      if (v22)
      {
        v23 = 0;
        v24 = v18 + 32;
        v25 = v20 + 56;
        do
        {
          while (1)
          {
            v26 = *(v24 + 8 * v23++);
            v27 = MEMORY[0x1B27111C0](*(v21 + 40), v26);
            v28 = -1 << *(v21 + 32);
            v29 = v27 & ~v28;
            if ((*(v25 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
            {
              break;
            }

LABEL_11:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v60 = v21;
            specialized _NativeSet.insertNew(_:at:isUnique:)(v26, v29, isUniquelyReferenced_nonNull_native);
            v21 = v60;
            if (v23 == v22)
            {
              goto LABEL_13;
            }

            v25 = v60 + 56;
          }

          v30 = ~v28;
          while (*(*(v21 + 48) + 8 * v29) != v26)
          {
            v29 = (v29 + 1) & v30;
            if (((*(v25 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_11;
            }
          }
        }

        while (v23 != v22);
      }

LABEL_13:
      result = outlined destroy of CP_TopicSubscribersRequest(v11, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
      v14 = v59;
      v61 = v59;
      v33 = *(v59 + 16);
      v32 = *(v59 + 24);
      v12 = v54;
      if (v33 >= v32 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v14 = v61;
      }

      ++v16;
      *(v14 + 16) = v33 + 1;
      v34 = v14 + 40 * v33;
      v35 = v57;
      *(v34 + 32) = v58;
      *(v34 + 40) = v35;
      *(v34 + 48) = v21;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      v9 = v55;
      if (v16 == v53)
      {
        a1 = v48;
        v6 = v49;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v36 = a1[1];
    v37 = *(v36 + 16);
    v38 = MEMORY[0x1E69E7CC0];
    if (v37)
    {
      v59 = v14;
      v61 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
      v38 = v61;
      v39 = v36 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v40 = *(v6 + 72);
      do
      {
        v41 = v56;
        _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v39, v56, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
        v42 = *v41;
        v43 = v41[1];

        outlined destroy of CP_TopicSubscribersRequest(v41, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
        v44 = swift_allocObject();
        swift_weakInit();
        v61 = v38;
        v46 = *(v38 + 16);
        v45 = *(v38 + 24);
        if (v46 >= v45 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
          v38 = v61;
        }

        *(v38 + 16) = v46 + 1;
        v47 = v38 + 40 * v46;
        *(v47 + 32) = v42;
        *(v47 + 40) = v43;
        *(v47 + 48) = partial apply for closure #1 in closure #2 in closure #1 in PubSubTopicsObserver.createListenTopicSubscription();
        *(v47 + 56) = v44;
        *(v47 + 64) = 1;
        v39 += v40;
        --v37;
      }

      while (v37);
      v14 = v59;
    }

    v61 = v14;
    result = specialized Array.append<A>(contentsOf:)(v38);
    *v51 = v61;
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in PubSubTopicsObserver.createListenTopicSubscription()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CP_TopicSubscribersRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    MEMORY[0x1EEE9AC00](result);
    *(&v14 - 4) = a1;
    *(&v14 - 3) = a2;
    *(&v14 - 2) = a3;
    *(&v14 - 1) = a4;
    lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest);
    static Message.with(_:)();
    if (*(v13 + 72))
    {

      PassthroughSubject.send(_:)();
    }

    return outlined destroy of CP_TopicSubscribersRequest(v11, type metadata accessor for CP_TopicSubscribersRequest);
  }

  return result;
}

uint64_t closure #2 in PubSubTopicsObserver.createListenTopicSubscription()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PluginRpcError(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-v11];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    if (*(result + 72))
    {
      v15[7] = 1;

      PassthroughSubject.send(completion:)();
    }

    *(v14 + 72) = 0;

    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    if ((*(v4 + 48))(v12, 1, v3) == 1)
    {
      (*(v4 + 56))(v10, 1, 1, v3);

      PassthroughSubject.send(completion:)();

      return outlined destroy of NSObject?(v10, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    }

    else
    {
      _s14CopresenceCore14PluginRpcErrorOWObTm_1(v12, v6, type metadata accessor for PluginRpcError);
      PubSubTopicsObserver.handleSubscriptionError(_:)(v6);

      return outlined destroy of CP_TopicSubscribersRequest(v6, type metadata accessor for PluginRpcError);
    }
  }

  return result;
}

uint64_t closure #3 in PubSubTopicsObserver.createListenTopicSubscription()(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 96) = 0;

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t closure #1 in PubSubTopicsObserver.complete(topicInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  static Message.with(_:)();
  v13 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return outlined assign with take of CP_TopicSubscribersRequest.OneOf_Operation?(v12, a1);
}

uint64_t PubSubTopicsObserver.handleSubscriptionError(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v97 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v91 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v99 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = (&v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v91 - v14;
  v96 = type metadata accessor for PluginConnectError(0);
  v94 = *(v96 - 8);
  v15 = MEMORY[0x1EEE9AC00](v96);
  v92 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v93 = &v91 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v91 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v91 - v22;
  v24 = type metadata accessor for PluginRpcError(0);
  v100 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v91 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v91 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = (&v91 - v34);
  v36 = v2[12];
  v101 = v2;
  if (v36 >= v2[7])
  {
    v98 = a1;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, log);
    v46 = v98;
    _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v98, v33, type metadata accessor for PluginRpcError);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      LODWORD(v96) = v48;
      v49 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v102[0] = v95;
      *v49 = 136315138;
      _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v33, v8, type metadata accessor for PluginRpcError);
      v50 = v100;
      (*(v100 + 56))(v8, 0, 1, v24);
      v51 = v97;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v8, v97, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
      if ((*(v50 + 48))(v51, 1, v24) == 1)
      {
        v52 = 7104878;
        v53 = 0xE300000000000000;
      }

      else
      {
        _s14CopresenceCore14PluginRpcErrorOWObTm_1(v51, v30, type metadata accessor for PluginRpcError);
        _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v30, v27, type metadata accessor for PluginRpcError);
        v52 = String.init<A>(reflecting:)();
        v53 = v80;
        outlined destroy of CP_TopicSubscribersRequest(v30, type metadata accessor for PluginRpcError);
      }

      v81 = v96;
      outlined destroy of NSObject?(v8, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
      outlined destroy of CP_TopicSubscribersRequest(v33, type metadata accessor for PluginRpcError);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v102);

      *(v49 + 4) = v82;
      _os_log_impl(&dword_1AEB26000, v47, v81, "[ListenTopicSubscribers] Retries exhausted, error=%s", v49, 0xCu);
      v83 = v95;
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x1B27120C0](v83, -1, -1);
      MEMORY[0x1B27120C0](v49, -1, -1);

      v46 = v98;
    }

    else
    {

      outlined destroy of CP_TopicSubscribersRequest(v33, type metadata accessor for PluginRpcError);
    }

    v84 = v101;
    v85 = v46;
    v86 = v99;
    _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v85, v99, type metadata accessor for PluginRpcError);
    (*(v100 + 56))(v86, 0, 1, v24);

    PassthroughSubject.send(completion:)();

    outlined destroy of NSObject?(v86, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMd, &_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMR);
    swift_allocObject();
    v84[10] = PassthroughSubject.init()();

    v84[11] = 0;
  }

  else
  {
    _s14CopresenceCore14PluginRpcErrorOWOcTm_1(a1, &v91 - v34, type metadata accessor for PluginRpcError);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v35;
      v38 = v35[1];
      v39 = v35[3];
      if (v37 == 14)
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, log);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1AEB26000, v41, v42, "[ListenTopicSubscribers] Failed, server bouncing", v43, 2u);
          MEMORY[0x1B27120C0](v43, -1, -1);
        }

        retry #1 () in PubSubTopicsObserver.handleSubscriptionError(_:)(v101);
      }

      else
      {
        v67 = v35[2];
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        __swift_project_value_buffer(v68, log);
        v69 = v38;

        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = a1;
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v102[3] = v39;
          v103 = v74;
          *v73 = 136315138;
          LOBYTE(v102[0]) = v37;
          v102[1] = v38;
          v102[2] = v67;
          v75 = v38;

          v76 = String.init<A>(reflecting:)();
          v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v103);

          *(v73 + 4) = v78;
          _os_log_impl(&dword_1AEB26000, v70, v71, "[ListenTopicSuscribers] Failed, unexpected status=%s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          MEMORY[0x1B27120C0](v74, -1, -1);
          a1 = v72;
          MEMORY[0x1B27120C0](v73, -1, -1);
        }

        v79 = v99;
        _s14CopresenceCore14PluginRpcErrorOWOcTm_1(a1, v99, type metadata accessor for PluginRpcError);
        (*(v100 + 56))(v79, 0, 1, v24);

        PassthroughSubject.send(completion:)();

        return outlined destroy of NSObject?(v79, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
      }
    }

    else
    {
      _s14CopresenceCore14PluginRpcErrorOWObTm_1(v35, v23, type metadata accessor for PluginConnectError);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, log);
      _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v23, v21, type metadata accessor for PluginConnectError);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v102[0] = v58;
        *v57 = 136315138;
        v59 = v98;
        _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v21, v98, type metadata accessor for PluginConnectError);
        v60 = v94;
        v61 = v96;
        (*(v94 + 56))(v59, 0, 1, v96);
        v62 = v59;
        v63 = v61;
        v64 = v95;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v62, v95, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
        if ((*(v60 + 48))(v64, 1, v63) == 1)
        {
          v65 = 7104878;
          v66 = 0xE300000000000000;
        }

        else
        {
          v87 = v64;
          v88 = v93;
          _s14CopresenceCore14PluginRpcErrorOWObTm_1(v87, v93, type metadata accessor for PluginConnectError);
          _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v88, v92, type metadata accessor for PluginConnectError);
          v65 = String.init<A>(reflecting:)();
          v66 = v89;
          outlined destroy of CP_TopicSubscribersRequest(v88, type metadata accessor for PluginConnectError);
        }

        outlined destroy of NSObject?(v98, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
        outlined destroy of CP_TopicSubscribersRequest(v21, type metadata accessor for PluginConnectError);
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v102);

        *(v57 + 4) = v90;
        _os_log_impl(&dword_1AEB26000, v55, v56, "[ListenTopicSubscribers] Failed with connection error, error=%s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x1B27120C0](v58, -1, -1);
        MEMORY[0x1B27120C0](v57, -1, -1);
      }

      else
      {

        outlined destroy of CP_TopicSubscribersRequest(v21, type metadata accessor for PluginConnectError);
      }

      retry #1 () in PubSubTopicsObserver.handleSubscriptionError(_:)(v101);
      return outlined destroy of CP_TopicSubscribersRequest(v23, type metadata accessor for PluginConnectError);
    }
  }
}

uint64_t retry #1 () in PubSubTopicsObserver.handleSubscriptionError(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = a1[12];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v36 = &v34 - v16;
    v41 = v2;
    v42 = v15;
    v40 = v3;
    a1[12] = v19;
    if (one-time initialization token for log == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v39 = v6;
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, log);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v37 = v7;
  v38 = v5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = a1[8];
    *(v24 + 12) = 2048;
    *(v24 + 14) = a1[12];

    _os_log_impl(&dword_1AEB26000, v21, v22, "[ListenTopicSubscribers] Retrying stream in %f seconds, attempt=#%ld", v24, 0x16u);
    MEMORY[0x1B27120C0](v24, -1, -1);
  }

  else
  {
  }

  static DispatchTime.now()();
  v25 = v36;
  + infix(_:_:)();
  v35 = *(v11 + 8);
  v35(v14, v42);
  v26 = a1[5];
  v27 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v26);
  v28 = (*(v27 + 8))(v26, v27);
  v29 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in retry #1 () in PubSubTopicsObserver.handleSubscriptionError(_:);
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_44;
  v30 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v43 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v31 = v38;
  v32 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2710670](v25, v9, v31, v30);
  _Block_release(v30);

  (*(v40 + 8))(v31, v32);
  (*(v37 + 8))(v9, v39);
  v35(v25, v42);
}

uint64_t closure #1 in retry #1 () in PubSubTopicsObserver.handleSubscriptionError(_:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 88) = PubSubTopicsObserver.createListenTopicSubscription()();
  }

  return result;
}

Swift::Void __swiftcall PubSubTopicsObserver.requestTopicTermination(topic:)(Swift::String topic)
{
  v2 = v1;
  object = topic._object;
  countAndFlagsBits = topic._countAndFlagsBits;
  v5 = type metadata accessor for CP_TopicSubscribersRequest(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, log);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v14);
    _os_log_impl(&dword_1AEB26000, v9, v10, "[ListenTopicSubscribers] Requesting topic termination, topic=%s, reason=.initiatorLeft", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v13);
  v14[-2] = countAndFlagsBits;
  v14[-1] = object;
  lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest);
  static Message.with(_:)();
  if (*(v2 + 72))
  {

    PassthroughSubject.send(_:)();
  }

  outlined destroy of CP_TopicSubscribersRequest(v7, type metadata accessor for CP_TopicSubscribersRequest);
}

uint64_t closure #1 in PubSubTopicsObserver.requestTopicTermination(topic:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11[-v7];
  type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  v12 = a2;
  v13 = a3;
  lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  static Message.with(_:)();
  v9 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return outlined assign with take of CP_TopicSubscribersRequest.OneOf_Operation?(v8, a1);
}

uint64_t PubSubTopicsObserver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t PubSubTopicsObserver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t specialized PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v15 = a4;
  v16 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *(a3 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMd, &_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMR);
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = v12;
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(&v14, a3 + 16);
  *(a3 + 56) = a2;
  *(a3 + 64) = a6;
  return a3;
}

uint64_t specialized PubSubTopicsObserver.__allocating_init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PubSubTopicsObserver();
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a5);
  return specialized PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(v13, a2, v14, a5, a6, a3);
}

uint64_t _s14CopresenceCore14PluginRpcErrorOWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in PubSubTopicsObserver.requestTopicTermination(topic:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  *(a1 + 24) = 1;
  return result;
}

uint64_t outlined assign with take of CP_TopicSubscribersRequest.OneOf_Operation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s14CopresenceCore14PluginRpcErrorOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CP_TopicSubscribersRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Dictionary.unwrappedValue(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a6;
  v25 = *(a3 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v27 = a1;
  v28 = a5;
  MEMORY[0x1B270FE60](a1, a2, a3, a4, a5);
  v18 = *(a4 - 8);
  if ((*(v18 + 48))(v17, 1, a4) != 1)
  {
    return (*(v18 + 32))(v24, v17, a4);
  }

  (*(v15 + 8))(v17, v14);
  (*(v25 + 16))(v13, v27, a3);
  v19 = String.init<A>(describing:)();
  v21 = v20;
  type metadata accessor for Dictionary.Errors(0, a3, a4, v28);
  swift_getWitnessTable();
  swift_allocError();
  *v22 = v19;
  *(v22 + 8) = v21;
  *(v22 + 16) = 0;
  return swift_willThrow();
}

uint64_t Dictionary.unwrappedValue<A>(for:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v52 = a6;
  v58 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v56 = v12;
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v48 - v14;
  v15 = type metadata accessor for Optional();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = *(a4 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v48 - v23;
  v24 = a1;
  v25 = a2;
  v26 = a5;
  MEMORY[0x1B270FE60](a1, v25, a3, a4, a5);
  v27 = v19;
  v28 = a4;
  if ((*(v19 + 48))(v18, 1, a4) == 1)
  {
    (*(v53 + 8))(v18, v54);
    (*(v58 + 16))(v57, v24, a3);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    type metadata accessor for Dictionary.Errors(0, a3, v28, v26);
    swift_getWitnessTable();
    swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v31;
    *(v32 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v49 = a3;
    v34 = v57;
    v35 = v58;
    v53 = v24;
    v54 = v26;
    v36 = v59;
    (*(v27 + 32))(v59, v18, v28);
    (*(v27 + 16))(v22, v36, v28);
    v38 = v55;
    v37 = v56;
    v39 = swift_dynamicCast();
    v40 = *(*(v37 - 8) + 56);
    if (v39)
    {
      v41 = *(v37 - 8);
      v40(v38, 0, 1, v37);
      (*(v27 + 8))(v59, v28);
      return (*(v41 + 32))(v52, v38, v37);
    }

    else
    {
      v40(v38, 1, 1, v37);
      (*(v50 + 8))(v38, v51);
      v42 = v34;
      v43 = v49;
      (*(v35 + 16))(v42, v53, v49);
      v44 = String.init<A>(describing:)();
      v46 = v45;
      type metadata accessor for Dictionary.Errors(0, v43, v28, v54);
      swift_getWitnessTable();
      swift_allocError();
      *v47 = v44;
      *(v47 + 8) = v46;
      *(v47 + 16) = 1;
      swift_willThrow();
      return (*(v27 + 8))(v59, v28);
    }
  }
}

uint64_t type metadata instantiation function for Dictionary.Errors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *CPSystemStateObserver.conversationManager.getter()
{
  v1 = OBJC_IVAR___CPSystemStateObserver_conversationManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CPSystemStateObserver.conversationManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPSystemStateObserver_conversationManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CPSystemStateObserver.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPSystemStateObserver_observers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t CPSystemStateObserver.carPlayConnected.didset()
{
  os_unfair_lock_assert_owner(*(*&v0[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v3, v4, "CPSystemStateObserver carPlayConnected change to %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  return CPSystemStateObserver.recomputeAllowedStates()();
}

uint64_t CPSystemStateObserver.screeningConversationUUIDs.didset(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner(*(*&v1[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  v4 = *&v1[OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs];

  LOBYTE(a1) = _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5(a1, v4);

  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);
    v7 = v2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4UUIDVGMd, &_sShy10Foundation4UUIDVGMR);
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1AEB26000, v8, v9, "CPSystemStateObserver screeningConversationUUIDs changed to %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    return CPSystemStateObserver.recomputeAllowedStates()();
  }

  return result;
}

uint64_t CPSystemStateObserver.screenTimeAllowed.didset(uint64_t (*a1)(void), const char *a2)
{
  os_unfair_lock_assert_owner(*(*&v2[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    a1();
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v7, v8, a2, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  return CPSystemStateObserver.recomputeAllowedStates()();
}

uint64_t closure #1 in CPSystemStateObserver._allowScreenSharing.didset(void *a1, uint64_t a2, SEL *a3, uint64_t (*a4)(uint64_t))
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    v9 = swift_unknownObjectRetain();
    [a1 *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc CPSystemStateObserver.allowSharePlay.getter(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *&a1[OBJC_IVAR___CPSystemStateObserver_lock];
  v5 = *(v4 + 16);
  v6 = a1;
  os_unfair_lock_lock(v5);
  LOBYTE(a3) = a3();
  os_unfair_lock_unlock(*(v4 + 16));

  return a3 & 1;
}

uint64_t CPSystemStateObserver.allowSharePlay.getter(uint64_t (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v3 + 16));
  LOBYTE(a1) = a1();
  os_unfair_lock_unlock(*(v3 + 16));
  return a1 & 1;
}

uint64_t CPSystemStateObserver.init(queue:)(void *a1)
{
  objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  v2 = a1;
  v3 = CPCarPlayObserver.init(queue:)(v2);
  v4 = [objc_allocWithZone(type metadata accessor for CPManagedConfigurationObserver()) init];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static CPAudioRoutePolicyManager.shared;
  v6 = [objc_allocWithZone(type metadata accessor for CPDisplayCloneStateObserver()) init];
  ObjectType = swift_getObjectType();
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v14 = TULockdownModeEnabled();
  v12 = (*(ObjectType + 520))(v2, v8, &protocol witness table for CPCarPlayObserver, v9, &protocol witness table for CPManagedConfigurationObserver, v10, v11, &protocol witness table for CPDisplayCloneStateObserver, v14);

  swift_deallocPartialClassInstance();
  return v12;
}

char *CPSystemStateObserver.__allocating_init(queue:carplayObserver:managedConfigObserver:audioRoutePolicyManager:displayCloneStateObserver:isLockdownModeEnabled:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  v15 = objc_allocWithZone(v9);
  *&v15[OBJC_IVAR___CPSystemStateObserver_conversationManager] = 0;
  v16 = OBJC_IVAR___CPSystemStateObserver_lock;
  type metadata accessor for Lock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *&v15[v16] = v17;
  v19 = OBJC_IVAR___CPSystemStateObserver_observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16DelegatesManagerCySo021CPSystemStateObserverG0_pGMd, &_s14CopresenceCore16DelegatesManagerCySo021CPSystemStateObserverG0_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  v21 = swift_allocObject();
  v22 = swift_slowAlloc();
  *(v21 + 16) = v22;
  *v22 = 0;
  *(v20 + 24) = v21;
  *&v15[v19] = v20;
  *&v15[OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs] = MEMORY[0x1E69E7CD0];
  v15[OBJC_IVAR___CPSystemStateObserver____lazy_storage___screenTimeAllowed] = 2;
  v15[OBJC_IVAR___CPSystemStateObserver____lazy_storage___isDisplayCloned] = 2;
  v15[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowSharePlay] = 2;
  v15[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharing] = 2;
  v15[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharingInitiation] = 2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.default);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1AEB26000, v24, v25, "CPSystemStateObserver init", v26, 2u);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  v27 = &v15[OBJC_IVAR___CPSystemStateObserver_carplayObserver];
  *v27 = a2;
  v27[1] = a3;
  v28 = &v15[OBJC_IVAR___CPSystemStateObserver_managedConfigObserver];
  *v28 = a4;
  v28[1] = a5;
  v15[OBJC_IVAR___CPSystemStateObserver_carPlayConnected] = 0;
  *&v15[OBJC_IVAR___CPSystemStateObserver_audioRoutePolicyManager] = a6;
  v29 = &v15[OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver];
  *v29 = a7;
  v29[1] = a8;
  v15[OBJC_IVAR___CPSystemStateObserver_isLockdownModeEnabled] = a9 & 1;
  v55.receiver = v15;
  v55.super_class = v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v30 = objc_msgSendSuper2(&v55, sel_init);
  v31 = *&v30[OBJC_IVAR___CPSystemStateObserver_carplayObserver + 8];
  ObjectType = swift_getObjectType();
  v33 = *(v31 + 24);
  v34 = v30;
  swift_unknownObjectRetain();
  v33(v30, &protocol witness table for CPSystemStateObserver, ObjectType, v31);
  swift_unknownObjectRelease();
  v35 = *&v34[OBJC_IVAR___CPSystemStateObserver_managedConfigObserver + 8];
  v36 = swift_getObjectType();
  v37 = *(v35 + 24);
  v38 = v34;
  swift_unknownObjectRetain();
  v37(v30, &protocol witness table for CPSystemStateObserver, v36, v35);
  swift_unknownObjectRelease();
  [*&v38[OBJC_IVAR___CPSystemStateObserver_audioRoutePolicyManager] addObserver:v38 withQueue:a1];
  v39 = *&v38[OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver + 8];
  v40 = swift_getObjectType();
  v41 = *(v39 + 24);
  swift_unknownObjectRetain();
  v41(v30, &protocol witness table for CPSystemStateObserver, v40, v39);
  swift_unknownObjectRelease();
  v42 = [objc_opt_self() defaultCenter];
  v43 = *MEMORY[0x1E69D8F80];
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  *(v44 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CPSystemStateObserver.init(queue:carplayObserver:managedConfigObserver:audioRoutePolicyManager:displayCloneStateObserver:isLockdownModeEnabled:);
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_45;
  v45 = _Block_copy(aBlock);
  v46 = v38;
  v47 = a1;

  v48 = [v42 addObserverForName:v43 object:0 queue:0 usingBlock:v45];
  _Block_release(v45);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v46;
}

char *CPSystemStateObserver.init(queue:carplayObserver:managedConfigObserver:audioRoutePolicyManager:displayCloneStateObserver:isLockdownModeEnabled:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  *&v9[OBJC_IVAR___CPSystemStateObserver_conversationManager] = 0;
  v16 = OBJC_IVAR___CPSystemStateObserver_lock;
  type metadata accessor for Lock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *&v10[v16] = v17;
  v19 = OBJC_IVAR___CPSystemStateObserver_observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16DelegatesManagerCySo021CPSystemStateObserverG0_pGMd, &_s14CopresenceCore16DelegatesManagerCySo021CPSystemStateObserverG0_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  v21 = swift_allocObject();
  v22 = swift_slowAlloc();
  *(v21 + 16) = v22;
  *v22 = 0;
  *&v10[v19] = v20;
  *&v10[OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs] = MEMORY[0x1E69E7CD0];
  v10[OBJC_IVAR___CPSystemStateObserver____lazy_storage___screenTimeAllowed] = 2;
  v10[OBJC_IVAR___CPSystemStateObserver____lazy_storage___isDisplayCloned] = 2;
  v10[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowSharePlay] = 2;
  *(v20 + 24) = v21;
  v10[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharing] = 2;
  v10[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharingInitiation] = 2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.default);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1AEB26000, v24, v25, "CPSystemStateObserver init", v26, 2u);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  v27 = &v10[OBJC_IVAR___CPSystemStateObserver_carplayObserver];
  *v27 = a2;
  v27[1] = a3;
  v28 = &v10[OBJC_IVAR___CPSystemStateObserver_managedConfigObserver];
  *v28 = a4;
  v28[1] = a5;
  v10[OBJC_IVAR___CPSystemStateObserver_carPlayConnected] = 0;
  *&v10[OBJC_IVAR___CPSystemStateObserver_audioRoutePolicyManager] = a6;
  v29 = &v10[OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver];
  *v29 = a7;
  v29[1] = a8;
  v10[OBJC_IVAR___CPSystemStateObserver_isLockdownModeEnabled] = a9 & 1;
  v54.receiver = v10;
  v54.super_class = type metadata accessor for CPSystemStateObserver();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v30 = objc_msgSendSuper2(&v54, sel_init);
  v31 = *&v30[OBJC_IVAR___CPSystemStateObserver_carplayObserver + 8];
  ObjectType = swift_getObjectType();
  v33 = *(v31 + 24);
  v34 = v30;
  swift_unknownObjectRetain();
  v33(v30, &protocol witness table for CPSystemStateObserver, ObjectType, v31);
  swift_unknownObjectRelease();
  v35 = *&v34[OBJC_IVAR___CPSystemStateObserver_managedConfigObserver + 8];
  v36 = swift_getObjectType();
  v37 = *(v35 + 24);
  v38 = v34;
  swift_unknownObjectRetain();
  v37(v30, &protocol witness table for CPSystemStateObserver, v36, v35);
  swift_unknownObjectRelease();
  [*&v38[OBJC_IVAR___CPSystemStateObserver_audioRoutePolicyManager] addObserver:v38 withQueue:a1];
  v39 = *&v38[OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver + 8];
  v40 = swift_getObjectType();
  v41 = *(v39 + 24);
  swift_unknownObjectRetain();
  v41(v30, &protocol witness table for CPSystemStateObserver, v40, v39);
  swift_unknownObjectRelease();
  v42 = [objc_opt_self() defaultCenter];
  v43 = *MEMORY[0x1E69D8F80];
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  *(v44 + 24) = a1;
  aBlock[4] = closure #1 in CPSystemStateObserver.init(queue:carplayObserver:managedConfigObserver:audioRoutePolicyManager:displayCloneStateObserver:isLockdownModeEnabled:)partial apply;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_7;
  v45 = _Block_copy(aBlock);
  v46 = v38;
  v47 = a1;

  v48 = [v42 addObserverForName:v43 object:0 queue:0 usingBlock:v45];
  _Block_release(v45);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v46;
}

void closure #1 in CPSystemStateObserver.init(queue:carplayObserver:managedConfigObserver:audioRoutePolicyManager:displayCloneStateObserver:isLockdownModeEnabled:)(uint64_t a1, void *a2, uint64_t a3)
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
    *v8 = 0;
    _os_log_impl(&dword_1AEB26000, v6, v7, "CPSystemStateObserver added a conversation manager from notification", v8, 2u);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69D8B78]) init];
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0xD0))(v9);
  v12 = (*((*v10 & *a2) + 0xC8))(v11);
  if (v12)
  {
    v13 = v12;
    [v12 addDelegate:a2 queue:a3];
    [v13 registerWithCompletionHandler_];
  }
}

uint64_t CPSystemStateObserver.addObserver(_:queue:)(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))();
  (*(*v5 + 160))(a1, a2);
}

id CPSystemStateObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CPSystemStateObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPSystemStateObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CPSystemStateObserver.carPlayDidConnect()(const char *a1, char a2)
{
  v5 = v2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1AEB26000, v7, v8, a1, v9, 2u);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v10 + 16));
  *(v5 + OBJC_IVAR___CPSystemStateObserver_carPlayConnected) = a2;
  CPSystemStateObserver.carPlayConnected.didset();
  v11 = *(v10 + 16);

  os_unfair_lock_unlock(v11);
}

uint64_t closure #1 in CPSystemStateObserver.conversationManager(_:screeningChangedFor:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = [a1 isScreening];
  v15 = [a1 UUID];
  v16 = (v8 + 8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14)
  {
    v17 = OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs;
    v22 = *(a2 + OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs);

    specialized Set._Variant.insert(_:)(v13, v11);
    (*v16)(v13, v7);
    v18 = *(a2 + v17);
    *(a2 + v17) = v22;
  }

  else
  {
    v19 = OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs;
    v22 = *(a2 + OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs);

    specialized Set._Variant.remove(_:)(v13, v6);
    (*v16)(v13, v7);
    outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v18 = *(a2 + v19);
    *(a2 + v19) = v22;
  }

  CPSystemStateObserver.screeningConversationUUIDs.didset(v18);
}

id closure #1 in CPSystemStateObserver.conversationManager(_:stateChangedFor:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  result = [a1 state];
  if (result == 4)
  {
    v12 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs;
    v16 = *(a2 + OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs);

    specialized Set._Variant.remove(_:)(v7, v10);
    (*(v5 + 8))(v7, v4);
    outlined destroy of NSObject?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v14 = *(a2 + v13);
    *(a2 + v13) = v16;
    CPSystemStateObserver.screeningConversationUUIDs.didset(v14);
  }

  return result;
}

void CPSystemStateObserver.allowedStateChanged(allowed:)(char a1, const char *a2, void *a3, uint64_t (*a4)(void), const char *a5, ...)
{
  v10 = v5;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&dword_1AEB26000, v13, v14, a2, v15, 8u);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v16 = *(v10 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v16 + 16));
  *(v10 + *a3) = a1 & 1;
  CPSystemStateObserver.screenTimeAllowed.didset(a4, a5);
  v17 = *(v16 + 16);

  os_unfair_lock_unlock(v17);
}

void specialized CPSystemStateObserver.conversationManager(_:screeningChangedFor:)(void *a1, void (*a2)(id, uint64_t))
{
  v4 = v2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1AEB26000, v8, v9, "CPSystemStateObserver We got a callback from our conversation manager %@", v10, 0xCu);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  v13 = *(v4 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v13 + 16));
  a2(v7, v4);
  v14 = *(v13 + 16);

  os_unfair_lock_unlock(v14);
}

void specialized CPSystemStateObserver.conversationManager(_:removedActiveConversation:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.default);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1AEB26000, v13, v14, "CPSystemStateObserver We got a callback from our conversation manager %@", v15, 0xCu);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v18 = *(v2 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v18 + 16));
  v19 = [v12 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs;
  v23 = *(v2 + OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs);

  specialized Set._Variant.remove(_:)(v7, v10);
  (*(v5 + 8))(v7, v4);
  outlined destroy of NSObject?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = *(v2 + v20);
  *(v2 + v20) = v23;
  CPSystemStateObserver.screeningConversationUUIDs.didset(v21);

  os_unfair_lock_unlock(*(v18 + 16));
}

id partial apply for closure #1 in CPSystemStateObserver._allowSharePlay.didset(void *a1)
{
  v3 = *(v1 + 16);
  v4 = CPSystemStateObserver._allowSharePlay.getter() & 1;

  return [a1 systemStateObserver:v3 sharePlayAllowedStateChanged:v4];
}

uint64_t dispatch thunk of ApplicationLaunchProviding.launchApp(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v11(a1, a2, a3, a4);
}

id GroupSessionDataCryptorProvider.dataCryptor.willset(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v55[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55[-v12];
  v59 = a1;
  result = [a1 encryptionKeyID];
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v15 = result;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = *(*v2 + 152);
  v16();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
  LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = *(v5 + 8);
  v61 = v5 + 8;
  v17 = (v60)(v11, v4);
  if ((v15 & 1) == 0)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, log);
    (*(v5 + 16))(v8, v13, v4);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v58 = v13;
      v22 = v4;
      v23 = v21;
      v57 = swift_slowAlloc();
      v62 = v57;
      *v23 = 136315650;
      v56 = v20;
      v16();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v27 = v60;
      v60(v11, v22);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v62);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v27(v8, v22);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v62);

      *(v23 + 14) = v32;
      *(v23 + 22) = 2080;
      *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v62);
      _os_log_impl(&dword_1AEB26000, v19, v56, "[DataCryptor] Local encryptionID rotated, invoking delegate, from=%s to=%s topic=%s", v23, 0x20u);
      v33 = v57;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v33, -1, -1);
      v34 = v23;
      v4 = v22;
      v13 = v58;
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    else
    {

      v17 = (v60)(v8, v4);
    }
  }

  v35 = (*(*v2 + 192))(v17);
  v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v35);

  result = [v59 decryptionKeyIDSet];
  if (!result)
  {
    goto LABEL_22;
  }

  v37 = result;
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v38);

  if (*(v36 + 16) <= *(v39 + 16) >> 3)
  {
    v62 = v39;

    specialized Set._subtract<A>(_:)(v36);
  }

  else
  {

    specialized _NativeSet.subtracting<A>(_:)(v36, v39);
  }

  if (*(v39 + 16) <= *(v36 + 16) >> 3)
  {
    v62 = v36;
    specialized Set._subtract<A>(_:)(v39);
  }

  else
  {
    specialized _NativeSet.subtracting<A>(_:)(v39, v36);
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, log);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v62 = v59;
    *v43 = 136315650;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
    v44 = Set.description.getter();
    v58 = v13;
    v45 = v44;
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v62);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v49 = Set.description.getter();
    v51 = v50;

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v62);

    *(v43 + 14) = v52;
    *(v43 + 22) = 2080;
    *(v43 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v62);
    _os_log_impl(&dword_1AEB26000, v41, v42, "[DataCryptor] Updated cryptor, added-encryptionIDs=%s removed-encryptionIDs=%s topic=%s", v43, 0x20u);
    v53 = v59;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v53, -1, -1);
    MEMORY[0x1B27120C0](v43, -1, -1);

    v54 = v58;
  }

  else
  {

    v54 = v13;
  }

  return (v60)(v54, v4);
}

void *GroupSessionDataCryptorProvider.__allocating_init(topic:dataCryptor:refreshEncryptionKeysHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = specialized GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  return v10;
}

void *GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = specialized GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  return v5;
}

uint64_t GroupSessionDataCryptorProvider.encryptionID.setter(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  (*(v3 + 16))(v5, a1, v2);

  CurrentValueSubject.send(_:)();
  v6 = *(v3 + 8);
  v6(a1, v2);
  v6(v5, v2);
}

uint64_t GroupSessionDataCryptorProvider.decryptionIDSet.setter(uint64_t a1)
{
  swift_beginAccess();

  CurrentValueSubject.send(_:)();
}

uint64_t key path setter for GroupSessionDataCryptorProvider.encryptionID : GroupSessionDataCryptorProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 160))(v6);
}

uint64_t GroupSessionDataCryptorProvider.encryptionID.getter()
{
  swift_beginAccess();

  CurrentValueSubject.value.getter();
}

void (*GroupSessionDataCryptorProvider.encryptionID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for UUID();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v5[4] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[6] = v9;
  swift_beginAccess();
  v5[7] = *(v1 + 56);

  CurrentValueSubject.value.getter();
  return GroupSessionDataCryptorProvider.encryptionID.modify;
}

void GroupSessionDataCryptorProvider.encryptionID.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(*a1 + 24);
  if (a2)
  {
    (*(v5 + 16))(*(*a1 + 40), v3, v6);
    CurrentValueSubject.send(_:)();
    v7 = *(v5 + 8);
    v7(v4, v6);

    v7(v3, v6);
  }

  else
  {
    CurrentValueSubject.send(_:)();
    (*(v5 + 8))(v3, v6);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t GroupSessionDataCryptorProvider.encryptionIDPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = (*(*v0 + 176))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<UUID, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMR, MEMORY[0x1E695BFB0]);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<UUID, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGGMR, MEMORY[0x1E695BD38]);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t GroupSessionDataCryptorProvider.decryptionIDSet.getter()
{
  swift_beginAccess();

  CurrentValueSubject.value.getter();

  return v1;
}

void (*GroupSessionDataCryptorProvider.decryptionIDSet.modify(uint64_t *a1))(void **a1, char a2)
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
  swift_beginAccess();
  *(v4 + 40) = *(v1 + 64);

  CurrentValueSubject.value.getter();
  return PluginAttachmentLedgerTopic.attachments.modify;
}

uint64_t GroupSessionDataCryptorProvider.decryptionIDSetPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = (*(*v0 + 216))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[UUID], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMR, MEMORY[0x1E695BFB0]);
  lazy protocol witness table accessor for type [UUID] and conformance <A> [A]();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<[UUID], Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGGMR, MEMORY[0x1E695BD38]);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

BOOL GroupSessionDataCryptorProvider.validEncryptionID(data:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined copy of Data._Representation(a1, a2);
  UUID.init(data:)(a1, a2, v6);
  v7 = type metadata accessor for UUID();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v8;
}

uint64_t GroupSessionDataCryptorProvider.encrypt(data:seqNum:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = v4[4];
  swift_unknownObjectRetain();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v24[0] = 0;
  v8 = [v6 encryptData:isa seqNum:a3 error:v24];
  swift_unknownObjectRelease();

  v9 = v24[0];
  if (v8)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = v9;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, log);
    v14 = v12;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315394;
      v19 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v24);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4[2], v4[3], v24);
      _os_log_impl(&dword_1AEB26000, v15, v16, "Encryption failure error=%s topic=%s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v18, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v10;
}

uint64_t GroupSessionDataCryptorProvider.decrypt(data:encryptionID:seqNum:)(uint64_t a1, NSObject *a2, NSObject *a3, void *a4)
{
  v175 = a2;
  v176 = a4;
  v178[1] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for UUID();
  v171 = *(v6 - 8);
  v172 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v169 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v170 = &v164 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v168 = &v164 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v164 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v164 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v164 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v164 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v164 - v25;
  v173 = v4;
  v27 = *(v4 + 32);
  swift_unknownObjectRetain();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v175 = a3;
  v29 = UUID._bridgeToObjectiveC()().super.isa;
  v178[0] = 0;
  v30 = [v27 decryptData:isa keyID:v29 seqNum:v176 error:v178];
  swift_unknownObjectRelease();

  v31 = v178[0];
  if (!v30)
  {
    v164 = v26;
    v165 = v24;
    v166 = v21;
    v167 = v18;
    v174 = v15;
    v34 = v170;
    v33 = v171;
    v36 = v172;
    v35 = v173;
    v37 = v31;
    v38 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v178[0] = v38;
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v32 = v177;
      lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
      swift_allocError();
      *v40 = v32;
      swift_willThrow();
LABEL_64:

      return v32;
    }

    v176 = _convertErrorToNSError(_:)();
    v32 = [v176 domain];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        __swift_project_value_buffer(v69, log);
        v70 = v33;
        v71 = *(v33 + 16);
        v72 = v169;
        v73 = v36;
        v71(v169, v175, v36);
        v74 = v38;

        v75 = v176;
        v76 = Logger.logObject.getter();
        v77 = v38;
        v78 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v76, v78))
        {

          v95 = v70[1].isa;
          v32 = &v70[1];
          v95(v72, v36);
          lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
          swift_allocError();
          *v96 = 1;
          swift_willThrow();

          v38 = v77;
          goto LABEL_64;
        }

        v79 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v178[0] = v175;
        *v79 = 136315906;
        v80 = [v75 domain];
        LODWORD(v174) = v78;
        v38 = v77;
        v81 = v80;
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v75;
        v83 = v72;
        v84 = v82;
        v86 = v85;

        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v178);

        *(v79 + 4) = v87;
        *(v79 + 12) = 2080;
        swift_getErrorValue();
        v88 = Error.localizedDescription.getter();
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v178);

        *(v79 + 14) = v90;
        *(v79 + 22) = 2080;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
        v91 = dispatch thunk of CustomStringConvertible.description.getter();
        v93 = v92;
        (v70[1].isa)(v83, v73);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v178);

        *(v79 + 24) = v94;
        *(v79 + 32) = 2080;
        *(v79 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v173 + 16), *(v173 + 24), v178);
        _os_log_impl(&dword_1AEB26000, v76, v174, "[DataCryptor] Unexpected failure, domain=%s error=%s encryptionID=%s topic=%s", v79, 0x2Au);
        v32 = v175;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v32, -1, -1);
        MEMORY[0x1B27120C0](v79, -1, -1);

LABEL_63:
        lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
        swift_allocError();
        *v162 = 1;
        swift_willThrow();

        goto LABEL_64;
      }
    }

    v169 = v38;
    v45 = v176;
    v46 = [v176 code];
    if (v46 <= 2)
    {
      v47 = v35;
      if (!v46)
      {
        v97 = v45;
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        __swift_project_value_buffer(v98, log);
        v99 = v164;
        (*(v33 + 16))(v164, v175, v36);

        v32 = Logger.logObject.getter();
        v100 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v32, v100))
        {
          v101 = v33;
          v102 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v178[0] = v175;
          *v102 = 136315394;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
          v103 = dispatch thunk of CustomStringConvertible.description.getter();
          v105 = v104;
          (*(v101 + 8))(v99, v36);
          v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, v178);
          v107 = v176;

          *(v102 + 4) = v106;
          *(v102 + 12) = 2080;
          *(v102 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v47 + 16), *(v47 + 24), v178);
          _os_log_impl(&dword_1AEB26000, v32, v100, "[DataCryptor] Unexpected failure, no-error set, encryptionID=%s topic=%s", v102, 0x16u);
          v108 = v175;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v108, -1, -1);
          MEMORY[0x1B27120C0](v102, -1, -1);
        }

        else
        {

          (*(v33 + 8))(v99, v36);
          v107 = v97;
        }

        v38 = v169;
        lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
        swift_allocError();
        *v158 = 1;
        swift_willThrow();

        goto LABEL_64;
      }

      v48 = v33;
      if (v46 == 1)
      {
        v136 = v36;
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v137 = type metadata accessor for Logger();
        __swift_project_value_buffer(v137, log);
        v138 = v165;
        (*(v48 + 16))(v165, v175, v36);

        v32 = Logger.logObject.getter();
        v139 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v32, v139))
        {
          v140 = v48;
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v178[0] = v142;
          *v141 = 136315394;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
          v143 = dispatch thunk of CustomStringConvertible.description.getter();
          v144 = v136;
          v146 = v145;
          (*(v140 + 8))(v138, v144);
          v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v146, v178);
          v45 = v176;

          *(v141 + 4) = v147;
          *(v141 + 12) = 2080;
          *(v141 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v47 + 16), *(v47 + 24), v178);
          _os_log_impl(&dword_1AEB26000, v32, v139, "[DataCryptor] Unknown keyID, encryptionID=%s topic=%s", v141, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v142, -1, -1);
          MEMORY[0x1B27120C0](v141, -1, -1);
        }

        else
        {

          (*(v48 + 8))(v138, v136);
        }

        lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
        swift_allocError();
        *v161 = 0;
        goto LABEL_60;
      }

      if (v46 == 2)
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, log);
        v50 = v166;
        (*(v33 + 16))(v166, v175, v36);

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v178[0] = v175;
          *v53 = 136315394;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
          v54 = dispatch thunk of CustomStringConvertible.description.getter();
          v56 = v55;
          (*(v33 + 8))(v50, v36);
          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v178);

          *(v53 + 4) = v57;
          *(v53 + 12) = 2080;
          *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v47 + 16), *(v47 + 24), v178);
          _os_log_impl(&dword_1AEB26000, v51, v52, "[DataCryptor] CommonCryptorError, encryptionID=%s topic=%s", v53, 0x16u);
          v32 = v175;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v32, -1, -1);
          v58 = v53;
          v45 = v176;
          MEMORY[0x1B27120C0](v58, -1, -1);
        }

        else
        {

          (*(v33 + 8))(v50, v36);
        }

LABEL_56:
        lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
        swift_allocError();
        *v160 = 1;
LABEL_60:
        swift_willThrow();

        v38 = v169;
        goto LABEL_64;
      }

LABEL_37:
      v124 = v45;
      v125 = v46;
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v126 = type metadata accessor for Logger();
      __swift_project_value_buffer(v126, log);
      (*(v48 + 16))(v34, v175, v36);

      v32 = Logger.logObject.getter();
      v127 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v32, v127))
      {
        v128 = v48;
        v129 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v178[0] = v175;
        *v129 = 134218498;
        *(v129 + 4) = v125;
        *(v129 + 12) = 2080;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
        v130 = dispatch thunk of CustomStringConvertible.description.getter();
        v132 = v131;
        (*(v128 + 8))(v34, v36);
        v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, v178);

        *(v129 + 14) = v133;
        *(v129 + 22) = 2080;
        v134 = v176;
        *(v129 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v47 + 16), *(v47 + 24), v178);
        _os_log_impl(&dword_1AEB26000, v32, v127, "[DataCryptor] Unexpected error-code, code=%ld encryptionID=%s topic=%s", v129, 0x20u);
        v135 = v175;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v135, -1, -1);
        MEMORY[0x1B27120C0](v129, -1, -1);
      }

      else
      {

        (*(v48 + 8))(v34, v36);
        v134 = v124;
      }

      v38 = v169;
      lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
      swift_allocError();
      *v159 = 1;
      swift_willThrow();

      goto LABEL_64;
    }

    v47 = v35;
    if (v46 == 3)
    {
      v109 = v33;
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v110 = type metadata accessor for Logger();
      __swift_project_value_buffer(v110, log);
      v111 = *(v33 + 16);
      v112 = v167;
      v113 = v36;
      v111(v167, v175, v36);

      v32 = Logger.logObject.getter();
      v114 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v32, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v178[0] = v116;
        *v115 = 136315394;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
        v117 = dispatch thunk of CustomStringConvertible.description.getter();
        v118 = v113;
        v120 = v119;
        (*(v109 + 8))(v112, v118);
        v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v120, v178);
        v122 = v176;

        *(v115 + 4) = v121;
        *(v115 + 12) = 2080;
        *(v115 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v47 + 16), *(v47 + 24), v178);
        _os_log_impl(&dword_1AEB26000, v32, v114, "[DataCryptor] Authentication failed, encryptionID=%s topic=%s", v115, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v116, -1, -1);
        v123 = v115;
        v45 = v122;
        MEMORY[0x1B27120C0](v123, -1, -1);
      }

      else
      {

        (*(v109 + 8))(v112, v113);
      }

      goto LABEL_56;
    }

    v48 = v33;
    if (v46 == 4)
    {
      v148 = v175;
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v149 = type metadata accessor for Logger();
      __swift_project_value_buffer(v149, log);
      v150 = v174;
      (*(v33 + 16))(v174, v148, v36);

      v32 = Logger.logObject.getter();
      v151 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v32, v151))
      {

        (*(v33 + 8))(v150, v36);
        goto LABEL_62;
      }

      v62 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v178[0] = v152;
      *v62 = 136315394;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
      v153 = dispatch thunk of CustomStringConvertible.description.getter();
      v154 = v150;
      v156 = v155;
      (*(v33 + 8))(v154, v36);
      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v156, v178);

      *(v62 + 4) = v157;
      *(v62 + 12) = 2080;
      *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v47 + 16), *(v47 + 24), v178);
      _os_log_impl(&dword_1AEB26000, v32, v151, "[DataCryptor] Insufficient size, encryptionID=%s topic=%s", v62, 0x16u);
      swift_arrayDestroy();
      v68 = v152;
    }

    else
    {
      if (v46 != 6)
      {
        goto LABEL_37;
      }

      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, log);
      v60 = v168;
      (*(v33 + 16))(v168, v175, v36);

      v32 = Logger.logObject.getter();
      v61 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v32, v61))
      {

        (*(v33 + 8))(v60, v36);
        goto LABEL_62;
      }

      v62 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v178[0] = v175;
      *v62 = 136315394;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      (*(v33 + 8))(v60, v36);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v178);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v47 + 16), *(v47 + 24), v178);
      _os_log_impl(&dword_1AEB26000, v32, v61, "[DataCryptor] Unknown version, encryptionID=%s topic=%s", v62, 0x16u);
      v67 = v175;
      swift_arrayDestroy();
      v68 = v67;
    }

    MEMORY[0x1B27120C0](v68, -1, -1);
    MEMORY[0x1B27120C0](v62, -1, -1);

LABEL_62:
    v38 = v169;
    goto LABEL_63;
  }

  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v32;
}

void GroupSessionDataCryptorProvider.refresh(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of Any(a1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CPDataCryptor_pMd, &_sSo13CPDataCryptor_pMR);
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, log);
    outlined init with copy of Any(a1, v33);

    v9 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v14))
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      return;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315394;
    outlined init with copy of Any(v33, v31);
    outlined init with copy of Any?(v31, &v29);
    if (v30)
    {
      outlined init with take of Any(&v29, v28);
      outlined init with copy of Any(v28, v27);
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    outlined destroy of NSObject?(v31, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v32);

    *(v15 + 4) = v25;
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v32);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
    goto LABEL_19;
  }

  v7 = v31[0];
  if ([v31[0] isEqual_])
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, log);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), v33);
      _os_log_impl(&dword_1AEB26000, v9, v10, "[DataCryptor] Not refreshing cryptor since it's equal to the current cryptor, topic=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_19:

    return;
  }

  GroupSessionDataCryptorProvider.dataCryptor.willset(v7);
  *(v2 + 32) = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v20 = [*(v2 + 32) encryptionKeyID];
  if (v20)
  {
    v21 = v20;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(*v2 + 160))(v6);
    v22 = [*(v2 + 32) decryptionKeyIDSet];
    if (v22)
    {
      v23 = v22;
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      (*(*v2 + 200))(v24);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall GroupSessionDataCryptorProvider.refreshEncryptionIDSet(participantIDs:)(Swift::OpaquePointer_optional participantIDs)
{
  v2 = v1;
  rawValue = participantIDs.value._rawValue;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, log);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    if (rawValue)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v13);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v13);
    _os_log_impl(&dword_1AEB26000, v5, v6, "[DataCryptor] refresh-requested, participantIDs=%s topic=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  (*(v2 + 40))(rawValue);
}

uint64_t GroupSessionDataCryptorProvider.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t GroupSessionDataCryptorProvider.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *specialized GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a4;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  v6[2] = a1;
  v21 = a2;
  v22 = a3;
  v6[3] = v21;
  v6[4] = a3;
  v6[5] = v31;
  v6[6] = a5;

  swift_unknownObjectRetain();

  result = [a3 encryptionKeyID];
  if (result)
  {
    v24 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v25 = *(v12 + 16);
    v25(v18, v20, v11);
    v25(v15, v18, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMR);
    swift_allocObject();
    v26 = CurrentValueSubject.init(_:)();
    v27 = *(v12 + 8);
    v27(v18, v11);
    v27(v20, v11);
    v6[7] = v26;
    swift_endAccess();
    result = [v22 decryptionKeyIDSet];
    if (result)
    {
      v28 = result;

      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v32 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMR);
      swift_allocObject();
      v6[8] = CurrentValueSubject.init(_:)();
      swift_endAccess();
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [UUID] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UUID] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UUID] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UUID] and conformance <A> [A]);
  }

  return result;
}

uint64_t DisplayLayoutAppVisibilityMonitor.__allocating_init(appPolicyManager:applicationController:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  DisplayLayoutAppVisibilityMonitor.init(appPolicyManager:applicationController:)(a1, a2);
  return v4;
}

void *DisplayLayoutAppVisibilityMonitor.init(appPolicyManager:applicationController:)(void *a1, void *a2)
{
  v2[8] = MEMORY[0x1E69E7CD0];
  v2[9] = 0;
  v2[2] = a1;
  outlined init with copy of UserNotificationCenter(a2, (v2 + 3));
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 configurationForDefaultMainDisplayMonitor];
  v8 = swift_allocObject();
  swift_weakInit();
  v13[4] = partial apply for closure #1 in DisplayLayoutAppVisibilityMonitor.init(appPolicyManager:applicationController:);
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ();
  v13[3] = &block_descriptor_46;
  v9 = _Block_copy(v13);

  [v7 setTransitionHandler_];
  _Block_release(v9);
  v10 = [objc_opt_self() monitorWithConfiguration_];

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v11 = v2[9];
  v2[9] = v10;

  return v2;
}

uint64_t closure #1 in DisplayLayoutAppVisibilityMonitor.init(appPolicyManager:applicationController:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DisplayLayoutAppVisibilityMonitor.handleDisplayLayout(_:)(a2);
  }

  return result;
}

void DisplayLayoutAppVisibilityMonitor.handleDisplayLayout(_:)(void *a1)
{
  if (!a1)
  {
    if (one-time initialization token for default != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_26;
  }

  v2 = v1;
  v73 = a1;
  v3 = [v73 elements];
  type metadata accessor for FBSDisplayLayoutElement();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_34:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_35:
    v75 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_35;
  }

LABEL_4:
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v75 = MEMORY[0x1E69E7CC0];
  v9 = &selRef_audioToken;
  v72 = v2;
  do
  {
    v2 = v7;
    while (1)
    {
      if (v8)
      {
        v10 = MEMORY[0x1B2710B10](v2, v4);
      }

      else
      {
        if (v2 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v10 = *(v4 + 8 * v2 + 32);
      }

      v11 = v10;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      oslog = (v2 + 1);
      v12 = [v10 v9[6]];
      if (v12)
      {
        break;
      }

LABEL_14:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.default);
      v18 = v11;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = v4;
        v23 = v6;
        v24 = v8;
        v25 = v5;
        v26 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v18;
        *v26 = v18;
        v27 = v18;
        _os_log_impl(&dword_1AEB26000, v19, v20, "DisplayLayoutAppVisibilityMonitor: Ignoring visibility update for layout element: %@", v21, 0xCu);
        outlined destroy of NSObject?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v28 = v26;
        v5 = v25;
        v8 = v24;
        v6 = v23;
        v4 = v22;
        v9 = &selRef_audioToken;
        MEMORY[0x1B27120C0](v28, -1, -1);
        MEMORY[0x1B27120C0](v21, -1, -1);
      }

      ++v2;
      if (oslog == v6)
      {
        v2 = v72;
        goto LABEL_36;
      }
    }

    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if ((specialized AppVisibilityMonitor.shouldHandleAppVisibilityUpdate(forBundleIdentifier:)(v14, v16) & 1) == 0)
    {

      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75);
    }

    v7 = (v2 + 1);
    v30 = *(v75 + 2);
    v29 = *(v75 + 3);
    if (v30 >= v29 >> 1)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v75);
    }

    *(v75 + 2) = v30 + 1;
    v31 = &v75[16 * v30];
    *(v31 + 4) = v14;
    *(v31 + 5) = v16;
    v2 = v72;
  }

  while (oslog != v6);
LABEL_36:

  v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v75);

  v36 = *(v35 + 16);
  v37 = *(v2 + 64);
  v38 = *(v37 + 16);
  if (!v36)
  {
    if (!v38)
    {
      goto LABEL_41;
    }

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_67:
    v68 = v40;
    v69 = v41;
    v70 = specialized AppVisibilityMonitor.applicationType(forBundleIdentifier:)();
    specialized AppVisibilityMonitor.handleAppVisibilityUpdate(forBundleIdentifier:applicationType:)(v68, v69, v70);
    goto LABEL_68;
  }

  if (v38 > v36 >> 3)
  {

    v39 = specialized _NativeSet.subtracting<A>(_:)(v37, v35);

    goto LABEL_42;
  }

LABEL_41:

  specialized Set._subtract<A>(_:)(v37);

  v39 = v35;
LABEL_42:
  v42 = *(v2 + 64);
  if (*(v35 + 16) > *(v42 + 16) >> 3)
  {

    v43 = specialized _NativeSet.subtracting<A>(_:)(v35, v42);
    if (*(v39 + 16))
    {
      goto LABEL_44;
    }

LABEL_64:
    v65 = v43;
    v66 = *(v43 + 16);

    if (v66)
    {
      v67 = *(v65 + 16);

      if (v67)
      {
        v40 = specialized Collection.first.getter(v35);
        if (v41)
        {
          goto LABEL_67;
        }
      }

LABEL_69:

      *(v2 + 64) = v35;

      return;
    }

LABEL_68:

    goto LABEL_69;
  }

  v80 = *(v2 + 64);

  specialized Set._subtract<A>(_:)(v35);
  v43 = v80;
  if (!*(v39 + 16))
  {
    goto LABEL_64;
  }

LABEL_44:
  v71 = v35;

  v44 = v39 + 56;
  v45 = 1 << *(v39 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v39 + 56);
  v48 = (v45 + 63) >> 6;

  v49 = 0;
  v76 = v48;
  v77 = v39 + 56;
  v74 = v39;
  while (2)
  {
    if (v47)
    {
LABEL_55:
      v53 = (*(v39 + 48) + ((v49 << 10) | (16 * __clz(__rbit64(v47)))));
      v54 = *v53;
      v55 = v53[1];
      v56 = *(v2 + 48);
      v57 = *(v2 + 56);
      __swift_project_boxed_opaque_existential_1((v2 + 24), v56);
      v58 = v2;
      v59 = *(v57 + 8);

      if (v59(v54, v55, v56, v57))
      {
        v60 = (*((*MEMORY[0x1E69E7D40] & **(v58 + 16)) + 0x98))();
        v2 = v58;
        v39 = v74;
        if (*(v60 + 16))
        {
          v61 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v55);
          if (v62)
          {
            v63 = *(*(v60 + 56) + 8 * v61);

            v64 = [v63 BOOLValue];

            v50 = v64;
          }

          else
          {

            v50 = 0;
          }

          v44 = v77;
          v51 = v54;
          goto LABEL_49;
        }

        v50 = 0;
      }

      else
      {
        v50 = 2;
        v2 = v58;
        v39 = v74;
      }

      v44 = v77;
      v51 = v54;
LABEL_49:
      v48 = v76;
      v47 &= v47 - 1;
      specialized AppVisibilityMonitor.handleAppVisibilityUpdate(forBundleIdentifier:applicationType:)(v51, v55, v50);

      continue;
    }

    break;
  }

  while (1)
  {
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v52 >= v48)
    {

      v35 = v71;
      goto LABEL_69;
    }

    v47 = *(v44 + 8 * v52);
    ++v49;
    if (v47)
    {
      v49 = v52;
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_73:
  swift_once();
LABEL_26:
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Log.default);
  osloga = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(osloga, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1AEB26000, osloga, v33, "DisplayLayoutAppVisibilityMonitor: Skipping since no display layout was provided", v34, 2u);
    MEMORY[0x1B27120C0](v34, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

void *DisplayLayoutAppVisibilityMonitor.deinit()
{
  result = *(v0 + 72);
  if (result)
  {
    [result invalidate];

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DisplayLayoutAppVisibilityMonitor.invalidate()()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    [v1 invalidate];
  }

  else
  {
    __break(1u);
  }
}

void *DisplayLayoutAppVisibilityMonitor.__deallocating_deinit()
{
  result = *(v0 + 72);
  if (result)
  {
    [result invalidate];

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id protocol witness for AppVisibilityMonitor.invalidate() in conformance DisplayLayoutAppVisibilityMonitor()
{
  result = *(v0 + 72);
  if (result)
  {
    return [result invalidate];
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for FBSDisplayLayoutElement()
{
  result = lazy cache variable for type metadata for FBSDisplayLayoutElement;
  if (!lazy cache variable for type metadata for FBSDisplayLayoutElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FBSDisplayLayoutElement);
  }

  return result;
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AddressableMember();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      outlined consume of Set<String>.Iterator._Variant(a1);
      return;
    }

    while (1)
    {
      v16 = specialized Set._Variant.remove(_:)(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AddressableMember();
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      specialized Set._Variant.remove(_:)(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 64;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 64);
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
  v4 = a2;
  v83 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AddressableMember();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v5 = v78;
    v7 = v79;
    v8 = v80;
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v64 = v8;
  v14 = (v8 + 64) >> 6;
  v70 = (v4 + 56);
  v77 = v10;
  v67 = v5;
  v68 = v14;
  v66 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_65;
      }

      v71 = v22;
      type metadata accessor for AddressableMember();
      swift_dynamicCast();
      v20 = v72;
      v18 = v9;
      v2 = v10;
      if (!v72)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v73 = v5;
      v74 = v7;
      v75 = v64;
      v76 = v18;
      v77 = v2;
      if (!v20)
      {
LABEL_65:
        v53 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = NSObject._rawHashValue(seed:)(*(v4 + 40));
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v66;
    v5 = v67;
    v14 = v68;
  }

  v3 = ~v25;
  v26 = type metadata accessor for AddressableMember();
  v27 = *(*(v4 + 48) + 8 * v7);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v4 + 48) + 8 * v7);
  }

  v30 = *(v4 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v61;
  v3 = v68;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v62 = &v60;
    MEMORY[0x1EEE9AC00](v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = *(v4 + 16);
    v63 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v66;
    v35 = v67;
LABEL_33:
    v65 = v5;
    while (v35 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_61;
      }

      v71 = v37;
      swift_dynamicCast();
      v38 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v70[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(*(v44 + 48) + 8 * v7);
          v50 = static NSObject.== infix(_:_:)();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v70[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v68;

        v51 = v63[v46];
        v63[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v66;
        v35 = v67;
        v5 = v65;
        if (!v52)
        {
          v5 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v4 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v66;
        v35 = v67;
        v3 = v68;
        v5 = v65;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v40;
      v18 = v40;
      v77 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = specialized _NativeSet.extractSubset(using:count:)(v63, v61, v5, v4, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMd, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMR);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v55 = v6;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v57, v61, v4, v7, &v73);
  v59 = v58;

  MEMORY[0x1B27120C0](v57, -1, -1);
  v4 = v59;
LABEL_62:
  v53 = v73;
LABEL_63:
  outlined consume of Set<String>.Iterator._Variant(v53);
  return v4;
}

{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
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
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1B27120C0](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    outlined consume of Set<String>.Iterator._Variant(v13);
    return v5;
  }

  result = MEMORY[0x1B27120C0](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for UUID();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v65 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      outlined destroy of NSObject?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, *(a2 + 48) + v84 * v24, v11);
    v35 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        outlined destroy of NSObject?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, *(v52 + 48) + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, *(v52 + 48) + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v64, v65, v80, v24, &v89);

  MEMORY[0x1B27120C0](v64, -1, -1);
LABEL_52:
  v59 = v89;
LABEL_53:
  outlined consume of Set<String>.Iterator._Variant(v59);
  return a2;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          type metadata accessor for AddressableMember();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            specialized _NativeSet.extractSubset(using:count:)(a1, a2, v30, a3, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMd, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMR);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for AddressableMember();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v45 = v61;

          return specialized _NativeSet.extractSubset(using:count:)(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return specialized _NativeSet.extractSubset(using:count:)(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &_ss11_SetStorageCy14CopresenceCore15ActivitySessionCGMd, &_ss11_SetStorageCy14CopresenceCore15ActivitySessionCGMR);
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = NSObject._rawHashValue(seed:)(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
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

uint64_t StateMachine.Transition.init(from:to:event:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *(*(a4 - 8) + 32);
  v15(a8, a1, a4);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v16 = type metadata accessor for StateMachine.Transition(0, v18);
  v15(a8 + *(v16 + 52), a2, a4);
  return (*(*(a5 - 8) + 32))(a8 + *(v16 + 56), a3, a5);
}

uint64_t StateMachine.Trigger.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for StateMachine.Trigger(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t static StateMachine.Trigger.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for StateMachine.Trigger(0, v12);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

Swift::Int StateMachine.Trigger.hashValue.getter(void *a1)
{
  Hasher.init(_seed:)();
  StateMachine.Trigger.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t StateMachine._currentState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t StateMachine._currentState.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StateMachine<A, B>.Trigger(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  StateMachine.Trigger.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t *StateMachine.__allocating_init(initialState:transitions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = specialized StateMachine.init(initialState:transitions:)(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t *StateMachine.init(initialState:transitions:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = specialized StateMachine.init(initialState:transitions:)(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t closure #1 in StateMachine.init(initialState:transitions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v27 = v18;
  v28 = v19;
  v20 = v19;
  type metadata accessor for StateMachine.Trigger(255, &v32);
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  v21 = *(v13 + 16);
  v21(v15, a1, a2);
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = v20;
  v22 = type metadata accessor for StateMachine.Transition(0, &v32);
  v23 = v30;
  (*(v9 + 16))(v30, a1 + *(v22 + 56), a3);
  v24 = v31;
  StateMachine.Trigger.init(_:_:)(v15, v23, a2, a3, v27, v28, v31);
  return (v21)(v24 + v29, a1 + *(v22 + 52), a2);
}

uint64_t StateMachine.execute(_:)(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 128));
  os_unfair_lock_lock(*(v3 + 16));
  closure #1 in StateMachine.execute(_:)(v1, a1, &v5);
  os_unfair_lock_unlock(*(v3 + 16));
  return v5;
}

uint64_t closure #1 in StateMachine.execute(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v4 = *a1;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = type metadata accessor for Optional();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v38 = &v31 - v9;
  v10 = *(v4 + 88);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - v12;
  v35 = *(v5 + 96);
  *&v14 = v6;
  *(&v14 + 1) = v10;
  v41[0] = v14;
  v41[1] = v35;
  v15 = type metadata accessor for StateMachine.Trigger(0, v41);
  v37 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  v36 = *(v6 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v32 = &v31 - v22;
  v23 = *(a1 + *(v4 + 120));
  StateMachine._currentState.getter(v21);
  (*(v11 + 16))(v13, v39, v10);
  v24 = v38;
  StateMachine.Trigger.init(_:_:)(v21, v13, v6, v10, v35, *(&v35 + 1), v18);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B270FE60](v18, v23, v15, v6, WitnessTable);
  v26 = v15;
  v27 = v36;
  (*(v37 + 8))(v18, v26);
  if ((*(v27 + 48))(v24, 1, v6) == 1)
  {
    result = (*(v33 + 8))(v24, v34);
    v29 = 0;
  }

  else
  {
    v30 = v32;
    (*(v27 + 32))(v32, v24, v6);
    (*(v27 + 16))(v21, v30, v6);
    StateMachine._currentState.setter(v21);
    result = (*(v27 + 8))(v30, v6);
    v29 = 1;
  }

  *v40 = v29;
  return result;
}

uint64_t StateMachine.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t StateMachine.__deallocating_deinit()
{
  StateMachine.deinit();

  return swift_deallocClassInstance();
}

uint64_t *specialized StateMachine.init(initialState:transitions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 128);
  type metadata accessor for Lock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *(v2 + v7) = v8;
  v10 = *(v6 + 80);
  (*(*(v10 - 8) + 16))(v3 + *(*v3 + 112), a1, v10);
  v23 = a2;
  v18 = v10;
  v19 = *(v6 + 88);
  v20 = *(v6 + 96);
  v21 = __PAIR128__(v19, v10);
  v22 = v20;
  type metadata accessor for StateMachine.Transition(255, &v21);
  v11 = type metadata accessor for Array();
  v21 = __PAIR128__(v19, v10);
  v22 = v20;
  type metadata accessor for StateMachine.Trigger(255, &v21);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in StateMachine.init(initialState:transitions:), v17, v11, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);

  *&v21 = v15;
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *(v3 + *(*v3 + 120)) = Dictionary.init<A>(uniqueKeysWithValues:)();
  return v3;
}

uint64_t type metadata completion function for StateMachine(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for StateMachine.Transition(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachine.Transition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 64);
  v10 = *(v4 + 80);
  v11 = *(v7 + 80);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v9 + v10;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v15 = ((v9 + v11 + (v13 & ~v10)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((((a1 + v13) & ~v10) + v9 + v11) & ~v11, v8, v6);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v12 + (v21 | v19) + 1;
}

char *storeEnumTagSinglePayload for StateMachine.Transition(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v5 + 80);
  v12 = *(v8 + 80);
  if (v9 <= v6)
  {
    v13 = *(v5 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = ((v10 + v12 + ((v10 + v11) & ~v11)) & ~v12) + *(*(v7 - 8) + 64);
  v15 = a3 >= v13;
  v16 = a3 - v13;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v27 = *(v5 + 56);

    return v27();
  }

  else
  {
    v25 = *(v8 + 56);
    v26 = ((&result[v10 + v11] & ~v11) + v10 + v12) & ~v12;

    return v25(v26);
  }
}

uint64_t type metadata completion function for StateMachine.Trigger(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachine.Trigger(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *storeEnumTagSinglePayload for StateMachine.Trigger(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0) + 20);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(uint64_t a1)
{
  result = type metadata singleton initialization cache for AttachmentLedgerMetadata_AttachmentMetadata;
  if (!type metadata singleton initialization cache for AttachmentLedgerMetadata_AttachmentMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata.getter()
{
  v1 = (v0 + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0) + 20));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t key path setter for AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata : AttachmentLedgerMetadata_AttachmentMetadata(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t (*AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata.modify;
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    outlined copy of Data._Representation(*a1, v2);
    outlined consume of Data?(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return outlined consume of Data._Representation(v4, v2);
  }

  else
  {
    result = outlined consume of Data?(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

Swift::Void __swiftcall AttachmentLedgerMetadata_AttachmentMetadata.clearDeveloperMetadata()()
{
  v1 = v0 + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0) + 20);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_1AEE07B50;
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double AttachmentLedgerMetadata_AttachmentMetadata.init()@<D0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0);
  result = 0.0;
  *(a2 + *(v3 + 20)) = xmmword_1AEE07B50;
  return result;
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap.unsafeMutableAddressor()
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v0, static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap);
}

uint64_t static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AttachmentLedgerMetadata_AttachmentMetadata.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedgerMetadata_AttachmentMetadata.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0);
  v3 = a1 + *(result + 20);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

Swift::Int AttachmentLedgerMetadata_AttachmentMetadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0);
  lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedgerMetadata_AttachmentMetadata);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double protocol witness for Message.init() in conformance AttachmentLedgerMetadata_AttachmentMetadata@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_1AEE07B50;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedgerMetadata_AttachmentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedgerMetadata_AttachmentMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance AttachmentLedgerMetadata_AttachmentMetadata@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedgerMetadata_AttachmentMetadata(uint64_t a1)
{
  lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedgerMetadata_AttachmentMetadata);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedgerMetadata_AttachmentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedgerMetadata_AttachmentMetadata);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t specialized static AttachmentLedgerMetadata_AttachmentMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      outlined copy of Data?(v6, v5);
      outlined copy of Data?(v9, v8);
      v11 = specialized static Data.== infix(_:_:)(v6, v5, v9, v8);
      outlined consume of Data?(v9, v8);
      outlined consume of Data?(v6, v5);
      if (v11)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v6, v5);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v6, v5);
  outlined copy of Data?(v9, v8);
  outlined consume of Data?(v6, v5);
LABEL_8:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void type metadata completion function for AttachmentLedgerMetadata_AttachmentMetadata(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Data?()
{
  if (!lazy cache variable for type metadata for Data?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Data?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id ProtectedAppsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ProtectedAppsObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore21ProtectedAppsObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ProtectedAppsObserver.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CopresenceCore21ProtectedAppsObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

id ProtectedAppsObserver.init()()
{
  *&v0[OBJC_IVAR____TtC14CopresenceCore21ProtectedAppsObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProtectedAppsObserver();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [objc_msgSend(v2 subjectMonitorRegistry)];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

char *ProtectedAppsObserver.hiddenApps.getter()
{
  v0 = [objc_opt_self() hiddenApplications];
  type metadata accessor for APApplication();
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v15;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B2710B10](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 bundleIdentifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v4);

    return v5;
  }

  __break(1u);
  return result;
}

id ProtectedAppsObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtectedAppsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for ProtectedAppsObserverProtocol.delegate.modify in conformance ProtectedAppsObserver(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x68))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ProtectedAppsObserver.appProtectionSubjectsChanged(_:for:)(unint64_t a1)
{
  v28 = MEMORY[0x1E69E7CC0];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_32:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = v5;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1B2710B10](v7, a1);
        }

        else
        {
          if (v7 >= *(v2 + 16))
          {
            goto LABEL_31;
          }

          v8 = *(a1 + 8 * v7 + 32);
        }

        v9 = v8;
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v7;
        if (v5 == v3)
        {
          goto LABEL_19;
        }
      }

      MEMORY[0x1B2710150]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v28;
    }

    while (v5 != v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  if (v6 >> 62)
  {
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_34:

    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_34;
  }

LABEL_21:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v12 = 0;
  v13 = v4;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1B2710B10](v12, v6);
    }

    else
    {
      v14 = *(v6 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = [v14 bundleIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v21 = *(v13 + 16);
    v20 = *(v13 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
    }

    ++v12;
    *(v13 + 16) = v21 + 1;
    v22 = v13 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
  }

  while (v10 != v12);

LABEL_35:
  if ((*((*MEMORY[0x1E69E7D40] & *v27) + 0x58))(v23))
  {
    v25 = v24;
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(v13, ObjectType, v25);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t SessionSuspensionController.__allocating_init(processIdentifier:suspensionTarget:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69C75F8]) init];
  type metadata accessor for SessionSuspensionController();
  v7 = swift_allocObject();

  return specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, a2, a3, v6, v7);
}

void thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitor, @guaranteed RBSProcessHandle, @guaranteed RBSProcessStateUpdate) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

Swift::Int SessionSuspensionController.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

uint64_t SessionSuspensionController.suspensionTarget.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SessionSuspensionController.suspensionTarget.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return SessionSuspensionController.suspensionTarget.modify;
}

void SessionSuspensionController.suspensionTarget.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 120) = *(*a1 + 32);
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

uint64_t SessionSuspensionController.processIdentifier.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t key path setter for SessionSuspensionController.suspensionAcquireTask : SessionSuspensionController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;

  SessionSuspensionController.suspensionAcquireTask.didset(v4);
}

void SessionSuspensionController.suspensionAcquireTask.didset(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 176))
  {
    v3 = one-time initialization token for suspensionController;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.suspensionController);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy7Combine14AnyCancellableCs5Error_pGMd, &_sScTy7Combine14AnyCancellableCs5Error_pGMR);
      v9 = String.init<A>(reflecting:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Tracking suspensionAcquireTask: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for suspensionController != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.suspensionController);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      if (a1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy7Combine14AnyCancellableCs5Error_pGMd, &_sScTy7Combine14AnyCancellableCs5Error_pGMR);
        v17 = String.init<A>(reflecting:)();
        v19 = v18;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v21);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1AEB26000, v13, v14, "No longer tracking suspensionAcquireTask: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }
  }
}

uint64_t SessionSuspensionController.suspensionAcquireTask.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;

  SessionSuspensionController.suspensionAcquireTask.didset(v3);
}

void (*SessionSuspensionController.suspensionAcquireTask.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 176);

  return SessionSuspensionController.suspensionAcquireTask.modify;
}

void SessionSuspensionController.suspensionAcquireTask.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 176) = *(*a1 + 24);

  if (a2)
  {

    SessionSuspensionController.suspensionAcquireTask.didset(v5);
  }

  else
  {
    SessionSuspensionController.suspensionAcquireTask.didset(v5);
  }

  free(v3);
}

uint64_t key path setter for SessionSuspensionController.cancellables : SessionSuspensionController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
}

uint64_t SessionSuspensionController.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

uint64_t SessionSuspensionController.__allocating_init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = a5(a1, a2, a3, v15, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v17;
}

uint64_t closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14CopresenceCore25ProcessMonitorStateUpdateV_GMd, &_sScS8IteratorVy14CopresenceCore25ProcessMonitorStateUpdateV_GMR);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:), 0, 0);
}

uint64_t closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:);
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 96, 0, 0, v2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:), 0, 0);
}

{
  v1 = *(v0 + 96);
  if (v1 == 2 || (Strong = swift_weakLoadStrong(), (*(v0 + 88) = Strong) == 0))
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v3 = Strong;
    if (v1)
    {
      if (one-time initialization token for suspensionController != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Log.suspensionController);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1AEB26000, v5, v6, "Received notification that application is running.", v7, 2u);
        MEMORY[0x1B27120C0](v7, -1, -1);
      }

      v8 = closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:);
    }

    else
    {
      if (one-time initialization token for suspensionController != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.suspensionController);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1AEB26000, v12, v13, "Received notification that application isn't running", v14, 2u);
        MEMORY[0x1B27120C0](v14, -1, -1);
      }

      v8 = closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:);
    }

    return MEMORY[0x1EEE6DFA0](v8, v3, 0);
  }
}

{
  SessionSuspensionController.releaseAssertionIfNecessary()();

  return MEMORY[0x1EEE6DFA0](closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:), 0, 0);
}

{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:);
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 96, 0, 0, v2);
}

{
  SessionSuspensionController.acquireAssertionIfNecessary()();

  return MEMORY[0x1EEE6DFA0](closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:), 0, 0);
}

uint64_t SessionSuspensionController.deinit()
{
  outlined init with copy of UserNotificationCenter(v0 + 136, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SessionSuspensionController.__deallocating_deinit()
{
  outlined init with copy of UserNotificationCenter(v0 + 136, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

Swift::Void __swiftcall SessionSuspensionController.acquireAssertionIfNecessary()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27[-v3];
  if (one-time initialization token for suspensionController != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.suspensionController);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30[0] = v9;
    *v8 = 136315138;
    swift_beginAccess();
    if (*(v0 + 176))
    {
      v29 = *(v0 + 176);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy7Combine14AnyCancellableCs5Error_pGMd, &_sScTy7Combine14AnyCancellableCs5Error_pGMR);
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
    }

    else
    {
      v10 = 7104878;
      v12 = 0xE300000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v30);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Received request to acquire suspension, current suspensionAcquireTask: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  swift_beginAccess();
  if (*(v0 + 176))
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      if (*(v1 + 176))
      {
        v28 = *(v1 + 176);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy7Combine14AnyCancellableCs5Error_pGMd, &_sScTy7Combine14AnyCancellableCs5Error_pGMR);
        v18 = String.init<A>(reflecting:)();
        v20 = v19;
      }

      else
      {
        v18 = 7104878;
        v20 = 0xE300000000000000;
      }

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v29);

      *(v16 + 4) = v26;
      _os_log_impl(&dword_1AEB26000, v14, v15, "Not re-requesting assertion since there's already a task trying to grab an assertion %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }
  }

  else
  {
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    v22 = lazy protocol witness table accessor for type SessionSuspensionController and conformance SessionSuspensionController();
    v23 = swift_allocObject();
    v23[2] = v1;
    v23[3] = v22;
    v23[4] = v1;
    swift_retain_n();
    v24 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC7Combine14AnyCancellableC_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in SessionSuspensionController.acquireAssertionIfNecessary(), v23);
    v25 = *(v1 + 176);
    *(v1 + 176) = v24;

    SessionSuspensionController.suspensionAcquireTask.didset(v25);
  }
}

uint64_t closure #1 in SessionSuspensionController.acquireAssertionIfNecessary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in SessionSuspensionController.acquireAssertionIfNecessary(), a4, 0);
}

uint64_t closure #1 in SessionSuspensionController.acquireAssertionIfNecessary()()
{
  v20 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *(v0[8] + 120);
    ObjectType = swift_getObjectType();
    v18 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = closure #1 in SessionSuspensionController.acquireAssertionIfNecessary();

    return v18(ObjectType, v2);
  }

  else
  {
    lazy protocol witness table accessor for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors();
    v6 = swift_allocError();
    swift_willThrow();
    if (one-time initialization token for suspensionController != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.suspensionController);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v0[5] = v6;
      v13 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Failed to grab assertion, reason: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    swift_willThrow();
    v17 = v0[1];

    return v17();
  }
}

{
  v15 = v0;
  swift_unknownObjectRelease();
  v1 = v0[12];
  if (one-time initialization token for suspensionController != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.suspensionController);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[5] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Failed to grab assertion, reason: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t closure #1 in SessionSuspensionController.acquireAssertionIfNecessary()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v5 = *(v3 + 64);
  if (v1)
  {
    v6 = closure #1 in SessionSuspensionController.acquireAssertionIfNecessary();
  }

  else
  {
    v6 = closure #1 in SessionSuspensionController.acquireAssertionIfNecessary();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v25 = v1;
  v2 = *(v1 + 96);
  static Task<>.checkCancellation()();
  if (v2)
  {

    swift_unknownObjectRelease();
    if (one-time initialization token for suspensionController != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.suspensionController);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24[0] = v8;
      *v7 = 136315138;
      *(v1 + 40) = v2;
      v9 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v24);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Failed to grab assertion, reason: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    swift_willThrow();
    v13 = *(v1 + 8);
  }

  else
  {
    if (one-time initialization token for suspensionController != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.suspensionController);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v1 + 88);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136315138;
      *(v1 + 48) = v17;
      type metadata accessor for AnyCancellable();

      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1AEB26000, v15, v16, "New assertion: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    swift_unknownObjectRelease();
    **(v1 + 56) = *(v1 + 88);
    v13 = *(v1 + 8);
  }

  return v13();
}

Swift::Void __swiftcall SessionSuspensionController.releaseAssertionIfNecessary()()
{
  v1 = v0;
  if (one-time initialization token for suspensionController != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.suspensionController);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315138;
    swift_beginAccess();
    if (*(v1 + 176))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy7Combine14AnyCancellableCs5Error_pGMd, &_sScTy7Combine14AnyCancellableCs5Error_pGMR);
      v7 = String.init<A>(reflecting:)();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
      v7 = 7104878;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Received request to release assertion: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  swift_beginAccess();
  v11 = *(v1 + 176);
  if (v11)
  {
    v12 = type metadata accessor for AnyCancellable();

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B2710400](v11, v12, v13, MEMORY[0x1E69E7288]);

    v14 = *(v1 + 176);
  }

  else
  {
    v14 = 0;
  }

  *(v1 + 176) = 0;
  SessionSuspensionController.suspensionAcquireTask.didset(v14);
}

uint64_t protocol witness for SessionSuspensionControllerProtocol.init(processIdentifier:suspensionTarget:) in conformance SessionSuspensionController@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C75F8]) init];
  type metadata accessor for SessionSuspensionController();
  v9 = swift_allocObject();
  result = specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, a2, a3, v8, v9);
  *a4 = result;
  return result;
}

uint64_t RBSProcessMonitor.listenForUpdates(pid:)(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore25ProcessMonitorStateUpdateV__GMd, &_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore25ProcessMonitorStateUpdateV__GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMR);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMR);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v17 = v9;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #2 in RBSProcessMonitor.listenForUpdates(pid:);
  *(v12 + 24) = v11;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RBSProcessMonitorConfiguring) -> ();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitorConfiguring) -> ();
  aBlock[3] = &block_descriptor_47;
  v13 = _Block_copy(aBlock);

  [v1 updateConfiguration_];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in RBSProcessMonitor.listenForUpdates(pid:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of AsyncStream<ProcessMonitorStateUpdate>.Continuation?(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMR);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void closure #2 in RBSProcessMonitor.listenForUpdates(pid:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() identifierWithPid_];
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AEE07B40;
    *(inited + 32) = v6;
    v8 = v6;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20RBSProcessIdentifierC_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSProcessIdentifier, 0x1E69C75E0);
    lazy protocol witness table accessor for type RBSProcessIdentifier and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateMatchingIdentifiers_];

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AEE07B40;
    *(v11 + 32) = v10;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSProcessPredicate, 0x1E69C7610);
    v12 = v10;
    v13 = Array._bridgeToObjectiveC()().super.isa;

    [a1 setPredicates_];

    aBlock[4] = partial apply for closure #1 in closure #2 in RBSProcessMonitor.listenForUpdates(pid:);
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitor, @guaranteed RBSProcessHandle, @guaranteed RBSProcessStateUpdate) -> ();
    aBlock[3] = &block_descriptor_28_0;
    v14 = _Block_copy(aBlock);

    [a1 setUpdateHandler_];
    _Block_release(v14);
    v15 = [objc_allocWithZone(MEMORY[0x1E69C7630]) init];
    [v15 setValues_];
    [a1 setStateDescriptor_];
  }
}

uint64_t closure #1 in closure #2 in RBSProcessMonitor.listenForUpdates(pid:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14CopresenceCore25ProcessMonitorStateUpdateV__GMd, &_sScS12ContinuationV11YieldResultOy14CopresenceCore25ProcessMonitorStateUpdateV__GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-v10];
  v12 = swift_projectBox();
  swift_beginAccess();
  outlined init with copy of AsyncStream<ProcessMonitorStateUpdate>.Continuation?(v12, v7);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMR);
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v7, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16[7] = specialized ProcessMonitorStateUpdate.init(_:)(a3) & 1;
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v11, v8);
    return (*(v14 + 8))(v7, v13);
  }

  return result;
}

uint64_t specialized SessionSuspensionController.__allocating_init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  (*(v12 + 32))(&v23 - v16, v18, v19);
  type metadata accessor for SessionSuspensionController();
  v20 = swift_allocObject();
  (*(v12 + 16))(v15, v17, a6);
  v21 = specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, a2, a3, v15, v20, a6, a7);
  (*(v12 + 8))(v17, a6);
  return v21;
}

uint64_t specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v28 = &v27 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR);
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v29);
  v15 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v32[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSProcessMonitor, 0x1E69C75F8);
  v32[4] = &protocol witness table for RBSProcessMonitor;
  v32[0] = a4;
  swift_defaultActor_initialize();
  *(a5 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 176) = 0;
  *(a5 + 184) = MEMORY[0x1E69E7CD0];
  *(a5 + 128) = a1;
  swift_beginAccess();
  *(a5 + 120) = a3;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v32, a5 + 136);
  v19 = *(a5 + 160);
  v18 = *(a5 + 168);
  __swift_project_boxed_opaque_existential_1((a5 + 136), v19);
  (*(v18 + 8))(a1, v19, v18);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v29;
  (*(v12 + 16))(v15, v17, v29);
  v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v12 + 32))(v24 + v23, v15, v22);
  *(v24 + ((v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v28, &closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)partial apply, v24);
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  v25 = AnyCancellable.init(_:)();
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v31, v25);
  swift_endAccess();
  swift_unknownObjectRelease();

  (*(v12 + 8))(v17, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);

  return a5;
}

uint64_t specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v39 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = &v34 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR);
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v38);
  v17 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v41[3] = a6;
  v41[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  swift_defaultActor_initialize();
  *(a5 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 176) = 0;
  *(a5 + 184) = MEMORY[0x1E69E7CD0];
  *(a5 + 128) = a1;
  swift_beginAccess();
  *(a5 + 120) = v35;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v41, a5 + 136);
  v21 = *(a5 + 160);
  v22 = *(a5 + 168);
  __swift_project_boxed_opaque_existential_1((a5 + 136), v21);
  v23 = *(v22 + 8);
  v24 = v19;
  v36 = v19;
  v23(a1, v21, v22);
  v25 = type metadata accessor for TaskPriority();
  v26 = v37;
  (*(*(v25 - 8) + 56))(v37, 1, 1, v25);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v24;
  v29 = v38;
  (*(v14 + 16))(v17, v28, v38);
  v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  (*(v14 + 32))(v31 + v30, v17, v29);
  *(v31 + ((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v26, &async function pointer to partial apply for closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:), v31);
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  v32 = AnyCancellable.init(_:)();
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v40, v32);
  swift_endAccess();
  swift_unknownObjectRelease();

  (*(v14 + 8))(v36, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);

  return a5;
}

unint64_t lazy protocol witness table accessor for type SessionSuspensionController and conformance SessionSuspensionController()
{
  result = lazy protocol witness table cache variable for type SessionSuspensionController and conformance SessionSuspensionController;
  if (!lazy protocol witness table cache variable for type SessionSuspensionController and conformance SessionSuspensionController)
  {
    type metadata accessor for SessionSuspensionController();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionSuspensionController and conformance SessionSuspensionController);
  }

  return result;
}

uint64_t partial apply for closure #1 in SessionSuspensionController.acquireAssertionIfNecessary()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in SessionSuspensionController.acquireAssertionIfNecessary()(a1, v4, v5, v6);
}

uint64_t specialized ProcessMonitorStateUpdate.init(_:)(void *a1)
{
  v2 = [a1 state];
  if (v2)
  {
    v3 = v2;
    if ([v2 taskState] == 4)
    {

      return 1;
    }

    v5 = [v3 taskState];

    if (v5 == 2)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors()
{
  result = lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors;
  if (!lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors;
  if (!lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors);
  }

  return result;
}

uint64_t dispatch thunk of SessionSuspensionControllerTarget.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:);

  return v7(a1, a2);
}

unint64_t lazy protocol witness table accessor for type RBSProcessIdentifier and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type RBSProcessIdentifier and conformance NSObject;
  if (!lazy protocol witness table cache variable for type RBSProcessIdentifier and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for RBSProcessIdentifier, 0x1E69C75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSProcessIdentifier and conformance NSObject);
  }

  return result;
}

uint64_t outlined init with copy of AsyncStream<ProcessMonitorStateUpdate>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AsyncStream<ProcessMonitorStateUpdate>.Continuation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_35Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)partial apply(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t OnceToken.called.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

void OnceToken.execute(callback:)(void (*a1)(void))
{
  v3 = v1[2];
  os_unfair_lock_lock(*(v3 + 16));
  if (((*(*v1 + 96))() & 1) == 0)
  {
    a1();
    (*(*v1 + 104))(1);
  }

  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t OnceToken.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t OnceToken.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for Lock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t OnceToken.init()()
{
  type metadata accessor for Lock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t _s14CopresenceCore24SharableObjectIdentifierV10identifier6ofType4withxxm_SStAA21SecureHashTruncatableRzlFZ10Foundation4UUIDV_Tt0t2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[0] = a3;
  v5 = type metadata accessor for SHA256Digest();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SharableObjectIdentifier(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  v23[2] = a1;
  v23[3] = a2;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v19 = StringProtocol.data(using:allowLossyConversion:)();
  v21 = v20;
  result = (*(v13 + 8))(v15, v12);
  if (v21 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    outlined copy of Data._Representation(v19, v21);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v19, v21, v18);
    outlined consume of Data?(v19, v21);
    outlined consume of Data?(v19, v21);
    SHA256.finalize()();
    (*(v6 + 16))(v9, v11, v5);
    UUID.init(digest:)(v9);
    (*(v6 + 8))(v11, v5);
    return outlined destroy of SharableObjectIdentifier(v18);
  }

  return result;
}

unint64_t static StaticActivityLoader.activitySessions(for:)(uint64_t a1)
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = specialized Sequence.flatMap<A>(_:)(v1, _s14CopresenceCore20StaticActivityLoaderO16activitySessions3forSaySo014TUConversationD7SessionCG10Foundation4UUIDV_tFZAHSS_ShySSGtXEfU_TA_0);

  return v2;
}

uint64_t closure #1 in static StaticActivityLoader.activitySessions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a4;
  v5[3] = a1;
  v5[4] = a2;
  return specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in closure #1 in static StaticActivityLoader.activitySessions(for:), v5, a3);
}

void closure #1 in closure #1 in static StaticActivityLoader.activitySessions(for:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v105 = a3;
  v106 = a4;
  v110 = a5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v104 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v93 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v109 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v93 - v21;
  v22 = *a1;
  v23 = a1[1];

  specialized tryLog<A>(_:_:function:line:)(&v111);
  if (v112 >> 60 == 15)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.default);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v111 = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v111);
      _os_log_impl(&dword_1AEB26000, v25, v26, "Failed to create data for static activity session with identifier=%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B27120C0](v28, -1, -1);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }

LABEL_7:
    v29 = 0;
    goto LABEL_21;
  }

  v98 = v8;
  v99 = v7;
  v100 = v111;
  v101 = v112;
  v30 = objc_opt_self();
  v31 = MEMORY[0x1B270FF70](v22, v23);
  v32 = v22;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v34 = [v30 tu:v31 UUIDv5ForString:isa namespaceUUID:?];

  v102 = v32;
  if (!v34)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Log.default);
    (*(v15 + 16))(v18, a2, v14);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v23;
      v61 = v15;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v111 = v63;
      *v62 = 136315394;
      *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v60, &v111);
      *(v62 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v14;
      v67 = v66;
      (*(v61 + 8))(v18, v65);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v67, &v111);

      *(v62 + 14) = v68;
      _os_log_impl(&dword_1AEB26000, v58, v59, "Failed to generate UUID for static activity session with identifier=%s, groupUUID=%s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v63, -1, -1);
      MEMORY[0x1B27120C0](v62, -1, -1);
      outlined consume of Data?(v100, v101);
    }

    else
    {
      outlined consume of Data?(v100, v101);

      (*(v15 + 8))(v18, v14);
    }

    goto LABEL_7;
  }

  v96 = v15;
  v97 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v95 = v23;
  _s14CopresenceCore24SharableObjectIdentifierV10identifier6ofType4withxxm_SStAA21SecureHashTruncatableRzlFZ10Foundation4UUIDV_Tt0t2g5(v32, v23, v109);
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v35 = static GroupActivityDescription.generic;
  v37 = *(&xmmword_1EB5F5F00 + 1);
  v36 = xmmword_1EB5F5F00;
  v38 = xmmword_1EB5F5F10;
  v39 = xmmword_1EB5F5F20;
  v40 = objc_allocWithZone(MEMORY[0x1E69D8B30]);
  v41 = MEMORY[0x1B270FF70](v35, *(&v35 + 1));
  v42 = MEMORY[0x1B270FF70](v36, v37);
  v43 = MEMORY[0x1B270FF70](v38, *(&v38 + 1));
  v44 = MEMORY[0x1B270FF70](v39, *(&v39 + 1));
  v94 = [v40 initWithContextIdentifier:v41 actionDescription:v42 ongoingDescription:v43 completedDescription:v44];

  v45 = type metadata accessor for URL();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v48 = v103;
  v47(v103, 1, 1, v45);
  v49 = v104;
  v47(v104, 1, 1, v45);
  v50 = [objc_allocWithZone(MEMORY[0x1E69D8B50]) initWithTargetContentIdentifier:0 shouldAssociateScene:0 preferredSceneSessionRole:0];
  v51 = *(v46 + 48);
  v53 = 0;
  if (v51(v48, 1, v45) != 1)
  {
    URL._bridgeToObjectiveC()(v52);
    v53 = v54;
    (*(v46 + 8))(v48, v45);
  }

  if (v51(v49, 1, v45) == 1)
  {
    v56 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v55);
    v56 = v69;
    (*(v46 + 8))(v49, v45);
  }

  v70 = v102;
  v71 = objc_allocWithZone(MEMORY[0x1E69D8B48]);
  LOBYTE(v92) = 0;
  v72 = v94;
  v73 = [v71 initWithContext:v94 linkMetadata:0 fallbackURL:v53 invitationURL:v56 supportsContinuationOnTV:0 title:0 subTitle:0 imageData:0 preferredBroadcastingAttributes:0 sceneAssociationBehavior:v50 supportsActivityPreviews:v92 lifetimePolicy:2];

  v74 = objc_allocWithZone(MEMORY[0x1E69D8B28]);
  v75 = v73;
  v76 = v100;
  v77 = v101;
  outlined copy of Data?(v100, v101);
  v78 = MEMORY[0x1B270FF70](v105, v106);
  v79 = Data._bridgeToObjectiveC()().super.isa;
  v80 = UUID._bridgeToObjectiveC()().super.isa;
  v81 = v95;
  v82 = MEMORY[0x1B270FF70](v70, v95);
  v104 = v75;
  v83 = [v74 initWithBundleIdentifier:v78 metadata:v75 applicationContext:v79 uuid:v80 activityIdentifier:v82];

  outlined consume of Data?(v76, v77);
  [v83 setSystemActivity_];
  v84 = MEMORY[0x1B270FF70](v102, v81);
  [v83 setStaticIdentifier_];

  v85 = v107;
  Date.init()();
  v86 = objc_allocWithZone(MEMORY[0x1E69D8B58]);
  v87 = v108;
  v88 = UUID._bridgeToObjectiveC()().super.isa;
  v89 = Date._bridgeToObjectiveC()().super.isa;
  v29 = [v86 initWithActivity:v83 uuid:v88 locallyInitiated:1 timestamp:v89 isFirstJoin:1];

  outlined consume of Data?(v76, v77);
  (*(v98 + 8))(v85, v99);
  v90 = v97;
  v91 = *(v96 + 8);
  v91(v109, v97);
  v91(v87, v90);
LABEL_21:
  *v110 = v29;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance StaticActivityLoader.StaticActivityPlaceholder@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore20StaticActivityLoaderO0fG11Placeholder33_5C4F793782CBA13CE750D9974C6523A1LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore20StaticActivityLoaderO0fG11Placeholder33_5C4F793782CBA13CE750D9974C6523A1LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance StaticActivityLoader.StaticActivityPlaceholder(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore20StaticActivityLoaderO0fG11Placeholder33_5C4F793782CBA13CE750D9974C6523A1LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore20StaticActivityLoaderO0fG11Placeholder33_5C4F793782CBA13CE750D9974C6523A1LLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s14CopresenceCore20StaticActivityLoaderO16activitySessions3forSaySo014TUConversationD7SessionCG10Foundation4UUIDV_tFZAHSS_ShySSGtXEfU_TA_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *(v3 + 16);
  v5[3] = a1;
  v5[4] = a2;
  return specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in closure #1 in static StaticActivityLoader.activitySessions(for:), v5, a3);
}

unint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v39 = v6;
  v40 = result;
  v37 = v2;
  while (v5)
  {
LABEL_10:
    v11 = v5;
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(result + 56) + 8 * v12);

    v17 = a2(v15, v14, v16);

    v18 = v17 >> 62;
    v45 = v17;
    if (v17 >> 62)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v9 >> 62;
    v21 = v11;
    if (v9 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v45;
    v43 = v19;
    v23 = __OFADD__(result, v19);
    v24 = result + v19;
    if (v23)
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v20)
      {
LABEL_21:
        __CocoaSet.count.getter();
      }

LABEL_22:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = result;
      v25 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v20)
    {
      goto LABEL_21;
    }

    v25 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v24 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v42 = v9;
LABEL_23:
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v18)
    {
      v29 = v25;
      result = __CocoaSet.count.getter();
      v25 = v29;
      v28 = result;
    }

    else
    {
      v28 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = (v21 - 1) & v21;
    if (v28)
    {
      if (((v27 >> 1) - v26) < v43)
      {
        goto LABEL_42;
      }

      v30 = v25 + 8 * v26 + 32;
      v38 = v25;
      if (v18)
      {
        if (v28 < 1)
        {
          goto LABEL_44;
        }

        lazy protocol witness table accessor for type [TUConversationActivitySession] and conformance [A]();
        for (i = 0; i != v28; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo29TUConversationActivitySessionCGMd, &_sSaySo29TUConversationActivitySessionCGMR);
          v32 = specialized protocol witness for Collection.subscript.read in conformance [A](v44, i, v22);
          v34 = *v33;
          (v32)(v44, 0);
          v22 = v45;
          *(v30 + 8 * i) = v34;
        }
      }

      else
      {
        type metadata accessor for TUConversationActivitySession();
        swift_arrayInitWithCopy();
      }

      v9 = v42;
      v6 = v39;
      result = v40;
      v2 = v37;
      if (v43 >= 1)
      {
        v35 = *(v38 + 16);
        v23 = __OFADD__(v35, v43);
        v36 = v35 + v43;
        if (v23)
        {
          goto LABEL_43;
        }

        *(v38 + 16) = v36;
      }
    }

    else
    {

      v9 = v42;
      v6 = v39;
      result = v40;
      if (v43 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for TUConversationActivitySession()
{
  result = lazy cache variable for type metadata for TUConversationActivitySession;
  if (!lazy cache variable for type metadata for TUConversationActivitySession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationActivitySession);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [TUConversationActivitySession] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TUConversationActivitySession] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TUConversationActivitySession] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo29TUConversationActivitySessionCGMd, &_sSaySo29TUConversationActivitySessionCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TUConversationActivitySession] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys);
  }

  return result;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t one-time initialization function for sharePlay()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.sharePlay);
  __swift_project_value_buffer(v0, static ImageResource.sharePlay);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x1B270EC50](0x616C506572616853, 0xE900000000000079, resourceBundle.super.isa);
}

uint64_t ImageResource.sharePlay.unsafeMutableAddressor()
{
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v0, static ImageResource.sharePlay);
}

uint64_t static ImageResource.sharePlay.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ImageResource();
  v3 = __swift_project_value_buffer(v2, static ImageResource.sharePlay);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x1EEDC3280](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)()
{
  return MEMORY[0x1EEE157A8]();
}

{
  return MEMORY[0x1EEE157B0]();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return MEMORY[0x1EEE15838]();
}

{
  return MEMORY[0x1EEE15848]();
}

uint64_t + infix(_:_:)()
{
  return MEMORY[0x1EEE6C938]();
}

{
  return MEMORY[0x1EEE6C940]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x1EEE68DA0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6AD38]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE70]();
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)()
{
  return MEMORY[0x1EEE6B098]();
}

{
  return MEMORY[0x1EEE6B0A0]();
}

{
  return MEMORY[0x1EEE6B0A8]();
}

{
  return MEMORY[0x1EEE6B0B0]();
}

{
  return MEMORY[0x1EEE6B0B8]();
}

{
  return MEMORY[0x1EEE6B0C0]();
}

{
  return MEMORY[0x1EEE6B0C8]();
}

{
  return MEMORY[0x1EEE6B0D0]();
}

{
  return MEMORY[0x1EEE6B0D8]();
}

{
  return MEMORY[0x1EEE6B0E0]();
}

{
  return MEMORY[0x1EEE6B0E8]();
}

{
  return MEMORY[0x1EEE6B0F0]();
}

{
  return MEMORY[0x1EEE6B0F8]();
}

{
  return MEMORY[0x1EEE6B100]();
}

{
  return MEMORY[0x1EEE6B108]();
}

{
  return MEMORY[0x1EEE6B110]();
}

{
  return MEMORY[0x1EEE6B118]();
}

uint64_t UnkeyedEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B120]();
}

{
  return MEMORY[0x1EEE6B128]();
}

uint64_t SingleValueEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B308]();
}

{
  return MEMORY[0x1EEE6B310]();
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6B3E0]();
}

{
  return MEMORY[0x1EEE6B3E8]();
}