uint64_t GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:)(uint64_t a1)
{
  v2[27] = v1;
  v2[26] = a1;
  v2[12] = v2;
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  v3 = type metadata accessor for Logger();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[13] = a1;
  v2[14] = v1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:), 0);
}

{
  v3 = *v1;
  *(v3 + 96) = *v1;
  *(v3 + 272) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:), 0);
}

uint64_t GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:)()
{
  v1 = v0[30];
  v22 = v0[29];
  v24 = v0[28];
  v0[12] = v0;
  v23 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v22 + 16))(v1, v23, v24);
  swift_endAccess();
  v26 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v26, v25))
  {
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0, v16, v16);
    v19 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v21 + 176) = v17;
    *(v21 + 184) = v18;
    *(v21 + 192) = v19;
    serialize(_:at:)(0, (v21 + 176));
    serialize(_:at:)(0, (v21 + 176));
    *(v21 + 200) = v27;
    v20 = swift_task_alloc();
    v20[2] = v21 + 176;
    v20[3] = v21 + 184;
    v20[4] = v21 + 192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v26, v25, "Tried to write dose events but confirmedLogAsScheduled is false, returning .needsConfirmLogAsScheduled", v17, 2u);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v17, MEMORY[0x277D84B78]);
  }

  v12 = *(v21 + 240);
  v13 = *(v21 + 224);
  v14 = *(v21 + 208);
  v11 = *(v21 + 232);
  MEMORY[0x277D82BD8](v26);
  (*(v11 + 8))(v12, v13);
  *(v21 + 248) = type metadata accessor for MatchedMedName();
  *(v21 + 120) = _allocateUninitializedArray<A>(_:)();

  *(v21 + 128) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v15 = *(v21 + 136);
  *(v21 + 256) = v15;
  if (v15)
  {
    v2 = *(v21 + 216);
    *(v21 + 152) = v15;
    outlined init with copy of QuantityPersisting(v2 + 16, v21 + 16);
    v8 = *(v21 + 40);
    v9 = *(v21 + 48);
    __swift_project_boxed_opaque_existential_1((v21 + 16), v8);
    v10 = (*(v9 + 24) + **(v9 + 24));
    v3 = swift_task_alloc();
    *(v21 + 264) = v3;
    *v3 = *(v21 + 96);
    v3[1] = GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:);

    return v10(v15, 1, v8, v9);
  }

  else
  {
    outlined destroy of [HKQuantityType]((v21 + 80));
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v7 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);
    MEMORY[0x277D82BE0](v7);
    *(v21 + 144) = v7;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](*(v21 + 144));
    outlined destroy of [HKQuantityType]((v21 + 120));

    v5 = *(*(v21 + 96) + 8);

    return v5(v7);
  }
}

{
  v1 = *(v0 + 272);
  *(v0 + 96) = v0;
  if (v1)
  {
    v8 = v13[34];
    v13[20] = v8;
    __swift_destroy_boxed_opaque_existential_1(v13 + 2);
    MEMORY[0x277D82BE0](v8);
    v13[21] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    Array.append(_:)();
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13 + 2);
  }

  MEMORY[0x277D82BD8](v13[32]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v9 = v13[17];
  v13[32] = v9;
  if (v9)
  {
    v2 = v13[27];
    v13[19] = v9;
    outlined init with copy of QuantityPersisting(v2 + 16, (v13 + 2));
    v10 = v13[5];
    v11 = v13[6];
    __swift_project_boxed_opaque_existential_1(v13 + 2, v10);
    v12 = (*(v11 + 24) + **(v11 + 24));
    v3 = swift_task_alloc();
    v13[33] = v3;
    *v3 = v13[12];
    v3[1] = GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:);

    return v12(v9, 1, v10, v11);
  }

  else
  {
    outlined destroy of [HKQuantityType](v13 + 10);
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v7 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);
    MEMORY[0x277D82BE0](v7);
    v13[18] = v7;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v13[18]);
    outlined destroy of [HKQuantityType](v13 + 15);

    v5 = *(v13[12] + 8);

    return v5(v7);
  }
}

uint64_t protocol witness for GenericMedicationsPersisting.isLoggingAuthorized() in conformance GenericMedicationsPersistor()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return GenericMedicationsPersistor.isLoggingAuthorized()();
}

uint64_t protocol witness for GenericMedicationsPersisting.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:) in conformance GenericMedicationsPersistor(char a1, char a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:)(a1 & 1, a2 & 1);
}

uint64_t protocol witness for GenericMedicationsPersisting.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:) in conformance GenericMedicationsPersistor(char a1, char a2, char a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:)(a1 & 1, a2 & 1, a3 & 1);
}

uint64_t sub_269A00B84()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in LogGenericMedicationsIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in LogGenericMedicationsIntentHandler.handle(intent:)(v7, v5, v6);
}

uint64_t getEnumTagSinglePayload for GenericMedicationsPersistor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericMedicationsPersistor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t isSiriAuthorizedToAccessHealthData(store:)(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  return MEMORY[0x2822009F8](isSiriAuthorizedToAccessHealthData(store:), 0);
}

uint64_t isSiriAuthorizedToAccessHealthData(store:)()
{
  v5 = v0[4];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isSiriAuthorizedToAccessHealthData(store:)", 0x2AuLL, 1);
  v0[5] = v1._object;
  MEMORY[0x277D82BE0](v5);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v5;
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  *v2 = *(v6 + 16);
  v2[1] = isSiriAuthorizedToAccessHealthData(store:);
  v3 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v6 + 64, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in isSiriAuthorizedToAccessHealthData(store:), v7, v3);
}

{
  v2 = *(*v0 + 32);
  *(*v0 + 16) = *v0;

  return MEMORY[0x2822009F8](isSiriAuthorizedToAccessHealthData(store:), 0);
}

{
  *(v0 + 16) = v0;
  return (*(*(v0 + 16) + 8))(*(v0 + 64) & 1);
}

void closure #1 in isSiriAuthorizedToAccessHealthData(store:)(uint64_t a1, void *a2)
{
  v5 = a1;
  v16 = a2;
  v14 = partial apply for closure #1 in closure #1 in isSiriAuthorizedToAccessHealthData(store:);
  v26 = 0;
  v25 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v7 = v9;
  v8 = *(v9 + 64);
  v6 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v13, v5);
  v12 = &v4 - v6;
  v26 = v3;
  v25 = v16;
  (*(v9 + 16))(v2);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v11, v12, v13);
  v23 = v14;
  v24 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = 0;
  v21 = thunk for @escaping @callee_guaranteed @Sendable (@unowned HKSiriAuthorizationStatus, @guaranteed Error?) -> ();
  v22 = &block_descriptor_8;
  v17 = _Block_copy(&aBlock);

  [v16 getAllHealthDataAccessForSiriWithCompletion_];
  _Block_release(v17);
}

void closure #1 in closure #1 in isSiriAuthorizedToAccessHealthData(store:)(uint64_t a1, void *a2, uint64_t a3)
{
  v106 = a1;
  v116 = a2;
  v107 = a3;
  v94 = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  v95 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  v96 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  v97 = partial apply for closure #1 in OSLogArguments.append(_:);
  v98 = partial apply for closure #1 in OSLogArguments.append(_:);
  v99 = partial apply for closure #1 in OSLogArguments.append(_:);
  v100 = partial apply for implicit closure #2 in closure #1 in closure #1 in isSiriAuthorizedToAccessHealthData(store:);
  v101 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v102 = partial apply for closure #1 in OSLogArguments.append(_:);
  v103 = partial apply for closure #1 in OSLogArguments.append(_:);
  v104 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v105 = 0;
  v124 = 0;
  v108 = type metadata accessor for Logger();
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v112 = *(v109 + 64);
  v111 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v116, v3);
  v113 = v39 - v111;
  v114 = v111;
  MEMORY[0x28223BE20](v4, v39 - v111);
  v115 = v39 - v114;
  v136 = v5;
  v135 = v6;
  v134 = v7;
  v8 = v6;
  if (v116)
  {
    v93 = v116;
    v21 = v113;
    v63 = v116;
    v124 = v116;
    v61 = Logger.wellnessIntents.unsafeMutableAddressor();
    v62 = &v123;
    v66 = 32;
    swift_beginAccess();
    (*(v109 + 16))(v21, v61, v108);
    swift_endAccess();
    v22 = v63;
    v67 = 7;
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v64 = 17;
    v70 = swift_allocObject();
    *(v70 + 16) = 64;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v23 = swift_allocObject();
    v24 = v65;
    v68 = v23;
    *(v23 + 16) = v94;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v68;
    v69 = v25;
    *(v25 + 16) = v95;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v69;
    v73 = v27;
    *(v27 + 16) = v96;
    *(v27 + 24) = v28;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v72 = _allocateUninitializedArray<A>(_:)();
    v74 = v29;

    v30 = v70;
    v31 = v74;
    *v74 = v97;
    v31[1] = v30;

    v32 = v71;
    v33 = v74;
    v74[2] = v98;
    v33[3] = v32;

    v34 = v73;
    v35 = v74;
    v74[4] = v99;
    v35[5] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v76, v77))
    {
      v36 = v105;
      v54 = static UnsafeMutablePointer.allocate(capacity:)();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v55 = createStorage<A>(capacity:type:)(1, v53, v53);
      v56 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v57 = &v121;
      v121 = v54;
      v58 = &v120;
      v120 = v55;
      v59 = &v119;
      v119 = v56;
      serialize(_:at:)(2, &v121);
      serialize(_:at:)(1, v57);
      v117 = v97;
      v118 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v117, v57, v58, v59);
      v60 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v117 = v98;
        v118 = v71;
        closure #1 in osLogInternal(_:log:type:)(&v117, &v121, &v120, &v119);
        v52 = 0;
        v117 = v99;
        v118 = v73;
        closure #1 in osLogInternal(_:log:type:)(&v117, &v121, &v120, &v119);
        _os_log_impl(&dword_269912000, v76, v77, "🚨 Could not fetch authorization status for Health data: %@", v54, 0xCu);
        destroyStorage<A>(_:count:)(v55, 1, v53);
        destroyStorage<A>(_:count:)(v56, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v54, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v76);
    (*(v109 + 8))(v113, v108);
    v51 = &v122;
    v122 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v9 = v115;
    v78 = Logger.wellnessIntents.unsafeMutableAddressor();
    v79 = &v133;
    v81 = 32;
    swift_beginAccess();
    (*(v109 + 16))(v9, v78, v108);
    swift_endAccess();
    v82 = 7;
    v83 = swift_allocObject();
    *(v83 + 16) = v106;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    v80 = 17;
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    v86 = swift_allocObject();
    *(v86 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v83;
    v84 = v10;
    *(v10 + 16) = v100;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v84;
    v88 = v12;
    *(v12 + 16) = v101;
    *(v12 + 24) = v13;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v87 = _allocateUninitializedArray<A>(_:)();
    v89 = v14;

    v15 = v85;
    v16 = v89;
    *v89 = v102;
    v16[1] = v15;

    v17 = v86;
    v18 = v89;
    v89[2] = v103;
    v18[3] = v17;

    v19 = v88;
    v20 = v89;
    v89[4] = v104;
    v20[5] = v19;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v91, v92))
    {
      v37 = v105;
      v44 = static UnsafeMutablePointer.allocate(capacity:)();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v43 = 0;
      v45 = createStorage<A>(capacity:type:)(0, v42, v42);
      v46 = createStorage<A>(capacity:type:)(v43, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v47 = &v129;
      v129 = v44;
      v48 = &v128;
      v128 = v45;
      v49 = &v127;
      v127 = v46;
      serialize(_:at:)(0, &v129);
      serialize(_:at:)(1, v47);
      v125 = v102;
      v126 = v85;
      closure #1 in osLogInternal(_:log:type:)(&v125, v47, v48, v49);
      v50 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v125 = v103;
        v126 = v86;
        closure #1 in osLogInternal(_:log:type:)(&v125, &v129, &v128, &v127);
        v41 = 0;
        v125 = v104;
        v126 = v88;
        closure #1 in osLogInternal(_:log:type:)(&v125, &v129, &v128, &v127);
        _os_log_impl(&dword_269912000, v91, v92, "Siri authorization status to access Health data is: %ld", v44, 0xCu);
        v40 = 0;
        destroyStorage<A>(_:count:)(v45, 0, v42);
        destroyStorage<A>(_:count:)(v46, v40, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v44, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v91);
    (*(v109 + 8))(v115, v108);
    v39[2] = &v132;
    v132 = v106;
    v39[0] = &v131;
    v131 = 1;
    v39[1] = type metadata accessor for HKSiriAuthorizationStatus(0);
    lazy protocol witness table accessor for type HKSiriAuthorizationStatus and conformance HKSiriAuthorizationStatus();
    v38 = == infix<A>(_:_:)();
    v39[3] = &v130;
    v130 = v38 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_269A025BC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in isSiriAuthorizedToAccessHealthData(store:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  closure #1 in closure #1 in isSiriAuthorizedToAccessHealthData(store:)(a1, a2, v4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned HKSiriAuthorizationStatus, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);

  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v6(a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type HKSiriAuthorizationStatus and conformance HKSiriAuthorizationStatus()
{
  v2 = lazy protocol witness table cache variable for type HKSiriAuthorizationStatus and conformance HKSiriAuthorizationStatus;
  if (!lazy protocol witness table cache variable for type HKSiriAuthorizationStatus and conformance HKSiriAuthorizationStatus)
  {
    type metadata accessor for HKSiriAuthorizationStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSiriAuthorizationStatus and conformance HKSiriAuthorizationStatus);
    return WitnessTable;
  }

  return v2;
}

id GetSleepAnalysisIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetSleepAnalysisIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetSleepAnalysisIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetSleepAnalysisIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetSleepAnalysisIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetSleepAnalysisIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetSleepAnalysisIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetSleepAnalysisIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetSleepAnalysisIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetSleepAnalysisIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetSleepAnalysisIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetSleepAnalysisIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSleepAnalysisIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetSleepAnalysisIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetSleepAnalysisIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetSleepAnalysisIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t GetSleepAnalysisIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetSleepAnalysisIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetSleepAnalysisIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetSleepAnalysisIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetSleepAnalysisIntentResponse.code : GetSleepAnalysisIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetSleepAnalysisIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetSleepAnalysisIntentResponse.code : GetSleepAnalysisIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetSleepAnalysisIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetSleepAnalysisIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetSleepAnalysisIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetSleepAnalysisIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetSleepAnalysisIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetSleepAnalysisIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetSleepAnalysisIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetSleepAnalysisIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetSleepAnalysisIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetSleepAnalysisIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetSleepAnalysisIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetSleepAnalysisIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetSleepAnalysisIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetSleepAnalysisIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetSleepAnalysisIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetSleepAnalysisIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetSleepAnalysisIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetSleepAnalysisIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetSleepAnalysisIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSleepAnalysisIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

void *GetSleepAnalysisIntentHandler.init(store:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2.store.super.isa = CycleTrackingFetcher.init()().store.super.isa;
    __dst[3] = &type metadata for SleepAnalysisFetcher;
    __dst[4] = &protocol witness table for SleepAnalysisFetcher;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents29GetSleepAnalysisIntentHandler_store]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

uint64_t GetSleepAnalysisIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[26] = v1;
  v2[25] = a1;
  v2[18] = v2;
  v2[19] = 0;
  v2[20] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[19] = a1;
  v2[20] = v1;

  return MEMORY[0x2822009F8](GetSleepAnalysisIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 144) = *v1;
  *(v3 + 368) = a1;

  return MEMORY[0x2822009F8](GetSleepAnalysisIntentHandler.handle(intent:), 0);
}

uint64_t GetSleepAnalysisIntentHandler.handle(intent:)()
{
  v36 = v0;
  v1 = v0[37];
  v19 = v0[35];
  v21 = v0[34];
  v22 = v0[25];
  v0[18] = v0;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v19 + 16);
  v0[38] = v2;
  v0[39] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v20, v21);
  swift_endAccess();
  MEMORY[0x277D82BE0](v22);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = 64;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v27 + 24) = v24;
  v0[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v28 = v3;

  *v28 = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[1] = v25;

  v28[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[3] = v26;

  v28[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[5] = v27;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v29, v30))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(1, v14, v14);
    v17 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = buf;
    v32 = v16;
    v33 = v17;
    serialize(_:at:)(2, &v31);
    serialize(_:at:)(1, &v31);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_269912000, v29, v30, "Handling %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v16, 1, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v18[41] = 0;
  v8 = v18[37];
  v9 = v18[34];
  v10 = v18[26];
  v7 = v18[35];
  MEMORY[0x277D82BD8](v29);
  v4 = *(v7 + 8);
  v18[42] = v4;
  v18[43] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v8, v9);
  outlined init with copy of QuantityPersisting(v10 + OBJC_IVAR____TtC19SiriWellnessIntents29GetSleepAnalysisIntentHandler_store, (v18 + 2));
  v13 = v18[5];
  v11 = v18[6];
  __swift_project_boxed_opaque_existential_1(v18 + 2, v13);
  v12 = (*(v11 + 8) + **(v11 + 8));
  v5 = swift_task_alloc();
  v18[44] = v5;
  *v5 = v18[18];
  v5[1] = GetSleepAnalysisIntentHandler.handle(intent:);

  return v12(v13, v11);
}

{
  v46 = *(v0 + 376);
  *(v0 + 144) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v46 & 1) == 0)
  {
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v44 = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(101, 0);
LABEL_22:

    v9 = *(*(v45 + 144) + 8);

    return v9(v44);
  }

  v43 = [*(v45 + 200) start];
  if (v43)
  {
    v40 = *(v45 + 256);
    v41 = *(v45 + 232);
    v42 = *(v45 + 224);
    v39 = *(v45 + 240);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v39 + 32))(v42, v40, v41);
    (*(v39 + 56))(v42, 0, 1, v41);
    MEMORY[0x277D82BD8](v43);
  }

  else
  {
    (*(*(v45 + 240) + 56))(*(v45 + 224), 1, 1, *(v45 + 232));
  }

  v1 = (*(v45 + 240) + 48);
  v38 = *v1;
  if ((*v1)(*(v45 + 224), 1, *(v45 + 232)) == 1)
  {
    outlined destroy of Date?(*(v45 + 224));
LABEL_16:
    v20 = *(v45 + 304);
    v7 = *(v45 + 288);
    v19 = *(v45 + 272);
    v18 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v20(v7, v18, v19);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v23 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v21))
    {
      v8 = *(v45 + 328);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v15 = createStorage<A>(capacity:type:)(0, v13, v13);
      v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v45 + 168) = buf;
      *(v45 + 176) = v15;
      *(v45 + 184) = v16;
      serialize(_:at:)(0, (v45 + 168));
      serialize(_:at:)(0, (v45 + 168));
      *(v45 + 192) = v23;
      v17 = swift_task_alloc();
      v17[2] = v45 + 168;
      v17[3] = v45 + 176;
      v17[4] = v45 + 184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v8)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v21, "Must provide a start and end Date for querying sleep", buf, 2u);
      destroyStorage<A>(_:count:)(v15, 0, v13);
      destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v12 = *(v45 + 336);
    v10 = *(v45 + 288);
    v11 = *(v45 + 272);
    MEMORY[0x277D82BD8](oslog);
    v12(v10, v11);
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v44 = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    goto LABEL_22;
  }

  v36 = *(v45 + 200);
  v2 = (*(v45 + 240) + 32);
  v35 = *v2;
  (*v2)(*(v45 + 264), *(v45 + 224), *(v45 + 232));
  v37 = [v36 end];
  if (v37)
  {
    v31 = *(v45 + 256);
    v33 = *(v45 + 232);
    v34 = *(v45 + 216);
    v32 = *(v45 + 240);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v35(v34, v31, v33);
    (*(v32 + 56))(v34, 0, 1, v33);
    MEMORY[0x277D82BD8](v37);
  }

  else
  {
    (*(*(v45 + 240) + 56))(*(v45 + 216), 1, 1, *(v45 + 232));
  }

  if (v38(*(v45 + 216), 1, *(v45 + 232)) == 1)
  {
    v30 = *(v45 + 264);
    v29 = *(v45 + 232);
    v28 = *(v45 + 240);
    outlined destroy of Date?(*(v45 + 216));
    (*(v28 + 8))(v30, v29);
    goto LABEL_16;
  }

  v24 = *(v45 + 208);
  v35(*(v45 + 248), *(v45 + 216), *(v45 + 232));
  outlined init with copy of QuantityPersisting(v24 + OBJC_IVAR____TtC19SiriWellnessIntents29GetSleepAnalysisIntentHandler_store, v45 + 56);
  v25 = *(v45 + 80);
  v26 = *(v45 + 88);
  __swift_project_boxed_opaque_existential_1((v45 + 56), v25);
  v27 = (*(v26 + 16) + **(v26 + 16));
  v3 = swift_task_alloc();
  *(v45 + 360) = v3;
  *v3 = *(v45 + 144);
  v3[1] = GetSleepAnalysisIntentHandler.handle(intent:);
  v4 = *(v45 + 264);
  v5 = *(v45 + 248);

  return v27(v4, v5, v25, v26);
}

