void specialized static BinaryFloatingPoint<>.random<A>(in:using:)(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x20F2E9440](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, a2);
  }
}

uint64_t specialized static RaceWorkoutConfiguration.displayName.getter()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B45AE40);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

unint64_t lazy protocol witness table accessor for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys);
  }

  return result;
}

uint64_t _ss7Decoder_pWOcTm_1(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized RaceWorkoutConfiguration.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RaceWorkoutConfiguration.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

id specialized static RaceWorkoutConfiguration.canonical()()
{
  v0 = type metadata accessor for Date();
  v87 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0, v1);
  v106 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v82 - v6;
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v82 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v82 - v13;
  v88 = type metadata accessor for UUID();
  v85 = *(v88 - 8);
  v16 = MEMORY[0x28223BE20](v88, v15);
  v92 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v99 = &v82 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v104 = &v82 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v105 = &v82 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v100 = &v82 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v96 = &v82 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v82 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v82 - v39;
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v82 - v42;
  v91 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v44 = [objc_opt_self() mainBundle];
  v45 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B45ADC0);
  v95 = [objc_opt_self() imageNamed:v45 inBundle:v44 withConfiguration:0];

  v97 = v43;
  UUID.init()();
  v101 = v40;
  UUID.init()();
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1609.34, 1619.0);
  v47 = v46;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(480.0, 500.0);
  v49 = v48;
  v102 = v14;
  static Date.now.getter();
  v98 = v36;
  UUID.init()();
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1609.34, 1619.0);
  v51 = v50;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(400.0, 420.0);
  v53 = v52;
  static Date.now.getter();
  v103 = v11;
  Date.addingTimeInterval(_:)();
  v54 = v87;
  v55 = *(v87 + 8);
  v94 = v0;
  v90 = v87 + 8;
  v89 = v55;
  v55(v7, v0);
  if (v95 && (v56 = UIImagePNGRepresentation(v95)) != 0)
  {
    v57 = v56;
    v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v58;
  }

  else
  {
    v84 = 0;
    v83 = 0xC000000000000000;
  }

  v59 = v96;
  UUID.init()();
  v86 = specialized Occurrence.__allocating_init(count:)(0);
  v60 = v85;
  v61 = *(v85 + 16);
  v62 = v100;
  v63 = v88;
  v61(v100, v97, v88);
  v61(v105, v101, v63);
  v64 = *(v54 + 16);
  v93 = v7;
  v65 = v94;
  v64(v7, v102, v94);
  v61(v104, v98, v63);
  v64(v106, v103, v65);
  v61(v99, v59, v63);
  v66 = objc_allocWithZone(type metadata accessor for RaceWorkoutConfiguration(0));
  v67 = &v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  *v67 = 0x746C41206F6C6150;
  v67[1] = 0xE90000000000006FLL;
  v61(&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v62, v63);
  swift_beginAccess();
  v108 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v61(&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v105, v63);
  *&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v47;
  *&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v49;
  v68 = v94;
  v64(&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v93, v94);
  v61(&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v104, v63);
  *&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v51;
  *&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v53;
  v64(&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v106, v68);
  v69 = &v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v70 = v83;
  *v69 = v84;
  v69[1] = v70;
  *&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = 4;
  *&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
  *&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
  *&v66[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = 0x3FE999999999999ALL;
  v71 = v92;
  v72 = v99;
  v61(v92, v99, v63);
  *&v66[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v73 = *(v54 + 56);
  v73(&v66[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v68);
  v73(&v66[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v68);
  v74 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v75 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v75 - 8) + 56))(&v66[v74], 1, 1, v75);
  (*(v60 + 56))(&v66[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v63);
  v76 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v66[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v61(&v66[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v71, v63);
  *&v66[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v91;
  v66[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v66[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v86;
  swift_beginAccess();
  *&v66[v76] = 0;
  v66[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v77 = type metadata accessor for WorkoutConfiguration(0);
  v107.receiver = v66;
  v107.super_class = v77;
  v78 = objc_msgSendSuper2(&v107, sel_init);

  v79 = *(v60 + 8);
  v79(v71, v63);
  v79(v72, v63);
  v80 = v89;
  v89(v106, v68);
  v79(v104, v63);
  v80(v93, v68);
  v79(v105, v63);
  v79(v100, v63);
  v79(v96, v63);
  v80(v103, v68);
  v79(v98, v63);
  v80(v102, v68);
  v79(v101, v63);
  v79(v97, v63);
  return v78;
}

uint64_t _s10Foundation4DateVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for RaceWorkoutConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for RaceWorkoutConfiguration;
  if (!type metadata singleton initialization cache for RaceWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RaceWorkoutConfiguration(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<RaceFilter>();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<RaceFilter>()
{
  if (!lazy cache variable for type metadata for Published<RaceFilter>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<RaceFilter>);
    }
  }
}

uint64_t getEnumTagSinglePayload for RaceWorkoutConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RaceWorkoutConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

void key path setter for AddWorkoutActivityItemsDataSource.observers : AddWorkoutActivityItemsDataSource(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id AddWorkoutActivityItemsDataSource.observers.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AddWorkoutActivityItemsDataSource.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AddWorkoutActivityItemsDataSource.__allocating_init(reducedActivityTypesProvider:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) init];
  swift_unknownObjectRelease();
  return v2;
}

id AddWorkoutActivityItemsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AddWorkoutActivityItemsDataSource.init()()
{
  v1 = [objc_opt_self() weakObjectsHashTable];
  *&v0[OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AddWorkoutActivityItemsDataSource();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AddWorkoutActivityItemsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddWorkoutActivityItemsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AddWorkoutActivityItemsDataSource.addObserver(_:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  return [*(v3 + v6) *a3];
}

Swift::Void __swiftcall AddWorkoutActivityItemsDataSource.updateObservers()()
{
  v1 = specialized AddWorkoutActivityItemsDataSource.queryActivityPickerItems()();
  v2 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v3 = [*(v0 + v2) allObjects];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        if (v7)
        {
          v9 = v8;
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(v1, 2, ObjectType, v9);
        }
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  __break(1u);
}

id protocol witness for ActivityItemsDataSourceObservable.observers.getter in conformance AddWorkoutActivityItemsDataSource()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

id protocol witness for ActivityItemsDataSourceObservable.addObserver(_:) in conformance AddWorkoutActivityItemsDataSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = *v5;
  v9 = OBJC_IVAR____TtC11WorkoutCore33AddWorkoutActivityItemsDataSource_observers;
  swift_beginAccess();
  return [*(v8 + v9) *a5];
}

uint64_t specialized AddWorkoutActivityItemsDataSource.queryActivityPickerItems()()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0x4B524F575F444441, 0xEB0000000054554FLL);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = type metadata accessor for ButtonActivityPickerItem();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type] = 3;
  v10 = &v9[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  *v10 = v5;
  v10[1] = v7;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore18ActivityPickerItem_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore18ActivityPickerItem_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20B423A90;
  v13 = lazy protocol witness table accessor for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem();
  *(v12 + 32) = v11;
  *(v12 + 40) = v13;
  return v12;
}

unint64_t lazy protocol witness table accessor for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem()
{
  result = lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem;
  if (!lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem)
  {
    type metadata accessor for ButtonActivityPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem;
  if (!lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem)
  {
    type metadata accessor for ButtonActivityPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem);
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v41 = type metadata accessor for Date();
  v8 = MEMORY[0x28223BE20](v41, v7);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8, v10);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = MEMORY[0x277D84F90];
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v3)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1);
          v25 = v42;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
LABEL_14:

    return v39;
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x20F2E7A20](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

{
  return sub_20AECDBA4(a1, a2, a3);
}

uint64_t key path getter for ManagedConfigurationsViewModel.upNextConfigurations : ManagedConfigurationsViewModel@<X0>(void *a4@<X8>)
{
  return key path getter for ManagedConfigurationsViewModel.upNextConfigurations : ManagedConfigurationsViewModel(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t key path setter for ManagedConfigurationsViewModel.upNextConfigurations : ManagedConfigurationsViewModel(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ManagedConfigurationsViewModel.upNextConfigurations.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path getter for ManagedConfigurationsViewModel.$upNextConfigurations : ManagedConfigurationsViewModel(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ManagedConfigurationsViewModel.$upNextConfigurations : ManagedConfigurationsViewModel(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMR);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t ManagedConfigurationsViewModel.$upNextConfigurations.getter(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

BOOL ManagedConfigurationsViewModel.hasVisibleConfigurations.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  if (v8 >> 62)
  {
    v4 = __CocoaSet.count.getter();

    if (v4)
    {
      return 1;
    }
  }

  else
  {
    v0 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v0)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  if (!(v8 >> 62))
  {
    v1 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v1)
    {
      goto LABEL_5;
    }

    return 1;
  }

  v5 = __CocoaSet.count.getter();

  if (v5)
  {
    return 1;
  }

LABEL_5:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  if (v8 >> 62)
  {
    v6 = __CocoaSet.count.getter();

    if (v6)
    {
      return 1;
    }
  }

  else
  {
    v2 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  if (v8 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v7 != 0;
}

id ManagedConfigurationsViewModel.topSuggested.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v0 = v4;
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x20F2E7A20](0, v0);
    goto LABEL_6;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v0 + 32);
LABEL_6:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t ManagedConfigurationsViewModel.__allocating_init(configurations:previousDaysCount:futureDaysCount:)(unint64_t a1, void (*a2)(void, void, void), uint64_t a3)
{
  v6 = swift_allocObject();
  ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(a1, a2, a3);
  return v6;
}

char *ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(unint64_t a1, void (*a2)(void, void, void), uint64_t a3)
{
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  v8 = MEMORY[0x28223BE20](v236, v7);
  v222 = &v219 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v219 - v11;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  v14 = MEMORY[0x28223BE20](v233, v13);
  v220 = &v219 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v221 = &v219 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v238 = &v219 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v246 = &v219 - v23;
  v232 = type metadata accessor for Calendar.Component();
  v249 = *(v232 - 8);
  MEMORY[0x28223BE20](v232, v24);
  v231 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for Calendar();
  v237 = *(v262 - 8);
  v27 = MEMORY[0x28223BE20](v262, v26);
  v29 = &v219 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v260 = &v219 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v34 = MEMORY[0x28223BE20](v32 - 8, v33);
  v252 = &v219 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v227 = (&v219 - v38);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v226 = &v219 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v225 = &v219 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v224 = &v219 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v229 = &v219 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v248 = &v219 - v53;
  MEMORY[0x28223BE20](v52, v54);
  v56 = (&v219 - v55);
  v265 = type metadata accessor for Date();
  v256 = *(v265 - 8);
  v58 = MEMORY[0x28223BE20](v265, v57);
  v251 = &v219 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v58, v60);
  v63 = &v219 - v62;
  v65 = MEMORY[0x28223BE20](v61, v64);
  v235 = &v219 - v66;
  v68 = MEMORY[0x28223BE20](v65, v67);
  v70 = &v219 - v69;
  v72 = MEMORY[0x28223BE20](v68, v71);
  v242 = &v219 - v73;
  v75 = MEMORY[0x28223BE20](v72, v74);
  v234 = &v219 - v76;
  v78 = MEMORY[0x28223BE20](v75, v77);
  v247 = &v219 - v79;
  v81 = MEMORY[0x28223BE20](v78, v80);
  v243 = &v219 - v82;
  v84 = MEMORY[0x28223BE20](v81, v83);
  v259 = &v219 - v85;
  MEMORY[0x28223BE20](v84, v86);
  v230 = a2;
  *&v3[OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_previousDaysCount] = a2;
  v244 = v3;
  v228 = a3;
  *&v3[OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_futureDaysCount] = a3;
  v245 = &v219 - v87;
  Date.init()();
  v269 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v240 = v70;
    v241 = v63;
    v263 = a1;
    v264 = i;
    v223 = v12;
    v239 = v29;
    if (i)
    {
      v63 = 0;
      v12 = (a1 & 0xC000000000000001);
      v261 = a1 & 0xFFFFFFFFFFFFFF8;
      v70 = (v256 + 48);
      v257 = (v256 + 32);
      v255 = (v237 + 8);
      v254 = (v256 + 8);
      v90 = &_s10Foundation4DateVSgMd;
      v258 = v56;
      v253 = (v256 + 48);
      v250 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v12)
        {
          v91 = MEMORY[0x20F2E7A20](v63, a1);
        }

        else
        {
          if (v63 >= *(v261 + 16))
          {
            goto LABEL_54;
          }

          v91 = *(a1 + 8 * v63 + 32);
        }

        a1 = v91;
        v29 = (v63 + 1);
        if (__OFADD__(v63, 1))
        {
          break;
        }

        v92 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
        swift_beginAccess();
        _s10Foundation4DateVSgWOcTm_1(a1 + v92, v56, v90, &_s10Foundation4DateVSgMR);
        v93 = *v70;
        v94 = v90;
        v95 = v265;
        if ((*v70)(v56, 1, v265) == 1)
        {

          i = _s10Foundation4DateVSgWOhTm_2(v56, v94, &_s10Foundation4DateVSgMR);
          v90 = v94;
        }

        else
        {
          v96 = v94;
          v97 = v259;
          (*v257)(v259, v56, v95);
          v98 = v260;
          static Calendar.current.getter();
          v99 = Calendar.isDateInToday(_:)();
          (*v255)(v98, v262);
          (*v254)(v97, v95);
          if (v99)
          {
            v100 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
            swift_beginAccess();
            v101 = v248;
            _s10Foundation4DateVSgWOcTm_1(a1 + v100, v248, v96, &_s10Foundation4DateVSgMR);
            v102 = v95;
            v90 = v96;
            v70 = v253;
            LODWORD(v100) = v93(v101, 1, v102);
            _s10Foundation4DateVSgWOhTm_2(v101, v90, &_s10Foundation4DateVSgMR);
            v12 = v250;
            if (v100 == 1)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              i = specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            v56 = v258;
          }

          else
          {

            v12 = v250;
            v56 = v258;
            v90 = v96;
            v70 = v253;
          }
        }

        ++v63;
        a1 = v263;
        if (v29 == v264)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_19:
    MEMORY[0x28223BE20](i, v88);
    v217 = v245;

    v269 = specialized Array._copyToContiguousArray()(v103, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
    specialized MutableCollection<>.sort(by:)(partial apply for closure #2 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v219 - 4));
    v104 = v229;
    v250 = 0;

    v105 = v269;
    v106 = OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__upNextConfigurations;
    swift_beginAccess();
    v267 = v105;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
    v219 = v106;
    v248 = v107;
    Published.init(initialValue:)();
    swift_endAccess();
    static Calendar.autoupdatingCurrent.getter();
    Calendar.startOfDay(for:)();
    v108 = v249;
    v110 = (v249 + 104);
    v109 = *(v249 + 13);
    v111 = v231;
    LODWORD(v258) = *MEMORY[0x277CC99A0];
    v112 = v232;
    v109(v231);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v114 = *(v108 + 1);
    v113 = v108 + 8;
    v259 = v114;
    (v114)(v111, v112);
    v115 = v256;
    v116 = *(v256 + 48);
    v117 = v265;
    v255 = (v256 + 48);
    v261 = v116;
    if (v116(v104, 1, v265) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v104, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v208 = "sViewModel.swift";
      v209 = 0xD00000000000001CLL;
      v218 = 0;
      v210 = 58;
      goto LABEL_66;
    }

    v118 = *(v115 + 32);
    v254 = (v115 + 32);
    v118(v247, v104, v117);
    v119 = *MEMORY[0x277CC9968];
    v253 = v110;
    (v109)(v111, v119, v112);
    if (__OFSUB__(0, v230))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (__OFADD__(-v230, 1))
    {
      goto LABEL_59;
    }

    v230 = v109;
    v257 = v118;
    v120 = v224;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v259)(v111, v112);
    v249 = v113;
    v121 = v265;
    v113 = v261;
    if ((v261)(v120, 1, v265) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v120, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v211 = "I still believe in yesterday";
      v218 = 0;
      v212 = 63;
      goto LABEL_68;
    }

    v257(v234, v120, v121);
    Calendar.startOfDay(for:)();
    v109 = v253;
    v122 = v230;
    (v230)(v111, v119, v112);
    v123 = v225;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v259)(v111, v112);
    if ((v113)(v123, 1, v121) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v123, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v208 = "ine previous days ago";
      v209 = 0xD00000000000001DLL;
      v218 = 0;
      v210 = 71;
LABEL_66:
      v217 = v210;
      goto LABEL_70;
    }

    v257(v240, v123, v121);
    v122(v111, v119, v112);
    v124 = v226;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v259)(v111, v112);
    if ((v113)(v124, 1, v121) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v124, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v211 = "How can there be no tomorrow?";
      v218 = 0;
      v212 = 76;
LABEL_68:
      v217 = v212;
      v213 = v211 | 0x8000000000000000;
      v209 = 0xD000000000000025;
LABEL_71:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v209, v213, "WorkoutCore/ManagedConfigurationsViewModel.swift", 48, 2, v217, v218);
      __break(1u);
LABEL_72:

      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
      (*(*(v214 - 8) + 8))(&v113[v219], v214);
LABEL_74:
      type metadata accessor for ManagedConfigurationsViewModel(0);
      result = swift_deallocPartialClassInstance();
      __break(1u);
      return result;
    }

    v257(v235, v124, v121);
    v122(v111, v258, v112);
    v109 = v227;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v259)(v111, v112);
    if ((v113)(v109, 1, v121) == 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v109, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v208 = "ine after end of days";
      v218 = 0;
      v217 = 81;
      v209 = 0xD00000000000002ALL;
LABEL_70:
      v213 = v208 | 0x8000000000000000;
      goto LABEL_71;
    }

    v125 = v257;
    v257(v241, v109, v121);
    v126 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v127 = v242;
    v128 = v247;
    v129 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v130 = v256;
    if ((v129 & 1) == 0)
    {
      goto LABEL_60;
    }

    v131 = *(v256 + 16);
    v132 = v223;
    v131(v223, v127, v121);
    v133 = v222;
    v259 = v126;
    v134 = v236;
    v135 = v132 + *(v236 + 48);
    v258 = v131;
    v131(v135, v128, v121);
    _s10Foundation4DateVSgWOcTm_1(v132, v133, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
    v136 = *(v134 + 48);
    v137 = v246;
    v125(v246, v133, v121);
    v139 = *(v130 + 8);
    v138 = v130 + 8;
    v139(v133 + v136, v121);
    outlined init with take of (lower: Date, upper: Date)(v132, v133);
    v140 = *(v134 + 48);
    v141 = v233;
    v257((v137 + *(v233 + 36)), v133 + v140, v121);
    v142 = v241;
    v253 = v139;
    v139(v133, v121);
    v143 = v240;
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v144 = v258;
      (v258)(v132, v143, v121);
      v145 = v236;
      v144(v132 + *(v236 + 48), v142, v121);
      _s10Foundation4DateVSgWOcTm_1(v132, v133, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
      v146 = v141;
      v147 = *(v145 + 48);
      v148 = v238;
      v149 = v257;
      v257(v238, v133, v121);
      v150 = v133 + v147;
      v151 = v253;
      v253(v150, v121);
      outlined init with take of (lower: Date, upper: Date)(v132, v133);
      v149(&v148[*(v146 + 36)], v133 + *(v145 + 48), v121);
      v256 = v138;
      v151(v133, v121);
      if (one-time initialization token for app == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_62;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
LABEL_29:
    v152 = type metadata accessor for Logger();
    v153 = __swift_project_value_buffer(v152, static WOLog.app);
    v154 = v221;
    _s10Foundation4DateVSgWOcTm_1(v246, v221, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
    v155 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v155, v12))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v267 = v157;
      *v156 = 136315138;
      v269 = 0;
      v270 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x20F2E6D80](3026478, 0xE300000000000000);
      _print_unlocked<A, B>(_:_:)();
      v158 = v269;
      v159 = v270;
      _s10Foundation4DateVSgWOhTm_2(v154, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
      v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v159, &v267);

      *(v156 + 4) = v160;
      _os_log_impl(&dword_20AEA4000, v155, v12, "filter past configurations with range: %s", v156, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v157);
      MEMORY[0x20F2E9420](v157, -1, -1);
      MEMORY[0x20F2E9420](v156, -1, -1);
    }

    else
    {

      v161 = _s10Foundation4DateVSgWOhTm_2(v154, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
    }

    v163 = v263;
    v29 = v264;
    v113 = v244;
    v164 = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](v161, v162);
    v217 = v246;

    v165 = v163;
    v109 = v250;
    v166 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #3 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v219 - 4), v165);
    if (v109)
    {
      goto LABEL_72;
    }

    MEMORY[0x28223BE20](v166, v167);
    a1 = (&v219 - 4);
    v217 = v245;

    v269 = specialized Array._copyToContiguousArray()(v168, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
    specialized MutableCollection<>.sort(by:)(partial apply for closure #4 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v219 - 4));
    v236 = 0;
    v249 = v153;

    v169 = v269;
    v170 = OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__pastConfigurations;
    swift_beginAccess();
    v267 = v169;
    v232 = v170;
    Published.init(initialValue:)();
    v171 = swift_endAccess();
    v267 = v164;
    v70 = v252;
    if (!v29)
    {
      break;
    }

    v63 = 0;
    v173 = v263;
    v259 = (v263 & 0xC000000000000001);
    v258 = v263 & 0xFFFFFFFFFFFFFF8;
    v250 = (v237 + 8);
    v56 = &_s10Foundation4DateVSgMd;
    while (1)
    {
      if (v259)
      {
        v174 = MEMORY[0x20F2E7A20](v63, v173);
      }

      else
      {
        if (v63 >= *(v258 + 16))
        {
          goto LABEL_56;
        }

        v174 = *(v173 + 8 * v63 + 32);
      }

      a1 = v174;
      v12 = (v63 + 1);
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v175 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
      swift_beginAccess();
      _s10Foundation4DateVSgWOcTm_1(a1 + v175, v70, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v176 = v70;
      v177 = v70;
      v178 = v265;
      if ((v261)(v176, 1, v265) == 1)
      {

        v171 = _s10Foundation4DateVSgWOhTm_2(v177, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v70 = v177;
      }

      else
      {
        v179 = v251;
        v257(v251, v177, v178);
        v180 = v260;
        static Calendar.current.getter();
        v181 = Calendar.isDateInToday(_:)();
        (*v250)(v180, v262);
        v253(v179, v178);
        if (v181)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v173 = v263;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v171 = specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v70 = v252;
        v29 = v264;
      }

      ++v63;
      if (v12 == v29)
      {
        v113 = v244;
        goto LABEL_48;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

LABEL_48:
  v182 = v238;
  MEMORY[0x28223BE20](v171, v172);
  v183 = v245;
  v217 = v245;

  v267 = specialized Array._copyToContiguousArray()(v184, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
  v185 = v236;
  specialized MutableCollection<>.sort(by:)(partial apply for closure #6 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v219 - 4));
  if (v185)
  {

    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
    v216 = *(*(v215 - 8) + 8);
    v216(&v113[v219], v215);
    v216(&v113[v232], v215);
    goto LABEL_74;
  }

  v186 = v267;
  v187 = OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__todayConfigurations;
  swift_beginAccess();
  v266 = v186;
  v264 = v187;
  Published.init(initialValue:)();
  swift_endAccess();
  v188 = v220;
  _s10Foundation4DateVSgWOcTm_1(v182, v220, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v266 = v192;
    v267 = 0;
    *v191 = 136315138;
    v268 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](3026478, 0xE300000000000000);
    v193 = v238;
    _print_unlocked<A, B>(_:_:)();
    v194 = v267;
    v195 = v268;
    _s10Foundation4DateVSgWOhTm_2(v188, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
    v196 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v195, &v266);

    *(v191 + 4) = v196;
    _os_log_impl(&dword_20AEA4000, v189, v190, "filter future configurations with range: %s", v191, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v192);
    v113 = v244;
    MEMORY[0x20F2E9420](v192, -1, -1);
    v197 = v191;
    v182 = v193;
    v183 = v245;
    MEMORY[0x20F2E9420](v197, -1, -1);
  }

  else
  {

    v198 = _s10Foundation4DateVSgWOhTm_2(v188, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  }

  v200 = v247;
  MEMORY[0x28223BE20](v198, v199);
  v201 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #7 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v219 - 4), v263);
  MEMORY[0x28223BE20](v201, v202);
  v217 = v183;

  v267 = specialized Array._copyToContiguousArray()(v203, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
  specialized MutableCollection<>.sort(by:)(partial apply for closure #8 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:), (&v219 - 4));
  v204 = v265;

  v205 = v267;
  swift_beginAccess();
  v266 = v205;
  Published.init(initialValue:)();
  swift_endAccess();
  v206 = v253;
  v253(v241, v204);
  v206(v235, v204);
  v206(v240, v204);
  v206(v242, v204);
  v206(v234, v204);
  v206(v200, v204);
  v206(v243, v204);
  (*(v237 + 8))(v239, v262);
  _s10Foundation4DateVSgWOhTm_2(v182, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  _s10Foundation4DateVSgWOhTm_2(v246, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  v206(v183, v204);
  return v113;
}

uint64_t closure #3 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_1(v12 + v13, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
      v14 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    else
    {
      v14 = 0;
    }

    (*(v8 + 8))(v11, v7);
  }

  return v14 & 1;
}

uint64_t closure #2 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v30 - v20;
  v22 = *a1;
  v23 = *a2;
  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_1(v22 + v24, v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v25 = *(v14 + 48);
  if (v25(v12, 1, v13) == 1)
  {
    (*(v14 + 16))(v21, v31, v13);
    if (v25(v12, 1, v13) != 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
  }

  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_1(v23 + v26, v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v25(v9, 1, v13) == 1)
  {
    (*(v14 + 16))(v18, v31, v13);
    if (v25(v9, 1, v13) != 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v9, v13);
  }

  v27 = static Date.< infix(_:_:)();
  v28 = *(v14 + 8);
  v28(v18, v13);
  v28(v21, v13);
  return v27 & 1;
}

uint64_t closure #7 in ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_1(v12 + v13, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v14 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
      v14 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    else
    {
      v14 = 0;
    }

    (*(v8 + 8))(v11, v7);
  }

  return v14 & 1;
}

uint64_t ManagedConfigurationsViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__upNextConfigurations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__todayConfigurations, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__pastConfigurations, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__futureConfigurations, v2);
  return v0;
}

uint64_t ManagedConfigurationsViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__upNextConfigurations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__todayConfigurations, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__pastConfigurations, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel__futureConfigurations, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ManagedConfigurationsViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManagedConfigurationsViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t ManagedConfigurationsViewModel.hash(into:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  specialized Array<A>.hash(into:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  specialized Array<A>.hash(into:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  specialized Array<A>.hash(into:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  specialized Array<A>.hash(into:)();

  MEMORY[0x20F2E7FF0](*(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_previousDaysCount));
  return MEMORY[0x20F2E7FF0](*(v0 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_futureDaysCount));
}

Swift::Int ManagedConfigurationsViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  ManagedConfigurationsViewModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ManagedConfigurationsViewModel()
{
  Hasher.init(_seed:)();
  ManagedConfigurationsViewModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ManagedConfigurationsViewModel(uint64_t a1)
{
  Hasher.init(_seed:)();
  ManagedConfigurationsViewModel.hash(into:)();
  return Hasher._finalize()();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(void **, void **), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    specialized Array.remove(at:)(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
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
  v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      specialized Array.remove(at:)(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *__src, id *a2, id *a3, unint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = v52 - v17 + 7;
        if (v52 - v17 >= 0)
        {
          v43 = v52 - v17;
        }

        if (v7 < v17 || v7 >= (v17 + (v43 & 0xFFFFFFFFFFFFFFF8)) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = v17 + 1;
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = v52 + v25;
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = v5 + 1;
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= (v14 + (v44 & 0xFFFFFFFFFFFFFFF8)) || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

unint64_t specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t type metadata accessor for ManagedConfigurationsViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for ManagedConfigurationsViewModel;
  if (!type metadata singleton initialization cache for ManagedConfigurationsViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL specialized static ManagedConfigurationsViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v17);

  v4 = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v17);

  v5 = specialized _arrayForceCast<A, B>(_:)(v17);

  v6 = specialized Array.isEquivalent(to:)(v5, v4);

  if (v6 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v17), , , v7 = v17, swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v17), , , v8 = specialized _arrayForceCast<A, B>(_:)(v17), , v9 = specialized Array.isEquivalent(to:)(v8, v7), , , (v9) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v17), , , v10 = v17, swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v17), , , v11 = specialized _arrayForceCast<A, B>(_:)(v17), , v12 = specialized Array.isEquivalent(to:)(v11, v10), , , (v12) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v17), , , v13 = v17, swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v17), , , v14 = specialized _arrayForceCast<A, B>(_:)(v17), , v15 = specialized Array.isEquivalent(to:)(v14, v13), , , (v15) && *(a1 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_previousDaysCount) == *(a2 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_previousDaysCount))
  {
    return *(a1 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_futureDaysCount) == *(a2 + OBJC_IVAR____TtC11WorkoutCore30ManagedConfigurationsViewModel_futureDaysCount);
  }

  else
  {
    return 0;
  }
}

void type metadata completion function for ManagedConfigurationsViewModel(uint64_t a1)
{
  type metadata accessor for Published<[WorkoutConfiguration]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[WorkoutConfiguration]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[WorkoutConfiguration]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[WorkoutConfiguration]>);
    }
  }
}

uint64_t type metadata accessor for HKQuantitySample(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t lazy protocol witness table accessor for type [WorkoutChartDataElement] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t MeanDistributionByPosition.__allocating_init(intervals:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized MeanDistributionByPosition.init(intervals:)(a1);

  return v2;
}

uint64_t MeanDistributionByTime.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for MeanDistributionByPosition();
  swift_allocObject();
  *(v0 + 16) = specialized MeanDistributionByPosition.init(intervals:)(&outlined read-only object #0 of MeanDistributionByTime.init());
  return v0;
}

uint64_t MeanDistributionByTime.init()()
{
  type metadata accessor for MeanDistributionByPosition();
  swift_allocObject();
  *(v0 + 16) = specialized MeanDistributionByPosition.init(intervals:)(&outlined read-only object #0 of MeanDistributionByTime.init());
  return v0;
}

uint64_t MeanDistributionByTime.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MeanDistributionByPosition.Bucket.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MeanDistributionByPosition.init(intervals:)(uint64_t a1)
{
  v1 = specialized MeanDistributionByPosition.init(intervals:)(a1);

  return v1;
}

Swift::Void __swiftcall MeanDistributionByPosition.add(_:position:)(Swift::Double _, Swift::Double position)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_10:
    v13 = *(*(v6 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));

    WindowedAccumulator.add(_:position:)(_, position);
    v15 = *(v13 + 16);
    if (*(v15 + 24))
    {
      v16 = *(*(v15 + 48) + 16);
      if (v16)
      {
        v17 = *(v15 + 56) / v16;
      }

      else
      {
        v17 = 0.0;
      }
    }

    else
    {
      WindowedAccumulator.positionWindowMean()(v14);
      if (v19)
      {
        goto LABEL_4;
      }

      v17 = v18;
    }

    if (*(v13 + 24) < v17)
    {
      *(v13 + 24) = v17;
      *(v13 + 32) = position;
    }

LABEL_4:
    v9 &= v9 - 1;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  if (*(v3 + 24) > position)
  {
    *(v3 + 24) = position;
  }

  if (*(v3 + 32) < position)
  {
    *(v3 + 32) = position;
  }
}

void MeanDistributionByPosition.results()()
{
  v1 = *(v0 + 32) - *(v0 + 24);
  if (v1 > 0.0)
  {
    v2 = *(v0 + 16);
    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v7 << 6);
        v11 = *(*(v2 + 48) + 8 * v10);
        if (v11 <= v1)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v13 = *(*(*(v2 + 56) + 8 * v10) + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
      }

      *(v8 + 2) = v15 + 1;
      v16 = &v8[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v12 >= v6)
      {

        return;
      }

      v5 = *(v2 + 64 + 8 * v12);
      ++v7;
      if (v5)
      {
        v7 = v12;
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall MeanDistributionByPosition.debug()()
{
  v2 = *(v0 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);

      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = (v7 << 9) | (8 * __clz(__rbit64(v5)));
        v11 = *(*(v2 + 48) + v10);
        v1 = *(*(v2 + 56) + v10);
        v12 = v1[3];
        v13 = v1[4];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        }

        v15 = *(v8 + 2);
        v14 = *(v8 + 3);
        if (v15 >= v14 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
        }

        v5 &= v5 - 1;

        *(v8 + 2) = v15 + 1;
        v16 = &v8[24 * v15];
        *(v16 + 4) = v11;
        *(v16 + 5) = v12;
        *(v16 + 6) = v13;
      }

      while (v5);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20B423A90;
  v19 = v8;

  specialized MutableCollection<>.sort(by:)(&v19);

  v18 = v19;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMd, &_sSay11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMR);
  *(v17 + 32) = v18;
  print(_:separator:terminator:)();
}

Swift::Double_optional __swiftcall MeanDistributionByPosition.result(window:)(Swift::Double window)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(window), (v4 & 1) != 0))
  {
    v5 = *(*(*(v2 + 56) + 8 * v3) + 24);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  result.value = window;
  result.is_nil = v5;
  return result;
}

uint64_t MeanDistributionByPosition.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 3;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 3, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t specialized MeanDistributionByPosition.init(intervals:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_20B4334B0;
  v3 = MEMORY[0x277D84F90];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore26MeanDistributionByPositionC6BucketCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_15:
    result = v23;
    *(v23 + 16) = v4;
    return result;
  }

  v6 = (a1 + 32);
  type metadata accessor for MeanDistributionByPosition.Bucket();
  while (1)
  {
    v7 = *v6;
    v8 = swift_allocObject();
    type metadata accessor for WindowedAccumulator();
    v8[3] = 0;
    v8[4] = 0;
    v9 = swift_allocObject();
    *(v9 + 48) = v3;
    *(v9 + 56) = 0;
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 257;
    v8[2] = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    v13 = v4[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v4[3] < v16)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v21 = v11;
    specialized _NativeDictionary.copy()();
    v11 = v21;
    if (v17)
    {
LABEL_3:
      *(v4[7] + 8 * v11) = v8;

      goto LABEL_4;
    }

LABEL_11:
    v4[(v11 >> 6) + 8] |= 1 << v11;
    *(v4[6] + 8 * v11) = v7;
    *(v4[7] + 8 * v11) = v8;
    v19 = v4[2];
    v15 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v15)
    {
      goto LABEL_17;
    }

    v4[2] = v20;
LABEL_4:
    ++v6;
    if (!--v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for DebugResult #1 in MeanDistributionByPosition.debug()(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DebugResult #1 in MeanDistributionByPosition.debug()(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t MediaMomentAlert.narratorName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_narratorName);

  return v1;
}

id MediaMomentAlert.__allocating_init(backgroundArt:narratorName:startTime:duration:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v6);
  *&v17[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_backgroundArt] = a1;
  v18 = &v17[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_narratorName];
  *v18 = a2;
  *(v18 + 1) = a3;
  *&v17[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_duration] = a5;
  *&v17[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_startTime] = a4;
  v23.receiver = v17;
  v23.super_class = v6;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  [v20 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v13 + 8))(v16, v12);
  [v20 setEventDate_];

  return v20;
}

id MediaMomentAlert.init(backgroundArt:narratorName:startTime:duration:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_backgroundArt] = a1;
  v16 = &v5[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_narratorName];
  *v16 = a2;
  *(v16 + 1) = a3;
  *&v5[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_duration] = a5;
  *&v5[OBJC_IVAR____TtC11WorkoutCore16MediaMomentAlert_startTime] = a4;
  v17 = type metadata accessor for MediaMomentAlert();
  v22.receiver = v5;
  v22.super_class = v17;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  [v19 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v15, v11);
  [v19 setEventDate_];

  return v19;
}

id MediaMomentAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaMomentAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaMomentAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall Array.isEquivalent(to:)(Swift::OpaquePointer to)
{
  (MEMORY[0x28223BE20])(to._rawValue);
  v4 = MEMORY[0x20F2E6FF0](v2, v3);
  if (v4 != *(to._rawValue + 2))
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  if (!v4)
  {
    v10 = 1;
LABEL_12:
    LOBYTE(v4) = v10 & 1;
    return v4;
  }

  v6 = 0;
  v7 = to._rawValue + 32;
  while (v5)
  {
    Array.subscript.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
    if (!swift_dynamicCast())
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      outlined destroy of Equivalent?(v12);
      goto LABEL_11;
    }

    outlined init with take of Equivalent(v12, v14);
    v9 = v15;
    v8 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = (*(v8 + 8))(v7, v9, v8);
    LOBYTE(v4) = __swift_destroy_boxed_opaque_existential_1(v14);
    if (v10)
    {
      ++v6;
      v7 += 40;
      if (--v5)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  __break(1u);
  return v4;
}

uint64_t outlined destroy of Equivalent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pSgMd, &_s11WorkoutCore10Equivalent_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *LocationPositionAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LocationPositionAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for LocationPositionAccumulator.invalidationTimer : LocationPositionAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t (*LocationPositionAccumulator.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return LocationPositionAccumulator.delegate.modify;
}

id @objc LocationPositionAccumulator.delegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t LocationPositionAccumulator.delegate.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*LocationPositionAccumulator.alertDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return LocationPositionAccumulator.alertDelegate.modify;
}

void LocationPositionAccumulator.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
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

double LocationPositionAccumulator.locationPoints.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t key path setter for LocationPositionAccumulator.locationPoints : LocationPositionAccumulator(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_locationPoints;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

char *LocationPositionAccumulator.init(builder:liveWorkoutConfiguration:)(void *a1, char *a2)
{
  v62 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v61 = &v56 - v9;
  v10 = type metadata accessor for WorkoutPlan.Route();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_locationPoints] = MEMORY[0x277D84F90];
  v60 = v11;
  v15 = *(v11 + 56);
  v15(&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_route], 1, 1, v10);
  *&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_raceLocationProvider] = 0;
  *&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_racePositionProvider] = 0;
  v16 = &v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition];
  *v16 = 0;
  *(v16 + 2) = 0;
  v16[12] = 1;
  v17 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration;
  v18 = *&a2[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v20 = *(v18 + v19);
  v21 = a2;
  v22 = v62;
  *&v2[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_activityType] = v20;
  v23 = type metadata accessor for LocationPositionAccumulator(0);
  v64.receiver = v2;
  v64.super_class = v23;
  v24 = v20;
  v25 = objc_msgSendSuper2(&v64, sel_initWithBuilder_, v22);
  v26 = *&v21[v17];
  type metadata accessor for RaceWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {

    return v25;
  }

  v57 = v15;
  v58 = v25;
  v27 = v60;
  v28 = v61;
  v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if (([*(v26 + v29) supportsCustomRouteAlerts] & 1) == 0)
  {

    return v58;
  }

  v30 = *&v21[v17];
  v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  swift_beginAccess();
  outlined init with copy of WorkoutPlan.Route?(v30 + v31, v28, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v32 = v27;
  v33 = *(v27 + 48);
  v34 = v10;
  if (v33(v28, 1, v10) == 1)
  {

    outlined destroy of WorkoutPlan.Route?(v28, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    return v58;
  }

  v35 = v14;
  (*(v32 + 32))(v14, v28, v34);
  v36 = v59;
  (*(v32 + 16))(v59, v35, v34);
  v57(v36, 0, 1, v34);
  v37 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_route;
  v25 = v58;
  swift_beginAccess();
  outlined assign with take of WorkoutPlan.Route?(v36, &v25[v37]);
  swift_endAccess();
  v38 = WorkoutPlan.Route.routePoints(timestampAnchor:pointsLimit:)(0, -1.0);
  v39 = v22;
  v40 = specialized _arrayForceCast<A, B>(_:)(v38);

  v41 = specialized _arrayConditionalCast<A, B>(_:)(v40);

  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v42 = v41;
  }

  v61 = v42;
  v43 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_activityType;
  v44 = [*&v25[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_activityType] effectiveTypeIdentifier];
  v45 = objc_allocWithZone(type metadata accessor for RaceLocationProvider());
  v46 = RaceLocationProvider.init(activity:)(v44);
  v47 = objc_allocWithZone(type metadata accessor for RacePositionProvider());
  v48 = v46;
  v59 = v21;
  v49 = v48;
  v50 = v39;
  v51 = specialized RacePositionProvider.init(raceLocationProvider:builder:)(v49, v50, v47);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v52 = &v51[OBJC_IVAR___WORacePositionProvider_routeProviderDelegate];
  swift_beginAccess();
  *(v52 + 1) = &protocol witness table for LocationPositionAccumulator;
  swift_unknownObjectWeakAssign();
  v63 = v61;
  RacePositionProvider.activate(raceRoute:activity:)(&v63, [*&v25[v43] effectiveTypeIdentifier]);

  RaceLocationProvider.activate()();

  (*(v32 + 8))(v35, v34);
  v53 = *&v25[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_raceLocationProvider];
  *&v25[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_raceLocationProvider] = v49;

  v54 = *&v25[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_racePositionProvider];
  *&v25[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_racePositionProvider] = v51;

  return v25;
}

void LocationPositionAccumulator.accumulatorDidStart(withStart:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = aBlock - v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized LocationManager.add(observer:)(v4, static LocationManager.shared);
  v12 = *&v4[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_racePositionProvider];
  if (v12)
  {
    outlined init with copy of WorkoutPlan.Route?(a1, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v13 = type metadata accessor for Date();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v11, 1, v13);
    v16 = v12;
    isa = 0;
    if (v15 != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v14 + 8))(v11, v13);
    }

    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_20;
      v18 = _Block_copy(aBlock);
    }

    else
    {
      v18 = 0;
    }

    [v16 accumulatorDidStartWithStartDate:isa handler:v18];
    _Block_release(v18);
  }
}

