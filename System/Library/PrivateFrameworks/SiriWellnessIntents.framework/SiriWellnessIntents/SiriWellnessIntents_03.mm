uint64_t SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 560) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 1288) = v1;
  if (v1)
  {
    v2 = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  }

  else
  {
    v2 = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[160];
  v63 = v0[126];
  v0[70] = v0;
  MEMORY[0x277D82BD8](v1);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v62 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  v0[162] = v62;
  MEMORY[0x277D82BE0](v62);
  v0[82] = v62;
  v0[163] = type metadata accessor for MatchedMedName();
  v0[83] = _allocateUninitializedArray<A>(_:)();

  v0[84] = v63;
  Collection<>.makeIterator()();
  IndexingIterator.next()();
  v64 = v0[85];
  v0[164] = v64;
  if (v64)
  {
    *(v61 + 792) = v64;
    v2 = swift_task_alloc();
    v3 = v64;
    *(v61 + 1320) = v2;
    *v2 = *(v61 + 560);
    v2[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v4 = *(v61 + 1048);
    v5 = *(v61 + 1040);

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v3, 1, v5, v4);
  }

  v59 = *(v61 + 1296);
  v60 = *(v61 + 554);
  outlined destroy of [HKQuantityType]((v61 + 432));

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v59 setMatchingMedsBeforeUpdate_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v59);
  if (v60)
  {
    swift_beginAccess();
    v56 = *(v61 + 592);

    swift_endAccess();
    *(v61 + 776) = v56;
    Collection.first.getter();
    v57 = *(v61 + 784);

    if (v57)
    {
      v50 = [v57 medicationIdentifier];
      MEMORY[0x277D82BD8](v57);
      v51 = [v50 underlyingIdentifier];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v7;
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
      v54 = v52;
      v55 = v53;
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    *(v61 + 1336) = v55;
    v8 = swift_task_alloc();
    *(v61 + 1344) = v8;
    *v8 = *(v61 + 560);
    v8[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v9 = *(v61 + 1048);
    v10 = *(v61 + 1040);

    return SpecificMedicationsPersistor.displayNameFor(identifier:)(v54, v55, v10, v9);
  }

  else
  {
    v45 = *(v61 + 1216);
    v48 = *(v61 + 1008);
    v46 = *(v61 + 656);
    MEMORY[0x277D82BE0](v46);
    type metadata accessor for NSNumber();
    v11 = MEMORY[0x26D6494A0](v48, v45);
    v47 = NSNumber.__allocating_init(value:)(v11).super.super.isa;
    [v46 setMedCount_];
    MEMORY[0x277D82BD8](v47);
    *(v61 + 688) = v48;
    Collection.first.getter();
    v49 = *(v61 + 696);
    if (v49)
    {
      v44 = [v49 scheduledDate];
      if (v44)
      {
        v41 = *(v61 + 1088);
        v42 = *(v61 + 1072);
        v43 = *(v61 + 1056);
        v40 = *(v61 + 1080);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v40 + 32))(v43, v41, v42);
        (*(v40 + 56))(v43, 0, 1, v42);
        MEMORY[0x277D82BD8](v44);
      }

      else
      {
        (*(*(v61 + 1080) + 56))(*(v61 + 1056), 1, 1, *(v61 + 1072));
      }

      outlined init with take of Date?(*(v61 + 1056), *(v61 + 1064));
      MEMORY[0x277D82BD8](v49);
    }

    else
    {
      (*(*(v61 + 1080) + 56))(*(v61 + 1064), 1, 1, *(v61 + 1072));
    }

    v37 = *(v61 + 1064);
    v38 = getFormattedTimeString(time:)(v37);
    v39 = v12;
    outlined destroy of Date?(v37);
    if (v39)
    {
      v35 = MEMORY[0x26D6492A0](v38);

      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v34 = *(v61 + 555);
    [v46 setMedSchedule_];
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v46);
    if (v34)
    {
      *(v61 + 704) = _allocateUninitializedArray<A>(_:)();
      swift_beginAccess();
      v27 = *(v61 + 592);

      swift_endAccess();
      *(v61 + 712) = v27;
      Collection<>.makeIterator()();
      IndexingIterator.next()();
      v28 = *(v61 + 720);
      *(v61 + 1408) = v28;
      if (v28)
      {
        *(v61 + 728) = v28;
        v17 = swift_task_alloc();
        v3 = v28;
        *(v61 + 1416) = v17;
        *v17 = *(v61 + 560);
        v17[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
        v4 = *(v61 + 1048);
        v5 = *(v61 + 1040);

        return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v3, 1, v5, v4);
      }

      outlined destroy of [HKQuantityType]((v61 + 448));
      v20 = *(v61 + 656);
      MEMORY[0x277D82BE0](v20);

      v19 = Array._bridgeToObjectiveC()().super.isa;

      [v20 setMatchingMeds_];
      MEMORY[0x277D82BD8](v19);
      outlined destroy of [HKQuantityType]((v61 + 704));
      outlined destroy of [HKQuantityType]((v61 + 664));
      MEMORY[0x277D82BD8](*(v61 + 656));
      outlined destroy of [HKQuantityType]((v61 + 592));

      v18 = *(*(v61 + 560) + 8);

      return v18(v20);
    }

    else
    {
      value = *(v61 + 1016);
      v32 = *(v61 + 1008);
      *(v61 + 752) = value;
      v30 = *(v61 + 656);
      *(v61 + 1368) = v30;
      MEMORY[0x277D82BE0](v30);
      v31 = NSNumber.__allocating_init(value:)(value).super.super.isa;
      [v30 setDosage_];
      MEMORY[0x277D82BD8](v31);
      *(v61 + 760) = v32;
      Collection.first.getter();
      v33 = *(v61 + 768);
      if (v33)
      {
        v21 = [v33 medicationIdentifier];
        MEMORY[0x277D82BD8](v33);
        v22 = [v21 underlyingIdentifier];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v13;
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](v22);
        v25 = v23;
        v26 = v24;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      *(v61 + 1376) = v26;
      v14 = swift_task_alloc();
      *(v61 + 1384) = v14;
      *v14 = *(v61 + 560);
      v14[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      v15 = *(v61 + 1048);
      v16 = *(v61 + 1040);

      return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v25, v26, v16, v15, value);
    }
  }
}

{
  v61 = v0[166];
  v62 = v0[164];
  v0[70] = v0;
  v0[100] = v61;
  MEMORY[0x277D82BE0](v61);
  v0[101] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](v62);
  IndexingIterator.next()();
  v63 = v0[85];
  v0[164] = v63;
  if (v63)
  {
    *(v60 + 792) = v63;
    v1 = swift_task_alloc();
    v2 = v63;
    *(v60 + 1320) = v1;
    *v1 = *(v60 + 560);
    v1[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v3 = *(v60 + 1048);
    v4 = *(v60 + 1040);

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v2, 1, v4, v3);
  }

  v58 = *(v60 + 1296);
  v59 = *(v60 + 554);
  outlined destroy of [HKQuantityType]((v60 + 432));

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v58 setMatchingMedsBeforeUpdate_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v58);
  if (v59)
  {
    swift_beginAccess();
    v55 = *(v60 + 592);

    swift_endAccess();
    *(v60 + 776) = v55;
    Collection.first.getter();
    v56 = *(v60 + 784);

    if (v56)
    {
      v49 = [v56 medicationIdentifier];
      MEMORY[0x277D82BD8](v56);
      v50 = [v49 underlyingIdentifier];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v6;
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v50);
      v53 = v51;
      v54 = v52;
    }

    else
    {
      v53 = 0;
      v54 = 0;
    }

    *(v60 + 1336) = v54;
    v7 = swift_task_alloc();
    *(v60 + 1344) = v7;
    *v7 = *(v60 + 560);
    v7[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v8 = *(v60 + 1048);
    v9 = *(v60 + 1040);

    return SpecificMedicationsPersistor.displayNameFor(identifier:)(v53, v54, v9, v8);
  }

  else
  {
    v44 = *(v60 + 1216);
    v47 = *(v60 + 1008);
    v45 = *(v60 + 656);
    MEMORY[0x277D82BE0](v45);
    type metadata accessor for NSNumber();
    v10 = MEMORY[0x26D6494A0](v47, v44);
    v46 = NSNumber.__allocating_init(value:)(v10).super.super.isa;
    [v45 setMedCount_];
    MEMORY[0x277D82BD8](v46);
    *(v60 + 688) = v47;
    Collection.first.getter();
    v48 = *(v60 + 696);
    if (v48)
    {
      v43 = [v48 scheduledDate];
      if (v43)
      {
        v40 = *(v60 + 1088);
        v41 = *(v60 + 1072);
        v42 = *(v60 + 1056);
        v39 = *(v60 + 1080);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v39 + 32))(v42, v40, v41);
        (*(v39 + 56))(v42, 0, 1, v41);
        MEMORY[0x277D82BD8](v43);
      }

      else
      {
        (*(*(v60 + 1080) + 56))(*(v60 + 1056), 1, 1, *(v60 + 1072));
      }

      outlined init with take of Date?(*(v60 + 1056), *(v60 + 1064));
      MEMORY[0x277D82BD8](v48);
    }

    else
    {
      (*(*(v60 + 1080) + 56))(*(v60 + 1064), 1, 1, *(v60 + 1072));
    }

    v36 = *(v60 + 1064);
    v37 = getFormattedTimeString(time:)(v36);
    v38 = v11;
    outlined destroy of Date?(v36);
    if (v38)
    {
      v34 = MEMORY[0x26D6492A0](v37);

      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v33 = *(v60 + 555);
    [v45 setMedSchedule_];
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v45);
    if (v33)
    {
      *(v60 + 704) = _allocateUninitializedArray<A>(_:)();
      swift_beginAccess();
      v26 = *(v60 + 592);

      swift_endAccess();
      *(v60 + 712) = v26;
      Collection<>.makeIterator()();
      IndexingIterator.next()();
      v27 = *(v60 + 720);
      *(v60 + 1408) = v27;
      if (v27)
      {
        *(v60 + 728) = v27;
        v16 = swift_task_alloc();
        v2 = v27;
        *(v60 + 1416) = v16;
        *v16 = *(v60 + 560);
        v16[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
        v3 = *(v60 + 1048);
        v4 = *(v60 + 1040);

        return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v2, 1, v4, v3);
      }

      outlined destroy of [HKQuantityType]((v60 + 448));
      v19 = *(v60 + 656);
      MEMORY[0x277D82BE0](v19);

      v18 = Array._bridgeToObjectiveC()().super.isa;

      [v19 setMatchingMeds_];
      MEMORY[0x277D82BD8](v18);
      outlined destroy of [HKQuantityType]((v60 + 704));
      outlined destroy of [HKQuantityType]((v60 + 664));
      MEMORY[0x277D82BD8](*(v60 + 656));
      outlined destroy of [HKQuantityType]((v60 + 592));

      v17 = *(*(v60 + 560) + 8);

      return v17(v19);
    }

    else
    {
      value = *(v60 + 1016);
      v31 = *(v60 + 1008);
      *(v60 + 752) = value;
      v29 = *(v60 + 656);
      *(v60 + 1368) = v29;
      MEMORY[0x277D82BE0](v29);
      v30 = NSNumber.__allocating_init(value:)(value).super.super.isa;
      [v29 setDosage_];
      MEMORY[0x277D82BD8](v30);
      *(v60 + 760) = v31;
      Collection.first.getter();
      v32 = *(v60 + 768);
      if (v32)
      {
        v20 = [v32 medicationIdentifier];
        MEMORY[0x277D82BD8](v32);
        v21 = [v20 underlyingIdentifier];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v12;
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v21);
        v24 = v22;
        v25 = v23;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      *(v60 + 1376) = v25;
      v13 = swift_task_alloc();
      *(v60 + 1384) = v13;
      *v13 = *(v60 + 560);
      v13[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      v14 = *(v60 + 1048);
      v15 = *(v60 + 1040);

      return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v24, v25, v15, v14, value);
    }
  }
}

{
  v48 = v0[170];
  v1 = v0[169];
  v0[70] = v0;
  v0[62] = v1;
  v0[63] = v48;
  v47 = v0[82];
  MEMORY[0x277D82BE0](v47);

  if (v48)
  {
    v44 = MEMORY[0x26D6492A0](*(v46 + 1352));

    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  [v47 setMedName_];
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v47);

  v39 = *(v46 + 1216);
  v42 = *(v46 + 1008);
  v40 = *(v46 + 656);
  MEMORY[0x277D82BE0](v40);
  type metadata accessor for NSNumber();
  v2 = MEMORY[0x26D6494A0](v42, v39);
  isa = NSNumber.__allocating_init(value:)(v2).super.super.isa;
  [v40 setMedCount_];
  MEMORY[0x277D82BD8](isa);
  *(v46 + 688) = v42;
  Collection.first.getter();
  v43 = *(v46 + 696);
  if (v43)
  {
    v38 = [v43 scheduledDate];
    if (v38)
    {
      v35 = *(v46 + 1088);
      v36 = *(v46 + 1072);
      v37 = *(v46 + 1056);
      v34 = *(v46 + 1080);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v34 + 32))(v37, v35, v36);
      (*(v34 + 56))(v37, 0, 1, v36);
      MEMORY[0x277D82BD8](v38);
    }

    else
    {
      (*(*(v46 + 1080) + 56))(*(v46 + 1056), 1, 1, *(v46 + 1072));
    }

    outlined init with take of Date?(*(v46 + 1056), *(v46 + 1064));
    MEMORY[0x277D82BD8](v43);
  }

  else
  {
    (*(*(v46 + 1080) + 56))(*(v46 + 1064), 1, 1, *(v46 + 1072));
  }

  v31 = *(v46 + 1064);
  v32 = getFormattedTimeString(time:)(v31);
  v33 = v3;
  outlined destroy of Date?(v31);
  if (v33)
  {
    v29 = MEMORY[0x26D6492A0](v32);

    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v28 = *(v46 + 555);
  [v40 setMedSchedule_];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v40);
  if (v28)
  {
    *(v46 + 704) = _allocateUninitializedArray<A>(_:)();
    swift_beginAccess();
    v21 = *(v46 + 592);

    swift_endAccess();
    *(v46 + 712) = v21;
    Collection<>.makeIterator()();
    IndexingIterator.next()();
    v22 = *(v46 + 720);
    *(v46 + 1408) = v22;
    if (v22)
    {
      *(v46 + 728) = v22;
      v9 = swift_task_alloc();
      *(v46 + 1416) = v9;
      *v9 = *(v46 + 560);
      v9[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      v10 = *(v46 + 1048);
      v11 = *(v46 + 1040);

      return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v22, 1, v11, v10);
    }

    else
    {
      outlined destroy of [HKQuantityType]((v46 + 448));
      v14 = *(v46 + 656);
      MEMORY[0x277D82BE0](v14);

      v13 = Array._bridgeToObjectiveC()().super.isa;

      [v14 setMatchingMeds_];
      MEMORY[0x277D82BD8](v13);
      outlined destroy of [HKQuantityType]((v46 + 704));
      outlined destroy of [HKQuantityType]((v46 + 664));
      MEMORY[0x277D82BD8](*(v46 + 656));
      outlined destroy of [HKQuantityType]((v46 + 592));

      v12 = *(*(v46 + 560) + 8);

      return v12(v14);
    }
  }

  else
  {
    value = *(v46 + 1016);
    v26 = *(v46 + 1008);
    *(v46 + 752) = value;
    v24 = *(v46 + 656);
    *(v46 + 1368) = v24;
    MEMORY[0x277D82BE0](v24);
    v25 = NSNumber.__allocating_init(value:)(value).super.super.isa;
    [v24 setDosage_];
    MEMORY[0x277D82BD8](v25);
    *(v46 + 760) = v26;
    Collection.first.getter();
    v27 = *(v46 + 768);
    if (v27)
    {
      v15 = [v27 medicationIdentifier];
      MEMORY[0x277D82BD8](v27);
      v16 = [v15 underlyingIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v4;
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      v19 = v17;
      v20 = v18;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v46 + 1376) = v20;
    v5 = swift_task_alloc();
    *(v46 + 1384) = v5;
    *v5 = *(v46 + 560);
    v5[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v6 = *(v46 + 1048);
    v7 = *(v46 + 1040);

    return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v19, v20, v7, v6, value);
  }
}

{
  v1 = v0[175];
  v2 = v0[174];
  v0[70] = v0;
  v0[60] = v2;
  v0[61] = v1;

  if (v0[61])
  {
    *(v17 + 464) = *(v17 + 480);
  }

  else
  {
    v16 = *(v17 + 1032);
    v15 = *(v17 + 1024);

    *(v17 + 464) = v15;
    *(v17 + 472) = v16;
    if (*(v17 + 488))
    {
      outlined destroy of String.UTF8View(v17 + 480);
    }
  }

  if (*(v17 + 472))
  {
    v13 = MEMORY[0x26D6492A0](*(v17 + 464));

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v10 = *(v17 + 1368);
  [v10 setDosageUnit_];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v10);
  *(v17 + 704) = _allocateUninitializedArray<A>(_:)();
  swift_beginAccess();
  v11 = *(v17 + 592);

  swift_endAccess();
  *(v17 + 712) = v11;
  Collection<>.makeIterator()();
  IndexingIterator.next()();
  v12 = *(v17 + 720);
  *(v17 + 1408) = v12;
  if (v12)
  {
    *(v17 + 728) = v12;
    v3 = swift_task_alloc();
    *(v17 + 1416) = v3;
    *v3 = *(v17 + 560);
    v3[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v4 = *(v17 + 1048);
    v5 = *(v17 + 1040);

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v12, 1, v5, v4);
  }

  else
  {
    outlined destroy of [HKQuantityType]((v17 + 448));
    v9 = *(v17 + 656);
    MEMORY[0x277D82BE0](v9);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType]((v17 + 704));
    outlined destroy of [HKQuantityType]((v17 + 664));
    MEMORY[0x277D82BD8](*(v17 + 656));
    outlined destroy of [HKQuantityType]((v17 + 592));

    v7 = *(*(v17 + 560) + 8);

    return v7(v9);
  }
}

{
  v9 = v0[178];
  v10 = v0[176];
  v0[70] = v0;
  v0[92] = v9;
  MEMORY[0x277D82BE0](v9);
  v0[93] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  IndexingIterator.next()();
  v11 = v0[90];
  v0[176] = v11;
  if (v11)
  {
    v8[91] = v11;
    v1 = swift_task_alloc();
    v8[177] = v1;
    *v1 = v8[70];
    v1[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v2 = v8[131];
    v3 = v8[130];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v11, 1, v3, v2);
  }

  else
  {
    outlined destroy of [HKQuantityType](v8 + 56);
    v7 = v8[82];
    MEMORY[0x277D82BE0](v7);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType](v8 + 88);
    outlined destroy of [HKQuantityType](v8 + 83);
    MEMORY[0x277D82BD8](v8[82]);
    outlined destroy of [HKQuantityType](v8 + 74);

    v5 = *(v8[70] + 8);

    return v5(v7);
  }
}

uint64_t SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v4[70] = *v2;
  v4[169] = a1;
  v4[170] = a2;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

{
  v4 = *v2;
  v4[70] = *v2;
  v4[174] = a1;
  v4[175] = a2;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1264) = v25;
  *(v8 + 1256) = v24;
  *(v8 + 588) = v23;
  *(v8 + 587) = v22;
  *(v8 + 1248) = a8;
  *(v8 + 1240) = a7;
  *(v8 + 586) = a6;
  *(v8 + 1232) = a5;
  *(v8 + 585) = a4 & 1;
  *(v8 + 1224) = a3;
  *(v8 + 1216) = a2;
  *(v8 + 1208) = a1;
  *(v8 + 592) = v8;
  *(v8 + 400) = 0;
  *(v8 + 408) = 0;
  *(v8 + 600) = 0;
  *(v8 + 1768) = 0;
  *(v8 + 576) = 0;
  *(v8 + 584) = 0;
  *(v8 + 416) = 0;
  *(v8 + 424) = 0;
  *(v8 + 1776) = 0;
  *(v8 + 1784) = 0;
  *(v8 + 432) = 0;
  *(v8 + 440) = 0;
  *(v8 + 608) = 0;
  *(v8 + 616) = 0;
  *(v8 + 624) = 0;
  *(v8 + 632) = 0;
  *(v8 + 688) = 0;
  *(v8 + 696) = 0;
  *(v8 + 448) = 0;
  *(v8 + 456) = 0;
  *(v8 + 720) = 0;
  *(v8 + 728) = 0;
  *(v8 + 776) = 0;
  *(v8 + 800) = 0;
  *(v8 + 496) = 0;
  *(v8 + 504) = 0;
  *(v8 + 824) = 0;
  *(v8 + 832) = 0;
  *(v8 + 840) = 0;
  *(v8 + 928) = 0;
  *(v8 + 512) = 0;
  *(v8 + 520) = 0;
  *(v8 + 992) = 0;
  *(v8 + 1080) = 0;
  *(v8 + 544) = 0;
  *(v8 + 552) = 0;
  *(v8 + 1160) = 0;
  v11 = type metadata accessor for Date();
  *(v8 + 1272) = v11;
  *(v8 + 1280) = *(v11 - 8);
  *(v8 + 1288) = swift_task_alloc();
  *(v8 + 1296) = swift_task_alloc();
  *(v8 + 1304) = swift_task_alloc();
  *(v8 + 1312) = swift_task_alloc();
  v12 = type metadata accessor for DateInterval();
  *(v8 + 1320) = v12;
  *(v8 + 1328) = *(v12 - 8);
  *(v8 + 1336) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v8 + 1344) = v13;
  *(v8 + 1352) = *(v13 - 8);
  *(v8 + 1360) = swift_task_alloc();
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  *(v8 + 1392) = swift_task_alloc();
  *(v8 + 1400) = swift_task_alloc();
  *(v8 + 1408) = swift_task_alloc();
  *(v8 + 1416) = swift_task_alloc();
  *(v8 + 1424) = swift_task_alloc();
  *(v8 + 1432) = swift_task_alloc();
  *(v8 + 1440) = swift_task_alloc();
  *(v8 + 1448) = swift_task_alloc();
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 400) = a1;
  *(v8 + 408) = a2;
  *(v8 + 600) = a3;
  *(v8 + 1768) = a4 & 1;
  *(v8 + 576) = a5;
  *(v8 + 584) = a6 & 1;
  *(v8 + 416) = a7;
  *(v8 + 424) = a8;
  *(v8 + 1776) = v22;
  *(v8 + 1784) = v23;
  *(v8 + 432) = v24;
  *(v8 + 440) = v25;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