{
  v5 = v0[33];
  v4 = v0[31];
  v3 = v0[30];
  v6 = v0[29];
  v0[18] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v7 = *(v3 + 8);
  v7(v4, v6);
  v7(v5, v6);
  v8 = v0[46];

  v1 = *(v0[18] + 8);

  return v1(v8);
}

uint64_t GetSleepAnalysisIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 144) = *v1;
  *(v3 + 376) = a1;

  return MEMORY[0x2822009F8](GetSleepAnalysisIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in GetSleepAnalysisIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return GetSleepAnalysisIntentHandler.handle(intent:)(a1);
}

id GetSleepAnalysisIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SleepAnalysisFetcher.morningIndexRange(for:duration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v23 = a2;
  v11 = a3;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v8[1] = 0;
  v18 = type metadata accessor for Calendar();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v9 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3);
  v19 = v8 - v9;
  v14 = type metadata accessor for Date();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v4 = MEMORY[0x28223BE20](v14, v10);
  v15 = v8 - v5;
  v28 = v6;
  v27 = v23;
  v26 = v11;
  (*(v12 + 16))(v8 - v5, v4);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v25 = isa;
  (*(v12 + 8))(v15, v14);
  static Calendar.autoupdatingCurrent.getter();
  v20 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v16 + 8))(v19, v18);
  v22 = [(objc_class *)isa hk_morningIndexWithCalendar:v20];
  MEMORY[0x277D82BD8](v20);
  v24 = v22;
  MEMORY[0x277D82BD8](isa);
  return v22;
}

Swift::Double __swiftcall SleepAnalysisFetcher.roundToMinute(_:)(Swift::Double a1)
{
  v12 = a1;
  v16 = v1;
  v9 = "Fatal error";
  v10 = "Unexpectedly found nil while unwrapping an Optional value";
  v11 = "Swift/FloatingPointTypes.swift";
  v27 = 0.0;
  v26 = 0;
  v21 = type metadata accessor for FloatingPointRoundingRule();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v14 = *(v19 + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v2);
  v22 = &v6 - v13;
  v15 = v13;
  v4 = MEMORY[0x28223BE20](&v6 - v13, v3);
  v18 = &v6 - v15;
  v27 = v4;
  v26 = v16;
  v17 = v4 / 60.0;
  v23 = MEMORY[0x277D84678];
  (*(v19 + 104))();
  v25 = v17;
  (*(v19 + 16))(v22, v18, v21);
  v24 = (*(v19 + 88))(v22, v21);
  if (v24 == *v23)
  {
    v25 = round(v17);
    goto LABEL_15;
  }

  if (v24 == *MEMORY[0x277D84670])
  {
    v25 = rint(v17);
    goto LABEL_15;
  }

  if (v24 == *MEMORY[0x277D84680])
  {
    goto LABEL_13;
  }

  if (v24 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v25 = floor(v17);
    goto LABEL_15;
  }

  if (v24 == *MEMORY[0x277D84660])
  {
    v25 = trunc(v17);
    goto LABEL_15;
  }

  if (v24 != *MEMORY[0x277D84668])
  {
    Double._roundSlowPath(_:)();
    (*(v19 + 8))(v22, v21);
LABEL_15:
    v7 = v25;
    (*(v19 + 8))(v18, v21);
    return v7 * 60.0;
  }

  v8 = *&v17 >> 63;
  if (v17 >= 0.0)
  {
LABEL_13:
    v25 = ceil(v17);
    goto LABEL_15;
  }

  if (v8 == 1)
  {
    goto LABEL_14;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SleepAnalysisFetcher.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a3;
  v3[11] = a2;
  v3[10] = a1;
  v3[4] = v3;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v4 = type metadata accessor for Calendar();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for DateComponents();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;

  return MEMORY[0x2822009F8](SleepAnalysisFetcher.query(start:end:), 0);
}

uint64_t SleepAnalysisFetcher.query(start:end:)(uint64_t a1)
{
  v32 = v1[18];
  v31 = v1[17];
  v33 = v1[16];
  v29 = v1[15];
  v28 = v1[14];
  v30 = v1[13];
  v1[4] = v1;
  static Calendar.current.getter();
  v27 = type metadata accessor for Calendar.Component();
  _allocateUninitializedArray<A>(_:)();
  (*(*(v27 - 8) + 104))(v2, *MEMORY[0x277CC9968]);
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  Set.init(arrayLiteral:)();
  Calendar.dateComponents(_:from:to:)();

  (*(v28 + 8))(v29, v30);
  v34 = DateComponents.day.getter();
  v35 = v3;
  (*(v31 + 8))(v32, v33);
  v10 = v34;
  v11 = v35;
  if (v35)
  {
    v25 = 0;
  }

  else
  {
    v25 = v34;
  }

  v24 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = v26[12];
    v22 = v13;
    v14 = v26[10];
    v26[8] = v24;
    v20 = SleepAnalysisFetcher.morningIndexRange(for:duration:)(v14, v24, v13);
    v21 = v15;
    v26[2] = v20;
    v26[3] = v15;
    v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(start:end:)", 0x11uLL, 1);
    v26[19] = v16._object;
    MEMORY[0x277D82BE0](v22);
    v23 = swift_task_alloc();
    v26[20] = v23;
    v23[2] = v20;
    v23[3] = v21;
    v23[4] = v22;
    v17 = swift_task_alloc();
    v26[21] = v17;
    SleepAnalysisIntentResponse = type metadata accessor for GetSleepAnalysisIntentResponse();
    v4 = 0;
    countAndFlagsBits = v16._countAndFlagsBits;
    object = v16._object;
    v7 = partial apply for closure #1 in SleepAnalysisFetcher.query(start:end:);
    v8 = v23;
    v9 = SleepAnalysisIntentResponse;
    *v17 = v26[4];
    v17[1] = SleepAnalysisFetcher.query(start:end:);
    v10 = v26 + 9;
    v11 = 0;
  }

  return MEMORY[0x2822007B8](v10, v11, v4, countAndFlagsBits, object, v7, v8, v9);
}

uint64_t SleepAnalysisFetcher.query(start:end:)()
{
  v2 = *(*v0 + 96);
  *(*v0 + 32) = *v0;

  return MEMORY[0x2822009F8](SleepAnalysisFetcher.query(start:end:), 0);
}

{
  *(v0 + 32) = v0;
  v3 = *(v0 + 72);

  v1 = *(*(v0 + 32) + 8);

  return v1(v3);
}

uint64_t closure #1 in SleepAnalysisFetcher.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = a1;
  v36 = a2;
  v31 = a3;
  v37 = a4;
  v34 = partial apply for closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:);
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v23 = v25;
  v24 = *(v25 + 64);
  v18 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v36);
  v28 = &v17 - v18;
  v44 = v4;
  v42 = v5;
  v43 = v6;
  v41 = v7;
  v19 = 0;
  v21 = type metadata accessor for HKSleepDaySummaryQuery();
  v32 = 0;
  type metadata accessor for HKSleepDaySummaryQueryOptions(v19);
  _allocateUninitializedArray<A>(_:)();
  *v8 = 2;
  _finalizeUninitializedArray<A>(_:)();
  v20 = v9;
  lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v33 = v40;
  (*(v25 + 16))(v28, v22, v29);
  MEMORY[0x277D82BE0](v37);
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v30 = (v27 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v25 + 32))(v35 + v27, v28, v29);
  v10 = v31;
  v11 = v32;
  v12 = v33;
  v13 = v34;
  v14 = v35;
  v15 = v36;
  *(v35 + v30) = v37;
  v38 = HKSleepDaySummaryQuery.__allocating_init(morningIndexRange:ascending:limit:options:resultsHandler:)(v15, v10, 1, v11, v12, v13, v14);
  v39 = v38;
  MEMORY[0x277D82BE0](v37);
  [v37 executeQuery_];
  MEMORY[0x277D82BD8](v37);
  return MEMORY[0x277D82BD8](v38);
}

uint64_t closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v314 = a5;
  v313 = a4;
  v325 = a3;
  v315 = a2;
  v312 = a1;
  v307 = 0;
  v379 = 0;
  v378 = 0;
  v377 = 0;
  v376 = 0;
  v375 = 0;
  v302 = 0;
  v369 = 0;
  v359 = 0;
  v357 = 0;
  v356 = 0;
  v355 = 0;
  v351 = 0.0;
  v347 = 0.0;
  v332 = 0;
  v303 = type metadata accessor for DateInterval();
  v304 = *(v303 - 8);
  v305 = v304;
  MEMORY[0x28223BE20](v303 - 8, v303);
  v306 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  MEMORY[0x28223BE20](v307, v6);
  v310 = (v308 + 15) & 0xFFFFFFFFFFFFFFF0;
  v309 = &v88 - v310;
  MEMORY[0x28223BE20](v7, &v88 - v310);
  v311 = &v88 - v310;
  v316 = type metadata accessor for Logger();
  v317 = *(v316 - 8);
  v318 = v317;
  v321 = *(v317 + 64);
  MEMORY[0x28223BE20](v325, v315);
  v323 = (v321 + 15) & 0xFFFFFFFFFFFFFFF0;
  v319 = &v88 - v323;
  MEMORY[0x28223BE20](v8, v9);
  v320 = &v88 - v323;
  MEMORY[0x28223BE20](v10, v11);
  v322 = &v88 - v323;
  MEMORY[0x28223BE20](v12, v13);
  v324 = &v88 - v323;
  v379 = v14;
  v378 = v15;
  v377 = v16;
  v376 = v17;
  v375 = v18;
  v19 = v16;
  if (v325)
  {
    v301 = v325;
    v20 = v324;
    v280 = v325;
    v332 = v325;
    v278 = Logger.wellnessIntents.unsafeMutableAddressor();
    v283 = 32;
    v287 = 32;
    v279 = &v331;
    swift_beginAccess();
    (*(v318 + 16))(v20, v278, v316);
    swift_endAccess();
    v21 = v280;
    v288 = 7;
    v289 = swift_allocObject();
    *(v289 + 16) = v280;
    v299 = Logger.logObject.getter();
    v281 = v299;
    v298 = static os_log_type_t.error.getter();
    v282 = v298;
    v284 = 17;
    v292 = swift_allocObject();
    v285 = v292;
    *(v292 + 16) = v283;
    v293 = swift_allocObject();
    v286 = v293;
    *(v293 + 16) = 8;
    v22 = swift_allocObject();
    v23 = v289;
    v290 = v22;
    *(v22 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v290;
    v296 = v24;
    v291 = v24;
    *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v24 + 24) = v25;
    v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v294 = _allocateUninitializedArray<A>(_:)();
    v295 = v26;

    v27 = v292;
    v28 = v295;
    *v295 = partial apply for closure #1 in OSLogArguments.append(_:);
    v28[1] = v27;

    v29 = v293;
    v30 = v295;
    v295[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[3] = v29;

    v31 = v295;
    v32 = v296;
    v295[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[5] = v32;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v299, v298))
    {
      v34 = v302;
      v271 = static UnsafeMutablePointer.allocate(capacity:)();
      v268 = v271;
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v272 = createStorage<A>(capacity:type:)(0, v269, v269);
      v270 = v272;
      v274 = 1;
      v273 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v330[0] = v271;
      v329 = v272;
      v328 = v273;
      v275 = v330;
      serialize(_:at:)(2, v330);
      serialize(_:at:)(v274, v275);
      v326 = partial apply for closure #1 in OSLogArguments.append(_:);
      v327 = v285;
      closure #1 in osLogInternal(_:log:type:)(&v326, v275, &v329, &v328);
      v276 = v34;
      v277 = v34;
      if (v34)
      {
        v266 = 0;

        __break(1u);
      }

      else
      {
        v326 = partial apply for closure #1 in OSLogArguments.append(_:);
        v327 = v286;
        closure #1 in osLogInternal(_:log:type:)(&v326, v330, &v329, &v328);
        v264 = 0;
        v265 = 0;
        v326 = partial apply for closure #1 in OSLogArguments.append(_:);
        v327 = v291;
        closure #1 in osLogInternal(_:log:type:)(&v326, v330, &v329, &v328);
        v262 = 0;
        v263 = 0;
        _os_log_impl(&dword_269912000, v281, v282, "Error executing sleep query: %s", v268, 0xCu);
        destroyStorage<A>(_:count:)(v270, 0, v269);
        destroyStorage<A>(_:count:)(v273, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v268, MEMORY[0x277D84B78]);

        v267 = v262;
      }
    }

    else
    {
      v35 = v302;

      v267 = v35;
    }

    v36 = v267;

    (*(v318 + 8))(v324, v316);
    v260 = 0;
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v330[1] = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(5, v260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
    CheckedContinuation.resume(returning:)();

    return v36;
  }

  if (!v315)
  {
    v37 = v322;
    v252 = Logger.wellnessIntents.unsafeMutableAddressor();
    v253 = &v374;
    v256 = 0;
    swift_beginAccess();
    (*(v318 + 16))(v37, v252, v316);
    swift_endAccess();
    v258 = Logger.logObject.getter();
    v254 = v258;
    v257 = static os_log_type_t.error.getter();
    v255 = v257;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v259 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v258, v257))
    {
      v84 = v302;
      v97 = static UnsafeMutablePointer.allocate(capacity:)();
      v93 = v97;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v95 = 0;
      v98 = createStorage<A>(capacity:type:)(0, v94, v94);
      v96 = v98;
      v99 = createStorage<A>(capacity:type:)(v95, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v373[0] = v97;
      v372 = v98;
      v371 = v99;
      v100 = 0;
      v101 = v373;
      serialize(_:at:)(0, v373);
      serialize(_:at:)(v100, v101);
      v370 = v259;
      v102 = &v88;
      MEMORY[0x28223BE20](&v88, v85);
      v103 = &v88 - 6;
      *(&v88 - 4) = v86;
      *(&v88 - 3) = &v372;
      *(&v88 - 2) = &v371;
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v105 = v84;
      if (v84)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v254, v255, "Could not unwrap day Summaries", v93, 2u);
        v91 = 0;
        destroyStorage<A>(_:count:)(v96, 0, v94);
        destroyStorage<A>(_:count:)(v99, v91, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v93, MEMORY[0x277D84B78]);

        v92 = v105;
      }
    }

    else
    {

      v92 = v302;
    }

    v90 = v92;

    (*(v318 + 8))(v322, v316);
    v89 = 0;
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v373[1] = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(5, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
    return v90;
  }

  v300 = v315;
  v248 = v315;
  v369 = v315;
  v368 = v315;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17HKSleepDaySummaryCGMd, &_sSaySo17HKSleepDaySummaryCGMR);
  v249 = v250;
  v251 = lazy protocol witness table accessor for type [HKSleepDaySummary] and conformance [A]();
  v38 = Collection.isEmpty.getter();
  if (v38)
  {
    v70 = v319;
    v125 = Logger.wellnessIntents.unsafeMutableAddressor();
    v132 = 32;
    v126 = &v367;
    swift_beginAccess();
    (*(v318 + 16))(v70, v125, v316);
    swift_endAccess();

    v133 = 7;
    v134 = swift_allocObject();
    *(v134 + 16) = v248;
    v144 = Logger.logObject.getter();
    v127 = v144;
    v143 = static os_log_type_t.error.getter();
    v128 = v143;
    v129 = 17;
    v137 = swift_allocObject();
    v130 = v137;
    *(v137 + 16) = 0;
    v138 = swift_allocObject();
    v131 = v138;
    *(v138 + 16) = 8;
    v71 = swift_allocObject();
    v72 = v134;
    v135 = v71;
    *(v71 + 16) = partial apply for implicit closure #2 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:);
    *(v71 + 24) = v72;
    v73 = swift_allocObject();
    v74 = v135;
    v141 = v73;
    v136 = v73;
    *(v73 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v73 + 24) = v74;
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v139 = _allocateUninitializedArray<A>(_:)();
    v140 = v75;

    v76 = v137;
    v77 = v140;
    *v140 = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[1] = v76;

    v78 = v138;
    v79 = v140;
    v140[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v79[3] = v78;

    v80 = v140;
    v81 = v141;
    v140[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v80[5] = v81;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v144, v143))
    {
      v82 = v302;
      v119 = static UnsafeMutablePointer.allocate(capacity:)();
      v115 = v119;
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v117 = 0;
      v120 = createStorage<A>(capacity:type:)(0, v116, v116);
      v118 = v120;
      v121 = createStorage<A>(capacity:type:)(v117, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v366[0] = v119;
      v365 = v120;
      v364 = v121;
      v122 = v366;
      serialize(_:at:)(0, v366);
      serialize(_:at:)(1, v122);
      v362 = partial apply for closure #1 in OSLogArguments.append(_:);
      v363 = v130;
      closure #1 in osLogInternal(_:log:type:)(&v362, v122, &v365, &v364);
      v123 = v82;
      v124 = v82;
      if (v82)
      {
        v113 = 0;

        __break(1u);
      }

      else
      {
        v362 = partial apply for closure #1 in OSLogArguments.append(_:);
        v363 = v131;
        closure #1 in osLogInternal(_:log:type:)(&v362, v366, &v365, &v364);
        v111 = 0;
        v112 = 0;
        v362 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v363 = v136;
        closure #1 in osLogInternal(_:log:type:)(&v362, v366, &v365, &v364);
        v109 = 0;
        v110 = 0;
        _os_log_impl(&dword_269912000, v127, v128, "No logged data found in the given date range (Day Summaries count is %ld)", v115, 0xCu);
        v108 = 0;
        destroyStorage<A>(_:count:)(v118, 0, v116);
        destroyStorage<A>(_:count:)(v121, v108, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v115, MEMORY[0x277D84B78]);

        v114 = v109;
      }
    }

    else
    {
      v83 = v302;

      v114 = v83;
    }

    v107 = v114;

    (*(v318 + 8))(v319, v316);
    v106 = 0;
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v366[1] = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(102, v106);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
    CheckedContinuation.resume(returning:)();

    return v107;
  }

  v39 = v320;
  v228 = Logger.wellnessIntents.unsafeMutableAddressor();
  v235 = 32;
  v229 = &v361;
  swift_beginAccess();
  (*(v318 + 16))(v39, v228, v316);
  swift_endAccess();

  v236 = 7;
  v237 = swift_allocObject();
  *(v237 + 16) = v248;
  v247 = Logger.logObject.getter();
  v230 = v247;
  v246 = static os_log_type_t.debug.getter();
  v231 = v246;
  v232 = 17;
  v240 = swift_allocObject();
  v233 = v240;
  *(v240 + 16) = 0;
  v241 = swift_allocObject();
  v234 = v241;
  *(v241 + 16) = 8;
  v40 = swift_allocObject();
  v41 = v237;
  v238 = v40;
  *(v40 + 16) = partial apply for implicit closure #2 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:);
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  v43 = v238;
  v244 = v42;
  v239 = v42;
  *(v42 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v42 + 24) = v43;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v242 = _allocateUninitializedArray<A>(_:)();
  v243 = v44;

  v45 = v240;
  v46 = v243;
  *v243 = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[1] = v45;

  v47 = v241;
  v48 = v243;
  v243[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[3] = v47;

  v49 = v243;
  v50 = v244;
  v243[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v49[5] = v50;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v247, v246))
  {
    v51 = v302;
    v222 = static UnsafeMutablePointer.allocate(capacity:)();
    v218 = v222;
    v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v220 = 0;
    v223 = createStorage<A>(capacity:type:)(0, v219, v219);
    v221 = v223;
    v224 = createStorage<A>(capacity:type:)(v220, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v337[0] = v222;
    v336 = v223;
    v335 = v224;
    v225 = v337;
    serialize(_:at:)(0, v337);
    serialize(_:at:)(1, v225);
    v333 = partial apply for closure #1 in OSLogArguments.append(_:);
    v334 = v233;
    closure #1 in osLogInternal(_:log:type:)(&v333, v225, &v336, &v335);
    v226 = v51;
    v227 = v51;
    if (v51)
    {
      v216 = 0;

      __break(1u);
    }

    else
    {
      v333 = partial apply for closure #1 in OSLogArguments.append(_:);
      v334 = v234;
      closure #1 in osLogInternal(_:log:type:)(&v333, v337, &v336, &v335);
      v214 = 0;
      v215 = 0;
      v333 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v334 = v239;
      closure #1 in osLogInternal(_:log:type:)(&v333, v337, &v336, &v335);
      v212 = 0;
      v213 = 0;
      _os_log_impl(&dword_269912000, v230, v231, "Day Summaries: %ld", v218, 0xCu);
      v211 = 0;
      destroyStorage<A>(_:count:)(v221, 0, v219);
      destroyStorage<A>(_:count:)(v224, v211, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v218, MEMORY[0x277D84B78]);

      v217 = v212;
    }
  }

  else
  {
    v52 = v302;

    v217 = v52;
  }

  v53 = v217;

  (*(v318 + 8))(v320, v316);

  v360 = v248;
  v208 = lazy protocol witness table accessor for type [HKSleepDaySummary] and conformance [A]();
  v54 = _ArrayProtocol.filter(_:)();
  v209 = v53;
  v210 = v54;
  if (v53)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v203 = v210;
    v205 = 0;
    v201 = type metadata accessor for HKSleepDaySummary();
    v202 = v201;
    v204 = MEMORY[0x26D6494A0](v203);
    v359 = v204;

    v358 = v248;
    v55 = _ArrayProtocol.filter(_:)();
    v206 = 0;
    v207 = v55;
    v199 = v55;
    v200 = MEMORY[0x26D6494A0]();
    v357 = v200;

    if (v204)
    {
      v198 = 0;
    }

    else
    {
      v198 = v200 == 0;
    }

    if (v198)
    {
      v56 = v206;
      v197 = 0;
      type metadata accessor for GetSleepAnalysisIntentResponse();
      v337[1] = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(102, v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
      CheckedContinuation.resume(returning:)();

      return v56;
    }

    v57 = v206;
    v194 = 0;
    type metadata accessor for HKSHSleepMetricsEngine();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v191 = [ObjCClassFromMetadata sleepMetricsForDaySummaries_];
    v190 = v191;

    v356 = v191;
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v193 = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(4, v194);
    v192 = v193;
    v355 = v193;
    v58 = MEMORY[0x26D6494A0](v248, v202);
    [v193 setDaysSummarized_];
    [v193 setDaysWithAsleepData_];
    v353[1] = v248;
    v60 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:), v194, v249, MEMORY[0x277D839F8], MEMORY[0x277D84A98], v251, MEMORY[0x277D84AC0], v59);
    v195 = v57;
    v196 = v60;
    if (!v57)
    {
      v353[0] = v196;
      v184 = 0;
      v352 = 0;
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      v183 = v185;
      v186 = lazy protocol witness table accessor for type [Double] and conformance [A]();
      Sequence.reduce<A>(_:_:)();
      v187 = 0;
      outlined destroy of [HKQuantityType](v353);
      v351 = v354;
      v61 = SleepAnalysisFetcher.roundToMinute(_:)(v354);
      [v192 setTotalInBedDuration_];
      v349[1] = v248;
      v63 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #4 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:), 0, v249, MEMORY[0x277D839F8], MEMORY[0x277D84A98], v251, MEMORY[0x277D84AC0], v62);
      v181 = 0;
      v182 = v63;
      v349[0] = v63;
      v348 = 0;
      Sequence.reduce<A>(_:_:)();
      v180 = 0;
      outlined destroy of [HKQuantityType](v349);
      v347 = v350;
      v64 = SleepAnalysisFetcher.roundToMinute(_:)(v350);
      [v192 setTotalAsleepDuration_];
      if (v200 >= 1)
      {
        v179 = [v190 averageInBedDuration];
        if (v179)
        {
          v178 = v179;
          v174 = v179;
          v173 = [objc_opt_self() secondUnit];
          [v174 doubleValueForUnit_];
          v175 = v65;

          v176 = v175;
          v177 = 0;
        }

        else
        {
          v176 = 0.0;
          v177 = 1;
        }

        v338 = v176;
        v339 = v177 & 1;
        if (v177)
        {
          v172 = 0.0;
        }

        else
        {
          v172 = v338;
        }

        [v192 setAverageInBedDuration_];
      }

      if (v204 >= 1)
      {
        v171 = [v190 averageSleepDuration];
        if (v171)
        {
          v170 = v171;
          v166 = v171;
          v165 = [objc_opt_self() secondUnit];
          [v166 doubleValueForUnit_];
          v167 = v66;

          v168 = v167;
          v169 = 0;
        }

        else
        {
          v168 = 0.0;
          v169 = 1;
        }

        v340 = v168;
        v341 = v169 & 1;
        if (v169)
        {
          v164 = 0.0;
        }

        else
        {
          v164 = v340;
        }

        [v192 setAverageAsleepDuration_];
      }

      v346 = v248;
      Collection.first.getter();
      v163 = v345;
      if (v345)
      {
        v162 = v163;
        v160 = v163;
        v161 = [v163 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.start.getter();
        (*(v305 + 8))(v306, v303);
        v68 = type metadata accessor for Date();
        (*(*(v68 - 8) + 56))(v311, 0, 1);
      }

      else
      {
        v67 = type metadata accessor for Date();
        (*(*(v67 - 8) + 56))(v311, 1);
      }

      v155 = type metadata accessor for Date();
      v156 = *(v155 - 8);
      v157 = v156;
      v158 = *(v156 + 48);
      v159 = (v156 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v158(v311, 1) == 1)
      {
        v154 = 0;
      }

      else
      {
        v153 = Date._bridgeToObjectiveC()().super.isa;
        (*(v157 + 8))(v311, v155);
        v154 = v153;
      }

      v151 = v154;
      [v192 setSummaryStartDate_];

      v344 = v248;
      lazy protocol witness table accessor for type [HKSleepDaySummary] and conformance [A]();
      BidirectionalCollection.last.getter();
      v152 = v343;
      if (v343)
      {
        v150 = v152;
        v148 = v152;
        v149 = [v152 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.end.getter();
        (*(v305 + 8))(v306, v303);
        (*(v157 + 56))(v309, 0, 1, v155);
      }

      else
      {
        (*(v157 + 56))(v309, 1, 1, v155);
      }

      if ((v158)(v309, 1, v155) == 1)
      {
        v147 = 0;
      }

      else
      {
        v146 = Date._bridgeToObjectiveC()().super.isa;
        (*(v157 + 8))(v309, v155);
        v147 = v146;
      }

      v145 = v147;
      [v192 setSummaryEndDate_];

      v69 = v192;
      v342 = v192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
      CheckedContinuation.resume(returning:)();

      return v180;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

id closure #3 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inBedDuration];
  *a2 = v3;
  return result;
}

id closure #4 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sleepDuration];
  *a2 = v3;
  return result;
}

uint64_t protocol witness for SleepAnalysisFetching.isReadingAuthorized() in conformance SleepAnalysisFetcher()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return CycleTrackingFetcher.isReadingAuthorized()(v5);
}

uint64_t protocol witness for SleepAnalysisFetching.query(start:end:) in conformance SleepAnalysisFetcher(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return SleepAnalysisFetcher.query(start:end:)(a1, a2, v8);
}

id @nonobjc HKSleepDaySummaryQuery.init(morningIndexRange:ascending:limit:options:resultsHandler:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a6;
  v22 = a7;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = 0;
  v19 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSleepDaySummaryQuery, @guaranteed [HKSleepDaySummary]?, @guaranteed Error?) -> ();
  v20 = &block_descriptor_9;
  v14 = _Block_copy(&aBlock);
  v15 = [v13 initWithMorningIndexRange:a1 ascending:a2 limit:a3 & 1 options:a4 resultsHandler:a5];
  _Block_release(v14);

  return v15;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSleepDaySummaryQuery, @guaranteed [HKSleepDaySummary]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKSleepDaySummary();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a3);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v9(a2, v7);

  MEMORY[0x277D82BD8](a2);
}