Swift::Void __swiftcall LocationPositionAccumulator.accumulatorDidStop()()
{
  v1 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  [*&v0[v1] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static LocationManager.shared;
  v4 = *(static LocationManager.shared + OBJC_IVAR___WOCoreLocationManager_queue);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = _s11WorkoutCore15LocationManagerC6remove8observeryAA0cD8Observer_p_tFyyXEfU_TA_0;
  *(v6 + 24) = v5;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_6_3;
  v7 = _Block_copy(aBlock);
  v8 = v0;
  v9 = v3;

  v10 = v4;
  v11 = v7;
  v12 = v10;
  label = dispatch_queue_get_label(v12);
  v14 = dispatch_queue_get_label(0);

  if (label == v14)
  {
    v15 = objc_autoreleasePoolPush();
    v11[2](v11);
    objc_autoreleasePoolPop(v15);
  }

  else
  {
    dispatch_sync(v12, v11);
  }

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    [*&v8[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_racePositionProvider] accumulatorDidStop];
  }
}

void LocationPositionAccumulator.recoverLocations(fromStartDate:healthStore:workoutUUID:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.app);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[LocationPositionAccumulator] Location recovery", v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(MEMORY[0x277CCDC88]);

  v10 = a2;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v14[4] = partial apply for closure #1 in LocationPositionAccumulator.recoverLocations(fromStartDate:healthStore:workoutUUID:);
  v14[5] = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutRouteQuery, @guaranteed [CLLocation]?, @unowned Bool, @guaranteed Error?) -> ();
  v14[3] = &block_descriptor_15_1;
  v12 = _Block_copy(v14);
  v13 = [v9 initWithActiveWorkoutUUID:isa dataHandler:v12];
  _Block_release(v12);

  [v10 executeQuery_];
}