uint64_t SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(uint64_t a1)
{
  v261 = v1;
  v2 = *(v1 + 1456);
  v186 = *(v1 + 1352);
  v188 = *(v1 + 1344);
  v193 = *(v1 + 588);
  v194 = *(v1 + 587);
  v198 = *(v1 + 1248);
  v197 = *(v1 + 1240);
  v196 = *(v1 + 586);
  v195 = *(v1 + 1232);
  v192 = *(v1 + 585);
  v191 = *(v1 + 1224);
  v190 = *(v1 + 1216);
  v189 = *(v1 + 1208);
  *(v1 + 592) = v1;
  v187 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *(v186 + 16);
  *(v1 + 1464) = v3;
  *(v1 + 1472) = (v186 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v2, v187, v188);
  swift_endAccess();

  v199 = swift_allocObject();
  *(v199 + 16) = v189;
  *(v199 + 24) = v190;

  v201 = swift_allocObject();
  *(v201 + 16) = v191;
  v203 = swift_allocObject();
  *(v203 + 16) = v192;
  v207 = swift_allocObject();
  *(v207 + 16) = v193;
  v209 = swift_allocObject();
  *(v209 + 16) = v194;
  v211 = swift_allocObject();
  *(v211 + 16) = v195;
  *(v211 + 24) = v196 & 1;

  v213 = swift_allocObject();
  *(v213 + 16) = v197;
  *(v213 + 24) = v198;
  v237 = Logger.logObject.getter();
  v238 = static os_log_type_t.debug.getter();
  v215 = swift_allocObject();
  *(v215 + 16) = 32;
  v216 = swift_allocObject();
  *(v216 + 16) = 8;
  v200 = swift_allocObject();
  *(v200 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
  *(v200 + 24) = v199;
  v217 = swift_allocObject();
  *(v217 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v217 + 24) = v200;
  v218 = swift_allocObject();
  *(v218 + 16) = 32;
  v219 = swift_allocObject();
  *(v219 + 16) = 8;
  v202 = swift_allocObject();
  *(v202 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  *(v202 + 24) = v201;
  v220 = swift_allocObject();
  *(v220 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v220 + 24) = v202;
  v221 = swift_allocObject();
  *(v221 + 16) = 0;
  v222 = swift_allocObject();
  *(v222 + 16) = 4;
  v204 = swift_allocObject();
  *(v204 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v204 + 24) = v203;
  v205 = swift_allocObject();
  *(v205 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v205 + 24) = v204;
  v206 = swift_allocObject();
  *(v206 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v206 + 24) = v205;
  v223 = swift_allocObject();
  *(v223 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  *(v223 + 24) = v206;
  v224 = swift_allocObject();
  *(v224 + 16) = 32;
  v225 = swift_allocObject();
  *(v225 + 16) = 8;
  v208 = swift_allocObject();
  *(v208 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  *(v208 + 24) = v207;
  v226 = swift_allocObject();
  *(v226 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v226 + 24) = v208;
  v227 = swift_allocObject();
  *(v227 + 16) = 32;
  v228 = swift_allocObject();
  *(v228 + 16) = 8;
  v210 = swift_allocObject();
  *(v210 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  *(v210 + 24) = v209;
  v229 = swift_allocObject();
  *(v229 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v229 + 24) = v210;
  v230 = swift_allocObject();
  *(v230 + 16) = 32;
  v231 = swift_allocObject();
  *(v231 + 16) = 8;
  v212 = swift_allocObject();
  *(v212 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v212 + 24) = v211;
  v232 = swift_allocObject();
  *(v232 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v232 + 24) = v212;
  v233 = swift_allocObject();
  *(v233 + 16) = 32;
  v234 = swift_allocObject();
  *(v234 + 16) = 8;
  v214 = swift_allocObject();
  *(v214 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v214 + 24) = v213;
  v235 = swift_allocObject();
  *(v235 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v235 + 24) = v214;
  *(v1 + 1480) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v236 = v4;

  *v236 = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[1] = v215;

  v236[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[3] = v216;

  v236[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[5] = v217;

  v236[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[7] = v218;

  v236[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[9] = v219;

  v236[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[11] = v220;

  v236[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[13] = v221;

  v236[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[15] = v222;

  v236[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v236[17] = v223;

  v236[18] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[19] = v224;

  v236[20] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[21] = v225;

  v236[22] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[23] = v226;

  v236[24] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[25] = v227;

  v236[26] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[27] = v228;

  v236[28] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[29] = v229;

  v236[30] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[31] = v230;

  v236[32] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[33] = v231;

  v236[34] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[35] = v232;

  v236[36] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[37] = v233;

  v236[38] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[39] = v234;

  v236[40] = partial apply for closure #1 in OSLogArguments.append(_:);
  v236[41] = v235;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v237, v238))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v183 = createStorage<A>(capacity:type:)(0, v181, v181);
    v184 = createStorage<A>(capacity:type:)(6, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v256 = buf;
    v257 = v183;
    v258 = v184;
    serialize(_:at:)(2, &v256);
    serialize(_:at:)(7, &v256);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v215;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v216;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v217;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v218;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v219;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v220;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v221;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v222;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v260 = v223;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v224;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v225;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v226;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v227;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v228;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v229;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v230;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v231;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v232;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v233;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v234;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v235;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    _os_log_impl(&dword_269912000, v237, v238, "Calling saveWithID() for specified scheduleID (%s) and potentially medicationID (%s) with medStatus: %{BOOL}d, confirmedAsScheduled: %s, confirmedAsNeeded: (%s), dosage (%s), dosageUnit (%s)", buf, 0x44u);
    destroyStorage<A>(_:count:)(v183, 0, v181);
    destroyStorage<A>(_:count:)(v184, 6, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v171 = *(v185 + 1456);
  v172 = *(v185 + 1344);
  v174 = *(v185 + 1312);
  v178 = *(v185 + 1304);
  v175 = *(v185 + 1296);
  v179 = *(v185 + 1288);
  v176 = *(v185 + 1272);
  v180 = *(v185 + 1224);
  v170 = *(v185 + 1352);
  v173 = *(v185 + 1280);
  MEMORY[0x277D82BD8](v237);
  v5 = *(v170 + 8);
  *(v185 + 1488) = v5;
  *(v185 + 1496) = (v170 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v171, v172);
  Date.init()();
  Date.startOfDay.getter(v178);
  v177 = *(v173 + 8);
  v177(v174, v176);
  Date.init()();
  Date.endOfDay.getter(v179);
  v177(v175, v176);
  DateInterval.init(start:end:)();
  *(v185 + 1504) = type metadata accessor for HKMedicationExposableDoseEvent();
  *(v185 + 608) = _allocateUninitializedArray<A>(_:)();

  if (!v180)
  {
    v33 = swift_task_alloc();
    *(v185 + 1648) = v33;
    *v33 = *(v185 + 592);
    v33[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v9 = *(v185 + 1336);
    v10 = *(v185 + 1264);
    v11 = *(v185 + 1256);
    v8 = 0;

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v9, v8, v11, v10);
  }

  v167 = *(v185 + 1224);
  *(v185 + 928) = v167;

  *(v185 + 936) = v167;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  *(v185 + 1512) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v168 = *(v185 + 528);
  v169 = *(v185 + 536);
  *(v185 + 1520) = v169;
  if (v169)
  {
    *(v185 + 544) = v168;
    *(v185 + 552) = v169;
    v6 = swift_allocObject();
    *(v185 + 1528) = v6;
    *(v185 + 1160) = v6 + 16;
    type metadata accessor for HKMedicationIdentifier();

    v166 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)(v168, v169);
    *(v185 + 1536) = v166;
    v7 = swift_task_alloc();
    v8 = v166;
    *(v185 + 1544) = v7;
    *v7 = *(v185 + 592);
    v7[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v9 = *(v185 + 1336);
    v10 = *(v185 + 1264);
    v11 = *(v185 + 1256);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v9, v8, v11, v10);
  }

  v165 = *(v185 + 588);
  outlined destroy of [HKQuantityType]((v185 + 512));
  v244 = v165;
  v245 = 1;
  if (v165 == 2)
  {
    if (v245 != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v255 = *(v185 + 588);
    if (v245 == 2 || (v255 & 1) != (v245 & 1))
    {
      goto LABEL_27;
    }
  }

  v252 = *(v185 + 587);
  v253 = 0;
  if (v252 != 2)
  {
    v254 = *(v185 + 587);
    if (v253 != 2)
    {
      v164 = (v254 & 1) == (v253 & 1);
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (v253 != 2)
  {
LABEL_25:
    v164 = 0;
    goto LABEL_23;
  }

  v164 = 1;
LABEL_23:
  if (v164)
  {
    v99 = *(v185 + 1464);
    v30 = *(v185 + 1408);
    v98 = *(v185 + 1344);
    v97 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v99(v30, v97, v98);
    swift_endAccess();
    v101 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();
    v102 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v101, v100))
    {
      v93 = static UnsafeMutablePointer.allocate(capacity:)();
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v94 = createStorage<A>(capacity:type:)(0, v92, v92);
      v95 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v185 + 1128) = v93;
      *(v185 + 1136) = v94;
      *(v185 + 1144) = v95;
      serialize(_:at:)(0, (v185 + 1128));
      serialize(_:at:)(0, (v185 + 1128));
      *(v185 + 1152) = v102;
      v96 = swift_task_alloc();
      v96[2] = v185 + 1128;
      v96[3] = v185 + 1136;
      v96[4] = v185 + 1144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v101, v100, "saveWithID: confirmedAsScheduled is true, confirmedAsNeeded is false. No reprompt needed - continuing.", v93, 2u);
      destroyStorage<A>(_:count:)(v94, 0, v92);
      destroyStorage<A>(_:count:)(v95, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v93, MEMORY[0x277D84B78]);
    }

    v86 = *(v185 + 1488);
    v84 = *(v185 + 1408);
    v85 = *(v185 + 1344);
    v89 = *(v185 + 1216);
    v88 = *(v185 + 1208);
    MEMORY[0x277D82BD8](v101);
    v86(v84, v85);
    v87 = *(v185 + 608);

    *(v185 + 1120) = v87;

    v90 = swift_task_alloc();
    *(v90 + 16) = v88;
    *(v90 + 24) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v91 = _ArrayProtocol.filter(_:)();

    *(v185 + 616) = v91;

    v59 = *(v185 + 1464);
    v31 = *(v185 + 1368);
    v58 = *(v185 + 1344);
    v63 = *(v185 + 585);
    v62 = *(v185 + 1224);
    v61 = *(v185 + 1216);
    v60 = *(v185 + 1208);
    v57 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v59(v31, v57, v58);
    swift_endAccess();

    v64 = swift_allocObject();
    *(v64 + 16) = v60;
    *(v64 + 24) = v61;

    v66 = swift_allocObject();
    *(v66 + 16) = v62;
    v68 = swift_allocObject();
    *(v68 + 16) = v63;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    v72 = swift_allocObject();
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    *(v73 + 16) = 8;
    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v65 + 24) = v64;
    v74 = swift_allocObject();
    *(v74 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v74 + 24) = v65;
    v75 = swift_allocObject();
    *(v75 + 16) = 32;
    v76 = swift_allocObject();
    *(v76 + 16) = 8;
    v67 = swift_allocObject();
    *(v67 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    *(v67 + 24) = v66;
    v77 = swift_allocObject();
    *(v77 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v77 + 24) = v67;
    v78 = swift_allocObject();
    *(v78 + 16) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = 4;
    v69 = swift_allocObject();
    *(v69 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v69 + 24) = v68;
    v70 = swift_allocObject();
    *(v70 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v70 + 24) = v69;
    v71 = swift_allocObject();
    *(v71 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v71 + 24) = v70;
    v80 = swift_allocObject();
    *(v80 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v80 + 24) = v71;
    _allocateUninitializedArray<A>(_:)();
    v81 = v32;

    *v81 = partial apply for closure #1 in OSLogArguments.append(_:);
    v81[1] = v72;

    v81[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v81[3] = v73;

    v81[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v81[5] = v74;

    v81[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v81[7] = v75;

    v81[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v81[9] = v76;

    v81[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v81[11] = v77;

    v81[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v81[13] = v78;

    v81[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v81[15] = v79;

    v81[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v81[17] = v80;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v82, v83))
    {
      v54 = static UnsafeMutablePointer.allocate(capacity:)();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v55 = createStorage<A>(capacity:type:)(0, v53, v53);
      v56 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v239 = v54;
      v240 = v55;
      v241 = v56;
      serialize(_:at:)(2, &v239);
      serialize(_:at:)(3, &v239);
      v242 = partial apply for closure #1 in OSLogArguments.append(_:);
      v243 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      v242 = partial apply for closure #1 in OSLogArguments.append(_:);
      v243 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      v242 = partial apply for closure #1 in OSLogArguments.append(_:);
      v243 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      v242 = partial apply for closure #1 in OSLogArguments.append(_:);
      v243 = v75;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      v242 = partial apply for closure #1 in OSLogArguments.append(_:);
      v243 = v76;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      v242 = partial apply for closure #1 in OSLogArguments.append(_:);
      v243 = v77;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      v242 = partial apply for closure #1 in OSLogArguments.append(_:);
      v243 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      v242 = partial apply for closure #1 in OSLogArguments.append(_:);
      v243 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      v242 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v243 = v80;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      _os_log_impl(&dword_269912000, v82, v83, "Calling writeDoseEvent() for specified scheduleID (%s) and potentially medicationID (%s) with medStatus: %{BOOL}d", v54, 0x1Cu);
      destroyStorage<A>(_:count:)(v55, 0, v53);
      destroyStorage<A>(_:count:)(v56, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v54, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v49 = *(v185 + 1488);
    v47 = *(v185 + 1368);
    v48 = *(v185 + 1344);
    v50 = *(v185 + 1264);
    v52 = *(v185 + 1224);
    MEMORY[0x277D82BD8](v82);
    v49(v47, v48);
    MEMORY[0x277D82BE0](v50);
    v51 = *(v185 + 616);
    *(v185 + 1744) = v51;

    if (v52)
    {
      *(v185 + 792) = *(v185 + 1224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      Collection.first.getter();
      v43 = *(v185 + 480);
      v44 = *(v185 + 488);

      v45 = v43;
      v46 = v44;
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    *(v185 + 464) = v45;
    *(v185 + 472) = v46;
    v42 = *(v185 + 472) != 0;
    v41 = *(v185 + 586);
    outlined destroy of String.UTF8View(v185 + 464);
    v34 = swift_task_alloc();
    *(v185 + 1752) = v34;
    *v34 = *(v185 + 592);
    v34[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v35 = *(v185 + 1264);
    v36 = *(v185 + 1248);
    v37 = *(v185 + 1240);
    v38 = *(v185 + 1232);
    v39 = *(v185 + 585);
    v267 = *(v185 + 1256);
    v268 = v35;

    return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v35, v51, v39 & 1, v42, v38, v41 & 1, v37, v36);
  }

LABEL_27:
  v246 = *(v185 + 587);
  v247 = 1;
  if (v246 == 2)
  {
    if (v247 != 2)
    {
LABEL_54:
      v122 = *(v185 + 608);

      *(v185 + 944) = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
      lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
      Collection.first.getter();
      v123 = *(v185 + 952);
      *(v185 + 1608) = v123;
      if (v123)
      {
        v121 = *(v185 + 586);
        *(v185 + 992) = v123;

        v23 = swift_task_alloc();
        *(v185 + 1616) = v23;
        *v23 = *(v185 + 592);
        v23[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
        v24 = *(v185 + 1264);
        v25 = *(v185 + 1256);
        v26 = *(v185 + 1248);
        v27 = *(v185 + 1240);
        v28 = *(v185 + 1232);

        return SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(v123, v28, v121 & 1, v27, v26, v25, v24);
      }

      v117 = *(v185 + 1464);
      v29 = *(v185 + 1416);
      v116 = *(v185 + 1344);

      v115 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v117(v29, v115, v116);
      swift_endAccess();
      v119 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();
      v120 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v119, v118))
      {
        v111 = static UnsafeMutablePointer.allocate(capacity:)();
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v112 = createStorage<A>(capacity:type:)(0, v110, v110);
        v113 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v185 + 960) = v111;
        *(v185 + 968) = v112;
        *(v185 + 976) = v113;
        serialize(_:at:)(0, (v185 + 960));
        serialize(_:at:)(0, (v185 + 960));
        *(v185 + 984) = v120;
        v114 = swift_task_alloc();
        v114[2] = v185 + 960;
        v114[3] = v185 + 968;
        v114[4] = v185 + 976;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v119, v118, "No doseEvent found in saveWithID's fallback condition, returning failure status", v111, 2u);
        destroyStorage<A>(_:count:)(v112, 0, v110);
        destroyStorage<A>(_:count:)(v113, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v111, MEMORY[0x277D84B78]);
      }

      v105 = *(v185 + 1488);
      v103 = *(v185 + 1416);
      v104 = *(v185 + 1344);
      v108 = *(v185 + 1336);
      v107 = *(v185 + 1320);
      v106 = *(v185 + 1328);
      MEMORY[0x277D82BD8](v119);
      v105(v103, v104);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v109 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

      outlined destroy of [HKQuantityType]((v185 + 608));
      (*(v106 + 8))(v108, v107);
      v131 = v109;
      goto LABEL_75;
    }
  }

  else
  {
    v251 = *(v185 + 587);
    if (v247 == 2 || (v251 & 1) != (v247 & 1))
    {
      goto LABEL_54;
    }
  }

  v248 = *(v185 + 588);
  v249 = 0;
  if (v248 == 2)
  {
    if (v249 == 2)
    {
      v163 = 1;
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v250 = *(v185 + 588);
  if (v249 == 2)
  {
LABEL_43:
    v163 = 0;
    goto LABEL_41;
  }

  v163 = (v250 & 1) == (v249 & 1);
LABEL_41:
  if (!v163)
  {
    goto LABEL_54;
  }

  v159 = *(v185 + 1464);
  v13 = *(v185 + 1440);
  v158 = *(v185 + 1344);
  v157 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v159(v13, v157, v158);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v160 = static os_log_type_t.debug.getter();
  v162 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v160))
  {
    v153 = static UnsafeMutablePointer.allocate(capacity:)();
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v154 = createStorage<A>(capacity:type:)(0, v152, v152);
    v155 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v185 + 1088) = v153;
    *(v185 + 1096) = v154;
    *(v185 + 1104) = v155;
    serialize(_:at:)(0, (v185 + 1088));
    serialize(_:at:)(0, (v185 + 1088));
    *(v185 + 1112) = v162;
    v156 = swift_task_alloc();
    v156[2] = v185 + 1088;
    v156[3] = v185 + 1096;
    v156[4] = v185 + 1104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v160, "saveWithID: confirmedAsNeeded is true, confirmedAsScheduled is false. No reprompt needed - continuing.", v153, 2u);
    destroyStorage<A>(_:count:)(v154, 0, v152);
    destroyStorage<A>(_:count:)(v155, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v153, MEMORY[0x277D84B78]);
  }

  v149 = *(v185 + 1488);
  v147 = *(v185 + 1440);
  v148 = *(v185 + 1344);
  MEMORY[0x277D82BD8](oslog);
  v149(v147, v148);
  v150 = *(v185 + 608);

  *(v185 + 1032) = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection.first.getter();
  v151 = *(v185 + 1040);
  *(v185 + 1568) = v151;
  if (!v151)
  {
    v139 = *(v185 + 1464);
    v22 = *(v185 + 1432);
    v138 = *(v185 + 1344);

    v137 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v139(v22, v137, v138);
    swift_endAccess();
    log = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    v142 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v140))
    {
      v133 = static UnsafeMutablePointer.allocate(capacity:)();
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v134 = createStorage<A>(capacity:type:)(0, v132, v132);
      v135 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v185 + 1048) = v133;
      *(v185 + 1056) = v134;
      *(v185 + 1064) = v135;
      serialize(_:at:)(0, (v185 + 1048));
      serialize(_:at:)(0, (v185 + 1048));
      *(v185 + 1072) = v142;
      v136 = swift_task_alloc();
      v136[2] = v185 + 1048;
      v136[3] = v185 + 1056;
      v136[4] = v185 + 1064;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v140, "No doseEvent found in saveWithID's fallback condition, returning failure status", v133, 2u);
      destroyStorage<A>(_:count:)(v134, 0, v132);
      destroyStorage<A>(_:count:)(v135, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v133, MEMORY[0x277D84B78]);
    }

    v126 = *(v185 + 1488);
    v124 = *(v185 + 1432);
    v125 = *(v185 + 1344);
    v129 = *(v185 + 1336);
    v128 = *(v185 + 1320);
    v127 = *(v185 + 1328);
    MEMORY[0x277D82BD8](log);
    v126(v124, v125);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v130 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    outlined destroy of [HKQuantityType]((v185 + 608));
    (*(v127 + 8))(v129, v128);
    v131 = v130;
LABEL_75:

    v40 = *(*(v185 + 592) + 8);

    return v40(v131);
  }

  v145 = *(v185 + 586);
  *(v185 + 1080) = v151;

  v143 = [v151 medicationIdentifier];
  *(v185 + 1576) = [v143 underlyingIdentifier];
  v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v144 = v14;
  *(v185 + 1584) = v14;
  MEMORY[0x277D82BD8](v143);
  v15 = swift_task_alloc();
  *(v185 + 1592) = v15;
  *v15 = *(v185 + 592);
  v15[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  v16 = *(v185 + 1264);
  v17 = *(v185 + 1256);
  v18 = *(v185 + 1248);
  v19 = *(v185 + 1240);
  v20 = *(v185 + 1232);
  v21 = *(v185 + 585);
  v263 = 1;
  v264 = 0;
  v265 = 0;
  v266 = v17;
  v267 = v16;

  return SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)(v146, v144, v21 & 1, v20, v145 & 1, v19, v18, 0);
}

{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[74] = *v2;
  v6[194] = a1;
  v6[195] = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  }

  else
  {

    v3 = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v4 = *v1;
  v3 = *(*v1 + 1576);
  *(v4 + 592) = *v1;
  *(v4 + 1600) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

{
  v3 = *v1;
  *(v3 + 592) = *v1;
  *(v3 + 1624) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

{
  v2 = *(v1 + 1624);
  *(v1 + 592) = v1;
  if (v2)
  {
    v30 = *(v31 + 1608);
    MEMORY[0x277D82BD8](*(v31 + 1624));
    v3 = swift_task_alloc();
    *(v31 + 1632) = v3;
    *v3 = *(v31 + 592);
    v3[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v4 = *(v31 + 1264);
    v5 = *(v31 + 1256);
    v6 = *(v31 + 585) & 1;

    return SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(v30, v6, v5, v4);
  }

  else
  {
    v26 = *(v31 + 1464);
    v8 = *(v31 + 1424);
    v25 = *(v31 + 1344);
    v24 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v26(v8, v24, v25);
    swift_endAccess();
    v28 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    v29 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v28, v27))
    {
      v9 = *(v31 + 1512);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0, v19, v19);
      v22 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v31 + 1000) = buf;
      *(v31 + 1008) = v21;
      *(v31 + 1016) = v22;
      serialize(_:at:)(0, (v31 + 1000));
      serialize(_:at:)(0, (v31 + 1000));
      *(v31 + 1024) = v29;
      v23 = swift_task_alloc();
      v23[2] = v31 + 1000;
      v23[3] = v31 + 1008;
      v23[4] = v31 + 1016;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v9)
      {
      }

      _os_log_impl(&dword_269912000, v28, v27, "Got a complex med request wrt dosage/dosageUnit in first turn, skipping confirmAsScheduled & punching out.", buf, 2u);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v13 = *(v31 + 1488);
    v11 = *(v31 + 1424);
    v12 = *(v31 + 1344);
    v17 = *(v31 + 1336);
    v16 = *(v31 + 1320);
    v14 = *(v31 + 1608);
    v15 = *(v31 + 1328);
    MEMORY[0x277D82BD8](v28);
    v13(v11, v12);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v18 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(112, 0);
    MEMORY[0x277D82BD8](v14);

    outlined destroy of [HKQuantityType]((v31 + 608));
    (*(v15 + 8))(v17, v16);

    v10 = *(*(v31 + 592) + 8);

    return v10(v18);
  }
}

{
  v3 = *v1;
  *(v3 + 592) = *v1;
  *(v3 + 1640) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

{
  v5 = *v2;
  v5[74] = *v2;
  v5[207] = a1;
  v5[208] = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  }

  else
  {
    v3 = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v3 = *v1;
  *(v3 + 592) = *v1;
  *(v3 + 1696) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

{
  v3 = *v1;
  *(v3 + 592) = *v1;
  *(v3 + 1736) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

{
  v4 = *v1;
  v3 = *(*v1 + 1264);
  *(v4 + 592) = *v1;
  *(v4 + 1760) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

uint64_t SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)()
{
  v210 = v0;
  v1 = v0[195];
  v188 = v0[194];
  v187 = v0[191];
  v190 = v0[152];
  v189 = v0[151];
  v0[74] = v0;

  *(v187 + 16) = v188;
  swift_beginAccess();
  swift_endAccess();
  v0[146] = v188;

  v191 = swift_task_alloc();
  *(v191 + 16) = v189;
  *(v191 + 24) = v190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v192 = _ArrayProtocol.filter(_:)();
  if (v1)
  {
  }

  v174 = *(v186 + 1528);
  v173 = *(v186 + 1464);
  v8 = *(v186 + 1448);
  v172 = *(v186 + 1344);

  swift_beginAccess();
  *(v174 + 16) = v192;

  swift_endAccess();
  v171 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v173(v8, v171, v172);
  swift_endAccess();

  v175 = swift_allocObject();
  *(v175 + 16) = partial apply for implicit closure #6 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v175 + 24) = v174;

  oslog = Logger.logObject.getter();
  v182 = static os_log_type_t.debug.getter();
  v177 = swift_allocObject();
  *(v177 + 16) = 32;
  v178 = swift_allocObject();
  *(v178 + 16) = 8;
  v176 = swift_allocObject();
  *(v176 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v176 + 24) = v175;
  v179 = swift_allocObject();
  *(v179 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v179 + 24) = v176;
  _allocateUninitializedArray<A>(_:)();
  v180 = v9;

  *v180 = partial apply for closure #1 in OSLogArguments.append(_:);
  v180[1] = v177;

  v180[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v180[3] = v178;

  v180[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v180[5] = v179;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v182))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v169 = createStorage<A>(capacity:type:)(0, v167, v167);
    v170 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v186 + 1184) = buf;
    *(v186 + 1192) = v169;
    *(v186 + 1200) = v170;
    serialize(_:at:)(2, (v186 + 1184));
    serialize(_:at:)(1, (v186 + 1184));
    *(v186 + 560) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v186 + 568) = v177;
    closure #1 in osLogInternal(_:log:type:)((v186 + 560), v186 + 1184, v186 + 1192, v186 + 1200);
    *(v186 + 560) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v186 + 568) = v178;
    closure #1 in osLogInternal(_:log:type:)((v186 + 560), v186 + 1184, v186 + 1192, v186 + 1200);
    *(v186 + 560) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v186 + 568) = v179;
    closure #1 in osLogInternal(_:log:type:)((v186 + 560), v186 + 1184, v186 + 1192, v186 + 1200);
    _os_log_impl(&dword_269912000, oslog, v182, "doseEventsForID: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v169, 0, v167);
    destroyStorage<A>(_:count:)(v170, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v164 = *(v186 + 1488);
  v162 = *(v186 + 1448);
  v163 = *(v186 + 1344);
  v165 = (*(v186 + 1528) + 16);
  MEMORY[0x277D82BD8](oslog);
  v164(v162, v163);
  swift_beginAccess();
  v166 = *v165;

  swift_endAccess();
  *(v186 + 1176) = v166;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Array.append<A>(contentsOf:)();

  *(v186 + 1512) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v184 = *(v186 + 528);
  v183 = *(v186 + 536);
  *(v186 + 1520) = v183;
  if (v183)
  {
    *(v186 + 544) = v184;
    *(v186 + 552) = v183;
    v2 = swift_allocObject();
    *(v186 + 1528) = v2;
    *(v186 + 1160) = v2 + 16;
    type metadata accessor for HKMedicationIdentifier();

    v185 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)(v184, v183);
    *(v186 + 1536) = v185;
    v3 = swift_task_alloc();
    *(v186 + 1544) = v3;
    *v3 = *(v186 + 592);
    v3[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v4 = *(v186 + 1336);
    v5 = *(v186 + 1264);
    v6 = *(v186 + 1256);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v4, v185, v6, v5);
  }

  v161 = *(v186 + 588);
  outlined destroy of [HKQuantityType]((v186 + 512));
  v198 = v161;
  v199 = 1;
  if (v161 == 2)
  {
    if (v199 != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v209 = *(v186 + 588);
    if (v199 == 2 || (v209 & 1) != (v199 & 1))
    {
      goto LABEL_27;
    }
  }

  v206 = *(v186 + 587);
  v207 = 0;
  if (v206 != 2)
  {
    v208 = *(v186 + 587);
    if (v207 != 2)
    {
      v160 = (v208 & 1) == (v207 & 1);
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (v207 != 2)
  {
LABEL_25:
    v160 = 0;
    goto LABEL_23;
  }

  v160 = 1;
LABEL_23:
  if (v160)
  {
    v95 = *(v186 + 1464);
    v27 = *(v186 + 1408);
    v94 = *(v186 + 1344);
    v93 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v95(v27, v93, v94);
    swift_endAccess();
    v97 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    v98 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v97, v96))
    {
      v89 = static UnsafeMutablePointer.allocate(capacity:)();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v90 = createStorage<A>(capacity:type:)(0, v88, v88);
      v91 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v186 + 1128) = v89;
      *(v186 + 1136) = v90;
      *(v186 + 1144) = v91;
      serialize(_:at:)(0, (v186 + 1128));
      serialize(_:at:)(0, (v186 + 1128));
      *(v186 + 1152) = v98;
      v92 = swift_task_alloc();
      v92[2] = v186 + 1128;
      v92[3] = v186 + 1136;
      v92[4] = v186 + 1144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v97, v96, "saveWithID: confirmedAsScheduled is true, confirmedAsNeeded is false. No reprompt needed - continuing.", v89, 2u);
      destroyStorage<A>(_:count:)(v90, 0, v88);
      destroyStorage<A>(_:count:)(v91, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v89, MEMORY[0x277D84B78]);
    }

    v82 = *(v186 + 1488);
    v80 = *(v186 + 1408);
    v81 = *(v186 + 1344);
    v85 = *(v186 + 1216);
    v84 = *(v186 + 1208);
    MEMORY[0x277D82BD8](v97);
    v82(v80, v81);
    v83 = *(v186 + 608);

    *(v186 + 1120) = v83;

    v86 = swift_task_alloc();
    *(v86 + 16) = v84;
    *(v86 + 24) = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v87 = _ArrayProtocol.filter(_:)();

    *(v186 + 616) = v87;

    v55 = *(v186 + 1464);
    v28 = *(v186 + 1368);
    v54 = *(v186 + 1344);
    v59 = *(v186 + 585);
    v58 = *(v186 + 1224);
    v57 = *(v186 + 1216);
    v56 = *(v186 + 1208);
    v53 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v55(v28, v53, v54);
    swift_endAccess();

    v60 = swift_allocObject();
    *(v60 + 16) = v56;
    *(v60 + 24) = v57;

    v62 = swift_allocObject();
    *(v62 + 16) = v58;
    v64 = swift_allocObject();
    *(v64 + 16) = v59;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    v68 = swift_allocObject();
    *(v68 + 16) = 32;
    v69 = swift_allocObject();
    *(v69 + 16) = 8;
    v61 = swift_allocObject();
    *(v61 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v61 + 24) = v60;
    v70 = swift_allocObject();
    *(v70 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v70 + 24) = v61;
    v71 = swift_allocObject();
    *(v71 + 16) = 32;
    v72 = swift_allocObject();
    *(v72 + 16) = 8;
    v63 = swift_allocObject();
    *(v63 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    *(v63 + 24) = v62;
    v73 = swift_allocObject();
    *(v73 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v73 + 24) = v63;
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    v75 = swift_allocObject();
    *(v75 + 16) = 4;
    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v65 + 24) = v64;
    v66 = swift_allocObject();
    *(v66 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v66 + 24) = v65;
    v67 = swift_allocObject();
    *(v67 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v67 + 24) = v66;
    v76 = swift_allocObject();
    *(v76 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v76 + 24) = v67;
    _allocateUninitializedArray<A>(_:)();
    v77 = v29;

    *v77 = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[1] = v68;

    v77[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[3] = v69;

    v77[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[5] = v70;

    v77[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[7] = v71;

    v77[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[9] = v72;

    v77[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[11] = v73;

    v77[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[13] = v74;

    v77[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[15] = v75;

    v77[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v77[17] = v76;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v78, v79))
    {
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0, v49, v49);
      v52 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v193 = v50;
      v194 = v51;
      v195 = v52;
      serialize(_:at:)(2, &v193);
      serialize(_:at:)(3, &v193);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v68;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v75;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v197 = v76;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      _os_log_impl(&dword_269912000, v78, v79, "Calling writeDoseEvent() for specified scheduleID (%s) and potentially medicationID (%s) with medStatus: %{BOOL}d", v50, 0x1Cu);
      destroyStorage<A>(_:count:)(v51, 0, v49);
      destroyStorage<A>(_:count:)(v52, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v50, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v45 = *(v186 + 1488);
    v43 = *(v186 + 1368);
    v44 = *(v186 + 1344);
    v46 = *(v186 + 1264);
    v48 = *(v186 + 1224);
    MEMORY[0x277D82BD8](v78);
    v45(v43, v44);
    MEMORY[0x277D82BE0](v46);
    v47 = *(v186 + 616);
    *(v186 + 1744) = v47;

    if (v48)
    {
      *(v186 + 792) = *(v186 + 1224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      Collection.first.getter();
      v39 = *(v186 + 480);
      v40 = *(v186 + 488);

      v41 = v39;
      v42 = v40;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    *(v186 + 464) = v41;
    *(v186 + 472) = v42;
    v38 = *(v186 + 472) != 0;
    v37 = *(v186 + 586);
    outlined destroy of String.UTF8View(v186 + 464);
    v30 = swift_task_alloc();
    *(v186 + 1752) = v30;
    *v30 = *(v186 + 592);
    v30[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v31 = *(v186 + 1264);
    v32 = *(v186 + 1248);
    v33 = *(v186 + 1240);
    v34 = *(v186 + 1232);
    v35 = *(v186 + 585);
    v216 = *(v186 + 1256);
    v217 = v31;

    return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v31, v47, v35 & 1, v38, v34, v37 & 1, v33, v32);
  }

LABEL_27:
  v200 = *(v186 + 587);
  v201 = 1;
  if (v200 == 2)
  {
    if (v201 != 2)
    {
LABEL_54:
      v118 = *(v186 + 608);

      *(v186 + 944) = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
      lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
      Collection.first.getter();
      v119 = *(v186 + 952);
      *(v186 + 1608) = v119;
      if (v119)
      {
        v117 = *(v186 + 586);
        *(v186 + 992) = v119;

        v20 = swift_task_alloc();
        *(v186 + 1616) = v20;
        *v20 = *(v186 + 592);
        v20[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
        v21 = *(v186 + 1264);
        v22 = *(v186 + 1256);
        v23 = *(v186 + 1248);
        v24 = *(v186 + 1240);
        v25 = *(v186 + 1232);

        return SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(v119, v25, v117 & 1, v24, v23, v22, v21);
      }

      v113 = *(v186 + 1464);
      v26 = *(v186 + 1416);
      v112 = *(v186 + 1344);

      v111 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v113(v26, v111, v112);
      swift_endAccess();
      v115 = Logger.logObject.getter();
      v114 = static os_log_type_t.error.getter();
      v116 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v115, v114))
      {
        v107 = static UnsafeMutablePointer.allocate(capacity:)();
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v108 = createStorage<A>(capacity:type:)(0, v106, v106);
        v109 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v186 + 960) = v107;
        *(v186 + 968) = v108;
        *(v186 + 976) = v109;
        serialize(_:at:)(0, (v186 + 960));
        serialize(_:at:)(0, (v186 + 960));
        *(v186 + 984) = v116;
        v110 = swift_task_alloc();
        v110[2] = v186 + 960;
        v110[3] = v186 + 968;
        v110[4] = v186 + 976;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v115, v114, "No doseEvent found in saveWithID's fallback condition, returning failure status", v107, 2u);
        destroyStorage<A>(_:count:)(v108, 0, v106);
        destroyStorage<A>(_:count:)(v109, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v107, MEMORY[0x277D84B78]);
      }

      v101 = *(v186 + 1488);
      v99 = *(v186 + 1416);
      v100 = *(v186 + 1344);
      v104 = *(v186 + 1336);
      v103 = *(v186 + 1320);
      v102 = *(v186 + 1328);
      MEMORY[0x277D82BD8](v115);
      v101(v99, v100);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v105 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

      outlined destroy of [HKQuantityType]((v186 + 608));
      (*(v102 + 8))(v104, v103);
      v127 = v105;
      goto LABEL_72;
    }
  }

  else
  {
    v205 = *(v186 + 587);
    if (v201 == 2 || (v205 & 1) != (v201 & 1))
    {
      goto LABEL_54;
    }
  }

  v202 = *(v186 + 588);
  v203 = 0;
  if (v202 == 2)
  {
    if (v203 == 2)
    {
      v159 = 1;
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v204 = *(v186 + 588);
  if (v203 == 2)
  {
LABEL_43:
    v159 = 0;
    goto LABEL_41;
  }

  v159 = (v204 & 1) == (v203 & 1);
LABEL_41:
  if (!v159)
  {
    goto LABEL_54;
  }

  v155 = *(v186 + 1464);
  v10 = *(v186 + 1440);
  v154 = *(v186 + 1344);
  v153 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v155(v10, v153, v154);
  swift_endAccess();
  log = Logger.logObject.getter();
  v156 = static os_log_type_t.debug.getter();
  v158 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(log, v156))
  {
    v149 = static UnsafeMutablePointer.allocate(capacity:)();
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v150 = createStorage<A>(capacity:type:)(0, v148, v148);
    v151 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v186 + 1088) = v149;
    *(v186 + 1096) = v150;
    *(v186 + 1104) = v151;
    serialize(_:at:)(0, (v186 + 1088));
    serialize(_:at:)(0, (v186 + 1088));
    *(v186 + 1112) = v158;
    v152 = swift_task_alloc();
    v152[2] = v186 + 1088;
    v152[3] = v186 + 1096;
    v152[4] = v186 + 1104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, log, v156, "saveWithID: confirmedAsNeeded is true, confirmedAsScheduled is false. No reprompt needed - continuing.", v149, 2u);
    destroyStorage<A>(_:count:)(v150, 0, v148);
    destroyStorage<A>(_:count:)(v151, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v149, MEMORY[0x277D84B78]);
  }

  v145 = *(v186 + 1488);
  v143 = *(v186 + 1440);
  v144 = *(v186 + 1344);
  MEMORY[0x277D82BD8](log);
  v145(v143, v144);
  v146 = *(v186 + 608);

  *(v186 + 1032) = v146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection.first.getter();
  v147 = *(v186 + 1040);
  *(v186 + 1568) = v147;
  if (!v147)
  {
    v135 = *(v186 + 1464);
    v19 = *(v186 + 1432);
    v134 = *(v186 + 1344);

    v133 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v135(v19, v133, v134);
    swift_endAccess();
    v137 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();
    v138 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v137, v136))
    {
      v129 = static UnsafeMutablePointer.allocate(capacity:)();
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v130 = createStorage<A>(capacity:type:)(0, v128, v128);
      v131 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v186 + 1048) = v129;
      *(v186 + 1056) = v130;
      *(v186 + 1064) = v131;
      serialize(_:at:)(0, (v186 + 1048));
      serialize(_:at:)(0, (v186 + 1048));
      *(v186 + 1072) = v138;
      v132 = swift_task_alloc();
      v132[2] = v186 + 1048;
      v132[3] = v186 + 1056;
      v132[4] = v186 + 1064;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v137, v136, "No doseEvent found in saveWithID's fallback condition, returning failure status", v129, 2u);
      destroyStorage<A>(_:count:)(v130, 0, v128);
      destroyStorage<A>(_:count:)(v131, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v129, MEMORY[0x277D84B78]);
    }

    v122 = *(v186 + 1488);
    v120 = *(v186 + 1432);
    v121 = *(v186 + 1344);
    v125 = *(v186 + 1336);
    v124 = *(v186 + 1320);
    v123 = *(v186 + 1328);
    MEMORY[0x277D82BD8](v137);
    v122(v120, v121);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v126 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    outlined destroy of [HKQuantityType]((v186 + 608));
    (*(v123 + 8))(v125, v124);
    v127 = v126;
LABEL_72:

    v36 = *(*(v186 + 592) + 8);

    return v36(v127);
  }

  v141 = *(v186 + 586);
  *(v186 + 1080) = v147;

  v139 = [v147 medicationIdentifier];
  *(v186 + 1576) = [v139 underlyingIdentifier];
  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v140 = v11;
  *(v186 + 1584) = v11;
  MEMORY[0x277D82BD8](v139);
  v12 = swift_task_alloc();
  *(v186 + 1592) = v12;
  *v12 = *(v186 + 592);
  v12[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  v13 = *(v186 + 1264);
  v14 = *(v186 + 1256);
  v15 = *(v186 + 1248);
  v16 = *(v186 + 1240);
  v17 = *(v186 + 1232);
  v18 = *(v186 + 585);
  v212 = 1;
  v213 = 0;
  v214 = 0;
  v215 = v14;
  v216 = v13;

  return SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)(v142, v140, v18 & 1, v17, v141 & 1, v16, v15, 0);
}

{
  v1 = v0[196];
  v6 = v0[167];
  v4 = v0[166];
  v5 = v0[165];
  v0[74] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 76);
  (*(v4 + 8))(v6, v5);
  v7 = v0[200];

  v2 = *(v0[74] + 8);

  return v2(v7);
}

{
  v1 = v0[201];
  v6 = v0[167];
  v4 = v0[166];
  v5 = v0[165];
  v0[74] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 76);
  (*(v4 + 8))(v6, v5);
  v7 = v0[205];

  v2 = *(v0[74] + 8);

  return v2(v7);
}

{
  v170 = v0;
  v1 = v0[208];
  v155 = v0[207];
  v157 = v0[152];
  v156 = v0[151];
  v0[74] = v0;

  v0[78] = v155;
  v0[84] = v155;

  v158 = swift_task_alloc();
  *(v158 + 16) = v156;
  *(v158 + 24) = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v159 = _ArrayProtocol.filter(_:)();
  if (v1)
  {
  }

  *(v154 + 624) = v159;

  *(v154 + 616) = _allocateUninitializedArray<A>(_:)();
  v153 = allDoseEventsAreUnlogged(doseEvents:)(v159);

  if (v153)
  {
    v149 = *(v154 + 1464);
    v2 = *(v154 + 1400);
    v148 = *(v154 + 1344);
    v147 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v149(v2, v147, v148);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v150 = static os_log_type_t.debug.getter();
    v152 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v150))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v144 = createStorage<A>(capacity:type:)(0, v142, v142);
      v145 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v154 + 896) = buf;
      *(v154 + 904) = v144;
      *(v154 + 912) = v145;
      serialize(_:at:)(0, (v154 + 896));
      serialize(_:at:)(0, (v154 + 896));
      *(v154 + 920) = v152;
      v146 = swift_task_alloc();
      v146[2] = v154 + 896;
      v146[3] = v154 + 904;
      v146[4] = v154 + 912;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v150, "All dose events in group are unlogged, continuing to write", buf, 2u);
      destroyStorage<A>(_:count:)(v144, 0, v142);
      destroyStorage<A>(_:count:)(v145, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v140 = *(v154 + 1488);
    v138 = *(v154 + 1400);
    v139 = *(v154 + 1344);
    MEMORY[0x277D82BD8](oslog);
    v140(v138, v139);
    v141 = *(v154 + 624);

    *(v154 + 888) = v141;
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Array.append<A>(contentsOf:)();
    goto LABEL_24;
  }

  doseEvents._rawValue = *(v154 + 624);

  v137 = allLoggedWithMixedStatus(doseEvents:)(doseEvents);

  if (v137 || (v133 = *(v154 + 585), v134._rawValue = *(v154 + 624), , v135 = oneExistingStatusWithConflictingRequest(doseEvents:requestedStatus:)(v134, v133 & 1), , v135))
  {
    v129 = *(v154 + 1464);
    v3 = *(v154 + 1392);
    v128 = *(v154 + 1344);
    v127 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v129(v3, v127, v128);
    swift_endAccess();
    log = Logger.logObject.getter();
    v130 = static os_log_type_t.debug.getter();
    v132 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v130))
    {
      v123 = static UnsafeMutablePointer.allocate(capacity:)();
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v124 = createStorage<A>(capacity:type:)(0, v122, v122);
      v125 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v154 + 856) = v123;
      *(v154 + 864) = v124;
      *(v154 + 872) = v125;
      serialize(_:at:)(0, (v154 + 856));
      serialize(_:at:)(0, (v154 + 856));
      *(v154 + 880) = v132;
      v126 = swift_task_alloc();
      v126[2] = v154 + 856;
      v126[3] = v154 + 864;
      v126[4] = v154 + 872;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v130, "Calling either allLoggedWithMixedStatus or oneExistingStatusWithConflictingRequest", v123, 2u);
      destroyStorage<A>(_:count:)(v124, 0, v122);
      destroyStorage<A>(_:count:)(v125, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v123, MEMORY[0x277D84B78]);
    }

    v119 = *(v154 + 1488);
    v117 = *(v154 + 1392);
    v118 = *(v154 + 1344);
    MEMORY[0x277D82BD8](log);
    v119(v117, v118);
    *(v154 + 1672) = type metadata accessor for MatchedMedName();
    *(v154 + 800) = _allocateUninitializedArray<A>(_:)();
    v120 = *(v154 + 624);

    *(v154 + 808) = v120;
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Collection<>.makeIterator()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v121 = *(v154 + 816);
    *(v154 + 1680) = v121;
    if (v121)
    {
      *(v154 + 832) = v121;
      v4 = swift_task_alloc();
      v5 = v121;
      *(v154 + 1688) = v4;
      *v4 = *(v154 + 592);
      v4[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
      v6 = *(v154 + 1264);
      v7 = *(v154 + 1256);

      return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v5, 1, v7, v6);
    }

    v114 = *(v154 + 1336);
    v113 = *(v154 + 1320);
    v112 = *(v154 + 1328);
    outlined destroy of [HKQuantityType]((v154 + 496));
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v115 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(110, 0);
    MEMORY[0x277D82BE0](v115);
    *(v154 + 824) = v115;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v115 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](*(v154 + 824));
    outlined destroy of [HKQuantityType]((v154 + 800));
    outlined destroy of [HKQuantityType]((v154 + 624));
    outlined destroy of [HKQuantityType]((v154 + 616));
    outlined destroy of [HKQuantityType]((v154 + 608));
    (*(v112 + 8))(v114, v113);
    v116 = v115;
  }

  else
  {
    v108 = *(v154 + 624);

    v109 = getUnloggedDoseEvents(doseEvents:)(v108);

    *(v154 + 680) = v109;
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v110 = Collection.isEmpty.getter();

    if ((v110 & 1) == 0)
    {
      v84 = *(v154 + 624);

      v85 = getUnloggedDoseEvents(doseEvents:)(v84);

      *(v154 + 776) = v85;

      *(v154 + 784) = v85;
      lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
      Array.append<A>(contentsOf:)();

LABEL_24:
      v74 = *(v154 + 1464);
      v11 = *(v154 + 1376);
      v73 = *(v154 + 1344);
      v72 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v74(v11, v72, v73);
      swift_endAccess();
      v75 = *(v154 + 608);

      v76 = swift_allocObject();
      *(v76 + 16) = v75;
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();
      v78 = swift_allocObject();
      *(v78 + 16) = 0;
      v79 = swift_allocObject();
      *(v79 + 16) = 8;
      v77 = swift_allocObject();
      *(v77 + 16) = partial apply for specialized implicit closure #10 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      *(v77 + 24) = v76;
      v80 = swift_allocObject();
      *(v80 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
      *(v80 + 24) = v77;
      _allocateUninitializedArray<A>(_:)();
      v81 = v12;

      *v81 = partial apply for closure #1 in OSLogArguments.append(_:);
      v81[1] = v78;

      v81[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v81[3] = v79;

      v81[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v81[5] = v80;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v82, v83))
      {
        v69 = static UnsafeMutablePointer.allocate(capacity:)();
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v70 = createStorage<A>(capacity:type:)(0, v68, v68);
        v71 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v165 = v69;
        v166 = v70;
        v167 = v71;
        serialize(_:at:)(0, &v165);
        serialize(_:at:)(1, &v165);
        v168 = partial apply for closure #1 in OSLogArguments.append(_:);
        v169 = v78;
        closure #1 in osLogInternal(_:log:type:)(&v168, &v165, &v166, &v167);
        v168 = partial apply for closure #1 in OSLogArguments.append(_:);
        v169 = v79;
        closure #1 in osLogInternal(_:log:type:)(&v168, &v165, &v166, &v167);
        v168 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v169 = v80;
        closure #1 in osLogInternal(_:log:type:)(&v168, &v165, &v166, &v167);
        _os_log_impl(&dword_269912000, v82, v83, "saveWithID, medicationIDs not provided: appended %ld doseEvents", v69, 0xCu);
        destroyStorage<A>(_:count:)(v70, 0, v68);
        destroyStorage<A>(_:count:)(v71, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v69, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v40 = *(v154 + 1488);
      v38 = *(v154 + 1376);
      v39 = *(v154 + 1344);
      MEMORY[0x277D82BD8](v82);
      v40(v38, v39);
      outlined destroy of [HKQuantityType]((v154 + 624));
      v43 = *(v154 + 1464);
      v13 = *(v154 + 1368);
      v42 = *(v154 + 1344);
      v47 = *(v154 + 585);
      v46 = *(v154 + 1224);
      v45 = *(v154 + 1216);
      v44 = *(v154 + 1208);
      v41 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v43(v13, v41, v42);
      swift_endAccess();

      v48 = swift_allocObject();
      *(v48 + 16) = v44;
      *(v48 + 24) = v45;

      v50 = swift_allocObject();
      *(v50 + 16) = v46;
      v52 = swift_allocObject();
      *(v52 + 16) = v47;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      v56 = swift_allocObject();
      *(v56 + 16) = 32;
      v57 = swift_allocObject();
      *(v57 + 16) = 8;
      v49 = swift_allocObject();
      *(v49 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
      *(v49 + 24) = v48;
      v58 = swift_allocObject();
      *(v58 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v58 + 24) = v49;
      v59 = swift_allocObject();
      *(v59 + 16) = 32;
      v60 = swift_allocObject();
      *(v60 + 16) = 8;
      v51 = swift_allocObject();
      *(v51 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
      *(v51 + 24) = v50;
      v61 = swift_allocObject();
      *(v61 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v61 + 24) = v51;
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = 4;
      v53 = swift_allocObject();
      *(v53 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
      *(v53 + 24) = v52;
      v54 = swift_allocObject();
      *(v54 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
      *(v54 + 24) = v53;
      v55 = swift_allocObject();
      *(v55 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
      *(v55 + 24) = v54;
      v64 = swift_allocObject();
      *(v64 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
      *(v64 + 24) = v55;
      _allocateUninitializedArray<A>(_:)();
      v65 = v14;

      *v65 = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[1] = v56;

      v65[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[3] = v57;

      v65[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[5] = v58;

      v65[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[7] = v59;

      v65[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[9] = v60;

      v65[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[11] = v61;

      v65[12] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[13] = v62;

      v65[14] = partial apply for closure #1 in OSLogArguments.append(_:);
      v65[15] = v63;

      v65[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v65[17] = v64;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v66, v67))
      {
        v35 = static UnsafeMutablePointer.allocate(capacity:)();
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v36 = createStorage<A>(capacity:type:)(0, v34, v34);
        v37 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v160 = v35;
        v161 = v36;
        v162 = v37;
        serialize(_:at:)(2, &v160);
        serialize(_:at:)(3, &v160);
        v163 = partial apply for closure #1 in OSLogArguments.append(_:);
        v164 = v56;
        closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
        v163 = partial apply for closure #1 in OSLogArguments.append(_:);
        v164 = v57;
        closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
        v163 = partial apply for closure #1 in OSLogArguments.append(_:);
        v164 = v58;
        closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
        v163 = partial apply for closure #1 in OSLogArguments.append(_:);
        v164 = v59;
        closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
        v163 = partial apply for closure #1 in OSLogArguments.append(_:);
        v164 = v60;
        closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
        v163 = partial apply for closure #1 in OSLogArguments.append(_:);
        v164 = v61;
        closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
        v163 = partial apply for closure #1 in OSLogArguments.append(_:);
        v164 = v62;
        closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
        v163 = partial apply for closure #1 in OSLogArguments.append(_:);
        v164 = v63;
        closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
        v163 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
        v164 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
        _os_log_impl(&dword_269912000, v66, v67, "Calling writeDoseEvent() for specified scheduleID (%s) and potentially medicationID (%s) with medStatus: %{BOOL}d", v35, 0x1Cu);
        destroyStorage<A>(_:count:)(v36, 0, v34);
        destroyStorage<A>(_:count:)(v37, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v35, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v30 = *(v154 + 1488);
      v28 = *(v154 + 1368);
      v29 = *(v154 + 1344);
      v31 = *(v154 + 1264);
      v33 = *(v154 + 1224);
      MEMORY[0x277D82BD8](v66);
      v30(v28, v29);
      MEMORY[0x277D82BE0](v31);
      v32 = *(v154 + 616);
      *(v154 + 1744) = v32;

      if (v33)
      {
        *(v154 + 792) = *(v154 + 1224);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        Collection.first.getter();
        v24 = *(v154 + 480);
        v25 = *(v154 + 488);

        v26 = v24;
        v27 = v25;
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      *(v154 + 464) = v26;
      *(v154 + 472) = v27;
      v23 = *(v154 + 472) != 0;
      v22 = *(v154 + 586);
      outlined destroy of String.UTF8View(v154 + 464);
      v15 = swift_task_alloc();
      *(v154 + 1752) = v15;
      *v15 = *(v154 + 592);
      v15[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
      v16 = *(v154 + 1264);
      v17 = *(v154 + 1248);
      v18 = *(v154 + 1240);
      v19 = *(v154 + 1232);
      v20 = *(v154 + 585);
      v172 = *(v154 + 1256);
      v173 = v16;

      return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v16, v32, v20 & 1, v23, v19, v22 & 1, v18, v17);
    }

    v104 = *(v154 + 1464);
    v9 = *(v154 + 1384);
    v103 = *(v154 + 1344);
    v102 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v104(v9, v102, v103);
    swift_endAccess();
    v106 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    v107 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v106, v105))
    {
      v98 = static UnsafeMutablePointer.allocate(capacity:)();
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v99 = createStorage<A>(capacity:type:)(0, v97, v97);
      v100 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v154 + 744) = v98;
      *(v154 + 752) = v99;
      *(v154 + 760) = v100;
      serialize(_:at:)(0, (v154 + 744));
      serialize(_:at:)(0, (v154 + 744));
      *(v154 + 768) = v107;
      v101 = swift_task_alloc();
      v101[2] = v154 + 744;
      v101[3] = v154 + 752;
      v101[4] = v154 + 760;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v106, v105, "allMedsLoggedAlready, returning code .allMedsLoggedAlready", v98, 2u);
      destroyStorage<A>(_:count:)(v99, 0, v97);
      destroyStorage<A>(_:count:)(v100, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v98, MEMORY[0x277D84B78]);
    }

    v93 = *(v154 + 1488);
    v91 = *(v154 + 1384);
    v92 = *(v154 + 1344);
    MEMORY[0x277D82BD8](v106);
    v93(v91, v92);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v94 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(111, 0);
    *(v154 + 1704) = v94;
    MEMORY[0x277D82BE0](v94);
    *(v154 + 688) = v94;
    *(v154 + 1712) = type metadata accessor for MatchedMedName();
    *(v154 + 696) = _allocateUninitializedArray<A>(_:)();
    v95 = *(v154 + 624);

    *(v154 + 704) = v95;
    Collection<>.makeIterator()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v96 = *(v154 + 712);
    *(v154 + 1720) = v96;
    if (v96)
    {
      *(v154 + 720) = v96;
      v10 = swift_task_alloc();
      v5 = v96;
      *(v154 + 1728) = v10;
      *v10 = *(v154 + 592);
      v10[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
      v6 = *(v154 + 1264);
      v7 = *(v154 + 1256);

      return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v5, 1, v7, v6);
    }

    v86 = *(v154 + 1704);
    v90 = *(v154 + 1336);
    v89 = *(v154 + 1320);
    v88 = *(v154 + 1328);
    outlined destroy of [HKQuantityType]((v154 + 448));

    v87 = Array._bridgeToObjectiveC()().super.isa;

    [v86 setMatchingMeds_];
    MEMORY[0x277D82BD8](v87);
    outlined destroy of [HKQuantityType]((v154 + 696));
    MEMORY[0x277D82BD8](*(v154 + 688));
    outlined destroy of [HKQuantityType]((v154 + 624));
    outlined destroy of [HKQuantityType]((v154 + 616));
    outlined destroy of [HKQuantityType]((v154 + 608));
    (*(v88 + 8))(v90, v89);
    v116 = *(v154 + 1704);
  }

  v21 = *(*(v154 + 592) + 8);

  return v21(v116);
}

{
  v12 = v0[212];
  v13 = v0[210];
  v0[74] = v0;
  v0[105] = v12;
  MEMORY[0x277D82BE0](v12);
  v0[106] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v14 = v0[102];
  v0[210] = v14;
  if (v14)
  {
    v11[104] = v14;
    v1 = swift_task_alloc();
    v11[211] = v1;
    *v1 = v11[74];
    v1[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v2 = v11[158];
    v3 = v11[157];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v14, 1, v3, v2);
  }

  else
  {
    v9 = v11[167];
    v8 = v11[165];
    v7 = v11[166];
    outlined destroy of [HKQuantityType](v11 + 62);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v10 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(110, 0);
    MEMORY[0x277D82BE0](v10);
    v11[103] = v10;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v11[103]);
    outlined destroy of [HKQuantityType](v11 + 100);
    outlined destroy of [HKQuantityType](v11 + 78);
    outlined destroy of [HKQuantityType](v11 + 77);
    outlined destroy of [HKQuantityType](v11 + 76);
    (*(v7 + 8))(v9, v8);

    v5 = *(v11[74] + 8);

    return v5(v10);
  }
}

{
  v13 = v0[217];
  v14 = v0[215];
  v0[74] = v0;
  v0[91] = v13;
  MEMORY[0x277D82BE0](v13);
  v0[92] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v15 = v0[89];
  v0[215] = v15;
  if (v15)
  {
    v12[90] = v15;
    v1 = swift_task_alloc();
    v12[216] = v1;
    *v1 = v12[74];
    v1[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v2 = v12[158];
    v3 = v12[157];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v15, 1, v3, v2);
  }

  else
  {
    v6 = v12[213];
    v10 = v12[167];
    v9 = v12[165];
    v8 = v12[166];
    outlined destroy of [HKQuantityType](v12 + 56);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType](v12 + 87);
    MEMORY[0x277D82BD8](v12[86]);
    outlined destroy of [HKQuantityType](v12 + 78);
    outlined destroy of [HKQuantityType](v12 + 77);
    outlined destroy of [HKQuantityType](v12 + 76);
    (*(v8 + 8))(v10, v9);
    v11 = v12[213];

    v5 = *(v12[74] + 8);

    return v5(v11);
  }
}

{
  v5 = v0[167];
  v3 = v0[166];
  v4 = v0[165];
  v0[74] = v0;
  outlined destroy of [HKQuantityType](v0 + 77);
  outlined destroy of [HKQuantityType](v0 + 76);
  (*(v3 + 8))(v5, v4);
  v6 = v0[220];

  v1 = *(v0[74] + 8);

  return v1(v6);
}

{
  v1 = v0[192];
  v18 = v0[167];
  v16 = v0[166];
  v17 = v0[165];
  v0[74] = v0;
  MEMORY[0x277D82BD8](v1);
  swift_deallocUninitializedObject();

  outlined destroy of [HKQuantityType](v0 + 64);

  outlined destroy of [HKQuantityType](v0 + 76);
  (*(v16 + 8))(v18, v17);
  v19 = v0[195];
  v22 = v0[183];
  v2 = v0[170];
  v21 = v0[168];
  v3 = v19;
  v0[79] = v19;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v22(v2, v20, v21);
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  v25 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v24, v23))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 640) = buf;
    *(v15 + 648) = v12;
    *(v15 + 656) = v13;
    serialize(_:at:)(0, (v15 + 640));
    serialize(_:at:)(0, (v15 + 640));
    *(v15 + 664) = v25;
    v14 = swift_task_alloc();
    v14[2] = v15 + 640;
    v14[3] = v15 + 648;
    v14[4] = v15 + 656;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v24, v23, "Failed fetching dose events for specified timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v15 + 1488);
  v6 = *(v15 + 1360);
  v7 = *(v15 + 1344);
  MEMORY[0x277D82BD8](v24);
  v8(v6, v7);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v9 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v4 = *(*(v15 + 592) + 8);

  return v4(v9);
}

{
  v17 = v0[167];
  v15 = v0[166];
  v16 = v0[165];
  v0[74] = v0;
  outlined destroy of [HKQuantityType](v0 + 76);
  (*(v15 + 8))(v17, v16);
  v18 = v0[208];
  v21 = v0[183];
  v1 = v0[170];
  v20 = v0[168];
  v2 = v18;
  v0[79] = v18;
  v19 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v21(v1, v19, v20);
  swift_endAccess();
  v23 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v24 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v23, v22))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 640) = buf;
    *(v14 + 648) = v11;
    *(v14 + 656) = v12;
    serialize(_:at:)(0, (v14 + 640));
    serialize(_:at:)(0, (v14 + 640));
    *(v14 + 664) = v24;
    v13 = swift_task_alloc();
    v13[2] = v14 + 640;
    v13[3] = v14 + 648;
    v13[4] = v14 + 656;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v23, v22, "Failed fetching dose events for specified timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v14 + 1488);
  v5 = *(v14 + 1360);
  v6 = *(v14 + 1344);
  MEMORY[0x277D82BD8](v23);
  v7(v5, v6);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v8 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v3 = *(*(v14 + 592) + 8);

  return v3(v8);
}

uint64_t implicit closure #2 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
  lazy protocol witness table accessor for type [String]? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  lazy protocol witness table accessor for type Bool? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #6 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  lazy protocol witness table accessor for type Double? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #7 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[55] = a4;
  v4[54] = a2;
  v4[53] = a1;
  v4[31] = v4;
  v4[32] = 0;
  v4[33] = 0;
  v4[27] = 0;
  v4[28] = 0;
  v4[38] = 0;
  v4[44] = 0;
  v4[29] = 0;
  v4[30] = 0;
  v4[47] = 0;
  v5 = type metadata accessor for Logger();
  v4[56] = v5;
  v4[57] = *(v5 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v4[61] = v6;
  v4[62] = *(v6 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  v4[66] = v7;
  v4[67] = *(v7 - 8);
  v4[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v4[72] = v8;
  v4[73] = *(v8 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v4[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v4[81] = swift_task_alloc();
  v9 = type metadata accessor for DateComponents();
  v4[82] = v9;
  v4[83] = *(v9 - 8);
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[32] = a1;
  v4[33] = a2;
  v4[27] = a3;
  v4[28] = a4;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:), 0);
}

uint64_t SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)()
{
  v179 = v0;
  v156 = partial apply for closure #1 in osLogInternal(_:log:type:);
  v162 = v0[85];
  v168 = v0[84];
  v167 = v0[83];
  v169 = v0[82];
  v157 = v0[81];
  v158 = v0[80];
  v163 = v0[78];
  v164 = v0[77];
  v175 = v0[73];
  v178 = v0[72];
  v176 = v0[71];
  v173 = v0[68];
  v172 = v0[67];
  v1 = v172;
  v174 = v0[66];
  v0[31] = v0;
  v2 = *(v1 + 56);
  v177 = 1;
  v2();
  v159 = 0;
  v3 = type metadata accessor for TimeZone();
  (*(*(v3 - 8) + 56))(v158, 1);
  v160 = &v69;
  v69 = 0;
  v161 = 1;
  v70 = 1;
  v71 = 0;
  v72 = 1;
  v73 = 0;
  v74 = 1;
  v75 = 0;
  v76 = 1;
  v77 = 0;
  v78 = 1;
  v79 = 0;
  v80 = 1;
  v81 = 0;
  v82 = 1;
  v83 = 0;
  v84 = 1;
  v85 = 0;
  v86 = 1;
  v87 = 0;
  v88 = 1;
  v89 = 0;
  v90 = 1;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.second.setter();
  static Calendar.current.getter();
  v4 = v162;
  v5 = v168;
  v6 = v169;
  v7 = v167 + 16;
  v8 = *(v167 + 16);
  v0[86] = v8;
  v0[87] = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v5, v4, v6);
  Date.init()();
  Date.startOfDay.getter(v164);
  v9 = v163;
  v10 = v178;
  v11 = v175 + 8;
  v166 = *(v175 + 8);
  v12 = v166;
  v0[88] = v166;
  v165 = v11;
  v0[89] = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v166(v164, v178);
  v13 = v168;
  v14 = v169;
  v15 = v167 + 8;
  v170 = *(v167 + 8);
  v16 = v170;
  v0[90] = v170;
  v171 = v15;
  v0[91] = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  v17 = v173;
  v18 = v174;
  v19 = v172 + 8;
  v20 = *(v172 + 8);
  v0[92] = v20;
  v0[93] = v19 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v17, v18);
  v21 = v176;
  v22 = v177;
  v23 = v178;
  v24 = v175 + 48;
  v25 = *(v175 + 48);
  v0[94] = v25;
  v0[95] = v24 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v25(v21, v22, v23) == 1)
  {
    v55 = *(v155 + 568);
    v56 = *(v155 + 464);
    v57 = *(v155 + 456);
    v134 = *(v155 + 448);
    v132 = v57;
    outlined destroy of Date?(v55);
    v133 = Logger.wellness.unsafeMutableAddressor();
    v135 = v155 + 144;
    swift_beginAccess();
    (*(v132 + 16))(v56, v133, v134);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v136 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v138 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v136))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v122 = 0;
      v124 = createStorage<A>(capacity:type:)(0, v121, v121);
      v58 = createStorage<A>(capacity:type:)(v122, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v59 = v124;
      v60 = v155;
      v125 = v58;
      v61 = (v155 + 272);
      v127 = (v155 + 272);
      *(v155 + 272) = buf;
      v128 = v60 + 280;
      *(v60 + 280) = v59;
      v129 = v60 + 288;
      *(v60 + 288) = v58;
      v126 = 0;
      serialize(_:at:)(0, v61);
      serialize(_:at:)(v126, v127);
      *(v155 + 296) = v138;
      v62 = swift_task_alloc();
      v63 = v128;
      v64 = v129;
      v130 = v62;
      v62[2] = v127;
      v62[3] = v63;
      v62[4] = v64;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v136, "failed to adjust day start for Meds in getMedScheduleWithDefinedValues, return nil", buf, 2u);
      v120 = 0;
      destroyStorage<A>(_:count:)(v124, 0, v121);
      destroyStorage<A>(_:count:)(v125, v120, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v96 = *(v155 + 680);
    v95 = *(v155 + 656);
    v92 = *(v155 + 464);
    v65 = *(v155 + 456);
    v93 = *(v155 + 448);
    v91 = v65;
    MEMORY[0x277D82BD8](oslog);
    (*(v91 + 8))(v92, v93);
    v94 = 0;
    type metadata accessor for HKMedicationExposableDoseEvent();
    v119 = _allocateUninitializedArray<A>(_:)();
    v170(v96, v95);
    v116 = v155 + 256;
    v117 = v155 + 264;
    v118 = v155 + 216;
    v97 = *(v155 + 672);
    v98 = *(v155 + 648);
    v99 = *(v155 + 640);
    v100 = *(v155 + 632);
    v101 = *(v155 + 624);
    v102 = *(v155 + 616);
    v103 = *(v155 + 608);
    v104 = *(v155 + 600);
    v105 = *(v155 + 592);
    v106 = *(v155 + 568);
    v107 = *(v155 + 560);
    v108 = *(v155 + 552);
    v109 = *(v155 + 544);
    v110 = *(v155 + 520);
    v111 = *(v155 + 512);
    v112 = *(v155 + 504);
    v113 = *(v155 + 480);
    v114 = *(v155 + 472);
    v115 = *(v155 + 464);

    v66 = v119;
    v67 = *(*(v155 + 248) + 8);

    return v67(v66);
  }

  else
  {
    v26 = v155;
    v140 = *(v155 + 632);
    v143 = *(v155 + 624);
    v141 = *(v155 + 616);
    v144 = *(v155 + 608);
    v27 = *(v155 + 584);
    v142 = *(v155 + 576);
    v146 = *(v155 + 520);
    v149 = *(v155 + 512);
    v28 = *(v155 + 496);
    v148 = *(v155 + 488);
    v153 = *(v155 + 440);
    v151 = *(v155 + 432);
    v139 = v27;
    v145 = v28;
    v147 = v28;
    v29 = *(v27 + 32);
    *(v155 + 768) = v29;
    *(v26 + 776) = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v29();
    v30 = v140;
    v31 = v142;
    v32 = v155;
    v33 = v143;
    v34 = v139 + 16;
    v35 = *(v139 + 16);
    *(v155 + 784) = v35;
    *(v32 + 792) = v34 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v33, v30, v31);
    Date.init()();
    Date.endOfDay.getter(v144);
    v36 = v149;
    v166(v141, v142);
    DateInterval.init(start:end:)();
    MEMORY[0x277D82BE0](v153);
    (*(v145 + 16))(v36, v146, v148);
    v37.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v38 = v147;
    v39 = v148;
    v40 = v155;
    isa = v37.super.isa;
    v42 = v149;
    v152 = isa;
    *(v155 + 800) = isa;
    v43 = v38 + 8;
    v44 = *(v38 + 8);
    *(v40 + 808) = v44;
    *(v40 + 816) = v43 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44(v42, v39);
    v45 = v155;
    v46 = *(v155 + 248);
    v154 = v155 + 16;
    *(v155 + 16) = v46;
    *(v45 + 56) = v45 + 312;
    *(v45 + 24) = SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:);
    v150 = swift_continuation_init();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMd, &_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMR);
    v48 = v150;
    v49 = v151;
    v50 = v152;
    v51 = v155;
    v52 = v47;
    v53 = v153;
    *(v155 + 136) = v52;
    *(v51 + 112) = v48;
    *(v51 + 80) = MEMORY[0x277D85DD0];
    *(v51 + 88) = 1107296256;
    *(v51 + 92) = 0;
    *(v51 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [HKMedicationExposableDoseEvent];
    *(v51 + 104) = &block_descriptor_973;
    [v53 doseEventsForDateInterval:v50 medicationIdentifier:v49 completion:?];
    v54 = v154;

    return MEMORY[0x282200938](v54);
  }
}