uint64_t sub_269A097E8()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetSleepAnalysisIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in GetSleepAnalysisIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t type metadata accessor for HKSleepDaySummaryQuery()
{
  v2 = lazy cache variable for type metadata for HKSleepDaySummaryQuery;
  if (!lazy cache variable for type metadata for HKSleepDaySummaryQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSleepDaySummaryQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269A099E4()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = (v1 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v1);
  MEMORY[0x277D82BD8](*(v0 + v4));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR) - 8);
  v4 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v5 = *(v3 + ((v4 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:)(a1, a2, a3, v3 + v4, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for HKSleepDaySummary()
{
  v2 = lazy cache variable for type metadata for HKSleepDaySummary;
  if (!lazy cache variable for type metadata for HKSleepDaySummary)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSleepDaySummary);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKSleepDaySummary] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKSleepDaySummaryCGMd, &_sSaySo17HKSleepDaySummaryCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKSleepDaySummaryCGMd, &_sSaySo17HKSleepDaySummaryCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKSleepDaySummaryCGMd, &_sSaySo17HKSleepDaySummaryCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKSHSleepMetricsEngine()
{
  v2 = lazy cache variable for type metadata for HKSHSleepMetricsEngine;
  if (!lazy cache variable for type metadata for HKSHSleepMetricsEngine)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSHSleepMetricsEngine);
    return ObjCClassMetadata;
  }

  return v2;
}

id GetHealthQuantityIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetHealthQuantityIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetHealthQuantityIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetHealthQuantityIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetHealthQuantityIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetHealthQuantityIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetHealthQuantityIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetHealthQuantityIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetHealthQuantityIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetHealthQuantityIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetHealthQuantityIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetHealthQuantityIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetHealthQuantityIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetHealthQuantityIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetHealthQuantityIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetHealthQuantityIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t GetHealthQuantityIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetHealthQuantityIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetHealthQuantityIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetHealthQuantityIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetHealthQuantityIntentResponse.code : GetHealthQuantityIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetHealthQuantityIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetHealthQuantityIntentResponse.code : GetHealthQuantityIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetHealthQuantityIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetHealthQuantityIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetHealthQuantityIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetHealthQuantityIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetHealthQuantityIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetHealthQuantityIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetHealthQuantityIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetHealthQuantityIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetHealthQuantityIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetHealthQuantityIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetHealthQuantityIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetHealthQuantityIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetHealthQuantityIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetHealthQuantityIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetHealthQuantityIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetHealthQuantityIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetHealthQuantityIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetHealthQuantityIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetHealthQuantityIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetHealthQuantityIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::DataProviderFactory __swiftcall DataProviderFactory.init()()
{
  isa = 0;
  type metadata accessor for HKHealthStore();
  v1.store.super.isa = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v1.store.super.isa);
  isa = v1.store.super.isa;
  outlined destroy of HealthKitPersistor(&isa);
  return v1;
}

void *DataProviderFactory.ambiguousDistanceProvider()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  static HealthKitDistanceProvider<A>.ambiguousDistance(store:)(a1, v6);
  MEMORY[0x277D82BD8](a1);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents25HealthKitDistanceProviderVyAA012GetAmbiguousF14IntentResponseCGMd, &_s19SiriWellnessIntents25HealthKitDistanceProviderVyAA012GetAmbiguousF14IntentResponseCGMR);
  a2[4] = &protocol witness table for <A> HealthKitDistanceProvider<A>;
  v2 = swift_allocObject();
  *a2 = v2;
  return memcpy((v2 + 16), v6, 0x30uLL);
}

uint64_t sub_269A0BD4C()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  return swift_deallocObject();
}

void *DataProviderFactory.bloodPressureProvider()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  static HealthKitCorrelationProvider<A>.bloodPressure(store:)(a1, v6);
  MEMORY[0x277D82BD8](a1);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents28HealthKitCorrelationProviderVyAA30GetBloodPressureIntentResponseCGMd, &_s19SiriWellnessIntents28HealthKitCorrelationProviderVyAA30GetBloodPressureIntentResponseCGMR);
  a2[4] = &protocol witness table for <A> HealthKitCorrelationProvider<A>;
  v2 = swift_allocObject();
  *a2 = v2;
  return memcpy((v2 + 16), v6, 0x40uLL);
}

uint64_t sub_269A0BE6C()
{
  MEMORY[0x277D82BD8](v0[2]);
  MEMORY[0x277D82BD8](v0[3]);
  MEMORY[0x277D82BD8](v0[4]);
  MEMORY[0x277D82BD8](v0[5]);

  return swift_deallocObject();
}

uint64_t PeriodFlow.init(healthLogValueCategoryValue:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;

  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("light", 5uLL, 1);
  v22 = a1;
  v23 = a2;
  v11 = MEMORY[0x26D649310](v24._countAndFlagsBits, v24._object, a1, a2);
  outlined destroy of String.UTF8View(&v24);
  if (v11)
  {

    v27 = 3;
    v8 = 3;
LABEL_13:

    return v8;
  }

  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("medium", 6uLL, 1);
  v19 = a1;
  v20 = a2;
  v7 = MEMORY[0x26D649310](v21._countAndFlagsBits, v21._object, a1, a2);
  outlined destroy of String.UTF8View(&v21);
  if (v7)
  {

    v27 = 4;
    v8 = 4;
    goto LABEL_13;
  }

  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("heavy", 5uLL, 1);
  v16 = a1;
  v17 = a2;
  v6 = MEMORY[0x26D649310](v18._countAndFlagsBits, v18._object, a1, a2);
  outlined destroy of String.UTF8View(&v18);
  if (v6)
  {

    v27 = 5;
    v8 = 5;
    goto LABEL_13;
  }

  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("not", 3uLL, 1);
  v13 = a1;
  v14 = a2;
  v5 = MEMORY[0x26D649310](v15._countAndFlagsBits, v15._object, a1, a2);
  outlined destroy of String.UTF8View(&v15);
  if (v5)
  {

LABEL_11:
    v27 = 1;
    v8 = 1;
    goto LABEL_13;
  }

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("none", 4uLL, 1);
  v4 = MEMORY[0x26D649310](v12._countAndFlagsBits, v12._object, a1, a2);
  outlined destroy of String.UTF8View(&v12);
  if (v4)
  {

    goto LABEL_11;
  }

  return 0;
}