void closure #1 in LocationPositionAccumulator.recoverLocations(fromStartDate:healthStore:workoutUUID:)(uint64_t a1, unint64_t a2, char a3, id a4, uint64_t a5, void *a6)
{
  p_cache = &OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider.cache;
  if (a4)
  {
    v12 = a4;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.app);
    v14 = a4;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v17 = 136315138;
      v18 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v19 = String.init<A>(describing:)();
      v21 = a1;
      v22 = a6;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v32);
      p_cache = (&OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider + 16);

      *(v17 + 4) = v23;
      a6 = v22;
      a1 = v21;
      _os_log_impl(&dword_20AEA4000, v15, v16, "[LocationPositionAccumulator] route query error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_1(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    else
    {
    }
  }

  if (p_cache[333] != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.app);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    if (a2)
    {
      if (a2 >> 62)
      {
        v28 = __CocoaSet.count.getter();
      }

      else
      {
        v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v28 = 0;
    }

    *(v27 + 4) = v28;

    _os_log_impl(&dword_20AEA4000, v25, v26, "[LocationPositionAccumulator] Recovered samples from locations: %ld", v27, 0xCu);
    MEMORY[0x20F2E9420](v27, -1, -1);

    if (!a2)
    {
      return;
    }
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    LocationPositionAccumulator.process(locations:)(a2);
  }

  if (a3)
  {
    [a6 stopQuery_];
  }
}

uint64_t LocationPositionAccumulator.process(locations:)(unint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  v14 = objc_opt_self();
  v15 = v1;

  if ([v14 isMainThread])
  {
    closure #1 in LocationPositionAccumulator.process(locations:)(a1, v15);
  }

  else
  {
    _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v23 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for closure #1 in LocationPositionAccumulator.process(locations:);
    *(v17 + 24) = v13;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_1;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_54_0;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v21 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v22;
    v18 = v23;
    MEMORY[0x20F2E7580](0, v12, v7, v22);
    _Block_release(v19);

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v21);
  }
}

uint64_t closure #1 in LocationPositionAccumulator.process(locations:)(unint64_t a1, unint64_t a2)
{
  v17 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_21:
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
LABEL_3:
      v16 = a2;
      a2 = 0;
      v5 = &selRef_adjustedStatisticsForStatistics_;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x20F2E7A20](a2, a1);
        }

        else
        {
          if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v6 = *(a1 + 8 * a2 + 32);
        }

        v7 = v6;
        v8 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (([v6 type] == 1 || objc_msgSend(v7, sel_type) == 9 || objc_msgSend(v7, sel_type) == 3 || objc_msgSend(v7, sel_type) == 11) && (objc_msgSend(v7, v5[346], v16), v9 < 50.0))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v5 = &selRef_adjustedStatisticsForStatistics_;
        }

        else
        {
        }

        ++a2;
      }

      while (v8 != v4);
      a2 = v16;
      v10 = v17;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v10 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_23:
    if ((v10 & 0x4000000000000000) == 0)
    {
      if (!*(v10 + 16))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

LABEL_28:
  if (!__CocoaSet.count.getter())
  {
LABEL_29:
  }

LABEL_25:
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v11);
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 locationPositionAccumulator:a2 didUpdateLocations:isa];

    return swift_unknownObjectRelease();
  }
}

id LocationPositionAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id LocationPositionAccumulator.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LocationPositionAccumulator(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance LocationPositionAccumulator()
{
  v1 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance LocationPositionAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t LocationPositionAccumulator.queryForPoints(timestampAnchor:numberOfPoints:completion:)(uint64_t a1, void (*a2)(void), double a3)
{
  v17 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for WorkoutPlan.Route();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_route;
  swift_beginAccess();
  outlined init with copy of WorkoutPlan.Route?(v3 + v15, v9, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = outlined destroy of WorkoutPlan.Route?(v9, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    if (a2)
    {
      return (a2)(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    if (a2)
    {
      WorkoutPlan.Route.routePoints(timestampAnchor:pointsLimit:)(v17, a3);
      a2();
    }

    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

void protocol witness for RouteProviderDelegate.queryForPoints(timestampAnchor:numberOfPoints:completion:) in conformance LocationPositionAccumulator(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v8[4] = a2;
    v8[5] = a3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ();
    v8[3] = &block_descriptor_45_1;
    v6 = a4;
    v7 = _Block_copy(v8);

    a4 = v6;
  }

  else
  {
    v7 = 0;
  }

  [v4 queryForPointsWithTimestampAnchor:a1 numberOfPoints:v7 completion:a4];
  _Block_release(v7);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

unint64_t LocationPositionAccumulator.metadata.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = 0xD000000000000026;
  v2 = inited + 32;
  *(inited + 40) = 0x800000020B45B2B0;
  v3 = *(v0 + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12);
  if (*(v0 + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition) != 2 || *(v0 + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 8) != 0)
  {
    v3 = 0;
  }

  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v3;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of WorkoutPlan.Route?(v2, &_sSS_yptMd, &_sSS_yptMR);
  return v5;
}

char *LocationPositionAccumulator.didUpdate(_:)(void *a1)
{
  result = [a1 state];
  if ((result - 2) >= 2 && result != 6)
  {
    if (result != 1)
    {
      return result;
    }

    [a1 timeAhead_s];
    [a1 currentDistance_m];
  }

  result = [a1 state];
  if (result != 2)
  {
    if (result == 1)
    {
      [a1 timeAhead_s];
      [a1 currentDistance_m];
    }

LABEL_12:
    v5 = [a1 state];
    v6 = 0.0;
    if (v5 > 2)
    {
      if ((v5 - 4) >= 2)
      {
        if (v5 == 3)
        {
          v8 = 1;
          v9 = 2;
          goto LABEL_31;
        }

        if (v5 == 6)
        {
          v10 = &v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition];
          if (v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12] == 1 && *v10 > 3uLL)
          {
            v8 = 1;
            v9 = 4;
            goto LABEL_31;
          }

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v12 = Strong;
            v13 = type metadata accessor for WorkoutAlertRace();
            v72.receiver = objc_allocWithZone(v13);
            v72.super_class = v13;
            v14 = objc_msgSendSuper2(&v72, sel_init);
            [v14 setType_];
            [v12 alertSource:v1 didTriggerAlert:v14];

            swift_unknownObjectRelease();
          }

          if (one-time initialization token for race != -1)
          {
            swift_once();
          }

          v15 = type metadata accessor for Logger();
          __swift_project_value_buffer(v15, static WOLog.race);
          v16 = v1;
          v17 = v1;
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v71 = v21;
            *v20 = 136315394;
            *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x64657269707865, 0xE700000000000000, &v71);
            *(v20 + 12) = 2080;
            v22 = *(v10 + 2);
            v23 = v10[12];
            v74 = *v10;
            LODWORD(v75) = v22;
            BYTE4(v75) = v23;
            v24 = RacePosition.description.getter();
            v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v71);

            *(v20 + 14) = v26;
            _os_log_impl(&dword_20AEA4000, v18, v19, "[LocationPositionAccumulator]: Transitioned to %s from %s", v20, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F2E9420](v21, -1, -1);
            MEMORY[0x20F2E9420](v20, -1, -1);
          }

          v8 = 1;
          v27 = 4;
          goto LABEL_53;
        }
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        [a1 timeAhead_s];
        v28 = v35;
        [a1 currentDistance_m];
        v6 = v36;
        v37 = &v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition];
        if (v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12] != 1 || *v37 ^ 1 | *(v37 + 2))
        {
          v8 = 0;
        }

        else
        {
          swift_beginAccess();
          v38 = swift_unknownObjectWeakLoadStrong();
          if (v38)
          {
            v39 = v38;
            v40 = type metadata accessor for WorkoutAlertRace();
            v69.receiver = objc_allocWithZone(v40);
            v69.super_class = v40;
            v41 = objc_msgSendSuper2(&v69, sel_init);
            [v41 setType_];
            [v39 alertSource:v1 didTriggerAlert:v41];

            swift_unknownObjectRelease();
          }

          if (one-time initialization token for race != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          __swift_project_value_buffer(v42, static WOLog.race);
          v43 = v1;
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v71 = v47;
            *v46 = 136315394;
            v74 = 0;
            v75 = 0xE000000000000000;
            _StringGuts.grow(_:)(41);
            MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45B2E0);
            Double.write<A>(to:)();
            MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45B300);
            Float.write<A>(to:)();
            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v71);

            *(v46 + 4) = v48;
            *(v46 + 12) = 2080;
            v49 = *(v37 + 2);
            v50 = v37[12];
            v74 = *v37;
            LODWORD(v75) = v49;
            BYTE4(v75) = v50;
            v51 = RacePosition.description.getter();
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v71);

            *(v46 + 14) = v53;
            _os_log_impl(&dword_20AEA4000, v44, v45, "[LocationPositionAccumulator]: Transitioned to %s from %s", v46, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F2E9420](v47, -1, -1);
            MEMORY[0x20F2E9420](v46, -1, -1);
          }

          v8 = 0;
        }

        goto LABEL_32;
      }

      if (v5 == 2)
      {
        v7 = &v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition];
        if (v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12])
        {
          v8 = 1;
          v9 = 1;
LABEL_31:
          v28 = v9;
          goto LABEL_32;
        }

        swift_beginAccess();
        v54 = swift_unknownObjectWeakLoadStrong();
        if (v54)
        {
          v55 = v54;
          v56 = type metadata accessor for WorkoutAlertRace();
          v70.receiver = objc_allocWithZone(v56);
          v70.super_class = v56;
          v57 = objc_msgSendSuper2(&v70, sel_init);
          [v57 setType_];
          [v55 alertSource:v1 didTriggerAlert:v57];

          swift_unknownObjectRelease();
        }

        if (one-time initialization token for race != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        __swift_project_value_buffer(v58, static WOLog.race);
        v16 = v1;
        v59 = v1;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v71 = v63;
          *v62 = 136315394;
          *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574756F5266666FLL, 0xE800000000000000, &v71);
          *(v62 + 12) = 2080;
          v64 = *(v7 + 2);
          v65 = v7[12];
          v74 = *v7;
          LODWORD(v75) = v64;
          BYTE4(v75) = v65;
          v66 = RacePosition.description.getter();
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v71);

          *(v62 + 14) = v68;
          _os_log_impl(&dword_20AEA4000, v60, v61, "[LocationPositionAccumulator]: Transitioned to %s from %s", v62, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v63, -1, -1);
          MEMORY[0x20F2E9420](v62, -1, -1);
        }

        v8 = 1;
        v27 = 1;
LABEL_53:
        v28 = v27;
        v1 = v16;
LABEL_32:
        v29 = &v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition];
        *v29 = v28;
        v29[2] = v6;
        *(v29 + 12) = v8;
        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v30 = result;
          v31 = type metadata accessor for RacePositionBridged();
          v32 = objc_allocWithZone(v31);
          v33 = &v32[OBJC_IVAR___WORacePosition_racePosition];
          *v33 = v28;
          v33[2] = v6;
          *(v33 + 12) = v8;
          v73.receiver = v32;
          v73.super_class = v31;
          v34 = objc_msgSendSuper2(&v73, sel_init);
          [v30 locationPositionAccumulator:v1 didUpdateRoutePosition:v34];

          return swift_unknownObjectRelease();
        }

        return result;
      }
    }

    v8 = 1;
    v9 = 3;
    goto LABEL_31;
  }

  if (v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12] != 1 || *&v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition] | *&v1[OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 8])
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t type metadata accessor for LocationPositionAccumulator(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocationPositionAccumulator;
  if (!type metadata singleton initialization cache for LocationPositionAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of WorkoutPlan.Route?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutRouteQuery, @guaranteed [CLLocation]?, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a2;
  v11 = a5;
  v9(v10, v7, a4, a5);
}

id specialized RacePositionProvider.init(raceLocationProvider:builder:)(uint64_t a1, void *a2, _BYTE *a3)
{
  v27 = a2;
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v9, v10);
  v11 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v31[3] = type metadata accessor for RaceLocationProvider();
  v31[4] = &protocol witness table for RaceLocationProvider;
  v31[0] = a1;
  v13 = &a3[OBJC_IVAR___WORacePositionProvider_position];
  *v13 = 0;
  *(v13 + 2) = 0;
  v13[12] = 0;
  *&a3[OBJC_IVAR___WORacePositionProvider_result] = 0;
  v25 = OBJC_IVAR___WORacePositionProvider_queue;
  v14 = _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v24[1] = "v16@?0@NSArray8";
  v24[2] = v14;
  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v26);
  *&a3[v25] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a3[OBJC_IVAR___WORacePositionProvider_shouldProcessLocations] = 1;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *&a3[OBJC_IVAR___WORacePositionProvider_subscriptions] = v15;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR___WORacePositionProvider_routeProviderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp] = 0;
  outlined init with copy of RaceLocationProviding(v31, &a3[OBJC_IVAR___WORacePositionProvider_raceLocationProvider]);
  v16 = &a3[OBJC_IVAR___WORacePositionProvider_state];
  *v16 = 1;
  v16[8] = 2;
  v17 = type metadata accessor for MetadataSavingDelegate();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime] = 0;
  swift_unknownObjectWeakInit();
  v19 = v27;
  *&v18[OBJC_IVAR___WOMetadataSavingDelegate_builder] = v27;
  *&v18[OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout] = 0x404E000000000000;
  v29.receiver = v18;
  v29.super_class = v17;
  v20 = v19;
  *&a3[OBJC_IVAR___WORacePositionProvider_metadataDelegate] = objc_msgSendSuper2(&v29, sel_init);
  v21 = type metadata accessor for RacePositionProvider();
  v28.receiver = a3;
  v28.super_class = v21;
  v22 = objc_msgSendSuper2(&v28, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm_1(v31);
  return v22;
}

