uint64_t implicit closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  v4 = a1;
  v7 = type metadata accessor for DateInterval();
  v6 = *(v7 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v7, v4);
  v8 = &v3 - v5;
  (*(v6 + 16))(v1);
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  swift_endAccess();
  v1 = type metadata accessor for HKMedicationExposableDoseEvent();
  v5 = MEMORY[0x26D6494A0](v4, v1);

  return v5;
}

uint64_t implicit closure #4 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(void *a1)
{
  v2 = [a1 scheduleItemIdentifier];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(void *a1)
{
  [a1 medicationIdentifier];
  type metadata accessor for HKMedicationIdentifier();
  lazy protocol witness table accessor for type HKMedicationIdentifier and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #6 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(void *a1)
{
  [a1 status];
  type metadata accessor for HKMedicationDoseEventStatus(0);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #7 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v6 = *(a1 + 16);

  swift_endAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMd, &_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMR);
  v1 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  v7 = MEMORY[0x26D649210](v6, v4, v5, v1);

  return v7;
}

void __swiftcall INObject.__allocating_init(identifier:display:)(INObject *__return_ptr retstr, Swift::String_optional identifier, Swift::String display)
{
  countAndFlagsBits = identifier.value._countAndFlagsBits;
  object = identifier.value._object;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  @nonobjc INObject.init(identifier:display:)(countAndFlagsBits, object, display._countAndFlagsBits, display._object);
}

uint64_t SpecificMedicationsPersistor.displayNameFor(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a4;
  v4[31] = a3;
  v4[30] = a2;
  v4[29] = a1;
  v4[18] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[23] = 0;
  v4[28] = 0;
  v5 = type metadata accessor for Logger();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = a4;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.displayNameFor(identifier:), 0);
}

uint64_t SpecificMedicationsPersistor.displayNameFor(identifier:)()
{
  v23 = *(v0 + 240);
  *(v0 + 144) = v0;

  if (v23)
  {
    v1 = *(v22 + 240);
    *(v22 + 96) = *(v22 + 232);
    *(v22 + 104) = v1;
    v2 = swift_task_alloc();
    *(v22 + 296) = v2;
    *v2 = *(v22 + 144);
    v2[1] = SpecificMedicationsPersistor.displayNameFor(identifier:);
    v3 = *(v22 + 256);
    v4 = *(v22 + 248);

    return SpecificMedicationsPersistor.UTCQuery()(v4, v3);
  }

  else
  {
    v6 = *(v22 + 288);
    v18 = *(v22 + 264);
    v16 = *(v22 + 272);
    v17 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v16 + 16))(v6, v17, v18);
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
      *(v22 + 152) = buf;
      *(v22 + 160) = v13;
      *(v22 + 168) = v14;
      serialize(_:at:)(0, (v22 + 152));
      serialize(_:at:)(0, (v22 + 152));
      *(v22 + 176) = v21;
      v15 = swift_task_alloc();
      v15[2] = v22 + 152;
      v15[3] = v22 + 160;
      v15[4] = v22 + 168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v20, v19, "Identifier passed into displayNameFor() was nil, returning nil", buf, 2u);
      destroyStorage<A>(_:count:)(v13, 0, v11);
      destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v9 = *(v22 + 288);
    v10 = *(v22 + 264);
    v8 = *(v22 + 272);
    MEMORY[0x277D82BD8](v20);
    (*(v8 + 8))(v9, v10);

    v7 = *(*(v22 + 144) + 8);

    return v7(0);
  }
}

{
  v1 = v0[38];
  v5 = v0[30];
  v4 = v0[29];
  v0[18] = v0;
  v0[28] = v1;

  v0[16] = v4;
  v0[17] = v5;
  MEMORY[0x26D649240]();
  outlined destroy of String.UTF8View((v0 + 16));
  v6 = v0[14];
  v7 = v0[15];

  v2 = *(v0[18] + 8);

  return v2(v6, v7);
}

{
  v15 = v0[39];
  v1 = v0[35];
  v16 = v0[34];
  v18 = v0[33];
  v0[18] = v0;

  v2 = v15;
  v0[23] = v15;
  v17 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v16 + 16))(v1, v17, v18);
  swift_endAccess();
  v20 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v20, v19))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 192) = buf;
    *(v14 + 200) = v11;
    *(v14 + 208) = v12;
    serialize(_:at:)(0, (v14 + 192));
    serialize(_:at:)(0, (v14 + 192));
    *(v14 + 216) = v21;
    v13 = swift_task_alloc();
    v13[2] = v14 + 192;
    v13[3] = v14 + 200;
    v13[4] = v14 + 208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v20, v19, "Call to UTCQuery() threw, returning nil", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v14 + 312);
  v6 = *(v14 + 280);
  v7 = *(v14 + 264);
  v5 = *(v14 + 272);
  MEMORY[0x277D82BD8](v20);
  (*(v5 + 8))(v6, v7);

  v3 = *(*(v14 + 144) + 8);

  return v3(0);
}

uint64_t SpecificMedicationsPersistor.displayNameFor(identifier:)(uint64_t a1)
{
  v5 = *v2;
  v5[18] = *v2;
  v5[38] = a1;
  v5[39] = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.displayNameFor(identifier:);
  }

  else
  {
    v3 = SpecificMedicationsPersistor.displayNameFor(identifier:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t implicit closure #9 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  MEMORY[0x277D82BE0](v3);
  swift_endAccess();
  v4 = [v3 scheduleID];
  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v4);
  }

  MEMORY[0x277D82BD8](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #10 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  MEMORY[0x277D82BE0](v3);
  swift_endAccess();
  v4 = [v3 medName];
  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v4);
  }

  MEMORY[0x277D82BD8](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #11 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  MEMORY[0x277D82BE0](v3);
  swift_endAccess();
  v4 = [v3 schedule];
  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v4);
  }

  MEMORY[0x277D82BD8](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #12 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t result)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    --result;
  }

  return result;
}

id closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [objc_opt_self() asNeededExposableDoseEventForMedication:*a1 doseQuantity:a2];
  *a3 = result;
  return result;
}

uint64_t implicit closure #3 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(void *a1)
{
  [a1 doseQuantity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  lazy protocol witness table accessor for type NSNumber? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(void *a1)
{
  [a1 scheduledDoseQuantity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  lazy protocol witness table accessor for type NSNumber? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(void *a1)
{
  [a1 logOrigin];
  type metadata accessor for HKMedicationDoseEventLogOrigin(0);
  return String.init<A>(describing:)();
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 328) = a4;
  *(v5 + 320) = a3;
  *(v5 + 312) = a5;
  *(v5 + 304) = a2;
  *(v5 + 296) = a1;
  *(v5 + 200) = v5;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 208) = 0;
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 248) = 0;
  *(v5 + 264) = 0;
  *(v5 + 288) = 0;
  *(v5 + 184) = 0;
  *(v5 + 192) = 0;
  v6 = type metadata accessor for Logger();
  *(v5 + 336) = v6;
  *(v5 + 344) = *(v6 - 8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 136) = a1;
  *(v5 + 144) = a2;
  *(v5 + 208) = a5;
  *(v5 + 152) = a3;
  *(v5 + 160) = a4;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:), 0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)()
{
  v23 = *(v0 + 304);
  *(v0 + 200) = v0;

  if (v23)
  {
    v1 = *(v22 + 304);
    *(v22 + 168) = *(v22 + 296);
    *(v22 + 176) = v1;
    v2 = swift_task_alloc();
    *(v22 + 392) = v2;
    *v2 = *(v22 + 200);
    v2[1] = SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:);
    v3 = *(v22 + 328);
    v4 = *(v22 + 320);

    return SpecificMedicationsPersistor.doUTCQueryForMedications()(v4, v3);
  }

  else
  {
    v6 = *(v22 + 360);
    v18 = *(v22 + 336);
    v16 = *(v22 + 344);
    v17 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v16 + 16))(v6, v17, v18);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v21 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v19))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v13 = createStorage<A>(capacity:type:)(0, v11, v11);
      v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v22 + 216) = buf;
      *(v22 + 224) = v13;
      *(v22 + 232) = v14;
      serialize(_:at:)(0, (v22 + 216));
      serialize(_:at:)(0, (v22 + 216));
      *(v22 + 240) = v21;
      v15 = swift_task_alloc();
      v15[2] = v22 + 216;
      v15[3] = v22 + 224;
      v15[4] = v22 + 232;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v19, "medicationID passed into getAsNeededDosageUnitFromHealthApp was nil, returning nil", buf, 2u);
      destroyStorage<A>(_:count:)(v13, 0, v11);
      destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v9 = *(v22 + 360);
    v10 = *(v22 + 336);
    v8 = *(v22 + 344);
    MEMORY[0x277D82BD8](oslog);
    (*(v8 + 8))(v9, v10);

    v7 = *(*(v22 + 200) + 8);

    return v7(0);
  }
}

{
  v92 = v0;
  v1 = v0[51];
  v2 = v0[50];
  v74 = v0[38];
  v73 = v0[37];
  v0[25] = v0;
  v0[32] = v2;

  v75 = swift_task_alloc();
  *(v75 + 16) = v73;
  *(v75 + 24) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  v76 = _ArrayProtocol.filter(_:)();
  if (v1)
  {
  }

  else
  {

    *(v72 + 264) = v76;
    *(v72 + 272) = v76;
    lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
    Collection.first.getter();
    v71 = *(v72 + 280);
    if (v71)
    {
      v68 = [v71 medication];
      MEMORY[0x277D82BD8](v71);
      v69 = [v68 loggingUnit];
      MEMORY[0x277D82BD8](v68);
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    if (v70)
    {
      v3 = *(v72 + 384);
      v58 = *(v72 + 336);
      v56 = *(v72 + 344);
      *(v72 + 288) = v70;
      v57 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v59 = *(v56 + 16);
      v59(v3, v57, v58);
      swift_endAccess();
      MEMORY[0x277D82BE0](v70);
      v60 = swift_allocObject();
      *(v60 + 16) = v70;
      oslog = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      v62 = swift_allocObject();
      *(v62 + 16) = 32;
      v63 = swift_allocObject();
      *(v63 + 16) = 8;
      v61 = swift_allocObject();
      *(v61 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:);
      *(v61 + 24) = v60;
      v64 = swift_allocObject();
      *(v64 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v64 + 24) = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v65 = v4;

      *v65 = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[1] = v62;

      v65[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[3] = v63;

      v65[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[5] = v64;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v67))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v54 = createStorage<A>(capacity:type:)(0, v52, v52);
        v55 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v87 = buf;
        v88 = v54;
        v89 = v55;
        serialize(_:at:)(2, &v87);
        serialize(_:at:)(1, &v87);
        v90 = partial apply for closure #1 in OSLogArguments.append(_:);
        v91 = v62;
        closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
        v90 = partial apply for closure #1 in OSLogArguments.append(_:);
        v91 = v63;
        closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
        v90 = partial apply for closure #1 in OSLogArguments.append(_:);
        v91 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
        _os_log_impl(&dword_269912000, oslog, v67, "getAsNeededDosageUnit had raw unit of %s", buf, 0xCu);
        destroyStorage<A>(_:count:)(v54, 0, v52);
        destroyStorage<A>(_:count:)(v55, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v48 = *(v72 + 384);
      v49 = *(v72 + 336);
      fora = *(v72 + 312);
      v47 = *(v72 + 344);
      MEMORY[0x277D82BD8](oslog);
      v50 = *(v47 + 8);
      v50(v48, v49);
      v5 = HKMedicationLoggingUnit.getDisplayUnit(for:)(fora);
      if (v5.value._object)
      {
        *(v72 + 184) = v5;
        MEMORY[0x277D82BD8](v70);

        v46 = v5;
      }

      else
      {
        v6 = *(v72 + 376);
        v37 = *(v72 + 336);
        v36 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        v59(v6, v36, v37);
        swift_endAccess();
        MEMORY[0x277D82BE0](v70);
        v38 = swift_allocObject();
        *(v38 + 16) = v70;
        log = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        v40 = swift_allocObject();
        *(v40 + 16) = 64;
        v41 = swift_allocObject();
        *(v41 + 16) = 8;
        v39 = swift_allocObject();
        *(v39 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
        *(v39 + 24) = v38;
        v42 = swift_allocObject();
        *(v42 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
        *(v42 + 24) = v39;
        _allocateUninitializedArray<A>(_:)();
        v43 = v7;

        *v43 = partial apply for closure #1 in OSLogArguments.append(_:);
        v43[1] = v40;

        v43[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v43[3] = v41;

        v43[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v43[5] = v42;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(log, v45))
        {
          v33 = static UnsafeMutablePointer.allocate(capacity:)();
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v34 = createStorage<A>(capacity:type:)(1, v32, v32);
          v35 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v82 = v33;
          v83 = v34;
          v84 = v35;
          serialize(_:at:)(2, &v82);
          serialize(_:at:)(1, &v82);
          v85 = partial apply for closure #1 in OSLogArguments.append(_:);
          v86 = v40;
          closure #1 in osLogInternal(_:log:type:)(&v85, &v82, &v83, &v84);
          v85 = partial apply for closure #1 in OSLogArguments.append(_:);
          v86 = v41;
          closure #1 in osLogInternal(_:log:type:)(&v85, &v82, &v83, &v84);
          v85 = partial apply for closure #1 in OSLogArguments.append(_:);
          v86 = v42;
          closure #1 in osLogInternal(_:log:type:)(&v85, &v82, &v83, &v84);
          _os_log_impl(&dword_269912000, log, v45, "Failed to find or map displayDosageUnit, here's dosageUnit: %@", v33, 0xCu);
          destroyStorage<A>(_:count:)(v34, 1, v32);
          destroyStorage<A>(_:count:)(v35, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v33, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v30 = *(v72 + 376);
        v31 = *(v72 + 336);
        MEMORY[0x277D82BD8](log);
        v50(v30, v31);
        MEMORY[0x277D82BD8](v70);

        v46.value._countAndFlagsBits = 0;
        v46.value._object = 0;
      }
    }

    else
    {
      v8 = *(v72 + 368);
      v21 = *(v72 + 336);
      v19 = *(v72 + 344);
      v20 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v19 + 16))(v8, v20, v21);
      swift_endAccess();

      v22 = swift_allocObject();
      *(v22 + 16) = v76;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = 32;
      v25 = swift_allocObject();
      *(v25 + 16) = 8;
      v23 = swift_allocObject();
      *(v23 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:);
      *(v23 + 24) = v22;
      v26 = swift_allocObject();
      *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v26 + 24) = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v27 = v9;

      *v27 = partial apply for closure #1 in OSLogArguments.append(_:);
      v27[1] = v24;

      v27[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v27[3] = v25;

      v27[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v27[5] = v26;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v28, v29))
      {
        v16 = static UnsafeMutablePointer.allocate(capacity:)();
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v17 = createStorage<A>(capacity:type:)(0, v15, v15);
        v18 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v77 = v16;
        v78 = v17;
        v79 = v18;
        serialize(_:at:)(2, &v77);
        serialize(_:at:)(1, &v77);
        v80 = partial apply for closure #1 in OSLogArguments.append(_:);
        v81 = v24;
        closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
        v80 = partial apply for closure #1 in OSLogArguments.append(_:);
        v81 = v25;
        closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
        v80 = partial apply for closure #1 in OSLogArguments.append(_:);
        v81 = v26;
        closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
        _os_log_impl(&dword_269912000, v28, v29, "Failed to find or map dosageUnit, here's the med: %s", v16, 0xCu);
        destroyStorage<A>(_:count:)(v17, 0, v15);
        destroyStorage<A>(_:count:)(v18, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v16, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v13 = *(v72 + 368);
      v14 = *(v72 + 336);
      v12 = *(v72 + 344);
      MEMORY[0x277D82BD8](v28);
      (*(v12 + 8))(v13, v14);

      v46.value._countAndFlagsBits = 0;
      v46.value._object = 0;
    }

    v10 = *(*(v72 + 200) + 8);

    return v10(v46.value._countAndFlagsBits, v46.value._object);
  }
}

{
  v34 = v0;
  v19 = v0[51];
  v1 = v0[44];
  v16 = v0[43];
  v18 = v0[42];
  v0[25] = v0;
  v2 = v19;
  v0[31] = v19;
  v17 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v16 + 16))(v1, v17, v18);
  swift_endAccess();
  v3 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v26 = v4;

  *v26 = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[1] = v23;

  v26[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[3] = v24;

  v26[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v27, v28))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v13;
    v31 = v14;
    serialize(_:at:)(2, &v29);
    serialize(_:at:)(1, &v29);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_269912000, v27, v28, "Error getting as needed dosage unit: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v15[51];
  v8 = v15[44];
  v9 = v15[42];
  v7 = v15[43];
  MEMORY[0x277D82BD8](v27);
  (*(v7 + 8))(v8, v9);

  v5 = *(v15[25] + 8);

  return v5(0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(uint64_t a1)
{
  v5 = *v2;
  v5[25] = *v2;
  v5[50] = a1;
  v5[51] = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:);
  }

  else
  {
    v3 = SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a2;
  v4[41] = a1;
  v4[29] = v4;
  v4[19] = 0;
  v4[20] = 0;
  v4[21] = 0;
  v4[22] = 0;
  v4[30] = 0;
  v4[32] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[39] = 0;
  v4[40] = 0;
  v4[27] = 0;
  v4[28] = 0;
  v5 = type metadata accessor for Logger();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
  v6 = swift_task_alloc();
  *(v10 + 384) = v6;
  *v6 = *(v10 + 232);
  v6[1] = SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:);

  return SpecificMedicationsPersistor.doUTCQueryForMedications()(a3, a4);
}

uint64_t SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:)(uint64_t a1)
{
  v5 = *v2;
  v5[29] = *v2;
  v5[49] = a1;
  v5[50] = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:);
  }

  else
  {
    v3 = SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:)()
{
  v75 = v0;
  v1 = v0[50];
  v2 = v0[49];
  v67 = v0[42];
  v66 = v0[41];
  v0[29] = v0;
  v0[31] = v2;

  v68 = swift_task_alloc();
  *(v68 + 16) = v66;
  *(v68 + 24) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  v69 = _ArrayProtocol.filter(_:)();
  if (v1)
  {
  }

  else
  {

    *(v65 + 256) = v69;
    *(v65 + 264) = v69;
    lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
    Collection.first.getter();
    v64 = *(v65 + 272);
    if (v64)
    {
      v61 = [v64 medication];
      MEMORY[0x277D82BD8](v64);
      v62 = [v61 displayNameComponents];
      MEMORY[0x277D82BD8](v61);
      v63 = [v62 displayStrength];
      if (v63)
      {
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v3;
        MEMORY[0x277D82BD8](v63);
        v59 = v57;
        v60 = v58;
      }

      else
      {
        v59 = 0;
        v60 = 0;
      }

      MEMORY[0x277D82BD8](v62);
      v55 = v59;
      v56 = v60;
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    if (v56)
    {
      *(v65 + 184) = v55;
      *(v65 + 192) = v56;
      *(v65 + 200) = v55;
      *(v65 + 208) = v56;
      v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1);
      v53 = lazy protocol witness table accessor for type String and conformance String();
      v52 = MEMORY[0x277D837D0];
      v51 = default argument 1 of StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
      v5 = default argument 2 of StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
      v54 = MEMORY[0x26D649820](v4._countAndFlagsBits, v4._object, v51, v5 & 1, v52, v53);

      *(v65 + 312) = v54;
      if (MEMORY[0x26D6494A0]() == 2)
      {
        Array.subscript.getter();
        v50 = Double.init(_:)();
        if (v6)
        {

          v47 = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          *(v65 + 320) = v50;
          Array.subscript.getter();
          v45 = String.init(_:)();
          v46 = v7;

          *(v65 + 216) = v45;
          *(v65 + 224) = v46;

          v47 = v50;
          v48 = v45;
          v49 = v46;
        }
      }

      else
      {
        v8 = *(v65 + 376);
        v36 = *(v65 + 344);
        v34 = *(v65 + 352);
        v35 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        (*(v34 + 16))(v8, v35, v36);
        swift_endAccess();

        v37 = swift_allocObject();
        *(v37 + 16) = v55;
        *(v37 + 24) = v56;
        oslog = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        v39 = swift_allocObject();
        *(v39 + 16) = 32;
        v40 = swift_allocObject();
        *(v40 + 16) = 8;
        v38 = swift_allocObject();
        *(v38 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
        *(v38 + 24) = v37;
        v41 = swift_allocObject();
        *(v41 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v41 + 24) = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v42 = v9;

        *v42 = partial apply for closure #1 in OSLogArguments.append(_:);
        v42[1] = v39;

        v42[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v42[3] = v40;

        v42[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v42[5] = v41;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(oslog, v44))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v32 = createStorage<A>(capacity:type:)(0, v30, v30);
          v33 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v70 = buf;
          v71 = v32;
          v72 = v33;
          serialize(_:at:)(2, &v70);
          serialize(_:at:)(1, &v70);
          v73 = partial apply for closure #1 in OSLogArguments.append(_:);
          v74 = v39;
          closure #1 in osLogInternal(_:log:type:)(&v73, &v70, &v71, &v72);
          v73 = partial apply for closure #1 in OSLogArguments.append(_:);
          v74 = v40;
          closure #1 in osLogInternal(_:log:type:)(&v73, &v70, &v71, &v72);
          v73 = partial apply for closure #1 in OSLogArguments.append(_:);
          v74 = v41;
          closure #1 in osLogInternal(_:log:type:)(&v73, &v70, &v71, &v72);
          _os_log_impl(&dword_269912000, oslog, v44, "Unexpected displayStrength string format: %s", buf, 0xCu);
          destroyStorage<A>(_:count:)(v32, 0, v30);
          destroyStorage<A>(_:count:)(v33, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v28 = *(v65 + 376);
        v29 = *(v65 + 344);
        v27 = *(v65 + 352);
        MEMORY[0x277D82BD8](oslog);
        (*(v27 + 8))(v28, v29);

        v47 = 0;
        v48 = 0;
        v49 = 0;
      }
    }

    else
    {
      v10 = *(v65 + 368);
      v23 = *(v65 + 344);
      v21 = *(v65 + 352);
      v22 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v21 + 16))(v10, v22, v23);
      swift_endAccess();
      log = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v26 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v24))
      {
        v17 = static UnsafeMutablePointer.allocate(capacity:)();
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v18 = createStorage<A>(capacity:type:)(0, v16, v16);
        v19 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v65 + 280) = v17;
        *(v65 + 288) = v18;
        *(v65 + 296) = v19;
        serialize(_:at:)(0, (v65 + 280));
        serialize(_:at:)(0, (v65 + 280));
        *(v65 + 304) = v26;
        v20 = swift_task_alloc();
        v20[2] = v65 + 280;
        v20[3] = v65 + 288;
        v20[4] = v65 + 296;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, log, v24, "getAsNeededStrengthFromHealthApp: Couldn't find displayStrength in UserTrackedMeds", v17, 2u);
        destroyStorage<A>(_:count:)(v18, 0, v16);
        destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v17, MEMORY[0x277D84B78]);
      }

      v14 = *(v65 + 368);
      v15 = *(v65 + 344);
      v13 = *(v65 + 352);
      MEMORY[0x277D82BD8](log);
      (*(v13 + 8))(v14, v15);

      v47 = 0;
      v48 = 0;
      v49 = 0;
    }

    v11 = *(*(v65 + 232) + 8);

    return v11(v47, v48, v49);
  }
}