uint64_t PeriodFlow.init(rawDoubleValue:)(unint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  if (((a1 >> 52) & 0x7FF) == 0x7FF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (*&a1 <= -9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (*&a1 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = PeriodFlow.init(rawValue:)(*&a1);
  if (v2)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

BOOL WellnessMagnitudeUnit.init(rawValue:)(uint64_t a1, void *a2)
{
  string._countAndFlagsBits = a1;
  string._object = a2;
  _allocateUninitializedArray<A>(_:)();
  *v2 = "none";
  *(v2 + 8) = 4;
  *(v2 + 16) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v6 = _findStringSwitchCase(cases:string:)(v3, string);

  return v6 != 0;
}

unint64_t lazy protocol witness table accessor for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit()
{
  v2 = lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit;
  if (!lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit;
  if (!lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit);
    return WitnessTable;
  }

  return v2;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessMagnitudeUnit@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = WellnessMagnitudeUnit.init(rawValue:)(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessMagnitudeUnit@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessMagnitudeUnit.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

id DeleteHealthSampleIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for DeleteHealthSampleIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id DeleteHealthSampleIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id DeleteHealthSampleIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for DeleteHealthSampleIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id DeleteHealthSampleIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id DeleteHealthSampleIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for DeleteHealthSampleIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id DeleteHealthSampleIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id DeleteHealthSampleIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for DeleteHealthSampleIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id DeleteHealthSampleIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteHealthSampleIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DeleteHealthSampleIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DeleteHealthSampleIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeleteHealthSampleIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t DeleteHealthSampleIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___DeleteHealthSampleIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t DeleteHealthSampleIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___DeleteHealthSampleIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for DeleteHealthSampleIntentResponse.code : DeleteHealthSampleIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = DeleteHealthSampleIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for DeleteHealthSampleIntentResponse.code : DeleteHealthSampleIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  DeleteHealthSampleIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *DeleteHealthSampleIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___DeleteHealthSampleIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id DeleteHealthSampleIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___DeleteHealthSampleIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for DeleteHealthSampleIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id DeleteHealthSampleIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id DeleteHealthSampleIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___DeleteHealthSampleIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for DeleteHealthSampleIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id DeleteHealthSampleIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id DeleteHealthSampleIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___DeleteHealthSampleIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for DeleteHealthSampleIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id DeleteHealthSampleIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id DeleteHealthSampleIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___DeleteHealthSampleIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for DeleteHealthSampleIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id DeleteHealthSampleIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteHealthSampleIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode;
  if (!lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode;
  if (!lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessSort_optional __swiftcall WellnessSort.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "average";
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
  *(v1 + 24) = "minimum";
  *(v1 + 32) = 7;
  *(v1 + 40) = 2;
  *(v1 + 48) = "maximum";
  *(v1 + 56) = 7;
  *(v1 + 64) = 2;
  *(v1 + 72) = "sum";
  *(v1 + 80) = 3;
  *(v1 + 88) = 2;
  *(v1 + 96) = "first";
  *(v1 + 104) = 5;
  *(v1 + 112) = 2;
  *(v1 + 120) = "last";
  *(v1 + 128) = 4;
  *(v1 + 136) = 2;
  *(v1 + 144) = "next";
  *(v1 + 152) = 4;
  *(v1 + 160) = 2;
  *(v1 + 168) = "above";
  *(v1 + 176) = 5;
  *(v1 + 184) = 2;
  *(v1 + 192) = "below";
  *(v1 + 200) = 5;
  *(v1 + 208) = 2;
  *(v1 + 216) = "unspecified";
  *(v1 + 224) = 11;
  *(v1 + 232) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessSort_average;
LABEL_22:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessSort_minimum;
      goto LABEL_22;
    case 2:
      v5.value = SiriWellnessIntents_WellnessSort_maximum;
      goto LABEL_22;
    case 3:
      v5.value = SiriWellnessIntents_WellnessSort_sum;
      goto LABEL_22;
    case 4:
      v5.value = SiriWellnessIntents_WellnessSort_first;
      goto LABEL_22;
    case 5:
      v5.value = SiriWellnessIntents_WellnessSort_last;
      goto LABEL_22;
    case 6:
      v5.value = SiriWellnessIntents_WellnessSort_next;
      goto LABEL_22;
    case 7:
      v5.value = SiriWellnessIntents_WellnessSort_above;
      goto LABEL_22;
    case 8:
      v5.value = SiriWellnessIntents_WellnessSort_below;
      goto LABEL_22;
    case 9:
      v5.value = SiriWellnessIntents_WellnessSort_unspecified;
      goto LABEL_22;
  }

  return 10;
}

uint64_t WellnessSort.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("average", 7uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minimum", 7uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maximum", 7uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sum", 3uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("first", 5uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("last", 4uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("next", 4uLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("above", 5uLL, 1)._countAndFlagsBits;
    case 8:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("below", 5uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unspecified", 0xBuLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type WellnessSort and conformance WellnessSort()
{
  v2 = lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort;
  if (!lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort;
  if (!lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessSort_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessSort@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessSort_optional *a2@<X8>)
{
  result.value = WellnessSort.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessSort@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessSort.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessSort(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF6)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 9) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 246;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 10;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessSort(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF6)
  {
    v5 = ((a3 + 9) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF6)
  {
    v4 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

id GetAcitivitySummaryIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetAcitivitySummaryIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetAcitivitySummaryIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAcitivitySummaryIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetAcitivitySummaryIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetAcitivitySummaryIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetAcitivitySummaryIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetAcitivitySummaryIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetAcitivitySummaryIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetAcitivitySummaryIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetAcitivitySummaryIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetAcitivitySummaryIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetAcitivitySummaryIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetAcitivitySummaryIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetAcitivitySummaryIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetAcitivitySummaryIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t GetAcitivitySummaryIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetAcitivitySummaryIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetAcitivitySummaryIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetAcitivitySummaryIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetAcitivitySummaryIntentResponse.code : GetAcitivitySummaryIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetAcitivitySummaryIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetAcitivitySummaryIntentResponse.code : GetAcitivitySummaryIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetAcitivitySummaryIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetAcitivitySummaryIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetAcitivitySummaryIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetAcitivitySummaryIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetAcitivitySummaryIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetAcitivitySummaryIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetAcitivitySummaryIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAcitivitySummaryIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetAcitivitySummaryIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetAcitivitySummaryIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetAcitivitySummaryIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAcitivitySummaryIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetAcitivitySummaryIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetAcitivitySummaryIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetAcitivitySummaryIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetAcitivitySummaryIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetAcitivitySummaryIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetAcitivitySummaryIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetAcitivitySummaryIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetAcitivitySummaryIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

id GetCardioFitnessIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetCardioFitnessIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetCardioFitnessIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetCardioFitnessIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetCardioFitnessIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetCardioFitnessIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetCardioFitnessIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetCardioFitnessIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetCardioFitnessIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetCardioFitnessIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetCardioFitnessIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetCardioFitnessIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetCardioFitnessIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetCardioFitnessIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetCardioFitnessIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetCardioFitnessIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t GetCardioFitnessIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetCardioFitnessIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetCardioFitnessIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetCardioFitnessIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetCardioFitnessIntentResponse.code : GetCardioFitnessIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetCardioFitnessIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetCardioFitnessIntentResponse.code : GetCardioFitnessIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetCardioFitnessIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetCardioFitnessIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetCardioFitnessIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetCardioFitnessIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetCardioFitnessIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetCardioFitnessIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetCardioFitnessIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetCardioFitnessIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetCardioFitnessIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetCardioFitnessIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetCardioFitnessIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetCardioFitnessIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetCardioFitnessIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetCardioFitnessIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetCardioFitnessIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetCardioFitnessIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetCardioFitnessIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetCardioFitnessIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetCardioFitnessIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetCardioFitnessIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessConfirmation_optional __swiftcall WellnessConfirmation.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "yes";
  *(v1 + 8) = 3;
  *(v1 + 16) = 2;
  *(v1 + 24) = "no";
  *(v1 + 32) = 2;
  *(v1 + 40) = 2;
  *(v1 + 48) = "cancel";
  *(v1 + 56) = 6;
  *(v1 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessConfirmation_yes;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessConfirmation_no;
      goto LABEL_8;
    case 2:
      v5.value = SiriWellnessIntents_WellnessConfirmation_cancel;
      goto LABEL_8;
  }

  return 3;
}

uint64_t WellnessConfirmation.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("yes", 3uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("no", 2uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancel", 6uLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type WellnessConfirmation and conformance WellnessConfirmation()
{
  v2 = lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation;
  if (!lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation;
  if (!lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessConfirmation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessConfirmation@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessConfirmation_optional *a2@<X8>)
{
  result.value = WellnessConfirmation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessConfirmation@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessConfirmation.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessConfirmation(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

Swift::tuple_Double_Double __swiftcall minMaxForSample(sample:unit:oMin:oMax:)(HKSample sample, HKUnit unit, Swift::Double oMin, Swift::Double oMax)
{
  MEMORY[0x277D82BE0](sample.super.super.isa);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v13 = v18;
  }

  else
  {
    MEMORY[0x277D82BD8](sample.super.super.isa);
    v13 = 0;
  }

  if (v13)
  {
    v11 = [v13 quantity];
    [v11 doubleValueForUnit_];
    v12 = v4;
    MEMORY[0x277D82BD8](v11);
    if (oMin == 0.0)
    {
      v10 = v12;
    }

    else
    {
      min<A>(_:_:)();
      v10 = v20;
    }

    max<A>(_:_:)();
    MEMORY[0x277D82BD8](v13);
    v8 = v10;
    v9 = v19;
  }

  else
  {
    v8 = oMin;
    v9 = oMax;
  }

  v5 = v8;
  v6 = v9;
  result._1 = v6;
  result._0 = v5;
  return result;
}

uint64_t conjugate<A>(for:units:target:minKey:maxKey:valueKey:accumulator:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v7 = *a4;
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = *(v7 + *MEMORY[0x277D84308]);
  v14 = a5;
  v13 = a6;
  v12 = a7;
  v9 = [a1 objectsForType_];
  type metadata accessor for HKSample();
  lazy protocol witness table accessor for type HKSample and conformance NSObject();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x277D82BE0](a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8HKSampleCGMd, &_sShySo8HKSampleCGMR);
  lazy protocol witness table accessor for type Set<HKSample> and conformance Set<A>();
  Sequence.forEach(_:)();

  MEMORY[0x277D82BD8](a3);

  outlined destroy of [HKQuantityType](&v11);
  return MEMORY[0x277D82BD8](v9);
}

uint64_t closure #1 in conjugate<A>(for:units:target:minKey:maxKey:valueKey:accumulator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v57 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = a7;
  isa = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v68 = 0;
  v65 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v48 = *(*a5 + *MEMORY[0x277D84308]);
  v78 = v48;
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v52 = v49[8];
  v51 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a2, a2);
  v53 = &v19 - v51;
  v54 = v51;
  MEMORY[0x28223BE20](v7, &v19 - v51);
  v55 = &v19 - v54;
  v56.super.super.isa = *v8;
  isa = v56.super.super.isa;
  v76 = v9;
  v75 = v10;
  v74 = v11;
  v73 = v12;
  v72 = v13;
  v71 = v14;

  if (v57)
  {
    v42 = v57;
    v39 = v57;
    MEMORY[0x277D82BE0](v43);
    v38 = &v58;
    v58 = v43;
    v35 = 0;
    v36 = type metadata accessor for HKQuantityType();
    v37 = type metadata accessor for HKUnit();
    v15 = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    MEMORY[0x26D649240](v59, v38, v39, v36, v37, v15);
    MEMORY[0x277D82BD8](v58);
    v40 = v59[0];

    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v69 = v41;
  if (v41)
  {
    v70 = v69;
  }

  else
  {
    v70 = [objc_opt_self() millimeterOfMercuryUnit];
    if (v69)
    {
      outlined destroy of HealthKitPersistor(&v69);
    }
  }

  v30.super.isa = v70;
  v68 = v70;

  v29 = v49[2];
  v28 = v49 + 2;
  v29(v55, v44, v48);
  swift_getAtKeyPath();
  v31 = v67;

  v29(v53, v44, v48);
  swift_getAtKeyPath();
  v34 = minMaxForSample(sample:unit:oMin:oMax:)(v56, v30, v31, v66);
  v33 = v49[1];
  v32 = v49 + 1;
  v33(v53, v48);

  v33(v55, v48);

  v65 = v34;

  v64 = v34._0;
  swift_setAtWritableKeyPath();

  v63 = v34._1;
  swift_setAtWritableKeyPath();

  if (v47)
  {
    v27 = v47;
    v25 = v47;
    v62 = v47;
    MEMORY[0x277D82BE0](v56.super.super.isa);
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    v26 = v16;
    if (v16)
    {
      v24 = v26;
    }

    else
    {
      MEMORY[0x277D82BD8](v56.super.super.isa);
      v24 = 0;
    }

    v23 = v24;
    if (v24)
    {
      v22 = v23;
      v21 = v23;
      v61 = v23;
      v19 = [v23 quantity];
      [v19 doubleValueForUnit_];
      v20 = v17;
      MEMORY[0x277D82BD8](v19);
      v60 = v20;

      v59[1] = v20;
      swift_setAtWritableKeyPath();

      MEMORY[0x277D82BD8](v21);
    }
  }

  return MEMORY[0x277D82BD8](v30.super.isa);
}

uint64_t GetBloodPressureIntentHandler.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter;
  v2 = type metadata accessor for OSSignposter();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void *GetBloodPressureIntentHandler.init(provider:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  OSSignposter.init()();
  outlined init with copy of QuantityPersisting(a1, v7);
  outlined init with take of QuantityPersisting(v7, &v1[OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_provider]);
  v6.receiver = v9;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v5);
  v9 = v5;
  __swift_destroy_boxed_opaque_existential_1(a1);
  MEMORY[0x277D82BD8](v9);
  return v5;
}

uint64_t GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[70] = v1;
  v2[69] = a1;
  v2[35] = v2;
  v2[36] = 0;
  v2[37] = 0;
  v2[38] = 0;
  v2[43] = 0;
  v2[48] = 0;
  v2[53] = 0;
  v2[54] = 0;
  v2[57] = 0;
  v2[58] = 0;
  v2[60] = 0;
  v3 = type metadata accessor for Logger();
  v2[71] = v3;
  v2[72] = *(v3 - 8);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v4 = type metadata accessor for OSSignposter();
  v2[77] = v4;
  v2[78] = *(v4 - 8);
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v2[82] = v5;
  v2[83] = *(v5 - 8);
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[36] = a1;
  v2[37] = v1;

  return MEMORY[0x2822009F8](GetBloodPressureIntentHandler.handle(intent:), 0);
}

{
  v30 = v1[99];
  v29 = v1[98];
  v1[35] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v29);

  v1[100] = 0;
  v21 = *(v28 + 768);
  MEMORY[0x277D82BD8](*(v28 + 776));
  MEMORY[0x277D82BD8](v21);
  v2 = *(v28 + 608);
  v24 = *(v28 + 568);
  v22 = *(v28 + 576);
  v23 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v22 + 16))(v2, v23, v24);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0, v16, v16);
    v19 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v28 + 392) = buf;
    *(v28 + 400) = v18;
    *(v28 + 408) = v19;
    serialize(_:at:)(0, (v28 + 392));
    serialize(_:at:)(0, (v28 + 392));
    *(v28 + 416) = v27;
    v20 = swift_task_alloc();
    v20[2] = v28 + 392;
    v20[3] = v28 + 400;
    v20[4] = v28 + 408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v25, "failed to create quantity types sys/dia", buf, 2u);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v28 + 744);
  v11 = *(v28 + 728);
  v13 = *(v28 + 680);
  v14 = *(v28 + 656);
  v6 = *(v28 + 608);
  v7 = *(v28 + 568);
  v10 = *(v28 + 560);
  v8 = *(v28 + 760);
  v12 = *(v28 + 664);
  v5 = *(v28 + 576);
  MEMORY[0x277D82BD8](oslog);
  (*(v5 + 8))(v6, v7);
  type metadata accessor for GetBloodPressureIntentResponse();
  v15 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v10, v11);

  (*(v12 + 8))(v13, v14);

  v3 = *(*(v28 + 280) + 8);

  return v3(v15);
}

uint64_t GetBloodPressureIntentHandler.handle(intent:)()
{
  v36 = v0;
  v28 = v0[81];
  v26 = v0[80];
  v27 = v0[78];
  v31 = v0[77];
  v30 = v0[70];
  v0[35] = v0;
  v1 = OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter;
  v32 = *(v27 + 16);
  v0[86] = v32;
  v0[87] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v32(v28, v30 + v1);
  OSSignposter.makeSignpostID()();
  v2 = *(v27 + 8);
  v29 = v2;
  v0[88] = v2;
  v0[89] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v28, v31);
  (v32)(v26, v30 + OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter, v31);
  v33 = OSSignposter.logHandle.getter();
  v34 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    closure #1 in _globalStringTablePointerOfStaticString(_:)("GBPIHandle", &v35);
    v18 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v23 = _allocateUninitializedArray<A>(_:)();
    MEMORY[0x277D82BE0](v33);
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0, v19, v19);
    v22 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v25 + 520) = v20;
    *(v25 + 528) = v21;
    *(v25 + 536) = v22;
    serialize(_:at:)(0, (v25 + 520));
    serialize(_:at:)(0, (v25 + 520));
    *(v25 + 544) = v23;
    v24 = swift_task_alloc();
    v24[2] = v25 + 520;
    v24[3] = v25 + 528;
    v24[4] = v25 + 536;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v17 = *(v25 + 680);

    closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v20, 2u, v33, v34, v17, v18, "");
    destroyStorage<A>(_:count:)(v21, 0, v19);
    destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v20, MEMORY[0x277D84B78]);
    MEMORY[0x277D82BD8](v33);
  }

  *(v25 + 720) = 0;
  v7 = *(v25 + 680);
  v8 = *(v25 + 672);
  v6 = *(v25 + 656);
  v10 = *(v25 + 640);
  v9 = *(v25 + 616);
  v12 = *(v25 + 560);
  v5 = *(v25 + 664);
  MEMORY[0x277D82BD8](v33);
  type metadata accessor for OSSignpostIntervalState();
  (*(v5 + 16))(v8, v7, v6);
  _swift_stdlib_has_malloc_size();
  v11 = OSSignpostIntervalState.__allocating_init(id:isOpen:)();
  *(v25 + 728) = v11;
  v29(v10, v9);
  *(v25 + 304) = v11;
  outlined init with copy of QuantityPersisting(v12 + OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_provider, v25 + 144);
  v16 = *(v25 + 168);
  v13 = *(v25 + 176);
  __swift_project_boxed_opaque_existential_1((v25 + 144), v16);
  v14 = *(v13 + 8);
  v15 = (*(v14 + 8) + **(v14 + 8));
  v3 = swift_task_alloc();
  *(v25 + 736) = v3;
  *v3 = *(v25 + 280);
  v3[1] = GetBloodPressureIntentHandler.handle(intent:);

  return v15(v16, v14);
}

{
  v108 = v0;
  v106 = *(v0 + 856);
  *(v0 + 280) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  if ((v106 & 1) == 0)
  {
    v6 = *(v105 + 592);
    v26 = *(v105 + 568);
    v24 = *(v105 + 576);
    v25 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v24 + 16))(v6, v25, v26);
    swift_endAccess();
    v28 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v29 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v28, v27))
    {
      v7 = *(v105 + 720);
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0, v19, v19);
      v22 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v105 + 312) = v20;
      *(v105 + 320) = v21;
      *(v105 + 328) = v22;
      serialize(_:at:)(0, (v105 + 312));
      serialize(_:at:)(0, (v105 + 312));
      *(v105 + 336) = v29;
      v23 = swift_task_alloc();
      v23[2] = v105 + 312;
      v23[3] = v105 + 320;
      v23[4] = v105 + 328;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v7)
      {
      }

      _os_log_impl(&dword_269912000, v28, v27, "request requires Authorization", v20, 2u);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v20, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v14 = *(v105 + 728);
    v16 = *(v105 + 680);
    v17 = *(v105 + 656);
    v11 = *(v105 + 592);
    v12 = *(v105 + 568);
    v13 = *(v105 + 560);
    v15 = *(v105 + 664);
    v10 = *(v105 + 576);
    MEMORY[0x277D82BD8](v28);
    (*(v10 + 8))(v11, v12);
    type metadata accessor for GetBloodPressureIntentResponse();
    v18 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v13, v14);

    (*(v15 + 8))(v16, v17);
    v61 = v18;
    goto LABEL_34;
  }

  v101 = *(v105 + 688);
  v98 = *(v105 + 632);
  v100 = *(v105 + 616);
  v99 = *(v105 + 560);
  type metadata accessor for HKHealthStore();
  v110 = NSDateFormatter.__allocating_init()();
  isa = v110.super.super.isa;
  *(v105 + 744) = v110.super.super.isa;
  *(v105 + 344) = v110.super.super.isa;
  v101(v98, v99 + OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter, v100, v110._counter);
  v103 = OSSignposter.logHandle.getter();
  v104 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v1 = *(v105 + 720);
    closure #1 in _globalStringTablePointerOfStaticString(_:)("HKStore initialized", &v107);
    v90 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v95 = _allocateUninitializedArray<A>(_:)();
    MEMORY[0x277D82BE0](v103);
    v92 = static UnsafeMutablePointer.allocate(capacity:)();
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v93 = createStorage<A>(capacity:type:)(0, v91, v91);
    v94 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v105 + 488) = v92;
    *(v105 + 496) = v93;
    *(v105 + 504) = v94;
    serialize(_:at:)(0, (v105 + 488));
    serialize(_:at:)(0, (v105 + 488));
    *(v105 + 512) = v95;
    v96 = swift_task_alloc();
    v96[2] = v105 + 488;
    v96[3] = v105 + 496;
    v96[4] = v105 + 504;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v1)
    {
    }

    v89 = *(v105 + 680);

    closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v92, 2u, v103, v104, v89, v90, "");
    destroyStorage<A>(_:count:)(v93, 0, v91);
    destroyStorage<A>(_:count:)(v94, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v92, MEMORY[0x277D84B78]);
    MEMORY[0x277D82BD8](v103);

    v97 = 0;
  }

  else
  {
    v97 = *(v105 + 720);
  }

  *(v105 + 752) = v97;
  v85 = *(v105 + 704);
  v83 = *(v105 + 632);
  v84 = *(v105 + 616);
  MEMORY[0x277D82BD8](v103);
  v85(v83, v84);
  type metadata accessor for HKCorrelationType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v87 = *MEMORY[0x277CCBBA8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCBBA8]);
  v88 = [ObjCClassFromMetadata correlationTypeForIdentifier_];
  *(v105 + 760) = v88;
  MEMORY[0x277D82BD8](v87);
  if (!v88)
  {
    v5 = *(v105 + 600);
    v46 = *(v105 + 568);
    v44 = *(v105 + 576);
    v45 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v44 + 16))(v5, v45, v46);
    swift_endAccess();
    log = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v49 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v47))
    {
      v40 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0, v39, v39);
      v42 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v105 + 352) = v40;
      *(v105 + 360) = v41;
      *(v105 + 368) = v42;
      serialize(_:at:)(0, (v105 + 352));
      serialize(_:at:)(0, (v105 + 352));
      *(v105 + 376) = v49;
      v43 = swift_task_alloc();
      v43[2] = v105 + 352;
      v43[3] = v105 + 360;
      v43[4] = v105 + 368;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v97)
      {
      }

      _os_log_impl(&dword_269912000, log, v47, "failed to create correlation type for blood pressure", v40, 2u);
      destroyStorage<A>(_:count:)(v41, 0, v39);
      destroyStorage<A>(_:count:)(v42, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v40, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v34 = *(v105 + 728);
    v36 = *(v105 + 680);
    v37 = *(v105 + 656);
    v31 = *(v105 + 600);
    v32 = *(v105 + 568);
    v33 = *(v105 + 560);
    v35 = *(v105 + 664);
    v30 = *(v105 + 576);
    MEMORY[0x277D82BD8](log);
    (*(v30 + 8))(v31, v32);
    type metadata accessor for GetBloodPressureIntentResponse();
    v38 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](isa);
    $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v33, v34);

    (*(v35 + 8))(v36, v37);
    v61 = v38;
    goto LABEL_34;
  }

  *(v105 + 384) = v88;
  v80 = objc_opt_self();
  v81 = *MEMORY[0x277CCC980];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
  v82 = [v80 quantityTypeForIdentifier_];
  *(v105 + 768) = v82;
  MEMORY[0x277D82BD8](v81);
  if (v82)
  {
    *(v105 + 424) = v82;
    v77 = objc_opt_self();
    v78 = *MEMORY[0x277CCC978];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCC978]);
    v79 = [v77 quantityTypeForIdentifier_];
    *(v105 + 776) = v79;
    MEMORY[0x277D82BD8](v78);
    if (v79)
    {
      *(v105 + 432) = v79;
      type metadata accessor for HKQuantityType();
      _allocateUninitializedArray<A>(_:)();
      v73 = v2;
      MEMORY[0x277D82BE0](v82);
      *v73 = v82;
      MEMORY[0x277D82BE0](v79);
      v73[1] = v79;
      _finalizeUninitializedArray<A>(_:)();
      *(v105 + 448) = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKQuantityTypeCGMd, &_sSaySo14HKQuantityTypeCGMR);
      lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
      lazy protocol witness table accessor for type [HKQuantityType] and conformance [A]();
      Set.init<A>(_:)();
      v75 = Set._bridgeToObjectiveC()().super.isa;
      *(v105 + 784) = v75;

      *(v105 + 16) = *(v105 + 280);
      *(v105 + 56) = v105 + 440;
      *(v105 + 24) = GetBloodPressureIntentHandler.handle(intent:);
      v74 = swift_continuation_init();
      *(v105 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMd, &_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMR);
      *(v105 + 112) = v74;
      *(v105 + 80) = MEMORY[0x277D85DD0];
      *(v105 + 88) = 1107296256;
      *(v105 + 92) = 0;
      *(v105 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [HKQuantityType : HKUnit];
      *(v105 + 104) = &block_descriptor_10;
      [(objc_class *)isa preferredUnitsForQuantityTypes:v75 completion:?];

      return MEMORY[0x282200938](v105 + 16);
    }

    MEMORY[0x277D82BD8](v82);
    v76 = v97;
  }

  else
  {
    v76 = v97;
  }

  v4 = *(v105 + 608);
  v69 = *(v105 + 568);
  v67 = *(v105 + 576);
  v68 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v67 + 16))(v4, v68, v69);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v72 = _allocateUninitializedArray<A>(_:)();
  if (!os_log_type_enabled(oslog, v70))
  {

    goto LABEL_21;
  }

  buf = static UnsafeMutablePointer.allocate(capacity:)();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v64 = createStorage<A>(capacity:type:)(0, v62, v62);
  v65 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
  *(v105 + 392) = buf;
  *(v105 + 400) = v64;
  *(v105 + 408) = v65;
  serialize(_:at:)(0, (v105 + 392));
  serialize(_:at:)(0, (v105 + 392));
  *(v105 + 416) = v72;
  v66 = swift_task_alloc();
  v66[2] = v105 + 392;
  v66[3] = v105 + 400;
  v66[4] = v105 + 408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
  Sequence.forEach(_:)();
  if (v76)
  {
  }

  _os_log_impl(&dword_269912000, oslog, v70, "failed to create quantity types sys/dia", buf, 2u);
  destroyStorage<A>(_:count:)(v64, 0, v62);
  destroyStorage<A>(_:count:)(v65, 0, MEMORY[0x277D84F70] + 8);
  MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