{
  v4 = *v0;
  v4[31] = *v0;
  v1 = v4[6];
  v4[103] = v1;
  if (v1)
  {
    v2 = SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:);
  }

  else
  {
    v2 = SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v76 = v0[100];
  v89 = v0[94];
  v86 = v0[92];
  v83 = v0[90];
  v80 = v0[88];
  v78 = v0[86];
  v77 = v0[85];
  v81 = v0[84];
  v82 = v0[82];
  v79 = v0[78];
  v88 = v0[72];
  v87 = v0[70];
  v84 = v0[68];
  v85 = v0[66];
  v1 = v0[55];
  v0[31] = v0;
  v0[38] = v0[39];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v76);
  static Calendar.current.getter();
  v78(v81, v77, v82);
  DateInterval.start.getter();
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v80(v79, v88);
  v83(v81, v82);
  v86(v84, v85);
  if (v89(v87, 1, v88) == 1)
  {
    v3 = *(v75 + 472);
    v26 = *(v75 + 448);
    v24 = *(v75 + 456);
    outlined destroy of Date?(*(v75 + 560));
    v25 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v24 + 16))(v3, v25, v26);
    swift_endAccess();
    log = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v29 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v27))
    {
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0, v19, v19);
      v22 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v75 + 320) = v20;
      *(v75 + 328) = v21;
      *(v75 + 336) = v22;
      serialize(_:at:)(0, (v75 + 320));
      serialize(_:at:)(0, (v75 + 320));
      *(v75 + 344) = v29;
      v23 = swift_task_alloc();
      v23[2] = v75 + 320;
      v23[3] = v75 + 328;
      v23[4] = v75 + 336;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v27, "failed to adjust interval start for Meds in getMedScheduleWithDefinedValues, return nil", v20, 2u);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v20, MEMORY[0x277D84B78]);
    }

    v10 = *(v75 + 808);
    v17 = *(v75 + 720);
    v14 = *(v75 + 704);
    v15 = *(v75 + 680);
    v16 = *(v75 + 656);
    v12 = *(v75 + 632);
    v13 = *(v75 + 576);
    v11 = *(v75 + 520);
    v9 = *(v75 + 488);
    v7 = *(v75 + 472);
    v8 = *(v75 + 448);
    v6 = *(v75 + 456);
    MEMORY[0x277D82BD8](log);
    (*(v6 + 8))(v7, v8);
    type metadata accessor for HKMedicationExposableDoseEvent();
    v18 = _allocateUninitializedArray<A>(_:)();
    outlined destroy of [HKQuantityType]((v75 + 304));
    v10(v11, v9);
    v14(v12, v13);
    v17(v15, v16);
    v42 = v18;
  }

  else
  {
    v71 = *(v75 + 784);
    v72 = *(v75 + 624);
    v69 = *(v75 + 600);
    v70 = *(v75 + 576);
    (*(v75 + 768))();
    v71(v72, v69, v70);
    DateInterval.end.getter();
    DateInterval.init(start:end:)();
    type metadata accessor for HKMedicationExposableDoseEvent();
    *(v75 + 352) = _allocateUninitializedArray<A>(_:)();
    v73 = *(v75 + 304);

    *(v75 + 360) = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Collection<>.makeIterator()();
    v74 = 0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      v68 = *(v75 + 368);
      if (!v68)
      {
        break;
      }

      *(v75 + 376) = v68;
      v66 = [v68 scheduledDate];
      if (v66)
      {
        v62 = *(v75 + 768);
        v61 = *(v75 + 624);
        v64 = *(v75 + 576);
        v65 = *(v75 + 552);
        v63 = *(v75 + 584);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v62(v65, v61, v64);
        (*(v63 + 56))(v65, 0, 1, v64);
        MEMORY[0x277D82BD8](v66);
      }

      else
      {
        (*(*(v75 + 584) + 56))(*(v75 + 552), 1, 1, *(v75 + 576));
      }

      if ((*(v75 + 752))(*(v75 + 552), 1, *(v75 + 576)) == 1)
      {
        v2 = *(v75 + 480);
        v55 = *(v75 + 448);
        v53 = *(v75 + 456);
        outlined destroy of Date?(*(v75 + 552));
        v54 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        (*(v53 + 16))(v2, v54, v55);
        swift_endAccess();
        oslog = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v58 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(oslog, v56))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v50 = createStorage<A>(capacity:type:)(0, v48, v48);
          v51 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v75 + 384) = buf;
          *(v75 + 392) = v50;
          *(v75 + 400) = v51;
          serialize(_:at:)(0, (v75 + 384));
          serialize(_:at:)(0, (v75 + 384));
          *(v75 + 408) = v58;
          v52 = swift_task_alloc();
          v52[2] = v75 + 384;
          v52[3] = v75 + 392;
          v52[4] = v75 + 400;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_269912000, oslog, v56, "doesn't have a scheduled date, skipping.", buf, 2u);
          destroyStorage<A>(_:count:)(v50, 0, v48);
          destroyStorage<A>(_:count:)(v51, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

          v46 = 0;
          v47 = 0;
        }

        else
        {

          v46 = v74;
          v47 = v67;
        }

        v44 = *(v75 + 480);
        v45 = *(v75 + 448);
        v43 = *(v75 + 456);
        MEMORY[0x277D82BD8](oslog);
        (*(v43 + 8))(v44, v45);
        MEMORY[0x277D82BD8](v68);
        v59 = v46;
        v60 = v47;
      }

      else
      {
        (*(v75 + 768))();
        if (DateInterval.contains(_:)())
        {
          MEMORY[0x277D82BE0](v68);
          *(v75 + 416) = v68;
          Array.append(_:)();
        }

        (*(v75 + 704))(*(v75 + 592), *(v75 + 576));
        MEMORY[0x277D82BD8](v68);
        v59 = v74;
        v60 = v67;
      }

      v74 = v59;
      v67 = v60;
    }

    v33 = *(v75 + 808);
    v40 = *(v75 + 720);
    v37 = *(v75 + 704);
    v38 = *(v75 + 680);
    v39 = *(v75 + 656);
    v35 = *(v75 + 632);
    v31 = *(v75 + 600);
    v36 = *(v75 + 576);
    v34 = *(v75 + 520);
    v30 = *(v75 + 504);
    v32 = *(v75 + 488);
    outlined destroy of [HKQuantityType]((v75 + 232));
    v41 = *(v75 + 352);

    outlined destroy of [HKQuantityType]((v75 + 352));
    v33(v30, v32);
    v37(v31, v36);
    outlined destroy of [HKQuantityType]((v75 + 304));
    v33(v34, v32);
    v37(v35, v36);
    v40(v38, v39);
    v42 = v41;
  }

  v4 = *(*(v75 + 248) + 8);

  return v4(v42);
}