{
  v34 = v0;
  v19 = v0[50];
  v1 = v0[45];
  v16 = v0[44];
  v18 = v0[43];
  v0[29] = v0;
  v2 = v19;
  v0[30] = v19;
  v17 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v16 + 16))(v1, v17, v18);
  swift_endAccess();
  v3 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v26 = v4;

  *v26 = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[1] = v23;

  v26[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[3] = v24;

  v26[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v27, v28))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v13;
    v31 = v14;
    serialize(_:at:)(2, &v29);
    serialize(_:at:)(1, &v29);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_269912000, v27, v28, "Error doing UTC Query for Medications: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v15[50];
  v8 = v15[45];
  v9 = v15[43];
  v7 = v15[44];
  MEMORY[0x277D82BD8](v27);
  (*(v7 + 8))(v8, v9);

  v5 = *(v15[29] + 8);

  return v5(0, 0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[56] = a4;
  v4[55] = a3;
  v4[54] = a2;
  v4[53] = a1;
  v4[23] = v4;
  v4[17] = 0;
  v4[18] = 0;
  v4[19] = 0;
  v4[20] = 0;
  v4[21] = 0;
  v4[22] = 0;
  v4[28] = 0;
  v4[29] = 0;
  v4[40] = 0;
  v4[47] = 0;
  v4[48] = 0;
  v5 = type metadata accessor for Logger();
  v4[57] = v5;
  v4[58] = *(v5 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v4[64] = v6;
  v4[65] = *(v6 - 8);
  v4[66] = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  v4[67] = v7;
  v4[68] = *(v7 - 8);
  v4[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v4[71] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v4[72] = swift_task_alloc();
  v8 = type metadata accessor for DateComponents();
  v4[73] = v8;
  v4[74] = *(v8 - 8);
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v4[77] = v9;
  v4[78] = *(v9 - 8);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:), 0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)()
{
  v133 = v0;
  v128 = "Fatal error";
  v129 = "Unexpectedly found nil while unwrapping an Optional value";
  v130 = "SiriWellnessIntents/LogSpecificMedicationsIntentHandler.swift";
  v131 = partial apply for closure #1 in osLogInternal(_:log:type:);
  v132 = *(v0 + 432);
  *(v0 + 184) = v0;

  if (v132)
  {
    v1 = v127;
    v106 = *(v127 + 432);
    v2 = v106;
    v115 = *(v127 + 656);
    v3 = *(v127 + 624);
    v126 = *(v127 + 616);
    v114 = *(v127 + 608);
    v117 = *(v127 + 600);
    v4 = *(v127 + 592);
    v118 = *(v127 + 584);
    v108 = *(v127 + 576);
    v109 = *(v127 + 568);
    v124 = *(v127 + 560);
    v120 = *(v127 + 552);
    v5 = *(v127 + 544);
    v121 = *(v127 + 536);
    v6 = *(v127 + 424);
    v123 = v3;
    v113 = v4;
    v116 = v4;
    v107 = v5;
    v119 = v5;
    v122 = v127 + 168;
    *(v127 + 168) = v6;
    *(v1 + 176) = v2;
    Date.init()();
    v7 = *(v107 + 56);
    v125 = 1;
    v7(v108, 1, 1, v121);
    v110 = 0;
    v8 = type metadata accessor for TimeZone();
    (*(*(v8 - 8) + 56))(v109, 1);
    v111 = &v34;
    v34 = 0;
    v112 = 1;
    LOBYTE(v35) = 1;
    v36 = 0;
    v37 = 1;
    v38 = 0;
    v39 = 1;
    v40 = 0;
    v41 = 1;
    v42 = 0;
    v43 = 1;
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v48 = 0;
    v49 = 1;
    v50 = 0;
    v51 = 1;
    v52 = 0;
    v53 = 1;
    v54 = 0;
    v55 = 1;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.day.setter();
    static Calendar.current.getter();
    (*(v113 + 16))(v117, v114, v118);
    default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
    Calendar.date(byAdding:to:wrappingComponents:)();
    v9 = v117;
    v10 = v118;
    v11 = v127;
    v12 = v116 + 8;
    v13 = *(v116 + 8);
    *(v127 + 664) = v13;
    *(v11 + 672) = v12 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v10);
    (*(v119 + 8))(v120, v121);
    if ((*(v123 + 48))(v124, v125, v126) == 1)
    {
      LOBYTE(v34) = 2;
      v35 = 966;
      LODWORD(v36) = 0;
      return _assertionFailure(_:_:file:line:flags:)();
    }

    else
    {
      v97 = *(v127 + 656);
      v96 = *(v127 + 648);
      v103 = *(v127 + 640);
      v102 = *(v127 + 632);
      v15 = *(v127 + 624);
      v98 = *(v127 + 616);
      v101 = *(v127 + 528);
      v104 = *(v127 + 424);
      v95 = v15;
      (*(v15 + 32))();
      v100 = *(v95 + 16);
      v99 = v95 + 16;
      v100(v103, v96, v98);
      v100(v102, v97, v98);
      DateInterval.init(start:end:)();
      type metadata accessor for HKMedicationIdentifier();

      v105 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)(v104, v106);
      *(v127 + 680) = v105;
      v16 = swift_task_alloc();
      v17 = v127;
      v18 = v105;
      *(v127 + 688) = v16;
      *v16 = v17[23];
      v16[1] = SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:);
      v19 = v17[66];
      v20 = v17[56];
      v21 = v17[55];

      return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v19, v18, v21, v20);
    }
  }

  else
  {
    v22 = *(v127 + 480);
    v23 = *(v127 + 464);
    v90 = *(v127 + 456);
    v88 = v23;
    v89 = Logger.wellnessIntents.unsafeMutableAddressor();
    v91 = v127 + 16;
    swift_beginAccess();
    (*(v88 + 16))(v22, v89, v90);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v94 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v92))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v78 = 0;
      v80 = createStorage<A>(capacity:type:)(0, v77, v77);
      v24 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v25 = v80;
      v26 = v127;
      v81 = v24;
      v27 = (v127 + 192);
      v83 = (v127 + 192);
      *(v127 + 192) = buf;
      v84 = v26 + 200;
      *(v26 + 200) = v25;
      v85 = v26 + 208;
      *(v26 + 208) = v24;
      v82 = 0;
      serialize(_:at:)(0, v27);
      serialize(_:at:)(0, v83);
      *(v127 + 216) = v94;
      v28 = swift_task_alloc();
      v29 = v84;
      v30 = v85;
      v86 = v28;
      v28[2] = v83;
      v28[3] = v29;
      v28[4] = v30;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v92, "medicationID passed into getAsNeededDosageFromHealthApp was nil, returning 1.0", buf, 2u);
      v76 = 0;
      destroyStorage<A>(_:count:)(v80, 0, v77);
      destroyStorage<A>(_:count:)(v81, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v57 = *(v127 + 480);
    v31 = *(v127 + 464);
    v58 = *(v127 + 456);
    v56 = v31;
    MEMORY[0x277D82BD8](oslog);
    (*(v56 + 8))(v57, v58);
    v74 = v127 + 136;
    v75 = v127 + 152;
    v59 = *(v127 + 648);
    v60 = *(v127 + 640);
    v61 = *(v127 + 632);
    v62 = *(v127 + 608);
    v63 = *(v127 + 600);
    v64 = *(v127 + 576);
    v65 = *(v127 + 568);
    v66 = *(v127 + 560);
    v67 = *(v127 + 552);
    v68 = *(v127 + 528);
    v69 = *(v127 + 504);
    v70 = *(v127 + 496);
    v71 = *(v127 + 488);
    v72 = *(v127 + 480);
    v73 = *(v127 + 472);

    v32 = *(*(v127 + 184) + 8);
    v33.n128_u64[0] = 1.0;

    return v32(v33);
  }
}

{
  v114 = v0[87];
  v0[23] = v0;

  v0[28] = v114;
  v0[30] = v114;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v115 = Collection.isEmpty.getter();

  if (v115)
  {
    v9 = *(v112 + 488);
    v34 = *(v112 + 456);
    v32 = *(v112 + 464);
    v33 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v32 + 16))(v9, v33, v34);
    swift_endAccess();
    log = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v37 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v35))
    {
      v10 = *(v112 + 704);
      v28 = static UnsafeMutablePointer.allocate(capacity:)();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v29 = createStorage<A>(capacity:type:)(0, v27, v27);
      v30 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v112 + 248) = v28;
      *(v112 + 256) = v29;
      *(v112 + 264) = v30;
      serialize(_:at:)(0, (v112 + 248));
      serialize(_:at:)(0, (v112 + 248));
      *(v112 + 272) = v37;
      v31 = swift_task_alloc();
      v31[2] = v112 + 248;
      v31[3] = v112 + 256;
      v31[4] = v112 + 264;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v10)
      {
      }

      _os_log_impl(&dword_269912000, log, v35, "No previously logged As Needed dose events in health app. Falling back to dosage == 1.", v28, 2u);
      destroyStorage<A>(_:count:)(v29, 0, v27);
      destroyStorage<A>(_:count:)(v30, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v28, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v23 = *(v112 + 664);
    v24 = *(v112 + 656);
    v20 = *(v112 + 648);
    v25 = *(v112 + 616);
    v21 = *(v112 + 608);
    v22 = *(v112 + 584);
    v18 = *(v112 + 528);
    v17 = *(v112 + 512);
    v14 = *(v112 + 488);
    v15 = *(v112 + 456);
    v19 = *(v112 + 624);
    v16 = *(v112 + 520);
    v13 = *(v112 + 464);
    MEMORY[0x277D82BD8](log);
    (*(v13 + 8))(v14, v15);
    outlined destroy of [HKQuantityType]((v112 + 224));
    (*(v16 + 8))(v18, v17);
    v26 = *(v19 + 8);
    v26(v20, v25);
    v23(v21, v22);
    v26(v24, v25);

    v96 = 1.0;
    goto LABEL_29;
  }

  v110 = *(v112 + 224);

  *(v112 + 280) = v110;
  Collection.first.getter();
  v111 = *(v112 + 288);

  if (v111)
  {
    v108 = [v111 scheduledDoseQuantity];
    MEMORY[0x277D82BD8](v111);
    v109 = v108;
  }

  else
  {
    v109 = 0;
  }

  if (!v109)
  {
    v4 = *(v112 + 704);
    v79 = *(v112 + 224);

    *(v112 + 304) = v79;
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    result = Sequence.sorted(by:)();
    v80 = result;
    if (v4)
    {
      return result;
    }

    outlined destroy of [HKQuantityType]((v112 + 304));
    *(v112 + 312) = v80;
    v6 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    MEMORY[0x26D649280](v113, v6);
    v77 = *(v112 + 296);
    *(v112 + 320) = v77;
    *(v112 + 328) = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMR);
    lazy protocol witness table accessor for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>();
    Collection.first.getter();
    v78 = *(v112 + 336);
    if (v78)
    {
      v75 = [v78 doseQuantity];
      MEMORY[0x277D82BD8](v78);
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    if (v76)
    {
      v70 = *(v112 + 664);
      v71 = *(v112 + 656);
      v67 = *(v112 + 648);
      v72 = *(v112 + 616);
      v68 = *(v112 + 608);
      v69 = *(v112 + 584);
      v65 = *(v112 + 528);
      v64 = *(v112 + 512);
      v66 = *(v112 + 624);
      v63 = *(v112 + 520);
      *(v112 + 376) = v76;
      [v76 doubleValue];
      v74 = v7;
      MEMORY[0x277D82BD8](v76);

      outlined destroy of [HKQuantityType]((v112 + 224));
      (*(v63 + 8))(v65, v64);
      v73 = *(v66 + 8);
      v73(v67, v72);
      v70(v68, v69);
      v73(v71, v72);

      v96 = v74;
    }

    else
    {
      v8 = *(v112 + 496);
      v59 = *(v112 + 456);
      v57 = *(v112 + 464);
      v58 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v57 + 16))(v8, v58, v59);
      swift_endAccess();
      oslog = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v62 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v60))
      {
        v53 = static UnsafeMutablePointer.allocate(capacity:)();
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v54 = createStorage<A>(capacity:type:)(0, v52, v52);
        v55 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v112 + 344) = v53;
        *(v112 + 352) = v54;
        *(v112 + 360) = v55;
        serialize(_:at:)(0, (v112 + 344));
        serialize(_:at:)(0, (v112 + 344));
        *(v112 + 368) = v62;
        v56 = swift_task_alloc();
        v56[2] = v112 + 344;
        v56[3] = v112 + 352;
        v56[4] = v112 + 360;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, oslog, v60, "No previously logged As Needed dose events in health app. Falling back to dosage == 1.", v53, 2u);
        destroyStorage<A>(_:count:)(v54, 0, v52);
        destroyStorage<A>(_:count:)(v55, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v53, MEMORY[0x277D84B78]);
      }

      v48 = *(v112 + 664);
      v49 = *(v112 + 656);
      v45 = *(v112 + 648);
      v50 = *(v112 + 616);
      v46 = *(v112 + 608);
      v47 = *(v112 + 584);
      v43 = *(v112 + 528);
      v42 = *(v112 + 512);
      v39 = *(v112 + 496);
      v40 = *(v112 + 456);
      v44 = *(v112 + 624);
      v41 = *(v112 + 520);
      v38 = *(v112 + 464);
      MEMORY[0x277D82BD8](oslog);
      (*(v38 + 8))(v39, v40);

      outlined destroy of [HKQuantityType]((v112 + 224));
      (*(v41 + 8))(v43, v42);
      v51 = *(v44 + 8);
      v51(v45, v50);
      v48(v46, v47);
      v51(v49, v50);

      v96 = 1.0;
    }

    goto LABEL_29;
  }

  v1 = *(v112 + 504);
  v104 = *(v112 + 456);
  v102 = *(v112 + 464);
  *(v112 + 384) = v109;
  v103 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v102 + 16))(v1, v103, v104);
  swift_endAccess();
  v106 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v107 = _allocateUninitializedArray<A>(_:)();
  if (!os_log_type_enabled(v106, v105))
  {

    goto LABEL_10;
  }

  v2 = *(v112 + 704);
  buf = static UnsafeMutablePointer.allocate(capacity:)();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v99 = createStorage<A>(capacity:type:)(0, v97, v97);
  v100 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
  *(v112 + 392) = buf;
  *(v112 + 400) = v99;
  *(v112 + 408) = v100;
  serialize(_:at:)(0, (v112 + 392));
  serialize(_:at:)(0, (v112 + 392));
  *(v112 + 416) = v107;
  v101 = swift_task_alloc();
  v101[2] = v112 + 392;
  v101[3] = v112 + 400;
  v101[4] = v112 + 408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
  Sequence.forEach(_:)();
  if (v2)
  {
  }

  _os_log_impl(&dword_269912000, v106, v105, "This is a scheduled med. Whether being taken per schedule or As Needed, return the scheduledDoseQuantity.", buf, 2u);
  destroyStorage<A>(_:count:)(v99, 0, v97);
  destroyStorage<A>(_:count:)(v100, 0, MEMORY[0x277D84F70] + 8);
  MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

LABEL_10:
  v91 = *(v112 + 664);
  v92 = *(v112 + 656);
  v88 = *(v112 + 648);
  v93 = *(v112 + 616);
  v89 = *(v112 + 608);
  v90 = *(v112 + 584);
  v86 = *(v112 + 528);
  v85 = *(v112 + 512);
  v82 = *(v112 + 504);
  v83 = *(v112 + 456);
  v87 = *(v112 + 624);
  v84 = *(v112 + 520);
  v81 = *(v112 + 464);
  MEMORY[0x277D82BD8](v106);
  (*(v81 + 8))(v82, v83);
  [v109 doubleValue];
  v95 = v3;
  MEMORY[0x277D82BD8](v109);
  outlined destroy of [HKQuantityType]((v112 + 224));
  (*(v84 + 8))(v86, v85);
  v94 = *(v87 + 8);
  v94(v88, v93);
  v91(v89, v90);
  v94(v92, v93);

  v96 = v95;
LABEL_29:

  v11.n128_f64[0] = v96;
  v12 = *(*(v112 + 184) + 8);

  return v12(v11);
}

{
  v47 = v0;
  v32 = v0[88];
  v1 = v0[85];
  v2 = v0[59];
  v29 = v0[58];
  v31 = v0[57];
  v0[23] = v0;
  MEMORY[0x277D82BD8](v1);
  v3 = v32;
  v0[29] = v32;
  v30 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v29 + 16))(v2, v30, v31);
  swift_endAccess();
  v4 = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = 64;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v34 + 24) = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v35 + 24) = v34;
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v38 + 24) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v39 = v5;

  *v39 = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[1] = v36;

  v39[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[3] = v37;

  v39[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[5] = v38;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v40, v41))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v26 = createStorage<A>(capacity:type:)(1, v24, v24);
    v27 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v42 = buf;
    v43 = v26;
    v44 = v27;
    serialize(_:at:)(2, &v42);
    serialize(_:at:)(1, &v42);
    v45 = partial apply for closure #1 in OSLogArguments.append(_:);
    v46 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v45, &v42, &v43, &v44);
    v45 = partial apply for closure #1 in OSLogArguments.append(_:);
    v46 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v45, &v42, &v43, &v44);
    v45 = partial apply for closure #1 in OSLogArguments.append(_:);
    v46 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v45, &v42, &v43, &v44);
    _os_log_impl(&dword_269912000, v40, v41, "Failed to write doseEvents: %@. Falling back to dosage == 1.", buf, 0xCu);
    destroyStorage<A>(_:count:)(v26, 1, v24);
    destroyStorage<A>(_:count:)(v27, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v28[88];
  v20 = v28[83];
  v21 = v28[82];
  v17 = v28[81];
  v22 = v28[77];
  v18 = v28[76];
  v19 = v28[73];
  v14 = v28[66];
  v15 = v28[64];
  v10 = v28[59];
  v11 = v28[57];
  v16 = v28[78];
  v13 = v28[65];
  v9 = v28[58];
  MEMORY[0x277D82BD8](v40);
  (*(v9 + 8))(v10, v11);

  (*(v13 + 8))(v14, v15);
  v23 = *(v16 + 8);
  v23(v17, v22);
  v20(v18, v19);
  v23(v21, v22);

  v6 = *(v28[23] + 8);
  v7.n128_u64[0] = 1.0;

  return v6(v7);
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 184) = *v2;
  *(v5 + 696) = a1;
  *(v5 + 704) = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:);
  }

  else
  {

    v3 = SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t implicit closure #2 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 scheduleID];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 name];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 schedule];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #6 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 loggedTime];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #10 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  [a1 strength];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  lazy protocol witness table accessor for type NSNumber? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #11 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 strengthUnit];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #12 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 completionStatus];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t protocol witness for SpecificMedicationsPersisting.isLoggingAuthorized() in conformance SpecificMedicationsPersistor()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *v0;
  v5 = v0[1];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return SpecificMedicationsPersistor.isLoggingAuthorized()(v6, v5);
}

uint64_t protocol witness for SpecificMedicationsPersisting.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:) in conformance SpecificMedicationsPersistor(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v11 = v8;
  *(v8 + 16) = v8;
  v9 = swift_task_alloc();
  *(v11 + 24) = v9;
  *v9 = *(v11 + 16);
  v9[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:)(a1, a2, a3 & 1, a4, a5 & 1, a6, a7 & 1, a8);
}

uint64_t protocol witness for SpecificMedicationsPersisting.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:) in conformance SpecificMedicationsPersistor(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v11 = v8;
  *(v8 + 16) = v8;
  v9 = swift_task_alloc();
  *(v11 + 24) = v9;
  *v9 = *(v11 + 16);
  v9[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(a1, a2, a3, a4 & 1, a5, a6 & 1, a7, a8);
}

uint64_t protocol witness for SpecificMedicationsPersisting.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:) in conformance SpecificMedicationsPersistor(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8;
  *(v8 + 16) = v8;
  v9 = swift_task_alloc();
  *(v11 + 24) = v9;
  *v9 = *(v11 + 16);
  v9[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)(a1, a2, a3 & 1, a4, a5 & 1, a6, a7, a8);
}

uint64_t protocol witness for SpecificMedicationsPersisting.displayNameFor(identifier:) in conformance SpecificMedicationsPersistor(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for SpecificMedicationsPersisting.displayNameFor(identifier:) in conformance SpecificMedicationsPersistor;

  return SpecificMedicationsPersistor.displayNameFor(identifier:)(a1, a2, v8, v9);
}

{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t protocol witness for SpecificMedicationsPersisting.sampleScheduleIDFor(dateInterval:) in conformance SpecificMedicationsPersistor(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for SpecificMedicationsPersisting.displayNameFor(identifier:) in conformance SpecificMedicationsPersistor;

  return SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:)(a1, v6, v7);
}

uint64_t SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = v3;
  v3[13] = 0;
  v3[8] = 0;
  v3[9] = 0;
  v3[14] = 0;
  v3[15] = 0;
  v3[10] = 0;
  v3[11] = 0;
  v4 = type metadata accessor for Logger();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[13] = a1;
  v3[8] = a2;
  v3[9] = a3;
  v5 = swift_task_alloc();
  *(v7 + 208) = v5;
  *v5 = *(v7 + 96);
  v5[1] = SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:);

  return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(a1, 0, a2, a3);
}

uint64_t SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:)(uint64_t a1)
{
  v5 = *v2;
  v5[12] = *v2;
  v5[27] = a1;
  v5[28] = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:);
  }

  else
  {
    v3 = SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:)()
{
  v40 = v0;
  v33 = v0[27];
  v0[12] = v0;

  v0[14] = v33;
  v0[20] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection.first.getter();
  v34 = v0[21];

  if (v34)
  {
    v31 = [v34 scheduleItemIdentifier];
    if (v31)
    {
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v1;
      MEMORY[0x277D82BD8](v31);
      v29 = v27;
      v30 = v28;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    MEMORY[0x277D82BD8](v34);
    v25 = v29;
    v26 = v30;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v2 = v32[25];
  v16 = v32[22];
  v14 = v32[23];
  v32[10] = v25;
  v32[11] = v26;
  v15 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v14 + 16))(v2, v15, v16);
  swift_endAccess();

  v17 = swift_allocObject();
  *(v17 + 16) = v25;
  *(v17 + 24) = v26;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = 32;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v18 + 24) = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v21 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v22 = v3;

  *v22 = partial apply for closure #1 in OSLogArguments.append(_:);
  v22[1] = v19;

  v22[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v22[3] = v20;

  v22[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v22[5] = v21;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v23, v24))
  {
    v4 = v32[28];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v35 = buf;
    v36 = v12;
    v37 = v13;
    serialize(_:at:)(2, &v35);
    serialize(_:at:)(1, &v35);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v19;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    if (v4)
    {
    }

    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v20;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_269912000, v23, v24, "got scheduleItemIdentifier: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v32[25];
  v9 = v32[22];
  v7 = v32[23];
  MEMORY[0x277D82BD8](v23);
  (*(v7 + 8))(v8, v9);
  outlined destroy of [HKQuantityType](v32 + 14);

  v6 = *(v32[12] + 8);

  return v6(v25, v26);
}

{
  v15 = v0[28];
  v1 = v0[24];
  v16 = v0[23];
  v18 = v0[22];
  v0[12] = v0;
  v2 = v15;
  v0[15] = v15;
  v17 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v16 + 16))(v1, v17, v18);
  swift_endAccess();
  v20 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v20, v19))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 128) = buf;
    *(v14 + 136) = v11;
    *(v14 + 144) = v12;
    serialize(_:at:)(0, (v14 + 128));
    serialize(_:at:)(0, (v14 + 128));
    *(v14 + 152) = v21;
    v13 = swift_task_alloc();
    v13[2] = v14 + 128;
    v13[3] = v14 + 136;
    v13[4] = v14 + 144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v20, v19, "Failed fetching dose events for specified timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v14 + 224);
  v6 = *(v14 + 192);
  v7 = *(v14 + 176);
  v5 = *(v14 + 184);
  MEMORY[0x277D82BD8](v20);
  (*(v5 + 8))(v6, v7);

  v3 = *(*(v14 + 96) + 8);

  return v3(0);
}

uint64_t protocol witness for SpecificMedicationsPersisting.buildMatchedMedName(from:shouldIncludeAsNeededParams:) in conformance SpecificMedicationsPersistor(uint64_t a1, char a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(a1, a2 & 1, v8, v9);
}

uint64_t SpecificMedicationsPersistor.doUTCQueryForMedications()(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v2[6] = a1;
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.doUTCQueryForMedications(), 0);
}

uint64_t SpecificMedicationsPersistor.doUTCQueryForMedications()()
{
  v6 = v0[7];
  v5 = v0[6];
  v0[4] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("doUTCQueryForMedications()", 0x1AuLL, 1);
  v0[8] = v1._object;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](v6);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v2 = swift_task_alloc();
  *(v7 + 80) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  *v2 = *(v7 + 32);
  v2[1] = SpecificMedicationsPersistor.doUTCQueryForMedications();

  return MEMORY[0x2822008A0](v7 + 40, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications(), v8, v3);
}

{
  v6 = *v1;
  v6[4] = *v1;
  v6[11] = v0;

  if (v0)
  {
    v2 = SpecificMedicationsPersistor.doUTCQueryForMedications();
  }

  else
  {
    v5 = v6[7];
    v4 = v6[6];

    v2 = SpecificMedicationsPersistor.doUTCQueryForMedications();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 32) = v0;
  return (*(*(v0 + 32) + 8))(*(v0 + 40));
}

{
  v4 = v0[7];
  v3 = v0[6];
  v0[4] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[4] + 8);

  return v1();
}

uint64_t closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications()(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  v13 = partial apply for closure #1 in closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications();
  v14 = "Fatal error";
  v15 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v16 = "SiriWellnessIntents/LogSpecificMedicationsIntentHandler.swift";
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR);
  v22 = *(v20 - 8);
  v21 = v20 - 8;
  v23 = v22;
  v24 = *(v22 + 64);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v17);
  v26 = &v7 - v25;
  v34 = v3;
  v32 = v4;
  v33 = v5;
  v27 = 0;
  v28 = type metadata accessor for HKUserTrackedConceptQuery();
  type metadata accessor for HKUserTrackedConceptType();
  v29 = *MEMORY[0x277CCCE88];
  MEMORY[0x277D82BE0](v29);
  v30 = HKUserTrackedConceptType.__allocating_init(identifier:)(v29);
  if (v30)
  {
    v12 = v30;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v10 = v12;
  v7 = v23;
  (*(v22 + 16))(v26, v19, v20);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = swift_allocObject();
  (*(v22 + 32))(v9 + v8, v26, v20);
  v11 = HKUserTrackedConceptQuery.__allocating_init(userTrackedConceptType:predicate:sortDescriptors:resultsHandler:)(v10, 0, 0, v13, v9);
  v31 = v11;
  MEMORY[0x277D82BE0](v17);
  [v17 executeQuery_];
  MEMORY[0x277D82BD8](v17);
  return MEMORY[0x277D82BD8](v11);
}

uint64_t closure #1 in closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v121 = a4;
  v130 = a3;
  v122 = a2;
  v120 = a1;
  v118 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v119 = 0;
  v146 = 0;
  v145 = 0;
  v144[1] = 0;
  v144[0] = 0;
  v140 = 0;
  v139 = 0;
  v137 = 0;
  v123 = type metadata accessor for Logger();
  v124 = *(v123 - 8);
  v125 = v124;
  v126 = *(v124 + 64);
  MEMORY[0x28223BE20](v130, v122);
  v128 = (v126 + 15) & 0xFFFFFFFFFFFFFFF0;
  v127 = v36 - v128;
  MEMORY[0x28223BE20](v4, v5);
  v129 = v36 - v128;
  v155 = v6;
  v154 = v7;
  v153 = v8;
  v152 = v9;
  v10 = v8;
  if (v130)
  {
    v117 = v130;
    v11 = v129;
    v97 = v130;
    v137 = v130;
    v95 = Logger.wellnessIntents.unsafeMutableAddressor();
    v103 = 32;
    v96 = &v136;
    swift_beginAccess();
    (*(v125 + 16))(v11, v95, v123);
    swift_endAccess();
    v12 = v97;
    v104 = 7;
    v105 = swift_allocObject();
    *(v105 + 16) = v97;
    v115 = Logger.logObject.getter();
    v98 = v115;
    v114 = static os_log_type_t.error.getter();
    v99 = v114;
    v100 = 17;
    v108 = swift_allocObject();
    v101 = v108;
    *(v108 + 16) = 64;
    v109 = swift_allocObject();
    v102 = v109;
    *(v109 + 16) = 8;
    v13 = swift_allocObject();
    v14 = v105;
    v106 = v13;
    *(v13 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v106;
    v112 = v15;
    v107 = v15;
    *(v15 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v15 + 24) = v16;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v110 = _allocateUninitializedArray<A>(_:)();
    v111 = v17;

    v18 = v108;
    v19 = v111;
    *v111 = partial apply for closure #1 in OSLogArguments.append(_:);
    v19[1] = v18;

    v20 = v109;
    v21 = v111;
    v111[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v21[3] = v20;

    v22 = v111;
    v23 = v112;
    v111[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v22[5] = v23;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v115, v114))
    {
      v25 = v119;
      v88 = static UnsafeMutablePointer.allocate(capacity:)();
      v85 = v88;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v91 = 1;
      v89 = createStorage<A>(capacity:type:)(1, v86, v86);
      v87 = v89;
      v90 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v135[0] = v88;
      v134 = v89;
      v133 = v90;
      v92 = v135;
      serialize(_:at:)(2, v135);
      serialize(_:at:)(v91, v92);
      v131 = partial apply for closure #1 in OSLogArguments.append(_:);
      v132 = v101;
      closure #1 in osLogInternal(_:log:type:)(&v131, v92, &v134, &v133);
      v93 = v25;
      v94 = v25;
      if (v25)
      {
        v83 = 0;

        __break(1u);
      }

      else
      {
        v131 = partial apply for closure #1 in OSLogArguments.append(_:);
        v132 = v102;
        closure #1 in osLogInternal(_:log:type:)(&v131, v135, &v134, &v133);
        v81 = 0;
        v82 = 0;
        v131 = partial apply for closure #1 in OSLogArguments.append(_:);
        v132 = v107;
        closure #1 in osLogInternal(_:log:type:)(&v131, v135, &v134, &v133);
        v79 = 0;
        v80 = 0;
        _os_log_impl(&dword_269912000, v98, v99, "Error while querying HealthKit for medication samples: %@", v85, 0xCu);
        destroyStorage<A>(_:count:)(v87, 1, v86);
        destroyStorage<A>(_:count:)(v90, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v85, MEMORY[0x277D84B78]);

        v84 = v79;
      }
    }

    else
    {
      v26 = v119;

      v84 = v26;
    }

    v77 = v84;

    (*(v125 + 8))(v129, v123);
    v27 = v97;
    v135[1] = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();

    return v77;
  }

  else
  {

    if (v122)
    {
      v116 = v122;
      v66 = v122;
      v146 = v122;
      v64 = 0;
      v65 = type metadata accessor for HKUserTrackedMedication();
      v145 = _allocateUninitializedArray<A>(_:)();

      v143 = v66;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20HKUserTrackedConceptCGMd, &_sSaySo20HKUserTrackedConceptCGMR);
      lazy protocol witness table accessor for type [HKUserTrackedConcept] and conformance [A]();
      Collection<>.makeIterator()();
      for (i = v119; ; i = v53)
      {
        v62 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo20HKUserTrackedConceptCGGMd, &_ss16IndexingIteratorVySaySo20HKUserTrackedConceptCGGMR);
        IndexingIterator.next()();
        v63 = v142;
        if (!v142)
        {
          break;
        }

        v61 = v63;
        v58 = v63;
        v140 = v63;
        v29 = v63;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        v59 = v30;
        if (v30)
        {
          v57 = v59;
        }

        else
        {

          v57 = 0;
        }

        v56 = v57;
        if (v57)
        {
          v55 = v56;
          v54 = v56;
          v139 = v56;
          v31 = v56;
          v138 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
          Array.append(_:)();
        }

        v53 = v62;
      }

      outlined destroy of [HKQuantityType](v144);
      v60 = v145;

      v141 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      outlined destroy of [HKQuantityType](&v145);

      return v62;
    }

    else
    {
      v28 = v127;
      v69 = Logger.wellnessIntents.unsafeMutableAddressor();
      v70 = &v151;
      v73 = 0;
      swift_beginAccess();
      (*(v125 + 16))(v28, v69, v123);
      swift_endAccess();
      v75 = Logger.logObject.getter();
      v71 = v75;
      v74 = static os_log_type_t.error.getter();
      v72 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v76 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v75, v74))
      {
        v32 = v119;
        v44 = static UnsafeMutablePointer.allocate(capacity:)();
        v40 = v44;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v42 = 0;
        v45 = createStorage<A>(capacity:type:)(0, v41, v41);
        v43 = v45;
        v46 = createStorage<A>(capacity:type:)(v42, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v150[0] = v44;
        v149 = v45;
        v148 = v46;
        v47 = 0;
        v48 = v150;
        serialize(_:at:)(0, v150);
        serialize(_:at:)(v47, v48);
        v147 = v76;
        v49 = v36;
        MEMORY[0x28223BE20](v36, v33);
        v50 = &v36[-6];
        v36[-4] = v34;
        v36[-3] = &v149;
        v36[-2] = &v148;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v52 = v32;
        if (v32)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_269912000, v71, v72, "No dose events found using HKUserTrackedConceptQuery, returning empty array", v40, 2u);
          v38 = 0;
          destroyStorage<A>(_:count:)(v43, 0, v41);
          destroyStorage<A>(_:count:)(v46, v38, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v40, MEMORY[0x277D84B78]);

          v39 = v52;
        }
      }

      else
      {

        v39 = v119;
      }

      v37 = v39;

      (*(v125 + 8))(v127, v123);
      v36[1] = 0;
      v36[2] = type metadata accessor for HKUserTrackedMedication();
      v150[1] = _allocateUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      return v37;
    }
  }
}