LABEL_21:
  v54 = *(v105 + 744);
  v56 = *(v105 + 728);
  v58 = *(v105 + 680);
  v59 = *(v105 + 656);
  v51 = *(v105 + 608);
  v52 = *(v105 + 568);
  v55 = *(v105 + 560);
  v53 = *(v105 + 760);
  v57 = *(v105 + 664);
  v50 = *(v105 + 576);
  MEMORY[0x277D82BD8](oslog);
  (*(v50 + 8))(v51, v52);
  type metadata accessor for GetBloodPressureIntentResponse();
  v60 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v55, v56);

  (*(v57 + 8))(v58, v59);
  v61 = v60;
LABEL_34:

  v8 = *(*(v105 + 280) + 8);

  return v8(v61);
}

{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 280) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 792) = v1;
  if (v1)
  {
    v2 = GetBloodPressureIntentHandler.handle(intent:);
  }

  else
  {
    v2 = GetBloodPressureIntentHandler.handle(intent:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[98];
  v0[35] = v0;
  v41 = v0[55];
  MEMORY[0x277D82BD8](v1);
  v42 = v0[94];
  v0[100] = v41;
  if (v41)
  {
    v37 = *(v40 + 744);
    v33 = *(v40 + 680);
    v32 = *(v40 + 560);
    v2 = *(v40 + 552);
    v36 = *(v40 + 776);
    v34 = *(v40 + 768);
    v31 = *(v40 + 760);
    *(v40 + 456) = v41;
    v35 = swift_allocObject();
    *(v40 + 808) = v35;
    *(v40 + 464) = v35 + 16;
    BloodPressureIntentResponse = type metadata accessor for GetBloodPressureIntentResponse();
    *(v40 + 816) = BloodPressureIntentResponse;
    *(v35 + 16) = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(4, 0);
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("handle(intent:)", 0xFuLL, 1);
    *(v40 + 824) = v3._object;
    MEMORY[0x277D82BE0](v2);
    MEMORY[0x277D82BE0](v31);
    MEMORY[0x277D82BE0](v32);

    MEMORY[0x277D82BE0](v34);

    MEMORY[0x277D82BE0](v36);
    MEMORY[0x277D82BE0](v37);
    v38 = swift_task_alloc();
    *(v40 + 832) = v38;
    v38[2] = v2;
    v38[3] = v31;
    v38[4] = v32;
    v38[5] = v33;
    v38[6] = v41;
    v38[7] = v34;
    v38[8] = v35;
    v38[9] = v36;
    v38[10] = v37;
    v4 = swift_task_alloc();
    *(v40 + 840) = v4;
    *v4 = *(v40 + 280);
    v4[1] = GetBloodPressureIntentHandler.handle(intent:);

    return MEMORY[0x2822008A0](v40 + 472, 0, 0, v3._countAndFlagsBits, v3._object, partial apply for closure #1 in GetBloodPressureIntentHandler.handle(intent:), v38, BloodPressureIntentResponse);
  }

  else
  {
    v24 = *(v40 + 768);
    MEMORY[0x277D82BD8](*(v40 + 776));
    MEMORY[0x277D82BD8](v24);
    v5 = *(v40 + 608);
    v27 = *(v40 + 568);
    v25 = *(v40 + 576);
    v26 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v25 + 16))(v5, v26, v27);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v30 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v28))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0, v19, v19);
      v22 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v40 + 392) = buf;
      *(v40 + 400) = v21;
      *(v40 + 408) = v22;
      serialize(_:at:)(0, (v40 + 392));
      serialize(_:at:)(0, (v40 + 392));
      *(v40 + 416) = v30;
      v23 = swift_task_alloc();
      v23[2] = v40 + 392;
      v23[3] = v40 + 400;
      v23[4] = v40 + 408;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v42)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v28, "failed to create quantity types sys/dia", buf, 2u);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v12 = *(v40 + 744);
    v14 = *(v40 + 728);
    v16 = *(v40 + 680);
    v17 = *(v40 + 656);
    v9 = *(v40 + 608);
    v10 = *(v40 + 568);
    v13 = *(v40 + 560);
    v11 = *(v40 + 760);
    v15 = *(v40 + 664);
    v8 = *(v40 + 576);
    MEMORY[0x277D82BD8](oslog);
    (*(v8 + 8))(v9, v10);
    type metadata accessor for GetBloodPressureIntentResponse();
    v18 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v13, v14);

    (*(v15 + 8))(v16, v17);

    v6 = *(*(v40 + 280) + 8);

    return v6(v18);
  }
}

{
  v11 = *v1;
  v10 = (*v1 + 16);
  *(v11 + 280) = *v1;
  *(v11 + 848) = v0;

  if (v0)
  {
    v2 = GetBloodPressureIntentHandler.handle(intent:);
  }

  else
  {
    v8 = v10[95];
    v7 = v10[94];
    v5 = v10[93];
    v9 = v10[91];
    v6 = v10[68];
    v4 = v10[67];

    v2 = GetBloodPressureIntentHandler.handle(intent:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[93];
  v8 = v0[91];
  v10 = v0[85];
  v9 = v0[83];
  v11 = v0[82];
  v7 = v0[70];
  v0[35] = v0;
  v12 = v0[59];

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v7, v8);

  (*(v9 + 8))(v10, v11);

  v1 = *(v0[35] + 8);

  return v1(v12);
}

{
  v56 = v0;
  v33 = v0[106];
  v28 = v0[97];
  v29 = v0[96];
  v25 = v0[95];
  v27 = v0[93];
  v1 = v0[73];
  v30 = v0[72];
  v32 = v0[71];
  v26 = v0[70];
  v24 = v0[69];
  v0[35] = v0;

  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);

  MEMORY[0x277D82BD8](v29);

  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v27);

  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v2 = v33;
  v0[60] = v33;
  v31 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v30 + 16))(v1, v31, v32);
  swift_endAccess();
  v3 = v33;
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = implicit closure #1 in GetBloodPressureIntentHandler.handle(intent:);
  *(v34 + 24) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v41 + 24) = v34;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = implicit closure #2 in GetBloodPressureIntentHandler.handle(intent:);
  *(v35 + 24) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v44 + 24) = v35;
  v45 = swift_allocObject();
  *(v45 + 16) = 64;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v37 + 24) = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v38 + 24) = v37;
  v47 = swift_allocObject();
  *(v47 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v47 + 24) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v48 = v4;

  *v48 = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[1] = v39;

  v48[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[3] = v40;

  v48[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[5] = v41;

  v48[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[7] = v42;

  v48[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[9] = v43;

  v48[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v48[11] = v44;

  v48[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[13] = v45;

  v48[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[15] = v46;

  v48[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[17] = v47;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v49, v50))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(1, v19, v19);
    v22 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v51 = buf;
    v52 = v21;
    v53 = v22;
    serialize(_:at:)(2, &v51);
    serialize(_:at:)(3, &v51);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v42;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v43;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v55 = v44;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v46;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    _os_log_impl(&dword_269912000, v49, v50, "Failed with Error: %s:%ld %@", buf, 0x20u);
    destroyStorage<A>(_:count:)(v21, 1, v19);
    destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v23[106];
  v12 = v23[93];
  v14 = v23[91];
  v16 = v23[85];
  v17 = v23[82];
  v8 = v23[73];
  v9 = v23[71];
  v13 = v23[70];
  v11 = v23[95];
  v15 = v23[83];
  v7 = v23[72];
  MEMORY[0x277D82BD8](v49);
  (*(v7 + 8))(v8, v9);
  v18 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v13, v14);

  (*(v15 + 8))(v16, v17);

  v5 = *(v23[35] + 8);

  return v5(v18);
}

uint64_t GetBloodPressureIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 280) = *v1;
  *(v3 + 856) = a1;

  return MEMORY[0x2822009F8](GetBloodPressureIntentHandler.handle(intent:), 0);
}

uint64_t $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v45 = a1;
  v40 = 0;
  v63 = 0;
  v62 = 0;
  v35 = 0;
  v36 = type metadata accessor for OSSignpostError();
  v37 = *(v36 - 8);
  v38 = v37;
  MEMORY[0x28223BE20](0, v36);
  v39 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for OSSignpostID();
  v42 = *(v41 - 8);
  v43 = v42;
  MEMORY[0x28223BE20](v40, v41);
  v51 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v51;
  v46 = type metadata accessor for OSSignposter();
  v47 = *(v46 - 8);
  v49 = v47;
  v48 = v47;
  v4 = MEMORY[0x28223BE20](v45, v55);
  v50 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v6;
  v62 = v7;
  (*(v49 + 16))(v50, v6 + OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter, v4);
  v53 = OSSignposter.logHandle.getter();
  v52 = v53;
  OSSignpostIntervalState.signpostID.getter();
  v54 = static os_signpost_type_t.end.getter();

  v56 = v55;
  if (OS_os_log.signpostsEnabled.getter())
  {
    closure #1 in _globalStringTablePointerOfStaticString(_:)("GBPIHandle", &v61);
    v34 = v61;

    checkForErrorAndConsumeState(state:)();
    if ((*(v38 + 88))(v39, v36) == *MEMORY[0x277D85B00])
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("[Error] Interval already ended", 0x1EuLL, 1);
      v14 = 0;
      v13 = 2375;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v8 = v35;
    (*(v38 + 8))(v39, v36);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v21 = 0;
    v27 = _allocateUninitializedArray<A>(_:)();
    v18 = v27;
    v9 = v52;
    v23 = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = v23;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = createStorage<A>(capacity:type:)(v21, v20, v20);
    v22 = v24;
    v25 = createStorage<A>(capacity:type:)(v21, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v60 = v23;
    v59 = v24;
    v58 = v25;
    v26 = 0;
    v28 = &v60;
    serialize(_:at:)(0, &v60);
    serialize(_:at:)(v26, v28);
    v57 = v27;
    v29 = &v15;
    MEMORY[0x28223BE20](&v15, v10);
    v30 = &v15 - 6;
    *(&v15 - 4) = v11;
    *(&v15 - 3) = &v59;
    v13 = &v58;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v32 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v19, 2u, v52, v54, v44, v34, "");
      v17 = 0;
    }

    v16 = 0;
    destroyStorage<A>(_:count:)(v22, 0, v20);
    destroyStorage<A>(_:count:)(v25, v16, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v19, MEMORY[0x277D84B78]);

    v33 = v17;
  }

  else
  {
    v33 = v35;
  }

  (*(v43 + 8))(v44, v41, v33);

  return (*(v48 + 8))(v50, v46);
}

void closure #1 in GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v161 = a8;
  v160 = a7;
  v159 = a6;
  v158 = a5;
  v157 = a4;
  v156 = a3;
  v169 = a2;
  v163 = a1;
  v162 = a10;
  v130 = a10;
  v167 = a9;
  v131 = a9;
  v145 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v182 = 0;
  v181 = 0;
  v132 = 0;
  v133 = type metadata accessor for OSSignposter();
  v134 = *(v133 - 8);
  v135 = v134;
  v136 = *(v134 + 64);
  MEMORY[0x28223BE20](0, v133);
  v138 = (v136 + 15) & 0xFFFFFFFFFFFFFFF0;
  v137 = &v56 - v138;
  MEMORY[0x28223BE20](v10, &v56 - v138);
  v139 = &v56 - v138;
  v140 = type metadata accessor for OSSignpostID();
  v141 = *(v140 - 8);
  v142 = v141;
  v143 = *(v141 + 64);
  MEMORY[0x28223BE20](v140 - 8, v140);
  v144 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR);
  v147 = *(v146 - 8);
  v148 = v147;
  v149 = *(v147 + 64);
  v150 = (v149 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v145, v146);
  v151 = &v56 - v150;
  v152 = type metadata accessor for Date();
  v153 = *(v152 - 8);
  v154 = v153;
  MEMORY[0x28223BE20](v152 - 8, v152);
  v155 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  MEMORY[0x28223BE20](v163, v169);
  v166 = (v164 + 15) & 0xFFFFFFFFFFFFFFF0;
  v165 = &v56 - v166;
  MEMORY[0x28223BE20](v13, v14);
  v168 = &v56 - v166;
  v193 = v15;
  v192 = v16;
  v191 = v17;
  v190 = v18;
  v189 = v19;
  v188 = v20;
  v187 = v21;
  v186 = v22 + 16;
  v185 = v167;
  v184 = v23;
  v170 = objc_opt_self();
  v171 = [v169 startDate];
  if (v171)
  {
    v129 = v171;
    v128 = v171;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v154 + 32))(v168, v155, v152);
    (*(v154 + 56))(v168, 0, 1, v152);
  }

  else
  {
    (*(v154 + 56))(v168, 1, 1, v152);
  }

  v126 = *(v154 + 48);
  v127 = (v154 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v126(v168, 1, v152) == 1)
  {
    v125 = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v154 + 8))(v168, v152);
    v125 = isa;
  }

  v122 = v125;
  v123 = [v169 endDate];
  if (v123)
  {
    v121 = v123;
    v120 = v123;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v154 + 32))(v165, v155, v152);
    (*(v154 + 56))(v165, 0, 1, v152);
  }

  else
  {
    (*(v154 + 56))(v165, 1, 1, v152);
  }

  if (v126(v165, 1, v152) == 1)
  {
    v119 = 0;
  }

  else
  {
    v118 = Date._bridgeToObjectiveC()().super.isa;
    (*(v154 + 8))(v165, v152);
    v119 = v118;
  }

  v100 = v119;
  v110 = 0;
  type metadata accessor for HKQueryOptions(0);
  v99 = _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v109 = [v170 predicateForSamplesWithStartDate:v122 endDate:v100 options:v183];
  v101 = v109;

  v182 = v109;
  type metadata accessor for HKCorrelationQuery();
  v24 = v156;
  v25 = v109;
  (*(v148 + 16))(v151, v163, v146);
  v26 = v157;
  (*(v142 + 16))(v144, v158, v140);

  v27 = v160;

  v28 = v131;
  v29 = v130;
  v102 = (*(v148 + 80) + 16) & ~*(v148 + 80);
  v103 = (v102 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v103 + *(v142 + 80) + 8) & ~*(v142 + 80);
  v112 = (v104 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
  v111 = swift_allocObject();
  (*(v148 + 32))(v111 + v102, v151, v146);
  v30 = v104;
  v31 = v142;
  v32 = v144;
  v33 = v140;
  v34 = v111;
  *(v111 + v103) = v157;
  (*(v31 + 32))(v34 + v30, v32, v33);
  v35 = v105;
  v36 = v160;
  v37 = v106;
  v38 = v161;
  v39 = v107;
  v40 = v131;
  v41 = v108;
  v42 = v130;
  v43 = v109;
  v44 = v110;
  v45 = v111;
  v46 = v156;
  *(v111 + v112) = v159;
  *(v45 + v35) = v36;
  *(v45 + v37) = v38;
  *(v45 + v39) = v40;
  *(v45 + v41) = v42;
  v113 = HKCorrelationQuery.__allocating_init(type:predicate:samplePredicates:completion:)(v46, v43, v44, partial apply for closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:), v45);
  v181 = v113;
  v114 = *(v135 + 16);
  v115 = (v135 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v114(v139, &v157[OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter], v133);
  v116 = OSSignposter.logHandle.getter();
  v117 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v47 = v132;
    closure #1 in _globalStringTablePointerOfStaticString(_:)("Query initialized", v176);
    v82 = v176[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v86 = 0;
    v92 = _allocateUninitializedArray<A>(_:)();
    v83 = v92;
    v48 = v116;
    v88 = static UnsafeMutablePointer.allocate(capacity:)();
    v84 = v88;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v89 = createStorage<A>(capacity:type:)(v86, v85, v85);
    v87 = v89;
    v90 = createStorage<A>(capacity:type:)(v86, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v175 = v88;
    v174 = v89;
    v173 = v90;
    v91 = 0;
    v93 = &v175;
    serialize(_:at:)(0, &v175);
    serialize(_:at:)(v91, v93);
    v172 = v92;
    v94 = &v56;
    MEMORY[0x28223BE20](&v56, v49);
    v95 = &v56 - 6;
    *(&v56 - 4) = v50;
    *(&v56 - 3) = &v174;
    *(&v56 - 2) = &v173;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v97 = v47;
    if (v47)
    {
      __break(1u);
    }

    else
    {
      closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v84, 2u, v116, v117, v158, v82, "");
      v81 = 0;
    }

    v80 = 0;
    destroyStorage<A>(_:count:)(v87, 0, v85);
    destroyStorage<A>(_:count:)(v90, v80, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v84, MEMORY[0x277D84B78]);

    v98 = v81;
  }

  else
  {
    v98 = v132;
  }

  v51 = v137;
  v75 = v98;

  v76 = *(v135 + 8);
  v77 = (v135 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v76(v139, v133);
  [v130 executeQuery_];
  v114(v51, &v157[OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter], v133);
  v78 = OSSignposter.logHandle.getter();
  v79 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v52 = v75;
    closure #1 in _globalStringTablePointerOfStaticString(_:)("Query execution complete", &v180);
    v58 = v180;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v62 = 0;
    v68 = _allocateUninitializedArray<A>(_:)();
    v59 = v68;
    v53 = v78;
    v64 = static UnsafeMutablePointer.allocate(capacity:)();
    v60 = v64;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v65 = createStorage<A>(capacity:type:)(v62, v61, v61);
    v63 = v65;
    v66 = createStorage<A>(capacity:type:)(v62, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v179 = v64;
    v178 = v65;
    v177 = v66;
    v67 = 0;
    v69 = &v179;
    serialize(_:at:)(0, &v179);
    serialize(_:at:)(v67, v69);
    v176[2] = v68;
    v70 = &v56;
    MEMORY[0x28223BE20](&v56, v54);
    v71 = &v56 - 6;
    *(&v56 - 4) = v55;
    *(&v56 - 3) = &v178;
    *(&v56 - 2) = &v177;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v73 = v52;
    if (v52)
    {
      __break(1u);
    }

    else
    {
      closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v60, 2u, v78, v79, v158, v58, "");
      v57 = 0;
    }

    v56 = 0;
    destroyStorage<A>(_:count:)(v63, 0, v61);
    destroyStorage<A>(_:count:)(v66, v56, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v60, MEMORY[0x277D84B78]);

    v74 = v57;
  }

  else
  {
    v74 = v75;
  }

  v76(v137, v133);
}

void closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11)
{
  v212 = a8;
  v211 = a7;
  v210 = a6;
  v209 = a5;
  v208 = a4;
  v225 = a3;
  v214 = a2;
  v220 = a1;
  v213 = a11;
  v192 = a11;
  v222 = a10;
  v193 = a10;
  v221 = a9;
  v203 = 0;
  v264 = 0;
  v263 = 0;
  v262 = 0;
  v261 = 0;
  v260 = 0;
  v259 = 0;
  v258 = 0;
  v257 = 0;
  v256 = 0;
  v255 = 0;
  v254 = 0;
  v194 = 0;
  v248 = 0;
  v232 = 0;
  v195 = type metadata accessor for Date();
  v196 = *(v195 - 8);
  v197 = v196;
  MEMORY[0x28223BE20](v195 - 8, v195);
  v198 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  MEMORY[0x28223BE20](v203, v12);
  v201 = (v199 + 15) & 0xFFFFFFFFFFFFFFF0;
  v200 = &v65 - v201;
  MEMORY[0x28223BE20](v13, &v65 - v201);
  v202 = &v65 - v201;
  v204 = type metadata accessor for OSSignposter();
  v205 = *(v204 - 8);
  v206 = v205;
  MEMORY[0x28223BE20](v203, v204);
  v207 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for Logger();
  v216 = *(v215 - 8);
  v217 = v216;
  v218 = *(v216 + 64);
  MEMORY[0x28223BE20](v225, v214);
  v219 = &v65 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v223 = &v65 - v17;
  v264 = v220;
  v263 = v18;
  v262 = v19;
  v261 = v20;
  v260 = v21;
  v259 = v22;
  v258 = v23;
  v257 = v24;
  v224 = (v221 + 16);
  v256 = v221 + 16;
  v255 = v222;
  v254 = v25;
  v26 = v19;
  if (v225)
  {
    v191 = v225;
    v27 = v223;
    v170 = v225;
    v232 = v225;
    v168 = Logger.wellness.unsafeMutableAddressor();
    v173 = 32;
    v177 = 32;
    v169 = &v231;
    swift_beginAccess();
    (*(v217 + 16))(v27, v168, v215);
    swift_endAccess();
    v28 = v170;
    v178 = 7;
    v179 = swift_allocObject();
    *(v179 + 16) = v170;
    v189 = Logger.logObject.getter();
    v171 = v189;
    v188 = static os_log_type_t.error.getter();
    v172 = v188;
    v174 = 17;
    v182 = swift_allocObject();
    v175 = v182;
    *(v182 + 16) = v173;
    v183 = swift_allocObject();
    v176 = v183;
    *(v183 + 16) = 8;
    v29 = swift_allocObject();
    v30 = v179;
    v180 = v29;
    *(v29 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:);
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v180;
    v186 = v31;
    v181 = v31;
    *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v31 + 24) = v32;
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v184 = _allocateUninitializedArray<A>(_:)();
    v185 = v33;

    v34 = v182;
    v35 = v185;
    *v185 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[1] = v34;

    v36 = v183;
    v37 = v185;
    v185[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[3] = v36;

    v38 = v185;
    v39 = v186;
    v185[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[5] = v39;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v189, v188))
    {
      v41 = v194;
      v161 = static UnsafeMutablePointer.allocate(capacity:)();
      v158 = v161;
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v162 = createStorage<A>(capacity:type:)(0, v159, v159);
      v160 = v162;
      v164 = 1;
      v163 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v230[0] = v161;
      v229 = v162;
      v228 = v163;
      v165 = v230;
      serialize(_:at:)(2, v230);
      serialize(_:at:)(v164, v165);
      v226 = partial apply for closure #1 in OSLogArguments.append(_:);
      v227 = v175;
      closure #1 in osLogInternal(_:log:type:)(&v226, v165, &v229, &v228);
      v166 = v41;
      v167 = v41;
      if (v41)
      {
        v156 = 0;

        __break(1u);
      }

      else
      {
        v226 = partial apply for closure #1 in OSLogArguments.append(_:);
        v227 = v176;
        closure #1 in osLogInternal(_:log:type:)(&v226, v230, &v229, &v228);
        v154 = 0;
        v155 = 0;
        v226 = partial apply for closure #1 in OSLogArguments.append(_:);
        v227 = v181;
        closure #1 in osLogInternal(_:log:type:)(&v226, v230, &v229, &v228);
        v152 = 0;
        v153 = 0;
        _os_log_impl(&dword_269912000, v171, v172, "Query Errored out: %s", v158, 0xCu);
        destroyStorage<A>(_:count:)(v160, 0, v159);
        destroyStorage<A>(_:count:)(v163, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v158, MEMORY[0x277D84B78]);

        v157 = v152;
      }
    }

    else
    {
      v42 = v194;

      v157 = v42;
    }

    v151 = v157;

    (*(v217 + 8))(v223, v215);
    v150 = 0;
    type metadata accessor for GetBloodPressureIntentResponse();
    v230[1] = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR);
    CheckedContinuation.resume(returning:)();

    v190 = v151;
  }

  else
  {
    v190 = v194;
  }

  v149 = v190;

  if (!v214)
  {
LABEL_35:
    v61 = v219;
    v82 = Logger.wellness.unsafeMutableAddressor();
    v83 = &v253;
    v86 = 0;
    swift_beginAccess();
    (*(v217 + 16))(v61, v82, v215);
    swift_endAccess();
    v88 = Logger.logObject.getter();
    v84 = v88;
    v87 = static os_log_type_t.debug.getter();
    v85 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v89 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v88, v87))
    {
      v62 = v149;
      v73 = static UnsafeMutablePointer.allocate(capacity:)();
      v69 = v73;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v71 = 0;
      v74 = createStorage<A>(capacity:type:)(0, v70, v70);
      v72 = v74;
      v75 = createStorage<A>(capacity:type:)(v71, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v252[0] = v73;
      v251 = v74;
      v250 = v75;
      v76 = 0;
      v77 = v252;
      serialize(_:at:)(0, v252);
      serialize(_:at:)(v76, v77);
      v249 = v89;
      v78 = &v65;
      MEMORY[0x28223BE20](&v65, v63);
      v79 = &v65 - 6;
      *(&v65 - 4) = v64;
      *(&v65 - 3) = &v251;
      *(&v65 - 2) = &v250;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v81 = v62;
      if (v62)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v84, v85, "No data returned", v69, 2u);
        v67 = 0;
        destroyStorage<A>(_:count:)(v72, 0, v70);
        destroyStorage<A>(_:count:)(v75, v67, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v69, MEMORY[0x277D84B78]);

        v68 = v81;
      }
    }

    else
    {

      v68 = v149;
    }

    v66 = v68;

    (*(v217 + 8))(v219, v215);
    v65 = 0;
    type metadata accessor for GetBloodPressureIntentResponse();
    v252[1] = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    v100 = v66;
    return;
  }

  v148 = v214;
  v145 = v214;
  v248 = v214;
  v247 = v214;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13HKCorrelationCGMd, &_sSaySo13HKCorrelationCGMR);
  v146 = v147;
  lazy protocol witness table accessor for type [HKCorrelation] and conformance [A]();
  v43 = Collection.isEmpty.getter();
  if (v43)
  {

    goto LABEL_35;
  }

  (*(v206 + 16))(v207, v209 + OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter, v204);
  v143 = OSSignposter.logHandle.getter();
  v144 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v44 = v149;
    closure #1 in _globalStringTablePointerOfStaticString(_:)("correlation operations begin", v237);
    v126 = v237[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v130 = 0;
    v136 = _allocateUninitializedArray<A>(_:)();
    v127 = v136;
    v45 = v143;
    v132 = static UnsafeMutablePointer.allocate(capacity:)();
    v128 = v132;
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v133 = createStorage<A>(capacity:type:)(v130, v129, v129);
    v131 = v133;
    v134 = createStorage<A>(capacity:type:)(v130, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v236 = v132;
    v235 = v133;
    v234 = v134;
    v135 = 0;
    v137 = &v236;
    serialize(_:at:)(0, &v236);
    serialize(_:at:)(v135, v137);
    v233 = v136;
    v138 = &v65;
    MEMORY[0x28223BE20](&v65, v46);
    v139 = &v65 - 6;
    *(&v65 - 4) = v47;
    *(&v65 - 3) = &v235;
    *(&v65 - 2) = &v234;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v141 = v44;
    if (v44)
    {
      __break(1u);
    }

    else
    {
      closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v128, 2u, v143, v144, v210, v126, "");
      v125 = 0;
    }

    v124 = 0;
    destroyStorage<A>(_:count:)(v131, 0, v129);
    destroyStorage<A>(_:count:)(v134, v124, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v128, MEMORY[0x277D84B78]);

    v142 = v125;
  }

  else
  {
    v142 = v149;
  }

  v48 = v142;

  (*(v206 + 8))(v207, v204);
  v246 = v145;

  v49 = v212;
  v50 = v193;
  v121 = &v65;
  MEMORY[0x28223BE20](&v65, v51);
  v52 = v212;
  v53 = v224;
  v122 = &v65 - 6;
  *(&v65 - 4) = v54;
  *(&v65 - 3) = v52;
  *(&v65 - 2) = v53;
  *(&v65 - 1) = v55;
  lazy protocol witness table accessor for type [HKCorrelation] and conformance [A]();
  Sequence.forEach(_:)();
  v123 = v48;
  if (v48)
  {

    __break(1u);
  }

  else
  {

    v118 = &v245;
    swift_beginAccess();
    v117 = *v224;
    v56 = v117;
    swift_endAccess();
    v244 = v145;
    v119 = lazy protocol witness table accessor for type [HKCorrelation] and conformance [A]();
    BidirectionalCollection.last.getter();
    v120 = v243;
    if (v243)
    {
      v116 = v120;
      v114 = v120;
      v115 = [v120 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v197 + 32))(v202, v198, v195);

      (*(v197 + 56))(v202, 0, 1, v195);
    }

    else
    {
      (*(v197 + 56))(v202, 1, 1, v195);
    }

    v112 = *(v197 + 48);
    v113 = (v197 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v112(v202, 1, v195) == 1)
    {
      v111 = 0;
    }

    else
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v197 + 8))(v202, v195);
      v111 = isa;
    }

    v106 = v111;
    [v117 setSampleStartDate_];

    v108 = &v242;
    swift_beginAccess();
    v107 = *v224;
    v57 = v107;
    swift_endAccess();
    v241 = v145;
    BidirectionalCollection.last.getter();
    v109 = v240;
    if (v240)
    {
      v105 = v109;
      v103 = v109;
      v104 = [v109 endDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v197 + 32))(v200, v198, v195);

      (*(v197 + 56))(v200, 0, 1, v195);
    }

    else
    {
      (*(v197 + 56))(v200, 1, 1, v195);
    }

    if (v112(v200, 1, v195) == 1)
    {
      v102 = 0;
    }

    else
    {
      v101 = Date._bridgeToObjectiveC()().super.isa;
      (*(v197 + 8))(v200, v195);
      v102 = v101;
    }

    v90 = v102;
    [v107 setSampleEndDate_];

    v96 = 32;
    v91 = &v239;
    v97 = 0;
    swift_beginAccess();
    v95 = *v224;
    v58 = v95;
    swift_endAccess();
    v92.super.isa = [objc_opt_self() millimeterOfMercuryUnit];
    v59 = v192;
    v265.is_nil = v192;
    v266.is_nil = 0;
    v265.value.super.isa = 0;
    v93 = localizedUnitName(for:value:store:)(v92, v266, v265);

    v94 = MEMORY[0x26D6492A0](v93._countAndFlagsBits, v93._object);

    [v95 setUnit_];

    v98 = &v238;
    swift_beginAccess();
    v99 = *v224;
    v60 = v99;
    swift_endAccess();
    v237[1] = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR);
    CheckedContinuation.resume(returning:)();

    v100 = v123;
  }
}

uint64_t closure #1 in closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;

  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  swift_beginAccess();
  conjugate<A>(for:units:target:minKey:maxKey:valueKey:accumulator:)(v10, a2, a3, KeyPath, v8, v7, a4);
  swift_endAccess();

  v15 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  swift_beginAccess();
  conjugate<A>(for:units:target:minKey:maxKey:valueKey:accumulator:)(v10, a2, a5, v15, v14, v13, a4);
  swift_endAccess();
}

uint64_t key path getter for GetBloodPressureIntentResponse.systolicMinimum : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 systolicMinimum];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.systolicMinimum : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setSystolicMinimum_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path getter for GetBloodPressureIntentResponse.systolicMaximum : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 systolicMaximum];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.systolicMaximum : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setSystolicMaximum_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path getter for GetBloodPressureIntentResponse.systolic : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 systolic];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.systolic : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setSystolic_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path getter for GetBloodPressureIntentResponse.diastolicMinimum : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 diastolicMinimum];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.diastolicMinimum : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setDiastolicMinimum_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path getter for GetBloodPressureIntentResponse.diastolicMaximum : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 diastolicMaximum];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.diastolicMaximum : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setDiastolicMaximum_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path getter for GetBloodPressureIntentResponse.diastolic : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 diastolic];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.diastolic : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setDiastolic_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t @objc closure #1 in GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return GetBloodPressureIntentHandler.handle(intent:)(a1);
}

id GetBloodPressureIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id @nonobjc HKCorrelationQuery.init(type:predicate:samplePredicates:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    type metadata accessor for HKSampleType();
    type metadata accessor for NSPredicate();
    lazy protocol witness table accessor for type HKSampleType and conformance NSObject();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = isa;
  }

  else
  {
    v9 = 0;
  }

  v20 = a4;
  v21 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = 0;
  v18 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKCorrelationQuery, @guaranteed [HKCorrelation]?, @guaranteed Error?) -> ();
  v19 = &block_descriptor_68;
  v6 = _Block_copy(&aBlock);
  v7 = [v14 initWithType:a1 predicate:a2 samplePredicates:v9 completion:?];
  _Block_release(v6);

  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v7;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKCorrelationQuery, @guaranteed [HKCorrelation]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKCorrelation();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a3);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v9(a2, v7);

  MEMORY[0x277D82BD8](a2);
}

uint64_t closure #1 in _globalStringTablePointerOfStaticString(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  *a2 = v2;
  return result;
}

unint64_t type metadata accessor for HKCorrelationType()
{
  v2 = lazy cache variable for type metadata for HKCorrelationType;
  if (!lazy cache variable for type metadata for HKCorrelationType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCorrelationType);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269A1C43C()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetBloodPressureIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in GetBloodPressureIntentHandler.handle(intent:)(v7, v5, v6);
}

uint64_t type metadata accessor for GetBloodPressureIntentHandler(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for GetBloodPressureIntentHandler;
  if (!type metadata singleton initialization cache for GetBloodPressureIntentHandler)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for GetBloodPressureIntentHandler(uint64_t a1)
{
  updated = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t type metadata accessor for HKCorrelationQuery()
{
  v2 = lazy cache variable for type metadata for HKCorrelationQuery;
  if (!lazy cache variable for type metadata for HKCorrelationQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCorrelationQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269A1C75C()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR);
  v4 = *(v3 - 8);
  v2 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v5 = (v2 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for OSSignpostID();
  v6 = *(v8 - 8);
  v7 = (v5 + 8 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = (((v7 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v2, v3);
  MEMORY[0x277D82BD8](*(v0 + v5));
  (*(v6 + 8))(v0 + v7, v8);

  MEMORY[0x277D82BD8](*(v0 + v9));

  MEMORY[0x277D82BD8](*(v0 + v10));
  MEMORY[0x277D82BD8](*(v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)));
  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR) - 8);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v9 = (v11 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for OSSignpostID();
  v5 = (v9 + 8 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = (v5 + *(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:)(a1, a2, a3, v3 + v11, *(v3 + v9), v3 + v5, *(v3 + v6), *(v3 + v7), *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for HKSampleType()
{
  v2 = lazy cache variable for type metadata for HKSampleType;
  if (!lazy cache variable for type metadata for HKSampleType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSampleType);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSPredicate()
{
  v2 = lazy cache variable for type metadata for NSPredicate;
  if (!lazy cache variable for type metadata for NSPredicate)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSPredicate);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKSampleType and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKSampleType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKSampleType and conformance NSObject)
  {
    type metadata accessor for HKSampleType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSampleType and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t HealthKitCategoryProvider.init(store:identifier:categoryEnum:failure:mapIntent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  memset(__b, 0, 0x30uLL);
  __b[7] = a7;
  __b[6] = a9;
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  __b[1] = a1;
  type metadata accessor for HKCategoryType();
  MEMORY[0x277D82BE0](a2);
  v12 = MEMORY[0x26D649700](a2);
  MEMORY[0x277D82BE0](v12);
  __b[0] = v12;

  __b[2] = a3;
  __b[3] = a4;

  __b[4] = a5;
  __b[5] = a6;

  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  outlined destroy of HealthKitCategoryProvider<A, B>(__b);
  result = a1;
  *a8 = v12;
  a8[1] = a1;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  return result;
}

unint64_t type metadata accessor for HKCategoryType()
{
  v2 = lazy cache variable for type metadata for HKCategoryType;
  if (!lazy cache variable for type metadata for HKCategoryType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCategoryType);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined destroy of HealthKitCategoryProvider<A, B>(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);

  return a1;
}

uint64_t HealthKitCategoryProvider.isQueryAuthorized()()
{
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v5 = *(v0 + 8);
  v1[4] = v5;
  MEMORY[0x277D82BE0](v5);
  v2 = swift_task_alloc();
  *(v4 + 40) = v2;
  *v2 = *(v4 + 16);
  v2[1] = CycleTrackingFetcher.isReadingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(v5);
}

uint64_t HealthKitCategoryProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[8] = v4;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v18 = a4[3];
  v5[9] = v18;
  v5[10] = type metadata accessor for Date();
  v5[11] = swift_getTupleTypeMetadata2();
  v5[12] = type metadata accessor for Optional();
  v5[13] = swift_task_alloc();
  v6 = a4[2];
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_getTupleTypeMetadata2();
  v5[18] = type metadata accessor for Optional();
  v5[19] = swift_task_alloc();
  v19 = swift_task_alloc();
  v5[20] = v19;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = v4;
  v7 = *(v4 + 8);
  v5[21] = v7;
  MEMORY[0x277D82BE0](v7);
  v8 = *v12;
  v15 = *v12;
  v5[22] = *v12;
  MEMORY[0x277D82BE0](v8);
  v9 = swift_task_alloc();
  *(v14 + 184) = v9;
  v10 = a4[4];
  *v9 = *(v14 + 16);
  v9[1] = HealthKitCategoryProvider.query(start:end:);

  return HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(v19, v15, a2, a3, v18, v18, v10);
}

uint64_t HealthKitCategoryProvider.query(start:end:)()
{
  v5 = *v1;
  *(v5 + 16) = *v1;
  *(v5 + 192) = v0;

  if (v0)
  {
    v2 = HealthKitCategoryProvider.query(start:end:);
  }

  else
  {
    v4 = *(v5 + 168);

    v2 = HealthKitCategoryProvider.query(start:end:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v22 = v0[20];
  v26 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v23 = v0[9];
  v1 = v0[8];
  v0[2] = v0;
  v21 = *(v1 + 32);

  outlined init with copy of (value: B, startDate: Date)?(v22, v26, v23, v25, v24);
  if ((*(*(v25 - 8) + 48))(v26, 1) == 1)
  {
    v5 = v20[13];
    v4 = v20[11];
    outlined destroy of (value: B, startDate: Date)?(v20[19], v20[9], v20[17]);
    (*(*(v4 - 8) + 56))(v5, 1);
  }

  else
  {
    v19 = v20[13];
    v18 = v20[11];
    v16 = v20[10];
    v15 = v20[19] + *(v20[17] + 48);
    v17 = v19 + *(v18 + 48);
    (*(*(v20[9] - 8) + 32))();
    (*(*(v16 - 8) + 32))(v17, v15);
    (*(*(v18 - 8) + 56))(v19, 0, 1);
  }

  v12 = v20[20];
  v14 = v20[17];
  v11 = v20[16];
  v10 = v20[14];
  v6 = v20[13];
  v7 = v20[11];
  v13 = v20[9];
  v9 = v20[7];
  v8 = v20[15];
  v21();
  outlined destroy of (value: B, startDate: Date)?(v6, v13, v7);

  (*(v8 + 16))(v9, v11, v10);
  (*(v8 + 8))(v11, v10);
  outlined destroy of (value: B, startDate: Date)?(v12, v13, v14);

  v2 = *(v20[2] + 8);

  return v2();
}

{
  v9 = v0[24];
  v1 = v0[22];
  v6 = v0[21];
  v7 = v0[8];
  v0[2] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v6);
  v2 = v9;
  v0[6] = v9;
  v8 = *(v7 + 16);

  v8(v3);

  v4 = *(v0[2] + 8);

  return v4();
}

char *outlined init with copy of (value: B, startDate: Date)?(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *(a4 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a5 - 8) + 64));
  }

  else
  {
    (*(*(a3 - 8) + 16))(a2, a1);
    v8 = &a2[*(a4 + 48)];
    v7 = &a1[*(a4 + 48)];
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 16))(v8, v7);
    (*(v14 + 56))(a2, 0, 1, a4);
  }

  return a2;
}

uint64_t outlined destroy of (value: B, startDate: Date)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*(a3 - 8) + 48))(a1, 1))
  {
    (*(*(a2 - 8) + 8))(a1);
    v5 = a1 + *(a3 + 48);
    v3 = type metadata accessor for Date();
    (*(*(v3 - 8) + 8))(v5);
  }

  return a1;
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitCategoryProvider<A, B>()
{
  *(v1 + 64) = v1;
  memcpy((v1 + 16), v0, 0x30uLL);
  v2 = swift_task_alloc();
  *(v4 + 72) = v2;
  *v2 = *(v4 + 64);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>;

  return HealthKitCategoryProvider.isQueryAuthorized()();
}

uint64_t protocol witness for DataProviding.isLoggingAuthorized() in conformance HealthKitCategoryProvider<A, B>()
{
  *(v1 + 64) = v1;
  memcpy((v1 + 16), v0, 0x30uLL);
  v2 = swift_task_alloc();
  *(v4 + 72) = v2;
  *v2 = *(v4 + 64);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>;

  return HealthKitCategoryProvider.isQueryAuthorized()();
}

uint64_t type metadata instantiation function for HealthKitCategoryProvider()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

SiriWellnessIntents::WellnessVerb_optional __swiftcall WellnessVerb.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "askQuestion";
  *(v1 + 8) = 11;
  *(v1 + 16) = 2;
  *(v1 + 24) = "delete";
  *(v1 + 32) = 6;
  *(v1 + 40) = 2;
  *(v1 + 48) = "save";
  *(v1 + 56) = 4;
  *(v1 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessVerb_askQuestion;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessVerb_delete;
      goto LABEL_8;
    case 2:
      v5.value = SiriWellnessIntents_WellnessVerb_save;
      goto LABEL_8;
  }

  return 3;
}