uint64_t outlined init with copy of WorkoutPlan.Route?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *specialized LocationPositionAccumulator.recover(with:metadata:)(void *a1)
{
  v3 = [a1 state];
  v4 = 0.0;
  if (v3 > 2)
  {
    if ((v3 - 4) >= 2)
    {
      if (v3 == 3)
      {
        v5 = 1;
        v6 = 2;
        goto LABEL_11;
      }

      if (v3 == 6)
      {
        v5 = 1;
        v6 = 4;
        goto LABEL_11;
      }
    }

LABEL_10:
    v5 = 1;
    v6 = 3;
    goto LABEL_11;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v5 = 1;
      v6 = 1;
LABEL_11:
      v7 = v6;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  [a1 timeAhead_s];
  v7 = v15;
  [a1 currentDistance_m];
  v5 = 0;
  v4 = v16;
LABEL_12:
  v8 = v1 + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition;
  *v8 = v7;
  *(v8 + 8) = v4;
  *(v8 + 12) = v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for RacePositionBridged();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR___WORacePosition_racePosition];
    *v13 = v7;
    v13[2] = v4;
    *(v13 + 12) = v5;
    v17.receiver = v12;
    v17.super_class = v11;
    v14 = objc_msgSendSuper2(&v17, sel_init);
    [v10 locationPositionAccumulator:v1 didUpdateRoutePosition:v14];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t keypath_get_16Tm@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

void type metadata completion function for LocationPositionAccumulator(uint64_t a1)
{
  type metadata accessor for WorkoutPlan.Route?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for WorkoutPlan.Route?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WorkoutPlan.Route?)
  {
    type metadata accessor for WorkoutPlan.Route();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WorkoutPlan.Route?);
    }
  }
}

uint64_t outlined destroy of WorkoutPlan.Route?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_2(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t _sSo10CLLocationCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with copy of RaceLocationProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CatalogWorkoutCoreBridge.bridgedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
  v4 = type metadata accessor for CatalogWorkout();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id CatalogWorkoutCoreBridge.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
  v5 = type metadata accessor for CatalogWorkout();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id CatalogWorkoutCoreBridge.init(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
  v4 = type metadata accessor for CatalogWorkout();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CatalogWorkoutCoreBridge(0);
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for CatalogWorkoutCoreBridge(uint64_t a1)
{
  result = type metadata singleton initialization cache for CatalogWorkoutCoreBridge;
  if (!type metadata singleton initialization cache for CatalogWorkoutCoreBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType()
{
  result = lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType;
  if (!lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType;
  if (!lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CatalogMediaType and conformance CatalogMediaType);
  }

  return result;
}

uint64_t outlined consume of PortableEnum<CatalogMediaType>(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t @objc CatalogWorkoutCoreBridge.isGuidedWalk.getter(void *a1, uint64_t a2, char a3)
{
  v3 = a1;
  v4 = CatalogWorkout.mediaType.getter();
  v6 = v5;
  v8 = v7 & 1;
  lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
  lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
  v9 = static PortableEnum<>.== infix(_:_:)();

  outlined consume of PortableEnum<CatalogMediaType>(v4, v6, v8);
  return v9 & 1;
}

unint64_t CatalogWorkoutCoreBridge.isGuidedWalk.getter(char a1)
{
  v1 = CatalogWorkout.mediaType.getter();
  v3 = v2;
  v5 = v4 & 1;
  lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
  lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
  v6 = static PortableEnum<>.== infix(_:_:)();
  outlined consume of PortableEnum<CatalogMediaType>(v1, v3, v5);
  return v6 & 1;
}

id CatalogWorkoutCoreBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CatalogWorkoutCoreBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogWorkoutCoreBridge(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Bridge.bridgedValue.getter in conformance CatalogWorkoutCoreBridge@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
  v5 = type metadata accessor for CatalogWorkout();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata completion function for CatalogWorkoutCoreBridge(uint64_t a1)
{
  result = type metadata accessor for CatalogWorkout();
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

uint64_t GoalWorkoutConfiguration.goal.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

id GoalWorkoutConfiguration.__allocating_init(_:goal:uuid:occurrence:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a3;
  v35 = a4;
  v33 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v13;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v30 - v15;
  v17 = *(v9 + 16);
  v17(&v30 - v15, a3, v8);
  v18 = objc_allocWithZone(v5);
  swift_beginAccess();
  v37 = a2;
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v32 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  v17(v13, v16, v8);
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  v21(&v18[v19], 1, 1, v20);
  v21(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v20);
  v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v23 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v23 - 8) + 56))(&v18[v22], 1, 1, v23);
  (*(v9 + 56))(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v8);
  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v25 = v31;
  v17(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v31, v8);
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v33;
  v18[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v35;
  swift_beginAccess();
  *&v18[v24] = 0;
  v18[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v26 = type metadata accessor for WorkoutConfiguration(0);
  v36.receiver = v18;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, sel_init);

  v28 = *(v9 + 8);
  v28(v34, v8);
  v28(v25, v8);
  v28(v16, v8);
  return v27;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GoalWorkoutConfiguration.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1818324839;
  }

  else
  {
    v2 = 1885697139;
  }

  if (*a2)
  {
    v3 = 1818324839;
  }

  else
  {
    v3 = 1885697139;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GoalWorkoutConfiguration.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GoalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GoalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GoalWorkoutConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GoalWorkoutConfiguration.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GoalWorkoutConfiguration.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1885697139;
  if (*v1)
  {
    v2 = 1818324839;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GoalWorkoutConfiguration.CodingKeys()
{
  if (*v0)
  {
    return 1818324839;
  }

  else
  {
    return 1885697139;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GoalWorkoutConfiguration.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GoalWorkoutConfiguration.CodingKeys.init(rawValue:), v3);

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

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GoalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GoalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GoalWorkoutConfiguration.goal.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*GoalWorkoutConfiguration.goal.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  return GoalWorkoutConfiguration.goal.modify;
}

void GoalWorkoutConfiguration.goal.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t GoalWorkoutConfiguration.$goal.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for GoalWorkoutConfiguration.$goal : GoalWorkoutConfiguration(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for GoalWorkoutConfiguration.$goal : GoalWorkoutConfiguration(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t GoalWorkoutConfiguration.$goal.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*GoalWorkoutConfiguration.$goal.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
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

  v10 = OBJC_IVAR___WOCoreGoalWorkoutConfiguration__goal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return GoalWorkoutConfiguration.$goal.modify;
}

void GoalWorkoutConfiguration.$goal.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

Swift::Int GoalWorkoutConfiguration.hash.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  Hasher.init()();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, sel_hash);
  MEMORY[0x20F2E7FF0](v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v4 = v6;
  NSObject.hash(into:)();

  return Hasher.finalize()();
}

uint64_t GoalWorkoutConfiguration.encode(to:)(void *a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore04GoalD13ConfigurationC10CodingKeys33_4E6C906F86346DEA0350DE194C12145BLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore04GoalD13ConfigurationC10CodingKeys33_4E6C906F86346DEA0350DE194C12145BLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v17 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v7 = objc_opt_self();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v19);

  v8 = v19[0];
  v19[0] = 0;
  v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v19];

  v10 = v19[0];
  if (v9)
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v19[0] = v11;
    v19[1] = v13;
    v18 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    v14 = v17[1];
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v14)
    {
      WorkoutConfiguration.encode(to:)(a1);
    }

    (*(v3 + 8))(v6, v2);
    return outlined consume of Data._Representation(v11, v13);
  }

  else
  {
    v16 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v3 + 8))(v6, v2);
  }
}

unint64_t lazy protocol witness table accessor for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

void *GoalWorkoutConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore04GoalD13ConfigurationC10CodingKeys33_4E6C906F86346DEA0350DE194C12145BLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore04GoalD13ConfigurationC10CodingKeys33_4E6C906F86346DEA0350DE194C12145BLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_2;
  }

  v11 = v6;
  LOBYTE(v22[0]) = 0;
  if (KeyedDecodingContainer.contains(_:)())
  {
    type metadata accessor for WorkoutStep(0);
    LOBYTE(v23) = 0;
    lazy protocol witness table accessor for type WorkoutStep and conformance WorkoutStep();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v22);

    v12 = v22[0];
    swift_beginAccess();
    v23 = v12;
    _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    Published.init(initialValue:)();
    swift_endAccess();

LABEL_7:
    _ss7Decoder_pWOcTm_2(a1, v22);
    v3 = WorkoutConfiguration.init(from:)(v22);
    (*(v11 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  LOBYTE(v23) = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v22[0];
  v14 = v22[1];
  v18[1] = _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v19 = v14;
  v20 = v13;
  v15 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v15)
  {
    v16 = v15;
    swift_beginAccess();
    v23 = v16;
    Published.init(initialValue:)();
    swift_endAccess();
    outlined consume of Data._Representation(v20, v19);
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError();
  swift_allocError();
  *v17 = 0xD00000000000001ELL;
  v17[1] = 0x800000020B45A350;
  swift_willThrow();
  outlined consume of Data._Representation(v20, v19);
  (*(v11 + 8))(v9, v5);
LABEL_2:
  __swift_destroy_boxed_opaque_existential_1(a1);
  swift_deallocPartialClassInstance();
  return v3;
}

unint64_t lazy protocol witness table accessor for type WorkoutStep and conformance WorkoutStep()
{
  result = lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep;
  if (!lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep)
  {
    type metadata accessor for WorkoutStep(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep);
  }

  return result;
}

uint64_t GoalWorkoutConfiguration.isEquivalent(to:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  _ss7Decoder_pWOcTm_2(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v4 = v10[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v5 = v10[0];
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {

LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v7 = specialized WorkoutConfiguration.isEquivalent(to:)(v9, v2);

  return v7 & 1;
}

uint64_t _ss7Decoder_pWOcTm_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void GoalWorkoutConfiguration.populateMetadata(_:)(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v11);

  v5 = v11;
  v6 = [v11 goalTypeIdentifier];

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v8 = [a1 keyedNumbers];
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = v9;
  specialized Dictionary.subscript.setter(v7, v2, v4);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 setKeyedNumbers_];

  WorkoutConfiguration.populateMetadata(_:)(a1);
}

uint64_t GoalWorkoutConfiguration.__ivar_destroyer()
{
  v1 = OBJC_IVAR___WOCoreGoalWorkoutConfiguration__goal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id GoalWorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id protocol witness for static Canonical.canonical() in conformance GoalWorkoutConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static GoalWorkoutConfiguration.canonical()();
  *a1 = result;
  return result;
}

id GoalWorkoutConfiguration.copyWith(activityType:goal:uuid:occurrence:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v52 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v54 = &v48 - v20;
  if (a1)
  {
    v53 = a1;
    if (a2)
    {
LABEL_3:
      v21 = a1;
      v22 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v53 = *(v5 + v23);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = a1;
  static Published.subscript.getter(&v57);

  v22 = v57;
LABEL_6:
  outlined init with copy of UUID?(a3, v13);
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    v51 = a2;
    v26 = a4;
    v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v28 = v5 + v27;
    a4 = v26;
    (*(v15 + 16))(v54, v28, v14);
    v29 = v25(v13, 1, v14);
    v30 = v51;
    if (v29 != 1)
    {
      outlined destroy of UUID?(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v54, v13, v14);
    v31 = a2;
  }

  if (a4)
  {
    v51 = a4;
  }

  else
  {
    v32 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v51 = *(v5 + v32);
  }

  v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v49 = *(v5 + v33);
  v34 = objc_allocWithZone(ObjectType);
  swift_beginAccess();
  v56 = v22;
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v35 = a4;

  ObjectType = v22;
  Published.init(initialValue:)();
  swift_endAccess();
  v36 = *(v15 + 16);
  v37 = v52;
  v36(v52, v54, v14);
  *&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v38 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v39 = type metadata accessor for Date();
  v40 = *(*(v39 - 8) + 56);
  v40(&v34[v38], 1, 1, v39);
  v40(&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v39);
  v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v42 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v42 - 8) + 56))(&v34[v41], 1, 1, v42);
  (*(v15 + 56))(&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v14);
  v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v36(&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v37, v14);
  *&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v53;
  v34[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v51;
  swift_beginAccess();
  *&v34[v43] = v49;
  v34[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v44 = type metadata accessor for WorkoutConfiguration(0);
  v55.receiver = v34;
  v55.super_class = v44;
  v45 = objc_msgSendSuper2(&v55, sel_init);

  v46 = *(v15 + 8);
  v46(v37, v14);
  v46(v54, v14);
  return v45;
}

id specialized static GoalWorkoutConfiguration.canonical()()
{
  v0 = type metadata accessor for UUID();
  v29 = *(v0 - 8);
  v1 = v29;
  v3 = MEMORY[0x28223BE20](v0, v2);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v29 - v7;
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - v10;
  v36 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:1];
  v12 = [objc_opt_self() meterUnit];
  v13 = [objc_opt_self() quantityWithUnit:v12 doubleValue:5000.0];
  v34 = v13;

  v14 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v13];
  v35 = v11;
  UUID.init()();
  v32 = specialized Occurrence.__allocating_init(count:)(0);
  v15 = *(v1 + 16);
  v30 = v8;
  v15(v8, v11, v0);
  v16 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration(0));
  swift_beginAccess();
  v38 = v14;
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v31 = v14;
  Published.init(initialValue:)();
  swift_endAccess();
  v17 = v33;
  v15(v33, v8, v0);
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v20(&v16[v18], 1, 1, v19);
  v20(&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v19);
  v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v22 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v22 - 8) + 56))(&v16[v21], 1, 1, v22);
  v23 = v29;
  (*(v29 + 56))(&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v15(&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v17, v0);
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v36;
  v16[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v32;
  swift_beginAccess();
  *&v16[v24] = 0;
  v16[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v25 = type metadata accessor for WorkoutConfiguration(0);
  v37.receiver = v16;
  v37.super_class = v25;
  v26 = objc_msgSendSuper2(&v37, sel_init);

  v27 = *(v23 + 8);
  v27(v17, v0);
  v27(v30, v0);
  v27(v35, v0);
  return v26;
}

void type metadata completion function for GoalWorkoutConfiguration(uint64_t a1)
{
  type metadata accessor for Published<NLSessionActivityGoal>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for GoalWorkoutConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GoalWorkoutConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_2(uint64_t a1, unint64_t *a2, void *a3)
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

void TargetZone.workoutKitRepresentation(activityType:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3 > 3)
  {
    if (*(v2 + 16) > 5u)
    {
      if (v3 == 6)
      {
        v4 = a2;
        if ([a1 effectiveTypeIdentifier] != 13)
        {
          v5 = MEMORY[0x277CE3F48];
          goto LABEL_18;
        }

LABEL_13:
        *(v4 + 32) = 0;
        *v4 = 0u;
        *(v4 + 16) = 0u;
        return;
      }
    }

    else if (v3 != 4)
    {
      v4 = a2;
      if ([a1 effectiveTypeIdentifier] != 13)
      {
        v5 = MEMORY[0x277CE3F50];
LABEL_18:
        TargetZone.currentPowerWKRepresentation.getter(v5, v4);
        return;
      }

      goto LABEL_13;
    }

LABEL_14:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (*(v2 + 16) <= 1u)
  {
    if (*(v2 + 16))
    {
      TargetZone.averagePaceWKRepresentation.getter(MEMORY[0x277CE3F48], a2);
      return;
    }

    goto LABEL_14;
  }

  if (v3 == 2)
  {
    TargetZone.averagePaceWKRepresentation.getter(MEMORY[0x277CE3F50], a2);
    return;
  }

  swift_beginAccess();
  v7 = *(v2 + 24);
  swift_beginAccess();
  v8 = *(v2 + 32);
  if (v7 == v8)
  {
    v9 = static WorkoutAlertMetric.countPerMinute.getter();
    *(a2 + 24) = type metadata accessor for CadenceThresholdAlert();
    *(a2 + 32) = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type CadenceThresholdAlert and conformance CadenceThresholdAlert, MEMORY[0x277CE4110], MEMORY[0x277CE4108]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.cadence(_:unit:)();
LABEL_23:

    return;
  }

  if (v7 >= v8)
  {
    v10 = type metadata accessor for AlertValidationError();
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError, MEMORY[0x277CE40F8], MEMORY[0x277CE4100]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277CE40F0], v10);
    swift_willThrow();
    return;
  }

  if (v7 <= v8)
  {
    v9 = static WorkoutAlertMetric.countPerMinute.getter();
    *(a2 + 24) = type metadata accessor for CadenceRangeAlert();
    *(a2 + 32) = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type CadenceRangeAlert and conformance CadenceRangeAlert, MEMORY[0x277CE4088], MEMORY[0x277CE4080]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.cadence(_:unit:)();
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t WorkoutAlert.targetZone(activityType:configurationContext:validator:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *a2;
  result = closure #1 in WorkoutAlert.targetZone(activityType:configurationContext:validator:)(v6, a1, a4);
  if (result)
  {
    v12 = v9;
    v11 = result;
    if ((*(*a3 + 336))(result, a1, &v12))
    {
      return v11;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unsigned __int8 *WorkoutAlert.heartRateTargetZone.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v85 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit18HeartRateZoneAlertVSgMd, &_s10WorkoutKit18HeartRateZoneAlertVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v94 = &v79 - v7;
  v91 = type metadata accessor for HeartRateZoneAlert();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v8);
  v86 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  MEMORY[0x28223BE20](v92, v10);
  v90 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v93 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v87 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v88 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit19HeartRateRangeAlertVSgMd, &_s10WorkoutKit19HeartRateRangeAlertVSgMR);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v79 - v21;
  v23 = *(a1 - 8);
  v25 = MEMORY[0x28223BE20](v20, v24);
  v80 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v81 = &v79 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v79 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v79 - v35;
  v37 = type metadata accessor for HeartRateRangeAlert();
  v38 = *(v37 - 1);
  MEMORY[0x28223BE20](v37, v39);
  v95 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v23;
  v41 = *(v23 + 16);
  v42 = v97;
  v41(v36);
  v43 = swift_dynamicCast();
  v96 = v38;
  v44 = *(v38 + 56);
  if (!v43)
  {
    v44(v22, 1, 1, v37);
    outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v22, &_s10WorkoutKit19HeartRateRangeAlertVSgMd, &_s10WorkoutKit19HeartRateRangeAlertVSgMR);
    (v41)(v33, v42, a1);
    v61 = v94;
    v62 = v91;
    v63 = swift_dynamicCast();
    v64 = v89;
    v65 = *(v89 + 56);
    if (v63)
    {
      v66 = a1;
      v65(v61, 0, 1, v62);
      v67 = v86;
      (*(v64 + 32))(v86, v61, v62);
      result = HeartRateZoneAlert.zone.getter();
      v68 = (result - 1);
      if (__OFSUB__(result, 1))
      {
        goto LABEL_15;
      }

      if (v68 <= 4)
      {
        v99 = 0;
        v69 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
        v60 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v99, 0, 0, 1, v68, 0, 0);
        (*(v64 + 8))(v67, v62);
        return v60;
      }

      static WorkoutKitLog.default.getter();
      v70 = v81;
      (v41)(v81, v42, a1);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v100 = v97;
        *v73 = 134218242;
        *(v73 + 4) = v68;
        *(v73 + 12) = 2080;
        (v41)(v80, v70, v66);
        v74 = String.init<A>(describing:)();
        v76 = v75;
        (*(v82 + 8))(v70, v66);
        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v100);

        *(v73 + 14) = v77;
        _os_log_impl(&dword_20AEA4000, v71, v72, "HR zone index out of bounds: %ld, alert: %s", v73, 0x16u);
        v78 = v97;
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x20F2E9420](v78, -1, -1);
        MEMORY[0x20F2E9420](v73, -1, -1);

        (*(v83 + 8))(v85, v84);
        (*(v64 + 8))(v86, v62);
      }

      else
      {

        (*(v82 + 8))(v70, v66);
        (*(v83 + 8))(v85, v84);
        (*(v64 + 8))(v67, v62);
      }
    }

    else
    {
      v65(v61, 1, 1, v62);
      outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v61, &_s10WorkoutKit18HeartRateZoneAlertVSgMd, &_s10WorkoutKit18HeartRateZoneAlertVSgMR);
    }

    return 0;
  }

  v44(v22, 0, 1, v37);
  v45 = *(v96 + 32);
  v46 = v87;
  v97 = v37;
  v45(v95, v22);
  v47 = v90;
  HeartRateRangeAlert.target.getter();
  v48 = v93;
  v49 = *(v93 + 16);
  v49(v46, v47, v12);
  outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v47, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v50 = static WorkoutAlertMetric.countPerMinute.getter();
  v51 = v88;
  Measurement<>.converted(to:)();

  v52 = *(v48 + 8);
  v52(v46, v12);
  Measurement.value.getter();
  v54 = v53;
  v52(v51, v12);
  HeartRateRangeAlert.target.getter();
  v49(v46, v47 + *(v92 + 36), v12);
  outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v47, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v55 = static WorkoutAlertMetric.countPerMinute.getter();
  Measurement<>.converted(to:)();

  v52(v46, v12);
  Measurement.value.getter();
  v57 = v56;
  result = (v52)(v51, v12);
  if (*&v54 <= *&v57)
  {
    v98 = 1;
    v59 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
    v60 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v98, v54, v57, 0, 0, 1, 0);
    (*(v96 + 8))(v95, v97);
    return v60;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