uint64_t SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(uint64_t a1)
{
  v7 = v1[101];
  v5 = v1[100];
  v11 = v1[90];
  v9 = v1[88];
  v12 = v1[85];
  v10 = v1[82];
  v13 = v1[79];
  v8 = v1[72];
  v14 = v1[65];
  v6 = v1[61];
  v4 = v1[55];
  v1[31] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v7(v14, v6);
  v9(v13, v8);
  v11(v12, v10);

  v2 = *(v1[31] + 8);

  return v2();
}

uint64_t closure #1 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(id *a1, uint64_t a2, uint64_t a3)
{
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v20 = *a1;
  v18 = a2;
  v19 = a3;
  v12 = [v20 scheduleItemIdentifier];
  if (v12)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v3;
    MEMORY[0x277D82BD8](v12);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v16[0] = v9;
  v16[1] = v10;
  v17 = v11;
  if (!v10)
  {
    if (!*(&v17 + 1))
    {
      outlined destroy of String.UTF8View(v16);
      v6 = 1;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  outlined init with copy of String?(v16, &v15);
  if (!*(&v17 + 1))
  {
    outlined destroy of String.UTF8View(&v15);
LABEL_11:
    outlined destroy of (String?, String?)(v16);
    v6 = 0;
    goto LABEL_10;
  }

  v14 = v15;
  v13 = v17;
  v5 = MEMORY[0x26D649310](v15, *(&v15 + 1), v17, *(&v17 + 1));
  outlined destroy of String.UTF8View(&v13);
  outlined destroy of String.UTF8View(&v14);
  outlined destroy of String.UTF8View(v16);
  v6 = v5;
LABEL_10:

  return v6 & 1;
}

uint64_t implicit closure #8 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  outlined init with copy of [HKMedicationExposableDoseEvent](v3, a2);
  return swift_endAccess();
}

uint64_t SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 536) = a7;
  *(v7 + 528) = a6;
  *(v7 + 520) = a5;
  *(v7 + 512) = a4;
  *(v7 + 329) = a3;
  *(v7 + 504) = a2;
  *(v7 + 496) = a1;
  *(v7 + 336) = v7;
  *(v7 + 344) = 0;
  *(v7 + 320) = 0;
  *(v7 + 328) = 0;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 272) = 0;
  *(v7 + 280) = 0;
  *(v7 + 800) = 0;
  *(v7 + 288) = 0;
  *(v7 + 296) = 0;
  *(v7 + 304) = 0;
  *(v7 + 312) = 0;
  *(v7 + 808) = 0;
  *(v7 + 384) = 0;
  *(v7 + 392) = 0;
  *(v7 + 400) = 0;
  *(v7 + 408) = 0;
  *(v7 + 816) = 0;
  *(v7 + 488) = 0;
  v8 = type metadata accessor for Logger();
  *(v7 + 544) = v8;
  *(v7 + 552) = *(v8 - 8);
  *(v7 + 560) = swift_task_alloc();
  *(v7 + 568) = swift_task_alloc();
  *(v7 + 576) = swift_task_alloc();
  *(v7 + 584) = swift_task_alloc();
  *(v7 + 592) = swift_task_alloc();
  *(v7 + 600) = swift_task_alloc();
  *(v7 + 608) = swift_task_alloc();
  *(v7 + 616) = swift_task_alloc();
  *(v7 + 624) = swift_task_alloc();
  *(v7 + 632) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v7 + 640) = v9;
  *(v7 + 648) = *(v9 - 8);
  *(v7 + 656) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v7 + 664) = swift_task_alloc();
  *(v7 + 344) = a1;
  *(v7 + 320) = a2;
  *(v7 + 328) = a3 & 1;
  *(v7 + 256) = a4;
  *(v7 + 264) = a5;
  *(v7 + 272) = a6;
  *(v7 + 280) = a7;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)()
{
  v1 = *(v0 + 496);
  *(v0 + 336) = v0;
  v18 = [v1 scheduledDate];
  if (v18)
  {
    v16 = *(v17 + 664);
    v14 = *(v17 + 656);
    v15 = *(v17 + 640);
    v13 = *(v17 + 648);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v13 + 32))(v16, v14, v15);
    (*(v13 + 56))(v16, 0, 1, v15);
    MEMORY[0x277D82BD8](v18);
  }

  else
  {
    (*(*(v17 + 648) + 56))(*(v17 + 664), 1, 1, *(v17 + 640));
  }

  v12 = (*(*(v17 + 648) + 48))(*(v17 + 664), 1, *(v17 + 640)) != 1;
  *(v17 + 330) = v12;
  v7 = *(v17 + 496);
  outlined destroy of Date?(*(v17 + 664));
  *(v17 + 800) = v12;
  v8 = [v7 medicationIdentifier];
  v9 = [v8 underlyingIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v2;
  *(v17 + 672) = v11;
  *(v17 + 680) = v2;
  *(v17 + 288) = v11;
  *(v17 + 296) = v2;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

  v3 = swift_task_alloc();
  *(v17 + 688) = v3;
  *v3 = *(v17 + 336);
  v3[1] = SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
  v4 = *(v17 + 536);
  v5 = *(v17 + 528);

  return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v11, v10, v5, v4, 1.0);
}

{
  v191 = v0;
  v1 = *(v0 + 720);
  v149 = *(v0 + 704);
  v148 = *(v0 + 696);
  v2 = *(v0 + 632);
  v142 = *(v0 + 552);
  v144 = *(v0 + 544);
  v3 = *(v0 + 512);
  v147 = v3;
  *(v0 + 336) = v0;
  v146 = isCompatibleUnit(_:_:)(v3, v1);

  *(v0 + 808) = v146;
  v143 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  v145 = *(v142 + 16);
  *(v0 + 736) = v145;
  *(v0 + 744) = (v142 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v145(v2, v143, v144);
  swift_endAccess();
  v150 = swift_allocObject();
  *(v150 + 16) = v146;

  v152 = swift_allocObject();
  v152[1] = v147;

  v154 = swift_allocObject();
  *(v154 + 16) = v148;
  *(v154 + 24) = v149;
  oslog = Logger.logObject.getter();
  v167 = static os_log_type_t.debug.getter();
  v156 = swift_allocObject();
  *(v156 + 16) = 32;
  v157 = swift_allocObject();
  *(v157 + 16) = 8;
  v151 = swift_allocObject();
  *(v151 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
  *(v151 + 24) = v150;
  v158 = swift_allocObject();
  *(v158 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v158 + 24) = v151;
  v159 = swift_allocObject();
  *(v159 + 16) = 32;
  v160 = swift_allocObject();
  *(v160 + 16) = 8;
  v153 = swift_allocObject();
  *(v153 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v153 + 24) = v152;
  v161 = swift_allocObject();
  *(v161 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v161 + 24) = v153;
  v162 = swift_allocObject();
  *(v162 + 16) = 32;
  v163 = swift_allocObject();
  *(v163 + 16) = 8;
  v155 = swift_allocObject();
  *(v155 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v155 + 24) = v154;
  v164 = swift_allocObject();
  *(v164 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v164 + 24) = v155;
  *(v0 + 752) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v165 = v4;

  *v165 = partial apply for closure #1 in OSLogArguments.append(_:);
  v165[1] = v156;

  v165[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v165[3] = v157;

  v165[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v165[5] = v158;

  v165[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v165[7] = v159;

  v165[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v165[9] = v160;

  v165[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v165[11] = v161;

  v165[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v165[13] = v162;

  v165[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v165[15] = v163;

  v165[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v165[17] = v164;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v167))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v139 = createStorage<A>(capacity:type:)(0, v137, v137);
    v140 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v186 = buf;
    v187 = v139;
    v188 = v140;
    serialize(_:at:)(2, &v186);
    serialize(_:at:)(3, &v186);
    v189 = partial apply for closure #1 in OSLogArguments.append(_:);
    v190 = v156;
    closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
    v189 = partial apply for closure #1 in OSLogArguments.append(_:);
    v190 = v157;
    closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
    v189 = partial apply for closure #1 in OSLogArguments.append(_:);
    v190 = v158;
    closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
    v189 = partial apply for closure #1 in OSLogArguments.append(_:);
    v190 = v159;
    closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
    v189 = partial apply for closure #1 in OSLogArguments.append(_:);
    v190 = v160;
    closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
    v189 = partial apply for closure #1 in OSLogArguments.append(_:);
    v190 = v161;
    closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
    v189 = partial apply for closure #1 in OSLogArguments.append(_:);
    v190 = v162;
    closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
    v189 = partial apply for closure #1 in OSLogArguments.append(_:);
    v190 = v163;
    closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
    v189 = partial apply for closure #1 in OSLogArguments.append(_:);
    v190 = v164;
    closure #1 in osLogInternal(_:log:type:)(&v189, &v186, &v187, &v188);
    _os_log_impl(&dword_269912000, oslog, v167, "hasCompatibleUnit: (%s), with inputDosageUnit (%s) and getAsNeededDosageUnit(%s)", buf, 0x20u);
    destroyStorage<A>(_:count:)(v139, 0, v137);
    destroyStorage<A>(_:count:)(v140, 3, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v136 = *(v141 + 330);
  v133 = *(v141 + 632);
  v134 = *(v141 + 544);
  v132 = *(v141 + 552);
  MEMORY[0x277D82BD8](oslog);
  v135 = *(v132 + 8);
  *(v141 + 760) = v135;
  *(v141 + 768) = (v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v135(v133, v134);
  if (v136)
  {
    v5 = *(v141 + 624);
    v114 = *(v141 + 544);
    v118 = *(v141 + 520);
    v117 = *(v141 + 512);
    v116 = *(v141 + 329);
    v115 = *(v141 + 504);
    v113 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v145(v5, v113, v114);
    swift_endAccess();
    v119 = swift_allocObject();
    *(v119 + 16) = v115;
    *(v119 + 24) = v116 & 1;

    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    *(v121 + 24) = v118;
    log = Logger.logObject.getter();
    v131 = static os_log_type_t.debug.getter();
    v123 = swift_allocObject();
    *(v123 + 16) = 32;
    v124 = swift_allocObject();
    *(v124 + 16) = 8;
    v120 = swift_allocObject();
    *(v120 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v120 + 24) = v119;
    v125 = swift_allocObject();
    *(v125 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v125 + 24) = v120;
    v126 = swift_allocObject();
    *(v126 + 16) = 32;
    v127 = swift_allocObject();
    *(v127 + 16) = 8;
    v122 = swift_allocObject();
    *(v122 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v122 + 24) = v121;
    v128 = swift_allocObject();
    *(v128 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v128 + 24) = v122;
    _allocateUninitializedArray<A>(_:)();
    v129 = v6;

    *v129 = partial apply for closure #1 in OSLogArguments.append(_:);
    v129[1] = v123;

    v129[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v129[3] = v124;

    v129[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v129[5] = v125;

    v129[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v129[7] = v126;

    v129[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v129[9] = v127;

    v129[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v129[11] = v128;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v131))
    {
      v110 = static UnsafeMutablePointer.allocate(capacity:)();
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v111 = createStorage<A>(capacity:type:)(0, v109, v109);
      v112 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v181 = v110;
      v182 = v111;
      v183 = v112;
      serialize(_:at:)(2, &v181);
      serialize(_:at:)(2, &v181);
      v184 = partial apply for closure #1 in OSLogArguments.append(_:);
      v185 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v184, &v181, &v182, &v183);
      v184 = partial apply for closure #1 in OSLogArguments.append(_:);
      v185 = v124;
      closure #1 in osLogInternal(_:log:type:)(&v184, &v181, &v182, &v183);
      v184 = partial apply for closure #1 in OSLogArguments.append(_:);
      v185 = v125;
      closure #1 in osLogInternal(_:log:type:)(&v184, &v181, &v182, &v183);
      v184 = partial apply for closure #1 in OSLogArguments.append(_:);
      v185 = v126;
      closure #1 in osLogInternal(_:log:type:)(&v184, &v181, &v182, &v183);
      v184 = partial apply for closure #1 in OSLogArguments.append(_:);
      v185 = v127;
      closure #1 in osLogInternal(_:log:type:)(&v184, &v181, &v182, &v183);
      v184 = partial apply for closure #1 in OSLogArguments.append(_:);
      v185 = v128;
      closure #1 in osLogInternal(_:log:type:)(&v184, &v181, &v182, &v183);
      _os_log_impl(&dword_269912000, log, v131, "updateDosageForDoseEvent: scheduled med, got inputDosage (%s) and inputDosageUnit (%s)", v110, 0x16u);
      destroyStorage<A>(_:count:)(v111, 0, v109);
      destroyStorage<A>(_:count:)(v112, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v110, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v106 = *(v141 + 624);
    v107 = *(v141 + 544);
    v108 = *(v141 + 329);
    MEMORY[0x277D82BD8](log);
    v135(v106, v107);
    MEMORY[0x277D82BE0](*(v141 + 496));
    if (v108)
    {
      v105 = 1;
LABEL_22:
      v9 = *(v141 + 616);
      v91 = *(v141 + 544);
      MEMORY[0x277D82BD8](*(v141 + 496));
      *(v141 + 816) = v105 & 1;
      v90 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v145(v9, v90, v91);
      swift_endAccess();
      v92 = swift_allocObject();
      *(v92 + 16) = v105 & 1;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.debug.getter();
      v94 = swift_allocObject();
      *(v94 + 16) = 32;
      v95 = swift_allocObject();
      *(v95 + 16) = 8;
      v93 = swift_allocObject();
      *(v93 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
      *(v93 + 24) = v92;
      v96 = swift_allocObject();
      *(v96 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v96 + 24) = v93;
      _allocateUninitializedArray<A>(_:)();
      v97 = v10;

      *v97 = partial apply for closure #1 in OSLogArguments.append(_:);
      v97[1] = v94;

      v97[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v97[3] = v95;

      v97[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v97[5] = v96;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v98, v99))
      {
        v87 = static UnsafeMutablePointer.allocate(capacity:)();
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v88 = createStorage<A>(capacity:type:)(0, v86, v86);
        v89 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v174 = v87;
        v175 = v88;
        v176 = v89;
        serialize(_:at:)(2, &v174);
        serialize(_:at:)(1, &v174);
        v177 = partial apply for closure #1 in OSLogArguments.append(_:);
        v178 = v94;
        closure #1 in osLogInternal(_:log:type:)(&v177, &v174, &v175, &v176);
        v177 = partial apply for closure #1 in OSLogArguments.append(_:);
        v178 = v95;
        closure #1 in osLogInternal(_:log:type:)(&v177, &v174, &v175, &v176);
        v177 = partial apply for closure #1 in OSLogArguments.append(_:);
        v178 = v96;
        closure #1 in osLogInternal(_:log:type:)(&v177, &v174, &v175, &v176);
        _os_log_impl(&dword_269912000, v98, v99, "has compatible dosage: (%s)", v87, 0xCu);
        destroyStorage<A>(_:count:)(v88, 0, v86);
        destroyStorage<A>(_:count:)(v89, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v87, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v84 = *(v141 + 616);
      v85 = *(v141 + 544);
      MEMORY[0x277D82BD8](v98);
      v135(v84, v85);
      if (v146 && (v105 & 1) != 0)
      {
        *(v141 + 480) = [*(v141 + 496) scheduledDoseQuantity];
        if (*(v141 + 480))
        {
          isa = *(v141 + 480);
        }

        else
        {
          type metadata accessor for NSNumber();
          isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
          if (*(v141 + 480))
          {
            outlined destroy of HealthKitPersistor((v141 + 480));
          }
        }

        v82 = [*(v141 + 496) updateForNewDoseQuantity_];
        MEMORY[0x277D82BD8](isa);
        *(v141 + 488) = v82;

        v83 = v82;
        goto LABEL_50;
      }

      v11 = *(v141 + 608);
      v66 = *(v141 + 544);
      v68 = *(v141 + 520);
      v67 = *(v141 + 512);
      v65 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v145(v11, v65, v66);
      swift_endAccess();
      v69 = swift_allocObject();
      *(v69 + 16) = v146;

      v71 = swift_allocObject();
      *(v71 + 16) = v67;
      *(v71 + 24) = v68;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      v73 = swift_allocObject();
      *(v73 + 16) = 32;
      v74 = swift_allocObject();
      *(v74 + 16) = 8;
      v70 = swift_allocObject();
      *(v70 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
      *(v70 + 24) = v69;
      v75 = swift_allocObject();
      *(v75 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v75 + 24) = v70;
      v76 = swift_allocObject();
      *(v76 + 16) = 32;
      v77 = swift_allocObject();
      *(v77 + 16) = 8;
      v72 = swift_allocObject();
      *(v72 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      *(v72 + 24) = v71;
      v78 = swift_allocObject();
      *(v78 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v78 + 24) = v72;
      _allocateUninitializedArray<A>(_:)();
      v79 = v12;

      *v79 = partial apply for closure #1 in OSLogArguments.append(_:);
      v79[1] = v73;

      v79[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v79[3] = v74;

      v79[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v79[5] = v75;

      v79[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v79[7] = v76;

      v79[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v79[9] = v77;

      v79[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v79[11] = v78;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v80, v81))
      {
        v62 = static UnsafeMutablePointer.allocate(capacity:)();
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v63 = createStorage<A>(capacity:type:)(0, v61, v61);
        v64 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v168 = v62;
        v169 = v63;
        v170 = v64;
        serialize(_:at:)(2, &v168);
        serialize(_:at:)(2, &v168);
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v73;
        closure #1 in osLogInternal(_:log:type:)(&v171, &v168, &v169, &v170);
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v74;
        closure #1 in osLogInternal(_:log:type:)(&v171, &v168, &v169, &v170);
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v75;
        closure #1 in osLogInternal(_:log:type:)(&v171, &v168, &v169, &v170);
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v76;
        closure #1 in osLogInternal(_:log:type:)(&v171, &v168, &v169, &v170);
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v77;
        closure #1 in osLogInternal(_:log:type:)(&v171, &v168, &v169, &v170);
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v78;
        closure #1 in osLogInternal(_:log:type:)(&v171, &v168, &v169, &v170);
        _os_log_impl(&dword_269912000, v80, v81, "isScheduled fell through, with hasCompatibleUnit (%s) and hasCompatibleDosage (%s)", v62, 0x16u);
        destroyStorage<A>(_:count:)(v63, 0, v61);
        destroyStorage<A>(_:count:)(v64, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v62, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v59 = *(v141 + 608);
      v60 = *(v141 + 544);
      MEMORY[0x277D82BD8](v80);
      v135(v59, v60);
LABEL_47:
      v20 = *(v141 + 560);
      v30 = *(v141 + 544);
      v29 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v145(v20, v29, v30);
      swift_endAccess();
      v32 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      v33 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v32, v31))
      {
        v25 = static UnsafeMutablePointer.allocate(capacity:)();
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v26 = createStorage<A>(capacity:type:)(0, v24, v24);
        v27 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v141 + 352) = v25;
        *(v141 + 360) = v26;
        *(v141 + 368) = v27;
        serialize(_:at:)(0, (v141 + 352));
        serialize(_:at:)(0, (v141 + 352));
        *(v141 + 376) = v33;
        v28 = swift_task_alloc();
        v28[2] = v141 + 352;
        v28[3] = v141 + 360;
        v28[4] = v141 + 368;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v32, v31, "updateDosageForDoseEvent fell through, this is a complex med request. Returning nil.", v25, 2u);
        destroyStorage<A>(_:count:)(v26, 0, v24);
        destroyStorage<A>(_:count:)(v27, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v25, MEMORY[0x277D84B78]);
      }

      v22 = *(v141 + 560);
      v23 = *(v141 + 544);
      MEMORY[0x277D82BD8](v32);
      v135(v22, v23);

      v83 = 0;
LABEL_50:

      v21 = *(*(v141 + 336) + 8);

      return v21(v83);
    }

    v104 = [*(v141 + 496) scheduledDoseQuantity];
    if (v104)
    {
      [v104 doubleValue];
      v101 = v7;
      MEMORY[0x277D82BD8](v104);
      v102 = v101;
      v103 = 0;
    }

    else
    {
      v102 = 0.0;
      v103 = 1;
    }

    if (*(v141 + 329))
    {
      if (v103)
      {
        v100 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(v141 + 329);
      v179 = *(v141 + 504);
      v180 = v8 & 1;
      if ((v103 & 1) == 0)
      {
        v100 = v179 == v102;
LABEL_19:
        v105 = v100;
        goto LABEL_22;
      }
    }

    v100 = 0;
    goto LABEL_19;
  }

  v13 = *(v141 + 600);
  v55 = *(v141 + 544);
  v54 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  v145(v13, v54, v55);
  swift_endAccess();
  v57 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  v58 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v57, v56))
  {
    v50 = static UnsafeMutablePointer.allocate(capacity:)();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v51 = createStorage<A>(capacity:type:)(0, v49, v49);
    v52 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v141 + 448) = v50;
    *(v141 + 456) = v51;
    *(v141 + 464) = v52;
    serialize(_:at:)(0, (v141 + 448));
    serialize(_:at:)(0, (v141 + 448));
    *(v141 + 472) = v58;
    v53 = swift_task_alloc();
    v53[2] = v141 + 448;
    v53[3] = v141 + 456;
    v53[4] = v141 + 464;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v57, v56, "updateDosageForDoseEvent: this is an as needed event", v50, 2u);
    destroyStorage<A>(_:count:)(v51, 0, v49);
    destroyStorage<A>(_:count:)(v52, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v50, MEMORY[0x277D84B78]);
  }

  v47 = *(v141 + 600);
  v48 = *(v141 + 544);
  MEMORY[0x277D82BD8](v57);
  v135(v47, v48);
  if (!v146)
  {
    goto LABEL_47;
  }

  v14 = *(v141 + 592);
  v43 = *(v141 + 544);
  v42 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  v145(v14, v42, v43);
  swift_endAccess();
  v45 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v46 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v45, v44))
  {
    v38 = static UnsafeMutablePointer.allocate(capacity:)();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v39 = createStorage<A>(capacity:type:)(0, v37, v37);
    v40 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v141 + 416) = v38;
    *(v141 + 424) = v39;
    *(v141 + 432) = v40;
    serialize(_:at:)(0, (v141 + 416));
    serialize(_:at:)(0, (v141 + 416));
    *(v141 + 440) = v46;
    v41 = swift_task_alloc();
    v41[2] = v141 + 416;
    v41[3] = v141 + 424;
    v41[4] = v141 + 432;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v45, v44, "updateDosageForDoseEvent: hasCompatibleUnit is true", v38, 2u);
    destroyStorage<A>(_:count:)(v39, 0, v37);
    destroyStorage<A>(_:count:)(v40, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v38, MEMORY[0x277D84B78]);
  }

  *(v141 + 776) = 0;
  v36 = *(v141 + 680);
  v34 = *(v141 + 592);
  v35 = *(v141 + 544);
  MEMORY[0x277D82BD8](v45);
  v135(v34, v35);

  v15 = swift_task_alloc();
  *(v141 + 784) = v15;
  *v15 = *(v141 + 336);
  v15[1] = SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
  v16 = *(v141 + 672);
  v17 = *(v141 + 536);
  v18 = *(v141 + 528);

  return SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)(v16, v36, v18, v17);
}

uint64_t SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(uint64_t a1, uint64_t a2)
{
  v12 = *v2;
  v10 = *v2;
  v11 = *(*v2 + 680);
  v10[42] = *v2;
  v10[87] = a1;
  v10[88] = a2;

  v10[38] = a1;
  v10[39] = a2;

  v3 = swift_task_alloc();
  v10[89] = v3;
  *v3 = v10[42];
  v3[1] = SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
  v4 = v12[84];
  v5 = v12[67];
  v6 = v12[66];

  return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v4, v11, v6, v5, 1.0);
}

{
  v4 = *v2;
  v4[42] = *v2;
  v4[90] = a1;
  v4[91] = a2;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(double a1)
{
  v3 = *v1;
  *(v3 + 336) = *v1;
  *(v3 + 792) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(uint64_t a1)
{
  v94 = v1;
  v70 = v1[99];
  v69 = v1[92];
  v2 = v1[73];
  v68 = v1[68];
  v1[42] = v1;
  v1[48] = v70;
  v67 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  v69(v2, v67, v68);
  swift_endAccess();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  oslog = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v72 = swift_allocObject();
  *(v72 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
  *(v72 + 24) = v71;
  v75 = swift_allocObject();
  *(v75 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v75 + 24) = v72;
  _allocateUninitializedArray<A>(_:)();
  v76 = v3;

  *v76 = partial apply for closure #1 in OSLogArguments.append(_:);
  v76[1] = v73;

  v76[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v76[3] = v74;

  v76[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v76[5] = v75;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v78))
  {
    v4 = *(v66 + 776);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v64 = createStorage<A>(capacity:type:)(0, v62, v62);
    v65 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v89 = buf;
    v90 = v64;
    v91 = v65;
    serialize(_:at:)(2, &v89);
    serialize(_:at:)(1, &v89);
    v92 = partial apply for closure #1 in OSLogArguments.append(_:);
    v93 = v73;
    closure #1 in osLogInternal(_:log:type:)(&v92, &v89, &v90, &v91);
    if (v4)
    {
    }

    v92 = partial apply for closure #1 in OSLogArguments.append(_:);
    v93 = v74;
    closure #1 in osLogInternal(_:log:type:)(&v92, &v89, &v90, &v91);
    v92 = partial apply for closure #1 in OSLogArguments.append(_:);
    v93 = v75;
    closure #1 in osLogInternal(_:log:type:)(&v92, &v89, &v90, &v91);
    _os_log_impl(&dword_269912000, oslog, v78, "updateDosageForDoseEvent: asNeededDosageFromHealthApp (%s)", buf, 0xCu);
    destroyStorage<A>(_:count:)(v64, 0, v62);
    destroyStorage<A>(_:count:)(v65, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v61 = 0;
  }

  else
  {

    v61 = *(v66 + 776);
  }

  v59 = *(v66 + 760);
  v57 = *(v66 + 584);
  v58 = *(v66 + 544);
  v60 = *(v66 + 329);
  MEMORY[0x277D82BD8](oslog);
  v59(v57, v58);
  if (v60)
  {
    v25 = *(v66 + 792);
    v24 = *(v66 + 736);
    v8 = *(v66 + 568);
    v23 = *(v66 + 544);
    v22 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v24(v8, v22, v23);
    swift_endAccess();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
    *(v27 + 24) = v26;
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v30 + 24) = v27;
    _allocateUninitializedArray<A>(_:)();
    v31 = v9;

    *v31 = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[1] = v28;

    v31[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[3] = v29;

    v31[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[5] = v30;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v32, v33))
    {
      v19 = static UnsafeMutablePointer.allocate(capacity:)();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v20 = createStorage<A>(capacity:type:)(0, v18, v18);
      v21 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v79 = v19;
      v80 = v20;
      v81 = v21;
      serialize(_:at:)(2, &v79);
      serialize(_:at:)(1, &v79);
      v82 = partial apply for closure #1 in OSLogArguments.append(_:);
      v83 = v28;
      closure #1 in osLogInternal(_:log:type:)(&v82, &v79, &v80, &v81);
      if (v61)
      {
      }

      v82 = partial apply for closure #1 in OSLogArguments.append(_:);
      v83 = v29;
      closure #1 in osLogInternal(_:log:type:)(&v82, &v79, &v80, &v81);
      v82 = partial apply for closure #1 in OSLogArguments.append(_:);
      v83 = v30;
      closure #1 in osLogInternal(_:log:type:)(&v82, &v79, &v80, &v81);
      _os_log_impl(&dword_269912000, v32, v33, "updateDosageForDoseEvent: using healthAppDosage (%s)", v19, 0xCu);
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v19, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v14 = *(v66 + 792);
    v13 = *(v66 + 760);
    v11 = *(v66 + 568);
    v12 = *(v66 + 544);
    v15 = *(v66 + 496);
    MEMORY[0x277D82BD8](v32);
    v13(v11, v12);
    type metadata accessor for NSNumber();
    isa = NSNumber.__allocating_init(value:)(v14).super.super.isa;
    v17 = [v15 updateForNewDoseQuantity_];
    MEMORY[0x277D82BD8](isa);
    *(v66 + 392) = v17;

    v40 = v17;
  }

  else
  {
    value = *(v66 + 504);
    v47 = *(v66 + 736);
    v6 = *(v66 + 576);
    v46 = *(v66 + 544);
    *(v66 + 400) = value;
    v45 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v47(v6, v45, v46);
    swift_endAccess();
    v49 = swift_allocObject();
    *(v49 + 16) = value;
    log = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
    *(v50 + 24) = v49;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v53 + 24) = v50;
    _allocateUninitializedArray<A>(_:)();
    v54 = v7;

    *v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[1] = v51;

    v54[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[3] = v52;

    v54[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[5] = v53;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v56))
    {
      v42 = static UnsafeMutablePointer.allocate(capacity:)();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v43 = createStorage<A>(capacity:type:)(0, v41, v41);
      v44 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v84 = v42;
      v85 = v43;
      v86 = v44;
      serialize(_:at:)(2, &v84);
      serialize(_:at:)(1, &v84);
      v87 = partial apply for closure #1 in OSLogArguments.append(_:);
      v88 = v51;
      closure #1 in osLogInternal(_:log:type:)(&v87, &v84, &v85, &v86);
      if (v61)
      {
      }

      v87 = partial apply for closure #1 in OSLogArguments.append(_:);
      v88 = v52;
      closure #1 in osLogInternal(_:log:type:)(&v87, &v84, &v85, &v86);
      v87 = partial apply for closure #1 in OSLogArguments.append(_:);
      v88 = v53;
      closure #1 in osLogInternal(_:log:type:)(&v87, &v84, &v85, &v86);
      _os_log_impl(&dword_269912000, log, v56, "updateDosageForDoseEvent: using inputDosage (%s)", v42, 0xCu);
      destroyStorage<A>(_:count:)(v43, 0, v41);
      destroyStorage<A>(_:count:)(v44, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v42, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v36 = *(v66 + 760);
    v34 = *(v66 + 576);
    v35 = *(v66 + 544);
    v37 = *(v66 + 496);
    MEMORY[0x277D82BD8](log);
    v36(v34, v35);
    type metadata accessor for NSNumber();
    v38 = NSNumber.__allocating_init(value:)(value).super.super.isa;
    v39 = [v37 updateForNewDoseQuantity_];
    MEMORY[0x277D82BD8](v38);
    *(v66 + 408) = v39;

    v40 = v39;
  }

  v10 = *(*(v66 + 336) + 8);

  return v10(v40);
}

uint64_t SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 400) = a4;
  *(v4 + 392) = a3;
  *(v4 + 521) = a2 & 1;
  *(v4 + 384) = a1;
  *(v4 + 128) = v4;
  *(v4 + 136) = 0;
  *(v4 + 520) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 320) = 0;
  *(v4 + 328) = 0;
  v5 = type metadata accessor for Logger();
  *(v4 + 408) = v5;
  *(v4 + 416) = *(v5 - 8);
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 136) = a1;
  *(v4 + 520) = a2 & 1;
  *(v4 + 112) = a3;
  *(v4 + 120) = a4;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:), 0);
}

uint64_t SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)()
{
  v1 = *(v0 + 384);
  *(v0 + 128) = v0;
  if (isLogged(doseEvent:)(v1))
  {
    v77 = *(v78 + 521) & 1;
    MEMORY[0x277D82BE0](*(v78 + 384));
    if (v77)
    {
      MEMORY[0x277D82BD8](*(v78 + 384));
    }

    else
    {
      *(v78 + 368) = [*(v78 + 384) status];
      *(v78 + 376) = 5;
      type metadata accessor for HKMedicationDoseEventStatus(0);
      lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
      v76 = == infix<A>(_:_:)();
      MEMORY[0x277D82BD8](*(v78 + 384));
      if (v76)
      {
        v2 = *(v78 + 448);
        v72 = *(v78 + 408);
        v70 = *(v78 + 416);
        v71 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        (*(v70 + 16))(v2, v71, v72);
        swift_endAccess();
        v74 = Logger.logObject.getter();
        v73 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v75 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v74, v73))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v67 = createStorage<A>(capacity:type:)(0, v65, v65);
          v68 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v78 + 336) = buf;
          *(v78 + 344) = v67;
          *(v78 + 352) = v68;
          serialize(_:at:)(0, (v78 + 336));
          serialize(_:at:)(0, (v78 + 336));
          *(v78 + 360) = v75;
          v69 = swift_task_alloc();
          v69[2] = v78 + 336;
          v69[3] = v78 + 344;
          v69[4] = v78 + 352;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_269912000, v74, v73, "requested & existing status both skipped, returning .statusBothSkipped", buf, 2u);
          destroyStorage<A>(_:count:)(v67, 0, v65);
          destroyStorage<A>(_:count:)(v68, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
        }

        v63 = *(v78 + 448);
        v64 = *(v78 + 408);
        v62 = *(v78 + 416);
        MEMORY[0x277D82BD8](v74);
        (*(v62 + 8))(v63, v64);
        v3 = swift_task_alloc();
        *(v78 + 456) = v3;
        *v3 = *(v78 + 128);
        v3[1] = SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:);
        v4 = *(v78 + 400);
        v5 = *(v78 + 392);
        v6 = *(v78 + 384);

        return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v6, 1, v5, v4);
      }
    }

    v61 = *(v78 + 521) & 1;
    MEMORY[0x277D82BE0](*(v78 + 384));
    if (v61 == 1)
    {
      *(v78 + 304) = [*(v78 + 384) status];
      *(v78 + 312) = 4;
      type metadata accessor for HKMedicationDoseEventStatus(0);
      lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
      v60 = == infix<A>(_:_:)();
      v59 = *(v78 + 384);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BE0](v59);
      if (v60)
      {
        MEMORY[0x277D82BD8](*(v78 + 384));
LABEL_20:
        v8 = *(v78 + 440);
        v52 = *(v78 + 408);
        v50 = *(v78 + 416);
        v51 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        (*(v50 + 16))(v8, v51, v52);
        swift_endAccess();
        oslog = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v55 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(oslog, v53))
        {
          v46 = static UnsafeMutablePointer.allocate(capacity:)();
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v47 = createStorage<A>(capacity:type:)(0, v45, v45);
          v48 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v78 + 256) = v46;
          *(v78 + 264) = v47;
          *(v78 + 272) = v48;
          serialize(_:at:)(0, (v78 + 256));
          serialize(_:at:)(0, (v78 + 256));
          *(v78 + 280) = v55;
          v49 = swift_task_alloc();
          v49[2] = v78 + 256;
          v49[3] = v78 + 264;
          v49[4] = v78 + 272;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_269912000, oslog, v53, "needs confirmation whether to log as needed, returning .needsConfirmLogAsNeeded", v46, 2u);
          destroyStorage<A>(_:count:)(v47, 0, v45);
          destroyStorage<A>(_:count:)(v48, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v46, MEMORY[0x277D84B78]);
        }

        v43 = *(v78 + 440);
        v44 = *(v78 + 408);
        v42 = *(v78 + 416);
        MEMORY[0x277D82BD8](oslog);
        (*(v42 + 8))(v43, v44);
        v9 = swift_task_alloc();
        *(v78 + 472) = v9;
        *v9 = *(v78 + 128);
        v9[1] = SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:);
        v4 = *(v78 + 400);
        v5 = *(v78 + 392);
        v6 = *(v78 + 384);

        return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v6, 1, v5, v4);
      }
    }

    else
    {
      v58 = *(v78 + 384);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BE0](v58);
    }

    v57 = *(v78 + 521) & 1;
    MEMORY[0x277D82BE0](*(v78 + 384));
    if (v57 == 1)
    {
      *(v78 + 288) = [*(v78 + 384) status];
      *(v78 + 296) = 5;
      type metadata accessor for HKMedicationDoseEventStatus(0);
      lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
      v56 = == infix<A>(_:_:)();
    }

    else
    {
      v56 = 0;
    }

    MEMORY[0x277D82BD8](*(v78 + 384));
    MEMORY[0x277D82BD8](*(v78 + 384));
    if (v56)
    {
      goto LABEL_20;
    }

    v10 = *(v78 + 432);
    v38 = *(v78 + 408);
    v36 = *(v78 + 416);
    v37 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v36 + 16))(v10, v37, v38);
    swift_endAccess();
    log = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v41 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v39))
    {
      v32 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = createStorage<A>(capacity:type:)(0, v31, v31);
      v34 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v78 + 208) = v32;
      *(v78 + 216) = v33;
      *(v78 + 224) = v34;
      serialize(_:at:)(0, (v78 + 208));
      serialize(_:at:)(0, (v78 + 208));
      *(v78 + 232) = v41;
      v35 = swift_task_alloc();
      v35[2] = v78 + 208;
      v35[3] = v78 + 216;
      v35[4] = v78 + 224;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v39, "needs confirmation whether to update status, returning .needsConfirmUpdateToStatus", v32, 2u);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v32, MEMORY[0x277D84B78]);
    }

    v29 = *(v78 + 432);
    v30 = *(v78 + 408);
    v28 = *(v78 + 416);
    MEMORY[0x277D82BD8](log);
    (*(v28 + 8))(v29, v30);
    v11 = swift_task_alloc();
    *(v78 + 488) = v11;
    *v11 = *(v78 + 128);
    v11[1] = SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:);
    v4 = *(v78 + 400);
    v5 = *(v78 + 392);
    v6 = *(v78 + 384);
  }

  else
  {
    v12 = *(v78 + 424);
    v24 = *(v78 + 408);
    v22 = *(v78 + 416);
    v23 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v22 + 16))(v12, v23, v24);
    swift_endAccess();
    v26 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v27 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v26, v25))
    {
      v18 = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = createStorage<A>(capacity:type:)(0, v17, v17);
      v20 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v78 + 160) = v18;
      *(v78 + 168) = v19;
      *(v78 + 176) = v20;
      serialize(_:at:)(0, (v78 + 160));
      serialize(_:at:)(0, (v78 + 160));
      *(v78 + 184) = v27;
      v21 = swift_task_alloc();
      v21[2] = v78 + 160;
      v21[3] = v78 + 168;
      v21[4] = v78 + 176;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v26, v25, "one doseEvent found, but needs confirmation whether to log as scheduled, returning .needsConfirmLogAsScheduled", v18, 2u);
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v18, MEMORY[0x277D84B78]);
    }

    v15 = *(v78 + 424);
    v16 = *(v78 + 408);
    v14 = *(v78 + 416);
    MEMORY[0x277D82BD8](v26);
    (*(v14 + 8))(v15, v16);
    v13 = swift_task_alloc();
    *(v78 + 504) = v13;
    *v13 = *(v78 + 128);
    v13[1] = SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:);
    v4 = *(v78 + 400);
    v5 = *(v78 + 392);
    v6 = *(v78 + 384);
  }

  return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v6, 1, v5, v4);
}