void static WellnessVerb.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
}

uint64_t WellnessVerb.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("askQuestion", 0xBuLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("delete", 6uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("save", 4uLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type WellnessVerb and conformance WellnessVerb()
{
  v2 = lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb;
  if (!lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb;
  if (!lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessVerb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessVerb@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessVerb_optional *a2@<X8>)
{
  result.value = WellnessVerb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessVerb@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessVerb.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [WellnessVerb] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [WellnessVerb] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WellnessVerb] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriWellnessIntents0B4VerbOGMd, &_sSay19SiriWellnessIntents0B4VerbOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [WellnessVerb] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *DeleteHealthSampleIntentHandler.init(storage:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2.store.super.isa = CycleTrackingFetcher.init()().store.super.isa;
    __dst[3] = &type metadata for HealthSampleDeleter;
    __dst[4] = &protocol witness table for HealthSampleDeleter;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents31DeleteHealthSampleIntentHandler_storage]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

uint64_t DeleteHealthSampleIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[18] = v1;
  v2[17] = a1;
  v2[10] = v2;
  v2[11] = 0;
  v2[12] = 0;
  v3 = type metadata accessor for Logger();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[22] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[11] = a1;
  v2[12] = v1;

  return MEMORY[0x2822009F8](DeleteHealthSampleIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 80) = *v1;
  *(v3 + 224) = a1;

  return MEMORY[0x2822009F8](DeleteHealthSampleIntentHandler.handle(intent:), 0);
}

uint64_t DeleteHealthSampleIntentHandler.handle(intent:)()
{
  v1 = *(v0 + 136);
  *(v0 + 80) = v0;
  v31 = [v1 sampleIdentifier];
  if (v31)
  {
    v27 = *(v30 + 200);
    v28 = *(v30 + 184);
    v29 = *(v30 + 176);
    v26 = *(v30 + 192);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v26 + 32))(v29, v27, v28);
    (*(v26 + 56))(v29, 0, 1, v28);
    MEMORY[0x277D82BD8](v31);
  }

  else
  {
    (*(*(v30 + 192) + 56))(*(v30 + 176), 1, 1, *(v30 + 184));
  }

  if ((*(*(v30 + 192) + 48))(*(v30 + 176), 1, *(v30 + 184)) == 1)
  {
    v5 = *(v30 + 168);
    v18 = *(v30 + 152);
    v16 = *(v30 + 160);
    outlined destroy of UUID?(*(v30 + 176));
    v17 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v16 + 16))(v5, v17, v18);
    swift_endAccess();
    v20 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v21 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v20, v19))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v13 = createStorage<A>(capacity:type:)(0, v11, v11);
      v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v30 + 104) = buf;
      *(v30 + 112) = v13;
      *(v30 + 120) = v14;
      serialize(_:at:)(0, (v30 + 104));
      serialize(_:at:)(0, (v30 + 104));
      *(v30 + 128) = v21;
      v15 = swift_task_alloc();
      v15[2] = v30 + 104;
      v15[3] = v30 + 112;
      v15[4] = v30 + 120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v20, v19, "Missing sampleIdentifier. Aborting delete.", buf, 2u);
      destroyStorage<A>(_:count:)(v13, 0, v11);
      destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v8 = *(v30 + 168);
    v9 = *(v30 + 152);
    v7 = *(v30 + 160);
    MEMORY[0x277D82BD8](v20);
    (*(v7 + 8))(v8, v9);
    type metadata accessor for DeleteHealthSampleIntentResponse();
    v10 = DeleteHealthSampleIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    v6 = *(*(v30 + 80) + 8);

    return v6(v10);
  }

  else
  {
    v22 = *(v30 + 144);
    (*(*(v30 + 192) + 32))(*(v30 + 208), *(v30 + 176), *(v30 + 184));
    outlined init with copy of QuantityPersisting(v22 + OBJC_IVAR____TtC19SiriWellnessIntents31DeleteHealthSampleIntentHandler_storage, v30 + 16);
    v23 = *(v30 + 40);
    v24 = *(v30 + 48);
    __swift_project_boxed_opaque_existential_1((v30 + 16), v23);
    v25 = (*(v24 + 8) + **(v24 + 8));
    v2 = swift_task_alloc();
    *(v30 + 216) = v2;
    *v2 = *(v30 + 80);
    v2[1] = DeleteHealthSampleIntentHandler.handle(intent:);
    v3 = *(v30 + 208);

    return v25(v3, v23, v24);
  }
}

{
  v4 = v0[26];
  v3 = v0[24];
  v5 = v0[23];
  v0[10] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  (*(v3 + 8))(v4, v5);
  v6 = v0[28];

  v1 = *(v0[10] + 8);

  return v1(v6);
}

uint64_t @objc closure #1 in DeleteHealthSampleIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return DeleteHealthSampleIntentHandler.handle(intent:)(a1);
}

id DeleteHealthSampleIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthSampleDeleter.delete(sampleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2[45] = a2;
  v2[44] = a1;
  v2[30] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[34] = 0;
  v2[35] = 0;
  v3 = type metadata accessor for UUID();
  v2[46] = v3;
  v6 = *(v3 - 8);
  v2[47] = v6;
  v2[48] = *(v6 + 64);
  v2[49] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[50] = v4;
  v2[51] = *(v4 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[31] = a1;
  v2[32] = a2;

  return MEMORY[0x2822009F8](HealthSampleDeleter.delete(sampleIdentifier:), 0);
}

uint64_t HealthSampleDeleter.delete(sampleIdentifier:)()
{
  v57 = v0;
  v1 = v0[55];
  v33 = v0[51];
  v35 = v0[50];
  v41 = v0[49];
  v39 = v0[47];
  v42 = v0[46];
  v37 = v0[44];
  v0[30] = v0;
  v34 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v36 = *(v33 + 16);
  v0[56] = v36;
  v0[57] = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v36(v1, v34, v35);
  swift_endAccess();
  v38 = *(v39 + 16);
  v38(v41, v37, v42);
  v40 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = swift_allocObject();
  (*(v39 + 32))(v43 + v40, v41, v42);

  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for implicit closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  *(v44 + 24) = v43;

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  v46 = swift_allocObject();
  *(v46 + 16) = 32;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v45 + 24) = v44;
  v48 = swift_allocObject();
  *(v48 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v48 + 24) = v45;
  v0[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v49 = v2;

  *v49 = partial apply for closure #1 in OSLogArguments.append(_:);
  v49[1] = v46;

  v49[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v49[3] = v47;

  v49[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v49[5] = v48;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v50, v51))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v30 = createStorage<A>(capacity:type:)(0, v28, v28);
    v31 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v52 = buf;
    v53 = v30;
    v54 = v31;
    serialize(_:at:)(2, &v52);
    serialize(_:at:)(1, &v52);
    v55 = partial apply for closure #1 in OSLogArguments.append(_:);
    v56 = v46;
    closure #1 in osLogInternal(_:log:type:)(&v55, &v52, &v53, &v54);
    v55 = partial apply for closure #1 in OSLogArguments.append(_:);
    v56 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v55, &v52, &v53, &v54);
    v55 = partial apply for closure #1 in OSLogArguments.append(_:);
    v56 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v55, &v52, &v53, &v54);
    _os_log_impl(&dword_269912000, v50, v51, "Starting to delete health sample with UUID: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v30, 0, v28);
    destroyStorage<A>(_:count:)(v31, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v20 = *(v32 + 440);
  v3 = *(v32 + 432);
  v23 = *(v32 + 400);
  v19 = *(v32 + 408);
  MEMORY[0x277D82BD8](v50);
  v21 = *(v19 + 8);
  *(v32 + 472) = v21;
  *(v32 + 480) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v20, v23);
  v22 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v36(v3, v22, v23);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v26 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v24))
  {
    v15 = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0, v14, v14);
    v17 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v32 + 320) = v15;
    *(v32 + 328) = v16;
    *(v32 + 336) = v17;
    serialize(_:at:)(0, (v32 + 320));
    serialize(_:at:)(0, (v32 + 320));
    *(v32 + 344) = v26;
    v18 = swift_task_alloc();
    v18[2] = v32 + 320;
    v18[3] = v32 + 328;
    v18[4] = v32 + 336;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v24, "Asking store to delete", v15, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v15, MEMORY[0x277D84B78]);
  }

  *(v32 + 488) = 0;
  v6 = *(v32 + 432);
  v7 = *(v32 + 400);
  v9 = *(v32 + 368);
  v13 = *(v32 + 360);
  v8 = *(v32 + 352);
  MEMORY[0x277D82BD8](oslog);
  v21(v6, v7);
  MEMORY[0x277D82BE0](v13);
  _allocateUninitializedArray<A>(_:)();
  v38(v4, v8, v9);
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v32 + 496) = isa;

  type metadata accessor for HKDeleteObjectOptions(0);
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v12 = *(v32 + 264);
  *(v32 + 16) = *(v32 + 240);
  *(v32 + 56) = v27;
  *(v32 + 24) = HealthSampleDeleter.delete(sampleIdentifier:);
  v10 = swift_continuation_init();
  *(v32 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v32 + 112) = v10;
  *(v32 + 80) = MEMORY[0x277D85DD0];
  *(v32 + 88) = 1107296256;
  *(v32 + 92) = 0;
  *(v32 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v32 + 104) = &block_descriptor_11;
  [v13 deleteObjectsWithUUIDs:isa options:v12 completion:?];

  return MEMORY[0x282200938](v32 + 16);
}

{
  v4 = *v0;
  v4[30] = *v0;
  v1 = v4[6];
  v4[63] = v1;
  if (v1)
  {
    v2 = HealthSampleDeleter.delete(sampleIdentifier:);
  }

  else
  {
    v2 = HealthSampleDeleter.delete(sampleIdentifier:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v16 = v0[62];
  v19 = v0[56];
  v1 = v0[53];
  v18 = v0[50];
  v2 = v0[45];
  v0[30] = v0;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v16);
  v17 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v19(v1, v17, v18);
  swift_endAccess();
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    v3 = *(v15 + 488);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 288) = buf;
    *(v15 + 296) = v12;
    *(v15 + 304) = v13;
    serialize(_:at:)(0, (v15 + 288));
    serialize(_:at:)(0, (v15 + 288));
    *(v15 + 312) = v22;
    v14 = swift_task_alloc();
    v14[2] = v15 + 288;
    v14[3] = v15 + 296;
    v14[4] = v15 + 304;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_269912000, v21, v20, "Successfully deleted sample. Returning success response.", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = *(v15 + 472);
  v6 = *(v15 + 424);
  v7 = *(v15 + 400);
  MEMORY[0x277D82BD8](v21);
  v8(v6, v7);
  type metadata accessor for DeleteHealthSampleIntentResponse();
  v9 = DeleteHealthSampleIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  *(v15 + 280) = v9;

  v5 = *(*(v15 + 240) + 8);

  return v5(v9);
}

uint64_t HealthSampleDeleter.delete(sampleIdentifier:)(uint64_t a1)
{
  v37 = v1;
  v23 = v1[63];
  v19 = v1[62];
  v22 = v1[56];
  v17 = v1[52];
  v21 = v1[50];
  v18 = v1[45];
  v1[30] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v2 = v23;
  v1[34] = v23;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v22(v17, v20, v21);
  swift_endAccess();
  v3 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v28 + 24) = v25;
  _allocateUninitializedArray<A>(_:)();
  v29 = v4;

  *v29 = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[1] = v26;

  v29[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[3] = v27;

  v29[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0, v12, v12);
    v15 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = buf;
    v33 = v14;
    v34 = v15;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_269912000, v30, v31, "Failed to delete sample. Error: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v16[63];
  v9 = v16[59];
  v7 = v16[52];
  v8 = v16[50];
  MEMORY[0x277D82BD8](v30);
  v9(v7, v8);
  type metadata accessor for DeleteHealthSampleIntentResponse();
  v11 = DeleteHealthSampleIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v5 = *(v16[30] + 8);

  return v5(v11);
}

uint64_t protocol witness for HealthSampleDeleting.delete(sampleIdentifier:) in conformance HealthSampleDeleter(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return HealthSampleDeleter.delete(sampleIdentifier:)(a1, v6);
}

uint64_t sub_269A212F8()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in DeleteHealthSampleIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in DeleteHealthSampleIntentHandler.handle(intent:)(v7, v5, v6);
}

uint64_t sub_269A21444()
{
  v2 = *(type metadata accessor for UUID() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

void *MedStorageHelper.init(storage:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v12 = v1;
  outlined init with copy of QuantityPersisting?(a1, v9);
  if (v10)
  {
    outlined init with take of QuantityPersisting(v9, __dst);
  }

  else
  {
    v2 = MedsUndoer.init()();
    __dst[3] = &type metadata for SpecificMedicationsPersistor;
    __dst[4] = &protocol witness table for SpecificMedicationsPersistor;
    __dst[0] = v2;
    __dst[1] = v3;
    if (v10)
    {
      outlined destroy of QuantityPersisting?(v9);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage]);
  v8.receiver = v12;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v5);
  v12 = v5;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v12);
  return v5;
}

uint64_t MedStorageHelper.sampleScheduleIDFor(dateInterval:)(uint64_t a1)
{
  v2[27] = v1;
  v2[26] = a1;
  v2[19] = v2;
  v2[20] = 0;
  v2[21] = 0;
  v3 = type metadata accessor for Logger();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[20] = a1;
  v2[21] = v1;

  return MEMORY[0x2822009F8](MedStorageHelper.sampleScheduleIDFor(dateInterval:), 0);
}

uint64_t MedStorageHelper.sampleScheduleIDFor(dateInterval:)()
{
  v1 = v0[27];
  v0[19] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, (v0 + 2));
  v7 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v6 = (*(v5 + 8) + **(v5 + 8));
  v2 = swift_task_alloc();
  *(v4 + 248) = v2;
  *v2 = *(v4 + 152);
  v2[1] = MedStorageHelper.sampleScheduleIDFor(dateInterval:);

  return v6(v7, v5);
}

{
  v25 = *(v0 + 280);
  *(v0 + 152) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v25)
  {
    outlined init with copy of QuantityPersisting(*(v24 + 216) + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, v24 + 56);
    v7 = *(v24 + 80);
    v8 = *(v24 + 88);
    __swift_project_boxed_opaque_existential_1((v24 + 56), v7);
    v9 = (*(v8 + 48) + **(v8 + 48));
    v5 = swift_task_alloc();
    *(v24 + 256) = v5;
    *v5 = *(v24 + 152);
    v5[1] = MedStorageHelper.sampleScheduleIDFor(dateInterval:);
    v6 = *(v24 + 208);

    return v9(v6, v7, v8);
  }

  else
  {
    v1 = *(v24 + 240);
    v20 = *(v24 + 224);
    v18 = *(v24 + 232);
    v19 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v18 + 16))(v1, v19, v20);
    swift_endAccess();
    v22 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v23 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v22, v21))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v15 = createStorage<A>(capacity:type:)(0, v13, v13);
      v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v24 + 176) = buf;
      *(v24 + 184) = v15;
      *(v24 + 192) = v16;
      serialize(_:at:)(0, (v24 + 176));
      serialize(_:at:)(0, (v24 + 176));
      *(v24 + 200) = v23;
      v17 = swift_task_alloc();
      v17[2] = v24 + 176;
      v17[3] = v24 + 184;
      v17[4] = v24 + 192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v22, v21, "MedStorageHelper is not authorized to read meds data, returning empty string", buf, 2u);
      destroyStorage<A>(_:count:)(v15, 0, v13);
      destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v11 = *(v24 + 240);
    v12 = *(v24 + 224);
    v10 = *(v24 + 232);
    MEMORY[0x277D82BD8](v22);
    (*(v10 + 8))(v11, v12);
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);

    v3 = *(*(v24 + 152) + 8);

    return v3(v2._countAndFlagsBits, v2._object);
  }
}

{
  v1 = v0[34];
  v2 = v0[33];
  v0[19] = v0;
  v0[17] = v2;
  v0[18] = v1;
  if (v0[18])
  {
    v3 = v8[18];
    v8[15] = v8[17];
    v8[16] = v3;
  }

  else
  {
    *(v8 + 15) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v8[18])
    {
      outlined destroy of String.UTF8View((v8 + 17));
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v8 + 7);
  v6 = v8[15];
  v7 = v8[16];

  v4 = *(v8[19] + 8);

  return v4(v6, v7);
}

uint64_t MedStorageHelper.sampleScheduleIDFor(dateInterval:)(char a1)
{
  v3 = *v1;
  *(v3 + 152) = *v1;
  *(v3 + 280) = a1;

  return MEMORY[0x2822009F8](MedStorageHelper.sampleScheduleIDFor(dateInterval:), 0);
}

uint64_t MedStorageHelper.sampleScheduleIDFor(dateInterval:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v4[19] = *v2;
  v4[33] = a1;
  v4[34] = a2;

  return MEMORY[0x2822009F8](MedStorageHelper.sampleScheduleIDFor(dateInterval:), 0);
}

uint64_t MedStorageHelper.displayNameFor(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[29] = v2;
  v3[28] = a2;
  v3[27] = a1;
  v3[21] = v3;
  v3[15] = 0;
  v3[16] = 0;
  v3[22] = 0;
  v4 = type metadata accessor for Logger();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v3[15] = a1;
  v3[16] = a2;
  v3[22] = v2;

  return MEMORY[0x2822009F8](MedStorageHelper.displayNameFor(identifier:), 0);
}

{
  v4 = *v2;
  v4[21] = *v2;
  v4[35] = a1;
  v4[36] = a2;

  return MEMORY[0x2822009F8](MedStorageHelper.displayNameFor(identifier:), 0);
}