id WorkoutAlert.powerZonesAlertTargetZone(activityType:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit14PowerZoneAlertVSgMd, &_s10WorkoutKit14PowerZoneAlertVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v200 = &v192 - v6;
  v204 = type metadata accessor for PowerZoneAlert();
  v201 = *(v204 - 8);
  MEMORY[0x28223BE20](v204, v7);
  v198 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  MEMORY[0x28223BE20](v203, v9);
  v202 = &v192 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15PowerRangeAlertVSgMd, &_s10WorkoutKit15PowerRangeAlertVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v207 = &v192 - v13;
  v212 = type metadata accessor for PowerRangeAlert();
  v211 = *(v212 - 8);
  v15 = MEMORY[0x28223BE20](v212, v14);
  v193 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v206 = &v192 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v215 = *(v19 - 8);
  v216 = v19;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v213 = &v192 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v214 = &v192 - v24;
  v220 = type metadata accessor for Logger();
  v25 = *(v220 - 8);
  v27 = MEMORY[0x28223BE20](v220, v26);
  v219 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v199 = &v192 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v195 = &v192 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v197 = &v192 - v36;
  v37 = type metadata accessor for WorkoutAlertMetric();
  v38 = *(v37 - 8);
  v217 = v37;
  v218 = v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v205 = &v192 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v194 = &v192 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v210 = &v192 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit19PowerThresholdAlertVSgMd, &_s10WorkoutKit19PowerThresholdAlertVSgMR);
  v49 = MEMORY[0x28223BE20](v47 - 8, v48);
  v51 = &v192 - v50;
  v223 = a2;
  v52 = *(a2 - 1);
  v54 = MEMORY[0x28223BE20](v49, v53);
  v56 = &v192 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v54, v57);
  v208 = &v192 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v192 = &v192 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v66 = &v192 - v65;
  v68 = MEMORY[0x28223BE20](v64, v67);
  v70 = &v192 - v69;
  MEMORY[0x28223BE20](v68, v71);
  v73 = &v192 - v72;
  v74 = type metadata accessor for PowerThresholdAlert();
  v75 = *(v74 - 8);
  v77 = MEMORY[0x28223BE20](v74, v76);
  v196 = &v192 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77, v79);
  v209 = &v192 - v80;
  v81 = [a1 effectiveTypeIdentifier];
  v221 = v25;
  if (v81 != 13)
  {
    v93 = v219;
    static WorkoutKitLog.default.getter();
    v94 = *(v52 + 2);
    v94(v56, v222, v223);
    v95 = a1;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v218 = v99;
      v222 = swift_slowAlloc();
      v226[0] = v222;
      *v98 = 138412546;
      *(v98 + 4) = v95;
      *v99 = v95;
      *(v98 + 12) = 2080;
      LODWORD(v217) = v97;
      v100 = v223;
      v94(v208, v56, v223);
      v101 = v95;
      v102 = String.init<A>(describing:)();
      v104 = v103;
      (*(v52 + 1))(v56, v100);
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, v226);

      *(v98 + 14) = v105;
      _os_log_impl(&dword_20AEA4000, v96, v217, "activity type doesnt support power zones, activity: %@, alert: %s", v98, 0x16u);
      v106 = v218;
      outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v218, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v106, -1, -1);
      v107 = v222;
      __swift_destroy_boxed_opaque_existential_0(v222);
      MEMORY[0x20F2E9420](v107, -1, -1);
      MEMORY[0x20F2E9420](v98, -1, -1);
    }

    else
    {

      (*(v52 + 1))(v56, v223);
    }

    (*(v221 + 8))(v93, v220);
    return 0;
  }

  v219 = v52;
  v82 = *(v52 + 2);
  v83 = v222;
  v84 = v223;
  v82(v73, v222, v223);
  v85 = swift_dynamicCast();
  v86 = *(v75 + 56);
  if (v85)
  {
    v87 = v75;
    v86(v51, 0, 1, v74);
    v88 = v209;
    (*(v75 + 32))(v209, v51, v74);
    v89 = v210;
    PowerThresholdAlert.metric.getter();
    v90 = v217;
    v91 = (v218[11])(v89, v217);
    if (v91 == *MEMORY[0x277CE3F50])
    {
      v92 = v75;
    }

    else
    {
      if (v91 == *MEMORY[0x277CE3F48])
      {
        v92 = v75;
        v119 = 6;
LABEL_28:
        v153 = v213;
        PowerThresholdAlert.target.getter();
        v154 = [objc_opt_self() watts];
        v155 = v214;
        v156 = v216;
        Measurement<>.converted(to:)();

        v157 = *(v215 + 8);
        v157(v153, v156);
        Measurement.value.getter();
        v159 = v158;
        v157(v155, v156);
        v160 = type metadata accessor for PowerZonesAlertTargetZone();
        v161 = objc_allocWithZone(v160);
        v162 = &v161[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
        *v162 = 0;
        *(v162 + 1) = 0;
        v163 = &v161[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
        *v163 = v159;
        *(v163 + 1) = v119;
        v163[16] = 0;
        v224.receiver = v161;
        v224.super_class = v160;
        v164 = objc_msgSendSuper2(&v224, sel_init);
        (*(v92 + 8))(v88, v74);
        return v164;
      }

      v129 = v197;
      static WorkoutKitLog.default.getter();
      v130 = v196;
      (*(v87 + 16))(v196, v88, v74);
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = v130;
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v226[0] = v135;
        *v134 = 136315138;
        PowerThresholdAlert.metric.getter();
        v136 = String.init<A>(describing:)();
        v137 = v87;
        v139 = v138;
        v92 = v137;
        (*(v137 + 8))(v133, v74);
        v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v139, v226);

        *(v134 + 4) = v140;
        _os_log_impl(&dword_20AEA4000, v131, v132, "unknown power threshold: %s. defaulting to current power", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v135);
        v141 = v135;
        v90 = v217;
        MEMORY[0x20F2E9420](v141, -1, -1);
        MEMORY[0x20F2E9420](v134, -1, -1);

        (*(v221 + 8))(v129, v220);
        v88 = v209;
      }

      else
      {

        v92 = v87;
        (*(v87 + 8))(v130, v74);
        (*(v221 + 8))(v129, v220);
      }

      (v218[1])(v210, v90);
    }

    v119 = 5;
    goto LABEL_28;
  }

  v86(v51, 1, 1, v74);
  outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v51, &_s10WorkoutKit19PowerThresholdAlertVSgMd, &_s10WorkoutKit19PowerThresholdAlertVSgMR);
  v82(v70, v83, v84);
  v108 = v207;
  v109 = v212;
  v110 = swift_dynamicCast();
  v111 = v211;
  v112 = *(v211 + 56);
  if (!v110)
  {
    v112(v108, 1, 1, v109);
    outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v108, &_s10WorkoutKit15PowerRangeAlertVSgMd, &_s10WorkoutKit15PowerRangeAlertVSgMR);
    v82(v66, v83, v84);
    v120 = v200;
    v121 = v204;
    v122 = swift_dynamicCast();
    v123 = v201;
    v124 = *(v201 + 56);
    if (v122)
    {
      v124(v120, 0, 1, v121);
      v125 = v198;
      (*(v123 + 32))(v198, v120, v121);
      result = PowerZoneAlert.zone.getter();
      v126 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_39;
      }

      if (v126 <= 7)
      {
        v226[0] = result - 1;
        v226[1] = 0;
        v227 = 64;
        v127 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
        v128 = PowerZonesAlertTargetZone.init(type:)(v226);
        (*(v123 + 8))(v125, v121);
        return v128;
      }

      static WorkoutKitLog.default.getter();
      v165 = v192;
      v82(v192, v83, v84);
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        LODWORD(v222) = v167;
        v169 = v168;
        v170 = swift_slowAlloc();
        v226[0] = v170;
        *v169 = 134218242;
        *(v169 + 4) = v126;
        *(v169 + 12) = 2080;
        v82(v208, v165, v84);
        v171 = String.init<A>(describing:)();
        v173 = v172;
        (*(v219 + 1))(v165, v84);
        v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v173, v226);

        *(v169 + 14) = v174;
        _os_log_impl(&dword_20AEA4000, v166, v222, "power zone index out of bounds: %ld, alert: %s", v169, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v170);
        MEMORY[0x20F2E9420](v170, -1, -1);
        MEMORY[0x20F2E9420](v169, -1, -1);

        (*(v221 + 8))(v199, v220);
        (*(v123 + 8))(v198, v121);
      }

      else
      {

        (*(v219 + 1))(v165, v84);
        (*(v221 + 8))(v199, v220);
        (*(v123 + 8))(v125, v121);
      }
    }

    else
    {
      v124(v120, 1, 1, v121);
      outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v120, &_s10WorkoutKit14PowerZoneAlertVSgMd, &_s10WorkoutKit14PowerZoneAlertVSgMR);
    }

    return 0;
  }

  v112(v108, 0, 1, v109);
  v113 = v206;
  (*(v111 + 32))(v206, v108, v109);
  v114 = v205;
  PowerRangeAlert.metric.getter();
  v115 = v217;
  v116 = (v218[11])(v114, v217);
  if (v116 == *MEMORY[0x277CE3F50])
  {
LABEL_33:
    v117 = 133;
    goto LABEL_34;
  }

  if (v116 != *MEMORY[0x277CE3F48])
  {
    v142 = v195;
    static WorkoutKitLog.default.getter();
    v143 = v193;
    (*(v111 + 16))(v193, v113, v109);
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v226[0] = v223;
      *v146 = 136315138;
      PowerRangeAlert.metric.getter();
      v147 = String.init<A>(describing:)();
      v148 = v143;
      v150 = v149;
      (*(v111 + 8))(v148, v109);
      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v150, v226);

      *(v146 + 4) = v151;
      _os_log_impl(&dword_20AEA4000, v144, v145, "unknown power range: %s. defaulting to current power", v146, 0xCu);
      v152 = v223;
      __swift_destroy_boxed_opaque_existential_0(v223);
      MEMORY[0x20F2E9420](v152, -1, -1);
      MEMORY[0x20F2E9420](v146, -1, -1);

      (*(v221 + 8))(v195, v220);
    }

    else
    {

      (*(v111 + 8))(v143, v109);
      (*(v221 + 8))(v142, v220);
    }

    (v218[1])(v205, v115);
    goto LABEL_33;
  }

  v117 = 134;