{
  v6 = v0[58];
  v0[16] = v0;
  v0[40] = v6;
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v7 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(108, 0);
  MEMORY[0x277D82BE0](v7);
  v0[41] = v7;
  type metadata accessor for MatchedMedName();
  _allocateUninitializedArray<A>(_:)();
  v4 = v1;
  MEMORY[0x277D82BE0](v6);
  *v4 = v6;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setMatchingMeds_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v0[41]);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[16] + 8);

  return v2(v7);
}

{
  v6 = v0[60];
  v0[16] = v0;
  v0[30] = v6;
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v7 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(107, 0);
  MEMORY[0x277D82BE0](v7);
  v0[31] = v7;
  type metadata accessor for MatchedMedName();
  _allocateUninitializedArray<A>(_:)();
  v4 = v1;
  MEMORY[0x277D82BE0](v6);
  *v4 = v6;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setMatchingMeds_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v0[31]);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[16] + 8);

  return v2(v7);
}

{
  v6 = v0[62];
  v0[16] = v0;
  v0[24] = v6;
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v7 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(109, 0);
  MEMORY[0x277D82BE0](v7);
  v0[25] = v7;
  type metadata accessor for MatchedMedName();
  _allocateUninitializedArray<A>(_:)();
  v4 = v1;
  MEMORY[0x277D82BE0](v6);
  *v4 = v6;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setMatchingMeds_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v0[25]);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[16] + 8);

  return v2(v7);
}

{
  v6 = v0[64];
  v0[16] = v0;
  v0[18] = v6;
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v7 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(106, 0);
  MEMORY[0x277D82BE0](v7);
  v0[19] = v7;
  type metadata accessor for MatchedMedName();
  _allocateUninitializedArray<A>(_:)();
  v4 = v1;
  MEMORY[0x277D82BE0](v6);
  *v4 = v6;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setMatchingMeds_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v0[19]);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[16] + 8);

  return v2(v7);
}

uint64_t SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 128) = *v1;
  *(v3 + 464) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:), 0);
}

{
  v3 = *v1;
  *(v3 + 128) = *v1;
  *(v3 + 480) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:), 0);
}

{
  v3 = *v1;
  *(v3 + 128) = *v1;
  *(v3 + 496) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:), 0);
}

{
  v3 = *v1;
  *(v3 + 128) = *v1;
  *(v3 + 512) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:), 0);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 224) = a4;
  *(v4 + 216) = a3;
  *(v4 + 449) = a2 & 1;
  *(v4 + 208) = a1;
  *(v4 + 136) = v4;
  *(v4 + 144) = 0;
  *(v4 + 448) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 152) = 0;
  *(v4 + 192) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 200) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  v5 = type metadata accessor for Logger();
  *(v4 + 232) = v5;
  *(v4 + 240) = *(v5 - 8);
  *(v4 + 248) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v4 + 256) = v6;
  *(v4 + 264) = *(v6 - 8);
  *(v4 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v4 + 280) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v4 + 288) = v7;
  *(v4 + 296) = *(v7 - 8);
  *(v4 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 144) = a1;
  *(v4 + 448) = a2 & 1;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)()
{
  v1 = v0[26];
  v23 = v1;
  v0[17] = v0;
  v19 = [v1 medicationIdentifier];
  v22 = [v19 underlyingIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v2;
  v0[41] = v20;
  v0[42] = v2;
  v0[7] = v20;
  v0[8] = v2;
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v22);
  type metadata accessor for MatchedMedName();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Match", 5uLL, 1);
  INObject.__allocating_init(identifier:display:)(v4, 0, v3);
  v24 = v5;
  v0[43] = v5;
  v0[19] = v5;
  v25 = [v23 scheduleItemIdentifier];
  if (v25)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v6;
    MEMORY[0x277D82BD8](v25);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (v17)
  {
    v13 = MEMORY[0x26D6492A0](v16);

    [v24 setScheduleID_];
  }

  else
  {
    [v24 setScheduleID_];
  }

  MEMORY[0x277D82BD8](v11);

  v12 = MEMORY[0x26D6492A0](v20, v21);

  [v24 setMedicationID_];
  MEMORY[0x277D82BD8](v12);

  v7 = swift_task_alloc();
  v18[44] = v7;
  *v7 = v18[17];
  v7[1] = SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  v8 = v18[28];
  v9 = v18[27];

  return SpecificMedicationsPersistor.displayNameFor(identifier:)(v20, v21, v9, v8);
}