uint64_t SpecificMedicationsPersistor.UTCQuery()(uint64_t a1, uint64_t a2)
{
  v2[17] = v2;
  v2[5] = 0;
  v2[6] = 0;
  v2[18] = 0;
  v2[19] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[22] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v3 = type metadata accessor for Logger();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[5] = a1;
  v2[6] = a2;
  v4 = swift_task_alloc();
  *(v6 + 208) = v4;
  *v4 = *(v6 + 136);
  v4[1] = SpecificMedicationsPersistor.UTCQuery();

  return SpecificMedicationsPersistor.doUTCQueryForMedications()(a1, a2);
}

uint64_t SpecificMedicationsPersistor.UTCQuery()(uint64_t a1)
{
  v6 = *v2;
  v6[17] = *v2;
  v6[27] = a1;
  v6[28] = v1;

  if (v1)
  {

    v4 = *(v6[17] + 8);

    return v4(v3);
  }

  else
  {

    return MEMORY[0x2822009F8](SpecificMedicationsPersistor.UTCQuery(), 0);
  }
}

uint64_t SpecificMedicationsPersistor.UTCQuery()()
{
  v48 = v0;
  v41 = v0[27];
  v0[17] = v0;
  v0[18] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  _allocateUninitializedArray<A>(_:)();
  v0[19] = Dictionary.init(dictionaryLiteral:)();

  v0[20] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  Collection<>.makeIterator()();
  v42 = v0[28];
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo23HKUserTrackedMedicationCGGMd, &_ss16IndexingIteratorVySaySo23HKUserTrackedMedicationCGGMR);
    IndexingIterator.next()();
    v39 = v40[21];
    if (!v39)
    {
      break;
    }

    v1 = v40[25];
    v29 = v40[23];
    v27 = v40[24];
    v40[22] = v39;
    v28 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v27 + 16))(v1, v28, v29);
    swift_endAccess();
    MEMORY[0x277D82BE0](v39);
    v30 = swift_allocObject();
    *(v30 + 16) = v39;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v31 = swift_allocObject();
    *(v31 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.UTCQuery();
    *(v31 + 24) = v30;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v34 + 24) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v35 = v2;

    *v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[1] = v32;

    v35[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[3] = v33;

    v35[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[5] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v36, v37))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v25 = createStorage<A>(capacity:type:)(0, v23, v23);
      v26 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v43 = buf;
      v44 = v25;
      v45 = v26;
      serialize(_:at:)(2, &v43);
      serialize(_:at:)(1, &v43);
      v46 = partial apply for closure #1 in OSLogArguments.append(_:);
      v47 = v32;
      closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
      if (v42)
      {
      }

      v46 = partial apply for closure #1 in OSLogArguments.append(_:);
      v47 = v33;
      closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
      v46 = partial apply for closure #1 in OSLogArguments.append(_:);
      v47 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
      _os_log_impl(&dword_269912000, v36, v37, "Got a medication: %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v21 = 0;
      v22 = 0;
    }

    else
    {

      v21 = v42;
      v22 = v38;
    }

    v9 = v40[25];
    v10 = v40[23];
    v8 = v40[24];
    MEMORY[0x277D82BD8](v36);
    (*(v8 + 8))(v9, v10);
    v11 = [v39 0x1FB7CA078];
    v12 = [v11 identifier];
    MEMORY[0x277D82BD8](v11);
    v13 = [v12 underlyingIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v4;
    v40[9] = v17;
    v40[10] = v4;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v14 = [v39 0x1FB7CA078];
    v15 = [v14 displayNameComponents];
    MEMORY[0x277D82BD8](v14);
    v16 = [v15 medicationDisplayName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v5;
    v40[11] = v18;
    v40[12] = v5;
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);

    v40[13] = v18;
    v40[14] = v19;
    v40[15] = v17;
    v40[16] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, _sSDyS2SGMR);
    Dictionary.subscript.setter();

    MEMORY[0x277D82BD8](v39);
    v42 = v21;
    v38 = v22;
  }

  outlined destroy of [HKQuantityType](v40 + 7);
  v7 = v40[19];

  outlined destroy of [HKQuantityType](v40 + 19);

  v6 = *(v40[17] + 8);

  return v6(v7);
}

uint64_t implicit closure #1 in SpecificMedicationsPersistor.UTCQuery()(void *a1)
{
  v2 = [a1 medication];
  v3 = [v2 displayNameComponents];
  MEMORY[0x277D82BD8](v2);
  v4 = [v3 medicationDisplayName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t closure #1 in SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v27 = 0;
  v26 = 0;
  v21 = type metadata accessor for Date();
  v16 = *(v21 - 8);
  v17 = v21 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v10);
  v18 = &v9 - v12;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v20 = &v9 - v13;
  v27 = *v6;
  v15 = *v7;
  v26 = v15;
  v14 = 0x1FB31F000uLL;
  v24 = [v27 0x1FB31F378];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = [v15 (v14 + 888)];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = static Date.< infix(_:_:)();
  v23 = *(v16 + 8);
  v22 = v16 + 8;
  v23(v18, v21);
  MEMORY[0x277D82BD8](v19);
  v23(v20, v21);
  MEMORY[0x277D82BD8](v24);
  return v25 & 1;
}

uint64_t closure #1 in SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(id *a1, uint64_t a2)
{
  v12 = 0;
  v11 = 0;
  v12 = *a1;
  v11 = a2;
  v10[2] = a2;
  v4 = [v12 medication];
  v5 = [v4 identifier];
  MEMORY[0x277D82BD8](v4);
  v8 = [v5 underlyingIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v2;
  MEMORY[0x277D82BD8](v5);
  v10[0] = v6;
  v10[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v9 = Sequence<>.contains(_:)();
  outlined destroy of String.UTF8View(v10);
  MEMORY[0x277D82BD8](v8);
  return v9 & 1;
}

uint64_t closure #2 in SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(id *a1, char a2)
{
  if (a2)
  {
    v3 = [*a1 hasSchedule] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}

uint64_t closure #3 in SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v146 = a5;
  v145 = a4;
  v147 = a3;
  v149 = *&a2;
  v148 = a1;
  v143 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0.0;
  v179 = 0;
  v178 = 0;
  v172 = 0;
  v171 = 0;
  v168 = 0;
  v161 = 0.0;
  v159 = 0;
  v158 = 0;
  v144 = a3 & 1;
  v150 = type metadata accessor for Logger();
  v151 = *(v150 - 8);
  v152 = v151;
  v153 = *(v151 + 64);
  MEMORY[0x28223BE20](v148, *&v149);
  v155 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  v154 = &v38 - v155;
  MEMORY[0x28223BE20](v5, v6);
  v156 = &v38 - v155;
  v157 = *v7;
  v185 = v157;
  v183 = v8;
  v184 = v9;
  v181 = v10;
  v182 = v11;
  if ((v12 & 1) != 0 || (v141 = v149, v140 = v149, v180 = v149, , !v146))
  {
    v102 = 1;
    v103 = v142;
  }

  else
  {
    v138 = v145;
    v139 = v146;
    v132 = v146;
    v133 = v145;
    v178 = v145;
    v179 = v146;
    v134 = [v157 medication];
    v136 = [v134 displayNameComponents];
    v135 = v136;

    v13 = [v136 displayStrength];
    v137 = v13;
    if (v13)
    {
      v131 = v137;
      v126 = v137;
      v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v14;

      v129 = v127;
      v130 = v128;
    }

    else
    {
      v129 = 0;
      v130 = 0;
    }

    v124 = v130;
    v125 = v129;
    if (v130)
    {
      v122 = v125;
      v123 = v124;
      v107 = v124;
      v106 = v125;
      v171 = v125;
      v172 = v124;

      v169 = v106;
      v170 = v107;
      v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1);
      v110 = lazy protocol witness table accessor for type String and conformance String();
      v109 = MEMORY[0x277D837D0];
      v108 = default argument 1 of StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
      v16 = default argument 2 of StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
      v113 = MEMORY[0x26D649820](v111._countAndFlagsBits, v111._object, v108, v16 & 1, v109, v110);
      v112 = v113;

      v168 = v113;
      if (MEMORY[0x26D6494A0]() == 2)
      {
        Array.subscript.getter();
        v105 = COERCE_DOUBLE(Double.init(_:)());
        if (v17)
        {

          v102 = 0;
          v103 = v142;
        }

        else
        {
          v104 = v105;
          v101 = v105;
          v161 = v105;
          Array.subscript.getter();
          v96 = v160;
          v99 = String.init(_:)();
          v100 = v18;
          v97 = v99;
          v98 = v18;

          v158 = v99;
          v159 = v100;

          if (v101 == v140)
          {
            v95 = MEMORY[0x26D649310](v97, v98, v133, v132, v101);
          }

          else
          {
            v95 = 0;
          }

          v94 = v95;

          v102 = v94;
          v103 = v142;
        }
      }

      else
      {
        v19 = v154;
        v73 = Logger.wellnessIntents.unsafeMutableAddressor();
        v77 = 32;
        v81 = 32;
        v74 = &v167;
        swift_beginAccess();
        (*(v152 + 16))(v19, v73, v150);
        swift_endAccess();

        v82 = 7;
        v20 = swift_allocObject();
        v21 = v107;
        v83 = v20;
        *(v20 + 16) = v106;
        *(v20 + 24) = v21;
        v93 = Logger.logObject.getter();
        v75 = v93;
        v92 = static os_log_type_t.debug.getter();
        v76 = v92;
        v78 = 17;
        v86 = swift_allocObject();
        v79 = v86;
        *(v86 + 16) = v77;
        v87 = swift_allocObject();
        v80 = v87;
        *(v87 + 16) = 8;
        v22 = swift_allocObject();
        v23 = v83;
        v84 = v22;
        *(v22 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
        *(v22 + 24) = v23;
        v24 = swift_allocObject();
        v25 = v84;
        v90 = v24;
        v85 = v24;
        *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v24 + 24) = v25;
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v88 = _allocateUninitializedArray<A>(_:)();
        v89 = v26;

        v27 = v86;
        v28 = v89;
        *v89 = partial apply for closure #1 in OSLogArguments.append(_:);
        v28[1] = v27;

        v29 = v87;
        v30 = v89;
        v89[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v30[3] = v29;

        v31 = v89;
        v32 = v90;
        v89[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v31[5] = v32;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v93, v92))
        {
          v70 = v142;
          v65 = static UnsafeMutablePointer.allocate(capacity:)();
          v62 = v65;
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v66 = createStorage<A>(capacity:type:)(0, v63, v63);
          v64 = v66;
          v68 = 1;
          v67 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v166 = v65;
          v165 = v66;
          v164 = v67;
          v69 = &v166;
          serialize(_:at:)(2, &v166);
          serialize(_:at:)(v68, v69);
          v33 = v70;
          v162 = partial apply for closure #1 in OSLogArguments.append(_:);
          v163 = v79;
          closure #1 in osLogInternal(_:log:type:)(&v162, v69, &v165, &v164);
          v71 = v33;
          v72 = v33;
          if (v33)
          {
            v60 = 0;

            __break(1u);
          }

          else
          {
            v162 = partial apply for closure #1 in OSLogArguments.append(_:);
            v163 = v80;
            closure #1 in osLogInternal(_:log:type:)(&v162, &v166, &v165, &v164);
            v58 = 0;
            v59 = 0;
            v162 = partial apply for closure #1 in OSLogArguments.append(_:);
            v163 = v85;
            closure #1 in osLogInternal(_:log:type:)(&v162, &v166, &v165, &v164);
            v56 = 0;
            v57 = 0;
            _os_log_impl(&dword_269912000, v75, v76, "Unexpected displayStrength string format: %s", v62, 0xCu);
            destroyStorage<A>(_:count:)(v64, 0, v63);
            destroyStorage<A>(_:count:)(v67, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D6497C0](v62, MEMORY[0x277D84B78]);

            v61 = v56;
          }
        }

        else
        {

          v61 = v142;
        }

        v55 = v61;

        (*(v152 + 8))(v154, v150);

        v102 = 0;
        v103 = v55;
      }
    }

    else
    {
      v15 = v156;

      v114 = Logger.wellnessIntents.unsafeMutableAddressor();
      v115 = &v177;
      v118 = 0;
      swift_beginAccess();
      (*(v152 + 16))(v15, v114, v150);
      swift_endAccess();
      v120 = Logger.logObject.getter();
      v116 = v120;
      v119 = static os_log_type_t.debug.getter();
      v117 = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v121 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v120, v119))
      {
        v53 = v142;
        v45 = static UnsafeMutablePointer.allocate(capacity:)();
        v41 = v45;
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v43 = 0;
        v46 = createStorage<A>(capacity:type:)(0, v42, v42);
        v44 = v46;
        v47 = createStorage<A>(capacity:type:)(v43, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v176 = v45;
        v175 = v46;
        v174 = v47;
        v48 = 0;
        v49 = &v176;
        serialize(_:at:)(0, &v176);
        serialize(_:at:)(v48, v49);
        v173 = v121;
        v50 = &v38;
        MEMORY[0x28223BE20](&v38, v34);
        v51 = &v38 - 6;
        *(&v38 - 4) = v35;
        *(&v38 - 3) = &v175;
        *(&v38 - 2) = &v174;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        v36 = v53;
        Sequence.forEach(_:)();
        v54 = v36;
        if (v36)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_269912000, v116, v117, "Couldn't find displayStrength in UserTrackedMed", v41, 2u);
          v39 = 0;
          destroyStorage<A>(_:count:)(v44, 0, v42);
          destroyStorage<A>(_:count:)(v47, v39, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v41, MEMORY[0x277D84B78]);

          v40 = v54;
        }
      }

      else
      {

        v40 = v142;
      }

      v38 = v40;

      (*(v152 + 8))(v156, v150);

      v102 = 0;
      v103 = v38;
    }
  }

  return v102 & 1;
}

uint64_t closure #1 in SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:)(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 medication];
  v6 = [v5 identifier];
  MEMORY[0x277D82BD8](v5);
  v11 = [v6 underlyingIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v3;
  MEMORY[0x277D82BD8](v6);
  v12 = MEMORY[0x26D649310](v7, v10, a2, a3);

  MEMORY[0x277D82BD8](v11);
  return v12 & 1;
}

uint64_t implicit closure #1 in SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  Collection.first.getter();
  if (v2)
  {
    [v2 medication];
    (MEMORY[0x277D82BD8])();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12HKMedicationCSgMd, &_sSo12HKMedicationCSgMR);
  lazy protocol witness table accessor for type HKMedication? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for HKMedicationLoggingUnit();
  lazy protocol witness table accessor for type HKMedicationLoggingUnit and conformance NSObject();
  return String.init<A>(describing:)();
}

id @nonobjc HKMedicationIdentifier.init(rawIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D6492A0](a1);
  v5 = [v3 initWithRawIdentifier_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

id @nonobjc INObject.init(identifier:display:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = MEMORY[0x26D6492A0](a1);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v5 = MEMORY[0x26D6492A0](a3, a4);
  v6 = [v11 initWithIdentifier:v8 displayString:?];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v8);
  return v6;
}

id @nonobjc HKUserTrackedConceptType.init(identifier:)(uint64_t a1)
{
  v4 = [v1 initWithIdentifier_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id @nonobjc HKUserTrackedConceptQuery.init(userTrackedConceptType:predicate:sortDescriptors:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    type metadata accessor for NSSortDescriptor();
    isa = Array._bridgeToObjectiveC()().super.isa;

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
  v18 = thunk for @escaping @callee_guaranteed (@guaranteed HKUserTrackedConceptQuery, @guaranteed [HKUserTrackedConcept]?, @guaranteed Error?) -> ();
  v19 = &block_descriptor_2015;
  v6 = _Block_copy(&aBlock);
  v7 = [v14 initWithUserTrackedConceptType:a1 predicate:a2 sortDescriptors:v9 resultsHandler:?];
  _Block_release(v6);

  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v7;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HKUserTrackedConceptQuery, @guaranteed [HKUserTrackedConcept]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKUserTrackedConcept();
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

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = MEMORY[0x277D849A8];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of NSNumber?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_2699DBB7C()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in LogSpecificMedicationsIntentHandler.handle(intent:)()
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

  return @objc closure #1 in LogSpecificMedicationsIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t type metadata accessor for HKMedicationIdentifier()
{
  v2 = lazy cache variable for type metadata for HKMedicationIdentifier;
  if (!lazy cache variable for type metadata for HKMedicationIdentifier)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMedicationIdentifier);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2699DBFDC()
{
  v2 = *(type metadata accessor for DateInterval() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)()
{
  v1 = *(type metadata accessor for DateInterval() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(v2);
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  v2 = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [String?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Set<String?> and conformance Set<A>()
{
  v2 = lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSSgGMd, &_sShySSSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSSgGMd, &_sShySSSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_3()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
  v1 = lazy protocol witness table accessor for type [String?] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t type metadata accessor for HKUserTrackedMedication()
{
  v2 = lazy cache variable for type metadata for HKUserTrackedMedication;
  if (!lazy cache variable for type metadata for HKUserTrackedMedication)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUserTrackedMedication);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2699E0568()
{
  v2 = *(type metadata accessor for DateInterval() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DateInterval();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #2 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(v3, a1);
}

unint64_t lazy protocol witness table accessor for type DateInterval and conformance DateInterval()
{
  v2 = lazy protocol witness table cache variable for type DateInterval and conformance DateInterval;
  if (!lazy protocol witness table cache variable for type DateInterval and conformance DateInterval)
  {
    type metadata accessor for DateInterval();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2699E0DEC()
{
  v2 = *(type metadata accessor for DateInterval() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

_OWORD *outlined init with take of (key: String?, value: (scheduleDate: Date?, medID: String, count: Int))?(_OWORD *a1, _OWORD *a2)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMd, &_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMR);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetSgMd, &_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetSgMR);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    __dst = a2 + *(v12 + 48);
    __src = a1 + *(v12 + 48);
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(__src, 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      memcpy(__dst, __src, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(__dst, __src, v8);
      (*(v9 + 56))(__dst, 0, 1, v8);
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMd, &_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMR);
    *&__dst[*(v3 + 48)] = *&__src[*(v3 + 48)];
    *&__dst[*(v3 + 64)] = *&__src[*(v3 + 64)];
    (*(v13 + 56))(a2, 0, 1, v12);
  }

  return a2;
}

uint64_t outlined destroy of (scheduleDate: Date?, medID: String, count: Int)?(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMd, &_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMR);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v2 = type metadata accessor for Date();
    v3 = *(v2 - 8);
    if (!(*(v3 + 48))(a1, 1))
    {
      (*(v3 + 8))(a1, v2);
    }
  }

  return a1;
}

uint64_t outlined destroy of (Date?, String, Int)?(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_SSSitMd, &_s10Foundation4DateVSg_SSSitMR);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v2 = type metadata accessor for Date();
    v3 = *(v2 - 8);
    if (!(*(v3 + 48))(a1, 1))
    {
      (*(v3 + 8))(a1, v2);
    }
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKUserTrackedConceptQuery()
{
  v2 = lazy cache variable for type metadata for HKUserTrackedConceptQuery;
  if (!lazy cache variable for type metadata for HKUserTrackedConceptQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUserTrackedConceptQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKUserTrackedConceptType()
{
  v2 = lazy cache variable for type metadata for HKUserTrackedConceptType;
  if (!lazy cache variable for type metadata for HKUserTrackedConceptType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUserTrackedConceptType);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2699E2F78()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR);
  v5 = v3 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));

  return closure #1 in closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications()(a1, a2, a3, v5);
}

uint64_t block_copy_helper_2013(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for HKUserTrackedConcept()
{
  v2 = lazy cache variable for type metadata for HKUserTrackedConcept;
  if (!lazy cache variable for type metadata for HKUserTrackedConcept)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUserTrackedConcept);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKUserTrackedConcept] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKUserTrackedConcept] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKUserTrackedConcept] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20HKUserTrackedConceptCGMd, &_sSaySo20HKUserTrackedConceptCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKUserTrackedConcept] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKMedicationLoggingUnit()
{
  v2 = lazy cache variable for type metadata for HKMedicationLoggingUnit;
  if (!lazy cache variable for type metadata for HKMedicationLoggingUnit)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMedicationLoggingUnit);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKMedicationLoggingUnit and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKMedicationLoggingUnit and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKMedicationLoggingUnit and conformance NSObject)
  {
    type metadata accessor for HKMedicationLoggingUnit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedicationLoggingUnit and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKMedication? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type HKMedication? and conformance A?;
  if (!lazy protocol witness table cache variable for type HKMedication? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo12HKMedicationCSgMd, &_sSo12HKMedicationCSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedication? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKMedicationIdentifier and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKMedicationIdentifier and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKMedicationIdentifier and conformance NSObject)
  {
    type metadata accessor for HKMedicationIdentifier();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedicationIdentifier and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NSNumber? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type NSNumber? and conformance A?;
  if (!lazy protocol witness table cache variable for type NSNumber? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSNumber? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Double? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type Double? and conformance A?;
  if (!lazy protocol witness table cache variable for type Double? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSdSgMd, &_sSdSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Double? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of [HKMedicationExposableDoseEvent](void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type [String]? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type [String]? and conformance A?;
  if (!lazy protocol witness table cache variable for type [String]? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String]? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Bool? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type Bool? and conformance A?;
  if (!lazy protocol witness table cache variable for type Bool? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Bool? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

uint64_t Logger.wellnessIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for wellnessIntents != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.wellnessIntents);
}

uint64_t one-time initialization function for subsystem()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static Log.subsystem = v1;
  return result;
}

__int128 *Log.subsystem.unsafeMutableAddressor()
{
  if (one-time initialization token for subsystem != -1)
  {
    swift_once();
  }

  return &static Log.subsystem;
}

uint64_t static Log.subsystem.getter()
{
  v1 = *Log.subsystem.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for healthCategory()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Health", 6uLL, 1);
  result = v1._countAndFlagsBits;
  static Log.healthCategory = v1;
  return result;
}

__int128 *Log.healthCategory.unsafeMutableAddressor()
{
  if (one-time initialization token for healthCategory != -1)
  {
    swift_once();
  }

  return &static Log.healthCategory;
}

uint64_t static Log.healthCategory.getter()
{
  v1 = *Log.healthCategory.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for wellnessCategory()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Wellness", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static Log.wellnessCategory = v1;
  return result;
}

__int128 *Log.wellnessCategory.unsafeMutableAddressor()
{
  if (one-time initialization token for wellnessCategory != -1)
  {
    swift_once();
  }

  return &static Log.wellnessCategory;
}

uint64_t static Log.wellnessCategory.getter()
{
  v1 = *Log.wellnessCategory.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for emergencyCategory()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Emergency", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static Log.emergencyCategory = v1;
  return result;
}

__int128 *Log.emergencyCategory.unsafeMutableAddressor()
{
  if (one-time initialization token for emergencyCategory != -1)
  {
    swift_once();
  }

  return &static Log.emergencyCategory;
}

uint64_t static Log.emergencyCategory.getter()
{
  v1 = *Log.emergencyCategory.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for commonCategory()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HealthCommon", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static Log.commonCategory = v1;
  return result;
}

__int128 *Log.commonCategory.unsafeMutableAddressor()
{
  if (one-time initialization token for commonCategory != -1)
  {
    swift_once();
  }

  return &static Log.commonCategory;
}

uint64_t static Log.commonCategory.getter()
{
  v1 = *Log.commonCategory.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for health()
{
  type metadata accessor for OS_os_log();
  Log.subsystem.unsafeMutableAddressor();

  Log.healthCategory.unsafeMutableAddressor();

  result = OS_os_log.init(subsystem:category:)();
  static Log.health = result;
  return result;
}

{
  v2 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v2, static Logger.health);
  __swift_project_value_buffer(v2, static Logger.health);
  v0 = Log.health.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](*v0);
  return Logger.init(_:)();
}

uint64_t *Log.health.unsafeMutableAddressor()
{
  if (one-time initialization token for health != -1)
  {
    swift_once();
  }

  return &static Log.health;
}

uint64_t static Log.health.getter()
{
  v0 = Log.health.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t one-time initialization function for wellnessIntents()
{
  type metadata accessor for OS_os_log();
  Log.subsystem.unsafeMutableAddressor();

  Log.wellnessCategory.unsafeMutableAddressor();

  result = OS_os_log.init(subsystem:category:)();
  static Log.wellnessIntents = result;
  return result;
}

{
  v2 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v2, static Logger.wellnessIntents);
  __swift_project_value_buffer(v2, static Logger.wellnessIntents);
  v0 = Log.wellnessIntents.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](*v0);
  return Logger.init(_:)();
}

uint64_t *Log.wellnessIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for wellnessIntents != -1)
  {
    swift_once();
  }

  return &static Log.wellnessIntents;
}

uint64_t static Log.wellnessIntents.getter()
{
  v0 = Log.wellnessIntents.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t one-time initialization function for emergency()
{
  type metadata accessor for OS_os_log();
  Log.subsystem.unsafeMutableAddressor();

  Log.emergencyCategory.unsafeMutableAddressor();

  result = OS_os_log.init(subsystem:category:)();
  static Log.emergency = result;
  return result;
}

{
  v2 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v2, static Logger.emergency);
  __swift_project_value_buffer(v2, static Logger.emergency);
  v0 = Log.emergency.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](*v0);
  return Logger.init(_:)();
}

uint64_t *Log.emergency.unsafeMutableAddressor()
{
  if (one-time initialization token for emergency != -1)
  {
    swift_once();
  }

  return &static Log.emergency;
}

uint64_t static Log.emergency.getter()
{
  v0 = Log.emergency.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t one-time initialization function for common()
{
  type metadata accessor for OS_os_log();
  Log.subsystem.unsafeMutableAddressor();

  Log.commonCategory.unsafeMutableAddressor();

  result = OS_os_log.init(subsystem:category:)();
  static Log.common = result;
  return result;
}

{
  v2 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v2, static Logger.common);
  __swift_project_value_buffer(v2, static Logger.common);
  v0 = Log.common.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](*v0);
  return Logger.init(_:)();
}