LABEL_34:
  LODWORD(v222) = v117;
  v175 = v202;
  PowerRangeAlert.target.getter();
  v176 = v215;
  v223 = *(v215 + 16);
  v177 = v213;
  v178 = v216;
  (v223)(v213, v175, v216);
  outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v175, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  v179 = objc_opt_self();
  v180 = [v179 watts];
  v181 = v214;
  Measurement<>.converted(to:)();

  v182 = *(v176 + 8);
  v182(v177, v178);
  Measurement.value.getter();
  v184 = v183;
  v182(v181, v178);
  PowerRangeAlert.target.getter();
  (v223)(v177, v175 + *(v203 + 36), v178);
  outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v175, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  v185 = [v179 watts];
  Measurement<>.converted(to:)();

  v182(v177, v178);
  Measurement.value.getter();
  v187 = v186;
  result = (v182)(v181, v178);
  if (v184 <= v187)
  {
    v188 = type metadata accessor for PowerZonesAlertTargetZone();
    v189 = objc_allocWithZone(v188);
    v190 = &v189[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
    *v190 = 0;
    *(v190 + 1) = 0;
    v191 = &v189[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
    *v191 = v184;
    v191[1] = v187;
    *(v191 + 16) = v222;
    v225.receiver = v189;
    v225.super_class = v188;
    v128 = objc_msgSendSuper2(&v225, sel_init);
    (*(v211 + 8))(v206, v212);
    return v128;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void TargetZone.averagePaceWKRepresentation.getter(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for WorkoutAlertMetric();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(v2 + 24);
  swift_beginAccess();
  v11 = *(v2 + 32);
  if (v10 == v11)
  {
    v12 = [objc_opt_self() metersPerSecond];
    (*(v6 + 104))(v9, *a1, v5);
    a2[3] = type metadata accessor for SpeedThresholdAlert();
    a2[4] = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type SpeedThresholdAlert and conformance SpeedThresholdAlert, MEMORY[0x277CE40E8], MEMORY[0x277CE40E0]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.speed(_:unit:metric:)();
LABEL_7:

    (*(v6 + 8))(v9, v5);
    return;
  }

  if (v10 >= v11)
  {
    v13 = type metadata accessor for AlertValidationError();
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError, MEMORY[0x277CE40F8], MEMORY[0x277CE4100]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277CE40F0], v13);
    swift_willThrow();
    return;
  }

  if (v10 <= v11)
  {
    v12 = [objc_opt_self() metersPerSecond];
    (*(v6 + 104))(v9, *a1, v5);
    a2[3] = type metadata accessor for SpeedRangeAlert();
    a2[4] = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type SpeedRangeAlert and conformance SpeedRangeAlert, MEMORY[0x277CE4068], MEMORY[0x277CE4060]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.speed(_:unit:metric:)();
    goto LABEL_7;
  }

  __break(1u);
}

void TargetZone.currentPowerWKRepresentation.getter(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for WorkoutAlertMetric();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(v2 + 24);
  swift_beginAccess();
  v11 = *(v2 + 32);
  if (v10 == v11)
  {
    v12 = [objc_opt_self() watts];
    (*(v6 + 104))(v9, *a1, v5);
    a2[3] = type metadata accessor for PowerThresholdAlert();
    a2[4] = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, MEMORY[0x277CE40D8], MEMORY[0x277CE40D0]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.power(_:unit:metric:)();
LABEL_7:

    (*(v6 + 8))(v9, v5);
    return;
  }

  if (v10 >= v11)
  {
    v13 = type metadata accessor for AlertValidationError();
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError, MEMORY[0x277CE40F8], MEMORY[0x277CE4100]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277CE40F0], v13);
    swift_willThrow();
    return;
  }

  if (v10 <= v11)
  {
    v12 = [objc_opt_self() watts];
    (*(v6 + 104))(v9, *a1, v5);
    a2[3] = type metadata accessor for PowerRangeAlert();
    a2[4] = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, MEMORY[0x277CE4058], MEMORY[0x277CE4050]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.power(_:unit:metric:)();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t closure #1 in WorkoutAlert.targetZone(activityType:configurationContext:validator:)(char *a1, void *a2, uint64_t a3)
{
  v373 = a2;
  v417 = a1;
  v401 = type metadata accessor for Logger();
  v360 = *(v401 - 8);
  MEMORY[0x28223BE20](v401, v4);
  v359 = &v346 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  MEMORY[0x28223BE20](v354, v6);
  v353 = &v346 - v7;
  v372 = type metadata accessor for PowerRangeAlert();
  v364 = *(v372 - 8);
  v9 = MEMORY[0x28223BE20](v372, v8);
  v348 = &v346 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v368 = &v346 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v370 = &v346 - v15;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v366 = *(v367 - 8);
  v17 = MEMORY[0x28223BE20](v367, v16);
  v352 = &v346 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v351 = &v346 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v362 = &v346 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v365 = &v346 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v361 = &v346 - v29;
  v382 = type metadata accessor for PowerThresholdAlert();
  v374 = *(v382 - 8);
  v31 = MEMORY[0x28223BE20](v382, v30);
  v349 = &v346 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v371 = &v346 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v376 = &v346 - v37;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  MEMORY[0x28223BE20](v380, v38);
  v379 = &v346 - v39;
  v393 = type metadata accessor for CadenceRangeAlert();
  v388 = *(v393 - 8);
  v41 = MEMORY[0x28223BE20](v393, v40);
  v358 = &v346 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v394 = &v346 - v45;
  MEMORY[0x28223BE20](v44, v46);
  v385 = &v346 - v47;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v391 = *(v392 - 8);
  v49 = MEMORY[0x28223BE20](v392, v48);
  v378 = &v346 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49, v51);
  v377 = &v346 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v387 = &v346 - v56;
  v58 = MEMORY[0x28223BE20](v55, v57);
  v390 = &v346 - v59;
  MEMORY[0x28223BE20](v58, v60);
  v386 = &v346 - v61;
  v404 = type metadata accessor for CadenceThresholdAlert();
  v400 = *(v404 - 8);
  v63 = MEMORY[0x28223BE20](v404, v62);
  v369 = &v346 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v63, v65);
  v402 = &v346 - v67;
  MEMORY[0x28223BE20](v66, v68);
  v395 = &v346 - v69;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  MEMORY[0x28223BE20](v399, v70);
  v398 = &v346 - v71;
  v410 = type metadata accessor for SpeedRangeAlert();
  v408 = *(v410 - 1);
  v73 = MEMORY[0x28223BE20](v410, v72);
  v375 = &v346 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v73, v75);
  v415 = &v346 - v77;
  MEMORY[0x28223BE20](v76, v78);
  v405 = &v346 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v412 = *(v80 - 8);
  v413 = v80;
  v82 = MEMORY[0x28223BE20](v80, v81);
  v397 = &v346 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x28223BE20](v82, v84);
  v396 = &v346 - v86;
  v88 = MEMORY[0x28223BE20](v85, v87);
  v407 = (&v346 - v89);
  v91 = MEMORY[0x28223BE20](v88, v90);
  v411 = &v346 - v92;
  MEMORY[0x28223BE20](v91, v93);
  v406 = &v346 - v94;
  v95 = type metadata accessor for WorkoutAlertMetric();
  v96 = *(v95 - 8);
  v98 = MEMORY[0x28223BE20](v95, v97);
  v355 = &v346 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = MEMORY[0x28223BE20](v98, v100);
  v363 = &v346 - v102;
  v104 = MEMORY[0x28223BE20](v101, v103);
  v381 = &v346 - v105;
  v107 = MEMORY[0x28223BE20](v104, v106);
  v389 = &v346 - v108;
  v110 = MEMORY[0x28223BE20](v107, v109);
  v403 = &v346 - v111;
  v113 = MEMORY[0x28223BE20](v110, v112);
  v383 = &v346 - v114;
  MEMORY[0x28223BE20](v113, v115);
  v117 = &v346 - v116;
  v118 = type metadata accessor for SpeedThresholdAlert();
  v119 = *(v118 - 8);
  v121 = MEMORY[0x28223BE20](v118, v120);
  v384 = &v346 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = MEMORY[0x28223BE20](v121, v123);
  v126 = &v346 - v125;
  v128 = MEMORY[0x28223BE20](v124, v127);
  v130 = &v346 - v129;
  v131 = *(a3 - 8);
  v133 = MEMORY[0x28223BE20](v128, v132);
  v350 = &v346 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x28223BE20](v133, v135);
  v357 = &v346 - v137;
  MEMORY[0x28223BE20](v136, v138);
  v140 = &v346 - v139;
  v416 = v131;
  v356 = *(v131 + 16);
  v356(&v346 - v139, v417, a3);
  if (!swift_dynamicCast())
  {
    v406 = v95;
    v407 = v96;
    v145 = v405;
    v146 = v410;
    v147 = a3;
    if (swift_dynamicCast())
    {
      v148 = v408;
      (*(v408 + 4))(v415, v145, v146);
      v149 = v403;
      SpeedRangeAlert.metric.getter();
      v150 = v406;
      v151 = v407[11](v149, v406);
      v152 = *MEMORY[0x277CE3F50];
      v409 = a3;
      v414 = v140;
      if (v151 != v152)
      {
        if (v151 == *MEMORY[0x277CE3F48])
        {
          LODWORD(v417) = 0;
          LODWORD(v407) = 1;
LABEL_43:
          v222 = v398;
          SpeedRangeAlert.target.getter();
          v223 = v411;
          v224 = v412;
          v225 = *(v412 + 16);
          v226 = v413;
          v225(v411, v222, v413);
          outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v222, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
          v227 = objc_opt_self();
          v228 = [v227 metersPerSecond];
          v229 = v396;
          Measurement<>.converted(to:)();

          v230 = *(v224 + 8);
          v230(v223, v226);
          Measurement.value.getter();
          v232 = v231;
          v230(v229, v226);
          v233 = v415;
          SpeedRangeAlert.target.getter();
          v225(v223, v222 + *(v399 + 36), v226);
          outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v222, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
          v234 = [v227 metersPerSecond];
          v235 = v397;
          Measurement<>.converted(to:)();

          v230(v223, v226);
          Measurement.value.getter();
          v237 = v236;
          v230(v235, v226);
          type metadata accessor for TargetZone();
          v203 = swift_allocObject();
          *(v203 + 16) = v407;
          *(v203 + 24) = v232;
          *(v203 + 32) = v237;
          v238 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*(v408 + 1))(v233, v410);
          goto LABEL_44;
        }

        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v401, static WOLog.core);
        v180 = v375;
        (*(v148 + 2))(v375, v415, v146);
        v181 = Logger.logObject.getter();
        v182 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          v418 = v184;
          *v183 = 136315138;
          SpeedRangeAlert.metric.getter();
          v185 = String.init<A>(describing:)();
          v186 = v180;
          v188 = v187;
          (*(v408 + 1))(v186, v146);
          v189 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v188, &v418);

          *(v183 + 4) = v189;
          _os_log_impl(&dword_20AEA4000, v181, v182, "Unknown speed range %s", v183, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v184);
          MEMORY[0x20F2E9420](v184, -1, -1);
          v190 = v183;
          v150 = v406;
          MEMORY[0x20F2E9420](v190, -1, -1);
        }

        else
        {

          (*(v148 + 1))(v180, v146);
        }

        v407[1](v403, v150);
      }

      LODWORD(v407) = 2;
      LODWORD(v417) = 1;
      goto LABEL_43;
    }

    v153 = v395;
    v154 = v404;
    if (swift_dynamicCast())
    {
      v155 = v400;
      (*(v400 + 32))(v402, v153, v154);
      v156 = v389;
      CadenceRangeAlert.metric.getter();
      v157 = v406;
      v158 = v407[11](v156, v406);
      v159 = *MEMORY[0x277CE3F50];
      v414 = v140;
      if (v158 != v159)
      {
        if (v158 == *MEMORY[0x277CE3F48])
        {
          v160 = 4;
          LODWORD(v417) = 1;
          goto LABEL_60;
        }

        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v401, static WOLog.core);
        v211 = v369;
        (*(v155 + 16))(v369, v402, v154);
        v212 = Logger.logObject.getter();
        v213 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v212, v213))
        {
          v214 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v418 = v215;
          *v214 = 136315138;
          v216 = v155;
          CadenceRangeAlert.metric.getter();
          v217 = String.init<A>(describing:)();
          v219 = v218;
          (*(v216 + 8))(v211, v404);
          v220 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v219, &v418);

          *(v214 + 4) = v220;
          _os_log_impl(&dword_20AEA4000, v212, v213, "Unknown cadence threshold %s", v214, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v215);
          MEMORY[0x20F2E9420](v215, -1, -1);
          v221 = v214;
          v157 = v406;
          MEMORY[0x20F2E9420](v221, -1, -1);
        }

        else
        {

          (*(v155 + 8))(v211, v154);
        }

        v407[1](v389, v157);
      }

      LODWORD(v417) = 0;
      v160 = 3;
LABEL_60:
      v258 = v390;
      v259 = v402;
      CadenceThresholdAlert.target.getter();
      v260 = static WorkoutAlertMetric.countPerMinute.getter();
      v261 = v386;
      v262 = v392;
      Measurement<>.converted(to:)();

      v263 = *(v391 + 8);
      v263(v258, v262);
      Measurement.value.getter();
      v232 = v264;
      v263(v261, v262);
      CadenceThresholdAlert.target.getter();
      v265 = static WorkoutAlertMetric.countPerMinute.getter();
      v266 = v387;
      Measurement<>.converted(to:)();

      v263(v258, v262);
      Measurement.value.getter();
      v237 = v267;
      v263(v266, v262);
      type metadata accessor for TargetZone();
      v203 = swift_allocObject();
      *(v203 + 16) = v160;
      *(v203 + 24) = v232;
      *(v203 + 32) = v237;
      LOBYTE(v266) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v400 + 8))(v259, v404);
      v239 = 0;
      v140 = v414;
      if ((v266 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v173 = v385;
    v174 = v393;
    if (swift_dynamicCast())
    {
      v175 = v388;
      (*(v388 + 32))(v394, v173, v174);
      v176 = v381;
      CadenceRangeAlert.metric.getter();
      v177 = v406;
      v178 = v407[11](v176, v406);
      v179 = *MEMORY[0x277CE3F50];
      v409 = v147;
      if (v178 != v179)
      {
        if (v178 == *MEMORY[0x277CE3F48])
        {
          LODWORD(v415) = 4;
          LODWORD(v417) = 1;
          goto LABEL_70;
        }

        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v401, static WOLog.core);
        v244 = v358;
        (*(v175 + 16))(v358, v394, v174);
        v245 = Logger.logObject.getter();
        v246 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v245, v246))
        {
          v247 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v418 = v248;
          *v247 = 136315138;
          v249 = v175;
          CadenceRangeAlert.metric.getter();
          v250 = String.init<A>(describing:)();
          v252 = v251;
          (*(v249 + 8))(v244, v393);
          v253 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v250, v252, &v418);

          *(v247 + 4) = v253;
          _os_log_impl(&dword_20AEA4000, v245, v246, "Unknown cadence range %s", v247, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v248);
          MEMORY[0x20F2E9420](v248, -1, -1);
          v254 = v247;
          v177 = v406;
          MEMORY[0x20F2E9420](v254, -1, -1);
        }

        else
        {

          (*(v175 + 8))(v244, v174);
        }

        v407[1](v381, v177);
      }

      LODWORD(v417) = 0;
      LODWORD(v415) = 3;
LABEL_70:
      v283 = v379;
      CadenceRangeAlert.target.getter();
      v284 = v391;
      v285 = *(v391 + 16);
      v286 = v390;
      v287 = v392;
      v285(v390, v283, v392);
      outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v283, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
      v288 = static WorkoutAlertMetric.countPerMinute.getter();
      v289 = v377;
      Measurement<>.converted(to:)();

      v290 = *(v284 + 8);
      v290(v286, v287);
      Measurement.value.getter();
      v232 = v291;
      v290(v289, v287);
      v292 = v394;
      CadenceRangeAlert.target.getter();
      v285(v286, v283 + *(v380 + 36), v287);
      outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v283, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
      v293 = static WorkoutAlertMetric.countPerMinute.getter();
      v294 = v378;
      Measurement<>.converted(to:)();

      v290(v286, v287);
      Measurement.value.getter();
      v237 = v295;
      v290(v294, v287);
      type metadata accessor for TargetZone();
      v203 = swift_allocObject();
      *(v203 + 16) = v415;
      *(v203 + 24) = v232;
      *(v203 + 32) = v237;
      LOBYTE(v286) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v388 + 8))(v292, v393);
      v239 = 0;
      v147 = v409;
      if ((v286 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v207 = v376;
    v208 = v382;
    if (swift_dynamicCast())
    {
      v209 = v374;
      v210 = v371;
      (*(v374 + 32))(v371, v207, v208);
      if ([v373 effectiveTypeIdentifier] == 13)
      {
        (*(v209 + 8))(v210, v208);
LABEL_49:
        v203 = 0;
LABEL_75:
        v206 = v416;
        goto LABEL_76;
      }

      v255 = v363;
      PowerThresholdAlert.metric.getter();
      v256 = v406;
      v257 = v407[11](v255, v406);
      if (v257 != *MEMORY[0x277CE3F50])
      {
        if (v257 == *MEMORY[0x277CE3F48])
        {
          LODWORD(v417) = 0;
          LODWORD(v415) = 6;
          goto LABEL_90;
        }

        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v401, static WOLog.core);
        v297 = v349;
        (*(v209 + 16))(v349, v210, v208);
        v298 = Logger.logObject.getter();
        v299 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          v418 = v301;
          *v300 = 136315138;
          v302 = v209;
          PowerThresholdAlert.metric.getter();
          v303 = String.init<A>(describing:)();
          v305 = v304;
          v306 = v302;
          v210 = v371;
          (*(v306 + 8))(v297, v382);
          v307 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v303, v305, &v418);

          *(v300 + 4) = v307;
          _os_log_impl(&dword_20AEA4000, v298, v299, "Unknown power threshold %s", v300, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v301);
          MEMORY[0x20F2E9420](v301, -1, -1);
          v308 = v300;
          v256 = v406;
          MEMORY[0x20F2E9420](v308, -1, -1);
        }

        else
        {

          (*(v209 + 8))(v297, v208);
        }

        v407[1](v363, v256);
      }

      LODWORD(v415) = 5;
      LODWORD(v417) = 1;
LABEL_90:
      v321 = v365;
      PowerThresholdAlert.target.getter();
      v322 = objc_opt_self();
      v323 = [v322 watts];
      v324 = v361;
      v325 = v210;
      v326 = v367;
      Measurement<>.converted(to:)();

      v327 = *(v366 + 8);
      v327(v321, v326);
      Measurement.value.getter();
      v232 = v328;
      v327(v324, v326);
      PowerThresholdAlert.target.getter();
      v329 = [v322 watts];
      v330 = v362;
      Measurement<>.converted(to:)();

      v327(v321, v326);
      Measurement.value.getter();
      v237 = v331;
      v327(v330, v326);
      type metadata accessor for TargetZone();
      v203 = swift_allocObject();
      *(v203 + 16) = v415;
      *(v203 + 24) = v232;
      *(v203 + 32) = v237;
      LOBYTE(v327) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v374 + 8))(v325, v382);
      v239 = 0;
      if ((v327 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v240 = v370;
    v241 = v372;
    if (!swift_dynamicCast())
    {
      v268 = v359;
      static WorkoutKitLog.default.getter();
      v269 = v357;
      v270 = v356;
      v356(v357, v417, v147);
      v271 = Logger.logObject.getter();
      v272 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v271, v272))
      {
        v273 = swift_slowAlloc();
        v417 = swift_slowAlloc();
        v418 = v417;
        *v273 = 136315138;
        v270(v350, v269, v147);
        v274 = String.init<A>(describing:)();
        v276 = v275;
        v206 = v416;
        (*(v416 + 8))(v269, v147);
        v277 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v274, v276, &v418);

        *(v273 + 4) = v277;
        _os_log_impl(&dword_20AEA4000, v271, v272, "unknown WorkoutAlert type: %s", v273, 0xCu);
        v278 = v417;
        __swift_destroy_boxed_opaque_existential_0(v417);
        MEMORY[0x20F2E9420](v278, -1, -1);
        MEMORY[0x20F2E9420](v273, -1, -1);
      }

      else
      {

        v206 = v416;
        (*(v416 + 8))(v269, v147);
      }

      (*(v360 + 8))(v268, v401);
      v203 = 0;
      goto LABEL_76;
    }

    v242 = v364;
    v243 = v368;
    (*(v364 + 32))(v368, v240, v241);
    if ([v373 effectiveTypeIdentifier] == 13)
    {
      (*(v242 + 8))(v243, v241);
      goto LABEL_49;
    }

    v279 = v355;
    PowerRangeAlert.metric.getter();
    v280 = v406;
    v281 = v407[11](v279, v406);
    v282 = *MEMORY[0x277CE3F50];
    v409 = v147;
    v414 = v140;
    if (v281 != v282)
    {
      if (v281 == *MEMORY[0x277CE3F48])
      {
        LODWORD(v417) = 0;
        LODWORD(v415) = 6;
LABEL_95:
        v332 = v353;
        PowerRangeAlert.target.getter();
        v333 = v366;
        v334 = *(v366 + 16);
        v335 = v365;
        v336 = v367;
        v334(v365, v332, v367);
        outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v332, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
        v337 = objc_opt_self();
        v338 = [v337 watts];
        v339 = v351;
        Measurement<>.converted(to:)();

        v340 = *(v333 + 8);
        v340(v335, v336);
        Measurement.value.getter();
        v232 = v341;
        v340(v339, v336);
        v342 = v368;
        PowerRangeAlert.target.getter();
        v334(v335, v332 + *(v354 + 36), v336);
        outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v332, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
        v343 = [v337 watts];
        v344 = v352;
        Measurement<>.converted(to:)();

        v340(v335, v336);
        Measurement.value.getter();
        v237 = v345;
        v340(v344, v336);
        type metadata accessor for TargetZone();
        v203 = swift_allocObject();
        *(v203 + 16) = v415;
        *(v203 + 24) = v232;
        *(v203 + 32) = v237;
        v238 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*(v364 + 8))(v342, v372);
LABEL_44:
        v239 = 0;
        v147 = v409;
        v140 = v414;
        if ((v238 & 1) == 0)
        {
LABEL_71:
          v239 = v232 > 0.0 || v237 > 0.0;
        }

LABEL_74:
        *(v203 + 40) = v239;
        goto LABEL_75;
      }

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v401, static WOLog.core);
      v309 = v348;
      (*(v242 + 16))(v348, v243, v241);
      v310 = Logger.logObject.getter();
      v311 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v310, v311))
      {
        v312 = swift_slowAlloc();
        v313 = swift_slowAlloc();
        v418 = v313;
        *v312 = 136315138;
        v314 = v311;
        PowerRangeAlert.metric.getter();
        v315 = String.init<A>(describing:)();
        v316 = v242;
        v318 = v317;
        (*(v316 + 8))(v309, v372);
        v319 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v315, v318, &v418);

        *(v312 + 4) = v319;
        _os_log_impl(&dword_20AEA4000, v310, v314, "Unknown power range %s", v312, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v313);
        MEMORY[0x20F2E9420](v313, -1, -1);
        v320 = v312;
        v280 = v406;
        MEMORY[0x20F2E9420](v320, -1, -1);
      }

      else
      {

        (*(v242 + 8))(v309, v241);
      }

      v407[1](v355, v280);
    }

    LODWORD(v415) = 5;
    LODWORD(v417) = 1;
    goto LABEL_95;
  }

  v414 = v140;
  (*(v119 + 32))(v126, v130, v118);
  SpeedThresholdAlert.metric.getter();
  v141 = v96[11](v117, v95);
  v142 = v141 == *MEMORY[0x277CE3F50];
  v143 = v126;
  v409 = a3;
  v347 = v118;
  v346 = v119;
  if (v142)
  {
LABEL_27:
    v144 = 2;
    LODWORD(v417) = 1;
    goto LABEL_28;
  }

  if (v141 != *MEMORY[0x277CE3F48])
  {
    v417 = v117;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v401, static WOLog.core);
    v161 = v384;
    (*(v119 + 16))(v384, v143, v118);
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v408 = v164;
      v410 = swift_slowAlloc();
      v418 = v410;
      *v164 = 136315138;
      v165 = v161;
      v415 = v143;
      SpeedThresholdAlert.metric.getter();
      v166 = String.init<A>(describing:)();
      v167 = v96;
      v169 = v168;
      (*(v119 + 8))(v165, v118);
      v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v169, &v418);
      v96 = v167;
      v143 = v415;

      v171 = v408;
      *(v408 + 1) = v170;
      _os_log_impl(&dword_20AEA4000, v162, v163, "Unknown speed treshold %s", v171, 0xCu);
      v172 = v410;
      __swift_destroy_boxed_opaque_existential_0(v410);
      MEMORY[0x20F2E9420](v172, -1, -1);
      MEMORY[0x20F2E9420](v171, -1, -1);
    }

    else
    {

      (*(v119 + 8))(v161, v118);
    }

    v96[1](v417, v95);
    goto LABEL_27;
  }

  LODWORD(v417) = 0;
  v144 = 1;