{
  v135 = v0;
  v1 = v0[46];
  v2 = v0[45];
  v0[17] = v0;
  v0[11] = v2;
  v0[12] = v1;
  if (v0[12])
  {
    v3 = *(v129 + 96);
    *(v129 + 72) = *(v129 + 88);
    *(v129 + 80) = v3;
  }

  else
  {
    *(v129 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown Name", 0xCuLL, 1);
    if (*(v129 + 96))
    {
      outlined destroy of String.UTF8View(v129 + 88);
    }
  }

  v125 = *(v129 + 344);
  v127 = *(v129 + 208);
  v126 = MEMORY[0x26D6492A0](*(v129 + 72));

  [v125 setName_];
  MEMORY[0x277D82BD8](v126);
  v128 = [v127 scheduledDate];
  if (v128)
  {
    v124 = *(v129 + 320);
    v122 = *(v129 + 304);
    v123 = *(v129 + 288);
    v121 = *(v129 + 296);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v121 + 32))(v124, v122, v123);
    (*(v121 + 56))(v124, 0, 1, v123);
    MEMORY[0x277D82BD8](v128);
  }

  else
  {
    (*(*(v129 + 296) + 56))(*(v129 + 320), 1, 1, *(v129 + 288));
  }

  v118 = *(v129 + 320);
  v119 = getFormattedTimeString(time:)(v118);
  v120 = v4;
  outlined destroy of Date?(v118);
  if (v120)
  {
    v116 = MEMORY[0x26D6492A0](v119);

    v117 = v116;
  }

  else
  {
    v117 = 0;
  }

  v112 = *(v129 + 312);
  v110 = *(v129 + 304);
  v111 = *(v129 + 288);
  v108 = *(v129 + 208);
  v109 = *(v129 + 296);
  [*(v129 + 344) setSchedule_];
  MEMORY[0x277D82BD8](v117);
  v114 = [v108 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v109 + 32))(v112, v110, v111);
  (*(v109 + 56))(v112, 0, 1, v111);
  v113 = getFormattedTimeString(time:)(v112);
  v115 = v5;
  outlined destroy of Date?(v112);
  MEMORY[0x277D82BD8](v114);
  if (v115)
  {
    v106 = MEMORY[0x26D6492A0](v113);

    v107 = v106;
  }

  else
  {
    v107 = 0;
  }

  v104 = *(v129 + 208);
  [*(v129 + 344) setLoggedTime_];
  MEMORY[0x277D82BD8](v107);
  v105 = [v104 persistedUUID];
  if (v105)
  {
    v103 = *(v129 + 280);
    v101 = *(v129 + 272);
    v102 = *(v129 + 256);
    v100 = *(v129 + 264);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v100 + 32))(v103, v101, v102);
    (*(v100 + 56))(v103, 0, 1, v102);
    MEMORY[0x277D82BD8](v105);
  }

  else
  {
    (*(*(v129 + 264) + 56))(*(v129 + 280), 1, 1, *(v129 + 256));
  }

  if ((*(*(v129 + 264) + 48))(*(v129 + 280), 1, *(v129 + 256)) == 1)
  {
    v99 = 0;
  }

  else
  {
    v97 = *(v129 + 280);
    v96 = *(v129 + 256);
    v95 = *(v129 + 264);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v95 + 8))(v97, v96);
    v99 = isa;
  }

  v94 = *(v129 + 208);
  [*(v129 + 344) setPersistedUUID_];
  MEMORY[0x277D82BD8](v99);
  *(v129 + 160) = [v94 status];
  *(v129 + 168) = 4;
  type metadata accessor for HKMedicationDoseEventStatus(0);
  lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
  if (== infix<A>(_:_:)())
  {
    v92 = *(v129 + 344);
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("taken", 5uLL, 1)._countAndFlagsBits;
    v93 = MEMORY[0x26D6492A0](countAndFlagsBits);

    [v92 setCompletionStatus_];
    MEMORY[0x277D82BD8](v93);
  }

  else
  {
    *(v129 + 176) = [*(v129 + 208) status];
    *(v129 + 184) = 5;
    if (== infix<A>(_:_:)())
    {
      v90 = *(v129 + 344);
      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("skipped", 7uLL, 1)._countAndFlagsBits;
      v91 = MEMORY[0x26D6492A0](v7);

      [v90 setCompletionStatus_];
      MEMORY[0x277D82BD8](v91);
    }

    else
    {
      [*(v129 + 344) setCompletionStatus_];
    }
  }

  if (*(v129 + 449))
  {
    v8 = swift_task_alloc();
    *(v129 + 376) = v8;
    *v8 = *(v129 + 136);
    v8[1] = SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    v9 = *(v129 + 336);
    v10 = *(v129 + 328);
    v11 = *(v129 + 224);
    v12 = *(v129 + 216);

    return SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:)(v10, v9, v12, v11);
  }

  else
  {
    v31 = *(v129 + 344);
    v29 = *(v129 + 336);
    v28 = *(v129 + 328);
    v14 = *(v129 + 248);
    v27 = *(v129 + 232);
    v30 = *(v129 + 208);
    v25 = *(v129 + 240);
    v26 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v25 + 16))(v14, v26, v27);
    swift_endAccess();
    MEMORY[0x277D82BE0](v31);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;

    v34 = swift_allocObject();
    *(v34 + 16) = v28;
    *(v34 + 24) = v29;
    MEMORY[0x277D82BE0](v31);
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    MEMORY[0x277D82BE0](v31);
    v38 = swift_allocObject();
    *(v38 + 16) = v31;
    MEMORY[0x277D82BE0](v31);
    v40 = swift_allocObject();
    *(v40 + 16) = v31;
    MEMORY[0x277D82BE0](v30);
    v42 = swift_allocObject();
    *(v42 + 16) = v30;
    MEMORY[0x277D82BE0](v31);
    v44 = swift_allocObject();
    *(v44 + 16) = v31;
    MEMORY[0x277D82BE0](v31);
    v46 = swift_allocObject();
    *(v46 + 16) = v31;
    MEMORY[0x277D82BE0](v31);
    v48 = swift_allocObject();
    *(v48 + 16) = v31;
    MEMORY[0x277D82BE0](v31);
    v50 = swift_allocObject();
    *(v50 + 16) = v31;
    MEMORY[0x277D82BE0](v31);
    v52 = swift_allocObject();
    *(v52 + 16) = v31;
    oslog = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    v54 = swift_allocObject();
    *(v54 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v33 + 24) = v32;
    v56 = swift_allocObject();
    *(v56 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v56 + 24) = v33;
    v57 = swift_allocObject();
    *(v57 + 16) = 32;
    v58 = swift_allocObject();
    *(v58 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v35 + 24) = v34;
    v59 = swift_allocObject();
    *(v59 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v59 + 24) = v35;
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v37 + 24) = v36;
    v62 = swift_allocObject();
    *(v62 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v62 + 24) = v37;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v39 = swift_allocObject();
    *(v39 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v39 + 24) = v38;
    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v65 + 24) = v39;
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v41 = swift_allocObject();
    *(v41 + 16) = partial apply for implicit closure #6 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v41 + 24) = v40;
    v68 = swift_allocObject();
    *(v68 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v68 + 24) = v41;
    v69 = swift_allocObject();
    *(v69 + 16) = 32;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v43 + 24) = v42;
    v71 = swift_allocObject();
    *(v71 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v71 + 24) = v43;
    v72 = swift_allocObject();
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    *(v73 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = partial apply for implicit closure #6 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v45 + 24) = v44;
    v74 = swift_allocObject();
    *(v74 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v74 + 24) = v45;
    v75 = swift_allocObject();
    *(v75 + 16) = 32;
    v76 = swift_allocObject();
    *(v76 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = partial apply for implicit closure #7 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v47 + 24) = v46;
    v77 = swift_allocObject();
    *(v77 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v77 + 24) = v47;
    v78 = swift_allocObject();
    *(v78 + 16) = 32;
    v79 = swift_allocObject();
    *(v79 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = partial apply for implicit closure #10 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v49 + 24) = v48;
    v80 = swift_allocObject();
    *(v80 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v80 + 24) = v49;
    v81 = swift_allocObject();
    *(v81 + 16) = 32;
    v82 = swift_allocObject();
    *(v82 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = partial apply for implicit closure #11 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v51 + 24) = v50;
    v83 = swift_allocObject();
    *(v83 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v83 + 24) = v51;
    v84 = swift_allocObject();
    *(v84 + 16) = 32;
    v85 = swift_allocObject();
    *(v85 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v53 + 24) = v52;
    v86 = swift_allocObject();
    *(v86 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v86 + 24) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v87 = v15;

    *v87 = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[1] = v54;

    v87[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[3] = v55;

    v87[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[5] = v56;

    v87[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[7] = v57;

    v87[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[9] = v58;

    v87[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[11] = v59;

    v87[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[13] = v60;

    v87[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[15] = v61;

    v87[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[17] = v62;

    v87[18] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[19] = v63;

    v87[20] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[21] = v64;

    v87[22] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[23] = v65;

    v87[24] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[25] = v66;

    v87[26] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[27] = v67;

    v87[28] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[29] = v68;

    v87[30] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[31] = v69;

    v87[32] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[33] = v70;

    v87[34] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[35] = v71;

    v87[36] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[37] = v72;

    v87[38] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[39] = v73;

    v87[40] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[41] = v74;

    v87[42] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[43] = v75;

    v87[44] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[45] = v76;

    v87[46] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[47] = v77;

    v87[48] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[49] = v78;

    v87[50] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[51] = v79;

    v87[52] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[53] = v80;

    v87[54] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[55] = v81;

    v87[56] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[57] = v82;

    v87[58] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[59] = v83;

    v87[60] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[61] = v84;

    v87[62] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[63] = v85;

    v87[64] = partial apply for closure #1 in OSLogArguments.append(_:);
    v87[65] = v86;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v89))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v23 = createStorage<A>(capacity:type:)(0, v21, v21);
      v24 = createStorage<A>(capacity:type:)(11, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v130 = buf;
      v131 = v23;
      v132 = v24;
      serialize(_:at:)(2, &v130);
      serialize(_:at:)(11, &v130);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v57;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v62;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v66;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v68;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v75;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v76;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v77;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v80;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v81;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v83;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v84;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v85;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      v133 = partial apply for closure #1 in OSLogArguments.append(_:);
      v134 = v86;
      closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
      _os_log_impl(&dword_269912000, oslog, v89, "    Built MatchedMedName:\n        scheduleID (%s),\n        medID (%s),\n        name (%s),\n        schedule (%s),\n        loggedTime (%s),\n        status (%s),\n        dosage (%s),\n        dosageUnit (%s),\n        strength (%s),\n        strengthUnit (%s),\n        completionStatus (%s)", buf, 0x70u);
      destroyStorage<A>(_:count:)(v23, 0, v21);
      destroyStorage<A>(_:count:)(v24, 11, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v20 = *(v129 + 248);
    v19 = *(v129 + 232);
    v18 = *(v129 + 240);
    MEMORY[0x277D82BD8](oslog);
    (*(v18 + 8))(v20, v19);

    v16 = *(*(v129 + 136) + 8);
    v17 = *(v129 + 344);

    return v16(v17);
  }
}

{
  v1 = *(v0 + 400);
  *(v0 + 136) = v0;
  if (v1)
  {
    v11 = v14[48];
    v12 = *(v14 + 49);
    v13 = *(v14 + 50);
  }

  else
  {
    v11 = 0.0;
    v12 = 0;
    v13 = 0;
  }

  if (v13)
  {
    v9 = *(v14 + 43);
    v14[25] = v11;
    *(v14 + 15) = v12;
    *(v14 + 16) = v13;
    type metadata accessor for NSNumber();
    isa = NSNumber.__allocating_init(value:)(v11).super.super.isa;
    [v9 setStrength_];
    MEMORY[0x277D82BD8](isa);

    v10 = MEMORY[0x26D6492A0](v12, v13);

    [v9 setStrengthUnit_];
    MEMORY[0x277D82BD8](v10);
  }

  v7 = *(v14 + 42);

  v2 = swift_task_alloc();
  *(v14 + 51) = v2;
  *v2 = *(v14 + 17);
  v2[1] = SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  v3 = *(v14 + 41);
  v4 = *(v14 + 28);
  v5 = *(v14 + 27);

  return SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)(v3, v7, v5, v4);
}

{
  value = v0[52];
  v8 = *(v0 + 43);
  v11 = *(v0 + 42);
  *(v0 + 17) = v0;
  v0[24] = value;
  type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(value).super.super.isa;
  [v8 setDosage_];
  MEMORY[0x277D82BD8](isa);

  v1 = swift_task_alloc();
  *(v10 + 53) = v1;
  *v1 = *(v10 + 17);
  v1[1] = SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  v2 = v10[52];
  v3 = *(v10 + 41);
  v4 = *(v10 + 28);
  v5 = *(v10 + 27);

  return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v3, v11, v5, v4, v2);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v4[17] = *v2;
  v4[45] = a1;
  v4[46] = a2;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

{
  v4 = *v2;
  v4[17] = *v2;
  v4[54] = a1;
  v4[55] = a2;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v5[17] = *v3;
  v5[48] = a1;
  v5[49] = a2;
  v5[50] = a3;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(double a1)
{
  v3 = *v1;
  *(v3 + 136) = *v1;
  *(v3 + 416) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1)
{
  v90 = v1;
  v2 = *(v1 + 440);
  *(v1 + 136) = v1;
  if (v2)
  {
    v83 = v84[55];
    v80 = v84[54];
    v81 = v84[43];
    v84[13] = v80;
    v84[14] = v83;

    v82 = MEMORY[0x26D6492A0](v80, v83);

    [v81 setDosageUnit_];
    MEMORY[0x277D82BD8](v82);
  }

  v21 = v84[43];
  v19 = v84[42];
  v18 = v84[41];
  v3 = v84[31];
  v17 = v84[29];
  v20 = v84[26];
  v15 = v84[30];
  v16 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v15 + 16))(v3, v16, v17);
  swift_endAccess();
  MEMORY[0x277D82BE0](v21);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;

  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  *(v24 + 24) = v19;
  MEMORY[0x277D82BE0](v21);
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  MEMORY[0x277D82BE0](v21);
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  MEMORY[0x277D82BE0](v21);
  v30 = swift_allocObject();
  *(v30 + 16) = v21;
  MEMORY[0x277D82BE0](v20);
  v32 = swift_allocObject();
  *(v32 + 16) = v20;
  MEMORY[0x277D82BE0](v21);
  v34 = swift_allocObject();
  *(v34 + 16) = v21;
  MEMORY[0x277D82BE0](v21);
  v36 = swift_allocObject();
  *(v36 + 16) = v21;
  MEMORY[0x277D82BE0](v21);
  v38 = swift_allocObject();
  *(v38 + 16) = v21;
  MEMORY[0x277D82BE0](v21);
  v40 = swift_allocObject();
  *(v40 + 16) = v21;
  MEMORY[0x277D82BE0](v21);
  v42 = swift_allocObject();
  *(v42 + 16) = v21;
  oslog = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  v44 = swift_allocObject();
  *(v44 + 16) = 32;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v23 + 24) = v22;
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v46 + 24) = v23;
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
  *(v25 + 24) = v24;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v49 + 24) = v25;
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v27 + 24) = v26;
  v52 = swift_allocObject();
  *(v52 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v52 + 24) = v27;
  v53 = swift_allocObject();
  *(v53 + 16) = 32;
  v54 = swift_allocObject();
  *(v54 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v29 + 24) = v28;
  v55 = swift_allocObject();
  *(v55 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v55 + 24) = v29;
  v56 = swift_allocObject();
  *(v56 + 16) = 32;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #6 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v31 + 24) = v30;
  v58 = swift_allocObject();
  *(v58 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v58 + 24) = v31;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v33 + 24) = v32;
  v61 = swift_allocObject();
  *(v61 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v61 + 24) = v33;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #6 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v35 + 24) = v34;
  v64 = swift_allocObject();
  *(v64 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v64 + 24) = v35;
  v65 = swift_allocObject();
  *(v65 + 16) = 32;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for implicit closure #7 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v37 + 24) = v36;
  v67 = swift_allocObject();
  *(v67 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v67 + 24) = v37;
  v68 = swift_allocObject();
  *(v68 + 16) = 32;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for implicit closure #10 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v39 + 24) = v38;
  v70 = swift_allocObject();
  *(v70 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v70 + 24) = v39;
  v71 = swift_allocObject();
  *(v71 + 16) = 32;
  v72 = swift_allocObject();
  *(v72 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for implicit closure #11 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v41 + 24) = v40;
  v73 = swift_allocObject();
  *(v73 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v73 + 24) = v41;
  v74 = swift_allocObject();
  *(v74 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v43 + 24) = v42;
  v76 = swift_allocObject();
  *(v76 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v76 + 24) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v77 = v4;

  *v77 = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[1] = v44;

  v77[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[3] = v45;

  v77[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[5] = v46;

  v77[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[7] = v47;

  v77[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[9] = v48;

  v77[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[11] = v49;

  v77[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[13] = v50;

  v77[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[15] = v51;

  v77[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[17] = v52;

  v77[18] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[19] = v53;

  v77[20] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[21] = v54;

  v77[22] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[23] = v55;

  v77[24] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[25] = v56;

  v77[26] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[27] = v57;

  v77[28] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[29] = v58;

  v77[30] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[31] = v59;

  v77[32] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[33] = v60;

  v77[34] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[35] = v61;

  v77[36] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[37] = v62;

  v77[38] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[39] = v63;

  v77[40] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[41] = v64;

  v77[42] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[43] = v65;

  v77[44] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[45] = v66;

  v77[46] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[47] = v67;

  v77[48] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[49] = v68;

  v77[50] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[51] = v69;

  v77[52] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[53] = v70;

  v77[54] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[55] = v71;

  v77[56] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[57] = v72;

  v77[58] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[59] = v73;

  v77[60] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[61] = v74;

  v77[62] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[63] = v75;

  v77[64] = partial apply for closure #1 in OSLogArguments.append(_:);
  v77[65] = v76;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v79))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0, v11, v11);
    v14 = createStorage<A>(capacity:type:)(11, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v85 = buf;
    v86 = v13;
    v87 = v14;
    serialize(_:at:)(2, &v85);
    serialize(_:at:)(11, &v85);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v44;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v46;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v50;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v54;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v55;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v57;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v58;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v60;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v64;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v65;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v69;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v70;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v71;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v72;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v73;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v74;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v75;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    v88 = partial apply for closure #1 in OSLogArguments.append(_:);
    v89 = v76;
    closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
    _os_log_impl(&dword_269912000, oslog, v79, "    Built MatchedMedName:\n        scheduleID (%s),\n        medID (%s),\n        name (%s),\n        schedule (%s),\n        loggedTime (%s),\n        status (%s),\n        dosage (%s),\n        dosageUnit (%s),\n        strength (%s),\n        strengthUnit (%s),\n        completionStatus (%s)", buf, 0x70u);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 11, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v84[31];
  v9 = v84[29];
  v8 = v84[30];
  MEMORY[0x277D82BD8](oslog);
  (*(v8 + 8))(v10, v9);

  v5 = *(v84[17] + 8);
  v6 = v84[43];

  return v5(v6);
}

uint64_t specialized implicit closure #12 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(uint64_t a1)
{

  v1 = type metadata accessor for HKMedicationExposableDoseEvent();
  v4 = MEMORY[0x26D6494A0](a1, v1);

  return v4;
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 496) = a5;
  *(v5 + 488) = a4;
  *(v5 + 753) = a3 & 1;
  *(v5 + 480) = a2;
  *(v5 + 472) = a1;
  *(v5 + 216) = v5;
  *(v5 + 224) = 0;
  *(v5 + 232) = 0;
  *(v5 + 752) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 240) = 0;
  *(v5 + 248) = 0;
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 280) = 0;
  *(v5 + 344) = 0;
  *(v5 + 352) = 0;
  *(v5 + 184) = 0;
  *(v5 + 192) = 0;
  *(v5 + 376) = 0;
  *(v5 + 384) = 0;
  *(v5 + 392) = 0;
  *(v5 + 200) = 0;
  *(v5 + 208) = 0;
  *(v5 + 440) = 0;
  *(v5 + 448) = 0;
  v6 = type metadata accessor for DateInterval();
  *(v5 + 504) = v6;
  v9 = *(v6 - 8);
  *(v5 + 512) = v9;
  *(v5 + 520) = *(v9 + 64);
  *(v5 + 528) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 536) = v7;
  *(v5 + 544) = *(v7 - 8);
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = swift_task_alloc();
  *(v5 + 568) = swift_task_alloc();
  *(v5 + 576) = swift_task_alloc();
  *(v5 + 584) = swift_task_alloc();
  *(v5 + 224) = a1;
  *(v5 + 232) = a2;
  *(v5 + 752) = a3 & 1;
  *(v5 + 136) = a4;
  *(v5 + 144) = a5;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  v144 = v1;
  v2 = v1[73];
  v110 = v1[68];
  v112 = v1[67];
  v118 = v1[66];
  v116 = v1[64];
  v119 = v1[63];
  v115 = v1[60];
  v113 = v1[59];
  v1[27] = v1;
  v111 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *(v110 + 16);
  v1[74] = v3;
  v1[75] = (v110 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v2, v111, v112);
  swift_endAccess();

  v114 = swift_allocObject();
  *(v114 + 16) = v113;

  v121 = swift_allocObject();
  *(v121 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
  *(v121 + 24) = v114;

  (*(v116 + 16))(v118, v115, v119);
  v117 = (*(v116 + 80) + 16) & ~*(v116 + 80);
  v120 = swift_allocObject();
  (*(v116 + 32))(v120 + v117, v118, v119);

  v123 = swift_allocObject();
  *(v123 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
  *(v123 + 24) = v120;

  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.debug.getter();
  v125 = swift_allocObject();
  *(v125 + 16) = 32;
  v126 = swift_allocObject();
  *(v126 + 16) = 8;
  v122 = swift_allocObject();
  *(v122 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v122 + 24) = v121;
  v127 = swift_allocObject();
  *(v127 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v127 + 24) = v122;
  v128 = swift_allocObject();
  *(v128 + 16) = 32;
  v129 = swift_allocObject();
  *(v129 + 16) = 8;
  v124 = swift_allocObject();
  *(v124 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v124 + 24) = v123;
  v130 = swift_allocObject();
  *(v130 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v130 + 24) = v124;
  v1[76] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v131 = v4;

  *v131 = partial apply for closure #1 in OSLogArguments.append(_:);
  v131[1] = v125;

  v131[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v131[3] = v126;

  v131[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v131[5] = v127;

  v131[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v131[7] = v128;

  v131[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v131[9] = v129;

  v131[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v131[11] = v130;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v132, v133))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v107 = createStorage<A>(capacity:type:)(0, v105, v105);
    v108 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v139 = buf;
    v140 = v107;
    v141 = v108;
    serialize(_:at:)(2, &v139);
    serialize(_:at:)(2, &v139);
    v142 = partial apply for closure #1 in OSLogArguments.append(_:);
    v143 = v125;
    closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
    v142 = partial apply for closure #1 in OSLogArguments.append(_:);
    v143 = v126;
    closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
    v142 = partial apply for closure #1 in OSLogArguments.append(_:);
    v143 = v127;
    closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
    v142 = partial apply for closure #1 in OSLogArguments.append(_:);
    v143 = v128;
    closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
    v142 = partial apply for closure #1 in OSLogArguments.append(_:);
    v143 = v129;
    closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
    v142 = partial apply for closure #1 in OSLogArguments.append(_:);
    v143 = v130;
    closure #1 in osLogInternal(_:log:type:)(&v142, &v139, &v140, &v141);
    _os_log_impl(&dword_269912000, v132, v133, "Name: %s and Time: %s specified.", buf, 0x16u);
    destroyStorage<A>(_:count:)(v107, 0, v105);
    destroyStorage<A>(_:count:)(v108, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v99 = *(v109 + 584);
  v100 = *(v109 + 536);
  v101 = *(v109 + 472);
  v98 = *(v109 + 544);
  MEMORY[0x277D82BD8](v132);
  v5 = *(v98 + 8);
  *(v109 + 616) = v5;
  *(v109 + 624) = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v99, v100);
  *(v109 + 632) = type metadata accessor for HKMedicationExposableDoseEvent();
  *(v109 + 240) = _allocateUninitializedArray<A>(_:)();
  v6 = swift_allocObject();
  *(v109 + 640) = v6;
  *(v109 + 248) = v6 + 16;
  *(v6 + 16) = 0;

  *(v109 + 256) = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v102 = *(v109 + 168);
  v103 = *(v109 + 176);
  *(v109 + 648) = v103;
  if (v103)
  {
    *(v109 + 200) = v102;
    *(v109 + 208) = v103;
    type metadata accessor for HKMedicationIdentifier();

    v97 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)(v102, v103);
    *(v109 + 656) = v97;
    v7 = swift_task_alloc();
    *(v109 + 664) = v7;
    *v7 = *(v109 + 216);
    v7[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
    v8 = *(v109 + 496);
    v9 = *(v109 + 488);
    v10 = *(v109 + 480);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v10, v97, v9, v8);
  }

  outlined destroy of [HKQuantityType]((v109 + 152));
  v91 = *(v109 + 240);

  v92 = filterUniqueDoseEvents(doseEvents:)(v91, v12);

  *(v109 + 240) = v92;

  *(v109 + 264) = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v95 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v96 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0, v93, v94, MEMORY[0x277D84A98], v95, MEMORY[0x277D84AC0], v104);
  outlined destroy of [HKQuantityType]((v109 + 264));
  *(v109 + 272) = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  lazy protocol witness table accessor for type [String?] and conformance [A]();
  v89 = Set.init<A>(_:)();
  *(v109 + 688) = v89;
  *(v109 + 280) = v89;
  *(v109 + 288) = v92;
  v90 = Collection.isEmpty.getter();

  if (v90)
  {
    v85 = *(v109 + 592);
    v13 = *(v109 + 576);
    v84 = *(v109 + 536);
    v83 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v85(v13, v83, v84);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    v88 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v86))
    {
      v79 = static UnsafeMutablePointer.allocate(capacity:)();
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v80 = createStorage<A>(capacity:type:)(0, v78, v78);
      v81 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v109 + 408) = v79;
      *(v109 + 416) = v80;
      *(v109 + 424) = v81;
      serialize(_:at:)(0, (v109 + 408));
      serialize(_:at:)(0, (v109 + 408));
      *(v109 + 432) = v88;
      v82 = swift_task_alloc();
      v82[2] = v109 + 408;
      v82[3] = v109 + 416;
      v82[4] = v109 + 424;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v86, "Name and time specified, but no potential time match found. Returning .noMatchFound.", v79, 2u);
      destroyStorage<A>(_:count:)(v80, 0, v78);
      destroyStorage<A>(_:count:)(v81, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v79, MEMORY[0x277D84B78]);
    }

    v75 = *(v109 + 616);
    v73 = *(v109 + 576);
    v74 = *(v109 + 536);
    MEMORY[0x277D82BD8](oslog);
    v75(v73, v74);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v76 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);

    outlined destroy of [HKQuantityType]((v109 + 240));
    v77 = v76;
    goto LABEL_31;
  }

  if (Set.count.getter() <= 1 && *(*(v109 + 640) + 16) <= 1)
  {
    v42 = *(v109 + 632);
    v43 = *(v109 + 240);

    v44 = MEMORY[0x26D6494A0](v43, v42);

    if (v44 == 1)
    {
      v40 = *(v109 + 240);

      *(v109 + 328) = v40;
      Collection.first.getter();
      v41 = *(v109 + 336);
      *(v109 + 728) = v41;
      if (v41)
      {
        *(v109 + 344) = v41;

        v19 = swift_task_alloc();
        *(v109 + 736) = v19;
        *v19 = *(v109 + 216);
        v19[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
        v20 = *(v109 + 496);
        v21 = *(v109 + 488);
        v22 = *(v109 + 753) & 1;

        return SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(v41, v22, v21, v20);
      }
    }

    v36 = *(v109 + 592);
    v23 = *(v109 + 560);
    v35 = *(v109 + 536);
    v34 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v36(v23, v34, v35);
    swift_endAccess();
    v38 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v39 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v38, v37))
    {
      v30 = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0, v29, v29);
      v32 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v109 + 296) = v30;
      *(v109 + 304) = v31;
      *(v109 + 312) = v32;
      serialize(_:at:)(0, (v109 + 296));
      serialize(_:at:)(0, (v109 + 296));
      *(v109 + 320) = v39;
      v33 = swift_task_alloc();
      v33[2] = v109 + 296;
      v33[3] = v109 + 304;
      v33[4] = v109 + 312;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v38, v37, "More than 1 doseEvent found in saveScheduledMedication's fallback condition, returning failure status", v30, 2u);
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v30, MEMORY[0x277D84B78]);
    }

    v27 = *(v109 + 616);
    v25 = *(v109 + 560);
    v26 = *(v109 + 536);
    MEMORY[0x277D82BD8](v38);
    v27(v25, v26);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v28 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    outlined destroy of [HKQuantityType]((v109 + 240));
    v77 = v28;
    goto LABEL_31;
  }

  v62 = *(v109 + 640);
  v58 = *(v109 + 592);
  v14 = *(v109 + 568);
  v57 = *(v109 + 536);
  v56 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v58(v14, v56, v57);
  swift_endAccess();

  v59 = swift_allocObject();
  *(v59 + 16) = v89;

  v60 = swift_allocObject();
  *(v60 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
  *(v60 + 24) = v59;

  log = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v64 = swift_allocObject();
  *(v64 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v61 = swift_allocObject();
  *(v61 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v61 + 24) = v60;
  v66 = swift_allocObject();
  *(v66 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v66 + 24) = v61;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v63 = swift_allocObject();
  *(v63 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v63 + 24) = v62;
  v69 = swift_allocObject();
  *(v69 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v69 + 24) = v63;
  _allocateUninitializedArray<A>(_:)();
  v70 = v15;

  *v70 = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[1] = v64;

  v70[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[3] = v65;

  v70[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[5] = v66;

  v70[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[7] = v67;

  v70[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v70[9] = v68;

  v70[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v70[11] = v69;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v72))
  {
    v53 = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v54 = createStorage<A>(capacity:type:)(0, v52, v52);
    v55 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v134 = v53;
    v135 = v54;
    v136 = v55;
    serialize(_:at:)(2, &v134);
    serialize(_:at:)(2, &v134);
    v137 = partial apply for closure #1 in OSLogArguments.append(_:);
    v138 = v64;
    closure #1 in osLogInternal(_:log:type:)(&v137, &v134, &v135, &v136);
    v137 = partial apply for closure #1 in OSLogArguments.append(_:);
    v138 = v65;
    closure #1 in osLogInternal(_:log:type:)(&v137, &v134, &v135, &v136);
    v137 = partial apply for closure #1 in OSLogArguments.append(_:);
    v138 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v137, &v134, &v135, &v136);
    v137 = partial apply for closure #1 in OSLogArguments.append(_:);
    v138 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v137, &v134, &v135, &v136);
    v137 = partial apply for closure #1 in OSLogArguments.append(_:);
    v138 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v137, &v134, &v135, &v136);
    v137 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v138 = v69;
    closure #1 in osLogInternal(_:log:type:)(&v137, &v134, &v135, &v136);
    _os_log_impl(&dword_269912000, log, v72, "Multiple times (%s) or strengths (%ld) found for specified name today, returning .needsNameDisambiguation", v53, 0x16u);
    destroyStorage<A>(_:count:)(v54, 0, v52);
    destroyStorage<A>(_:count:)(v55, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v53, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v49 = *(v109 + 616);
  v47 = *(v109 + 568);
  v48 = *(v109 + 536);
  MEMORY[0x277D82BD8](log);
  v49(v47, v48);
  *(v109 + 696) = type metadata accessor for MatchedMedName();
  *(v109 + 352) = _allocateUninitializedArray<A>(_:)();
  v50 = *(v109 + 240);

  *(v109 + 360) = v50;
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v51 = *(v109 + 368);
  *(v109 + 704) = v51;
  if (!v51)
  {
    outlined destroy of [HKQuantityType]((v109 + 184));
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v46 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
    MEMORY[0x277D82BE0](v46);
    *(v109 + 376) = v46;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](*(v109 + 376));
    outlined destroy of [HKQuantityType]((v109 + 352));

    outlined destroy of [HKQuantityType]((v109 + 240));
    v77 = v46;
LABEL_31:

    v24 = *(*(v109 + 216) + 8);

    return v24(v77);
  }

  *(v109 + 384) = v51;
  v16 = swift_task_alloc();
  *(v109 + 712) = v16;
  *v16 = *(v109 + 216);
  v16[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
  v17 = *(v109 + 496);
  v18 = *(v109 + 488);

  return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v51, 1, v18, v17);
}

{
  v5 = *v2;
  *(v5 + 216) = *v2;
  *(v5 + 672) = a1;
  *(v5 + 680) = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
  }

  else
  {

    v3 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v3 = *v1;
  *(v3 + 216) = *v1;
  *(v3 + 720) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0);
}

{
  v3 = *v1;
  *(v3 + 216) = *v1;
  *(v3 + 744) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)()
{
  v107 = v0;
  v100 = v0[84];
  v0[27] = v0;

  v0[55] = v100;

  v0[57] = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Array.append<A>(contentsOf:)();
  v0[58] = v100;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v101 = Collection.isEmpty.getter();

  result = v101;
  if ((v101 & 1) == 0)
  {
    v6 = *(*(v99 + 640) + 16);
    v95 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    *(*(v99 + 640) + 16) = v95;
  }

  outlined destroy of [HKQuantityType]((v99 + 440));

  v94 = *(v99 + 680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v97 = *(v99 + 168);
  v96 = *(v99 + 176);
  *(v99 + 648) = v96;
  if (v96)
  {
    *(v99 + 200) = v97;
    *(v99 + 208) = v96;
    type metadata accessor for HKMedicationIdentifier();

    v98 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)(v97, v96);
    *(v99 + 656) = v98;
    v2 = swift_task_alloc();
    *(v99 + 664) = v2;
    *v2 = *(v99 + 216);
    v2[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
    v3 = *(v99 + 496);
    v4 = *(v99 + 488);
    v5 = *(v99 + 480);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v5, v98, v4, v3);
  }

  else
  {
    outlined destroy of [HKQuantityType]((v99 + 152));
    v87 = *(v99 + 240);

    v88 = filterUniqueDoseEvents(doseEvents:)(v87, v8);

    *(v99 + 240) = v88;

    *(v99 + 264) = v88;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v92 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0, v89, v90, MEMORY[0x277D84A98], v92, MEMORY[0x277D84AC0], v91);
    v93 = result;
    if (v94)
    {
      return result;
    }

    outlined destroy of [HKQuantityType]((v99 + 264));
    *(v99 + 272) = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    lazy protocol witness table accessor for type [String?] and conformance [A]();
    v85 = Set.init<A>(_:)();
    *(v99 + 688) = v85;
    *(v99 + 280) = v85;
    *(v99 + 288) = v88;
    v86 = Collection.isEmpty.getter();

    if (v86)
    {
      v81 = *(v99 + 592);
      v9 = *(v99 + 576);
      v80 = *(v99 + 536);
      v79 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v81(v9, v79, v80);
      swift_endAccess();
      oslog = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      v84 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v82))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v76 = createStorage<A>(capacity:type:)(0, v74, v74);
        v77 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v99 + 408) = buf;
        *(v99 + 416) = v76;
        *(v99 + 424) = v77;
        serialize(_:at:)(0, (v99 + 408));
        serialize(_:at:)(0, (v99 + 408));
        *(v99 + 432) = v84;
        v78 = swift_task_alloc();
        v78[2] = v99 + 408;
        v78[3] = v99 + 416;
        v78[4] = v99 + 424;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, oslog, v82, "Name and time specified, but no potential time match found. Returning .noMatchFound.", buf, 2u);
        destroyStorage<A>(_:count:)(v76, 0, v74);
        destroyStorage<A>(_:count:)(v77, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
      }

      v71 = *(v99 + 616);
      v69 = *(v99 + 576);
      v70 = *(v99 + 536);
      MEMORY[0x277D82BD8](oslog);
      v71(v69, v70);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v72 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);

      outlined destroy of [HKQuantityType]((v99 + 240));
      v73 = v72;
      goto LABEL_36;
    }

    if (Set.count.getter() <= 1 && *(*(v99 + 640) + 16) <= 1)
    {
      v38 = *(v99 + 632);
      v39 = *(v99 + 240);

      v40 = MEMORY[0x26D6494A0](v39, v38);

      if (v40 == 1)
      {
        v36 = *(v99 + 240);

        *(v99 + 328) = v36;
        Collection.first.getter();
        v37 = *(v99 + 336);
        *(v99 + 728) = v37;
        if (v37)
        {
          *(v99 + 344) = v37;

          v15 = swift_task_alloc();
          *(v99 + 736) = v15;
          *v15 = *(v99 + 216);
          v15[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
          v16 = *(v99 + 496);
          v17 = *(v99 + 488);
          v18 = *(v99 + 753) & 1;

          return SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(v37, v18, v17, v16);
        }
      }

      v32 = *(v99 + 592);
      v19 = *(v99 + 560);
      v31 = *(v99 + 536);
      v30 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v32(v19, v30, v31);
      swift_endAccess();
      v34 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v35 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v34, v33))
      {
        v26 = static UnsafeMutablePointer.allocate(capacity:)();
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v27 = createStorage<A>(capacity:type:)(0, v25, v25);
        v28 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v99 + 296) = v26;
        *(v99 + 304) = v27;
        *(v99 + 312) = v28;
        serialize(_:at:)(0, (v99 + 296));
        serialize(_:at:)(0, (v99 + 296));
        *(v99 + 320) = v35;
        v29 = swift_task_alloc();
        v29[2] = v99 + 296;
        v29[3] = v99 + 304;
        v29[4] = v99 + 312;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v34, v33, "More than 1 doseEvent found in saveScheduledMedication's fallback condition, returning failure status", v26, 2u);
        destroyStorage<A>(_:count:)(v27, 0, v25);
        destroyStorage<A>(_:count:)(v28, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v26, MEMORY[0x277D84B78]);
      }

      v23 = *(v99 + 616);
      v21 = *(v99 + 560);
      v22 = *(v99 + 536);
      MEMORY[0x277D82BD8](v34);
      v23(v21, v22);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v24 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

      outlined destroy of [HKQuantityType]((v99 + 240));
      v73 = v24;
      goto LABEL_36;
    }

    v58 = *(v99 + 640);
    v54 = *(v99 + 592);
    v10 = *(v99 + 568);
    v53 = *(v99 + 536);
    v52 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v54(v10, v52, v53);
    swift_endAccess();

    v55 = swift_allocObject();
    *(v55 + 16) = v85;

    v56 = swift_allocObject();
    *(v56 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
    *(v56 + 24) = v55;

    log = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v57 = swift_allocObject();
    *(v57 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v57 + 24) = v56;
    v62 = swift_allocObject();
    *(v62 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v62 + 24) = v57;
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v59 = swift_allocObject();
    *(v59 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v59 + 24) = v58;
    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v65 + 24) = v59;
    _allocateUninitializedArray<A>(_:)();
    v66 = v11;

    *v66 = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[1] = v60;

    v66[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[3] = v61;

    v66[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[5] = v62;

    v66[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[7] = v63;

    v66[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[9] = v64;

    v66[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v66[11] = v65;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v68))
    {
      v49 = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = createStorage<A>(capacity:type:)(0, v48, v48);
      v51 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v102 = v49;
      v103 = v50;
      v104 = v51;
      serialize(_:at:)(2, &v102);
      serialize(_:at:)(2, &v102);
      v105 = partial apply for closure #1 in OSLogArguments.append(_:);
      v106 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
      v105 = partial apply for closure #1 in OSLogArguments.append(_:);
      v106 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
      v105 = partial apply for closure #1 in OSLogArguments.append(_:);
      v106 = v62;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
      v105 = partial apply for closure #1 in OSLogArguments.append(_:);
      v106 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
      v105 = partial apply for closure #1 in OSLogArguments.append(_:);
      v106 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
      v105 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v106 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
      _os_log_impl(&dword_269912000, log, v68, "Multiple times (%s) or strengths (%ld) found for specified name today, returning .needsNameDisambiguation", v49, 0x16u);
      destroyStorage<A>(_:count:)(v50, 0, v48);
      destroyStorage<A>(_:count:)(v51, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v49, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v45 = *(v99 + 616);
    v43 = *(v99 + 568);
    v44 = *(v99 + 536);
    MEMORY[0x277D82BD8](log);
    v45(v43, v44);
    *(v99 + 696) = type metadata accessor for MatchedMedName();
    *(v99 + 352) = _allocateUninitializedArray<A>(_:)();
    v46 = *(v99 + 240);

    *(v99 + 360) = v46;
    Collection<>.makeIterator()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v47 = *(v99 + 368);
    *(v99 + 704) = v47;
    if (!v47)
    {
      outlined destroy of [HKQuantityType]((v99 + 184));
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v42 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
      MEMORY[0x277D82BE0](v42);
      *(v99 + 376) = v42;

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v42 setMatchingMeds_];
      MEMORY[0x277D82BD8](isa);
      MEMORY[0x277D82BD8](*(v99 + 376));
      outlined destroy of [HKQuantityType]((v99 + 352));

      outlined destroy of [HKQuantityType]((v99 + 240));
      v73 = v42;
LABEL_36:

      v20 = *(*(v99 + 216) + 8);

      return v20(v73);
    }

    *(v99 + 384) = v47;
    v12 = swift_task_alloc();
    *(v99 + 712) = v12;
    *v12 = *(v99 + 216);
    v12[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
    v13 = *(v99 + 496);
    v14 = *(v99 + 488);

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v47, 1, v14, v13);
  }
}

{
  v9 = v0[90];
  v10 = v0[88];
  v0[27] = v0;
  v0[49] = v9;
  MEMORY[0x277D82BE0](v9);
  v0[50] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v11 = v0[46];
  v0[88] = v11;
  if (v11)
  {
    v8[48] = v11;
    v1 = swift_task_alloc();
    v8[89] = v1;
    *v1 = v8[27];
    v1[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
    v2 = v8[62];
    v3 = v8[61];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v11, 1, v3, v2);
  }

  else
  {
    outlined destroy of [HKQuantityType](v8 + 23);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v7 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
    MEMORY[0x277D82BE0](v7);
    v8[47] = v7;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v8[47]);
    outlined destroy of [HKQuantityType](v8 + 44);

    outlined destroy of [HKQuantityType](v8 + 30);

    v5 = *(v8[27] + 8);

    return v5(v7);
  }
}

{
  v1 = v0[91];
  v0[27] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 30);
  v4 = v0[93];

  v2 = *(v0[27] + 8);

  return v2(v4);
}