uint64_t *Log.common.unsafeMutableAddressor()
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  return &static Log.common;
}

uint64_t static Log.common.getter()
{
  v0 = Log.common.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

unint64_t type metadata accessor for OS_os_log()
{
  v2 = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for OS_os_log);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t static Logger.wellnessIntents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static Logger.wellnessIntents.setter(uint64_t a1)
{
  v10 = a1;
  v11 = type metadata accessor for Logger();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1);
  v6 = &v3 - v4;
  v5 = Logger.wellnessIntents.unsafeMutableAddressor();
  (*(v8 + 16))(v6, v10, v11);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t (*static Logger.wellnessIntents.modify())(uint64_t a1)
{
  Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  return static Logger.wellnessIntents.modify;
}

uint64_t Logger.health.unsafeMutableAddressor()
{
  if (one-time initialization token for health != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.health);
}

uint64_t static Logger.health.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.health.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static Logger.health.setter(uint64_t a1)
{
  v10 = a1;
  v11 = type metadata accessor for Logger();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1);
  v6 = &v3 - v4;
  v5 = Logger.health.unsafeMutableAddressor();
  (*(v8 + 16))(v6, v10, v11);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t (*static Logger.health.modify())(uint64_t a1)
{
  Logger.health.unsafeMutableAddressor();
  swift_beginAccess();
  return static Logger.wellnessIntents.modify;
}

uint64_t Logger.emergency.unsafeMutableAddressor()
{
  if (one-time initialization token for emergency != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.emergency);
}

uint64_t static Logger.emergency.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.emergency.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static Logger.emergency.setter(uint64_t a1)
{
  v10 = a1;
  v11 = type metadata accessor for Logger();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1);
  v6 = &v3 - v4;
  v5 = Logger.emergency.unsafeMutableAddressor();
  (*(v8 + 16))(v6, v10, v11);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t (*static Logger.emergency.modify())(uint64_t a1)
{
  Logger.emergency.unsafeMutableAddressor();
  swift_beginAccess();
  return static Logger.wellnessIntents.modify;
}

uint64_t Logger.common.unsafeMutableAddressor()
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.common);
}

uint64_t static Logger.common.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.common.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static Logger.common.setter(uint64_t a1)
{
  v10 = a1;
  v11 = type metadata accessor for Logger();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1);
  v6 = &v3 - v4;
  v5 = Logger.common.unsafeMutableAddressor();
  (*(v8 + 16))(v6, v10, v11);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t (*static Logger.common.modify())(uint64_t a1)
{
  Logger.common.unsafeMutableAddressor();
  swift_beginAccess();
  return static Logger.wellnessIntents.modify;
}

uint64_t HealthKitDistanceProvider.Source.quantityTypeIdentifier.getter(char a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v5 = *MEMORY[0x277CCCB48];
        MEMORY[0x277D82BE0](*MEMORY[0x277CCCB48]);
        return v5;
      case 2:
        v4 = *MEMORY[0x277CCCB10];
        MEMORY[0x277D82BE0](*MEMORY[0x277CCCB10]);
        return v4;
      case 3:
        v3 = *MEMORY[0x277CCCB38];
        MEMORY[0x277D82BE0](*MEMORY[0x277CCCB38]);
        return v3;
      default:
        v2 = *MEMORY[0x277CCCB18];
        MEMORY[0x277D82BE0](*MEMORY[0x277CCCB18]);
        return v2;
    }
  }

  else
  {
    v6 = *MEMORY[0x277CCCB40];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCCB40]);
    return v6;
  }
}

BOOL static HealthKitDistanceProvider.Source.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t HealthKitDistanceProvider.Source.hashValue.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HealthKitDistanceProvider.Source(0, a2, a3, a4);
  swift_getWitnessTable();
  return _hashValue<A>(for:)();
}

uint64_t HealthKitDistanceProvider.store.getter()
{
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t HealthKitDistanceProvider.sources.getter()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t HealthKitDistanceProvider.failure.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t HealthKitDistanceProvider.mapIntent.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t HealthKitDistanceProvider.init(store:sources:failure:mapIntent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  memset(__b, 0, 0x30uLL);
  __b[6] = a7;
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  __b[0] = a1;

  __b[1] = a2;

  __b[2] = a3;
  __b[3] = a4;

  __b[4] = a5;
  __b[5] = a6;

  MEMORY[0x277D82BD8](a1);
  outlined destroy of HealthKitDistanceProvider<A>(__b);
  result = a1;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of HealthKitDistanceProvider<A>(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
}

uint64_t HealthKitDistanceProvider.isQueryAuthorized()()
{
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v5 = *v0;
  v1[4] = *v0;
  MEMORY[0x277D82BE0](v5);
  v2 = swift_task_alloc();
  *(v4 + 40) = v2;
  *v2 = *(v4 + 16);
  v2[1] = CycleTrackingFetcher.isReadingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(v5);
}

uint64_t HealthKitDistanceProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = v4;
  v5[28] = a3;
  v5[27] = a2;
  v5[26] = a1;
  v5[20] = v5;
  v5[21] = 0;
  v5[22] = 0;
  memset(v5 + 8, 0, 0x30uLL);
  v5[24] = 0;
  v5[25] = 0;
  memcpy(v5 + 2, __src, 0x30uLL);
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = v5[5];
  v16 = v5[6];
  v17 = v5[7];
  v6 = *(a4 + 16);
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[21] = a2;
  v5[22] = a3;
  v5[8] = v12;
  v5[9] = v13;
  v5[10] = v14;
  v5[11] = v15;
  v5[12] = v16;
  v5[13] = v17;

  return MEMORY[0x2822009F8](HealthKitDistanceProvider.query(start:end:), 0);
}

{
  v5 = v4[30];
  v8 = v5;
  v9 = v4[29];
  v11 = v4[28];
  v10 = v4[27];
  v4[20] = v4;
  type metadata accessor for HealthKitDistanceProvider.Source(255, v5, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  outlined init with copy of HealthKitDistanceProvider<A>(v9, v4 + 14);
  v14 = swift_task_alloc();
  v4[33] = v14;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  swift_getWitnessTable();
  v13 = type metadata accessor for Dictionary();
  default argument 1 of withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(TupleTypeMetadata2, v13);
  v6 = swift_task_alloc();
  *(v12 + 272) = v6;
  *v6 = *(v12 + 160);
  v6[1] = HealthKitDistanceProvider.query(start:end:);

  return MEMORY[0x282200740](v12 + 184, TupleTypeMetadata2, v13, 0, 0, &async function pointer to partial apply for closure #1 in HealthKitDistanceProvider.query(start:end:), v14);
}

uint64_t HealthKitDistanceProvider.query(start:end:)()
{
  v5 = *v1;
  v5[20] = *v1;
  v5[35] = v0;

  if (v0)
  {
    v2 = HealthKitDistanceProvider.query(start:end:);
  }

  else
  {
    v4 = v5[29];

    outlined destroy of HealthKitDistanceProvider<A>(v4);
    v2 = HealthKitDistanceProvider.query(start:end:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = v0[32];
  v6 = v0[31];
  v7 = v0[30];
  v1 = v0[29];
  v5 = v0[26];
  v0[20] = v0;
  v9 = v0[23];
  v0[25] = v9;
  v4 = *(v1 + 32);

  v4(v9);

  (*(v6 + 16))(v5, v8, v7);
  (*(v6 + 8))(v8, v7);

  v2 = *(v0[20] + 8);

  return v2();
}

{
  v7 = v0[35];
  v5 = v0[29];
  v0[20] = v0;

  outlined destroy of HealthKitDistanceProvider<A>(v5);
  v1 = v7;
  v0[24] = v7;
  v6 = v5[2];

  v6(v2);

  v3 = *(v0[20] + 8);

  return v3();
}

uint64_t closure #1 in HealthKitDistanceProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 240) = a6;
  *(v6 + 232) = a5;
  *(v6 + 224) = a4;
  *(v6 + 216) = a3;
  *(v6 + 208) = a2;
  *(v6 + 200) = a1;
  *(v6 + 144) = v6;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  memset((v6 + 104), 0, 0x28uLL);
  *(v6 + 408) = 0;
  *(v6 + 416) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  *(v6 + 248) = v7;
  *(v6 + 256) = *(v7 - 8);
  *(v6 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  *(v6 + 296) = v12;
  *(v6 + 304) = *(v12 + 64);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, "\u058B");
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = type metadata accessor for HealthKitDistanceProvider.Source(255, a6, v8, v9);
  *(v6 + 344) = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v10 = type metadata accessor for ThrowingTaskGroup.Iterator();
  *(v6 + 368) = v10;
  *(v6 + 376) = *(v10 - 8);
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 152) = a2;
  *(v6 + 160) = a3;
  *(v6 + 168) = a4;
  *(v6 + 176) = a5;

  return MEMORY[0x2822009F8](closure #1 in HealthKitDistanceProvider.query(start:end:), 0);
}

uint64_t closure #1 in HealthKitDistanceProvider.query(start:end:)()
{
  v0[18] = v0;
  v0[49] = swift_getWitnessTable();
  v0[23] = Dictionary.init()();

  Set.makeIterator()();
  memcpy(v0 + 13, v0 + 8, 0x28uLL);
  while (1)
  {
    type metadata accessor for Set.Iterator();
    Set.Iterator.next()();
    v20 = *(v21 + 409);
    if (v20 == 5)
    {
      break;
    }

    v19 = *(v21 + 328);
    v14 = *(v21 + 320);
    v17 = *(v21 + 312);
    v11 = *(v21 + 304);
    v12 = *(v21 + 240);
    v9 = *(v21 + 232);
    v8 = *(v21 + 224);
    __src = *(v21 + 216);
    v10 = *(v21 + 296);
    *(v21 + 416) = v20;
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v19, 1);
    outlined init with copy of HealthKitDistanceProvider<A>(__src, (v21 + 16));
    outlined init with copy of Date?(v8, v14);
    outlined init with copy of Date?(v9, v17);
    v5 = *(v10 + 80);
    v15 = (v5 + 96) & ~v5;
    v16 = (v15 + v11 + v5) & ~v5;
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v12;
    *(v18 + 40) = v20;
    memcpy((v18 + 48), __src, 0x30uLL);
    outlined init with take of Date?(v14, (v18 + v15));
    outlined init with take of Date?(v17, (v18 + v16));
    v6 = type metadata accessor for ThrowingTaskGroup();
    _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(v19, &async function pointer to partial apply for closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:), v18, v6);
    outlined destroy of TaskPriority?(v19);
  }

  outlined destroy of [String? : (scheduleDate: Date?, medID: String, count: Int)].Iterator((v21 + 104));
  ThrowingTaskGroup.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v21 + 400) = v1;
  *v1 = *(v21 + 144);
  v1[1] = closure #1 in HealthKitDistanceProvider.query(start:end:);
  v2 = *(v21 + 368);
  v3 = *(v21 + 352);

  return MEMORY[0x2822004E8](v3, 0, 0, v2, v21 + 192);
}

{
  *(*v1 + 144) = *v1;

  if (v0)
  {
    v2 = closure #1 in HealthKitDistanceProvider.query(start:end:);
  }

  else
  {
    v2 = closure #1 in HealthKitDistanceProvider.query(start:end:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[44];
  v2 = v0[43];
  v0[18] = v0;
  if ((*(*(v2 - 8) + 48))(v1, 1) == 1)
  {
    v20 = *(v21 + 200);
    (*(*(v21 + 376) + 8))();
    *v20 = *(v21 + 184);

    v3 = *(*(v21 + 144) + 8);

    return v3();
  }

  else
  {
    v5 = *(v21 + 352);
    v16 = *(v21 + 288);
    v19 = *(v21 + 280);
    v18 = *(v21 + 248);
    v17 = *(v21 + 256);
    v15 = *v5;
    v6 = &v5[*(*(v21 + 344) + 48)];
    *(v21 + 408) = *v5;
    outlined init with take of Statistics<Double>?(v6, v16);
    outlined init with copy of Statistics<Double>?(v16, v19);
    if ((*(v17 + 48))(v19, 1, v18) == 1)
    {
      outlined destroy of Statistics<Double>?(*(v21 + 280));
    }

    else
    {
      v13 = *(v21 + 272);
      v14 = *(v21 + 264);
      v12 = *(v21 + 248);
      v11 = *(v21 + 256);
      outlined init with take of Statistics<Double>(*(v21 + 280), v14);
      v7 = outlined init with copy of Statistics<Double>(v14, v13);
      (*(v11 + 56))(v13, 0, 1, v12, v7);
      *(v21 + 410) = v15;
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      outlined destroy of Statistics<Double>(v14);
    }

    outlined destroy of Statistics<Double>?(*(v21 + 288));
    v8 = swift_task_alloc();
    *(v21 + 400) = v8;
    *v8 = *(v21 + 144);
    v8[1] = closure #1 in HealthKitDistanceProvider.query(start:end:);
    v9 = *(v21 + 368);
    v10 = *(v21 + 352);

    return MEMORY[0x2822004E8](v10, 0, 0, v9, v21 + 192);
  }
}

{
  v1 = v0[47];
  v0[18] = v0;
  (*(v1 + 8))();
  outlined destroy of [HKQuantityType](v0 + 23);

  v2 = *(v0[18] + 8);

  return v2();
}

void *outlined init with copy of HealthKitDistanceProvider<A>(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v6 = a1[2];
  v7 = a1[3];

  a2[2] = v6;
  a2[3] = v7;
  v9 = a1[4];
  v10 = a1[5];

  result = a2;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

uint64_t partial apply for closure #1 in HealthKitDistanceProvider.query(start:end:)(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v11 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in HealthKitDistanceProvider.query(start:end:)(a1, a2, v8, v9, v10, v11);
}

uint64_t closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a4;
  *(v8 + 88) = a8;
  *(v8 + 80) = a7;
  *(v8 + 72) = a6;
  *(v8 + 64) = a5;
  *(v8 + 153) = a4;
  *(v8 + 56) = a1;
  *(v8 + 16) = v8;
  *(v8 + 152) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  type metadata accessor for HealthKitDistanceProvider.Source(255, a8, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  *(v8 + 96) = swift_getTupleTypeMetadata2();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 152) = v10;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:), 0);
}

uint64_t closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:)()
{
  v9 = *(v0 + 64);
  v8 = *(v0 + 153);
  *(v0 + 16) = v0;
  type metadata accessor for HKQuantityType();
  v1 = HealthKitDistanceProvider.Source.quantityTypeIdentifier.getter(v8);
  v11 = MEMORY[0x26D649710](v1);
  *(v0 + 120) = v11;
  *(v0 + 48) = v11;
  v2 = *v9;
  *(v0 + 128) = *v9;
  MEMORY[0x277D82BE0](v2);
  v3 = swift_task_alloc();
  v10[17] = v3;
  *v3 = v10[2];
  v3[1] = closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:);
  v4 = v10[14];
  v5 = v10[10];
  v6 = v10[9];

  return HKHealthStore.query(quantityType:start:end:)(v4, v11, v6, v5);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 144) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:);
  }

  else
  {

    v2 = closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = *(v0 + 120);
  v1 = *(v0 + 112);
  v9 = v1;
  v10 = *(v0 + 104);
  v7 = *(v0 + 96);
  v2 = *(v0 + 153);
  v6 = *(v0 + 56);
  *(v0 + 16) = v0;
  v3 = *(v7 + 48);
  *v10 = v2;
  outlined init with copy of Statistics<Double>?(v1, &v10[v3]);
  outlined init with copy of (HealthKitDistanceProvider<A>.Source, Statistics<Double>?)(v10, v6, v7);
  outlined destroy of (HealthKitDistanceProvider<A>.Source, Statistics<Double>?)(v10, v7);
  outlined destroy of Statistics<Double>?(v9);
  MEMORY[0x277D82BD8](v8);

  v4 = *(*(v0 + 16) + 8);

  return v4();
}

{
  v1 = v0[16];
  v4 = v0[15];
  v0[2] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v31 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, "\u058B") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v4);
  v32 = &v8 - v31;
  outlined init with copy of TaskPriority?(v5, &v8 - v31);
  v33 = type metadata accessor for TaskPriority();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  if ((*(v34 + 48))(v32, 1) == 1)
  {
    outlined destroy of TaskPriority?(v32);
    v25 = 0;
  }

  else
  {
    v24 = TaskPriority.rawValue.getter();
    (*(v34 + 8))(v32, v33);
    v25 = v24;
  }

  v21 = v25 | 0x3100;
  v23 = *(v27 + 16);
  v22 = *(v27 + 24);
  swift_unknownObjectRetain();
  if (v23)
  {
    v19 = v23;
    v20 = v22;
    v13 = v22;
    v14 = v23;
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v6;
    swift_unknownObjectRelease();
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v10 = v18;
  v9 = v17;
  v8 = *v29;

  v11 = *(v28 + 16);
  v39[4] = v11;
  v12 = 0;
  if (v9 != 0 || v10 != 0)
  {
    v39[0] = 0;
    v39[1] = 0;
    v39[2] = v9;
    v39[3] = v10;
    v12 = v39;
  }

  v36 = 1;
  v37 = v12;
  v38 = v8;
  swift_task_create();
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>()
{
  *(v1 + 64) = v1;
  memcpy((v1 + 16), v0, 0x30uLL);
  v2 = swift_task_alloc();
  *(v4 + 72) = v2;
  *v2 = *(v4 + 64);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>;

  return HealthKitDistanceProvider.isQueryAuthorized()();
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>(unsigned int a1)
{
  v4 = *v1;
  *(v4 + 64) = *v1;

  v2 = *(*(v4 + 64) + 8);

  return v2(a1);
}

uint64_t protocol witness for DataProviding.isLoggingAuthorized() in conformance HealthKitDistanceProvider<A>()
{
  *(v1 + 64) = v1;
  memcpy((v1 + 16), v0, 0x30uLL);
  v2 = swift_task_alloc();
  *(v4 + 72) = v2;
  *v2 = *(v4 + 64);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>;

  return HealthKitDistanceProvider.isQueryAuthorized()();
}

void *static HealthKitDistanceProvider<A>.ambiguousDistance(store:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMd, &_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMR);
  _allocateUninitializedArray<A>(_:)();
  *v2 = 0;
  v2[1] = 1;
  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GGMd, &_sSay19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GGMR);
  lazy protocol witness table accessor for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source();
  lazy protocol witness table accessor for type [HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source] and conformance [A]();
  v5 = Set.init<A>(_:)();
  AmbiguousDistanceIntentResponse = type metadata accessor for GetAmbiguousDistanceIntentResponse();
  HealthKitDistanceProvider.init(store:sources:failure:mapIntent:)(a1, v5, implicit closure #1 in static HealthKitDistanceProvider<A>.ambiguousDistance(store:), 0, closure #1 in static HealthKitDistanceProvider<A>.ambiguousDistance(store:), 0, AmbiguousDistanceIntentResponse, v8);
  return memcpy(a2, v8, 0x30uLL);
}

unint64_t lazy protocol witness table accessor for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source()
{
  v2 = lazy protocol witness table cache variable for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source;
  if (!lazy protocol witness table cache variable for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMd, &_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GGMd, &_sSay19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

char *implicit closure #1 in static HealthKitDistanceProvider<A>.ambiguousDistance(store:)@<X0>(char **a1@<X8>)
{
  type metadata accessor for GetAmbiguousDistanceIntentResponse();
  result = GetAmbiguousDistanceIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  *a1 = result;
  return result;
}

char *closure #1 in static HealthKitDistanceProvider<A>.ambiguousDistance(store:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v77 = a1;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v88 = 0;
  v87 = 0;
  v51 = 0;
  v52 = type metadata accessor for DateInterval();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (v53[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v56 = &v32 - v55;
  v57 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, &v32 - v55);
  v58 = &v32 - v57;
  v59 = type metadata accessor for Date();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (v60[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v5);
  v63 = &v32 - v62;
  v64 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v32 - v62, v7);
  v65 = &v32 - v64;
  v66 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v32 - v64, v9);
  v67 = &v32 - v66;
  v68 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v32 - v66, v11);
  v69 = &v32 - v68;
  v94 = &v32 - v68;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  v70 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13);
  v71 = &v32 - v70;
  v72 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v32 - v70, v15);
  v83 = &v32 - v72;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v81 = *(v84 - 1);
  v82 = v84 - 2;
  v73 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v77, v16);
  v74 = &v32 - v73;
  v93 = &v32 - v73;
  v75 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18, v19);
  v76 = &v32 - v75;
  v92 = &v32 - v75;
  v91 = v20;
  v79 = &v90;
  v90 = 0;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMd, &_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMR);
  AmbiguousDistanceIntent = lazy protocol witness table accessor for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source();
  MEMORY[0x26D649240](v79, v77, v78, v84);
  v85 = *(v81 + 48);
  v86 = v81 + 48;
  if (v85(v83, 1, v84) == 1)
  {
    outlined destroy of Statistics<Double>?(v83);
  }

  else
  {
    v21 = outlined init with take of Statistics<Double>(v83, v76);
    v89 = 1;
    MEMORY[0x26D649240](&v89, v77, v78, v84, AmbiguousDistanceIntent, v21);
    if (v85(v71, 1, v84) != 1)
    {
      v22 = v58;
      v23 = outlined init with take of Statistics<Double>(v71, v74);
      v24 = &v76[v84[7]];
      v44 = v53[2];
      v43 = v53 + 2;
      v44(v22, v24, v52, v23);
      DateInterval.start.getter();
      v25 = v56;
      v46 = v53[1];
      v45 = v53 + 1;
      v46(v58, v52);
      (v44)(v25, &v74[v84[7]], v52);
      DateInterval.start.getter();
      v46(v56, v52);
      v47 = lazy protocol witness table accessor for type Date and conformance Date();
      min<A>(_:_:)();
      v49 = v60[1];
      v48 = v60 + 1;
      v49(v65, v59);
      v49(v67, v59);
      v88 = v67;
      (v44)(v58, &v76[v84[7]], v52);
      DateInterval.end.getter();
      v26 = v56;
      v46(v58, v52);
      (v44)(v26, &v74[v84[7]], v52);
      DateInterval.end.getter();
      v46(v56, v52);
      max<A>(_:_:)();
      v49(v63, v59);
      v49(v65, v59);
      v34 = 0;
      type metadata accessor for GetAmbiguousDistanceIntentResponse();
      v42 = GetAmbiguousDistanceIntentResponse.__allocating_init(code:userActivity:)(4, v34);
      v87 = v42;
      v37 = v60[2];
      v36 = v60 + 2;
      v37(v65, v69, v59);
      v27.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v28 = v65;
      isa = v27.super.isa;
      v49(v65, v59);
      [v42 setSampleStartDate_];
      MEMORY[0x277D82BD8](isa);
      v37(v28, v67, v59);
      v38 = Date._bridgeToObjectiveC()().super.isa;
      v49(v65, v59);
      [v42 setSampleEndDate_];
      MEMORY[0x277D82BD8](v38);
      [v42 setWalkRunDistance_];
      [v42 setWheelchairDistance_];
      v29 = &v76[v84[9]];
      v39 = *v29;
      v40 = *(v29 + 1);

      v41 = MEMORY[0x26D6492A0](v39, v40);

      [v42 setUnit_];
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BE0](v42);
      v30 = v42;
      *v50 = v42;
      MEMORY[0x277D82BD8](v30);
      v49(v67, v59);
      v49(v69, v59);
      outlined destroy of Statistics<Double>(v74);
      return outlined destroy of Statistics<Double>(v76);
    }

    outlined destroy of Statistics<Double>?(v71);
    outlined destroy of Statistics<Double>(v76);
  }

  v33 = 0;
  type metadata accessor for GetAmbiguousDistanceIntentResponse();
  result = GetAmbiguousDistanceIntentResponse.__allocating_init(code:userActivity:)(102, v33);
  *v50 = result;
  return result;
}

uint64_t protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> HealthKitDistanceProvider<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = v4;
  memcpy((v4 + 16), v3, 0x30uLL);
  v5 = swift_task_alloc();
  *(v7 + 80) = v5;
  *v5 = *(v7 + 64);
  v5[1] = protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> HealthKitDistanceProvider<A>;

  return HealthKitDistanceProvider.query(start:end:)(v7 + 72, a1, a2, a3);
}

uint64_t protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> HealthKitDistanceProvider<A>()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 64) = *v0;

  v1 = *(v4 + 72);
  v2 = *(*(v5 + 64) + 8);

  return v2(v1);
}

uint64_t type metadata instantiation function for HealthKitDistanceProvider()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for HealthKitDistanceProvider(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for HealthKitDistanceProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

char *outlined init with take of Statistics<Double>?(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v10 = *(v9 - 1);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = type metadata accessor for DateInterval();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(a1, 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(a2, a1, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v6 + 32))(a2, a1, v5);
      (*(v6 + 56))(a2, 0, 1, v5);
    }

    (*(v6 + 32))(&a2[v9[7]], &a1[v9[7]], v5);
    *&a2[v9[8]] = *&a1[v9[8]];
    *&a2[v9[9]] = *&a1[v9[9]];
    *&a2[v9[10]] = *&a1[v9[10]];
    *&a2[v9[11]] = *&a1[v9[11]];
    *&a2[v9[12]] = *&a1[v9[12]];
    *&a2[v9[13]] = *&a1[v9[13]];
    (*(v10 + 56))();
  }

  return a2;
}