LABEL_28:
  v191 = v411;
  SpeedThresholdAlert.target.getter();
  v192 = objc_opt_self();
  v193 = [v192 metersPerSecond];
  v194 = v406;
  v195 = v413;
  Measurement<>.converted(to:)();

  v196 = *(v412 + 8);
  v196(v191, v195);
  Measurement.value.getter();
  v198 = v197;
  v196(v194, v195);
  SpeedThresholdAlert.target.getter();
  v199 = [v192 metersPerSecond];
  v200 = v407;
  Measurement<>.converted(to:)();

  v196(v191, v195);
  Measurement.value.getter();
  v202 = v201;
  v196(v200, v195);
  type metadata accessor for TargetZone();
  v203 = swift_allocObject();
  *(v203 + 16) = v144;
  *(v203 + 24) = v198;
  *(v203 + 32) = v202;
  v204 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v346 + 8))(v143, v347);
  v205 = 0;
  v140 = v414;
  if ((v204 & 1) == 0)
  {
    v205 = v198 > 0.0 || v202 > 0.0;
  }

  *(v203 + 40) = v205;
  v206 = v416;
  v147 = v409;
LABEL_76:
  (*(v206 + 8))(v140, v147);
  return v203;
}

uint64_t outlined destroy of ClosedRange<Measurement<NSUnitPower>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MetadataSavingDelegate.metadataProvider.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MetadataSavingDelegate.metadataProvider.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOMetadataSavingDelegate_metadataProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MetadataSavingDelegate.metadataProvider.modify;
}

void MetadataSavingDelegate.metadataProvider.modify(void **a1, char a2)
{
  v3 = *a1;
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

id MetadataSavingDelegate.__allocating_init(builder:timeBetweenSaves:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___WOMetadataSavingDelegate_builder] = a1;
  *&v5[OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id MetadataSavingDelegate.init(builder:timeBetweenSaves:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___WOMetadataSavingDelegate_builder] = a1;
  *&v2[OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MetadataSavingDelegate();
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall MetadataSavingDelegate.updateWithElapsedTime(_:)(Swift::Double a1)
{
  v2 = OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime;
  v3 = *(v1 + OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime);
  if (v3 < a1 && *(v1 + OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout) <= a1 - v3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong metadata];
      swift_unknownObjectRelease();
      v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v8 = *(v1 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    aBlock[4] = partial apply for closure #1 in MetadataSavingDelegate.insertOrUpdateMetadata(_:);
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_21;
    v11 = _Block_copy(aBlock);

    [v8 addMetadata:isa completion:v11];
    _Block_release(v11);

    *(v1 + v2) = a1;
  }
}

Swift::Void __swiftcall MetadataSavingDelegate.saveMetadata()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong metadata];
    swift_unknownObjectRelease();
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v4 = *(v0 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  aBlock[4] = closure #1 in MetadataSavingDelegate.insertOrUpdateMetadata(_:)partial apply;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_7_0;
  v7 = _Block_copy(aBlock);

  [v4 addMetadata:isa completion:v7];
  _Block_release(v7);
}

Swift::Void __swiftcall MetadataSavingDelegate.insertOrUpdateMetadata(_:)(Swift::OpaquePointer a1)
{
  v3 = *(v1 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = swift_allocObject();
  v5[2]._rawValue = a1._rawValue;
  v7[4] = closure #1 in MetadataSavingDelegate.insertOrUpdateMetadata(_:)partial apply;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_14_2;
  v6 = _Block_copy(v7);

  [v3 addMetadata:isa completion:v6];
  _Block_release(v6);
}

void closure #1 in MetadataSavingDelegate.insertOrUpdateMetadata(_:)(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.default);

    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136315138;
      v7 = Dictionary.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v24);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_20AEA4000, oslog, v4, "[SessionMetadataDelegate] Successfully added metadata to builder: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      v10 = v5;
LABEL_10:
      MEMORY[0x20F2E9420](v10, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.default);

    v13 = a2;
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v17 = Optional.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = Dictionary.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v24);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_20AEA4000, oslog, v14, "[SessionMetadataDelegate] Failed to add metadata to builder with error: %s, metadata: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v16, -1, -1);
      v10 = v15;
      goto LABEL_10;
    }
  }
}

Swift::Void __swiftcall MetadataSavingDelegate.removeMetadata(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
  v5 = MEMORY[0x20F2E6C00]();
  v6 = swift_allocObject();
  *(v6 + 16) = countAndFlagsBits;
  *(v6 + 24) = object;
  v8[4] = partial apply for closure #1 in MetadataSavingDelegate.removeMetadata(_:);
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v8[3] = &block_descriptor_20;
  v7 = _Block_copy(v8);

  [v4 _removeMetadata_completion_];
  _Block_release(v7);
}

void closure #1 in MetadataSavingDelegate.removeMetadata(_:)(char a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.default);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v21);
      _os_log_impl(&dword_20AEA4000, oslog, v7, "[SessionMetadataDelegate] Successfully removed metadata to builder: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      v10 = v8;
LABEL_10:
      MEMORY[0x20F2E9420](v10, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.default);

    v13 = a2;
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v17 = Optional.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v21);
      _os_log_impl(&dword_20AEA4000, oslog, v14, "[SessionMetadataDelegate] Failed to remove metadata from builder with error: %s, metadataKey: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v16, -1, -1);
      v10 = v15;
      goto LABEL_10;
    }
  }
}

id MetadataSavingDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetadataSavingDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataSavingDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PowerZonesAccumulator.livePowerZones.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal);
  if (!v1)
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  swift_beginAccess();
  v5 = *(v1 + 33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 16) = v2;
  swift_beginAccess();
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 33) = v5;
  v8 = v6;

  specialized ZonesAccumulator.update<A>(liveZones:)(&v8);

  return v6;
}

uint64_t PowerZonesAccumulator.zones.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
    swift_beginAccess();
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    swift_beginAccess();
    v5 = *(v1 + 33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    *(inited + 16) = v2;
    swift_beginAccess();
    *(inited + 24) = v3;
    *(inited + 32) = v4;
    *(inited + 33) = v5;
    v8 = inited;

    specialized ZonesAccumulator.update<A>(liveZones:)(&v8);

    swift_beginAccess();
    v1 = specialized _arrayForceCast<A, B>(_:)(*(inited + 16));
  }

  return v1;
}

uint64_t key path setter for PowerZonesAccumulator.lastAlertFiredAtDate : PowerZonesAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of Date?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t PowerZonesAccumulator.lastAlertFiredAtDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t PowerZonesAccumulator.lastAlertFiredAtDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

void PowerZonesAccumulator.oldZoneState.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void PowerZonesAccumulator.oldZoneState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t (*PowerZonesAccumulator.workoutAlertDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_workoutAlertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PowerZonesAccumulator.workoutAlertDelegate.modify;
}

id @objc PowerZonesAccumulator.workoutAlertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t PowerZonesAccumulator.workoutAlertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PowerZonesAccumulator.powerZonesConfigurationDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesConfigurationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PowerZonesAccumulator.powerZonesConfigurationDelegate.modify;
}

void PowerZonesAccumulator.workoutAlertDelegate.modify(void **a1, char a2)
{
  v3 = *a1;
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

id PowerZonesAccumulator.init(builder:activityType:healthStore:quantityTypeIdentifier:liveWorkoutConfiguration:targetZone:)(void *a1, void *a2, void *a3, void *a4, char *a5, void *a6)
{
  v7 = v6;
  v84 = a4;
  v87 = a1;
  v76[1] = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  v91 = v12;
  v92 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v85 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v83 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v86, v19);
  *&v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal] = 0;
  v20 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 56);
  v22(&v7[v20], 1, 1, v21);
  v77 = v22;
  v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_configurationStore] = specialized static CyclingPowerZonesConfigurationStore.create(with:)(a3);
  *&v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesAlertTargetZone] = a6;
  *&v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_activityType] = a2;
  v90 = a5;
  type metadata accessor for IntervalWorkoutConfiguration(0);
  v23 = swift_dynamicCastClass();
  v24 = 60.0;
  if (v23)
  {
    v24 = 10.0;
  }

  *&v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_alertHoldoffTime] = v24;
  v25 = objc_opt_self();
  v89 = a6;
  v88 = a2;
  v87 = v87;
  v81 = a3;
  v84 = v84;
  v82 = [v25 wattUnit];
  v22(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate], 1, 1, v21);
  v26 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_pendingSamples] = MEMORY[0x277D84F90];
  v27 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v78 = type metadata accessor for OS_dispatch_queue();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v80 = *MEMORY[0x277D85260];
  v28 = *(v92 + 104);
  v92 += 104;
  v79 = v28;
  v29 = v85;
  v28(v85);
  *&v7[v27] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v30 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes;
  v31 = v26;
  *&v7[v30] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(v26);
  v32 = v77;
  v77(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate], 1, 1, v21);
  v33 = &v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex];
  *v33 = 0;
  v33[8] = 1;
  v32(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate], 1, 1, v21);
  v32(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate], 1, 1, v21);
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused] = 0;
  v34 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue;
  static DispatchQoS.unspecified.getter();
  v94[0] = v31;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v35 = v81;
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v36 = v84;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v79(v29, v80, v91);
  v37 = v82;
  *&v7[v34] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v38 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator] = 0;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore] = v35;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout] = 0x403E000000000000;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier] = v36;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit] = v37;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {
    v43 = v35;
    v44 = v36;
    v45 = v37;
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v47 = v35;
    v48 = v36;
    v49 = v37;

    if ((v46 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  type metadata accessor for WindowedAccumulator();
  v50 = swift_allocObject();
  *(v50 + 48) = MEMORY[0x277D84F90];
  *(v50 + 56) = 0;
  *(v50 + 16) = 0x4010000000000000;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 40) = 1;
  *&v7[v38] = v50;

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static WOLog.zones);
  v52 = v36;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v94[0] = v56;
    *v55 = 136315394;
    implicit closure #1 in ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)();
    v57 = _typeName(_:qualified:)();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v94);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v94);

    *(v55 + 14) = v62;
    _os_log_impl(&dword_20AEA4000, v53, v54, "%s using 3s average accumulator for processing %s samples", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v56, -1, -1);
    MEMORY[0x20F2E9420](v55, -1, -1);
  }

LABEL_12:
  v63 = type metadata accessor for ZonesAccumulator(0);
  v93.receiver = v7;
  v93.super_class = v63;
  v64 = v87;
  v65 = objc_msgSendSuper2(&v93, sel_initWithBuilder_, v87);

  v66 = v65;
  PowerZonesAccumulator.loadPowerZones()();
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static WOLog.zones);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v94[0] = v71;
    *v70 = 136315138;
    v72 = _typeName(_:qualified:)();
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v94);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_20AEA4000, v68, v69, "%s initialized", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x20F2E9420](v71, -1, -1);
    MEMORY[0x20F2E9420](v70, -1, -1);
  }

  return v66;
}

uint64_t PowerZonesAccumulator.loadPowerZones()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v124 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v123 = &v116 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v128 = &v116 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v127 = &v116 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v116 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v116 - v20;
  v22 = [v0 builder];
  v23 = [v22 metadata];
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = unpackedCyclingPowerZonesConfiguration(from:)(v24);

  if (v25)
  {
    v26 = [v1 &selRef_isEqualToNumber_ + 1];
    v27 = [v26 metadata];
    v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v28, 0xD00000000000002FLL, 0x800000020B45B7B0);

    v125 = v29;
    if (v29)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v126 = v21;
      v30 = type metadata accessor for Logger();
      v122 = __swift_project_value_buffer(v30, static WOLog.zones);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = os_log_type_enabled(v31, v32);
      v121 = v18;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v130 = v35;
        *v34 = 136315138;
        v36 = _typeName(_:qualified:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v130);

        *(v34 + 4) = v38;
        v18 = v121;
        _os_log_impl(&dword_20AEA4000, v31, v32, "%s is recovering CyclingPowerZonesConfiguration and state from builder metadata", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x20F2E9420](v35, -1, -1);
        MEMORY[0x20F2E9420](v34, -1, -1);
      }

      v39 = [v1 builder];
      v40 = [v39 metadata];
      v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v41, 0xD000000000000038, 0x800000020B45B7E0, v126);

      v42 = [v1 builder];
      v43 = [v42 metadata];
      v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v44, 0xD000000000000038, 0x800000020B45B820, v18);

      v45 = [v1 builder];
      v46 = [v45 metadata];
      v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v120 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v47, 0xD000000000000032, 0x800000020B45B860);
      v119 = v48;

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v130 = v52;
        *v51 = 136315394;
        v53 = _typeName(_:qualified:)();
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v130);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;

        v56 = CyclingPowerZonesConfiguration.description.getter();
        v58 = v57;

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v130);
        v18 = v121;

        *(v51 + 14) = v59;
        _os_log_impl(&dword_20AEA4000, v49, v50, "%s recovered cyclingPowerZonesConfiguration: %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v52, -1, -1);
        MEMORY[0x20F2E9420](v51, -1, -1);
      }

      v60 = v126;
      v61 = v127;
      outlined init with copy of Date?(v126, v127);
      v62 = v128;
      outlined init with copy of Date?(v18, v128);
      v63 = v125;

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v118 = v65;
        v122 = v64;
        v66 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v132 = v117;
        *v66 = 136316162;
        v67 = _typeName(_:qualified:)();
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v132);

        *(v66 + 4) = v69;
        *(v66 + 12) = 2080;
        v70 = Dictionary.description.getter();
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v132);

        *(v66 + 14) = v72;
        *(v66 + 22) = 2080;
        v73 = v123;
        outlined init with copy of Date?(v61, v123);
        v74 = type metadata accessor for Date();
        ObjectType = *(v74 - 8);
        v75 = *(ObjectType + 48);
        if (v75(v73, 1, v74) == 1)
        {
          _s10Foundation4DateVSgWOhTm_3(v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v76 = 0;
          v77 = 0;
        }

        else
        {
          if (one-time initialization token for logDateFormatter != -1)
          {
            swift_once();
          }

          v91 = static WOLog.logDateFormatter;
          isa = Date._bridgeToObjectiveC()().super.isa;
          v93 = [v91 stringFromDate_];

          v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v94;

          (*(ObjectType + 8))(v73, v74);
        }

        v130 = v76;
        v131 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v95 = Optional.description.getter();
        v97 = v96;
        _s10Foundation4DateVSgWOhTm_3(v127, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v132);

        *(v66 + 24) = v98;
        *(v66 + 32) = 2080;
        v99 = v124;
        outlined init with copy of Date?(v128, v124);
        if (v75(v99, 1, v74) == 1)
        {
          _s10Foundation4DateVSgWOhTm_3(v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v100 = 0;
          v101 = 0;
        }

        else
        {
          if (one-time initialization token for logDateFormatter != -1)
          {
            swift_once();
          }

          v102 = static WOLog.logDateFormatter;
          v103 = v99;
          v104 = Date._bridgeToObjectiveC()().super.isa;
          v105 = [v102 stringFromDate_];

          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v106;

          (*(ObjectType + 8))(v103, v74);
        }

        v130 = v100;
        v131 = v101;
        v107 = Optional.description.getter();
        v109 = v108;
        _s10Foundation4DateVSgWOhTm_3(v128, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, &v132);

        *(v66 + 34) = v110;
        *(v66 + 42) = 2080;
        v89 = v120;
        v130 = v120;
        v90 = v119;
        LOBYTE(v131) = v119 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
        v111 = Optional.description.getter();
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, &v132);

        *(v66 + 44) = v113;
        v114 = v122;
        _os_log_impl(&dword_20AEA4000, v122, v118, "%s recovered elapsedTimeInCyclingPowerZones: %s, lastProcessedEntryDate: %s, lastProcessedEventDate: %s currentZoneIndex: %s", v66, 0x34u);
        v115 = v117;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v115, -1, -1);
        MEMORY[0x20F2E9420](v66, -1, -1);

        v18 = v121;
        v63 = v125;
        v60 = v126;
      }

      else
      {

        _s10Foundation4DateVSgWOhTm_3(v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        _s10Foundation4DateVSgWOhTm_3(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v89 = v120;
        v90 = v119;
      }

      PowerZonesAccumulator._mainThread_handleRecovery(cyclingPowerZonesConfiguration:elapsedTimeInCyclingPowerZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(v25, v63, v60, v18, v89, v90 & 1);

      _s10Foundation4DateVSgWOhTm_3(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return _s10Foundation4DateVSgWOhTm_3(v60, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  __swift_project_value_buffer(v78, static WOLog.zones);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v130 = v82;
    *v81 = 136315138;
    v83 = _typeName(_:qualified:)();
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v130);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_20AEA4000, v79, v80, "%s is loading CyclingPowerZonesConfiguration from value store", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x20F2E9420](v82, -1, -1);
    MEMORY[0x20F2E9420](v81, -1, -1);
  }

  v86 = swift_allocObject();
  *(v86 + 16) = v1;
  v87 = v1;
  CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(partial apply for closure #1 in PowerZonesAccumulator.loadPowerZones(), v86);
}

uint64_t closure #1 in PowerZonesAccumulator.loadPowerZones()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in PowerZonesAccumulator.loadPowerZones();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_71_0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v13);
  _Block_release(v13);

  (*(v16 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v15);
}

void closure #1 in closure #1 in PowerZonesAccumulator.loadPowerZones()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    PowerZonesAccumulator._mainThread_handleCyclingPowerZonesConfigurationLoad(_:)(a2);
  }
}