{
  v36 = v0;
  v21 = v0[85];
  v1 = v0[82];
  v20 = v0[74];
  v2 = v0[69];
  v19 = v0[67];
  v0[27] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 19);

  outlined destroy of [HKQuantityType](v0 + 30);
  v3 = v21;
  v0[56] = v21;
  v18 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v20(v2, v18, v19);
  swift_endAccess();
  v4 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = 64;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v27 + 24) = v24;
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
    v15 = createStorage<A>(capacity:type:)(1, v13, v13);
    v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
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
    _os_log_impl(&dword_269912000, v29, v30, "Failed fetching dose events for specified timeframe: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v15, 1, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = v17[85];
  v10 = v17[77];
  v8 = v17[69];
  v9 = v17[67];
  MEMORY[0x277D82BD8](v29);
  v10(v8, v9);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v12 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v6 = *(v17[27] + 8);

  return v6(v12);
}

uint64_t SpecificMedicationsPersistor.getDateIntervalCloserToNow(firstDateInterval:secondDateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v23 = a2;
  v19 = a3;
  v20 = a4;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v40 = 0.0;
  v37 = 0.0;
  v29 = type metadata accessor for Date();
  v24 = *(v29 - 8);
  v25 = v29 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29, v23);
  v28 = &v16 - v21;
  v22 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v16 - v21, v7);
  v27 = &v16 - v22;
  v47 = &v16 - v22;
  v46 = a1;
  v45 = v8;
  v43 = v9;
  v44 = v10;
  Date.init()();
  DateInterval.start.getter();
  Date.timeIntervalSince(_:)();
  v26 = v11;
  v31 = *(v24 + 8);
  v30 = v24 + 8;
  v31(v28, v29);
  v41 = v26;
  v33 = MEMORY[0x277D839F8];
  v34 = MEMORY[0x277D83A20];
  v35 = MEMORY[0x277D83A50];
  abs<A>(_:)();
  v36 = v42;
  v40 = v42;
  DateInterval.start.getter();
  Date.timeIntervalSince(_:)();
  v32 = v12;
  v31(v28, v29);
  v38 = v32;
  abs<A>(_:)();
  v37 = v39;
  if (v36 >= v39)
  {
    v14 = type metadata accessor for DateInterval();
    (*(*(v14 - 8) + 16))(v17, v23);
  }

  else
  {
    v13 = type metadata accessor for DateInterval();
    (*(*(v13 - 8) + 16))(v17, v18);
  }

  return (v31)(v27, v29);
}

id closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 scheduleItemIdentifier];
  v9 = result;
  if (result)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;
    result = MEMORY[0x277D82BD8](v9);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t implicit closure #5 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3;
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1696) = a4;
  *(v4 + 1688) = a3;
  *(v4 + 2273) = a2 & 1;
  *(v4 + 1680) = a1;
  *(v4 + 1128) = v4;
  *(v4 + 1136) = 0;
  *(v4 + 2272) = 0;
  *(v4 + 888) = 0;
  *(v4 + 896) = 0;
  *(v4 + 1144) = 0;
  *(v4 + 1152) = 0;
  *(v4 + 1192) = 0;
  *(v4 + 904) = 0;
  *(v4 + 912) = 0;
  *(v4 + 1232) = 0;
  *(v4 + 1240) = 0;
  *(v4 + 920) = 0;
  *(v4 + 928) = 0;
  *(v4 + 1264) = 0;
  *(v4 + 1272) = 0;
  *(v4 + 1320) = 0;
  *(v4 + 1328) = 0;
  *(v4 + 936) = 0;
  *(v4 + 944) = 0;
  *(v4 + 1352) = 0;
  *(v4 + 1368) = 0;
  *(v4 + 2280) = 0;
  *(v4 + 2288) = 0;
  *(v4 + 1384) = 0;
  *(v4 + 952) = 0;
  *(v4 + 960) = 0;
  *(v4 + 1408) = 0;
  *(v4 + 1416) = 0;
  *(v4 + 1424) = 0;
  *(v4 + 1440) = 0;
  *(v4 + 968) = 0;
  *(v4 + 976) = 0;
  *(v4 + 1464) = 0;
  *(v4 + 1480) = 0;
  *(v4 + 1528) = 0;
  memset((v4 + 56), 0, 0x28uLL);
  *(v4 + 1536) = 0;
  *(v4 + 984) = 0;
  *(v4 + 992) = 0;
  *(v4 + 1000) = 0;
  *(v4 + 1008) = 0;
  *(v4 + 1544) = 0;
  *(v4 + 1552) = 0;
  *(v4 + 1632) = 0;
  *(v4 + 1096) = 0;
  *(v4 + 1104) = 0;
  *(v4 + 1640) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMd, &_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMR);
  *(v4 + 1704) = v5;
  *(v4 + 1712) = *(v5 - 8);
  *(v4 + 1720) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetSgMd, &_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetSgMR);
  *(v4 + 1728) = swift_task_alloc();
  *(v4 + 1736) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 1744) = v6;
  *(v4 + 1752) = *(v6 - 8);
  *(v4 + 1760) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttSgMd, &_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttSgMR);
  *(v4 + 1768) = swift_task_alloc();
  *(v4 + 1776) = swift_task_alloc();
  *(v4 + 1784) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_SSSitSgMd, &_s10Foundation4DateVSg_SSSitSgMR);
  *(v4 + 1792) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v4 + 1800) = swift_task_alloc();
  *(v4 + 1808) = swift_task_alloc();
  *(v4 + 1816) = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  *(v4 + 1824) = v7;
  v10 = *(v7 - 8);
  *(v4 + 1832) = v10;
  *(v4 + 1840) = *(v10 + 64);
  *(v4 + 1848) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v4 + 1856) = v8;
  *(v4 + 1864) = *(v8 - 8);
  *(v4 + 1872) = swift_task_alloc();
  *(v4 + 1880) = swift_task_alloc();
  *(v4 + 1888) = swift_task_alloc();
  *(v4 + 1896) = swift_task_alloc();
  *(v4 + 1904) = swift_task_alloc();
  *(v4 + 1912) = swift_task_alloc();
  *(v4 + 1920) = swift_task_alloc();
  *(v4 + 1928) = swift_task_alloc();
  *(v4 + 1936) = swift_task_alloc();
  *(v4 + 1944) = swift_task_alloc();
  *(v4 + 1952) = swift_task_alloc();
  *(v4 + 1960) = swift_task_alloc();
  *(v4 + 1968) = swift_task_alloc();
  *(v4 + 1136) = a1;
  *(v4 + 2272) = a2 & 1;
  *(v4 + 888) = a3;
  *(v4 + 896) = a4;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  v53 = v1;
  v2 = v1[246];
  v41 = v1[233];
  v43 = v1[232];
  v1[141] = v1;
  v42 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v44 = *(v41 + 16);
  v1[247] = v44;
  v1[248] = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44(v2, v42, v43);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  v1[249] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v45))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v37 = createStorage<A>(capacity:type:)(0, v35, v35);
    v38 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v40 + 1648) = buf;
    *(v40 + 1656) = v37;
    *(v40 + 1664) = v38;
    serialize(_:at:)(0, (v40 + 1648));
    serialize(_:at:)(0, (v40 + 1648));
    *(v40 + 1672) = v47;
    v39 = swift_task_alloc();
    v39[2] = v40 + 1648;
    v39[3] = v40 + 1656;
    v39[4] = v40 + 1664;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v45, "Got startTime, endTime.", buf, 2u);
    destroyStorage<A>(_:count:)(v37, 0, v35);
    destroyStorage<A>(_:count:)(v38, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v18 = *(v40 + 1968);
  v3 = *(v40 + 1960);
  v21 = *(v40 + 1856);
  v25 = *(v40 + 1848);
  v26 = *(v40 + 1824);
  v23 = *(v40 + 1680);
  v17 = *(v40 + 1864);
  v22 = *(v40 + 1832);
  MEMORY[0x277D82BD8](oslog);
  v19 = *(v17 + 8);
  *(v40 + 2000) = v19;
  *(v40 + 2008) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v18, v21);
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v44(v3, v20, v21);
  swift_endAccess();
  (*(v22 + 16))(v25, v23, v26);
  v24 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v27 = swift_allocObject();
  (*(v22 + 32))(v27 + v24, v25, v26);
  log = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v28 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v31 + 24) = v28;
  _allocateUninitializedArray<A>(_:)();
  v32 = v4;

  *v32 = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[1] = v29;

  v32[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[3] = v30;

  v32[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[5] = v31;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v34))
  {
    v14 = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0, v13, v13);
    v16 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v48 = v14;
    v49 = v15;
    v50 = v16;
    serialize(_:at:)(2, &v48);
    serialize(_:at:)(1, &v48);
    v51 = partial apply for closure #1 in OSLogArguments.append(_:);
    v52 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    v51 = partial apply for closure #1 in OSLogArguments.append(_:);
    v52 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    v51 = partial apply for closure #1 in OSLogArguments.append(_:);
    v52 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    _os_log_impl(&dword_269912000, log, v34, "searching dateinterval: %s", v14, 0xCu);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v14, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = *(v40 + 1960);
  v12 = *(v40 + 1856);
  MEMORY[0x277D82BD8](log);
  v19(v11, v12);
  v5 = swift_allocObject();
  *(v40 + 2016) = v5;
  *(v40 + 1144) = v5 + 16;
  v6 = swift_task_alloc();
  *(v40 + 2024) = v6;
  *v6 = *(v40 + 1128);
  v6[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  v7 = *(v40 + 1696);
  v8 = *(v40 + 1688);
  v9 = *(v40 + 1680);

  return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v9, 0, v8, v7);
}

{
  v5 = *v2;
  v5[141] = *v2;
  v5[254] = a1;
  v5[255] = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  }

  else
  {
    v3 = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v4 = *v1;
  v3 = *(*v1 + 1696);
  *(v4 + 1128) = *v1;
  *(v4 + 2160) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

{
  v3 = *v1;
  *(v3 + 1128) = *v1;
  *(v3 + 2192) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

{
  v4 = *v1;
  v3 = *(*v1 + 1696);
  *(v4 + 1128) = *v1;
  *(v4 + 2224) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

{
  v3 = *v1;
  *(v3 + 1128) = *v1;
  *(v3 + 2264) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1, uint64_t a2)
{
  v405 = v2;
  MEMORY[0x28223BE20](a1, a2);
  v361 = v2;
  v3 = *(v2 + 2032);
  v365 = *(v2 + 2016);
  v364 = *(v2 + 1976);
  v4 = *(v2 + 1952);
  v363 = *(v2 + 1856);
  *(v2 + 1128) = v2;
  *(v365 + 16) = v3;
  v362 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v364(v4, v362, v363);
  swift_endAccess();

  oslog = Logger.logObject.getter();
  v372 = static os_log_type_t.debug.getter();
  v367 = swift_allocObject();
  *(v367 + 16) = 0;
  v368 = swift_allocObject();
  *(v368 + 16) = 8;
  v366 = swift_allocObject();
  *(v366 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v366 + 24) = v365;
  v369 = swift_allocObject();
  *(v369 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v369 + 24) = v366;
  _allocateUninitializedArray<A>(_:)();
  v370 = v5;

  *v370 = partial apply for closure #1 in OSLogArguments.append(_:);
  v370[1] = v367;

  v370[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v370[3] = v368;

  v370[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v370[5] = v369;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v372))
  {
    v6 = *(v2 + 2040);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v359 = createStorage<A>(capacity:type:)(0, v357, v357);
    v360 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v400 = buf;
    v401 = v359;
    v402 = v360;
    serialize(_:at:)(0, &v400);
    serialize(_:at:)(1, &v400);
    v403 = partial apply for closure #1 in OSLogArguments.append(_:);
    v404 = v367;
    closure #1 in osLogInternal(_:log:type:)(&v403, &v400, &v401, &v402);
    if (v6)
    {
    }

    v403 = partial apply for closure #1 in OSLogArguments.append(_:);
    v404 = v368;
    closure #1 in osLogInternal(_:log:type:)(&v403, &v400, &v401, &v402);
    v403 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v404 = v369;
    closure #1 in osLogInternal(_:log:type:)(&v403, &v400, &v401, &v402);
    _os_log_impl(&dword_269912000, oslog, v372, "fetched %ld doseEvents", buf, 0xCu);
    destroyStorage<A>(_:count:)(v359, 0, v357);
    destroyStorage<A>(_:count:)(v360, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v356 = 0;
    v355 = 0;
  }

  else
  {

    v356 = *(v2 + 2040);
  }

  v347 = *(v2 + 2016);
  v341 = *(v2 + 2000);
  v346 = *(v2 + 1976);
  v340 = *(v2 + 1952);
  v8 = *(v2 + 1944);
  v345 = *(v2 + 1856);
  MEMORY[0x277D82BD8](oslog);
  v341(v340, v345);
  swift_beginAccess();
  v342 = *(v347 + 16);

  swift_endAccess();
  v343 = filterUniqueDoseEvents(doseEvents:)(v342, v9);

  swift_beginAccess();
  *(v347 + 16) = v343;

  swift_endAccess();
  v344 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v346(v8, v344, v345);
  swift_endAccess();

  log = Logger.logObject.getter();
  v354 = static os_log_type_t.debug.getter();
  v349 = swift_allocObject();
  *(v349 + 16) = 0;
  v350 = swift_allocObject();
  *(v350 + 16) = 8;
  v348 = swift_allocObject();
  *(v348 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v348 + 24) = v347;
  v351 = swift_allocObject();
  *(v351 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v351 + 24) = v348;
  _allocateUninitializedArray<A>(_:)();
  v352 = v10;

  *v352 = partial apply for closure #1 in OSLogArguments.append(_:);
  v352[1] = v349;

  v352[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v352[3] = v350;

  v352[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v352[5] = v351;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v354))
  {
    v337 = static UnsafeMutablePointer.allocate(capacity:)();
    v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v338 = createStorage<A>(capacity:type:)(0, v336, v336);
    v339 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v395 = v337;
    v396 = v338;
    v397 = v339;
    serialize(_:at:)(0, &v395);
    serialize(_:at:)(1, &v395);
    v398 = partial apply for closure #1 in OSLogArguments.append(_:);
    v399 = v349;
    closure #1 in osLogInternal(_:log:type:)(&v398, &v395, &v396, &v397);
    if (v356)
    {
    }

    v398 = partial apply for closure #1 in OSLogArguments.append(_:);
    v399 = v350;
    closure #1 in osLogInternal(_:log:type:)(&v398, &v395, &v396, &v397);
    v398 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v399 = v351;
    closure #1 in osLogInternal(_:log:type:)(&v398, &v395, &v396, &v397);
    _os_log_impl(&dword_269912000, log, v354, "filtered to %ld unique doseEvents", v337, 0xCu);
    destroyStorage<A>(_:count:)(v338, 0, v336);
    destroyStorage<A>(_:count:)(v339, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v337, MEMORY[0x277D84B78]);

    v334 = 0;
    v335 = 0;
  }

  else
  {

    v334 = v356;
    v335 = v355;
  }

  v326 = *(v2 + 2000);
  v324 = *(v2 + 1944);
  v325 = *(v2 + 1856);
  v330 = (*(v2 + 2016) + 16);
  MEMORY[0x277D82BD8](log);
  v326(v324, v325);
  v329 = swift_allocObject();
  *(v2 + 2048) = v329;
  *(v2 + 1192) = v329 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_10Foundation4DateVSg08scheduleB0_SS5medIDSi5countttMd, &_sSSSg_10Foundation4DateVSg08scheduleB0_SS5medIDSi5countttMR);
  _allocateUninitializedArray<A>(_:)();
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v328 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  *(v329 + 16) = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  v331 = *v330;

  swift_endAccess();
  *(v2 + 1200) = v331;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  v332 = v334;
  for (i = v335; ; i = v297)
  {
    *(v2 + 2056) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v323 = *(v2 + 1208);
    if (!v323)
    {
      break;
    }

    v304 = *(v2 + 1976);
    v11 = *(v2 + 1936);
    v303 = *(v2 + 1856);
    *(v2 + 1632) = v323;
    v302 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v304(v11, v302, v303);
    swift_endAccess();
    MEMORY[0x277D82BE0](v323);
    v305 = swift_allocObject();
    *(v305 + 16) = v323;
    MEMORY[0x277D82BE0](v323);
    v307 = swift_allocObject();
    *(v307 + 16) = v323;
    MEMORY[0x277D82BE0](v323);
    v309 = swift_allocObject();
    *(v309 + 16) = v323;
    v321 = Logger.logObject.getter();
    v322 = static os_log_type_t.debug.getter();
    v311 = swift_allocObject();
    *(v311 + 16) = 32;
    v312 = swift_allocObject();
    *(v312 + 16) = 8;
    v306 = swift_allocObject();
    *(v306 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v306 + 24) = v305;
    v313 = swift_allocObject();
    *(v313 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v313 + 24) = v306;
    v314 = swift_allocObject();
    *(v314 + 16) = 32;
    v315 = swift_allocObject();
    *(v315 + 16) = 8;
    v308 = swift_allocObject();
    *(v308 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v308 + 24) = v307;
    v316 = swift_allocObject();
    *(v316 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v316 + 24) = v308;
    v317 = swift_allocObject();
    *(v317 + 16) = 32;
    v318 = swift_allocObject();
    *(v318 + 16) = 8;
    v310 = swift_allocObject();
    *(v310 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v310 + 24) = v309;
    v319 = swift_allocObject();
    *(v319 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v319 + 24) = v310;
    _allocateUninitializedArray<A>(_:)();
    v320 = v12;

    *v320 = partial apply for closure #1 in OSLogArguments.append(_:);
    v320[1] = v311;

    v320[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v320[3] = v312;

    v320[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v320[5] = v313;

    v320[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v320[7] = v314;

    v320[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v320[9] = v315;

    v320[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v320[11] = v316;

    v320[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v320[13] = v317;

    v320[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v320[15] = v318;

    v320[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v320[17] = v319;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v321, v322))
    {
      v299 = static UnsafeMutablePointer.allocate(capacity:)();
      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v300 = createStorage<A>(capacity:type:)(0, v298, v298);
      v301 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v390 = v299;
      v391 = v300;
      v392 = v301;
      serialize(_:at:)(2, &v390);
      serialize(_:at:)(3, &v390);
      v393 = partial apply for closure #1 in OSLogArguments.append(_:);
      v394 = v311;
      closure #1 in osLogInternal(_:log:type:)(&v393, &v390, &v391, &v392);
      if (v332)
      {
      }

      v393 = partial apply for closure #1 in OSLogArguments.append(_:);
      v394 = v312;
      closure #1 in osLogInternal(_:log:type:)(&v393, &v390, &v391, &v392);
      v393 = partial apply for closure #1 in OSLogArguments.append(_:);
      v394 = v313;
      closure #1 in osLogInternal(_:log:type:)(&v393, &v390, &v391, &v392);
      v393 = partial apply for closure #1 in OSLogArguments.append(_:);
      v394 = v314;
      closure #1 in osLogInternal(_:log:type:)(&v393, &v390, &v391, &v392);
      v393 = partial apply for closure #1 in OSLogArguments.append(_:);
      v394 = v315;
      closure #1 in osLogInternal(_:log:type:)(&v393, &v390, &v391, &v392);
      v393 = partial apply for closure #1 in OSLogArguments.append(_:);
      v394 = v316;
      closure #1 in osLogInternal(_:log:type:)(&v393, &v390, &v391, &v392);
      v393 = partial apply for closure #1 in OSLogArguments.append(_:);
      v394 = v317;
      closure #1 in osLogInternal(_:log:type:)(&v393, &v390, &v391, &v392);
      v393 = partial apply for closure #1 in OSLogArguments.append(_:);
      v394 = v318;
      closure #1 in osLogInternal(_:log:type:)(&v393, &v390, &v391, &v392);
      v393 = partial apply for closure #1 in OSLogArguments.append(_:);
      v394 = v319;
      closure #1 in osLogInternal(_:log:type:)(&v393, &v390, &v391, &v392);
      _os_log_impl(&dword_269912000, v321, v322, "got a dose event with scheduleID: %s, medID: %s, status: %s", v299, 0x20u);
      destroyStorage<A>(_:count:)(v300, 0, v298);
      destroyStorage<A>(_:count:)(v301, 3, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v299, MEMORY[0x277D84B78]);

      v296 = 0;
      v297 = 0;
    }

    else
    {

      v296 = v332;
      v297 = i;
    }

    v294 = *(v2 + 2000);
    v292 = *(v2 + 1936);
    v293 = *(v2 + 1856);
    MEMORY[0x277D82BD8](v321);
    v294(v292, v293);
    v295 = [v323 scheduleItemIdentifier];
    if (v295)
    {
      v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v289 = v13;
      MEMORY[0x277D82BD8](v295);
      v290 = v288;
      v291 = v289;
    }

    else
    {
      v290 = 0;
      v291 = 0;
    }

    v287 = *(v2 + 1784);
    v286 = *(v2 + 1704);
    v285 = *(v2 + 1712);
    *(v2 + 1064) = v290;
    *(v2 + 1072) = v291;
    MEMORY[0x26D649240]();
    outlined destroy of String.UTF8View(v2 + 1064);
    if ((*(v285 + 48))(v287, 1, v286) == 1)
    {
      v261 = *(v2 + 1792);
      outlined destroy of (scheduleDate: Date?, medID: String, count: Int)?(*(v2 + 1784));
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_SSSitMd, &_s10Foundation4DateVSg_SSSitMR);
      (*(*(v22 - 8) + 56))(v261, 1);
    }

    else
    {
      v284 = *(v2 + 1792);
      v277 = *(v2 + 1784);
      v14 = *(v2 + 1704);
      v15 = &v277[*(v14 + 48)];
      v278 = *v15;
      v280 = *(v15 + 1);
      v282 = *&v277[*(v14 + 64)];
      v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_SSSitMd, &_s10Foundation4DateVSg_SSSitMR);
      v279 = &v284[*(v283 + 48)];
      v281 = *(v283 + 64);
      outlined init with take of Date?(v277, v284);
      *v279 = v278;
      *(v279 + 1) = v280;
      *&v284[v281] = v282;
      (*(*(v283 - 8) + 56))();
    }

    v275 = *(v2 + 1792);
    v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_SSSitMd, &_s10Foundation4DateVSg_SSSitMR);
    if ((*(*(v276 - 8) + 48))(v275, 1) == 1)
    {
      outlined destroy of (Date?, String, Int)?(*(v2 + 1792));
      v260 = [v323 scheduleItemIdentifier];
      if (v260)
      {
        v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v257 = v23;
        MEMORY[0x277D82BD8](v260);
        v258 = v256;
        v259 = v257;
      }

      else
      {
        v258 = 0;
        v259 = 0;
      }

      v252 = *(v2 + 1768);
      v24 = *(v2 + 1704);
      v253 = (v252 + *(v24 + 48));
      v254 = *(v24 + 64);
      v255 = [v323 scheduledDate];
      if (v255)
      {
        v251 = *(v2 + 1808);
        v249 = *(v2 + 1760);
        v250 = *(v2 + 1744);
        v248 = *(v2 + 1752);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v248 + 32))(v251, v249, v250);
        (*(v248 + 56))(v251, 0, 1, v250);
        MEMORY[0x277D82BD8](v255);
      }

      else
      {
        (*(*(v2 + 1752) + 56))(*(v2 + 1808), 1, 1, *(v2 + 1744));
      }

      v246 = *(v2 + 1768);
      v245 = *(v2 + 1704);
      v244 = *(v2 + 1712);
      outlined init with take of Date?(*(v2 + 1808), v246);
      v243 = [v323 medicationIdentifier];
      v247 = [v243 underlyingIdentifier];
      *v253 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v253[1] = v25;
      MEMORY[0x277D82BD8](v243);
      *(v252 + v254) = 1;
      (*(v244 + 56))(v246, 0, 1, v245);
      *(v2 + 1080) = v258;
      *(v2 + 1088) = v259;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSg10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttGMd, &_sSDySSSg10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttGMR);
      Dictionary.subscript.setter();
      MEMORY[0x277D82BD8](v247);
      MEMORY[0x277D82BD8](v323);
      v263 = v296;
    }

    else
    {
      v16 = *(v2 + 1792);
      v17 = &v16[*(v276 + 48)];
      v271 = *v17;
      v272 = *(v17 + 1);
      v273 = *&v16[*(v276 + 64)];
      outlined init with take of Date?(v16, *(v2 + 1816));
      *(v2 + 1096) = v271;
      *(v2 + 1104) = v272;
      *(v2 + 1640) = v273;
      v274 = [v323 scheduleItemIdentifier];
      if (v274)
      {
        v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v268 = v18;
        MEMORY[0x277D82BD8](v274);
        v269 = v267;
        v270 = v268;
      }

      else
      {
        v269 = 0;
        v270 = 0;
      }

      v264 = *(v2 + 1776);
      v19 = *(v2 + 1704);
      v266 = &v264[*(v19 + 48)];
      v265 = *(v19 + 64);
      outlined init with copy of Date?(*(v2 + 1816), v264);

      *v266 = v271;
      *(v266 + 1) = v272;
      if (__OFADD__(v273, 1))
      {
        __break(1u);
        return result;
      }

      v262 = *(v2 + 1816);
      v21 = *(v2 + 1712);
      *&v264[v265] = v273 + 1;
      (*(v21 + 56))();
      *(v2 + 1112) = v269;
      *(v2 + 1120) = v270;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSg10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttGMd, &_sSDySSSg10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttGMR);
      Dictionary.subscript.setter();

      outlined destroy of Date?(v262);
      MEMORY[0x277D82BD8](v323);
      v263 = v296;
    }

    v332 = v263;
  }

  v240 = (*(v2 + 2016) + 16);
  outlined destroy of [HKQuantityType]((v2 + 904));
  swift_beginAccess();
  v241 = *v240;

  swift_endAccess();
  *(v2 + 1216) = v241;
  v242 = Collection.isEmpty.getter();

  if (v242)
  {
    v236 = *(v2 + 1976);
    v26 = *(v2 + 1928);
    v235 = *(v2 + 1856);
    v234 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v236(v26, v234, v235);
    swift_endAccess();
    v238 = Logger.logObject.getter();
    v237 = static os_log_type_t.debug.getter();
    v239 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v238, v237))
    {

      goto LABEL_47;
    }

    v230 = static UnsafeMutablePointer.allocate(capacity:)();
    v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v231 = createStorage<A>(capacity:type:)(0, v229, v229);
    v232 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v2 + 1600) = v230;
    *(v2 + 1608) = v231;
    *(v2 + 1616) = v232;
    serialize(_:at:)(0, (v2 + 1600));
    serialize(_:at:)(0, (v2 + 1600));
    *(v2 + 1624) = v239;
    v233 = swift_task_alloc();
    v233[2] = v2 + 1600;
    v233[3] = v2 + 1608;
    v233[4] = v2 + 1616;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v332)
    {

      _os_log_impl(&dword_269912000, v238, v237, "Time specified, but no potential time match found. Returning .noMatchFound.", v230, 2u);
      destroyStorage<A>(_:count:)(v231, 0, v229);
      destroyStorage<A>(_:count:)(v232, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v230, MEMORY[0x277D84B78]);

LABEL_47:
      v226 = *(v2 + 2000);
      v224 = *(v2 + 1928);
      v225 = *(v2 + 1856);
      MEMORY[0x277D82BD8](v238);
      v226(v224, v225);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v227 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);

      v228 = v227;