char *outlined init with copy of Statistics<Double>?(char *a1, char *a2)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v8 = type metadata accessor for DateInterval();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a1, 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(a2, a1, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(a2, a1, v8);
      (*(v9 + 56))(a2, 0, 1, v8);
    }

    (*(v9 + 16))(&a2[v12[7]], &a1[v12[7]], v8);
    *&a2[v12[8]] = *&a1[v12[8]];
    v3 = v12[9];
    v6 = &a2[v3];
    *&a2[v3] = *&a1[v3];
    v7 = *&a1[v3 + 8];

    *(v6 + 1) = v7;
    *&a2[v12[10]] = *&a1[v12[10]];
    *&a2[v12[11]] = *&a1[v12[11]];
    *&a2[v12[12]] = *&a1[v12[12]];
    *&a2[v12[13]] = *&a1[v12[13]];
    (*(v13 + 56))();
  }

  return a2;
}

uint64_t sub_2699E9640()
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v1 = *(v4 + 80);
  v6 = (v1 + 96) & ~v1;
  v5 = (v6 + *(v4 + 64) + v1) & ~v1;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 48));

  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!(v9)(v0 + v6, 1))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  if (!v9())
  {
    (*(v8 + 8))(v3 + v5, v7);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:)(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v13 = *(v1 + 32);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v3 = *(v6 + 80);
  v11 = (v3 + 96) & ~v3;
  v12 = (v11 + *(v6 + 64) + v3) & ~v3;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:)(a1, v8, v9, v10, v1 + 48, v1 + v11, v1 + v12, v13);
}

_BYTE *outlined init with copy of (HealthKitDistanceProvider<A>.Source, Statistics<Double>?)(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a2 = *a1;
  v13 = *(a3 + 48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v16 = *(v15 - 1);
  if ((*(v16 + 48))(&a1[v13], 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
    memcpy(&a2[v13], &a1[v13], *(*(v5 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for DateInterval();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(&a1[v13], 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(&a2[v13], &a1[v13], *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))();
      (*(v11 + 56))(&a2[v13], 0, 1, v10);
    }

    v7 = &a2[v13];
    (*(v11 + 16))(&a2[v13 + v15[7]], &a1[v13 + v15[7]], v10);
    *&v7[v15[8]] = *&a1[v13 + v15[8]];
    v4 = v15[9];
    v8 = &a2[v13 + v4];
    *&v7[v4] = *&a1[v13 + v4];
    v9 = *&a1[v13 + 8 + v4];

    *(v8 + 1) = v9;
    *&v7[v15[10]] = *&a1[v13 + v15[10]];
    *&v7[v15[11]] = *&a1[v13 + v15[11]];
    *&v7[v15[12]] = *&a1[v13 + v15[12]];
    *&v7[v15[13]] = *&a1[v13 + v15[13]];
    (*(v16 + 56))();
  }

  return a2;
}

uint64_t outlined destroy of (HealthKitDistanceProvider<A>.Source, Statistics<Double>?)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  if (!(*(*(v7 - 8) + 48))(a1 + v5, 1))
  {
    v3 = type metadata accessor for DateInterval();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(a1 + v5, 1))
    {
      (*(v4 + 8))(a1 + v5, v3);
    }

    (*(v4 + 8))(a1 + v5 + *(v7 + 28), v3);
  }

  return a1;
}

uint64_t _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return UnsafeContinuation.resume(throwing:)(v7, a1, a3, v3, MEMORY[0x277D84950]);
}

void *LogPeriodIntentHandler.init(storage:)(void *a1)
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
    v2 = PeriodPersistor.init()();
    __dst[3] = &type metadata for PeriodPersistor;
    __dst[4] = &protocol witness table for PeriodPersistor;
    __dst[0] = v2;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents22LogPeriodIntentHandler_storage]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

id PeriodPersistor.init()()
{
  v3 = 0;
  type metadata accessor for HKMenstrualCyclesStore();
  type metadata accessor for HKHealthStore();
  v0 = NSDateFormatter.__allocating_init()();
  v2 = HKUnitPreferenceController.__allocating_init(healthStore:)(v0);
  MEMORY[0x277D82BE0](v2);
  v3 = v2;
  outlined destroy of HealthKitPersistor(&v3);
  return v2;
}

uint64_t LogPeriodIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[44] = v1;
  v2[43] = a1;
  v2[24] = v2;
  v2[25] = 0;
  v2[26] = 0;
  v3 = type metadata accessor for Date();
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[51] = v4;
  v2[52] = *(v4 - 8);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[25] = a1;
  v2[26] = v1;

  return MEMORY[0x2822009F8](LogPeriodIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 192) = *v1;
  *(v3 + 520) = a1;

  return MEMORY[0x2822009F8](LogPeriodIntentHandler.handle(intent:), 0);
}

uint64_t LogPeriodIntentHandler.handle(intent:)()
{
  v1 = v0[56];
  v19 = v0[52];
  v21 = v0[51];
  v0[24] = v0;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v19 + 16);
  v0[57] = v2;
  v0[58] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v20, v21);
  swift_endAccess();
  v23 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v0[59] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v24 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v23, v22))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0, v13, v13);
    v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v18 + 312) = buf;
    *(v18 + 320) = v15;
    *(v18 + 328) = v16;
    serialize(_:at:)(0, (v18 + 312));
    serialize(_:at:)(0, (v18 + 312));
    *(v18 + 336) = v24;
    v17 = swift_task_alloc();
    v17[2] = v18 + 312;
    v17[3] = v18 + 320;
    v17[4] = v18 + 328;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v23, v22, "Checking authorization for Cycle Tracking...", buf, 2u);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  *(v18 + 480) = 0;
  v7 = *(v18 + 448);
  v8 = *(v18 + 408);
  v9 = *(v18 + 352);
  v6 = *(v18 + 416);
  MEMORY[0x277D82BD8](v23);
  v3 = *(v6 + 8);
  *(v18 + 488) = v3;
  *(v18 + 496) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v7, v8);
  outlined init with copy of QuantityPersisting(v9 + OBJC_IVAR____TtC19SiriWellnessIntents22LogPeriodIntentHandler_storage, v18 + 16);
  v12 = *(v18 + 40);
  v10 = *(v18 + 48);
  __swift_project_boxed_opaque_existential_1((v18 + 16), v12);
  v11 = (*(v10 + 8) + **(v10 + 8));
  v4 = swift_task_alloc();
  *(v18 + 504) = v4;
  *v4 = *(v18 + 192);
  v4[1] = LogPeriodIntentHandler.handle(intent:);

  return v11(v12, v10);
}

{
  v75 = *(v0 + 528);
  *(v0 + 192) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v75)
  {
    v70 = *(v74 + 456);
    v1 = *(v74 + 440);
    v69 = *(v74 + 408);
    v68 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v70(v1, v68, v69);
    swift_endAccess();
    v72 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    v73 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v72, v71))
    {
      v2 = *(v74 + 480);
      v64 = static UnsafeMutablePointer.allocate(capacity:)();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v65 = createStorage<A>(capacity:type:)(0, v63, v63);
      v66 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v74 + 280) = v64;
      *(v74 + 288) = v65;
      *(v74 + 296) = v66;
      serialize(_:at:)(0, (v74 + 280));
      serialize(_:at:)(0, (v74 + 280));
      *(v74 + 304) = v73;
      v67 = swift_task_alloc();
      v67[2] = v74 + 280;
      v67[3] = v74 + 288;
      v67[4] = v74 + 296;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v2)
      {
      }

      _os_log_impl(&dword_269912000, v72, v71, "Authorization check successful for Cycle Tracking!", v64, 2u);
      destroyStorage<A>(_:count:)(v65, 0, v63);
      destroyStorage<A>(_:count:)(v66, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v64, MEMORY[0x277D84B78]);

      v62 = 0;
    }

    else
    {

      v62 = *(v74 + 480);
    }

    v59 = *(v74 + 488);
    v57 = *(v74 + 440);
    v58 = *(v74 + 408);
    v60 = *(v74 + 344);
    MEMORY[0x277D82BD8](v72);
    v59(v57, v58);
    v61 = [v60 date];
    if (v61)
    {
      v56 = *(v74 + 400);
      v54 = *(v74 + 384);
      v55 = *(v74 + 360);
      v53 = *(v74 + 368);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v53 + 32))(v56, v54, v55);
      (*(v53 + 56))(v56, 0, 1, v55);
      MEMORY[0x277D82BD8](v61);
    }

    else
    {
      (*(*(v74 + 368) + 56))(*(v74 + 400), 1, 1, *(v74 + 360));
    }

    v3 = (*(v74 + 368) + 48);
    v52 = *v3;
    if ((*v3)(*(v74 + 400), 1, *(v74 + 360)) != 1)
    {
      outlined destroy of Date?(*(v74 + 400));
LABEL_18:
      v37 = [*(v74 + 344) date];
      if (v37)
      {
        v36 = *(v74 + 392);
        v34 = *(v74 + 384);
        v35 = *(v74 + 360);
        v33 = *(v74 + 368);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v33 + 32))(v36, v34, v35);
        (*(v33 + 56))(v36, 0, 1, v35);
        MEMORY[0x277D82BD8](v37);
      }

      else
      {
        (*(*(v74 + 368) + 56))(*(v74 + 392), 1, 1, *(v74 + 360));
      }

      if (v52(*(v74 + 392), 1, *(v74 + 360)) == 1)
      {
        v31 = *(v74 + 392);
        v32 = *(v74 + 360);
        Date.init()();
        if (v52(v31, 1, v32) != 1)
        {
          outlined destroy of Date?(*(v74 + 392));
        }
      }

      else
      {
        (*(*(v74 + 368) + 32))(*(v74 + 376), *(v74 + 392), *(v74 + 360));
      }

      v26 = *(v74 + 344);
      outlined init with copy of QuantityPersisting(*(v74 + 352) + OBJC_IVAR____TtC19SiriWellnessIntents22LogPeriodIntentHandler_storage, v74 + 56);
      v28 = *(v74 + 80);
      v29 = *(v74 + 88);
      __swift_project_boxed_opaque_existential_1((v74 + 56), v28);
      v27 = [v26 flow];
      v30 = (*(v29 + 16) + **(v29 + 16));
      v5 = swift_task_alloc();
      *(v74 + 512) = v5;
      *v5 = *(v74 + 192);
      v5[1] = LogPeriodIntentHandler.handle(intent:);
      v6 = *(v74 + 376);

      return v30(v6, v27, v28, v29);
    }

    outlined destroy of Date?(*(v74 + 400));
    v48 = *(v74 + 456);
    v4 = *(v74 + 432);
    v47 = *(v74 + 408);
    v46 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v48(v4, v46, v47);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v51 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(oslog, v49))
    {

      goto LABEL_17;
    }

    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v43 = createStorage<A>(capacity:type:)(0, v41, v41);
    v44 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v74 + 248) = buf;
    *(v74 + 256) = v43;
    *(v74 + 264) = v44;
    serialize(_:at:)(0, (v74 + 248));
    serialize(_:at:)(0, (v74 + 248));
    *(v74 + 272) = v51;
    v45 = swift_task_alloc();
    v45[2] = v74 + 248;
    v45[3] = v74 + 256;
    v45[4] = v74 + 264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v62)
    {

      _os_log_impl(&dword_269912000, oslog, v49, "LogPeriodIntentHandler missing date. Assuming date is Now.", buf, 2u);
      destroyStorage<A>(_:count:)(v43, 0, v41);
      destroyStorage<A>(_:count:)(v44, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

LABEL_17:
      v40 = *(v74 + 488);
      v38 = *(v74 + 432);
      v39 = *(v74 + 408);
      MEMORY[0x277D82BD8](oslog);
      v40(v38, v39);
      goto LABEL_18;
    }
  }

  v22 = *(v74 + 456);
  v8 = *(v74 + 424);
  v21 = *(v74 + 408);
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v22(v8, v20, v21);
  swift_endAccess();
  log = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  v25 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(log, v23))
  {
    v9 = *(v74 + 480);
    v16 = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(0, v15, v15);
    v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v74 + 216) = v16;
    *(v74 + 224) = v17;
    *(v74 + 232) = v18;
    serialize(_:at:)(0, (v74 + 216));
    serialize(_:at:)(0, (v74 + 216));
    *(v74 + 240) = v25;
    v19 = swift_task_alloc();
    v19[2] = v74 + 216;
    v19[3] = v74 + 224;
    v19[4] = v74 + 232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v9)
    {
    }

    _os_log_impl(&dword_269912000, log, v23, "Not authorized to write Cycle Tracking data.", v16, 2u);
    destroyStorage<A>(_:count:)(v17, 0, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v16, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = *(v74 + 488);
  v11 = *(v74 + 424);
  v12 = *(v74 + 408);
  MEMORY[0x277D82BD8](log);
  v13(v11, v12);
  type metadata accessor for LogPeriodIntentResponse();
  v14 = LogPeriodIntentResponse.__allocating_init(code:userActivity:)(101, 0);

  v10 = *(*(v74 + 192) + 8);

  return v10(v14);
}

{
  v4 = v0[47];
  v3 = v0[46];
  v5 = v0[45];
  v0[24] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  (*(v3 + 8))(v4, v5);
  v6 = v0[65];

  v1 = *(v0[24] + 8);

  return v1(v6);
}

uint64_t LogPeriodIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 192) = *v1;
  *(v3 + 528) = a1;

  return MEMORY[0x2822009F8](LogPeriodIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in LogPeriodIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
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

  return LogPeriodIntentHandler.handle(intent:)(a1);
}

id LogPeriodIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PeriodPersistor.isLoggingAuthorized()(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  return MEMORY[0x2822009F8](PeriodPersistor.isLoggingAuthorized(), 0);
}

uint64_t PeriodPersistor.isLoggingAuthorized()()
{
  v1 = v0[4];
  v4 = v1;
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  v6 = [v4 healthStore];
  v0[5] = v6;
  MEMORY[0x277D82BD8](v4);
  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = PeriodPersistor.isLoggingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(v6);
}

uint64_t PeriodPersistor.isLoggingAuthorized()(unsigned int a1)
{
  v5 = *v1;
  v4 = *(*v1 + 40);
  *(v5 + 16) = *v1;

  v2 = *(*(v5 + 16) + 8);

  return v2(a1);
}

uint64_t PeriodPersistor.save(date:flow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 248) = a3;
  *(v3 + 240) = a2;
  *(v3 + 232) = a1;
  *(v3 + 168) = v3;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 376) = 0;
  *(v3 + 224) = 0;
  v4 = type metadata accessor for Logger();
  *(v3 + 256) = v4;
  *(v3 + 264) = *(v4 - 8);
  *(v3 + 272) = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  *(v3 + 280) = v5;
  *(v3 + 288) = *(v5 - 8);
  *(v3 + 296) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v3 + 304) = v6;
  *(v3 + 312) = *(v6 - 8);
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  *(v3 + 192) = a3;

  return MEMORY[0x2822009F8](PeriodPersistor.save(date:flow:), 0);
}

uint64_t PeriodPersistor.save(date:flow:)()
{
  v7 = *(v0 + 320);
  v5 = *(v0 + 312);
  v6 = *(v0 + 304);
  v10 = *(v0 + 296);
  v8 = *(v0 + 288);
  v9 = *(v0 + 280);
  v17 = *(v0 + 248);
  v13 = *(v0 + 240);
  v1 = *(v0 + 232);
  *(v0 + 168) = v0;
  v2 = *(v5 + 16);
  *(v0 + 328) = v2;
  *(v0 + 336) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v7, v1);
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v0 + 344) = isa;
  *(v0 + 200) = isa;
  v3 = *(v5 + 8);
  *(v0 + 352) = v3;
  *(v0 + 360) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v7, v6);
  static Calendar.current.getter();
  v12 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v9);
  v16 = [(objc_class *)isa hk_dayIndexWithCalendar:v12];
  MEMORY[0x277D82BD8](v12);
  *(v0 + 208) = v16;
  MEMORY[0x277D82BE0](v17);
  v15 = PeriodFlow.toMenstrualFlow()(v13);
  *(v0 + 16) = *(v0 + 168);
  *(v0 + 56) = v0 + 377;
  *(v0 + 24) = PeriodPersistor.save(date:flow:);
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  *(v0 + 112) = v14;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  *(v0 + 104) = &block_descriptor_6;
  [v17 saveBleedingFlow:v15 forBleedingType:0 dayIndex:v16 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v4 = *v0;
  v4[21] = *v0;
  v1 = v4[6];
  v4[46] = v1;
  if (v1)
  {
    v2 = PeriodPersistor.save(date:flow:);
  }

  else
  {
    v2 = PeriodPersistor.save(date:flow:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v46 = v0;
  v1 = *(v0 + 248);
  *(v0 + 168) = v0;
  v40 = *(v0 + 377);
  *(v0 + 376) = v40 & 1;
  MEMORY[0x277D82BD8](v1);
  if (v40)
  {
    v32 = v39[44];
    v36 = v39[43];
    v30 = v39[41];
    v33 = v39[40];
    v31 = v39[38];
    v35 = v39[30];
    v29 = v39[29];
    type metadata accessor for LogPeriodIntentResponse();
    v37 = LogPeriodIntentResponse.__allocating_init(code:userActivity:)(4, 0);
    v39[28] = v37;
    v30(v33, v29, v31);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v32(v33, v31);
    [v37 setDate_];
    MEMORY[0x277D82BD8](isa);
    [v37 setFlow_];
    MEMORY[0x277D82BD8](v36);
    v38 = v37;
  }

  else
  {
    lazy protocol witness table accessor for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError();
    v20 = swift_allocError();
    swift_willThrow();
    v2 = v39[34];
    v19 = v39[32];
    v17 = v39[33];
    v3 = v20;
    v39[27] = v20;
    v18 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v17 + 16))(v2, v18, v19);
    swift_endAccess();
    v4 = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = 32;
    v24 = swift_allocObject();
    *(v24 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
    *(v22 + 24) = v21;
    v25 = swift_allocObject();
    *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v25 + 24) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v26 = v5;

    *v26 = partial apply for closure #1 in OSLogArguments.append(_:);
    v26[1] = v23;

    v26[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v26[3] = v24;

    v26[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v26[5] = v25;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v28))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v15 = createStorage<A>(capacity:type:)(0, v13, v13);
      v16 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v41 = buf;
      v42 = v15;
      v43 = v16;
      serialize(_:at:)(2, &v41);
      serialize(_:at:)(1, &v41);
      v44 = partial apply for closure #1 in OSLogArguments.append(_:);
      v45 = v23;
      closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
      v44 = partial apply for closure #1 in OSLogArguments.append(_:);
      v45 = v24;
      closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
      v44 = partial apply for closure #1 in OSLogArguments.append(_:);
      v45 = v25;
      closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
      _os_log_impl(&dword_269912000, oslog, v28, "Failed to persist sample. Error: %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v15, 0, v13);
      destroyStorage<A>(_:count:)(v16, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v11 = v39[43];
    v9 = v39[34];
    v10 = v39[32];
    v8 = v39[33];
    MEMORY[0x277D82BD8](oslog);
    (*(v8 + 8))(v9, v10);
    type metadata accessor for LogPeriodIntentResponse();
    v12 = LogPeriodIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    MEMORY[0x277D82BD8](v11);
    v38 = v12;
  }

  v6 = *(v39[21] + 8);

  return v6(v38);
}

uint64_t PeriodPersistor.save(date:flow:)(uint64_t a1)
{
  v36 = v1;
  v18 = v1[31];
  v1[21] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v18);
  v22 = v1[46];
  v2 = v1[34];
  v19 = v1[33];
  v21 = v1[32];
  v3 = v22;
  v1[27] = v22;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v19 + 16))(v2, v20, v21);
  swift_endAccess();
  v4 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v28 = v5;

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
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0, v13, v13);
    v16 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = buf;
    v32 = v15;
    v33 = v16;
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
    _os_log_impl(&dword_269912000, v29, v30, "Failed to persist sample. Error: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = v17[43];
  v9 = v17[34];
  v10 = v17[32];
  v8 = v17[33];
  MEMORY[0x277D82BD8](v29);
  (*(v8 + 8))(v9, v10);
  type metadata accessor for LogPeriodIntentResponse();
  v12 = LogPeriodIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  MEMORY[0x277D82BD8](v11);

  v6 = *(v17[21] + 8);

  return v6(v12);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  MEMORY[0x277D82BE0](a3);
  v8 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v8, a3, MEMORY[0x277D839B0]);
  }

  else
  {
    v9 = a2;
    _resumeUnsafeThrowingContinuation<A>(_:_:)(v8, &v9, MEMORY[0x277D839B0]);
  }

  return MEMORY[0x277D82BD8](a3);
}

uint64_t protocol witness for PeriodPersisting.isLoggingAuthorized() in conformance PeriodPersistor()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return PeriodPersistor.isLoggingAuthorized()(v5);
}

uint64_t protocol witness for PeriodPersisting.save(date:flow:) in conformance PeriodPersistor(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return PeriodPersistor.save(date:flow:)(a1, a2, v8);
}

uint64_t sub_2699EDBAC()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in LogPeriodIntentHandler.handle(intent:)()
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

  return @objc closure #1 in LogPeriodIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t lazy protocol witness table accessor for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError()
{
  v2 = lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError;
  if (!lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError;
  if (!lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError;
  if (!lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError);
    return WitnessTable;
  }

  return v2;
}

uint64_t UnsafeContinuation.resume(throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v5, a1);
  return swift_continuation_throwingResumeWithError();
}

unint64_t type metadata accessor for HKMenstrualCyclesStore()
{
  v2 = lazy cache variable for type metadata for HKMenstrualCyclesStore;
  if (!lazy cache variable for type metadata for HKMenstrualCyclesStore)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMenstrualCyclesStore);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t PeriodProjectionFocus.init(rawValue:)(uint64_t a1)
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
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PeriodProjectionFocus@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PeriodProjectionFocus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

id static PeriodProjectionFocusResolutionResult.success(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  PeriodProjectionFocus.rawValue.getter();
  v1 = [ObjCClassFromMetadata successWithResolvedValue_];

  return v1;
}

id static PeriodProjectionFocusResolutionResult.confirmationRequired(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  PeriodProjectionFocus.rawValue.getter();
  v1 = [ObjCClassFromMetadata confirmationRequiredWithValueToConfirm_];

  return v1;
}

id PeriodProjectionFocusResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithJSONDictionary_forIntent_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](isa);

  return v7;
}

id PeriodProjectionFocusResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for PeriodProjectionFocusResolutionResult();
  v6 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);
  MEMORY[0x277D82BD8](isa);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v10 = v6;
    MEMORY[0x277D82BD8](a2);

    MEMORY[0x277D82BD8](v10);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a2);

    return 0;
  }
}

id PeriodProjectionFocusResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeriodProjectionFocusResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id LogSpecificMedicationsIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LogSpecificMedicationsIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogSpecificMedicationsIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogSpecificMedicationsIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for LogSpecificMedicationsIntent();
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

id LogSpecificMedicationsIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

id LogSpecificMedicationsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v10.super_class = type metadata accessor for LogSpecificMedicationsIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id LogSpecificMedicationsIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

id LogSpecificMedicationsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v16.super_class = type metadata accessor for LogSpecificMedicationsIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id LogSpecificMedicationsIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogSpecificMedicationsIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogSpecificMedicationsIntentResponseCode.init(rawValue:)(uint64_t a1)
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
    case 104:
      return 104;
    case 105:
      return 105;
    case 106:
      return 106;
    case 107:
      return 107;
    case 108:
      return 108;
    case 109:
      return 109;
    case 110:
      return 110;
    case 111:
      return 111;
    case 112:
      return 112;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogSpecificMedicationsIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogSpecificMedicationsIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t LogSpecificMedicationsIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___LogSpecificMedicationsIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t LogSpecificMedicationsIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___LogSpecificMedicationsIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for LogSpecificMedicationsIntentResponse.code : LogSpecificMedicationsIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = LogSpecificMedicationsIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for LogSpecificMedicationsIntentResponse.code : LogSpecificMedicationsIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  LogSpecificMedicationsIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *LogSpecificMedicationsIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___LogSpecificMedicationsIntentResponse_code];
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

id LogSpecificMedicationsIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___LogSpecificMedicationsIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for LogSpecificMedicationsIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogSpecificMedicationsIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogSpecificMedicationsIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogSpecificMedicationsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogSpecificMedicationsIntentResponse();
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

id LogSpecificMedicationsIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogSpecificMedicationsIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogSpecificMedicationsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogSpecificMedicationsIntentResponse();
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

id LogSpecificMedicationsIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
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

id LogSpecificMedicationsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___LogSpecificMedicationsIntentResponse_code = 0;

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
  v7.super_class = type metadata accessor for LogSpecificMedicationsIntentResponse();
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

id LogSpecificMedicationsIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogSpecificMedicationsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

void *LogGenericMedicationsIntentHandler.init(storage:)(void *a1)
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
    memset(v7, 0, sizeof(v7));
    __dst[3] = &type metadata for GenericMedicationsPersistor;
    __dst[4] = &protocol witness table for GenericMedicationsPersistor;
    __dst[0] = swift_allocObject();
    GenericMedicationsPersistor.init(medStorageHelper:)(v7, (__dst[0] + 16));
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents34LogGenericMedicationsIntentHandler_storage]);
  v6.receiver = v11;
  v6.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v3);
  v11 = v3;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v3;
}

void *GenericMedicationsPersistor.init(medStorageHelper:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  __dst[5] = a1;
  type metadata accessor for HKHealthStore();
  v6 = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v6);
  __b[0] = v6;
  type metadata accessor for HKMedicationExposableDoseEventControl();
  __b[1] = HKUnitPreferenceController.__allocating_init(healthStore:)(v6);
  outlined init with copy of QuantityPersisting?(a1, v9);
  if (v10)
  {
    outlined init with take of QuantityPersisting(v9, __dst);
  }

  else
  {
    v4 = type metadata accessor for MedStorageHelper();
    memset(v8, 0, sizeof(v8));
    v2 = MedStorageHelper.__allocating_init(storage:)(v8);
    __dst[3] = v4;
    __dst[4] = &protocol witness table for MedStorageHelper;
    __dst[0] = v2;
    if (v10)
    {
      outlined destroy of QuantityPersisting?(v9);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &__b[2]);
  outlined init with copy of GenericMedicationsPersistor(__b, a2);
  outlined destroy of QuantityPersisting?(a1);
  return outlined destroy of GenericMedicationsPersistor(__b);
}