id PowerZonesAccumulator._mainThread_handleRecovery(cyclingPowerZonesConfiguration:elapsedTimeInCyclingPowerZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(unint64_t isa, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v201 = a4;
  v207 = a3;
  v219 = a2;
  ObjectType = swift_getObjectType();
  v218 = type metadata accessor for DispatchQoS();
  isUniquelyReferenced_nonNull_native = *(v218 - 8);
  MEMORY[0x28223BE20](v218, v12);
  v217 = &v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v216 - 8);
  MEMORY[0x28223BE20](v216, v15);
  v215 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = MEMORY[0x28223BE20](v194, v17);
  v196 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v202 = &v189 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v195 = &v189 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v200 = &v189 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v193 = &v189 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v206 = &v189 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v189 - v36;
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v203 = &v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v192 = &v189 - v45;
  MEMORY[0x28223BE20](v44, v46);
  v199 = &v189 - v47;
  if ((a6 & 1) == 0)
  {
    v48 = CyclingPowerZonesConfiguration.zones.getter();
    if (!(v48 >> 62))
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }

    goto LABEL_92;
  }

LABEL_8:
  outlined init with copy of Date?(v207, v37);
  v51 = *(v39 + 48);
  v213 = v39 + 48;
  v212 = v51;
  v52 = v51(v37, 1, v38);
  v220 = v7;
  v198 = isa;
  v205 = v39;
  if (v52 == 1)
  {
    _s10Foundation4DateVSgWOhTm_3(v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static WOLog.zones);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock = v57;
      *v56 = 136315138;
      v58 = _typeName(_:qualified:)();
      isUniquelyReferenced_nonNull_native = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &aBlock);

      *(v56 + 4) = isUniquelyReferenced_nonNull_native;
      _os_log_impl(&dword_20AEA4000, v54, v55, "%s no lastProcessedEntryDate found in metadata, recovering from the beginning with HK query", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x20F2E9420](v57, -1, -1);
      MEMORY[0x20F2E9420](v56, -1, -1);
    }

    a5 = 0;
    goto LABEL_45;
  }

  v60 = v199;
  (*(v39 + 32))(v199, v37, v38);
  v61 = *(v39 + 16);
  v62 = v206;
  v191 = v39 + 16;
  v190 = v61;
  v61(v206, v60, v38);
  v63 = *(v39 + 56);
  v197 = v38;
  v63(v62, 0, 1, v38);
  ZonesAccumulator.lastProcessedEntryDate.setter(v62);
  v64 = v219 + 8;
  v65 = 1 << LOBYTE(v219[4].isa);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  isa = v66 & v219[8].isa;
  v214 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v38 = (v65 + 63) >> 6;
  v210 = v223;
  v209 = (isUniquelyReferenced_nonNull_native + 8);
  v208 = &v14[1];

  v39 = 0;
  a5 = 0;
  v211 = v64;
  while (isa)
  {
LABEL_24:
    v74 = (v39 << 9) | (8 * __clz(__rbit64(isa)));
    v75 = *(v219[6].isa + v74);
    v76 = *(v219[7].isa + v74);
    v14 = *(v7 + v214);
    MEMORY[0x28223BE20](v67, v68);
    *(&v189 - 2) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    OS_dispatch_queue.sync<A>(execute:)();
    v77 = aBlock;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v77;
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v75);
    v79 = *(v77 + 16);
    v80 = (v78 & 1) == 0;
    v67 = v79 + v80;
    if (__OFADD__(v79, v80))
    {
      goto LABEL_82;
    }

    v81 = v78;
    if (*(v77 + 24) >= v67)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v83 = aBlock;
        if (v78)
        {
          goto LABEL_17;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v83 = aBlock;
        if (v81)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, isUniquelyReferenced_nonNull_native);
      v67 = specialized __RawDictionaryStorage.find<A>(_:)(v75);
      if ((v81 & 1) != (v82 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v7 = v67;
      v83 = aBlock;
      if (v81)
      {
LABEL_17:
        *(v83[7] + 8 * v7) = v76;
        goto LABEL_18;
      }
    }

    v83[(v7 >> 6) + 8] |= 1 << v7;
    *(v83[6] + 8 * v7) = v75;
    *(v83[7] + 8 * v7) = v76;
    v84 = v83[2];
    v85 = __OFADD__(v84, 1);
    v86 = v84 + 1;
    if (v85)
    {
      while (1)
      {
        __break(1u);
LABEL_84:
        v185 = v67;
        v37 = __CocoaSet.count.getter();
        v67 = v185;
        if (!v37)
        {
          goto LABEL_85;
        }

LABEL_69:
        v171 = v67;
        v225 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v37 < 0)
        {
          __break(1u);
LABEL_92:
          v49 = __CocoaSet.count.getter();
LABEL_4:

          if (v49 > a5)
          {
            v50 = a5;
          }

          else
          {
            v50 = 0;
          }

          ZonesAccumulator.currentZoneIndex.setter(v50, v49 <= a5);
          goto LABEL_8;
        }

        isUniquelyReferenced_nonNull_native = 0;
        v39 = *(v7 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
        v172 = v171;
        v219 = (v171 & 0xC000000000000001);
        isa = v171;
        while (1)
        {
          if (v219)
          {
            v173 = MEMORY[0x20F2E7A20](isUniquelyReferenced_nonNull_native, v172);
            v175 = v173;
          }

          else
          {
            v175 = *(v172 + 8 * isUniquelyReferenced_nonNull_native + 32);
          }

          v38 = *(v175 + 4);
          MEMORY[0x28223BE20](v173, v174);
          *(&v189 - 2) = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
          OS_dispatch_queue.sync<A>(execute:)();
          v176 = v224;
          v177 = 0;
          if (*(v224 + 16))
          {
            v178 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
            if (v179)
            {
              v177 = *(*(v176 + 56) + 8 * v178);
            }
          }

          v180 = v175[2];
          v181 = v175[3];
          v14 = *(v175 + 5);
          type metadata accessor for LivePowerZone();
          v7 = swift_allocObject();
          *(v7 + 48) = 0;
          swift_beginAccess();
          *(v7 + 48) = v177;

          v182 = floor(v180);
          v183 = floor(v181);
          if (v182 > v183)
          {
            break;
          }

          ++isUniquelyReferenced_nonNull_native;
          *(v7 + 16) = v182;
          *(v7 + 24) = v183;
          *(v7 + 32) = v38;
          *(v7 + 40) = v14;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v7 = v220;
          v172 = isa;
          if (v37 == isUniquelyReferenced_nonNull_native)
          {

            v184 = v225;
            goto LABEL_86;
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
      }
    }

    v83[2] = v86;
LABEL_18:
    isa &= isa - 1;
    isUniquelyReferenced_nonNull_native = v215;
    static DispatchWorkItemFlags.barrier.getter();
    v69 = swift_allocObject();
    v7 = v220;
    *(v69 + 16) = v220;
    *(v69 + 24) = v83;
    v223[2] = _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvsyyYbcfU_TA_1;
    v223[3] = v69;
    aBlock = MEMORY[0x277D85DD0];
    v222 = 1107296256;
    v223[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v223[1] = &block_descriptor_58;
    v70 = _Block_copy(&aBlock);
    v71 = v7;
    v72 = v217;
    static DispatchQoS.unspecified.getter();
    MEMORY[0x20F2E7580](0, v72, isUniquelyReferenced_nonNull_native, v70);
    _Block_release(v70);
    (*v209)(v72, v218);
    (*v208)(isUniquelyReferenced_nonNull_native, v216);

    v64 = v211;
  }

  while (1)
  {
    v73 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_81;
    }

    if (v73 >= v38)
    {
      break;
    }

    isa = v64[v73].isa;
    ++v39;
    if (isa)
    {
      v39 = v73;
      goto LABEL_24;
    }
  }

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  __swift_project_value_buffer(v87, static WOLog.zones);
  v88 = v7;
  v89 = Logger.logObject.getter();
  v90 = v7;
  v91 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v89, v91))
  {
    v219 = v89;
    v92 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    v225 = v218;
    *v92 = 136315906;
    v93 = _typeName(_:qualified:)();
    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v225);

    *(v92 + 4) = v95;
    *(v92 + 12) = 2080;
    MEMORY[0x28223BE20](v96, v97);
    *(&v189 - 2) = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    OS_dispatch_queue.sync<A>(execute:)();
    v98 = Dictionary.description.getter();
    v100 = v99;

    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &v225);

    *(v92 + 14) = v101;
    *(v92 + 22) = 2080;
    MEMORY[0x28223BE20](v102, v103);
    *(&v189 - 2) = v88;
    v104 = v193;
    OS_dispatch_queue.sync<A>(execute:)();
    v105 = v197;
    if (v212(v104, 1, v197))
    {
      _s10Foundation4DateVSgWOhTm_3(v104, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v106 = 0;
      v107 = 0;
      isUniquelyReferenced_nonNull_native = v205;
    }

    else
    {
      v108 = v192;
      v190(v192, v104, v105);
      _s10Foundation4DateVSgWOhTm_3(v104, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (one-time initialization token for logDateFormatter != -1)
      {
        swift_once();
      }

      v109 = static WOLog.logDateFormatter;
      v110 = Date._bridgeToObjectiveC()().super.isa;
      v111 = [v109 stringFromDate_];

      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v112;

      isUniquelyReferenced_nonNull_native = v205;
      (*(v205 + 8))(v108, v197);
    }

    aBlock = v106;
    v222 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v113 = Optional.description.getter();
    v115 = v114;

    v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, &v225);

    *(v92 + 24) = v116;
    *(v92 + 32) = 2080;
    MEMORY[0x28223BE20](v117, v118);
    *(&v189 - 2) = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    v119 = Optional.description.getter();
    v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, &v225);

    *(v92 + 34) = v121;
    v122 = v219;
    _os_log_impl(&dword_20AEA4000, v219, v91, "%s recovered elapsedTimes: %s from metadata with lastProcessedEntryDate: %s, currentZoneIndex: %s", v92, 0x2Au);
    v123 = v218;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v123, -1, -1);
    MEMORY[0x20F2E9420](v92, -1, -1);

    v38 = v197;
    (*(isUniquelyReferenced_nonNull_native + 8))(v199, v197);
    v7 = v220;
    isa = v198;
    v39 = isUniquelyReferenced_nonNull_native;
  }

  else
  {

    v39 = v205;
    v38 = v197;
    (*(v205 + 8))(v199, v197);
    v7 = v90;
    isa = v198;
  }

LABEL_45:
  v124 = v200;
  outlined init with copy of Date?(v201, v200);
  if (v212(v124, 1, v38) == 1)
  {
    _s10Foundation4DateVSgWOhTm_3(v124, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v125 = v207;
    v126 = v206;
    outlined init with copy of Date?(v207, v206);
    v127 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    outlined assign with take of Date?(v126, v7 + v127);
    swift_endAccess();
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v128 = type metadata accessor for Logger();
    __swift_project_value_buffer(v128, static WOLog.zones);
    v129 = v202;
    outlined init with copy of Date?(v125, v202);
    v14 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v39))
    {
      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v225 = v130;
      *isUniquelyReferenced_nonNull_native = 136315394;
      v131 = _typeName(_:qualified:)();
      v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v132, &v225);

      *(isUniquelyReferenced_nonNull_native + 4) = v133;
      *(isUniquelyReferenced_nonNull_native + 12) = 2080;
      v134 = v196;
      outlined init with copy of Date?(v202, v196);
      if (v212(v134, 1, v38) == 1)
      {
        _s10Foundation4DateVSgWOhTm_3(v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v135 = 0;
        v136 = 0;
      }

      else
      {
        v219 = v130;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v152 = static WOLog.logDateFormatter;
        v153 = v134;
        v154 = Date._bridgeToObjectiveC()().super.isa;
        v155 = [v152 stringFromDate_];

        v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v156;

        (*(v205 + 8))(v153, v38);
        v130 = v219;
      }

      aBlock = v135;
      v222 = v136;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v157 = Optional.description.getter();
      v159 = v158;
      _s10Foundation4DateVSgWOhTm_3(v202, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

      v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v159, &v225);

      *(isUniquelyReferenced_nonNull_native + 14) = v160;
      _os_log_impl(&dword_20AEA4000, v14, v39, "%s no lastProcessedEventDate found in metadata, assign lastProcessedEntryDate: %s", isUniquelyReferenced_nonNull_native, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v130, -1, -1);
      MEMORY[0x20F2E9420](isUniquelyReferenced_nonNull_native, -1, -1);

      goto LABEL_66;
    }

    _s10Foundation4DateVSgWOhTm_3(v129, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v137 = v203;
    (*(v39 + 32))(v203, v124, v38);
    v138 = *(v39 + 16);
    v139 = v206;
    v138(v206, v137, v38);
    v140 = *(v39 + 56);
    v39 = v38;
    v140(v139, 0, 1, v38);
    v38 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    outlined assign with take of Date?(v139, v7 + v38);
    swift_endAccess();
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v141 = type metadata accessor for Logger();
    __swift_project_value_buffer(v141, static WOLog.zones);
    v142 = v7;
    v14 = Logger.logObject.getter();
    v143 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v143))
    {
      LODWORD(v219) = v143;
      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v225 = v218;
      *isUniquelyReferenced_nonNull_native = 136315394;
      v144 = _typeName(_:qualified:)();
      v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, &v225);

      *(isUniquelyReferenced_nonNull_native + 4) = v146;
      *(isUniquelyReferenced_nonNull_native + 12) = 2080;
      v147 = v195;
      outlined init with copy of Date?(v7 + v38, v195);
      v148 = v39;
      if (v212(v147, 1, v39))
      {
        _s10Foundation4DateVSgWOhTm_3(v147, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v149 = 0;
        v150 = 0;
        isa = v198;
        v151 = v205;
      }

      else
      {
        v38 = v192;
        v138(v192, v147, v39);
        _s10Foundation4DateVSgWOhTm_3(v147, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v151 = v205;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v161 = static WOLog.logDateFormatter;
        v162 = Date._bridgeToObjectiveC()().super.isa;
        v163 = [v161 stringFromDate_];

        v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v150 = v164;

        (*(v151 + 8))(v38, v148);
        isa = v198;
      }

      aBlock = v149;
      v222 = v150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v165 = Optional.description.getter();
      v167 = v166;

      v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v167, &v225);

      *(isUniquelyReferenced_nonNull_native + 14) = v168;
      _os_log_impl(&dword_20AEA4000, v14, v219, "%s recovered lastProcessedEventDate: %s", isUniquelyReferenced_nonNull_native, 0x16u);
      v169 = v218;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v169, -1, -1);
      MEMORY[0x20F2E9420](isUniquelyReferenced_nonNull_native, -1, -1);

      v170 = *(v151 + 8);
      v39 = v151 + 8;
      v170(v203, v148);
LABEL_66:
      v7 = v220;
    }

    else
    {

      (*(v205 + 8))(v203, v39);
      isa = v198;
    }
  }

  v67 = CyclingPowerZonesConfiguration.zones.getter();
  if (v67 >> 62)
  {
    goto LABEL_84;
  }

  v37 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
    goto LABEL_69;
  }

LABEL_85:

  v184 = MEMORY[0x277D84F90];
LABEL_86:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
  v186 = swift_allocObject();
  *(v186 + 24) = 0;
  *(v186 + 32) = 1;
  *(v186 + 16) = v184;
  swift_beginAccess();
  *(v186 + 24) = 0;
  *(v186 + 32) = 257;
  *(v7 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal) = v186;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong powerZonesConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  result = [v7 isAccumulating];
  if (result)
  {
    return [v7 update];
  }

  return result;
}

id PowerZonesAccumulator._mainThread_handleCyclingPowerZonesConfigurationLoad(_:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_22;
  }

  if (one-time initialization token for zones != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.zones);
    swift_retain_n();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v54[0] = v12;
      *v11 = 136315906;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v54);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = CyclingPowerZonesConfiguration.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v54);

      *(v11 + 14) = v18;
      *(v11 + 22) = 1024;
      v19 = specialized static CyclingPowerZonesConfigurationEditor.createAutomaticEmptyConfiguration()();
      LOBYTE(v18) = specialized static CyclingPowerZonesConfiguration.== infix(_:_:)(a1, v19);

      *(v11 + 24) = v18 & 1;

      *(v11 + 28) = 1024;
      v20 = specialized static CyclingPowerZonesConfiguration.canonical()();
      LOBYTE(v18) = specialized static CyclingPowerZonesConfiguration.== infix(_:_:)(a1, v20);

      *(v11 + 30) = v18 & 1;

      _os_log_impl(&dword_20AEA4000, v9, v10, "%s loaded CyclingPowerZonesConfiguration: %s (isAutomaticEmpty: %{BOOL}d, isCanonical: %{BOOL}d)", v11, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    else
    {
    }

    v21 = CyclingPowerZonesConfiguration.zones.getter();
    if (v21 >> 62)
    {
      v44 = __CocoaSet.count.getter();

      if (v44)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v22)
      {
        goto LABEL_11;
      }
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54[0] = v26;
      *v25 = 136315138;
      v27 = _typeName(_:qualified:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v54);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20AEA4000, v23, v24, "%s loaded CyclingPowerZonesConfiguration has empty zones", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

LABEL_11:
    v30 = CyclingPowerZonesConfiguration.zones.getter();
    v31 = v30;
    if (v30 >> 62)
    {
      break;
    }

    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
      goto LABEL_27;
    }

LABEL_13:
    v53[0] = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v32 < 0)
    {
      __break(1u);
      return result;
    }

    v34 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x20F2E7A20](v34, v31);
      }

      else
      {
        v35 = *(v31 + 8 * v34 + 32);
      }

      v36 = v35[2];
      v37 = v35[3];
      v39 = *(v35 + 4);
      v38 = *(v35 + 5);
      type metadata accessor for LivePowerZone();
      v40 = swift_allocObject();
      *(v40 + 48) = 0;
      swift_beginAccess();
      *(v40 + 48) = 0;

      v41 = floor(v36);
      v42 = floor(v37);
      if (v41 > v42)
      {
        break;
      }

      ++v34;
      *(v40 + 16) = v41;
      *(v40 + 24) = v42;
      *(v40 + 32) = v39;
      *(v40 + 40) = v38;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v32 == v34)
      {

        v43 = v53[0];
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v32 = __CocoaSet.count.getter();
  if (v32)
  {
    goto LABEL_13;
  }

LABEL_27:

  v43 = MEMORY[0x277D84F90];
LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  *(v45 + 32) = 1;
  *(v45 + 16) = v43;
  swift_beginAccess();
  *(v45 + 24) = 0;
  *(v45 + 32) = 257;
  v46 = v52;
  *&v52[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal] = v45;

  v47 = [v46 builder];

  HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.setter(v48);

  v49 = [v46 builder];

  HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.setter(v50);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong powerZonesConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  result = [v46 isAccumulating];
  if (result)
  {
    return [v46 update];
  }

  return result;
}