LABEL_121:

      v59 = *(*(v2 + 1128) + 8);

      return v59(v228);
    }
  }

  v221 = *(v2 + 1704);
  v222 = *(v329 + 16);

  v223 = MEMORY[0x26D649210](v222, v327, v221, v328);

  if (v223 <= 1)
  {
    v174 = *(v2 + 2016);
    swift_beginAccess();
    doseEvents._rawValue = *(v174 + 16);

    swift_endAccess();
    v176 = allDoseEventsAreUnlogged(doseEvents:)(doseEvents);

    if (v176)
    {
      v170 = *(v2 + 1976);
      v41 = *(v2 + 1904);
      v169 = *(v2 + 1856);
      v168 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v170(v41, v168, v169);
      swift_endAccess();
      v172 = Logger.logObject.getter();
      v171 = static os_log_type_t.debug.getter();
      v173 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v172, v171))
      {
        v164 = static UnsafeMutablePointer.allocate(capacity:)();
        v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v165 = createStorage<A>(capacity:type:)(0, v163, v163);
        v166 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v2 + 1496) = v164;
        *(v2 + 1504) = v165;
        *(v2 + 1512) = v166;
        serialize(_:at:)(0, (v2 + 1496));
        serialize(_:at:)(0, (v2 + 1496));
        *(v2 + 1520) = v173;
        v167 = swift_task_alloc();
        v167[2] = v2 + 1496;
        v167[3] = v2 + 1504;
        v167[4] = v2 + 1512;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        if (v332)
        {
        }

        _os_log_impl(&dword_269912000, v172, v171, "All dose events in group are unlogged, continuing to write", v164, 2u);
        destroyStorage<A>(_:count:)(v165, 0, v163);
        destroyStorage<A>(_:count:)(v166, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v164, MEMORY[0x277D84B78]);

        v162 = 0;
      }

      else
      {

        v162 = v332;
      }

      v159 = *(v2 + 2000);
      v157 = *(v2 + 1904);
      v158 = *(v2 + 1856);
      v160 = (*(v2 + 2016) + 16);
      MEMORY[0x277D82BD8](v172);
      v159(v157, v158);
      type metadata accessor for HKMedicationExposableDoseEvent();
      *(v2 + 1440) = _allocateUninitializedArray<A>(_:)();
      swift_beginAccess();
      v161 = *v160;

      swift_endAccess();
      *(v2 + 1448) = v161;
      Collection<>.makeIterator()();
      while (1)
      {
        IndexingIterator.next()();
        v156 = *(v2 + 1456);
        if (!v156)
        {
          break;
        }

        *(v2 + 1464) = v156;
        *(v2 + 1472) = [v156 scheduledDoseQuantity];
        if (*(v2 + 1472))
        {
          isa = *(v2 + 1472);
        }

        else
        {
          type metadata accessor for NSNumber();
          isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
          if (*(v2 + 1472))
          {
            outlined destroy of HealthKitPersistor((v2 + 1472));
          }
        }

        v155 = [v156 updateForNewDoseQuantity_];
        MEMORY[0x277D82BD8](isa);
        *(v2 + 1480) = v155;
        MEMORY[0x277D82BE0](v155);
        *(v2 + 1488) = v155;
        Array.append(_:)();
        MEMORY[0x277D82BD8](v155);
        MEMORY[0x277D82BD8](v156);
      }

      v143 = *(v2 + 1976);
      v42 = *(v2 + 1896);
      v142 = *(v2 + 1856);
      v144 = *(v2 + 2273);
      outlined destroy of [HKQuantityType]((v2 + 968));
      v141 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v143(v42, v141, v142);
      swift_endAccess();
      v145 = swift_allocObject();
      *(v145 + 16) = v144;
      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.debug.getter();
      v149 = swift_allocObject();
      *(v149 + 16) = 0;
      v150 = swift_allocObject();
      *(v150 + 16) = 4;
      v146 = swift_allocObject();
      *(v146 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
      *(v146 + 24) = v145;
      v147 = swift_allocObject();
      *(v147 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
      *(v147 + 24) = v146;
      v148 = swift_allocObject();
      *(v148 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
      *(v148 + 24) = v147;
      v151 = swift_allocObject();
      *(v151 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
      *(v151 + 24) = v148;
      _allocateUninitializedArray<A>(_:)();
      v152 = v43;

      *v152 = partial apply for closure #1 in OSLogArguments.append(_:);
      v152[1] = v149;

      v152[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v152[3] = v150;

      v152[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v152[5] = v151;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v153, v154))
      {
        v138 = static UnsafeMutablePointer.allocate(capacity:)();
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v139 = createStorage<A>(capacity:type:)(0, v137, v137);
        v140 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v379 = v138;
        v380 = v139;
        v381 = v140;
        serialize(_:at:)(0, &v379);
        serialize(_:at:)(1, &v379);
        v382 = partial apply for closure #1 in OSLogArguments.append(_:);
        v383 = v149;
        closure #1 in osLogInternal(_:log:type:)(&v382, &v379, &v380, &v381);
        if (v162)
        {
        }

        v382 = partial apply for closure #1 in OSLogArguments.append(_:);
        v383 = v150;
        closure #1 in osLogInternal(_:log:type:)(&v382, &v379, &v380, &v381);
        v382 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
        v383 = v151;
        closure #1 in osLogInternal(_:log:type:)(&v382, &v379, &v380, &v381);
        _os_log_impl(&dword_269912000, v153, v154, "Calling writeDoseEvent() for specified time with medStatus: %{BOOL}d", v138, 8u);
        destroyStorage<A>(_:count:)(v139, 0, v137);
        destroyStorage<A>(_:count:)(v140, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v138, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v134 = *(v2 + 2000);
      v132 = *(v2 + 1896);
      v133 = *(v2 + 1856);
      v135 = *(v2 + 1696);
      MEMORY[0x277D82BD8](v153);
      v134(v132, v133);
      MEMORY[0x277D82BE0](v135);
      v136 = *(v2 + 1440);
      *(v2 + 2144) = v136;

      v44 = swift_task_alloc();
      v45 = v136;
      *(v2 + 2152) = v44;
      *v44 = *(v2 + 1128);
      v44[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
      v46 = *(v2 + 1696);
      v47 = *(v2 + 2273);
      v407 = *(v2 + 1688);
      v408 = v46;
      v48 = v47 & 1;

      return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v46, v45, v48, 0, 0, 1, 0, 0);
    }

    v129 = *(v2 + 2016);
    swift_beginAccess();
    v130._rawValue = *(v129 + 16);

    swift_endAccess();
    v131 = allLoggedWithMixedStatus(doseEvents:)(v130);

    if (v131 || (v125 = *(v2 + 2016), v126 = *(v2 + 2273), swift_beginAccess(), v127._rawValue = *(v125 + 16), , swift_endAccess(), v128 = oneExistingStatusWithConflictingRequest(doseEvents:requestedStatus:)(v127, v126 & 1), , v128))
    {
      v109 = *(v2 + 1976);
      v49 = *(v2 + 1888);
      v108 = *(v2 + 1856);
      v105 = *(v2 + 2273);
      v104 = (*(v2 + 2016) + 16);
      swift_beginAccess();
      v103._rawValue = *v104;

      swift_endAccess();
      v110 = allLoggedWithMixedStatus(doseEvents:)(v103);

      *(v2 + 2280) = v110;
      swift_beginAccess();
      v106._rawValue = *v104;

      swift_endAccess();
      v111 = oneExistingStatusWithConflictingRequest(doseEvents:requestedStatus:)(v106, v105 & 1);

      *(v2 + 2288) = v111;
      v107 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v109(v49, v107, v108);
      swift_endAccess();
      v112 = swift_allocObject();
      *(v112 + 16) = v110;
      v114 = swift_allocObject();
      *(v114 + 16) = v111;
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.debug.getter();
      v116 = swift_allocObject();
      *(v116 + 16) = 32;
      v117 = swift_allocObject();
      *(v117 + 16) = 8;
      v113 = swift_allocObject();
      *(v113 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
      *(v113 + 24) = v112;
      v118 = swift_allocObject();
      *(v118 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v118 + 24) = v113;
      v119 = swift_allocObject();
      *(v119 + 16) = 32;
      v120 = swift_allocObject();
      *(v120 + 16) = 8;
      v115 = swift_allocObject();
      *(v115 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
      *(v115 + 24) = v114;
      v121 = swift_allocObject();
      *(v121 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v121 + 24) = v115;
      _allocateUninitializedArray<A>(_:)();
      v122 = v50;

      *v122 = partial apply for closure #1 in OSLogArguments.append(_:);
      v122[1] = v116;

      v122[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v122[3] = v117;

      v122[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v122[5] = v118;

      v122[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v122[7] = v119;

      v122[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v122[9] = v120;

      v122[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v122[11] = v121;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v123, v124))
      {
        v100 = static UnsafeMutablePointer.allocate(capacity:)();
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v101 = createStorage<A>(capacity:type:)(0, v99, v99);
        v102 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v374 = v100;
        v375 = v101;
        v376 = v102;
        serialize(_:at:)(2, &v374);
        serialize(_:at:)(2, &v374);
        v377 = partial apply for closure #1 in OSLogArguments.append(_:);
        v378 = v116;
        closure #1 in osLogInternal(_:log:type:)(&v377, &v374, &v375, &v376);
        if (v332)
        {
        }

        v377 = partial apply for closure #1 in OSLogArguments.append(_:);
        v378 = v117;
        closure #1 in osLogInternal(_:log:type:)(&v377, &v374, &v375, &v376);
        v377 = partial apply for closure #1 in OSLogArguments.append(_:);
        v378 = v118;
        closure #1 in osLogInternal(_:log:type:)(&v377, &v374, &v375, &v376);
        v377 = partial apply for closure #1 in OSLogArguments.append(_:);
        v378 = v119;
        closure #1 in osLogInternal(_:log:type:)(&v377, &v374, &v375, &v376);
        v377 = partial apply for closure #1 in OSLogArguments.append(_:);
        v378 = v120;
        closure #1 in osLogInternal(_:log:type:)(&v377, &v374, &v375, &v376);
        v377 = partial apply for closure #1 in OSLogArguments.append(_:);
        v378 = v121;
        closure #1 in osLogInternal(_:log:type:)(&v377, &v374, &v375, &v376);
        _os_log_impl(&dword_269912000, v123, v124, "Calling either allLoggedWithMixedStatus (%s) or oneExistingStatusWithConflictingRequest (%s)", v100, 0x16u);
        destroyStorage<A>(_:count:)(v101, 0, v99);
        destroyStorage<A>(_:count:)(v102, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v100, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v95 = *(v2 + 2000);
      v93 = *(v2 + 1888);
      v94 = *(v2 + 1856);
      v96 = (*(v2 + 2016) + 16);
      MEMORY[0x277D82BD8](v123);
      v95(v93, v94);
      *(v2 + 2168) = type metadata accessor for MatchedMedName();
      *(v2 + 1384) = _allocateUninitializedArray<A>(_:)();
      swift_beginAccess();
      v97 = *v96;

      swift_endAccess();
      *(v2 + 1392) = v97;
      Collection<>.makeIterator()();
      IndexingIterator.next()();
      v98 = *(v2 + 1400);
      *(v2 + 2176) = v98;
      if (!v98)
      {
        outlined destroy of [HKQuantityType]((v2 + 952));
        type metadata accessor for LogSpecificMedicationsIntentResponse();
        v92 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(110, 0);
        MEMORY[0x277D82BE0](v92);
        *(v2 + 1408) = v92;

        v91 = Array._bridgeToObjectiveC()().super.isa;

        [v92 setMatchingMeds_];
        MEMORY[0x277D82BD8](v91);
        MEMORY[0x277D82BD8](*(v2 + 1408));
        outlined destroy of [HKQuantityType]((v2 + 1384));

        v228 = v92;
        goto LABEL_121;
      }

      *(v2 + 1416) = v98;
      v51 = swift_task_alloc();
      v52 = v98;
      v361[273] = v51;
      *v51 = v361[141];
      v51[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
      v53 = v361[212];
      v54 = v361[211];
    }

    else
    {
      v87 = *(v2 + 2016);
      swift_beginAccess();
      v88 = *(v87 + 16);

      swift_endAccess();
      v89 = getUnloggedDoseEvents(doseEvents:)(v88);

      *(v2 + 1224) = v89;
      v90 = Collection.isEmpty.getter();

      if ((v90 & 1) == 0)
      {
        v84 = *(v2 + 2016);
        swift_beginAccess();
        v85 = *(v84 + 16);

        swift_endAccess();
        v86 = getUnloggedDoseEvents(doseEvents:)(v85);
        *(v2 + 2200) = v86;

        *(v2 + 1320) = v86;
        type metadata accessor for HKMedicationExposableDoseEvent();
        *(v2 + 1328) = _allocateUninitializedArray<A>(_:)();

        *(v2 + 1336) = v86;
        Collection<>.makeIterator()();
        while (1)
        {
          IndexingIterator.next()();
          v83 = *(v2 + 1344);
          if (!v83)
          {
            break;
          }

          *(v2 + 1352) = v83;
          *(v2 + 1360) = [v83 scheduledDoseQuantity];
          if (*(v2 + 1360))
          {
            v373 = *(v2 + 1360);
          }

          else
          {
            type metadata accessor for NSNumber();
            v373 = NSNumber.init(integerLiteral:)(1).super.super.isa;
            if (*(v2 + 1360))
            {
              outlined destroy of HealthKitPersistor((v2 + 1360));
            }
          }

          v82 = [v83 updateForNewDoseQuantity_];
          MEMORY[0x277D82BD8](v373);
          *(v2 + 1368) = v82;
          MEMORY[0x277D82BE0](v82);
          *(v2 + 1376) = v82;
          Array.append(_:)();
          MEMORY[0x277D82BD8](v82);
          MEMORY[0x277D82BD8](v83);
        }

        v80 = *(v2 + 1696);
        outlined destroy of [HKQuantityType]((v2 + 936));
        MEMORY[0x277D82BE0](v80);
        v81 = *(v2 + 1328);
        *(v2 + 2208) = v81;

        v55 = swift_task_alloc();
        v45 = v81;
        *(v2 + 2216) = v55;
        *v55 = *(v2 + 1128);
        v55[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
        v46 = *(v2 + 1696);
        v56 = *(v2 + 2273);
        v407 = *(v2 + 1688);
        v408 = v46;
        v48 = v56 & 1;

        return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v46, v45, v48, 0, 0, 1, 0, 0);
      }

      v76 = *(v2 + 1976);
      v57 = *(v2 + 1880);
      v75 = *(v2 + 1856);
      v74 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v76(v57, v74, v75);
      swift_endAccess();
      v78 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      v79 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v78, v77))
      {
        v70 = static UnsafeMutablePointer.allocate(capacity:)();
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v71 = createStorage<A>(capacity:type:)(0, v69, v69);
        v72 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v2 + 1288) = v70;
        *(v2 + 1296) = v71;
        *(v2 + 1304) = v72;
        serialize(_:at:)(0, (v2 + 1288));
        serialize(_:at:)(0, (v2 + 1288));
        *(v2 + 1312) = v79;
        v73 = swift_task_alloc();
        v73[2] = v2 + 1288;
        v73[3] = v2 + 1296;
        v73[4] = v2 + 1304;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        if (v332)
        {
        }

        _os_log_impl(&dword_269912000, v78, v77, "allMedsLoggedAlready, returning code .allMedsLoggedAlready", v70, 2u);
        destroyStorage<A>(_:count:)(v71, 0, v69);
        destroyStorage<A>(_:count:)(v72, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v70, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v64 = *(v2 + 2000);
      v62 = *(v2 + 1880);
      v63 = *(v2 + 1856);
      v66 = (*(v2 + 2016) + 16);
      MEMORY[0x277D82BD8](v78);
      v64(v62, v63);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v65 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(111, 0);
      *(v2 + 2232) = v65;
      MEMORY[0x277D82BE0](v65);
      *(v2 + 1232) = v65;
      *(v2 + 2240) = type metadata accessor for MatchedMedName();
      *(v2 + 1240) = _allocateUninitializedArray<A>(_:)();
      swift_beginAccess();
      v67 = *v66;

      swift_endAccess();
      *(v2 + 1248) = v67;
      Collection<>.makeIterator()();
      IndexingIterator.next()();
      v68 = *(v2 + 1256);
      *(v2 + 2248) = v68;
      if (!v68)
      {
        v60 = *(v2 + 2232);
        outlined destroy of [HKQuantityType]((v2 + 920));

        v61 = Array._bridgeToObjectiveC()().super.isa;

        [v60 setMatchingMeds_];
        MEMORY[0x277D82BD8](v61);
        outlined destroy of [HKQuantityType]((v2 + 1240));
        MEMORY[0x277D82BD8](*(v2 + 1232));

        v228 = *(v2 + 2232);
        goto LABEL_121;
      }

      *(v2 + 1264) = v68;
      v58 = swift_task_alloc();
      v52 = v68;
      v361[282] = v58;
      *v58 = v361[141];
      v58[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
      v53 = v361[212];
      v54 = v361[211];
    }

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v52, 1, v54, v53);
  }

  v213 = *(v2 + 1976);
  v27 = *(v2 + 1920);
  v212 = *(v2 + 1856);
  v211 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v213(v27, v211, v212);
  swift_endAccess();

  v219 = Logger.logObject.getter();
  v220 = static os_log_type_t.debug.getter();
  v215 = swift_allocObject();
  *(v215 + 16) = 0;
  v216 = swift_allocObject();
  *(v216 + 16) = 8;
  v214 = swift_allocObject();
  *(v214 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  *(v214 + 24) = v329;
  v217 = swift_allocObject();
  *(v217 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v217 + 24) = v214;
  _allocateUninitializedArray<A>(_:)();
  v218 = v28;

  *v218 = partial apply for closure #1 in OSLogArguments.append(_:);
  v218[1] = v215;

  v218[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v218[3] = v216;

  v218[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v218[5] = v217;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v219, v220))
  {
    v208 = static UnsafeMutablePointer.allocate(capacity:)();
    v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v209 = createStorage<A>(capacity:type:)(0, v207, v207);
    v210 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v385 = v208;
    v386 = v209;
    v387 = v210;
    serialize(_:at:)(0, &v385);
    serialize(_:at:)(1, &v385);
    v388 = partial apply for closure #1 in OSLogArguments.append(_:);
    v389 = v215;
    closure #1 in osLogInternal(_:log:type:)(&v388, &v385, &v386, &v387);
    if (v332)
    {
    }

    v388 = partial apply for closure #1 in OSLogArguments.append(_:);
    v389 = v216;
    closure #1 in osLogInternal(_:log:type:)(&v388, &v385, &v386, &v387);
    v388 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v389 = v217;
    closure #1 in osLogInternal(_:log:type:)(&v388, &v385, &v386, &v387);
    _os_log_impl(&dword_269912000, v219, v220, "Multiple schedules (%ld) found for specified timeframe without name, returning .needsScheduleDisambiguation", v208, 0xCu);
    destroyStorage<A>(_:count:)(v209, 0, v207);
    destroyStorage<A>(_:count:)(v210, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v208, MEMORY[0x277D84B78]);

    v206 = 0;
  }

  else
  {

    v206 = v332;
  }

  v202 = *(v2 + 2000);
  v200 = *(v2 + 1920);
  v201 = *(v2 + 1856);
  MEMORY[0x277D82BD8](v219);
  v202(v200, v201);
  *(v2 + 2064) = type metadata accessor for MatchedMedSchedule();
  *(v2 + 1528) = _allocateUninitializedArray<A>(_:)();
  swift_beginAccess();

  swift_endAccess();
  Dictionary.makeIterator()();
  memcpy((v2 + 56), (v2 + 16), 0x28uLL);
  *(v2 + 2072) = v206;
  v204 = *(v2 + 1736);
  v203 = *(v2 + 1728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8IteratorVySSSg10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt_GMd, &_sSD8IteratorVySSSg10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt_GMR);
  Dictionary.Iterator.next()();
  outlined init with take of (key: String?, value: (scheduleDate: Date?, medID: String, count: Int))?(v203, v204);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMd, &_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMR);
  if ((*(*(v205 - 8) + 48))(v204, 1) == 1)
  {
    outlined destroy of [String? : (scheduleDate: Date?, medID: String, count: Int)].Iterator((v2 + 56));
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v178 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(104, 0);
    MEMORY[0x277D82BE0](v178);
    *(v2 + 1536) = v178;

    v177 = Array._bridgeToObjectiveC()().super.isa;

    [v178 setMatchingSchedules_];
    MEMORY[0x277D82BD8](v177);
    MEMORY[0x277D82BD8](*(v2 + 1536));
    outlined destroy of [HKQuantityType]((v2 + 1528));

    v228 = v178;
    goto LABEL_121;
  }

  v192 = *(v2 + 1800);
  v29 = *(v2 + 1736);
  v193 = *(v2 + 1720);
  v191 = *(v2 + 1704);
  v190 = *v29;
  v199 = v29[1];
  *(v2 + 2080) = v199;
  v30 = v29 + *(v205 + 48);
  v31 = &v30[*(v191 + 48)];
  v186 = *v31;
  v188 = *(v31 + 1);
  v196 = *&v30[*(v191 + 64)];
  *(v2 + 2088) = v196;
  v187 = &v193[*(v191 + 48)];
  v189 = *(v191 + 64);
  outlined init with take of Date?(v30, v193);
  *v187 = v186;
  *(v187 + 1) = v188;
  *&v193[v189] = v196;
  *(v2 + 984) = v190;
  *(v2 + 992) = v199;
  v32 = &v193[*(v191 + 48)];
  v194 = *v32;
  v195 = v32[1];
  *(v2 + 2096) = v195;
  outlined init with take of Date?(v193, v192);
  *(v2 + 1000) = v194;
  *(v2 + 1008) = v195;
  *(v2 + 1544) = v196;
  v198 = swift_allocObject();
  *(v2 + 2104) = v198;
  *(v2 + 1552) = v198 + 16;
  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Match", 5uLL, 1);
  INObject.__allocating_init(identifier:display:)(v34, 0, v33);
  v197 = v35;
  MEMORY[0x277D82BE0](v35);
  *(v198 + 16) = v197;
  swift_beginAccess();
  swift_endAccess();

  if (v199)
  {
    v184 = MEMORY[0x26D6492A0](v190);

    v185 = v184;
  }

  else
  {
    v185 = 0;
  }

  v182 = *(v2 + 1800);
  [v197 setScheduleID_];
  MEMORY[0x277D82BD8](v185);
  MEMORY[0x277D82BD8](v197);
  swift_beginAccess();
  v181 = *(v198 + 16);
  MEMORY[0x277D82BE0](v181);
  swift_endAccess();
  v183 = getFormattedTimeString(time:)(v182);
  if (v36)
  {
    v179 = MEMORY[0x26D6492A0](v183);

    v180 = v179;
  }

  else
  {
    v180 = 0;
  }

  [v181 setSchedule_];
  MEMORY[0x277D82BD8](v180);
  MEMORY[0x277D82BD8](v181);
  swift_beginAccess();
  v37 = *(v198 + 16);
  *(v2 + 2112) = v37;
  MEMORY[0x277D82BE0](v37);
  swift_endAccess();

  v38 = swift_task_alloc();
  v361[265] = v38;
  *v38 = v361[141];
  v38[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  v39 = v361[212];
  v40 = v361[211];

  return SpecificMedicationsPersistor.displayNameFor(identifier:)(v194, v195, v40, v39);
}

{
  v4 = *v2;
  v4[141] = *v2;
  v4[266] = a1;
  v4[267] = a2;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)()
{
  v1 = v0[267];
  v2 = v0[266];
  v0[141] = v0;
  v0[129] = v2;
  v0[130] = v1;
  if (v0[130])
  {
    v16 = *(v91 + 1040);
    *(v91 + 1016) = *(v91 + 1032);
    *(v91 + 1024) = v16;
  }

  else
  {
    *(v91 + 1016) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown Name", 0xCuLL, 1);
    if (*(v91 + 1040))
    {
      outlined destroy of String.UTF8View(v91 + 1032);
    }
  }

  v65 = *(v91 + 2112);
  v68 = *(v91 + 2088);
  v66 = (*(v91 + 2104) + 16);
  v64 = MEMORY[0x26D6492A0](*(v91 + 1016));

  [v65 setMedName_];
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  swift_beginAccess();
  v67 = *v66;
  MEMORY[0x277D82BE0](*v66);
  result = swift_endAccess();
  if (__OFSUB__(v68, 1))
  {
    __break(1u);
  }

  else
  {
    v45 = *(v91 + 2104);
    v42 = *(v91 + 2088);
    v41 = *(v91 + 1976);
    v18 = *(v91 + 1912);
    v40 = *(v91 + 1856);
    *(v91 + 1560) = v68 - 1;
    v19 = String.init<A>(_:)();
    v38 = MEMORY[0x26D6492A0](v19);

    [v67 setRemainingMedCount_];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v67);
    v39 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v41(v18, v39, v40);
    swift_endAccess();

    v47 = swift_allocObject();
    *(v47 + 16) = v42;
    oslog = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for implicit closure #9 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v43 + 24) = v45;
    v51 = swift_allocObject();
    *(v51 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v51 + 24) = v43;
    v52 = swift_allocObject();
    *(v52 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for implicit closure #10 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v44 + 24) = v45;
    v54 = swift_allocObject();
    *(v54 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v54 + 24) = v44;
    v55 = swift_allocObject();
    *(v55 + 16) = 32;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = partial apply for implicit closure #11 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v46 + 24) = v45;
    v57 = swift_allocObject();
    *(v57 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v57 + 24) = v46;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v48 + 24) = v47;
    v60 = swift_allocObject();
    *(v60 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v60 + 24) = v48;
    _allocateUninitializedArray<A>(_:)();
    v61 = v20;

    *v61 = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[1] = v49;

    v61[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[3] = v50;

    v61[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[5] = v51;

    v61[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[7] = v52;

    v61[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[9] = v53;

    v61[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[11] = v54;

    v61[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[13] = v55;

    v61[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[15] = v56;

    v61[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[17] = v57;

    v61[18] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[19] = v58;

    v61[20] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[21] = v59;

    v61[22] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v61[23] = v60;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v63))
    {
      v21 = *(v91 + 2072);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v36 = createStorage<A>(capacity:type:)(0, v34, v34);
      v37 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v91 + 1576) = buf;
      *(v91 + 1584) = v36;
      *(v91 + 1592) = v37;
      serialize(_:at:)(2, (v91 + 1576));
      serialize(_:at:)(4, (v91 + 1576));
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v49;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      if (v21)
      {
      }

      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v50;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v51;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v52;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v53;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v54;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v55;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v56;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v57;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v58;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v91 + 1056) = v59;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      *(v91 + 1048) = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      *(v91 + 1056) = v60;
      closure #1 in osLogInternal(_:log:type:)((v91 + 1048), v91 + 1576, v91 + 1584, v91 + 1592);
      _os_log_impl(&dword_269912000, oslog, v63, "Appending MatchedMedSchedule with scheduleID (%s), medName (%s), schedule (%s), and remainingMedCount (%ld)", buf, 0x2Au);
      destroyStorage<A>(_:count:)(v36, 0, v34);
      destroyStorage<A>(_:count:)(v37, 3, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v33 = 0;
    }

    else
    {

      v33 = *(v91 + 2072);
    }

    v27 = *(v91 + 2000);
    v25 = *(v91 + 1912);
    v26 = *(v91 + 1856);
    v30 = *(v91 + 1800);
    v28 = (*(v91 + 2104) + 16);
    MEMORY[0x277D82BD8](oslog);
    v27(v25, v26);
    swift_beginAccess();
    v29 = *v28;
    MEMORY[0x277D82BE0](*v28);
    swift_endAccess();
    *(v91 + 1568) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents18MatchedMedScheduleCGMd, &_sSay19SiriWellnessIntents18MatchedMedScheduleCGMR);
    Array.append(_:)();

    outlined destroy of Date?(v30);

    *(v91 + 2072) = v33;
    v32 = *(v91 + 1736);
    v31 = *(v91 + 1728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8IteratorVySSSg10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt_GMd, &_sSD8IteratorVySSSg10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt_GMR);
    Dictionary.Iterator.next()();
    outlined init with take of (key: String?, value: (scheduleDate: Date?, medID: String, count: Int))?(v31, v32);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMd, &_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMR);
    if ((*(*(v76 - 8) + 48))(v32, 1) == 1)
    {
      outlined destroy of [String? : (scheduleDate: Date?, medID: String, count: Int)].Iterator((v91 + 56));
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v24 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(104, 0);
      MEMORY[0x277D82BE0](v24);
      *(v91 + 1536) = v24;

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v24 setMatchingSchedules_];
      MEMORY[0x277D82BD8](isa);
      MEMORY[0x277D82BD8](*(v91 + 1536));
      outlined destroy of [HKQuantityType]((v91 + 1528));

      v22 = *(*(v91 + 1128) + 8);

      return v22(v24);
    }

    else
    {
      v83 = *(v91 + 1800);
      v3 = *(v91 + 1736);
      v84 = *(v91 + 1720);
      v82 = *(v91 + 1704);
      v81 = *v3;
      v90 = v3[1];
      *(v91 + 2080) = v90;
      v4 = v3 + *(v76 + 48);
      v5 = &v4[*(v82 + 48)];
      v77 = *v5;
      v79 = *(v5 + 1);
      v87 = *&v4[*(v82 + 64)];
      *(v91 + 2088) = v87;
      v78 = &v84[*(v82 + 48)];
      v80 = *(v82 + 64);
      outlined init with take of Date?(v4, v84);
      *v78 = v77;
      *(v78 + 1) = v79;
      *&v84[v80] = v87;
      *(v91 + 984) = v81;
      *(v91 + 992) = v90;
      v6 = &v84[*(v82 + 48)];
      v85 = *v6;
      v86 = v6[1];
      *(v91 + 2096) = v86;
      outlined init with take of Date?(v84, v83);
      *(v91 + 1000) = v85;
      *(v91 + 1008) = v86;
      *(v91 + 1544) = v87;
      v89 = swift_allocObject();
      *(v91 + 2104) = v89;
      *(v91 + 1552) = v89 + 16;
      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Match", 5uLL, 1);
      INObject.__allocating_init(identifier:display:)(v8, 0, v7);
      v88 = v9;
      MEMORY[0x277D82BE0](v9);
      *(v89 + 16) = v88;
      swift_beginAccess();
      swift_endAccess();

      if (v90)
      {
        v74 = MEMORY[0x26D6492A0](v81);

        v75 = v74;
      }

      else
      {
        v75 = 0;
      }

      v72 = *(v91 + 1800);
      [v88 setScheduleID_];
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v88);
      swift_beginAccess();
      v71 = *(v89 + 16);
      MEMORY[0x277D82BE0](v71);
      swift_endAccess();
      v73 = getFormattedTimeString(time:)(v72);
      if (v10)
      {
        v69 = MEMORY[0x26D6492A0](v73);

        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      [v71 setSchedule_];
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v71);
      swift_beginAccess();
      v11 = *(v89 + 16);
      *(v91 + 2112) = v11;
      MEMORY[0x277D82BE0](v11);
      swift_endAccess();

      v12 = swift_task_alloc();
      *(v91 + 2120) = v12;
      *v12 = *(v91 + 1128);
      v12[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
      v13 = *(v91 + 1696);
      v14 = *(v91 + 1688);

      return SpecificMedicationsPersistor.displayNameFor(identifier:)(v85, v86, v14, v13);
    }
  }

  return result;
}

{
  v0[141] = v0;
  outlined destroy of [HKQuantityType](v0 + 180);

  v3 = v0[270];

  v1 = *(v0[141] + 8);

  return v1(v3);
}

{
  v9 = v0[274];
  v10 = v0[272];
  v0[141] = v0;
  v0[178] = v9;
  MEMORY[0x277D82BE0](v9);
  v0[179] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  IndexingIterator.next()();
  v11 = v0[175];
  v0[272] = v11;
  if (v11)
  {
    v8[177] = v11;
    v1 = swift_task_alloc();
    v8[273] = v1;
    *v1 = v8[141];
    v1[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    v2 = v8[212];
    v3 = v8[211];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v11, 1, v3, v2);
  }

  else
  {
    outlined destroy of [HKQuantityType](v8 + 119);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v7 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(110, 0);
    MEMORY[0x277D82BE0](v7);
    v8[176] = v7;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v8[176]);
    outlined destroy of [HKQuantityType](v8 + 173);

    v5 = *(v8[141] + 8);

    return v5(v7);
  }
}

{
  v0[141] = v0;
  outlined destroy of [HKQuantityType](v0 + 166);

  v3 = v0[278];

  v1 = *(v0[141] + 8);

  return v1(v3);
}

{
  v10 = v0[283];
  v11 = v0[281];
  v0[141] = v0;
  v0[159] = v10;
  MEMORY[0x277D82BE0](v10);
  v0[160] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  IndexingIterator.next()();
  v12 = v0[157];
  v0[281] = v12;
  if (v12)
  {
    v9[158] = v12;
    v1 = swift_task_alloc();
    v9[282] = v1;
    *v1 = v9[141];
    v1[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    v2 = v9[212];
    v3 = v9[211];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v12, 1, v3, v2);
  }

  else
  {
    v6 = v9[279];
    outlined destroy of [HKQuantityType](v9 + 115);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType](v9 + 155);
    MEMORY[0x277D82BD8](v9[154]);

    v8 = v9[279];

    v5 = *(v9[141] + 8);

    return v5(v8);
  }
}

{
  v16 = v0[255];
  v19 = v0[247];
  v1 = v0[234];
  v18 = v0[232];
  v0[141] = v0;
  swift_deallocUninitializedObject();
  v2 = v16;
  v0[144] = v16;
  v17 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v19(v1, v17, v18);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v20))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 1160) = buf;
    *(v15 + 1168) = v12;
    *(v15 + 1176) = v13;
    serialize(_:at:)(0, (v15 + 1160));
    serialize(_:at:)(0, (v15 + 1160));
    *(v15 + 1184) = v22;
    v14 = swift_task_alloc();
    v14[2] = v15 + 1160;
    v14[3] = v15 + 1168;
    v14[4] = v15 + 1176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v20, "Failed fetching dose events for specified timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v15 + 2040);
  v7 = *(v15 + 2000);
  v5 = *(v15 + 1872);
  v6 = *(v15 + 1856);
  MEMORY[0x277D82BD8](oslog);
  v7(v5, v6);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v9 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v3 = *(*(v15 + 1128) + 8);

  return v3(v9);
}