uint64_t MedStorageHelper.displayNameFor(identifier:)()
{
  v1 = v0[29];
  v0[21] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, (v0 + 2));
  v7 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v6 = (*(v5 + 8) + **(v5 + 8));
  v2 = swift_task_alloc();
  *(v4 + 264) = v2;
  *v2 = *(v4 + 168);
  v2[1] = MedStorageHelper.displayNameFor(identifier:);

  return v6(v7, v5);
}

{
  v26 = *(v0 + 296);
  *(v0 + 168) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v26)
  {
    outlined init with copy of QuantityPersisting(*(v25 + 232) + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, v25 + 56);
    v8 = *(v25 + 80);
    v9 = *(v25 + 88);
    __swift_project_boxed_opaque_existential_1((v25 + 56), v8);
    v10 = (*(v9 + 40) + **(v9 + 40));
    v5 = swift_task_alloc();
    *(v25 + 272) = v5;
    *v5 = *(v25 + 168);
    v5[1] = MedStorageHelper.displayNameFor(identifier:);
    v6 = *(v25 + 224);
    v7 = *(v25 + 216);

    return v10(v7, v6, v8, v9);
  }

  else
  {
    v1 = *(v25 + 256);
    v21 = *(v25 + 240);
    v19 = *(v25 + 248);
    v20 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v19 + 16))(v1, v20, v21);
    swift_endAccess();
    v23 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v24 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v23, v22))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v16 = createStorage<A>(capacity:type:)(0, v14, v14);
      v17 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v25 + 184) = buf;
      *(v25 + 192) = v16;
      *(v25 + 200) = v17;
      serialize(_:at:)(0, (v25 + 184));
      serialize(_:at:)(0, (v25 + 184));
      *(v25 + 208) = v24;
      v18 = swift_task_alloc();
      v18[2] = v25 + 184;
      v18[3] = v25 + 192;
      v18[4] = v25 + 200;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v23, v22, "SpecificMedStorageHelper is not authorized to read meds data, returning empty string", buf, 2u);
      destroyStorage<A>(_:count:)(v16, 0, v14);
      destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v12 = *(v25 + 256);
    v13 = *(v25 + 240);
    v11 = *(v25 + 248);
    MEMORY[0x277D82BD8](v23);
    (*(v11 + 8))(v12, v13);
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);

    v3 = *(*(v25 + 168) + 8);

    return v3(v2._countAndFlagsBits, v2._object);
  }
}

{
  v1 = v0[36];
  v2 = v0[35];
  v0[21] = v0;
  v0[19] = v2;
  v0[20] = v1;
  if (v0[20])
  {
    v3 = v8[20];
    v8[17] = v8[19];
    v8[18] = v3;
  }

  else
  {
    *(v8 + 17) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v8[20])
    {
      outlined destroy of String.UTF8View((v8 + 19));
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v8 + 7);
  v6 = v8[17];
  v7 = v8[18];

  v4 = *(v8[21] + 8);

  return v4(v6, v7);
}

uint64_t MedStorageHelper.displayNameFor(identifier:)(char a1)
{
  v3 = *v1;
  *(v3 + 168) = *v1;
  *(v3 + 296) = a1;

  return MEMORY[0x2822009F8](MedStorageHelper.displayNameFor(identifier:), 0);
}

uint64_t MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1, char a2)
{
  *(v3 + 184) = v2;
  *(v3 + 241) = a2 & 1;
  *(v3 + 176) = a1;
  *(v3 + 120) = v3;
  *(v3 + 128) = 0;
  *(v3 + 240) = 0;
  *(v3 + 136) = 0;
  v4 = type metadata accessor for Logger();
  *(v3 + 192) = v4;
  *(v3 + 200) = *(v4 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 128) = a1;
  *(v3 + 240) = a2 & 1;
  *(v3 + 136) = v2;

  return MEMORY[0x2822009F8](MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:)()
{
  v1 = v0[23];
  v0[15] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, (v0 + 2));
  v7 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v6 = (*(v5 + 8) + **(v5 + 8));
  v2 = swift_task_alloc();
  *(v4 + 216) = v2;
  *v2 = *(v4 + 120);
  v2[1] = MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:);

  return v6(v7, v5);
}

{
  v25 = *(v0 + 242);
  *(v0 + 120) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v25)
  {
    outlined init with copy of QuantityPersisting(*(v24 + 184) + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, v24 + 56);
    v7 = *(v24 + 80);
    v8 = *(v24 + 88);
    __swift_project_boxed_opaque_existential_1((v24 + 56), v7);
    v9 = (*(v8 + 56) + **(v8 + 56));
    v4 = swift_task_alloc();
    *(v24 + 224) = v4;
    *v4 = *(v24 + 120);
    v4[1] = MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    v5 = *(v24 + 176);
    v6 = *(v24 + 241) & 1;

    return v9(v5, v6, v7, v8);
  }

  else
  {
    v1 = *(v24 + 208);
    v20 = *(v24 + 192);
    v18 = *(v24 + 200);
    v19 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v18 + 16))(v1, v19, v20);
    swift_endAccess();
    v22 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v23 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v22, v21))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v15 = createStorage<A>(capacity:type:)(0, v13, v13);
      v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v24 + 144) = buf;
      *(v24 + 152) = v15;
      *(v24 + 160) = v16;
      serialize(_:at:)(0, (v24 + 144));
      serialize(_:at:)(0, (v24 + 144));
      *(v24 + 168) = v23;
      v17 = swift_task_alloc();
      v17[2] = v24 + 144;
      v17[3] = v24 + 152;
      v17[4] = v24 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v22, v21, "MedStorageHelper is not authorized to read meds data, returning empty string", buf, 2u);
      destroyStorage<A>(_:count:)(v15, 0, v13);
      destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v11 = *(v24 + 208);
    v12 = *(v24 + 192);
    v10 = *(v24 + 200);
    MEMORY[0x277D82BD8](v22);
    (*(v10 + 8))(v11, v12);

    v2 = *(*(v24 + 120) + 8);

    return v2(0);
  }
}

{
  v3 = v0[29];
  v0[15] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = *(v0[15] + 8);

  return v1(v3);
}

uint64_t MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(char a1)
{
  v3 = *v1;
  *(v3 + 120) = *v1;
  *(v3 + 242) = a1;

  return MEMORY[0x2822009F8](MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 120) = *v1;
  *(v3 + 232) = a1;

  return MEMORY[0x2822009F8](MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

id MedStorageHelper.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for MedStorageHelping.displayNameFor(identifier:) in conformance MedStorageHelper(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for SpecificMedicationsPersisting.displayNameFor(identifier:) in conformance SpecificMedicationsPersistor;

  return MedStorageHelper.displayNameFor(identifier:)(a1, a2);
}

uint64_t protocol witness for MedStorageHelping.sampleScheduleIDFor(dateInterval:) in conformance MedStorageHelper(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for SpecificMedicationsPersisting.displayNameFor(identifier:) in conformance SpecificMedicationsPersistor;

  return MedStorageHelper.sampleScheduleIDFor(dateInterval:)(a1);
}

uint64_t protocol witness for MedStorageHelping.buildMatchedMedName(from:shouldIncludeAsNeededParams:) in conformance MedStorageHelper(uint64_t a1, char a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(a1, a2 & 1);
}

id GetBloodPressureIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetBloodPressureIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetBloodPressureIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetBloodPressureIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetBloodPressureIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetBloodPressureIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetBloodPressureIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetBloodPressureIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetBloodPressureIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetBloodPressureIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetBloodPressureIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetBloodPressureIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetBloodPressureIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetBloodPressureIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetBloodPressureIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetBloodPressureIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t GetBloodPressureIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetBloodPressureIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetBloodPressureIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetBloodPressureIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetBloodPressureIntentResponse.code : GetBloodPressureIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetBloodPressureIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetBloodPressureIntentResponse.code : GetBloodPressureIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetBloodPressureIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetBloodPressureIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetBloodPressureIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetBloodPressureIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetBloodPressureIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetBloodPressureIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetBloodPressureIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetBloodPressureIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetBloodPressureIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetBloodPressureIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetBloodPressureIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetBloodPressureIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetBloodPressureIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetBloodPressureIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetBloodPressureIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetBloodPressureIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetBloodPressureIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetBloodPressureIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetBloodPressureIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetBloodPressureIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

Swift::Bool __swiftcall isMedDosageUnitSynonym(userSuppliedUnit:systemSuppliedUnit:)(Swift::String userSuppliedUnit, Swift::String systemSuppliedUnit)
{
  v111[2] = userSuppliedUnit;
  v111[1] = systemSuppliedUnit;

  v111[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("application", 0xBuLL, 1);
  v110[1] = systemSuppliedUnit;
  v65 = MEMORY[0x26D649310](v111[0]._countAndFlagsBits, v111[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v111);
  if (v65)
  {

LABEL_51:
    v38 = MEMORY[0x26D649310](systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object, userSuppliedUnit._countAndFlagsBits, userSuppliedUnit._object);
    return v38 & 1;
  }

  v110[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bar", 3uLL, 1);
  v109[1] = systemSuppliedUnit;
  v62 = MEMORY[0x26D649310](v110[0]._countAndFlagsBits, v110[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v110);
  if (v62)
  {

    goto LABEL_51;
  }

  v109[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cartridge", 9uLL, 1);
  v108[1] = systemSuppliedUnit;
  v61 = MEMORY[0x26D649310](v109[0]._countAndFlagsBits, v109[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v109);
  if (v61)
  {

    goto LABEL_51;
  }

  v108[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("device", 6uLL, 1);
  v107[1] = systemSuppliedUnit;
  v60 = MEMORY[0x26D649310](v108[0]._countAndFlagsBits, v108[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v108);
  if (v60)
  {

    goto LABEL_51;
  }

  v107[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("disc", 4uLL, 1);
  v106[1] = systemSuppliedUnit;
  v59 = MEMORY[0x26D649310](v107[0]._countAndFlagsBits, v107[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v107);
  if (v59)
  {

    goto LABEL_51;
  }

  v106[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drop", 4uLL, 1);
  v105[1] = systemSuppliedUnit;
  v58 = MEMORY[0x26D649310](v106[0]._countAndFlagsBits, v106[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v106);
  if (v58)
  {

    goto LABEL_51;
  }

  v105[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enema", 5uLL, 1);
  v104[1] = systemSuppliedUnit;
  v57 = MEMORY[0x26D649310](v105[0]._countAndFlagsBits, v105[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v105);
  if (v57)
  {

    goto LABEL_51;
  }

  v104[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("globule", 7uLL, 1);
  v103[1] = systemSuppliedUnit;
  v56 = MEMORY[0x26D649310](v104[0]._countAndFlagsBits, v104[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v104);
  if (v56)
  {

    goto LABEL_51;
  }

  v103[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("implant", 7uLL, 1);
  v102[1] = systemSuppliedUnit;
  v55 = MEMORY[0x26D649310](v103[0]._countAndFlagsBits, v103[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v103);
  if (v55)
  {

    goto LABEL_51;
  }

  v102[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("insert", 6uLL, 1);
  v101[1] = systemSuppliedUnit;
  v54 = MEMORY[0x26D649310](v102[0]._countAndFlagsBits, v102[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v102);
  if (v54)
  {

    goto LABEL_51;
  }

  v101[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kit", 3uLL, 1);
  v100[1] = systemSuppliedUnit;
  v53 = MEMORY[0x26D649310](v101[0]._countAndFlagsBits, v101[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v101);
  if (v53)
  {

    goto LABEL_51;
  }

  v100[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("packet", 6uLL, 1);
  v99[1] = systemSuppliedUnit;
  v52 = MEMORY[0x26D649310](v100[0]._countAndFlagsBits, v100[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v100);
  if (v52)
  {

    goto LABEL_51;
  }

  v99[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("patch", 5uLL, 1);
  v98[1] = systemSuppliedUnit;
  v51 = MEMORY[0x26D649310](v99[0]._countAndFlagsBits, v99[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v99);
  if (v51)
  {

    goto LABEL_51;
  }

  v98[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("piece", 5uLL, 1);
  v97[1] = systemSuppliedUnit;
  v50 = MEMORY[0x26D649310](v98[0]._countAndFlagsBits, v98[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v98);
  if (v50)
  {

    goto LABEL_51;
  }

  v97[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("popsicle", 8uLL, 1);
  v96[1] = systemSuppliedUnit;
  v49 = MEMORY[0x26D649310](v97[0]._countAndFlagsBits, v97[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v97);
  if (v49)
  {

    goto LABEL_51;
  }

  v96[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("scoop", 5uLL, 1);
  v95[1] = systemSuppliedUnit;
  v48 = MEMORY[0x26D649310](v96[0]._countAndFlagsBits, v96[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v96);
  if (v48)
  {

    goto LABEL_51;
  }

  v95[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sponge", 6uLL, 1);
  v94[1] = systemSuppliedUnit;
  v47 = MEMORY[0x26D649310](v95[0]._countAndFlagsBits, v95[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v95);
  if (v47)
  {

    goto LABEL_51;
  }

  v94[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spray", 5uLL, 1);
  v93[1] = systemSuppliedUnit;
  v46 = MEMORY[0x26D649310](v94[0]._countAndFlagsBits, v94[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v94);
  if (v46)
  {

    goto LABEL_51;
  }

  v93[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stick", 5uLL, 1);
  v92[1] = systemSuppliedUnit;
  v45 = MEMORY[0x26D649310](v93[0]._countAndFlagsBits, v93[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v93);
  if (v45)
  {

    goto LABEL_51;
  }

  v92[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("strip", 5uLL, 1);
  v91[1] = systemSuppliedUnit;
  v44 = MEMORY[0x26D649310](v92[0]._countAndFlagsBits, v92[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v92);
  if (v44)
  {

    goto LABEL_51;
  }

  v91[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("suppository", 0xBuLL, 1);
  v90[1] = systemSuppliedUnit;
  v43 = MEMORY[0x26D649310](v91[0]._countAndFlagsBits, v91[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v91);
  if (v43)
  {

    goto LABEL_51;
  }

  v90[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tampon", 6uLL, 1);
  v89[1] = systemSuppliedUnit;
  v42 = MEMORY[0x26D649310](v90[0]._countAndFlagsBits, v90[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v90);
  if (v42)
  {

    goto LABEL_51;
  }

  v89[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("treatment", 9uLL, 1);
  v88[1] = systemSuppliedUnit;
  v41 = MEMORY[0x26D649310](v89[0]._countAndFlagsBits, v89[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v89);
  if (v41)
  {

    goto LABEL_51;
  }

  v88[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unit", 4uLL, 1);
  v87[1] = systemSuppliedUnit;
  v40 = MEMORY[0x26D649310](v88[0]._countAndFlagsBits, v88[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v88);
  if (v40)
  {

    goto LABEL_51;
  }

  v87[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wick", 4uLL, 1);
  v86[1] = systemSuppliedUnit;
  v39 = MEMORY[0x26D649310](v87[0]._countAndFlagsBits, v87[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v87);
  if (v39)
  {

    goto LABEL_51;
  }

  v86[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhalation", 0xAuLL, 1);
  v85[1] = systemSuppliedUnit;
  v37 = MEMORY[0x26D649310](v86[0]._countAndFlagsBits, v86[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v86);
  if (v37)
  {

    _allocateUninitializedArray<A>(_:)();
    v35 = v2;
    *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhalation", 0xAuLL, 1);
    v35[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhaler", 7uLL, 1);
    v35[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("puff", 4uLL, 1);
    v35[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nebulizer", 9uLL, 1);
    v35[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("neb", 3uLL, 1);
    _finalizeUninitializedArray<A>(_:)();
    v66 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v36 = Sequence<>.contains(_:)();
    outlined destroy of [HKQuantityType](&v66);
    v38 = v36;
  }

  else
  {

    v85[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("injection", 9uLL, 1);
    v84[1] = systemSuppliedUnit;
    v34 = MEMORY[0x26D649310](v85[0]._countAndFlagsBits, v85[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
    outlined destroy of String.UTF8View(v85);
    if (v34)
    {

      _allocateUninitializedArray<A>(_:)();
      v32 = v4;
      *v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("injection", 9uLL, 1);
      v32[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("shot", 4uLL, 1);
      _finalizeUninitializedArray<A>(_:)();
      v68 = v5;
      v67 = userSuppliedUnit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v33 = Sequence<>.contains(_:)();
      outlined destroy of [HKQuantityType](&v68);
      v38 = v33;
    }

    else
    {

      v84[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lozenge", 7uLL, 1);
      v83[1] = systemSuppliedUnit;
      v31 = MEMORY[0x26D649310](v84[0]._countAndFlagsBits, v84[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
      outlined destroy of String.UTF8View(v84);
      if (v31)
      {

        _allocateUninitializedArray<A>(_:)();
        v29 = v6;
        *v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lozenge", 7uLL, 1);
        v29[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drop", 4uLL, 1);
        v29[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("troche", 6uLL, 1);
        v29[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pastille", 8uLL, 1);
        _finalizeUninitializedArray<A>(_:)();
        v70 = v7;
        v69 = userSuppliedUnit;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = Sequence<>.contains(_:)();
        outlined destroy of [HKQuantityType](&v70);
        v38 = v30;
      }

      else
      {

        v83[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mL", 2uLL, 1);
        v82[1] = systemSuppliedUnit;
        v28 = MEMORY[0x26D649310](v83[0]._countAndFlagsBits, v83[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
        outlined destroy of String.UTF8View(v83);
        if (v28)
        {

          _allocateUninitializedArray<A>(_:)();
          v26 = v8;
          *v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mL", 2uLL, 1);
          v26[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milliliter", 0xAuLL, 1);
          v26[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milliLiter", 0xAuLL, 1);
          _finalizeUninitializedArray<A>(_:)();
          v72 = v9;
          v71 = userSuppliedUnit;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v27 = Sequence<>.contains(_:)();
          outlined destroy of [HKQuantityType](&v72);
          v38 = v27;
        }

        else
        {

          v82[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mg", 2uLL, 1);
          v81[1] = systemSuppliedUnit;
          v25 = MEMORY[0x26D649310](v82[0]._countAndFlagsBits, v82[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
          outlined destroy of String.UTF8View(v82);
          if (v25)
          {

            _allocateUninitializedArray<A>(_:)();
            v23 = v10;
            *v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mg", 2uLL, 1);
            v23[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milligram", 9uLL, 1);
            _finalizeUninitializedArray<A>(_:)();
            v74 = v11;
            v73 = userSuppliedUnit;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type [String] and conformance [A]();
            v24 = Sequence<>.contains(_:)();
            outlined destroy of [HKQuantityType](&v74);
            v38 = v24;
          }

          else
          {

            v81[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tablet", 6uLL, 1);
            v80[1] = systemSuppliedUnit;
            v22 = MEMORY[0x26D649310](v81[0]._countAndFlagsBits, v81[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
            outlined destroy of String.UTF8View(v81);
            if (v22)
            {

              _allocateUninitializedArray<A>(_:)();
              v20 = v12;
              *v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tablet", 6uLL, 1);
              v20[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tab", 3uLL, 1);
              v20[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pill", 4uLL, 1);
              v20[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cap", 3uLL, 1);
              v20[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("capsule", 7uLL, 1);
              _finalizeUninitializedArray<A>(_:)();
              v76 = v13;
              v75 = userSuppliedUnit;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
              lazy protocol witness table accessor for type [String] and conformance [A]();
              v21 = Sequence<>.contains(_:)();
              outlined destroy of [HKQuantityType](&v76);
              v38 = v21;
            }

            else
            {

              v80[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vial", 4uLL, 1);
              v79 = systemSuppliedUnit;
              v19 = MEMORY[0x26D649310](v80[0]._countAndFlagsBits, v80[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
              outlined destroy of String.UTF8View(v80);

              if (v19)
              {
                _allocateUninitializedArray<A>(_:)();
                v17 = v14;
                *v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nebulizer", 9uLL, 1);
                v17[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("neb", 3uLL, 1);
                v17[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhalation", 0xAuLL, 1);
                _finalizeUninitializedArray<A>(_:)();
                v78 = v15;
                v77 = userSuppliedUnit;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                lazy protocol witness table accessor for type [String] and conformance [A]();
                v18 = Sequence<>.contains(_:)();
                outlined destroy of [HKQuantityType](&v78);
                v38 = v18;
              }

              else
              {
                v38 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v38 & 1;
}