uint64_t sub_2699F08B4()
{
  MEMORY[0x277D82BD8](v0[2]);
  MEMORY[0x277D82BD8](v0[3]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  return swift_deallocObject();
}

uint64_t LogGenericMedicationsIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 528) = v1;
  *(v2 + 520) = a1;
  *(v2 + 304) = v2;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 696) = 0;
  *(v2 + 704) = 0;
  *(v2 + 712) = 0;
  *(v2 + 720) = 0;
  v3 = type metadata accessor for Logger();
  *(v2 + 536) = v3;
  *(v2 + 544) = *(v3 - 8);
  *(v2 + 552) = swift_task_alloc();
  *(v2 + 560) = swift_task_alloc();
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = swift_task_alloc();
  *(v2 + 584) = swift_task_alloc();
  *(v2 + 592) = swift_task_alloc();
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 312) = a1;
  *(v2 + 320) = v1;

  return MEMORY[0x2822009F8](LogGenericMedicationsIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 304) = *v1;
  *(v3 + 672) = a1;

  return MEMORY[0x2822009F8](LogGenericMedicationsIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 304) = *v1;
  *(v3 + 688) = a1;

  return MEMORY[0x2822009F8](LogGenericMedicationsIntentHandler.handle(intent:), 0);
}

uint64_t LogGenericMedicationsIntentHandler.handle(intent:)()
{
  v1 = v0[75];
  v19 = v0[68];
  v21 = v0[67];
  v0[38] = v0;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v19 + 16);
  v0[76] = v2;
  v0[77] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v20, v21);
  swift_endAccess();
  v23 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v0[78] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v24 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v23, v22))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0, v13, v13);
    v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v18 + 488) = buf;
    *(v18 + 496) = v15;
    *(v18 + 504) = v16;
    serialize(_:at:)(0, (v18 + 488));
    serialize(_:at:)(0, (v18 + 488));
    *(v18 + 512) = v24;
    v17 = swift_task_alloc();
    v17[2] = v18 + 488;
    v17[3] = v18 + 496;
    v17[4] = v18 + 504;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v23, v22, "Checking authorization for medications...", buf, 2u);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  *(v18 + 632) = 0;
  v7 = *(v18 + 600);
  v8 = *(v18 + 536);
  v9 = *(v18 + 528);
  v6 = *(v18 + 544);
  MEMORY[0x277D82BD8](v23);
  v3 = *(v6 + 8);
  *(v18 + 640) = v3;
  *(v18 + 648) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v7, v8);
  outlined init with copy of QuantityPersisting(v9 + OBJC_IVAR____TtC19SiriWellnessIntents34LogGenericMedicationsIntentHandler_storage, v18 + 16);
  v12 = *(v18 + 40);
  v10 = *(v18 + 48);
  __swift_project_boxed_opaque_existential_1((v18 + 16), v12);
  v11 = (*(v10 + 8) + **(v10 + 8));
  v4 = swift_task_alloc();
  *(v18 + 656) = v4;
  *v4 = *(v18 + 304);
  v4[1] = LogGenericMedicationsIntentHandler.handle(intent:);

  return v11(v12, v10);
}

{
  v170 = v0;
  v159 = *(v0 + 697);
  *(v0 + 304) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v159 & 1) == 0)
  {
    v27 = *(v158 + 608);
    v14 = *(v158 + 552);
    v26 = *(v158 + 536);
    v25 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v27(v14, v25, v26);
    swift_endAccess();
    v29 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v30 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v29, v28))
    {
      v15 = *(v158 + 632);
      v21 = static UnsafeMutablePointer.allocate(capacity:)();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v22 = createStorage<A>(capacity:type:)(0, v20, v20);
      v23 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v158 + 328) = v21;
      *(v158 + 336) = v22;
      *(v158 + 344) = v23;
      serialize(_:at:)(0, (v158 + 328));
      serialize(_:at:)(0, (v158 + 328));
      *(v158 + 352) = v30;
      v24 = swift_task_alloc();
      v24[2] = v158 + 328;
      v24[3] = v158 + 336;
      v24[4] = v158 + 344;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v15)
      {
      }

      _os_log_impl(&dword_269912000, v29, v28, "Not authorized to write medications data.", v21, 2u);
      destroyStorage<A>(_:count:)(v22, 0, v20);
      destroyStorage<A>(_:count:)(v23, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v21, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v19 = *(v158 + 640);
    v17 = *(v158 + 552);
    v18 = *(v158 + 536);
    MEMORY[0x277D82BD8](v29);
    v19(v17, v18);
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v48 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    goto LABEL_59;
  }

  v154 = *(v158 + 608);
  v1 = *(v158 + 592);
  v153 = *(v158 + 536);
  v152 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v154(v1, v152, v153);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v155 = static os_log_type_t.debug.getter();
  v157 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v155))
  {
    v2 = *(v158 + 632);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v149 = createStorage<A>(capacity:type:)(0, v147, v147);
    v150 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v158 + 456) = buf;
    *(v158 + 464) = v149;
    *(v158 + 472) = v150;
    serialize(_:at:)(0, (v158 + 456));
    serialize(_:at:)(0, (v158 + 456));
    *(v158 + 480) = v157;
    v151 = swift_task_alloc();
    v151[2] = v158 + 456;
    v151[3] = v158 + 464;
    v151[4] = v158 + 472;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v2)
    {
    }

    _os_log_impl(&dword_269912000, oslog, v155, "Authorization check successful for medications!", buf, 2u);
    destroyStorage<A>(_:count:)(v149, 0, v147);
    destroyStorage<A>(_:count:)(v150, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v146 = 0;
  }

  else
  {

    v146 = *(v158 + 632);
  }

  v144 = *(v158 + 640);
  v142 = *(v158 + 592);
  v143 = *(v158 + 536);
  v145 = *(v158 + 520);
  MEMORY[0x277D82BD8](oslog);
  v144(v142, v143);
  *(v158 + 360) = [v145 medStatus];
  if (*(v158 + 360))
  {
    v139 = *(v158 + 360);
    MEMORY[0x277D82BE0](v139);
    outlined destroy of HealthKitPersistor((v158 + 360));
    v140 = [v139 BOOLValue];
    MEMORY[0x277D82BD8](v139);
    v141 = v140;
  }

  else
  {
    outlined destroy of HealthKitPersistor((v158 + 360));
    v141 = 2;
  }

  if (v141 == 2)
  {
    v41 = *(v158 + 608);
    v13 = *(v158 + 560);
    v40 = *(v158 + 536);
    v39 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v41(v13, v39, v40);
    swift_endAccess();
    v43 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v44 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v43, v42))
    {
      v35 = static UnsafeMutablePointer.allocate(capacity:)();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v36 = createStorage<A>(capacity:type:)(0, v34, v34);
      v37 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v158 + 368) = v35;
      *(v158 + 376) = v36;
      *(v158 + 384) = v37;
      serialize(_:at:)(0, (v158 + 368));
      serialize(_:at:)(0, (v158 + 368));
      *(v158 + 392) = v44;
      v38 = swift_task_alloc();
      v38[2] = v158 + 368;
      v38[3] = v158 + 376;
      v38[4] = v158 + 384;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v146)
      {
      }

      _os_log_impl(&dword_269912000, v43, v42, "Unable to extract BOOLean value for medStatusTaken from LogGenericMedicationsIntent.", v35, 2u);
      destroyStorage<A>(_:count:)(v36, 0, v34);
      destroyStorage<A>(_:count:)(v37, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v35, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v33 = *(v158 + 640);
    v31 = *(v158 + 560);
    v32 = *(v158 + 536);
    MEMORY[0x277D82BD8](v43);
    v33(v31, v32);
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v48 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    goto LABEL_59;
  }

  v3 = *(v158 + 520);
  *(v158 + 696) = v141 & 1;
  *(v158 + 400) = [v3 shouldOverwriteExistingStatuses];
  if (*(v158 + 400))
  {
    v136 = *(v158 + 400);
    MEMORY[0x277D82BE0](v136);
    outlined destroy of HealthKitPersistor((v158 + 400));
    v137 = [v136 BOOLValue];
    MEMORY[0x277D82BD8](v136);
    v138 = v137;
  }

  else
  {
    outlined destroy of HealthKitPersistor((v158 + 400));
    v138 = 2;
  }

  if (v138 != 2)
  {
    v118 = *(v158 + 608);
    v4 = *(v158 + 584);
    v117 = *(v158 + 536);
    *(v158 + 720) = v138 & 1;
    v116 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v118(v4, v116, v117);
    swift_endAccess();
    v119 = swift_allocObject();
    *(v119 + 16) = v141 & 1;
    v123 = swift_allocObject();
    *(v123 + 16) = v138 & 1;
    log = Logger.logObject.getter();
    v135 = static os_log_type_t.debug.getter();
    v127 = swift_allocObject();
    *(v127 + 16) = 0;
    v128 = swift_allocObject();
    *(v128 + 16) = 4;
    v120 = swift_allocObject();
    *(v120 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v120 + 24) = v119;
    v121 = swift_allocObject();
    *(v121 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v121 + 24) = v120;
    v122 = swift_allocObject();
    *(v122 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v122 + 24) = v121;
    v129 = swift_allocObject();
    *(v129 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v129 + 24) = v122;
    v130 = swift_allocObject();
    *(v130 + 16) = 0;
    v131 = swift_allocObject();
    *(v131 + 16) = 4;
    v124 = swift_allocObject();
    *(v124 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v124 + 24) = v123;
    v125 = swift_allocObject();
    *(v125 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v125 + 24) = v124;
    v126 = swift_allocObject();
    *(v126 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v126 + 24) = v125;
    v132 = swift_allocObject();
    *(v132 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v132 + 24) = v126;
    _allocateUninitializedArray<A>(_:)();
    v133 = v5;

    *v133 = partial apply for closure #1 in OSLogArguments.append(_:);
    v133[1] = v127;

    v133[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v133[3] = v128;

    v133[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v133[5] = v129;

    v133[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v133[7] = v130;

    v133[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v133[9] = v131;

    v133[10] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v133[11] = v132;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v135))
    {
      v113 = static UnsafeMutablePointer.allocate(capacity:)();
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v114 = createStorage<A>(capacity:type:)(0, v112, v112);
      v115 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v165 = v113;
      v166 = v114;
      v167 = v115;
      serialize(_:at:)(0, &v165);
      serialize(_:at:)(2, &v165);
      v168 = partial apply for closure #1 in OSLogArguments.append(_:);
      v169 = v127;
      closure #1 in osLogInternal(_:log:type:)(&v168, &v165, &v166, &v167);
      if (v146)
      {
      }

      v168 = partial apply for closure #1 in OSLogArguments.append(_:);
      v169 = v128;
      closure #1 in osLogInternal(_:log:type:)(&v168, &v165, &v166, &v167);
      v168 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v169 = v129;
      closure #1 in osLogInternal(_:log:type:)(&v168, &v165, &v166, &v167);
      v168 = partial apply for closure #1 in OSLogArguments.append(_:);
      v169 = v130;
      closure #1 in osLogInternal(_:log:type:)(&v168, &v165, &v166, &v167);
      v168 = partial apply for closure #1 in OSLogArguments.append(_:);
      v169 = v131;
      closure #1 in osLogInternal(_:log:type:)(&v168, &v165, &v166, &v167);
      v168 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v169 = v132;
      closure #1 in osLogInternal(_:log:type:)(&v168, &v165, &v166, &v167);
      _os_log_impl(&dword_269912000, log, v135, "Persisting generic medications with override...\n  medStatusIsTaken: %{BOOL}d\n  shouldOverwriteExistingStatuses: %{BOOL}d", v113, 0xEu);
      destroyStorage<A>(_:count:)(v114, 0, v112);
      destroyStorage<A>(_:count:)(v115, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v113, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v107 = *(v158 + 640);
    v105 = *(v158 + 584);
    v106 = *(v158 + 536);
    v108 = *(v158 + 528);
    MEMORY[0x277D82BD8](log);
    v107(v105, v106);
    outlined init with copy of QuantityPersisting(v108 + OBJC_IVAR____TtC19SiriWellnessIntents34LogGenericMedicationsIntentHandler_storage, v158 + 96);
    v109 = *(v158 + 120);
    v110 = *(v158 + 128);
    __swift_project_boxed_opaque_existential_1((v158 + 96), v109);
    v111 = (*(v110 + 16) + **(v110 + 16));
    v7 = swift_task_alloc();
    *(v158 + 664) = v7;
    *v7 = *(v158 + 304);
    v7[1] = LogGenericMedicationsIntentHandler.handle(intent:);

    return v111(v141 & 1, v138 & 1, v109, v110);
  }

  *(v158 + 408) = [*(v158 + 520) isTimeframeToday];
  if (*(v158 + 408))
  {
    v102 = *(v158 + 408);
    MEMORY[0x277D82BE0](v102);
    outlined destroy of HealthKitPersistor((v158 + 408));
    v103 = [v102 BOOLValue];
    MEMORY[0x277D82BD8](v102);
    v104 = v103;
  }

  else
  {
    outlined destroy of HealthKitPersistor((v158 + 408));
    v104 = 2;
  }

  if (v104 == 2)
  {
    v56 = *(v158 + 608);
    v12 = *(v158 + 568);
    v55 = *(v158 + 536);
    v54 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v56(v12, v54, v55);
    swift_endAccess();
    v58 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    v59 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v58, v57))
    {

      goto LABEL_45;
    }

    v50 = static UnsafeMutablePointer.allocate(capacity:)();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v51 = createStorage<A>(capacity:type:)(0, v49, v49);
    v52 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v158 + 416) = v50;
    *(v158 + 424) = v51;
    *(v158 + 432) = v52;
    serialize(_:at:)(0, (v158 + 416));
    serialize(_:at:)(0, (v158 + 416));
    *(v158 + 440) = v59;
    v53 = swift_task_alloc();
    v53[2] = v158 + 416;
    v53[3] = v158 + 424;
    v53[4] = v158 + 432;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v146)
    {

      _os_log_impl(&dword_269912000, v58, v57, "Not an override case & unable to extract BOOLean value for isTimeframeToday from LogGenericMedicationsIntent.", v50, 2u);
      destroyStorage<A>(_:count:)(v51, 0, v49);
      destroyStorage<A>(_:count:)(v52, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v50, MEMORY[0x277D84B78]);

LABEL_45:
      v47 = *(v158 + 640);
      v45 = *(v158 + 568);
      v46 = *(v158 + 536);
      MEMORY[0x277D82BD8](v58);
      v47(v45, v46);
      type metadata accessor for LogGenericMedicationsIntentResponse();
      v48 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
LABEL_59:

      v16 = *(*(v158 + 304) + 8);

      return v16(v48);
    }
  }

  v8 = *(v158 + 520);
  *(v158 + 704) = v104 & 1;
  *(v158 + 448) = [v8 confirmedLogAsScheduled];
  if (*(v158 + 448))
  {
    v99 = *(v158 + 448);
    MEMORY[0x277D82BE0](v99);
    outlined destroy of HealthKitPersistor((v158 + 448));
    v100 = [v99 BOOLValue];
    MEMORY[0x277D82BD8](v99);
    v101 = v100;
  }

  else
  {
    outlined destroy of HealthKitPersistor((v158 + 448));
    v101 = 2;
  }

  if (v101 == 2)
  {
    v98 = 0;
  }

  else
  {
    v98 = v101;
  }

  v73 = *(v158 + 608);
  v9 = *(v158 + 576);
  v72 = *(v158 + 536);
  *(v158 + 712) = v98 & 1;
  v71 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v73(v9, v71, v72);
  swift_endAccess();
  v74 = swift_allocObject();
  *(v74 + 16) = v104 & 1;
  v78 = swift_allocObject();
  *(v78 + 16) = v141 & 1;
  v82 = swift_allocObject();
  *(v82 + 16) = v98 & 1;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  v86 = swift_allocObject();
  *(v86 + 16) = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = 4;
  v75 = swift_allocObject();
  *(v75 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v75 + 24) = v74;
  v76 = swift_allocObject();
  *(v76 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v76 + 24) = v75;
  v77 = swift_allocObject();
  *(v77 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v77 + 24) = v76;
  v88 = swift_allocObject();
  *(v88 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  *(v88 + 24) = v77;
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  v90 = swift_allocObject();
  *(v90 + 16) = 4;
  v79 = swift_allocObject();
  *(v79 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v79 + 24) = v78;
  v80 = swift_allocObject();
  *(v80 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v80 + 24) = v79;
  v81 = swift_allocObject();
  *(v81 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v81 + 24) = v80;
  v91 = swift_allocObject();
  *(v91 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  *(v91 + 24) = v81;
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = 4;
  v83 = swift_allocObject();
  *(v83 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v83 + 24) = v82;
  v84 = swift_allocObject();
  *(v84 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v84 + 24) = v83;
  v85 = swift_allocObject();
  *(v85 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v85 + 24) = v84;
  v94 = swift_allocObject();
  *(v94 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  *(v94 + 24) = v85;
  _allocateUninitializedArray<A>(_:)();
  v95 = v10;

  *v95 = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[1] = v86;

  v95[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[3] = v87;

  v95[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v95[5] = v88;

  v95[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[7] = v89;

  v95[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[9] = v90;

  v95[10] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v95[11] = v91;

  v95[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[13] = v92;

  v95[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[15] = v93;

  v95[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v95[17] = v94;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v96, v97))
  {
    v68 = static UnsafeMutablePointer.allocate(capacity:)();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v69 = createStorage<A>(capacity:type:)(0, v67, v67);
    v70 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v160 = v68;
    v161 = v69;
    v162 = v70;
    serialize(_:at:)(0, &v160);
    serialize(_:at:)(3, &v160);
    v163 = partial apply for closure #1 in OSLogArguments.append(_:);
    v164 = v86;
    closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
    if (v146)
    {
    }

    v163 = partial apply for closure #1 in OSLogArguments.append(_:);
    v164 = v87;
    closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
    v163 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v164 = v88;
    closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
    v163 = partial apply for closure #1 in OSLogArguments.append(_:);
    v164 = v89;
    closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
    v163 = partial apply for closure #1 in OSLogArguments.append(_:);
    v164 = v90;
    closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
    v163 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v164 = v91;
    closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
    v163 = partial apply for closure #1 in OSLogArguments.append(_:);
    v164 = v92;
    closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
    v163 = partial apply for closure #1 in OSLogArguments.append(_:);
    v164 = v93;
    closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
    v163 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v164 = v94;
    closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
    _os_log_impl(&dword_269912000, v96, v97, "Persisting generic medications...\n  isTimeframeToday: %{BOOL}d\n  medStatusIsTaken: %{BOOL}d\n  confirmedLogAsScheduled: %{BOOL}d", v68, 0x14u);
    destroyStorage<A>(_:count:)(v69, 0, v67);
    destroyStorage<A>(_:count:)(v70, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v68, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v62 = *(v158 + 640);
  v60 = *(v158 + 576);
  v61 = *(v158 + 536);
  v63 = *(v158 + 528);
  MEMORY[0x277D82BD8](v96);
  v62(v60, v61);
  outlined init with copy of QuantityPersisting(v63 + OBJC_IVAR____TtC19SiriWellnessIntents34LogGenericMedicationsIntentHandler_storage, v158 + 56);
  v64 = *(v158 + 80);
  v65 = *(v158 + 88);
  __swift_project_boxed_opaque_existential_1((v158 + 56), v64);
  v66 = (*(v65 + 24) + **(v65 + 24));
  v11 = swift_task_alloc();
  *(v158 + 680) = v11;
  *v11 = *(v158 + 304);
  v11[1] = LogGenericMedicationsIntentHandler.handle(intent:);

  return v66(v104 & 1, v141 & 1, v98 & 1, v64, v65);
}

{
  v0[38] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3 = v0[84];

  v1 = *(v0[38] + 8);

  return v1(v3);
}

{
  v0[38] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v3 = v0[86];

  v1 = *(v0[38] + 8);

  return v1(v3);
}

uint64_t LogGenericMedicationsIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 304) = *v1;
  *(v3 + 697) = a1;

  return MEMORY[0x2822009F8](LogGenericMedicationsIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in LogGenericMedicationsIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
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

  return LogGenericMedicationsIntentHandler.handle(intent:)(a1);
}

id LogGenericMedicationsIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GenericMedicationsPersistor.medicationController.getter()
{
  v2 = *(v0 + 8);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

void *outlined init with copy of GenericMedicationsPersistor(void *a1, void *a2)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v4;
  v5 = a1[1];
  MEMORY[0x277D82BE0](v5);
  a2[1] = v5;
  v2 = a1[5];
  a2[5] = v2;
  a2[6] = a1[6];
  (**(v2 - 8))(a2 + 2, a1 + 2);
  return a2;
}

void *outlined destroy of GenericMedicationsPersistor(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  __swift_destroy_boxed_opaque_existential_1(a1 + 2);
  return a1;
}

uint64_t GenericMedicationsPersistor.isLoggingAuthorized()()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](GenericMedicationsPersistor.isLoggingAuthorized(), 0);
}

{
  v1 = v0[4];
  v0[2] = v0;
  v5 = *v1;
  v0[5] = *v1;
  MEMORY[0x277D82BE0](v5);
  v2 = swift_task_alloc();
  *(v4 + 48) = v2;
  *v2 = *(v4 + 16);
  v2[1] = PeriodPersistor.isLoggingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(v5);
}

uint64_t GenericMedicationsPersistor.numMedInAppToday(doseEvents:)(uint64_t a1)
{
  v2[15] = a1;
  v2[8] = v2;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[14] = 0;
  v2[9] = a1;
  v2[10] = v1;
  return MEMORY[0x2822009F8](GenericMedicationsPersistor.numMedInAppToday(doseEvents:), 0);
}

uint64_t GenericMedicationsPersistor.numMedInAppToday(doseEvents:)()
{
  v11 = v0[15];
  v0[8] = v0;
  _allocateUninitializedArray<A>(_:)();
  v0[11] = Set.init(arrayLiteral:)();

  v0[12] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v9 = v10[13];
    if (!v9)
    {
      break;
    }

    v10[14] = v9;
    v5 = [v9 medicationIdentifier];
    v8 = [v5 underlyingIdentifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v1;
    MEMORY[0x277D82BD8](v5);
    v10[6] = v6;
    v10[7] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    Set.insert(_:)();
    MEMORY[0x277D82BD8](v8);

    MEMORY[0x277D82BD8](v9);
  }

  outlined destroy of [HKQuantityType](v10 + 2);

  v4 = Set.count.getter();

  outlined destroy of [HKQuantityType](v10 + 11);
  v2 = *(v10[8] + 8);

  return v2(v4);
}

uint64_t GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:)(char a1, char a2)
{
  *(v3 + 264) = v2;
  *(v3 + 554) = a2 & 1;
  *(v3 + 553) = a1 & 1;
  *(v3 + 192) = v3;
  *(v3 + 552) = 0;
  *(v3 + 560) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 224) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  v4 = type metadata accessor for Logger();
  *(v3 + 272) = v4;
  *(v3 + 280) = *(v4 - 8);
  *(v3 + 288) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v3 + 296) = v5;
  *(v3 + 304) = *(v5 - 8);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  *(v3 + 344) = v6;
  *(v3 + 352) = *(v6 - 8);
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 552) = a1 & 1;
  *(v3 + 560) = a2 & 1;
  *(v3 + 200) = v2;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:), 0);
}

uint64_t GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:)(uint64_t a1)
{
  v12 = *(v1 + 368);
  v15 = *(v1 + 360);
  v13 = *(v1 + 352);
  v14 = *(v1 + 344);
  v5 = *(v1 + 336);
  v9 = *(v1 + 328);
  v6 = *(v1 + 320);
  v10 = *(v1 + 312);
  v4 = *(v1 + 304);
  v7 = *(v1 + 296);
  v11 = *(v1 + 264);
  *(v1 + 192) = v1;
  Date.init()();
  Date.startOfDay.getter(v9);
  v8 = *(v4 + 8);
  v8(v5, v7);
  Date.init()();
  Date.endOfDay.getter(v10);
  v8(v6, v7);
  DateInterval.init(start:end:)();
  v18 = *(v11 + 8);
  *(v1 + 376) = v18;
  MEMORY[0x277D82BE0](v18);
  (*(v13 + 16))(v15, v12, v14);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  *(v1 + 384) = isa;
  v2 = *(v13 + 8);
  *(v1 + 392) = v2;
  *(v1 + 400) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v15, v14);
  *(v1 + 16) = *(v1 + 192);
  *(v1 + 56) = v1 + 216;
  *(v1 + 24) = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
  v16 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMd, &_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMR);
  *(v1 + 112) = v16;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 92) = 0;
  *(v1 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [HKMedicationExposableDoseEvent];
  *(v1 + 104) = &block_descriptor_7;
  [v18 doseEventsForDateInterval:isa medicationIdentifier:0 completion:?];

  return MEMORY[0x282200938](v1 + 16);
}

{
  v4 = *v1;
  v3 = *(*v1 + 440);
  *(v4 + 192) = *v1;
  *(v4 + 464) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:), 0);
}

{
  v4 = *v1;
  v3 = *(*v1 + 472);
  *(v4 + 192) = *v1;
  *(v4 + 488) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:), 0);
}

{
  v4 = *v1;
  v3 = *(*v1 + 496);
  *(v4 + 192) = *v1;
  *(v4 + 520) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:), 0);
}

{
  v4 = *v1;
  v3 = *(*v1 + 528);
  *(v4 + 192) = *v1;
  *(v4 + 544) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:), 0);
}

{
  v22 = v1[51];
  v21 = v1[49];
  v18 = v1[48];
  v17 = v1[47];
  v19 = v1[46];
  v20 = v1[43];
  v16 = v1[36];
  v23 = v1[35];
  v25 = v1[34];
  v1[24] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v21(v19, v20);
  v2 = v22;
  v1[28] = v22;
  v24 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v23 + 16))(v16, v24, v25);
  swift_endAccess();
  v27 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v28 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v27, v26))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 232) = buf;
    *(v15 + 240) = v12;
    *(v15 + 248) = v13;
    serialize(_:at:)(0, (v15 + 232));
    serialize(_:at:)(0, (v15 + 232));
    *(v15 + 256) = v28;
    v14 = swift_task_alloc();
    v14[2] = v15 + 232;
    v14[3] = v15 + 240;
    v14[4] = v15 + 248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v27, v26, "Failed fetching dose events for timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v15 + 408);
  v6 = *(v15 + 288);
  v7 = *(v15 + 272);
  v5 = *(v15 + 280);
  MEMORY[0x277D82BD8](v27);
  (*(v5 + 8))(v6, v7);
  type metadata accessor for LogGenericMedicationsIntentResponse();
  v9 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v3 = *(*(v15 + 192) + 8);

  return v3(v9);
}

uint64_t GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:)()
{
  v4 = *v0;
  v4[24] = *v0;
  v1 = v4[6];
  v4[51] = v1;
  if (v1)
  {
    v2 = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
  }

  else
  {
    v2 = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v24 = *(v0 + 384);
  v23 = *(v0 + 376);
  v30 = *(v0 + 553);
  *(v0 + 192) = v0;
  v25 = *(v0 + 216);

  *(v0 + 208) = v25;
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v26 = filterUniqueDoseEvents(doseEvents:)(v25, v1);

  *(v0 + 208) = v26;

  v27 = GenericMedicationsPersistor.getDoseEventsByStatus(doseEvents:)(v26);
  v28 = v2;
  v29 = v3;
  *(v0 + 416) = v27;
  *(v0 + 424) = v2;
  *(v0 + 432) = v3;

  *(v0 + 168) = v27;
  *(v0 + 176) = v28;
  *(v0 + 184) = v29;
  if (v30)
  {
    if (*(v22 + 554))
    {
      v21 = *(*(v22 + 264) + 8);
      *(v22 + 440) = v21;
      MEMORY[0x277D82BE0](v21);
      type metadata accessor for HKMedicationExposableDoseEvent();
      v20 = static Array.+ infix(_:_:)();
      *(v22 + 448) = v20;
      v4 = swift_task_alloc();
      v5 = v20;
      v6 = v4;
      v7 = v21;
      *(v22 + 456) = v6;
      *v6 = *(v22 + 192);
      v6[1] = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
      v8 = 1;
    }

    else
    {
      v19 = *(*(v22 + 264) + 8);
      *(v22 + 472) = v19;
      MEMORY[0x277D82BE0](v19);
      v10 = swift_task_alloc();
      v5 = v29;
      v11 = v10;
      v7 = v19;
      *(v22 + 480) = v11;
      *v11 = *(v22 + 192);
      v11[1] = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
      v8 = 1;
    }
  }

  else if (*(v22 + 554))
  {
    v18 = *(*(v22 + 264) + 8);
    *(v22 + 496) = v18;
    MEMORY[0x277D82BE0](v18);
    type metadata accessor for HKMedicationExposableDoseEvent();
    v17 = static Array.+ infix(_:_:)();
    *(v22 + 504) = v17;
    v12 = swift_task_alloc();
    v5 = v17;
    v13 = v12;
    v7 = v18;
    *(v22 + 512) = v13;
    *v13 = *(v22 + 192);
    v13[1] = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
    v8 = 0;
  }

  else
  {
    v16 = *(*(v22 + 264) + 8);
    *(v22 + 528) = v16;
    MEMORY[0x277D82BE0](v16);
    v14 = swift_task_alloc();
    v5 = v29;
    v15 = v14;
    v7 = v16;
    *(v22 + 536) = v15;
    *v15 = *(v22 + 192);
    v15[1] = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
    v8 = 0;
  }

  return GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:)(v7, v5, v8);
}

{
  v4 = v0[49];
  v5 = v0[46];
  v3 = v0[43];
  v0[24] = v0;

  outlined destroy of [HKQuantityType](v0 + 26);
  v4(v5, v3);
  v6 = v0[58];

  v1 = *(v0[24] + 8);

  return v1(v6);
}

{
  v4 = v0[49];
  v5 = v0[46];
  v3 = v0[43];
  v0[24] = v0;

  outlined destroy of [HKQuantityType](v0 + 26);
  v4(v5, v3);
  v6 = v0[61];

  v1 = *(v0[24] + 8);

  return v1(v6);
}

{
  v4 = v0[49];
  v5 = v0[46];
  v3 = v0[43];
  v0[24] = v0;

  outlined destroy of [HKQuantityType](v0 + 26);
  v4(v5, v3);
  v6 = v0[65];

  v1 = *(v0[24] + 8);

  return v1(v6);
}

{
  v4 = v0[49];
  v5 = v0[46];
  v3 = v0[43];
  v0[24] = v0;

  outlined destroy of [HKQuantityType](v0 + 26);
  v4(v5, v3);
  v6 = v0[68];

  v1 = *(v0[24] + 8);

  return v1(v6);
}

uint64_t GenericMedicationsPersistor.getDoseEventsByStatus(doseEvents:)(uint64_t a1)
{
  v41 = a1;
  v53 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64[1] = 0;
  v64[0] = 0;
  v61 = 0;
  v40 = 0;
  v49 = type metadata accessor for Logger();
  v42 = v49;
  v43 = *(v49 - 8);
  v47 = v43;
  v44 = v43;
  v45 = *(v43 + 64);
  MEMORY[0x28223BE20](v41, v49);
  v1 = v11 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v1;
  v70 = v2;
  v69 = v3;
  v48 = Logger.wellnessIntents.unsafeMutableAddressor();
  v50 = &v68;
  swift_beginAccess();
  (*(v47 + 16))(v1, v48, v49);
  swift_endAccess();
  v55 = Logger.logObject.getter();
  v51 = v55;
  v54 = static os_log_type_t.debug.getter();
  v52 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v56 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v55, v54))
  {
    v4 = v40;
    v31 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = 0;
    v32 = createStorage<A>(capacity:type:)(0, v28, v28);
    v30 = v32;
    v33 = createStorage<A>(capacity:type:)(v29, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v60[0] = v31;
    v59 = v32;
    v58 = v33;
    v34 = 0;
    v35 = v60;
    serialize(_:at:)(0, v60);
    serialize(_:at:)(v34, v35);
    v57 = v56;
    v36 = v11;
    MEMORY[0x28223BE20](v11, v5);
    v37 = &v11[-6];
    v11[-4] = v6;
    v11[-3] = &v59;
    v11[-2] = &v58;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v39 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_269912000, v51, v52, "getting doseEvents by status", v27, 2u);
      v25 = 0;
      destroyStorage<A>(_:count:)(v30, 0, v28);
      destroyStorage<A>(_:count:)(v33, v25, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v27, MEMORY[0x277D84B78]);

      v26 = v39;
    }
  }

  else
  {

    v26 = v40;
  }

  v23 = v26;

  (*(v44 + 8))(v46, v42);
  v19 = 0;
  v20 = type metadata accessor for HKMedicationExposableDoseEvent();
  v67 = _allocateUninitializedArray<A>(_:)();
  v66 = _allocateUninitializedArray<A>(_:)();
  v65 = _allocateUninitializedArray<A>(_:)();

  v63 = v41;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  v21 = v22;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v23; ; i = v13)
  {
    v17 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v18 = v62;
    if (!v62)
    {
      break;
    }

    v16 = v18;
    v14 = v18;
    v61 = v18;
    v15 = [v18 status];
    if (v15 == 4)
    {
      v7 = v14;
      v60[1] = v14;
      Array.append(_:)();
    }

    else
    {
      if (v15 == 5)
      {
        v8 = v14;
        v60[2] = v14;
      }

      else
      {
        v9 = v14;
        v60[3] = v14;
      }

      Array.append(_:)();
    }

    v13 = v17;
  }

  outlined destroy of [HKQuantityType](v64);
  v12 = v67;

  v11[1] = v66;

  v11[2] = v65;

  outlined destroy of [HKQuantityType](&v65);
  outlined destroy of [HKQuantityType](&v66);
  outlined destroy of [HKQuantityType](&v67);
  return v12;
}

uint64_t GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 528) = v3;
  *(v4 + 745) = a3 & 1;
  *(v4 + 520) = a2;
  *(v4 + 512) = a1;
  *(v4 + 288) = v4;
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
  *(v4 + 744) = 0;
  *(v4 + 312) = 0;
  *(v4 + 320) = 0;
  *(v4 + 328) = 0;
  *(v4 + 336) = 0;
  *(v4 + 344) = 0;
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  *(v4 + 368) = 0;
  *(v4 + 408) = 0;
  *(v4 + 416) = 0;
  *(v4 + 424) = 0;
  *(v4 + 432) = 0;
  *(v4 + 448) = 0;
  *(v4 + 464) = 0;
  v5 = type metadata accessor for Date();
  *(v4 + 536) = v5;
  *(v4 + 544) = *(v5 - 8);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 568) = v6;
  *(v4 + 576) = *(v6 - 8);
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 592) = swift_task_alloc();
  *(v4 + 296) = a1;
  *(v4 + 304) = a2;
  *(v4 + 744) = a3 & 1;
  *(v4 + 312) = v3;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:), 0);
}

uint64_t GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:)()
{
  v1 = v0[74];
  v35 = v0[72];
  v37 = v0[71];
  v0[36] = v0;
  v36 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v35 + 16);
  v0[75] = v2;
  v0[76] = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v36, v37);
  swift_endAccess();
  v39 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v0[77] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v40 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v39, v38))
  {
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = createStorage<A>(capacity:type:)(0, v29, v29);
    v32 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v34 + 480) = v30;
    *(v34 + 488) = v31;
    *(v34 + 496) = v32;
    serialize(_:at:)(0, (v34 + 480));
    serialize(_:at:)(0, (v34 + 480));
    *(v34 + 504) = v40;
    v33 = swift_task_alloc();
    v33[2] = v34 + 480;
    v33[3] = v34 + 488;
    v33[4] = v34 + 496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v39, v38, "Starting to write dose event", v30, 2u);
    destroyStorage<A>(_:count:)(v31, 0, v29);
    destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v30, MEMORY[0x277D84B78]);
  }

  v26 = *(v34 + 592);
  v27 = *(v34 + 568);
  v28 = *(v34 + 745);
  v25 = *(v34 + 576);
  MEMORY[0x277D82BD8](v39);
  v3 = *(v25 + 8);
  *(v34 + 624) = v3;
  *(v34 + 632) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v26, v27);
  if (v28)
  {
    v24 = 4;
  }

  else
  {
    v24 = 5;
  }

  *(v34 + 640) = v24;
  v22 = *(v34 + 520);
  *(v34 + 320) = v24;
  *(v34 + 648) = type metadata accessor for HKMedicationExposableDoseEvent();
  *(v34 + 328) = _allocateUninitializedArray<A>(_:)();
  *(v34 + 656) = type metadata accessor for MatchedMedName();
  *(v34 + 336) = _allocateUninitializedArray<A>(_:)();
  *(v34 + 344) = _allocateUninitializedArray<A>(_:)();
  Date.init()();

  *(v34 + 352) = v22;
  *(v34 + 664) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v23 = *(v34 + 360);
  *(v34 + 672) = v23;
  if (v23)
  {
    v4 = *(v34 + 640);
    v13 = *(v34 + 560);
    v5 = *(v34 + 552);
    v14 = *(v34 + 536);
    v17 = *(v34 + 528);
    v12 = *(v34 + 544);
    *(v34 + 416) = v23;
    v15 = [v23 updateForNewStatus_];
    *(v34 + 680) = v15;
    *(v34 + 424) = v15;
    (*(v12 + 16))(v5, v13, v14);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v5, v14);
    v21 = [v15 updateForNewStartDate_];
    *(v34 + 688) = v21;
    MEMORY[0x277D82BD8](isa);
    *(v34 + 432) = v21;
    MEMORY[0x277D82BE0](v21);
    *(v34 + 440) = v21;
    Array.append(_:)();
    outlined init with copy of QuantityPersisting(v17 + 16, v34 + 144);
    v18 = *(v34 + 168);
    v19 = *(v34 + 176);
    __swift_project_boxed_opaque_existential_1((v34 + 144), v18);
    v20 = (*(v19 + 24) + **(v19 + 24));
    v6 = swift_task_alloc();
    *(v34 + 696) = v6;
    *v6 = *(v34 + 288);
    v6[1] = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);

    return v20(v21, 1, v18, v19);
  }

  else
  {
    v11 = *(v34 + 512);
    outlined destroy of [HKQuantityType]((v34 + 272));

    v10 = Array._bridgeToObjectiveC()().super.isa;
    *(v34 + 728) = v10;

    *(v34 + 16) = *(v34 + 288);
    *(v34 + 56) = v8;
    *(v34 + 24) = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);
    v9 = swift_continuation_init();
    *(v34 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v34 + 112) = v9;
    *(v34 + 80) = MEMORY[0x277D85DD0];
    *(v34 + 88) = 1107296256;
    *(v34 + 92) = 0;
    *(v34 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
    *(v34 + 104) = &block_descriptor_151;
    [v11 writeDoseEvents:v10 completion:?];

    return MEMORY[0x282200938](v34 + 16);
  }
}

{
  v1 = *(v0 + 704);
  *(v0 + 288) = v0;
  if (v1)
  {
    v8 = v9[88];
    v9[58] = v8;
    __swift_destroy_boxed_opaque_existential_1(v9 + 18);
    MEMORY[0x277D82BE0](v8);
    v9[59] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    Array.append(_:)();
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v9 + 18);
  }

  v7 = v9[84];
  outlined init with copy of QuantityPersisting(v9[66] + 16, (v9 + 23));
  v4 = v9[26];
  v5 = v9[27];
  __swift_project_boxed_opaque_existential_1(v9 + 23, v4);
  v6 = (*(v5 + 24) + **(v5 + 24));
  v2 = swift_task_alloc();
  v9[89] = v2;
  *v2 = v9[36];
  v2[1] = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);

  return v6(v7, 1, v4, v5);
}

{
  v1 = *(v0 + 720);
  *(v0 + 288) = v0;
  if (v1)
  {
    v12 = *(v24 + 720);
    *(v24 + 448) = v12;
    __swift_destroy_boxed_opaque_existential_1((v24 + 184));
    MEMORY[0x277D82BE0](v12);
    *(v24 + 456) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    Array.append(_:)();
    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v24 + 184));
  }

  v10 = *(v24 + 680);
  v11 = *(v24 + 672);
  MEMORY[0x277D82BD8](*(v24 + 688));
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v13 = *(v24 + 360);
  *(v24 + 672) = v13;
  if (v13)
  {
    v2 = *(v24 + 640);
    v15 = *(v24 + 560);
    v3 = *(v24 + 552);
    v16 = *(v24 + 536);
    v19 = *(v24 + 528);
    v14 = *(v24 + 544);
    *(v24 + 416) = v13;
    v17 = [v13 updateForNewStatus_];
    *(v24 + 680) = v17;
    *(v24 + 424) = v17;
    (*(v14 + 16))(v3, v15, v16);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v3, v16);
    v23 = [v17 updateForNewStartDate_];
    *(v24 + 688) = v23;
    MEMORY[0x277D82BD8](isa);
    *(v24 + 432) = v23;
    MEMORY[0x277D82BE0](v23);
    *(v24 + 440) = v23;
    Array.append(_:)();
    outlined init with copy of QuantityPersisting(v19 + 16, v24 + 144);
    v20 = *(v24 + 168);
    v21 = *(v24 + 176);
    __swift_project_boxed_opaque_existential_1((v24 + 144), v20);
    v22 = (*(v21 + 24) + **(v21 + 24));
    v4 = swift_task_alloc();
    *(v24 + 696) = v4;
    *v4 = *(v24 + 288);
    v4[1] = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);

    return v22(v23, 1, v20, v21);
  }

  else
  {
    v9 = *(v24 + 512);
    outlined destroy of [HKQuantityType]((v24 + 272));

    v8 = Array._bridgeToObjectiveC()().super.isa;
    *(v24 + 728) = v8;

    *(v24 + 16) = *(v24 + 288);
    *(v24 + 56) = v6;
    *(v24 + 24) = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);
    v7 = swift_continuation_init();
    *(v24 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v24 + 112) = v7;
    *(v24 + 80) = MEMORY[0x277D85DD0];
    *(v24 + 88) = 1107296256;
    *(v24 + 92) = 0;
    *(v24 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
    *(v24 + 104) = &block_descriptor_151;
    [v9 writeDoseEvents:v8 completion:?];

    return MEMORY[0x282200938](v24 + 16);
  }
}

{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 288) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 736) = v1;
  if (v1)
  {
    v2 = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);
  }

  else
  {
    v2 = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[91];
  v7 = v0[70];
  v6 = v0[68];
  v8 = v0[67];
  v0[36] = v0;
  MEMORY[0x277D82BD8](v1);
  type metadata accessor for LogGenericMedicationsIntentResponse();
  v9 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  MEMORY[0x277D82BE0](v9);
  v0[51] = v9;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setMatchingMeds_];
  MEMORY[0x277D82BD8](isa);

  v5 = Array._bridgeToObjectiveC()().super.isa;

  [v9 setMatchingMedsBeforeUpdate_];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v0[51]);
  (*(v6 + 8))(v7, v8);
  outlined destroy of [HKQuantityType](v0 + 43);
  outlined destroy of [HKQuantityType](v0 + 42);
  outlined destroy of [HKQuantityType](v0 + 41);

  v2 = *(v0[36] + 8);

  return v2(v9);
}

uint64_t GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:)(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 288) = *v1;
  *(v3 + 704) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:), 0);
}

{
  v3 = *v1;
  *(v3 + 288) = *v1;
  *(v3 + 720) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:), 0);
}

{
  v21 = v1[92];
  v20 = v1[91];
  v24 = v1[75];
  v19 = v1[73];
  v23 = v1[71];
  v1[36] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v20);
  v2 = v21;
  v1[46] = v21;
  v22 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v24(v19, v22, v23);
  swift_endAccess();
  v26 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v27 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v26, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0, v13, v13);
    v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v18 + 376) = buf;
    *(v18 + 384) = v15;
    *(v18 + 392) = v16;
    serialize(_:at:)(0, (v18 + 376));
    serialize(_:at:)(0, (v18 + 376));
    *(v18 + 400) = v27;
    v17 = swift_task_alloc();
    v17[2] = v18 + 376;
    v17[3] = v18 + 384;
    v17[4] = v18 + 392;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v26, v25, "Failed writing updated dose events for specific meds.", buf, 2u);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v18 + 736);
  v7 = *(v18 + 624);
  v5 = *(v18 + 584);
  v6 = *(v18 + 568);
  v10 = *(v18 + 560);
  v11 = *(v18 + 536);
  v9 = *(v18 + 544);
  MEMORY[0x277D82BD8](v26);
  v7(v5, v6);
  type metadata accessor for LogGenericMedicationsIntentResponse();
  v12 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  (*(v9 + 8))(v10, v11);
  outlined destroy of [HKQuantityType]((v18 + 344));
  outlined destroy of [HKQuantityType]((v18 + 336));
  outlined destroy of [HKQuantityType]((v18 + 328));

  v3 = *(*(v18 + 288) + 8);

  return v3(v12);
}

uint64_t GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:)(char a1, char a2, char a3)
{
  *(v4 + 1176) = v3;
  *(v4 + 1731) = a3 & 1;
  *(v4 + 1730) = a2 & 1;
  *(v4 + 1729) = a1 & 1;
  *(v4 + 584) = v4;
  *(v4 + 1728) = 0;
  *(v4 + 1736) = 0;
  *(v4 + 1744) = 0;
  *(v4 + 592) = 0;
  *(v4 + 600) = 0;
  *(v4 + 616) = 0;
  *(v4 + 656) = 0;
  *(v4 + 672) = 0;
  *(v4 + 680) = 0;
  *(v4 + 552) = 0;
  *(v4 + 560) = 0;
  *(v4 + 704) = 0;
  *(v4 + 744) = 0;
  *(v4 + 792) = 0;
  *(v4 + 800) = 0;
  *(v4 + 568) = 0;
  *(v4 + 576) = 0;
  *(v4 + 824) = 0;
  *(v4 + 864) = 0;
  *(v4 + 1056) = 0;
  *(v4 + 1064) = 0;
  *(v4 + 1104) = 0;
  v5 = type metadata accessor for Logger();
  *(v4 + 1184) = v5;
  *(v4 + 1192) = *(v5 - 8);
  *(v4 + 1200) = swift_task_alloc();
  *(v4 + 1208) = swift_task_alloc();
  *(v4 + 1216) = swift_task_alloc();
  *(v4 + 1224) = swift_task_alloc();
  *(v4 + 1232) = swift_task_alloc();
  *(v4 + 1240) = swift_task_alloc();
  *(v4 + 1248) = swift_task_alloc();
  *(v4 + 1256) = swift_task_alloc();
  *(v4 + 1264) = swift_task_alloc();
  *(v4 + 1272) = swift_task_alloc();
  *(v4 + 1280) = swift_task_alloc();
  *(v4 + 1288) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 1296) = v6;
  *(v4 + 1304) = *(v6 - 8);
  *(v4 + 1312) = swift_task_alloc();
  *(v4 + 1320) = swift_task_alloc();
  *(v4 + 1328) = swift_task_alloc();
  *(v4 + 1336) = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  *(v4 + 1344) = v7;
  *(v4 + 1352) = *(v7 - 8);
  *(v4 + 1360) = swift_task_alloc();
  *(v4 + 1368) = swift_task_alloc();
  *(v4 + 1728) = a1 & 1;
  *(v4 + 1736) = a2 & 1;
  *(v4 + 1744) = a3 & 1;
  *(v4 + 592) = v3;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

uint64_t GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:)(uint64_t a1)
{
  v12 = *(v1 + 1368);
  v15 = *(v1 + 1360);
  v13 = *(v1 + 1352);
  v14 = *(v1 + 1344);
  v5 = *(v1 + 1336);
  v9 = *(v1 + 1328);
  v6 = *(v1 + 1320);
  v10 = *(v1 + 1312);
  v4 = *(v1 + 1304);
  v7 = *(v1 + 1296);
  v11 = *(v1 + 1176);
  *(v1 + 584) = v1;
  Date.init()();
  Date.startOfDay.getter(v9);
  v8 = *(v4 + 8);
  v8(v5, v7);
  Date.init()();
  Date.endOfDay.getter(v10);
  v8(v6, v7);
  DateInterval.init(start:end:)();
  v18 = *(v11 + 8);
  *(v1 + 1376) = v18;
  MEMORY[0x277D82BE0](v18);
  (*(v13 + 16))(v15, v12, v14);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  *(v1 + 1384) = isa;
  v2 = *(v13 + 8);
  *(v1 + 1392) = v2;
  *(v1 + 1400) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v15, v14);
  *(v1 + 16) = *(v1 + 584);
  *(v1 + 56) = v1 + 608;
  *(v1 + 24) = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
  v16 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMd, &_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMR);
  *(v1 + 112) = v16;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 92) = 0;
  *(v1 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [HKMedicationExposableDoseEvent];
  *(v1 + 104) = &block_descriptor_158;
  [v18 doseEventsForDateInterval:isa medicationIdentifier:0 completion:?];

  return MEMORY[0x282200938](v1 + 16);
}

{
  v3 = *v1;
  *(v3 + 584) = *v1;
  *(v3 + 1488) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

{
  v3 = *v1;
  *(v3 + 584) = *v1;
  *(v3 + 1560) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

{
  v5 = *v2;
  v5[73] = *v2;
  v5[198] = a1;
  v5[199] = v1;

  if (v1)
  {
    v3 = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
  }

  else
  {

    v3 = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v3 = *v1;
  *(v3 + 584) = *v1;
  *(v3 + 1640) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

{
  v3 = *v1;
  *(v3 + 584) = *v1;
  *(v3 + 1688) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

{
  v4 = *v1;
  v3 = *(*v1 + 1696);
  *(v4 + 584) = *v1;
  *(v4 + 1720) = a1;

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

{
  v20 = v1[174];
  v17 = v1[173];
  v16 = v1[172];
  v18 = v1[171];
  v19 = v1[168];
  v1[73] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v20(v18, v19);
  v21 = v1[176];
  v2 = v1[150];
  v22 = v1[149];
  v24 = v1[148];
  v3 = v21;
  v1[77] = v21;
  v23 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v22 + 16))(v2, v23, v24);
  swift_endAccess();
  v26 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v26, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 624) = buf;
    *(v15 + 632) = v12;
    *(v15 + 640) = v13;
    serialize(_:at:)(0, (v15 + 624));
    serialize(_:at:)(0, (v15 + 624));
    *(v15 + 648) = v27;
    v14 = swift_task_alloc();
    v14[2] = v15 + 624;
    v14[3] = v15 + 632;
    v14[4] = v15 + 640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v26, v25, "Failed fetching dose events for timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 1200);
  v8 = *(v15 + 1184);
  v6 = *(v15 + 1192);
  MEMORY[0x277D82BD8](v26);
  (*(v6 + 8))(v7, v8);
  type metadata accessor for LogGenericMedicationsIntentResponse();
  v9 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v4 = *(*(v15 + 584) + 8);

  return v4(v9);
}

uint64_t GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:)()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 584) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 1408) = v1;
  if (v1)
  {
    v2 = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
  }

  else
  {
    v2 = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v87 = v0[173];
  v86 = v0[172];
  v0[73] = v0;
  v88 = v0[76];

  v0[75] = v88;
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v87);
  v89 = filterUniqueDoseEvents(doseEvents:)(v88, v1);

  v0[75] = v89;

  v2 = type metadata accessor for HKMedicationExposableDoseEvent();
  v90 = MEMORY[0x26D6494A0](v89, v2);

  if (!v90)
  {
    v3 = *(v85 + 1288);
    v81 = *(v85 + 1184);
    v79 = *(v85 + 1192);
    v80 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v79 + 16))(v3, v80, v81);
    swift_endAccess();
    v83 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v84 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v83, v82))
    {
      v75 = static UnsafeMutablePointer.allocate(capacity:)();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v76 = createStorage<A>(capacity:type:)(0, v74, v74);
      v77 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v85 + 1144) = v75;
      *(v85 + 1152) = v76;
      *(v85 + 1160) = v77;
      serialize(_:at:)(0, (v85 + 1144));
      serialize(_:at:)(0, (v85 + 1144));
      *(v85 + 1168) = v84;
      v78 = swift_task_alloc();
      v78[2] = v85 + 1144;
      v78[3] = v85 + 1152;
      v78[4] = v85 + 1160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v83, v82, "No medications found for today.", v75, 2u);
      destroyStorage<A>(_:count:)(v76, 0, v74);
      destroyStorage<A>(_:count:)(v77, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v75, MEMORY[0x277D84B78]);
    }

    v70 = *(v85 + 1392);
    v71 = *(v85 + 1368);
    v69 = *(v85 + 1344);
    v67 = *(v85 + 1288);
    v68 = *(v85 + 1184);
    v66 = *(v85 + 1192);
    MEMORY[0x277D82BD8](v83);
    (*(v66 + 8))(v67, v68);
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v72 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(104, 0);
    outlined destroy of [HKQuantityType]((v85 + 600));
    v70(v71, v69);
    v73 = v72;
LABEL_20:

    v12 = *(*(v85 + 584) + 8);

    return v12(v73);
  }

  if (v90 == 1)
  {
    v4 = *(v85 + 1280);
    v61 = *(v85 + 1184);
    v59 = *(v85 + 1192);
    v60 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v62 = *(v59 + 16);
    *(v85 + 1416) = v62;
    *(v85 + 1424) = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v62(v4, v60, v61);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    *(v85 + 1432) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v63))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v56 = createStorage<A>(capacity:type:)(0, v54, v54);
      v57 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v85 + 1112) = buf;
      *(v85 + 1120) = v56;
      *(v85 + 1128) = v57;
      serialize(_:at:)(0, (v85 + 1112));
      serialize(_:at:)(0, (v85 + 1112));
      *(v85 + 1136) = v65;
      v58 = swift_task_alloc();
      v58[2] = v85 + 1112;
      v58[3] = v85 + 1120;
      v58[4] = v85 + 1128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v63, "One dose event found for today, treat like a specific meds request.", buf, 2u);
      destroyStorage<A>(_:count:)(v56, 0, v54);
      destroyStorage<A>(_:count:)(v57, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    *(v85 + 1440) = 0;
    v49 = *(v85 + 1280);
    v50 = *(v85 + 1184);
    v48 = *(v85 + 1192);
    MEMORY[0x277D82BD8](oslog);
    v51 = *(v48 + 8);
    *(v85 + 1448) = v51;
    *(v85 + 1456) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51(v49, v50);
    v52 = *(v85 + 600);

    *(v85 + 1008) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Collection.first.getter();
    v53 = *(v85 + 1016);
    *(v85 + 1464) = v53;
    if (!v53)
    {
      v7 = *(v85 + 1264);
      v40 = *(v85 + 1184);

      v39 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v62(v7, v39, v40);
      swift_endAccess();
      log = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v43 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v41))
      {
        v35 = static UnsafeMutablePointer.allocate(capacity:)();
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v36 = createStorage<A>(capacity:type:)(0, v34, v34);
        v37 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v85 + 1024) = v35;
        *(v85 + 1032) = v36;
        *(v85 + 1040) = v37;
        serialize(_:at:)(0, (v85 + 1024));
        serialize(_:at:)(0, (v85 + 1024));
        *(v85 + 1048) = v43;
        v38 = swift_task_alloc();
        v38[2] = v85 + 1024;
        v38[3] = v85 + 1032;
        v38[4] = v85 + 1040;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, log, v41, "Supposed to be one dose event in doseEvents, but unable to unpack it - returning .failure", v35, 2u);
        destroyStorage<A>(_:count:)(v36, 0, v34);
        destroyStorage<A>(_:count:)(v37, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v35, MEMORY[0x277D84B78]);
      }

      v31 = *(v85 + 1392);
      v32 = *(v85 + 1368);
      v30 = *(v85 + 1344);
      v28 = *(v85 + 1264);
      v29 = *(v85 + 1184);
      MEMORY[0x277D82BD8](log);
      v51(v28, v29);
      type metadata accessor for LogGenericMedicationsIntentResponse();
      v33 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
      outlined destroy of [HKQuantityType]((v85 + 600));
      v31(v32, v30);
      v73 = v33;
      goto LABEL_20;
    }

    v44 = *(v85 + 1176);
    *(v85 + 1056) = v53;

    *(v85 + 1472) = type metadata accessor for LogGenericMedicationsIntentResponse();
    *(v85 + 1064) = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(106, 0);
    outlined init with copy of QuantityPersisting(v44 + 16, v85 + 224);
    v45 = *(v85 + 248);
    v46 = *(v85 + 256);
    __swift_project_boxed_opaque_existential_1((v85 + 224), v45);
    v47 = (*(v46 + 24) + **(v46 + 24));
    v5 = swift_task_alloc();
    *(v85 + 1480) = v5;
    *v5 = *(v85 + 584);
    v5[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

    return v47(v53, 1, v45, v46);
  }

  else
  {
    v8 = *(v85 + 1256);
    v24 = *(v85 + 1184);
    v22 = *(v85 + 1192);
    v23 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v9 = *(v22 + 16);
    *(v85 + 1496) = v9;
    *(v85 + 1504) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v8, v23, v24);
    swift_endAccess();
    v26 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    *(v85 + 1512) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v27 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v26, v25))
    {
      v18 = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = createStorage<A>(capacity:type:)(0, v17, v17);
      v20 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v85 + 976) = v18;
      *(v85 + 984) = v19;
      *(v85 + 992) = v20;
      serialize(_:at:)(0, (v85 + 976));
      serialize(_:at:)(0, (v85 + 976));
      *(v85 + 1000) = v27;
      v21 = swift_task_alloc();
      v21[2] = v85 + 976;
      v21[3] = v85 + 984;
      v21[4] = v85 + 992;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v26, v25, "Multiple dose events found for today, proceed with generic meds request.", v18, 2u);
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v18, MEMORY[0x277D84B78]);
    }

    *(v85 + 1520) = 0;
    v14 = *(v85 + 1256);
    v15 = *(v85 + 1184);
    v13 = *(v85 + 1192);
    MEMORY[0x277D82BD8](v26);
    v10 = *(v13 + 8);
    *(v85 + 1528) = v10;
    *(v85 + 1536) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v14, v15);
    v16 = *(v85 + 600);
    *(v85 + 1544) = v16;

    v11 = swift_task_alloc();
    *(v85 + 1552) = v11;
    *v11 = *(v85 + 584);
    v11[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

    return GenericMedicationsPersistor.numMedInAppToday(doseEvents:)(v16);
  }
}

{
  v1 = *(v0 + 1488);
  *(v0 + 584) = v0;
  if (v1)
  {
    v28 = *(v35 + 1488);
    v31 = *(v35 + 1392);
    v32 = *(v35 + 1368);
    v30 = *(v35 + 1344);
    v29 = *(v35 + 1464);
    *(v35 + 1104) = v28;
    __swift_destroy_boxed_opaque_existential_1((v35 + 224));
    v33 = *(v35 + 1064);
    MEMORY[0x277D82BE0](v33);
    type metadata accessor for MatchedMedName();
    _allocateUninitializedArray<A>(_:)();
    v26 = v2;
    MEMORY[0x277D82BE0](v28);
    *v26 = v28;
    _finalizeUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](*(v35 + 1064));
    MEMORY[0x277D82BD8](v29);
    outlined destroy of [HKQuantityType]((v35 + 600));
    v31(v32, v30);
    v34 = v33;
  }

  else
  {
    v22 = *(v35 + 1416);
    v3 = *(v35 + 1272);
    v21 = *(v35 + 1184);
    __swift_destroy_boxed_opaque_existential_1((v35 + 224));
    v20 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v22(v3, v20, v21);
    swift_endAccess();
    v24 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v25 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v24, v23))
    {
      v4 = *(v35 + 1440);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v17 = createStorage<A>(capacity:type:)(0, v15, v15);
      v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v35 + 1072) = buf;
      *(v35 + 1080) = v17;
      *(v35 + 1088) = v18;
      serialize(_:at:)(0, (v35 + 1072));
      serialize(_:at:)(0, (v35 + 1072));
      *(v35 + 1096) = v25;
      v19 = swift_task_alloc();
      v19[2] = v35 + 1072;
      v19[3] = v35 + 1080;
      v19[4] = v35 + 1088;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v4)
      {
      }

      _os_log_impl(&dword_269912000, v24, v23, "GenericMedicationsPersistor: attempt to buildMatchedMed failed, returning .failure.", buf, 2u);
      destroyStorage<A>(_:count:)(v17, 0, v15);
      destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v9 = *(v35 + 1448);
    v12 = *(v35 + 1392);
    v13 = *(v35 + 1368);
    v11 = *(v35 + 1344);
    v7 = *(v35 + 1272);
    v8 = *(v35 + 1184);
    v10 = *(v35 + 1464);
    MEMORY[0x277D82BD8](v24);
    v9(v7, v8);
    v14 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](*(v35 + 1064));
    MEMORY[0x277D82BD8](v10);
    outlined destroy of [HKQuantityType]((v35 + 600));
    v12(v13, v11);
    v34 = v14;
  }

  v6 = *(*(v35 + 584) + 8);

  return v6(v34);
}

{
  v1 = *(v0 + 1560);
  v2 = *(v0 + 1729);
  *(v0 + 584) = v0;
  *(v0 + 656) = v1;
  if ((v2 & 1) != 0 || *(v124 + 1560) <= 1)
  {
    if ((*(v124 + 1731) & 1) == 0)
    {
      v104 = *(v124 + 600);
      *(v124 + 1568) = v104;

      v5 = swift_task_alloc();
      *(v124 + 1576) = v5;
      *v5 = *(v124 + 584);
      v5[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

      return GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:)(v104);
    }

    doseEvents._rawValue = *(v124 + 600);

    v103 = allDoseEventsAreUnlogged(doseEvents:)(doseEvents);

    if (v103)
    {
      v98 = *(v124 + 1496);
      v7 = *(v124 + 1240);
      v97 = *(v124 + 1184);
      v96 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v98(v7, v96, v97);
      swift_endAccess();
      oslog = Logger.logObject.getter();
      v99 = static os_log_type_t.debug.getter();
      v101 = _allocateUninitializedArray<A>(_:)();
      if (!os_log_type_enabled(oslog, v99))
      {

        goto LABEL_21;
      }

      v8 = *(v124 + 1520);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v93 = createStorage<A>(capacity:type:)(0, v91, v91);
      v94 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v124 + 912) = buf;
      *(v124 + 920) = v93;
      *(v124 + 928) = v94;
      serialize(_:at:)(0, (v124 + 912));
      serialize(_:at:)(0, (v124 + 912));
      *(v124 + 936) = v101;
      v95 = swift_task_alloc();
      v95[2] = v124 + 912;
      v95[3] = v124 + 920;
      v95[4] = v124 + 928;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (!v8)
      {

        _os_log_impl(&dword_269912000, oslog, v99, "All dose events for day are unlogged, continuing to write", buf, 2u);
        destroyStorage<A>(_:count:)(v93, 0, v91);
        destroyStorage<A>(_:count:)(v94, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

LABEL_21:
        v90 = *(v124 + 1528);
        v88 = *(v124 + 1240);
        v89 = *(v124 + 1184);
        MEMORY[0x277D82BD8](oslog);
        v90(v88, v89);
LABEL_46:
        v27 = *(*(v124 + 1176) + 8);
        *(v124 + 1696) = v27;
        MEMORY[0x277D82BE0](v27);
        v26 = *(v124 + 600);
        *(v124 + 1704) = v26;

        v23 = swift_task_alloc();
        *(v124 + 1712) = v23;
        *v23 = *(v124 + 584);
        v23[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
        v24 = *(v124 + 1730) & 1;

        return GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:)(v27, v26, v24);
      }
    }

    v86._rawValue = *(v124 + 600);

    v87 = allLoggedWithMixedStatus(doseEvents:)(v86);

    if (v87 || (v83 = *(v124 + 1730), v84._rawValue = *(v124 + 600), , v85 = oneExistingStatusWithConflictingRequest(doseEvents:requestedStatus:)(v84, v83 & 1), , v85))
    {
      v79 = *(v124 + 1496);
      v9 = *(v124 + 1232);
      v78 = *(v124 + 1184);
      v77 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v79(v9, v77, v78);
      swift_endAccess();
      log = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();
      v82 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v80))
      {
        v10 = *(v124 + 1520);
        v73 = static UnsafeMutablePointer.allocate(capacity:)();
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v74 = createStorage<A>(capacity:type:)(0, v72, v72);
        v75 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v124 + 880) = v73;
        *(v124 + 888) = v74;
        *(v124 + 896) = v75;
        serialize(_:at:)(0, (v124 + 880));
        serialize(_:at:)(0, (v124 + 880));
        *(v124 + 904) = v82;
        v76 = swift_task_alloc();
        v76[2] = v124 + 880;
        v76[3] = v124 + 888;
        v76[4] = v124 + 896;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        if (v10)
        {
        }

        _os_log_impl(&dword_269912000, log, v80, "Calling either allLoggedWithMixedStatus or oneExistingStatusWithConflictingRequest", v73, 2u);
        destroyStorage<A>(_:count:)(v74, 0, v72);
        destroyStorage<A>(_:count:)(v75, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v73, MEMORY[0x277D84B78]);

        v71 = 0;
      }

      else
      {

        v71 = *(v124 + 1520);
      }

      *(v124 + 1600) = v71;
      v68 = *(v124 + 1528);
      v66 = *(v124 + 1232);
      v67 = *(v124 + 1184);
      MEMORY[0x277D82BD8](log);
      v68(v66, v67);
      *(v124 + 1608) = type metadata accessor for LogGenericMedicationsIntentResponse();
      *(v124 + 792) = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(107, 0);
      *(v124 + 1616) = type metadata accessor for MatchedMedName();
      *(v124 + 800) = _allocateUninitializedArray<A>(_:)();
      v69 = *(v124 + 600);

      *(v124 + 808) = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
      lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
      Collection<>.makeIterator()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      v70 = *(v124 + 816);
      *(v124 + 1624) = v70;
      if (v70)
      {
        v11 = *(v124 + 1176);
        *(v124 + 824) = v70;
        outlined init with copy of QuantityPersisting(v11 + 16, v124 + 184);
        v63 = *(v124 + 208);
        v64 = *(v124 + 216);
        __swift_project_boxed_opaque_existential_1((v124 + 184), v63);
        v65 = (*(v64 + 24) + **(v64 + 24));
        v12 = swift_task_alloc();
        v13 = v63;
        v14 = v64;
        v15 = v65;
        v16 = v12;
        v17 = v70;
        *(v124 + 1632) = v16;
        *v16 = *(v124 + 584);
        v16[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

        return v15(v17, 1, v13, v14);
      }

      v60 = *(v124 + 1392);
      v61 = *(v124 + 1368);
      v59 = *(v124 + 1344);
      outlined destroy of [HKQuantityType]((v124 + 568));
      v62 = *(v124 + 792);
      MEMORY[0x277D82BE0](v62);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v62 setMatchingMeds_];
      MEMORY[0x277D82BD8](isa);
      outlined destroy of [HKQuantityType]((v124 + 800));
      MEMORY[0x277D82BD8](*(v124 + 792));
      outlined destroy of [HKQuantityType]((v124 + 600));
      v60(v61, v59);
      v112 = v62;
    }

    else
    {
      v55 = *(v124 + 600);

      v56 = getUnloggedDoseEvents(doseEvents:)(v55);

      *(v124 + 664) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
      lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
      v57 = Collection.isEmpty.getter();

      if ((v57 & 1) == 0)
      {
        v28 = *(v124 + 600);

        v29 = getUnloggedDoseEvents(doseEvents:)(v28);

        *(v124 + 600) = v29;

        goto LABEL_46;
      }

      v51 = *(v124 + 1496);
      v18 = *(v124 + 1216);
      v50 = *(v124 + 1184);
      v49 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v51(v18, v49, v50);
      swift_endAccess();
      v53 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      v54 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v53, v52))
      {
        v19 = *(v124 + 1520);
        v45 = static UnsafeMutablePointer.allocate(capacity:)();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v46 = createStorage<A>(capacity:type:)(0, v44, v44);
        v47 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v124 + 760) = v45;
        *(v124 + 768) = v46;
        *(v124 + 776) = v47;
        serialize(_:at:)(0, (v124 + 760));
        serialize(_:at:)(0, (v124 + 760));
        *(v124 + 784) = v54;
        v48 = swift_task_alloc();
        v48[2] = v124 + 760;
        v48[3] = v124 + 768;
        v48[4] = v124 + 776;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        if (v19)
        {
        }

        _os_log_impl(&dword_269912000, v53, v52, "allMedsLoggedAlready, returning code .allMedsLoggedAlready", v45, 2u);
        destroyStorage<A>(_:count:)(v46, 0, v44);
        destroyStorage<A>(_:count:)(v47, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v45, MEMORY[0x277D84B78]);

        v43 = 0;
      }

      else
      {

        v43 = *(v124 + 1520);
      }

      *(v124 + 1648) = v43;
      v40 = *(v124 + 1528);
      v38 = *(v124 + 1216);
      v39 = *(v124 + 1184);
      MEMORY[0x277D82BD8](v53);
      v40(v38, v39);
      *(v124 + 1656) = type metadata accessor for LogGenericMedicationsIntentResponse();
      *(v124 + 672) = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(108, 0);
      *(v124 + 1664) = type metadata accessor for MatchedMedName();
      *(v124 + 680) = _allocateUninitializedArray<A>(_:)();
      v41 = *(v124 + 600);

      *(v124 + 688) = v41;
      Collection<>.makeIterator()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      v42 = *(v124 + 696);
      *(v124 + 1672) = v42;
      if (v42)
      {
        v20 = *(v124 + 1176);
        *(v124 + 704) = v42;
        outlined init with copy of QuantityPersisting(v20 + 16, v124 + 144);
        v35 = *(v124 + 168);
        v36 = *(v124 + 176);
        __swift_project_boxed_opaque_existential_1((v124 + 144), v35);
        v37 = (*(v36 + 24) + **(v36 + 24));
        v21 = swift_task_alloc();
        v13 = v35;
        v14 = v36;
        v15 = v37;
        v22 = v21;
        v17 = v42;
        *(v124 + 1680) = v22;
        *v22 = *(v124 + 584);
        v22[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

        return v15(v17, 1, v13, v14);
      }

      v32 = *(v124 + 1392);
      v33 = *(v124 + 1368);
      v31 = *(v124 + 1344);
      outlined destroy of [HKQuantityType]((v124 + 552));
      v34 = *(v124 + 672);
      MEMORY[0x277D82BE0](v34);

      v30 = Array._bridgeToObjectiveC()().super.isa;

      [v34 setMatchingMeds_];
      MEMORY[0x277D82BD8](v30);
      outlined destroy of [HKQuantityType]((v124 + 680));
      MEMORY[0x277D82BD8](*(v124 + 672));
      outlined destroy of [HKQuantityType]((v124 + 600));
      v32(v33, v31);
      v112 = v34;
    }
  }

  else
  {
    v120 = *(v124 + 1496);
    v3 = *(v124 + 1248);
    v119 = *(v124 + 1184);
    v118 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v120(v3, v118, v119);
    swift_endAccess();
    v122 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    v123 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v122, v121))
    {
      v4 = *(v124 + 1520);
      v114 = static UnsafeMutablePointer.allocate(capacity:)();
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v115 = createStorage<A>(capacity:type:)(0, v113, v113);
      v116 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v124 + 944) = v114;
      *(v124 + 952) = v115;
      *(v124 + 960) = v116;
      serialize(_:at:)(0, (v124 + 944));
      serialize(_:at:)(0, (v124 + 944));
      *(v124 + 968) = v123;
      v117 = swift_task_alloc();
      v117[2] = v124 + 944;
      v117[3] = v124 + 952;
      v117[4] = v124 + 960;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v4)
      {
      }

      _os_log_impl(&dword_269912000, v122, v121, "Multiple medications found for none (implicitly today) timeframe, returning .multipleMedsFound", v114, 2u);
      destroyStorage<A>(_:count:)(v115, 0, v113);
      destroyStorage<A>(_:count:)(v116, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v114, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v107 = *(v124 + 1528);
    v109 = *(v124 + 1392);
    v110 = *(v124 + 1368);
    v108 = *(v124 + 1344);
    v105 = *(v124 + 1248);
    v106 = *(v124 + 1184);
    MEMORY[0x277D82BD8](v122);
    v107(v105, v106);
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v111 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
    outlined destroy of [HKQuantityType]((v124 + 600));
    v109(v110, v108);
    v112 = v111;
  }

  v25 = *(*(v124 + 584) + 8);

  return v25(v112);
}

{
  v4 = v0[174];
  v5 = v0[171];
  v3 = v0[168];
  v0[73] = v0;
  outlined destroy of [HKQuantityType](v0 + 75);
  v4(v5, v3);
  v6 = v0[198];

  v1 = *(v0[73] + 8);

  return v1(v6);
}

{
  v1 = *(v0 + 1640);
  *(v0 + 584) = v0;
  if (v1)
  {
    v33 = *(v39 + 1640);
    v34 = *(v39 + 1624);
    *(v39 + 864) = v33;
    __swift_destroy_boxed_opaque_existential_1((v39 + 184));
    MEMORY[0x277D82BE0](v33);
    *(v39 + 872) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    Array.append(_:)();
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v35 = *(v39 + 816);
    *(v39 + 1624) = v35;
    if (v35)
    {
      v2 = *(v39 + 1176);
      *(v39 + 824) = v35;
      outlined init with copy of QuantityPersisting(v2 + 16, v39 + 184);
      v36 = *(v39 + 208);
      v37 = *(v39 + 216);
      __swift_project_boxed_opaque_existential_1((v39 + 184), v36);
      v38 = (*(v37 + 24) + **(v37 + 24));
      v3 = swift_task_alloc();
      *(v39 + 1632) = v3;
      *v3 = *(v39 + 584);
      v3[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

      return v38(v35, 1, v36, v37);
    }

    v10 = *(v39 + 1392);
    v11 = *(v39 + 1368);
    v9 = *(v39 + 1344);
    outlined destroy of [HKQuantityType]((v39 + 568));
    v12 = *(v39 + 792);
    MEMORY[0x277D82BE0](v12);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType]((v39 + 800));
    MEMORY[0x277D82BD8](*(v39 + 792));
    outlined destroy of [HKQuantityType]((v39 + 600));
    v10(v11, v9);
    v21 = v12;
  }

  else
  {
    v29 = *(v39 + 1496);
    v5 = *(v39 + 1224);
    v28 = *(v39 + 1184);
    __swift_destroy_boxed_opaque_existential_1((v39 + 184));
    v27 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v29(v5, v27, v28);
    swift_endAccess();
    v31 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v31, v30))
    {
      v6 = *(v39 + 1600);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v24 = createStorage<A>(capacity:type:)(0, v22, v22);
      v25 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v39 + 832) = buf;
      *(v39 + 840) = v24;
      *(v39 + 848) = v25;
      serialize(_:at:)(0, (v39 + 832));
      serialize(_:at:)(0, (v39 + 832));
      *(v39 + 856) = v32;
      v26 = swift_task_alloc();
      v26[2] = v39 + 832;
      v26[3] = v39 + 840;
      v26[4] = v39 + 848;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v6)
      {
      }

      _os_log_impl(&dword_269912000, v31, v30, "Couldn't create MatchedMedName from doseEvent, returning .failure.", buf, 2u);
      destroyStorage<A>(_:count:)(v24, 0, v22);
      destroyStorage<A>(_:count:)(v25, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v15 = *(v39 + 1528);
    v18 = *(v39 + 1392);
    v19 = *(v39 + 1368);
    v17 = *(v39 + 1344);
    v13 = *(v39 + 1224);
    v14 = *(v39 + 1184);
    v16 = *(v39 + 1624);
    MEMORY[0x277D82BD8](v31);
    v15(v13, v14);
    v20 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](v16);
    outlined destroy of [HKQuantityType]((v39 + 568));
    outlined destroy of [HKQuantityType]((v39 + 800));
    MEMORY[0x277D82BD8](*(v39 + 792));
    outlined destroy of [HKQuantityType]((v39 + 600));
    v18(v19, v17);
    v21 = v20;
  }

  v7 = *(*(v39 + 584) + 8);

  return v7(v21);
}

{
  v1 = *(v0 + 1688);
  *(v0 + 584) = v0;
  if (v1)
  {
    v33 = *(v39 + 1688);
    v34 = *(v39 + 1672);
    *(v39 + 744) = v33;
    __swift_destroy_boxed_opaque_existential_1((v39 + 144));
    MEMORY[0x277D82BE0](v33);
    *(v39 + 752) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    Array.append(_:)();
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v35 = *(v39 + 696);
    *(v39 + 1672) = v35;
    if (v35)
    {
      v2 = *(v39 + 1176);
      *(v39 + 704) = v35;
      outlined init with copy of QuantityPersisting(v2 + 16, v39 + 144);
      v36 = *(v39 + 168);
      v37 = *(v39 + 176);
      __swift_project_boxed_opaque_existential_1((v39 + 144), v36);
      v38 = (*(v37 + 24) + **(v37 + 24));
      v3 = swift_task_alloc();
      *(v39 + 1680) = v3;
      *v3 = *(v39 + 584);
      v3[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

      return v38(v35, 1, v36, v37);
    }

    v10 = *(v39 + 1392);
    v11 = *(v39 + 1368);
    v9 = *(v39 + 1344);
    outlined destroy of [HKQuantityType]((v39 + 552));
    v12 = *(v39 + 672);
    MEMORY[0x277D82BE0](v12);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType]((v39 + 680));
    MEMORY[0x277D82BD8](*(v39 + 672));
    outlined destroy of [HKQuantityType]((v39 + 600));
    v10(v11, v9);
    v21 = v12;
  }

  else
  {
    v29 = *(v39 + 1496);
    v5 = *(v39 + 1208);
    v28 = *(v39 + 1184);
    __swift_destroy_boxed_opaque_existential_1((v39 + 144));
    v27 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v29(v5, v27, v28);
    swift_endAccess();
    v31 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v31, v30))
    {
      v6 = *(v39 + 1648);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v24 = createStorage<A>(capacity:type:)(0, v22, v22);
      v25 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v39 + 712) = buf;
      *(v39 + 720) = v24;
      *(v39 + 728) = v25;
      serialize(_:at:)(0, (v39 + 712));
      serialize(_:at:)(0, (v39 + 712));
      *(v39 + 736) = v32;
      v26 = swift_task_alloc();
      v26[2] = v39 + 712;
      v26[3] = v39 + 720;
      v26[4] = v39 + 728;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v6)
      {
      }

      _os_log_impl(&dword_269912000, v31, v30, "Couldn't create MatchedMedName from doseEvent, returning .failure.", buf, 2u);
      destroyStorage<A>(_:count:)(v24, 0, v22);
      destroyStorage<A>(_:count:)(v25, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v15 = *(v39 + 1528);
    v18 = *(v39 + 1392);
    v19 = *(v39 + 1368);
    v17 = *(v39 + 1344);
    v13 = *(v39 + 1208);
    v14 = *(v39 + 1184);
    v16 = *(v39 + 1672);
    MEMORY[0x277D82BD8](v31);
    v15(v13, v14);
    v20 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](v16);
    outlined destroy of [HKQuantityType]((v39 + 552));
    outlined destroy of [HKQuantityType]((v39 + 680));
    MEMORY[0x277D82BD8](*(v39 + 672));
    outlined destroy of [HKQuantityType]((v39 + 600));
    v18(v19, v17);
    v21 = v20;
  }

  v7 = *(*(v39 + 584) + 8);

  return v7(v21);
}

{
  v4 = v0[174];
  v5 = v0[171];
  v3 = v0[168];
  v0[73] = v0;
  outlined destroy of [HKQuantityType](v0 + 75);
  v4(v5, v3);
  v6 = v0[215];

  v1 = *(v0[73] + 8);

  return v1(v6);
}

{
  v16 = v0[174];
  v17 = v0[171];
  v15 = v0[168];
  v0[73] = v0;

  outlined destroy of [HKQuantityType](v0 + 75);
  v16(v17, v15);
  v18 = v0[199];
  v1 = v0[150];
  v19 = v0[149];
  v21 = v0[148];
  v2 = v18;
  v0[77] = v18;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v19 + 16))(v1, v20, v21);
  swift_endAccess();
  v23 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v24 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v23, v22))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 624) = buf;
    *(v14 + 632) = v11;
    *(v14 + 640) = v12;
    serialize(_:at:)(0, (v14 + 624));
    serialize(_:at:)(0, (v14 + 624));
    *(v14 + 648) = v24;
    v13 = swift_task_alloc();
    v13[2] = v14 + 624;
    v13[3] = v14 + 632;
    v13[4] = v14 + 640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v23, v22, "Failed fetching dose events for timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v6 = *(v14 + 1200);
  v7 = *(v14 + 1184);
  v5 = *(v14 + 1192);
  MEMORY[0x277D82BD8](v23);
  (*(v5 + 8))(v6, v7);
  type metadata accessor for LogGenericMedicationsIntentResponse();
  v8 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v3 = *(*(v14 + 584) + 8);

  return v3(v8);
}