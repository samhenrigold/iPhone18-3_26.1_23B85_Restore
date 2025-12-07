uint64_t closure #1 in CAPackage.PackageDataCache.data(for:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (*(v8 + 16))
  {

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      outlined copy of Data._Representation(*v11, v13);
    }

    else
    {
      v12 = 0;
      v13 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = *a1;
  v15 = a1[1];
  *a1 = v12;
  a1[1] = v13;
  return outlined consume of Data?(v14, v15);
}

uint64_t CAPackage.PackageDataCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CAPackage.PackageDataCache.init()()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10 - 8);
  __chkstk_darwin();
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v4 = type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0, OS_dispatch_queue_ptr);
  v8[1] = "Cache";
  v8[2] = v4;
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&_sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWL_0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd_0, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR_0);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWL_0, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd_0, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR_0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = v9;
  *(v9 + 24) = v5;
  return v6;
}

id CAPackage.init(definition:)(uint64_t a1)
{
  v40 = type metadata accessor for URL();
  v3 = *(v40 - 8);
  __chkstk_darwin();
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v37 - v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v41 = v1;
  v8 = static CAPackage.PackageDataCache.shared;
  v10 = *a1;
  v9 = *(a1 + 8);
  CAPackage.PackageDataCache.data(for:)(*a1, v9);
  if (v12 >> 60 == 15)
  {
    v38 = v3;
    v13 = *(a1 + 16);
    v39 = a1;
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 URLForResource:v15 withExtension:v16];

    if (!v17)
    {
      [objc_allocWithZone(NSError) initWithDomain:NSURLErrorDomain code:-1002 userInfo:0];
      swift_willThrow();
      outlined destroy of CAPackageDefinition(v39);

      return v8;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v38;
    v19 = v40;
    (*(v38 + 32))(v7, v5, v40);
    v20 = v41;
    v21 = Data.init(contentsOf:options:)();
    if (v20)
    {
      (*(v18 + 8))(v7, v19);

      v23 = v39;
LABEL_12:
      outlined destroy of CAPackageDefinition(v23);
      return v8;
    }

    v30 = v21;
    v41 = 0;
    v31 = v22;
    CAPackage.PackageDataCache.set(data:packageName:)(v21, v22, v10, v9);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = v31;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v42 = 0;
    v8 = [ObjCClassFromMetadata packageWithData:isa type:kCAPackageTypeArchive options:0 error:&v42];

    if (!v8)
    {
      v8 = v42;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v30, v33);
      outlined destroy of CAPackageDefinition(v39);
      (*(v38 + 8))(v7, v19);
      return v8;
    }

    v35 = *(v38 + 8);
    v36 = v42;
    v35(v7, v19);

    outlined consume of Data._Representation(v30, v33);
    a1 = v39;
  }

  else
  {
    v24 = v11;
    v25 = v12;
    v26 = swift_getObjCClassFromMetadata();
    v27 = Data._bridgeToObjectiveC()().super.isa;
    v42 = 0;
    v8 = [v26 packageWithData:v27 type:kCAPackageTypeArchive options:0 error:&v42];

    if (!v8)
    {
      v8 = v42;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data?(v24, v25);
      v23 = a1;
      goto LABEL_12;
    }

    v28 = v42;
    outlined consume of Data?(v24, v25);
  }

  outlined destroy of CAPackageDefinition(a1);
  return v8;
}

id static CAPackageDefinition.play.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (one-time initialization token for module != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a4;
    v10 = a3;
    swift_once();
    a1 = v7;
    a2 = v8;
    a3 = v10;
    a4 = v9;
  }

  v5 = static NSBundle.module;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  *(a4 + 24) = 0x3FF0000000000000;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0x3FF0000000000000;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 1;

  return v5;
}

id static CAPackageDefinition.skipBackward.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.module;
  CGAffineTransformMakeScale(&v7, -1.0, 1.0);
  v2 = *&v7.a;
  v3 = *&v7.c;
  v4 = *&v7.tx;
  *a1 = 0x4264726177726F46;
  *(a1 + 8) = 0xEF647261776B6361;
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  *(a1 + 40) = v3;
  *(a1 + 56) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = &outlined read-only object #0 of static CAPackageDefinition.skipBackward.getter;
  *(a1 + 96) = 1;

  return v6;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    outlined consume of Data._Representation(v25, v26);
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v23[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v23[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v23[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v30;
}

uint64_t specialized static CAPackageDefinition.__derived_struct_equals(_:_:)(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
    if (static NSObject.== infix(_:_:)() & 1) != 0 && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(a1 + 9), *(a2 + 72)))
    {
      if (a1[12])
      {
        if (*(a2 + 96))
        {
          return 1;
        }
      }

      else if ((*(a2 + 96) & 1) == 0 && a1[10] == *(a2 + 80) && a1[11] == *(a2 + 88))
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CAPackageDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CAPackageDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002BAB38()
{

  outlined consume of Data._Representation(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BABA8()
{

  return swift_deallocObject();
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CoreAnimationPackageView.init(definition:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = 0;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  v4[96] = *(a1 + 96);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  outlined init with copy of CAPackageDefinition(a1, v11);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CoreAnimationPackageView();
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  CoreAnimationPackageView.setupPackage()();
  CoreAnimationPackageView.reset()();
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection, UITraitCollection_ptr);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  outlined destroy of CAPackageDefinition(a1);

  return v8;
}

double CoreAnimationPackageView.definition.didset(uint64_t *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v5 = *(v4 + 5);
  *&v27[48] = *(v4 + 4);
  v28 = v5;
  v29 = v4[96];
  v6 = *(v4 + 1);
  v26 = *v4;
  *v27 = v6;
  v7 = *(v4 + 3);
  *&v27[16] = *(v4 + 2);
  *&v27[32] = v7;
  v8 = *a1;
  v9 = a1[1];
  if (v26 == *a1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
    outlined init with copy of CAPackageDefinition(&v26, v16);
    if (static NSObject.== infix(_:_:)() & 1) != 0 && (v16[0] = *&v27[8], v16[1] = *&v27[24], v16[2] = *&v27[40], v10 = *(a1 + 5), v20 = *(a1 + 3), v21 = v10, v22 = *(a1 + 7), (static CGAffineTransform.== infix(_:_:)()))
    {
      v11 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*&v27[56], a1[9]);
      outlined destroy of CAPackageDefinition(&v26);
      if (v11)
      {
        if (v29)
        {
          if (a1[12])
          {
            return result;
          }
        }

        else if ((a1[12] & 1) == 0 && *&v28 == *(a1 + 10))
        {
          result = *(&v28 + 1);
          if (*(&v28 + 1) == *(a1 + 11))
          {
            return result;
          }
        }
      }
    }

    else
    {
      outlined destroy of CAPackageDefinition(&v26);
    }
  }

  v13 = *v4 == *&v8 && *(v4 + 1) == v9;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    CoreAnimationPackageView.setupPackage()();
  }

  v14 = *(v4 + 40);
  v23 = *(v4 + 24);
  v24 = v14;
  v25 = *(v4 + 56);
  v15 = *(a1 + 5);
  v17 = *(a1 + 3);
  v18 = v15;
  v19 = *(a1 + 7);
  if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  CoreAnimationPackageView.reset()();
  return result;
}

__n128 CoreAnimationPackageView.definition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  outlined init with copy of CAPackageDefinition(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t CoreAnimationPackageView.definition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  outlined init with copy of CAPackageDefinition(v12, v11);
  outlined init with copy of CAPackageDefinition(a1, v11);
  outlined destroy of CAPackageDefinition(v18);
  CoreAnimationPackageView.definition.didset(v12);
  outlined destroy of CAPackageDefinition(v12);
  return outlined destroy of CAPackageDefinition(a1);
}

void (*CoreAnimationPackageView.definition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  outlined init with copy of CAPackageDefinition(v4, v4 + 416);
  return CoreAnimationPackageView.definition.modify;
}

void CoreAnimationPackageView.definition.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    outlined init with copy of CAPackageDefinition(v2 + 624, v2 + 728);
    outlined init with copy of CAPackageDefinition(v2 + 624, v2 + 728);
    outlined init with copy of CAPackageDefinition(v2 + 104, v2 + 728);
    outlined destroy of CAPackageDefinition(v4);
    CoreAnimationPackageView.definition.didset((v2 + 104));
    outlined destroy of CAPackageDefinition(v2 + 104);
    outlined destroy of CAPackageDefinition(v2 + 624);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    outlined init with copy of CAPackageDefinition(v2 + 208, v2 + 624);
    outlined init with copy of CAPackageDefinition(v4, v2 + 624);
    outlined destroy of CAPackageDefinition(v2 + 416);
    CoreAnimationPackageView.definition.didset((v2 + 208));
    outlined destroy of CAPackageDefinition(v2 + 208);
    v28 = v4;
  }

  outlined destroy of CAPackageDefinition(v28);

  free(v2);
}

void CoreAnimationPackageView.setupPackage()()
{
  v1 = v0;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAPackage, CAPackage_ptr);
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v51[4] = *(v2 + 4);
  v51[5] = v3;
  v52 = v2[96];
  v4 = *(v2 + 1);
  v51[0] = *v2;
  v51[1] = v4;
  v5 = *(v2 + 3);
  v51[2] = *(v2 + 2);
  v51[3] = v5;
  outlined init with copy of CAPackageDefinition(v51, v45);
  v6 = CAPackage.init(definition:)(v51);
  v26 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = v6;
  v27 = v6;

  v28 = [v27 rootLayer];
  if (v28)
  {
    v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = v28;
    v30 = v28;
    [v29 removeFromSuperlayer];

    v31 = [objc_allocWithZone(CAStateController) initWithLayer:v30];
    v32 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = v31;

    [v30 removeFromSuperlayer];
    [v30 setGeometryFlipped:{objc_msgSend(v27, "isGeometryFlipped")}];
    v33 = [v1 layer];
    [v33 addSublayer:v30];

    v34 = [v1 layer];
    [v34 bounds];

    CGRect.center.getter();
    [v30 setPosition:?];
    CoreAnimationPackageView.updateColor()();
  }

  else
  {
    lazy protocol witness table accessor for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage()();
    v35 = swift_allocError();
    swift_willThrow();

    if (one-time initialization token for musicCoreUI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.musicCoreUI);
    v8 = v1;
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446466;
      v13 = *(v2 + 3);
      v14 = *(v2 + 5);
      v48 = *(v2 + 4);
      v49 = v14;
      v15 = *(v2 + 1);
      v45[0] = *v2;
      v45[1] = v15;
      v16 = *(v2 + 3);
      v18 = *v2;
      v17 = *(v2 + 1);
      v46 = *(v2 + 2);
      v47 = v16;
      v19 = *(v2 + 5);
      v41 = v48;
      v42 = v19;
      v37 = v18;
      v38 = v17;
      v44[0] = v12;
      v50 = v2[96];
      v43 = v2[96];
      v39 = v46;
      v40 = v13;
      outlined init with copy of CAPackageDefinition(v45, v36);
      v20 = String.init<A>(describing:)();
      v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v20, v21, v44);

      *(v11 + 4) = v22;
      *(v11 + 12) = 2082;
      *&v37 = v35;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0, &_ss5Error_pMR_0);
      v23 = String.init<A>(describing:)();
      v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v23, v24, v44);

      *(v11 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load CAPackage with definition=%{public}s. Error=%{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void CoreAnimationPackageView.stateName.didset(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    if (a2)
    {
      v8 = v7 == a1 && v6 == a2;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v10 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v10)
    {
      return;
    }

    v11 = v10;

    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v13)
    {
      return;
    }

    v11 = v13;
    v12 = 0;
  }

  v14 = [v11 stateWithName:v12];

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v15)
    {
      v16 = *v9;
      v17 = objc_opt_self();
      v18 = v16;
      v19 = v15;
      v20 = v14;
      v21 = [v17 areAnimationsEnabled];
      v22 = 0.0;
      if (v21)
      {
        *&v22 = 1.0;
      }

      [v19 setState:v20 ofLayer:v18 transitionSpeed:v22];
    }
  }
}

uint64_t CoreAnimationPackageView.stateName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double CoreAnimationPackageView.stateName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  CoreAnimationPackageView.stateName.didset(v6, v7);

  return result;
}

void (*CoreAnimationPackageView.stateName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return CoreAnimationPackageView.stateName.modify;
}

void CoreAnimationPackageView.stateName.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    CoreAnimationPackageView.stateName.didset(v9, v8);
  }

  else
  {
    CoreAnimationPackageView.stateName.didset(v9, v8);
  }

  free(v2);
}

void *CoreAnimationPackageView.foregroundColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CoreAnimationPackageView.foregroundColor.setter(id a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
      a1 = a1;
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {

        v4 = v5;
LABEL_9:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    CoreAnimationPackageView.updateColor()();

    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

void (*CoreAnimationPackageView.foregroundColor.modify(uint64_t *a1))(id a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return CoreAnimationPackageView.foregroundColor.modify;
}

void CoreAnimationPackageView.foregroundColor.modify(id a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
        v5 = v3;
        v9 = v8;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    CoreAnimationPackageView.updateColor()();

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  CoreAnimationPackageView.foregroundColor.setter(v3);
  v5 = v2[3];
LABEL_11:

LABEL_12:

  free(v2);
}

Swift::Void __swiftcall CoreAnimationPackageView.reset()()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v2 = *(v1 + 72);
  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v4;
  v5[1] = v3;
  CoreAnimationPackageView.stateName.didset(v6, v7);

  v8 = *(v1 + 72);
  v9 = *(v8 + 16);
  if (v9)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v8, v8 + 32, 1, (2 * v9) | 1);
    v8 = v11;
  }

  else
  {
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  *(v0 + v10) = v8;
}

Swift::Void __swiftcall CoreAnimationPackageView.set(stateName:forSublayer:)(Swift::String stateName, Swift::String forSublayer)
{
  v3 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
  if (!v3)
  {
    return;
  }

  object = forSublayer._object;
  countAndFlagsBits = forSublayer._countAndFlagsBits;
  v6 = [v3 sublayers];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CALayer, CALayer_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v2;
  if (v8 >> 62)
  {
LABEL_32:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_33:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }
    }

    v31 = v11;
    v13 = [v11 name];
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = countAndFlagsBits;
    v15 = object;
    v16 = v13;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    object = v15;
    if (v17 == v14 && v19 == v15)
    {
      break;
    }

    countAndFlagsBits = v14;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_22;
    }

LABEL_6:

    ++v10;
    if (v12 == v9)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  v22 = String._bridgeToObjectiveC()();
  v23 = [v31 stateWithName:v22];

  if (v23)
  {
    v24 = *(v30 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v24)
    {
      v25 = objc_opt_self();
      v26 = v24;
      v27 = v23;
      v31 = v31;
      v28 = [v25 areAnimationsEnabled];
      v29 = 0.0;
      if (v28)
      {
        *&v29 = 1.0;
      }

      [v26 setState:v27 ofLayer:v31 transitionSpeed:v29];
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.advanceState()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
    swift_beginAccess();
    *(v0 + v1) = *(v2 + 72);
  }

  swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];

    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    swift_endAccess();
    v6 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = v5;
    v6[1] = v4;
    CoreAnimationPackageView.stateName.didset(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.startCyclingThroughStates(with:)(Swift::Double with)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer);
  if (!v4 || ([v4 timeInterval], v5 != with))
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = partial apply for closure #1 in CoreAnimationPackageView.startCyclingThroughStates(with:);
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v12[3] = &block_descriptor_50;
    v8 = _Block_copy(v12);

    v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:with];
    _Block_release(v8);
    v10 = *(v1 + v3);
    *(v1 + v3) = v9;
    v11 = v9;
    [v10 invalidate];
  }
}

void closure #1 in CoreAnimationPackageView.startCyclingThroughStates(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    CoreAnimationPackageView.advanceState()();
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.stopCyclingThroughStates()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer))
  {
    CoreAnimationPackageView.reset()();
    v2 = *(v0 + v1);
    v3 = v2;
    *(v0 + v1) = 0;
    [v2 invalidate];
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for CoreAnimationPackageView();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
  if (v1)
  {
    v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
    swift_beginAccess();
    if (v2[96])
    {
      v3 = v1;
      v4 = [v0 layer];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v6 = *(v2 + 10);
      v8 = *(v2 + 11);
      v9 = v1;
    }

    [v1 bounds];
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v14 = CGRectGetWidth(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (v14 / CGRectGetHeight(v23) >= v6 / v8)
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v15 = v8 / CGRectGetHeight(v25);
    }

    else
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = v6 / CGRectGetWidth(v24);
    }

    CGAffineTransformMakeScale(&v18, v15, v15);
    v16 = *(v2 + 40);
    *&t2.a = *(v2 + 24);
    *&t2.c = v16;
    *&t2.tx = *(v2 + 56);
    CGAffineTransformConcat(&v19, &v18, &t2);
    t2 = v19;
    CATransform3DMakeAffineTransform(&v18, &t2);
    [v1 setTransform:&v18];
    v17 = [v0 layer];
    [v17 bounds];

    CGRect.center.getter();
    [v1 setPosition:?];
  }
}

void CoreAnimationPackageView.updateColor()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          outlined init with copy of Any(v10, v31);
          outlined init with copy of Any(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = String._bridgeToObjectiveC()();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CALayer, CALayer_ptr);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              _sypSgWOh_0(v30);
            }
          }

          ++v9;
          __swift_destroy_boxed_opaque_existential_0Tm(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

id CoreAnimationPackageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreAnimationPackageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized closure #1 in CoreAnimationPackageView.init(definition:)(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = a1;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          outlined init with copy of Any(v10, v31);
          outlined init with copy of Any(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = String._bridgeToObjectiveC()();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CALayer, CALayer_ptr);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              _sypSgWOh_0(v30);
            }
          }

          ++v9;
          __swift_destroy_boxed_opaque_existential_0Tm(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

void specialized CoreAnimationPackageView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(isUniquelyReferenced_nonNull_native, v10, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0);
    *v2 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0;
  return result;
}

uint64_t sub_1002BD588()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sypSgWOh_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_1, &_sypSgMR_1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage()()
{
  result = lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage();
  if (!lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage();
  if (!lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage());
  }

  return result;
}

id one-time initialization function for musicCoreUIBundle()
{
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.module;
  static NSBundle.musicCoreUIBundle = static NSBundle.module;

  return v1;
}

uint64_t *NSBundle.musicCoreUIBundle.unsafeMutableAddressor()
{
  if (one-time initialization token for musicCoreUIBundle != -1)
  {
    swift_once();
  }

  return &static NSBundle.musicCoreUIBundle;
}

id static NSBundle.musicCoreUIBundle.getter()
{
  if (one-time initialization token for musicCoreUIBundle != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.musicCoreUIBundle;

  return v1;
}

double MusicLibrary.ActionableState.updateSymbolConfiguration(from:)(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  __chkstk_darwin();
  v7 = &v22 - v6;
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + v8[13]) = vdupq_n_s64(0x4040000000000000uLL);
  static UIView.Corner.rounded.getter();
  v9 = type metadata accessor for UIView.Corner();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  outlined assign with take of UIView.Corner?(v7, a1 + v8[9]);
  v10 = a1 + v8[10];
  if (*v10)
  {
    v11 = *&UIEdgeInsetsZero.bottom;
    *(v10 + 8) = *&UIEdgeInsetsZero.top;
    *(v10 + 24) = v11;
  }

  *(a1 + 112) = 0;
  objc_storeStrong((a1 + 24), UIFontTextStyleBody);
  *(a1 + 48) = xmmword_100507970;
  if (!(v5 >> 14))
  {

    *a1 = xmmword_1005079D0;
    *(a1 + 48) = 7;
    goto LABEL_20;
  }

  if (v5 >> 14 != 1)
  {
    if (a2 | v5 ^ 0x8000)
    {
      if (v5 == 0x8000 && a2 == 1)
      {

        v17 = xmmword_100507990;
      }

      else
      {

        v17 = xmmword_100507980;
      }

      goto LABEL_19;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
LABEL_20:
    outlined consume of SymbolButton.CustomView?(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
    *(v10 + 48) = 0;
    result = 0.0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 0u;
    return result;
  }

  if ((v5 & 0x100) != 0)
  {

    v17 = xmmword_1005079A0;
LABEL_19:
    *a1 = v17;
    goto LABEL_20;
  }

  v12 = *v10;
  if (*v10 && (type metadata accessor for CircularProgressView(), (v13 = swift_dynamicCastClass()) != 0))
  {
    v14 = v13;
    v15 = v12;
  }

  else
  {
    v19 = objc_allocWithZone(type metadata accessor for CircularProgressView());
    v14 = CircularProgressView.init(size:)(26.0, 26.0);
  }

  CircularProgressView.setState(_:animated:)(a2, v5 & 1, 1);
  outlined consume of SymbolButton.Background?(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  *(a1 + 200) = xmmword_1004F2EC0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;

  *a1 = xmmword_1005079B0;
  *(a1 + 56) = 1;
  v20 = UIFontTextStyleFootnote;

  *(a1 + 24) = v20;
  outlined consume of SymbolButton.CustomView?(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
  *v10 = v14;
  v21 = *&UIEdgeInsetsZero.top;
  *(v10 + 24) = *&UIEdgeInsetsZero.bottom;
  *(v10 + 8) = v21;
  result = 1.0;
  *(v10 + 40) = xmmword_1005079C0;
  return result;
}

uint64_t outlined assign with take of UIView.Corner?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void outlined consume of SymbolButton.CustomView?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
  }
}

double outlined consume of SymbolButton.Background?(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t one-time initialization function for musicCoreUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.musicCoreUI);
  __swift_project_value_buffer(v0, static Logger.musicCoreUI);
  _sSo9OS_os_logCMa_0();
  OS_os_log.init(musicCategory:)(0x726F43636973754DLL, 0xEB00000000495565);
  return Logger.init(_:)();
}

unint64_t _sSo9OS_os_logCMa_0()
{
  result = _sSo9OS_os_logCML_0;
  if (!_sSo9OS_os_logCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo9OS_os_logCML_0);
  }

  return result;
}

uint64_t ArtworkImageViewModelAttributeProviding.cropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  static Artwork.CropStyle.boundedBox.getter();
  v2 = type metadata accessor for Artwork.CropStyle();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*(v9 + 16))(a3, v12, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    a2();
    (*(v9 + 8))(v12, v8);
    v17 = type metadata accessor for Artwork.CropStyle();
    (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*(v9 + 16))(a3, v12, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    a2();
    v17 = type metadata accessor for Artwork.CropStyle();
    (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
    (*(v9 + 8))(v12, v8);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

uint64_t specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  return specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&UploadedVideo.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artist();
  v8 = protocol witness for ArtworkImageViewModelAttributeProviding.artwork.getter in conformance Artist();
  if ((*(v5 + 48))(v3, 1, v4, v8) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v9 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    (*(v5 + 16))(a1, v7, v4);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    v12 = *(v11 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v5 + 8))(v7, v4);
    v13 = type metadata accessor for Artwork.CropStyle();
    (*(*(v13 - 8) + 56))(a1 + v12, 0, 1, v13);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2, v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*(v9 + 16))(a3, v12, v8);
    v15 = *(a2 + 24);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v15(a1, a2);
    (*(v9 + 8))(v12, v8);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

double protocol witness for ArtworkImageViewModelAttributeProviding.artwork.getter in conformance Artist()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A17AttributePropertyCyAA6ArtistVAA7ArtworkVGMd, &_s8MusicKit0A17AttributePropertyCyAA6ArtistVAA7ArtworkVGMR);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();

  return result;
}

uint64_t Playlist._artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Artwork();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  Playlist.artwork.getter();
  outlined init with copy of TaskPriority?(v9, v7, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v9, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v10 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    (*(v3 + 16))(a1, v5, v2);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    v13 = *(v12 + 20);
    static Artwork.CropStyle.squareCenterCrop.getter();
    (*(v3 + 8))(v5, v2);
    outlined destroy of TaskPriority?(v9, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v14 = type metadata accessor for Artwork.CropStyle();
    (*(*(v14 - 8) + 56))(a1 + v13, 0, 1, v14);
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }
}

uint64_t Playlist.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  __chkstk_darwin();
  v52 = &v50 - v1;
  v2 = type metadata accessor for Artwork();
  v55 = *(v2 - 8);
  v56 = v2;
  __chkstk_darwin();
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v50 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  __chkstk_darwin();
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v50 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
  __chkstk_darwin();
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v50 - v18;
  Playlist.variant.getter();
  v20 = type metadata accessor for Playlist.Variant();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of TaskPriority?(v19, v17, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
  v23 = (*(v21 + 88))(v17, v20);
  if (v23 != enum case for Playlist.Variant.regular(_:) && v23 != enum case for Playlist.Variant.smart(_:))
  {
    if (v23 == enum case for Playlist.Variant.genius(_:))
    {
      goto LABEL_2;
    }

    if (v23 == enum case for Playlist.Variant.favoriteSongs(_:))
    {
      goto LABEL_7;
    }

    if (v23 == enum case for Playlist.Variant.folder(_:))
    {
      goto LABEL_15;
    }

    if (v23 != enum case for Playlist.Variant.subscribed(_:))
    {
      if (v23 != enum case for Playlist.Variant.admin(_:))
      {
        if (v23 == enum case for Playlist.Variant.personalMix(_:))
        {
          Playlist.editorialArtwork.getter();
          outlined init with copy of TaskPriority?(v8, v6, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
          v39 = v55;
          v38 = v56;
          if ((*(v55 + 48))(v6, 1, v56) == 1)
          {
            outlined destroy of TaskPriority?(v8, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
            v40 = type metadata accessor for ArtworkImage.ViewModel(0);
            v41 = v53;
            (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
          }

          else
          {
            v42 = *(v39 + 32);
            v43 = v54;
            v42(v54, v6, v38);
            v44 = v51;
            (*(v39 + 16))(v51, v43, v38);
            v45 = v52;
            static Artwork.CropStyle.featuredContentCrop170T100B.getter();
            (*(v39 + 8))(v43, v38);
            outlined destroy of TaskPriority?(v8, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
            v46 = type metadata accessor for Artwork.CropStyle();
            (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
            v41 = v53;
            v42(v53, v44, v38);
            v40 = type metadata accessor for ArtworkImage.ViewModel(0);
            outlined init with take of Artwork.CropStyle?(v45, v41 + *(v40 + 20));
            (*(*(v40 - 8) + 56))(v41, 0, 1, v40);
          }

          type metadata accessor for ArtworkImage.ViewModel(0);
          v47 = *(v40 - 8);
          v48 = *(v47 + 48);
          if (v48(v41, 1, v40) == 1)
          {
            Playlist._artworkViewModel.getter(v57);
            if (v48(v41, 1, v40) != 1)
            {
              outlined destroy of TaskPriority?(v41, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
            }
          }

          else
          {
            v49 = v57;
            outlined init with take of ArtworkImage.ViewModel(v41, v57);
            (*(v47 + 56))(v49, 0, 1, v40);
          }

          goto LABEL_16;
        }

        (*(v21 + 8))(v17, v20);
LABEL_15:
        v37 = type metadata accessor for ArtworkImage.ViewModel(0);
        (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
LABEL_16:
        v34 = &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0;
        v35 = &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0;
        v36 = v19;
        return outlined destroy of TaskPriority?(v36, v34, v35);
      }

LABEL_2:
      outlined destroy of TaskPriority?(v19, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
      return Playlist._artworkViewModel.getter(v57);
    }
  }

LABEL_7:
  outlined destroy of TaskPriority?(v19, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
  Playlist._artworkViewModel.getter(v15);
  v24 = type metadata accessor for ArtworkImage.ViewModel(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v15, 1, v24) != 1)
  {
    v31 = v57;
    outlined init with take of ArtworkImage.ViewModel(v15, v57);
    return (*(v25 + 56))(v31, 0, 1, v24);
  }

  Playlist.tracksTiledArtwork.getter();
  outlined init with copy of TaskPriority?(v12, v10, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  v28 = v55;
  v27 = v56;
  if ((*(v55 + 48))(v10, 1, v56) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v29 = 1;
    v30 = v57;
  }

  else
  {
    v32 = v54;
    (*(v28 + 32))(v54, v10, v27);
    v30 = v57;
    (*(v28 + 16))(v57, v32, v27);
    v53 = *(v24 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v28 + 8))(v32, v27);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v33 = type metadata accessor for Artwork.CropStyle();
    (*(*(v33 - 8) + 56))(v30 + v53, 0, 1, v33);
    v29 = 0;
  }

  (*(v25 + 56))(v30, v29, 1, v24);
  result = (v26)(v15, 1, v24);
  if (result != 1)
  {
    v34 = &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd;
    v35 = &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR;
    v36 = v15;
    return outlined destroy of TaskPriority?(v36, v34, v35);
  }

  return result;
}

uint64_t outlined init with take of ArtworkImage.ViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Artwork.CropStyle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.defaultCropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v22 - v8;
  Playlist.variant.getter();
  v10 = type metadata accessor for Playlist.Variant();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of TaskPriority?(v9, v7, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
  v12 = (*(v11 + 88))(v7, v10);
  if (v12 == enum case for Playlist.Variant.regular(_:) || v12 == enum case for Playlist.Variant.smart(_:))
  {
    goto LABEL_8;
  }

  if (v12 == enum case for Playlist.Variant.genius(_:))
  {
LABEL_2:
    outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
    goto LABEL_10;
  }

  if (v12 == enum case for Playlist.Variant.favoriteSongs(_:))
  {
    goto LABEL_8;
  }

  if (v12 == enum case for Playlist.Variant.folder(_:))
  {
    goto LABEL_15;
  }

  if (v12 == enum case for Playlist.Variant.subscribed(_:))
  {
LABEL_8:
    outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
    Playlist.artwork.getter();
    v14 = type metadata accessor for Artwork();
    v15 = (*(*(v14 - 8) + 48))(v5, 1, v14);
    outlined destroy of TaskPriority?(v5, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    if (v15 == 1)
    {
      static Artwork.CropStyle.boundedBox.getter();
LABEL_11:
      v16 = type metadata accessor for Artwork.CropStyle();
      return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
    }

LABEL_10:
    static Artwork.CropStyle.squareCenterCrop.getter();
    goto LABEL_11;
  }

  if (v12 == enum case for Playlist.Variant.admin(_:))
  {
    goto LABEL_2;
  }

  if (v12 == enum case for Playlist.Variant.personalMix(_:))
  {
    Playlist.editorialArtwork.getter();
    v19 = type metadata accessor for Artwork();
    v20 = (*(*(v19 - 8) + 48))(v3, 1, v19);
    outlined destroy of TaskPriority?(v3, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    if (v20 == 1)
    {
      static Artwork.CropStyle.squareCenterCrop.getter();
    }

    else
    {
      static Artwork.CropStyle.featuredContentCrop170T100B.getter();
    }

    v21 = type metadata accessor for Artwork.CropStyle();
    (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
    return outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
  }

  (*(v11 + 8))(v7, v10);
LABEL_15:
  v18 = type metadata accessor for Artwork.CropStyle();
  (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  return outlined destroy of TaskPriority?(v9, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR_0);
}

uint64_t RecentlyAddedMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = type metadata accessor for UploadedVideo();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin();
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MusicVideo();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin();
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVSeason();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin();
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicMovie();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RecentlyAddedMusicItem();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin();
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v45, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v15 + 32))(v17, v22, v14);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v46);
    return (*(v15 + 8))(v17, v14);
  }

  v25 = v46;
  if (v23 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v11 + 32))(v13, v22, v10);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&MusicMovie.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v25);
    return (*(v11 + 8))(v13, v10);
  }

  if (v23 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v19 + 96))(v22, v18);
    v27 = v42;
    v26 = v43;
    v28 = v44;
    (*(v43 + 32))(v42, v22, v44);
    v29 = &MusicVideo.artwork.getter;
LABEL_7:
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v29, &static Artwork.CropStyle.boundedBox.getter, v25);
    return (*(v26 + 8))(v27, v28);
  }

  if (v23 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v19 + 96))(v22, v18);
    v31 = v40;
    v30 = v41;
    (*(v40 + 32))(v9, v22, v41);
    Playlist.artworkViewModel.getter(v25);
    return (*(v31 + 8))(v9, v30);
  }

  else
  {
    if (v23 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      (*(v19 + 96))(v22, v18);
      v27 = v37;
      v26 = v38;
      v28 = v39;
      (*(v38 + 32))(v37, v22, v39);
      v29 = &TVSeason.artwork.getter;
      goto LABEL_7;
    }

    if (v23 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v19 + 96))(v22, v18);
      v27 = v34;
      v26 = v35;
      v28 = v36;
      (*(v35 + 32))(v34, v22, v36);
      v29 = &UploadedVideo.artwork.getter;
      goto LABEL_7;
    }

    v32 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
    return (*(v19 + 8))(v22, v18);
  }
}

uint64_t TVEpisode.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  TVEpisode.previewArtwork.getter();
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    outlined destroy of TaskPriority?(v5, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    TVEpisode.artwork.getter();
    if (v12(v3, 1, v6) == 1)
    {
      outlined destroy of TaskPriority?(v3, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
      v13 = type metadata accessor for ArtworkImage.ViewModel(0);
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    (*(v7 + 32))(v9, v3, v6);
    (*(v7 + 16))(a1, v9, v6);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    (*(v7 + 16))(a1, v11, v6);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v7 + 8))(v11, v6);
  }

  v17 = type metadata accessor for Artwork.CropStyle();
  (*(*(v17 - 8) + 56))(a1 + v16, 0, 1, v17);
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t SocialProfile.cropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  static Artwork.CropStyle.specificRectangle.getter();
  v2 = type metadata accessor for Artwork.CropStyle();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t protocol witness for ArtworkImageViewModelAttributeProviding.cropStyle.getter in conformance Album@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for Artwork.CropStyle();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Track.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MusicVideo();
  v21 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Track();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v2, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for Track.song(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&Song.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v8 + 8))(v10, v7);
  }

  else if (v16 == enum case for Track.musicVideo(_:))
  {
    (*(v12 + 96))(v15, v11);
    v18 = v21;
    (*(v21 + 32))(v6, v15, v4);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&MusicVideo.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v18 + 8))(v6, v4);
  }

  else
  {
    v19 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t GenericMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v1 = type metadata accessor for CreditArtist();
  v121 = *(v1 - 8);
  v122 = v1;
  __chkstk_darwin();
  v120 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for SocialProfile();
  v94 = *(v95 - 8);
  __chkstk_darwin();
  v93 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for UploadedVideo();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UploadedAudio();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TVShow();
  v79 = *(v80 - 8);
  __chkstk_darwin();
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TVSeason();
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TVEpisode();
  v85 = *(v86 - 8);
  __chkstk_darwin();
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for RecordLabel();
  v97 = *(v98 - 8);
  __chkstk_darwin();
  v96 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for RadioShow();
  v100 = *(v101 - 8);
  __chkstk_darwin();
  v99 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Station();
  v88 = *(v89 - 8);
  __chkstk_darwin();
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Song();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v90 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Playlist();
  v103 = *(v104 - 8);
  __chkstk_darwin();
  v102 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicVideo();
  v106 = *(v14 - 8);
  v107 = v14;
  __chkstk_darwin();
  v105 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v109 = *(v16 - 8);
  v110 = v16;
  __chkstk_darwin();
  v108 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Genre();
  v112 = *(v18 - 8);
  v113 = v18;
  __chkstk_darwin();
  v111 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EditorialItem();
  v115 = *(v20 - 8);
  v116 = v20;
  __chkstk_darwin();
  v114 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Curator();
  v118 = *(v22 - 8);
  v119 = v22;
  __chkstk_darwin();
  v117 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Artist();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Album();
  v29 = *(v28 - 8);
  __chkstk_darwin();
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for GenericMusicItem();
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v71 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin();
  v37 = &v69 - v36;
  v70 = *(v33 + 16);
  v70(&v69 - v36, v124, v32, v35);
  v38 = (*(v33 + 88))(v37, v32);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v29 + 32))(v31, v37, v28);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v123);
    return (*(v29 + 8))(v31, v28);
  }

  v40 = v123;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v25 + 32))(v27, v37, v24);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v40);
    return (*(v25 + 8))(v27, v24);
  }

  v41 = v37;
  if (v38 == enum case for GenericMusicItem.composer(_:))
  {
    v42 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v120;
    v43 = v121;
    v45 = v122;
    (*(v121 + 32))(v120, v37, v122);
    v46 = &CreditArtist.artwork.getter;
LABEL_14:
    v47 = v46;
    v48 = v40;
LABEL_15:
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v47, &static Artwork.CropStyle.boundedBox.getter, v48);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v117;
    v43 = v118;
    v45 = v119;
    (*(v118 + 32))(v117, v37, v119);
    v46 = &Curator.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v114;
    v43 = v115;
    v45 = v116;
    (*(v115 + 32))(v114, v37, v116);
    v46 = &EditorialItem.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v111;
    v43 = v112;
    v45 = v113;
    (*(v112 + 32))(v111, v37, v113);
    v49 = &Genre.artwork.getter;
LABEL_23:
    v47 = v49;
    v48 = v40;
    goto LABEL_15;
  }

  if (v38 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v108;
    v43 = v109;
    v45 = v110;
    (*(v109 + 32))(v108, v37, v110);
    v49 = &MusicMovie.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v105;
    v43 = v106;
    v45 = v107;
    (*(v106 + 32))(v105, v37, v107);
    v49 = &MusicVideo.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v103;
    v44 = v102;
    v45 = v104;
    (*(v103 + 32))(v102, v37, v104);
    Playlist.artworkViewModel.getter(v40);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v40, 1, 1, v50);
    return (*(v33 + 8))(v37, v32);
  }

  if (v38 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v100;
    v44 = v99;
    v45 = v101;
    (*(v100 + 32))(v99, v37, v101);
    v49 = &RadioShow.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v97;
    v44 = v96;
    v45 = v98;
    (*(v97 + 32))(v96, v37, v98);
    v49 = &RecordLabel.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v33 + 96))(v37, v32);
    v51 = v94;
    v52 = v93;
    v53 = v95;
    (*(v94 + 32))(v93, v37, v95);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&SocialProfile.artwork.getter, &static Artwork.CropStyle.specificRectangle.getter, v40);
    return (*(v51 + 8))(v52, v53);
  }

  if (v38 == enum case for GenericMusicItem.song(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v91;
    v41 = v90;
    v32 = v92;
    (*(v91 + 32))(v90, v37, v92);
    v54 = &Song.artwork.getter;
LABEL_36:
    v55 = v54;
    v56 = &static Artwork.CropStyle.boundedBox.getter;
LABEL_39:
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v55, v56, v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.station(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v88;
    v41 = v87;
    v32 = v89;
    (*(v88 + 32))(v87, v37, v89);
    v55 = &Station.artwork.getter;
    v56 = &static Artwork.CropStyle.specificRectangle.getter;
    goto LABEL_39;
  }

  if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v85;
    v41 = v84;
    v32 = v86;
    (*(v85 + 32))(v84, v37, v86);
    TVEpisode.artworkViewModel.getter(v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.tvSeason(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v82;
    v41 = v81;
    v32 = v83;
    (*(v82 + 32))(v81, v37, v83);
    v54 = &TVSeason.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.tvShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v79;
    v41 = v78;
    v32 = v80;
    (*(v79 + 32))(v78, v37, v80);
    v54 = &TVShow.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v76;
    v41 = v75;
    v32 = v77;
    (*(v76 + 32))(v75, v37, v77);
    v54 = &UploadedAudio.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v73;
    v41 = v72;
    v32 = v74;
    (*(v73 + 32))(v72, v37, v74);
    v54 = &UploadedVideo.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.other(_:))
  {
    (*(v33 + 8))(v37, v32);
    v57 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v57 - 8) + 56))(v40, 1, 1, v57);
  }

  else
  {
    if (one-time initialization token for artwork != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.artwork);
    (v70)(v71, v124, v32);
    v59 = Logger.logObject.getter();
    LODWORD(v122) = static os_log_type_t.fault.getter();
    v124 = v59;
    if (os_log_type_enabled(v59, v122))
    {
      v60 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v125 = v121;
      *v60 = 136315394;
      *(v60 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0xD000000000000010, 0x80000001004D09C0, &v125);
      *(v60 + 12) = 2080;
      lazy protocol witness table accessor for type GenericMusicItem and conformance GenericMusicItem();
      v61 = v71;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = *(v33 + 8);
      v65(v61, v32);
      v66 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v62, v64, &v125);

      *(v60 + 14) = v66;
      v67 = v124;
      _os_log_impl(&_mh_execute_header, v124, v122, "Unhandled case for %s: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v65 = *(v33 + 8);
      v65(v71, v32);
    }

    v68 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v68 - 8) + 56))(v40, 1, 1, v68);
    return (v65)(v37, v32);
  }
}

uint64_t ArtworkImage.ViewModel.image(for:)(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for Artwork.CropStyle();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = type metadata accessor for Artwork();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(ArtworkImage.ViewModel.image(for:), 0, 0);
}

uint64_t ArtworkImage.ViewModel.image(for:)()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  (*(*(v0 + 10) + 16))(*(v0 + 11), v4, *(v0 + 9));
  v5 = type metadata accessor for ArtworkImage.ViewModel(0);
  outlined init with copy of TaskPriority?(v4 + *(v5 + 20), v3, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (one-time initialization token for fallback != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 7);
    v7 = *(v0 + 8);
    v10 = *(v0 + 5);
    v9 = *(v0 + 6);
    v11 = __swift_project_value_buffer(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 5), &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    }
  }

  else
  {
    (*(*(v0 + 7) + 32))(*(v0 + 8), *(v0 + 5), *(v0 + 6));
  }

  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Artwork.ImageFormat();
  v13 = __swift_project_value_buffer(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 12) = v14;
  *v14 = v0;
  v14[1] = ArtworkImage.ViewModel.image(for:);
  v15 = *(v0 + 8);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ArtworkImage.ViewModel.image(for:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[13] = v1;

  v6 = v4[11];
  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[7];
  if (v1)
  {
    (*(v9 + 8))(v4[8], v4[6]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(ArtworkImage.ViewModel.image(for:), 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t Artwork.image(for:cropStyle:format:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMR_0);
  *(v5 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(Artwork.image(for:cropStyle:format:), 0, 0);
}

uint64_t Artwork.image(for:cropStyle:format:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = [objc_opt_self() currentTraitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = type metadata accessor for Artwork.CropStyle();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v2, v4, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = type metadata accessor for Artwork.ImageFormat();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v1, v3, v10);
  (*(v11 + 56))(v1, 0, 1, v10);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = Artwork.image(for:cropStyle:format:);
  v14 = v0[7];
  v15 = v0[8];
  v16.n128_u64[0] = v0[2];
  v17.n128_u64[0] = v0[3];

  v13.n128_f64[0] = 1.0 / v7;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v15, v14, 0, 0, v16, v17, v13);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Artwork.image(for:cropStyle:format:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  v6 = *(v4 + 64);
  outlined destroy of TaskPriority?(*(v4 + 56), &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMR_0);
  outlined destroy of TaskPriority?(v6, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  if (v1)
  {

    return _swift_task_switch(Artwork.image(for:cropStyle:format:), 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t protocol witness for ArtworkImageFetching.image(for:) in conformance ArtworkImage.ViewModel(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = MPCPlayerResponse.perform(_:issuance:options:);

  return ArtworkImage.ViewModel.image(for:)(a1, a2);
}

uint64_t ArtworkImageFetching<>.image(for:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  *(v5 + 56) = swift_task_alloc();
  v6 = type metadata accessor for Artwork.CropStyle();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = type metadata accessor for Artwork();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(ArtworkImageFetching<>.image(for:), 0, 0);
}

uint64_t ArtworkImageFetching<>.image(for:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 7);
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  (*(v4 + 8))(v5, v4);
  (*(v4 + 16))(v5, v4);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (one-time initialization token for fallback != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 9);
    v7 = *(v0 + 10);
    v10 = *(v0 + 7);
    v9 = *(v0 + 8);
    v11 = __swift_project_value_buffer(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 7), &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    }
  }

  else
  {
    (*(*(v0 + 9) + 32))(*(v0 + 10), *(v0 + 7), *(v0 + 8));
  }

  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Artwork.ImageFormat();
  v13 = __swift_project_value_buffer(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 14) = v14;
  *v14 = v0;
  v14[1] = ArtworkImageFetching<>.image(for:);
  v15 = *(v0 + 10);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ArtworkImageFetching<>.image(for:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = v1;

  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v4[10], v4[8]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(ArtworkImageFetching<>.image(for:), 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

void _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU__0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_1(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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

unint64_t _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_1(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_1(a5, a6);
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

void *_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_1(uint64_t a1, unint64_t a2)
{
  v3 = _ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_1(a1, a2);
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_1(&_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyFTv_r_1);
  return v3;
}

void *_ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_1(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_1(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_1(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_1(uint64_t a1)
{
  v2 = *(a1 + 16);
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1 + 3) >> 1)
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

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1(isUniquelyReferenced_nonNull_native, v12, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1);
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
  v8 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1 + 2);
  if ((*(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1;
    return;
  }

  v9 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_1(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_1, &_ss23_ContiguousArrayStorageCys5UInt8VGMR_1);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_1, &_ss23_ContiguousArrayStorageCys5UInt8VGMR_1);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type GenericMusicItem and conformance GenericMusicItem()
{
  result = _s16MusicKitInternal07GenericA4ItemOACs23CustomStringConvertibleAAWL_0;
  if (!_s16MusicKitInternal07GenericA4ItemOACs23CustomStringConvertibleAAWL_0)
  {
    type metadata accessor for GenericMusicItem();
    result = swift_getWitnessTable();
    atomic_store(result, &_s16MusicKitInternal07GenericA4ItemOACs23CustomStringConvertibleAAWL_0);
  }

  return result;
}

void specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v10 = a1(v10);
    if (v3)
    {
      goto LABEL_12;
    }

LABEL_6:
    v8 &= v8 - 1;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  do
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
  }

  while (!v8);
  v11 = v12;
  v10 = a1(v10);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_12:
}

Swift::Bool __swiftcall Text.StringOption.evaluate(_:)(Swift::String a1)
{
  v1 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

BOOL Text.StringOption.evaluate(_:)()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = type metadata accessor for AttributedString.CharacterView();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v5, v0);
  (*(v7 + 8))(v9, v6);
  return (v10 & 1) == 0;
}

uint64_t Text.init(optional:options:)(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 1 << *(a3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a3 + 56);
    v7 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    v8 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_7:
      v6 &= v6 - 1;
      if (!v7)
      {

        goto LABEL_14;
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        _sS2SSysWl_0();
        return Text.init<A>(_:)();
      }

      v6 = *(a3 + 56 + 8 * v9);
      ++v3;
      if (v6)
      {
        v3 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

unint64_t _sS2SSysWl_0()
{
  result = _sS2SSysWL_0;
  if (!_sS2SSysWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2SSysWL_0);
  }

  return result;
}

uint64_t Text.init(optional:options:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_0, &_s10Foundation16AttributedStringVSgMR_0);
  __chkstk_darwin();
  v5 = &v16[-v4];
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v16[-v10];
  outlined init with copy of AttributedString?(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of AttributedString?(a1);

    outlined destroy of AttributedString?(v5);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    __chkstk_darwin();
    *&v16[-16] = v11;
    specialized Sequence.first(where:)(partial apply for closure #1 in Text.init(optional:options:), &v16[-32], a2);
    v13 = v12;

    if (v13)
    {
      (*(v7 + 16))(v9, v11, v6);
      v14 = Text.init(_:)();
      outlined destroy of AttributedString?(a1);
      (*(v7 + 8))(v11, v6);
      return v14;
    }

    outlined destroy of AttributedString?(a1);
    (*(v7 + 8))(v11, v6);
  }

  return 0;
}

uint64_t outlined init with copy of AttributedString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_0, &_s10Foundation16AttributedStringVSgMR_0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AttributedString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_0, &_s10Foundation16AttributedStringVSgMR_0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in Text.init(optional:options:)()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = type metadata accessor for AttributedString.CharacterView();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v5, v0);
  (*(v7 + 8))(v9, v6);
  return v10 & 1;
}

uint64_t static Edge.Set.on(_:)(unsigned int a1)
{
  v1 = Edge.Set.init(rawValue:)();
  v2 = static Axis.Set.horizontal.getter();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    v4 = static Edge.Set.leading.getter();
    *(inited + 32) = v4;
    v5 = static Edge.Set.trailing.getter();
    *(inited + 33) = v5;
    v6 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v4)
    {
      v6 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v5)
    {
      v6 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v6)
    {
      v1 = Edge.Set.init(rawValue:)();
    }
  }

  v7 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1004F2EF0;
    v9 = static Edge.Set.top.getter();
    *(v8 + 32) = v9;
    v10 = static Edge.Set.bottom.getter();
    *(v8 + 33) = v10;
    v11 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v9)
    {
      v11 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v10)
    {
      v11 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v11)
    {
      return Edge.Set.init(rawValue:)();
    }
  }

  return v1;
}

double EdgeInsets.init(_:length:)(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = static Axis.Set.vertical.getter();
  }

  else
  {
    v3 = static Axis.Set.horizontal.getter();
  }

  v4 = static Edge.Set.on(_:)(v3);

  return specialized EdgeInsets.init(_:length:)(v4, a2);
}

double EdgeInsets.init(_:length:)(unsigned int a1, double a2)
{
  v3 = static Edge.Set.on(_:)(a1);

  return specialized EdgeInsets.init(_:length:)(v3, a2);
}

void EdgeInsets.affecting(_:)(uint64_t a1)
{
  v2 = static Edge.Set.all.getter();
  specialized EdgeInsets.init(_:length:)(v2, 0.0);
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
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
      return;
    }

    v6 = *(a1 + 56 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
}

double EdgeInsets.affecting(_:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisOGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4AxisOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = a1 & 1;
  v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI4AxisO_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  EdgeInsets.affecting(_:)(v3);
  v5 = v4;

  return v5;
}

double EdgeInsets.value(for:)(char a1, double a2, double a3, double a4, double a5)
{
  result = a2 + a4;
  v6 = a3 + a5;
  if ((a1 & 1) == 0)
  {
    return v6;
  }

  return result;
}

double CGSize.length(for:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

uint64_t Axis.isOrthogonal(to:)(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Optional<A>.isOrthogonal(to:)(char a1, char a2)
{
  if (a2 == 2)
  {
    return 1;
  }

  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Axis.Set.init(_:)(uint64_t a1)
{
  if (a1)
  {
    return static Axis.Set.vertical.getter();
  }

  else
  {
    return static Axis.Set.horizontal.getter();
  }
}

uint64_t View.always(perform:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  a1();
  v6 = *(*(a2 - 8) + 16);

  return v6(a3, v3, a2);
}

double DynamicTypeSize.scaledValue(_:relativeTo:)(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd, &_s7SwiftUI15DynamicTypeSizeOSgMR);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a1];
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, v2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = UIContentSizeCategory.init(_:)();
  v11 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v10];
  [v7 scaledValueForValue:v11 compatibleWithTraitCollection:a2];
  v13 = v12;

  return v13;
}

uint64_t static Color.random(opacity:)(double a1)
{
  v1 = type metadata accessor for Color.RGBColorSpace();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
  return Color.init(_:red:green:blue:opacity:)();
}

uint64_t RoundedRectangle.outset(horizontal:vertical:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = type metadata accessor for LayoutDirection();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v21 - v12;
  type metadata accessor for RoundedRectangle();
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoundedRectangle(v4, v15, &type metadata accessor for RoundedRectangle);
  v16 = enum case for LayoutDirection.leftToRight(_:);
  v17 = *(v9 + 104);
  v17(v13, enum case for LayoutDirection.leftToRight(_:), v8);
  outlined init with copy of RoundedRectangle(v15, a1, &type metadata accessor for RoundedRectangle);
  v18 = type metadata accessor for RoundedRectangle.OmnidirectionalOutset(0);
  *(a1 + v18[5]) = a3;
  *(a1 + v18[6]) = a2;
  *(a1 + v18[7]) = a3;
  *(a1 + v18[8]) = a2;
  v17(v11, v16, v8);
  LOBYTE(v16) = static LayoutDirection.== infix(_:_:)();
  v19 = *(v9 + 8);
  v19(v11, v8);
  v19(v13, v8);
  result = outlined destroy of RoundedRectangle(v15);
  *(a1 + v18[9]) = (v16 & 1) == 0;
  return result;
}

uint64_t RoundedRectangle.outset(top:leading:bottom:trailing:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v14 = type metadata accessor for LayoutDirection();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v25 - v18;
  type metadata accessor for RoundedRectangle();
  __chkstk_darwin();
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoundedRectangle(v7, v21, &type metadata accessor for RoundedRectangle);
  (*(v15 + 16))(v19, a1, v14);
  outlined init with copy of RoundedRectangle(v21, a2, &type metadata accessor for RoundedRectangle);
  v22 = type metadata accessor for RoundedRectangle.OmnidirectionalOutset(0);
  *(a2 + v22[5]) = a3;
  *(a2 + v22[6]) = a4;
  *(a2 + v22[7]) = a5;
  *(a2 + v22[8]) = a6;
  (*(v15 + 104))(v17, enum case for LayoutDirection.leftToRight(_:), v14);
  LOBYTE(v7) = static LayoutDirection.== infix(_:_:)();
  v23 = *(v15 + 8);
  v23(v17, v14);
  v23(v19, v14);
  result = outlined destroy of RoundedRectangle(v21);
  *(a2 + v22[9]) = (v7 & 1) == 0;
  return result;
}

double protocol witness for InsettableShape.inset(by:) in conformance RoundedRectangle.OmnidirectionalOutset@<D0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  outlined init with copy of RoundedRectangle(v5, a2, type metadata accessor for RoundedRectangle.OmnidirectionalOutset);
  v8 = a1[6];
  *(a2 + a1[5]) = *(a2 + a1[5]) - a3;
  *(a2 + v8) = *(a2 + v8) - a3;
  v9 = a1[8];
  *(a2 + a1[7]) = *(a2 + a1[7]) - a3;
  result = *(a2 + v9) - a3;
  *(a2 + v9) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance RoundedRectangle.OmnidirectionalOutset@<D0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v8 = v6;
  v14 = type metadata accessor for RoundedCornerStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RoundedRectangle() - 8;
  __chkstk_darwin();
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGRect.outset(by:for:)(*(v8 + a1[9]), *(v8 + a1[5]), *(v8 + a1[6]), *(v8 + a1[7]), *(v8 + a1[8]), a3, a4, a5, a6);
  outlined init with copy of RoundedRectangle(v8, v20, &type metadata accessor for RoundedRectangle);
  (*(v15 + 32))(v17, &v20[*(v18 + 28)], v14);
  Path.init(roundedRect:cornerSize:style:)();
  result = *&v24;
  v22 = v25;
  *a2 = v24;
  *(a2 + 16) = v22;
  *(a2 + 32) = v26;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance RoundedRectangle.OmnidirectionalOutset(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance RoundedRectangle.OmnidirectionalOutset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type RoundedRectangle.OmnidirectionalOutset and conformance RoundedRectangle.OmnidirectionalOutset, type metadata accessor for RoundedRectangle.OmnidirectionalOutset, &protocol conformance descriptor for RoundedRectangle.OmnidirectionalOutset);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance RoundedRectangle.OmnidirectionalOutset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type RoundedRectangle.OmnidirectionalOutset and conformance RoundedRectangle.OmnidirectionalOutset, type metadata accessor for RoundedRectangle.OmnidirectionalOutset, &protocol conformance descriptor for RoundedRectangle.OmnidirectionalOutset);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance RoundedRectangle.OmnidirectionalOutset(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type RoundedRectangle.OmnidirectionalOutset and conformance RoundedRectangle.OmnidirectionalOutset, type metadata accessor for RoundedRectangle.OmnidirectionalOutset, &protocol conformance descriptor for RoundedRectangle.OmnidirectionalOutset);

  return Shape.body.getter(a1, v2);
}

double specialized EdgeInsets.init(_:length:)(uint64_t a1, double a2)
{
  v3 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  static Edge.Set.leading.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  static Edge.Set.bottom.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  static Edge.Set.trailing.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  return v4;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI4AxisO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7SwiftUI4AxisOGMd, &_ss11_SetStorageCy7SwiftUI4AxisOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      v11 = Axis.rawValue.getter();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = Axis.rawValue.getter();
        result = Axis.rawValue.getter();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t type metadata accessor for RoundedRectangle.OmnidirectionalOutset(uint64_t a1)
{
  result = type metadata singleton initialization cache for RoundedRectangle.OmnidirectionalOutset;
  if (!type metadata singleton initialization cache for RoundedRectangle.OmnidirectionalOutset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of RoundedRectangle(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Text.StringOption and conformance Text.StringOption()
{
  result = lazy protocol witness table cache variable for type Text.StringOption and conformance Text.StringOption;
  if (!lazy protocol witness table cache variable for type Text.StringOption and conformance Text.StringOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.StringOption and conformance Text.StringOption);
  }

  return result;
}

uint64_t sub_1002C5E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002C5EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for RoundedRectangle.OmnidirectionalOutset(uint64_t a1)
{
  type metadata accessor for RoundedRectangle();
  if (v1 <= 0x3F)
  {
    _sSo30UIUserInterfaceLayoutDirectionVMa_0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ShapeView<RoundedRectangle.OmnidirectionalOutset, ForegroundStyle> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle.OmnidirectionalOutset, ForegroundStyle> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle.OmnidirectionalOutset, ForegroundStyle> and conformance _ShapeView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleV09MusicCoreB0E21OmnidirectionalOutsetVAA15ForegroundStyleVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleV09MusicCoreB0E21OmnidirectionalOutsetVAA15ForegroundStyleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle.OmnidirectionalOutset, ForegroundStyle> and conformance _ShapeView<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v29 - v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMR);
    v8 = static _SetStorage.allocate(capacity:)();
    v9 = 0;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v34 = v11;
    v35 = v8 + 56;
    v12 = *(v10 + 64);
    v31 = v7;
    v32 = a1 + ((v12 + 32) & ~v12);
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    v30 = (v10 + 16);
    while (1)
    {
      v33 = v9;
      v34(v36, v32 + v13 * v9, v2);
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v8 + 32));
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = *(v35 + 8 * v18);
      v20 = 1 << (v15 & v16);
      if ((v20 & v19) != 0)
      {
        while (1)
        {
          v21 = v10;
          v34(v5, *(v8 + 48) + v17 * v13, v2);
          lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v22 = dispatch thunk of static Equatable.== infix(_:_:)();
          v23 = *v14;
          (*v14)(v5, v2);
          if (v22)
          {
            break;
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v19 = *(v35 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v10 = v21;
          if (((1 << v17) & v19) == 0)
          {
            goto LABEL_8;
          }
        }

        v23(v36, v2);
        v10 = v21;
      }

      else
      {
LABEL_8:
        v24 = v36;
        *(v35 + 8 * v18) = v20 | v19;
        result = (*v30)(*(v8 + 48) + v17 * v13, v24, v2);
        v26 = *(v8 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          __break(1u);
          return result;
        }

        *(v8 + 16) = v28;
      }

      v9 = v33 + 1;
      if (v33 + 1 == v31)
      {
        return v8;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11MusicCoreUI12SymbolButtonC6IntentOGMd, &_ss11_SetStorageCy11MusicCoreUI12SymbolButtonC6IntentOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t SymbolButton.Configuration.description.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  __chkstk_darwin();
  v216 = &v209 - v2;
  v3 = type metadata accessor for UIView.Corner();
  v217 = *(v3 - 1);
  v218 = v3;
  __chkstk_darwin();
  v214 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v215 = &v209 - v5;
  v227 = 0xD00000000000001CLL;
  v228 = 0x80000001004D09E0;
  v221._countAndFlagsBits = 0;
  v221._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v221._countAndFlagsBits = 0xD000000000000017;
  v221._object = 0x80000001004D0A00;
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  String.append(_:)(v221);

  v221._countAndFlagsBits = 0;
  v221._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v221._countAndFlagsBits = 0x6D756D696E696D20;
  v221._object = 0xEF203A20657A6953;
  v9._countAndFlagsBits = CGSize.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  String.append(_:)(v221);

  if ((*(v0 + v6[14] + 16) & 1) == 0)
  {
    v221._countAndFlagsBits = 0;
    v221._object = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v221._countAndFlagsBits = 0xD000000000000014;
    v221._object = 0x80000001004D0DC0;
    v11._countAndFlagsBits = CGSize.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 10;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    String.append(_:)(v221);
  }

  v221._countAndFlagsBits = 0;
  v221._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v226._countAndFlagsBits = 0xD000000000000011;
  v226._object = 0x80000001004D0A20;
  v13 = v0 + v6[15];
  v14 = *(v13 + 16);
  v221 = *v13;
  v222 = v14;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 10;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  String.append(_:)(v226);

  v17 = *(v0 + v6[19]);
  if (v17 == 2)
  {
    v18._countAndFlagsBits = 0xD00000000000001ALL;
    v18._object = 0x80000001004D0A40;
    String.append(_:)(v18);
  }

  else
  {
    v221._countAndFlagsBits = 0;
    v221._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v221._countAndFlagsBits = 0xD000000000000010;
    v221._object = 0x80000001004D0DA0;
    if (v17)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v17)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    v21 = v20;
    String.append(_:)(*&v19);

    v22._countAndFlagsBits = 10;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    String.append(_:)(v221);
  }

  v221._countAndFlagsBits = 0x3A206168706C6120;
  v221._object = 0xE900000000000020;
  v23._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 10;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  String.append(_:)(v221);

  v221._countAndFlagsBits = 0x203A20746E697420;
  v221._object = 0xE800000000000000;
  v226._countAndFlagsBits = *(v0 + v6[18]);
  v25 = v226._countAndFlagsBits;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 10;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  String.append(_:)(v221);

  v28 = *(v0 + 8);
  v220 = v6;
  if (v28)
  {
    v29 = *(v0 + 16);
    v30 = *(v0 + 24);
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    v211 = *(v0 + 56);
    v209 = *(v0 + 64);
    v212 = *(v0 + 80);
    v33 = *(v0 + 96);
    v210 = *(v0 + 88);
    v213 = *(v0 + 112);
    v34 = *v0;

    v35._countAndFlagsBits = 0x6D7953209480E220;
    v35._object = 0xAE000A7B206C6F62;
    String.append(_:)(v35);
    v221._countAndFlagsBits = 0x656D616E20202020;
    v221._object = 0xEB00000000203A20;
    v36._countAndFlagsBits = v34;
    v36._object = v28;
    String.append(_:)(v36);

    v37._countAndFlagsBits = 10;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    String.append(_:)(v221);

    if (v29)
    {
      v38 = [v29 bundlePath];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      strcpy(&v221, "    bundle : ");
      HIWORD(v221._object) = -4864;
      v42._countAndFlagsBits = v39;
      v42._object = v41;
      String.append(_:)(v42);

      v43._countAndFlagsBits = 10;
      v43._object = 0xE100000000000000;
      String.append(_:)(v43);
      String.append(_:)(v221);
    }

    strcpy(&v221, "    style : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v226._countAndFlagsBits = v30;
    type metadata accessor for UIFontTextStyle(0);
    v44 = v30;
    v45._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 10;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    String.append(_:)(v221);

    if ((v31 & 1) == 0)
    {
      v221._countAndFlagsBits = 0xD000000000000014;
      v221._object = 0x80000001004D0D80;
      v47._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v47);

      v48._countAndFlagsBits = 10;
      v48._object = 0xE100000000000000;
      String.append(_:)(v48);
      String.append(_:)(v221);
    }

    strcpy(&v221, "    weight : ");
    HIWORD(v221._object) = -4864;
    v226._countAndFlagsBits = v32;
    type metadata accessor for UIImageSymbolWeight(0);
    v49._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v49);

    v50._countAndFlagsBits = 10;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    String.append(_:)(v221);

    strcpy(&v221, "    scale : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v226._countAndFlagsBits = v211;
    type metadata accessor for UIImageSymbolScale(0);
    v51._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v51);

    v52._countAndFlagsBits = 10;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    String.append(_:)(v221);

    if (v212 != 255)
    {
      strcpy(&v226, "    offset : ");
      HIWORD(v226._object) = -4864;
      v221 = v209;
      LOBYTE(v222) = v212 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities11DisplayUnitOySo8UIOffsetVGMd, &_s14MusicUtilities11DisplayUnitOySo8UIOffsetVGMR);
      v53._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v53);

      v54._countAndFlagsBits = 10;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);
      String.append(_:)(v226);
    }

    strcpy(&v221, "    alpha : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v55._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v55);

    v56._countAndFlagsBits = 10;
    v56._object = 0xE100000000000000;
    String.append(_:)(v56);
    String.append(_:)(v221);

    v221._countAndFlagsBits = 0x746E697420202020;
    v221._object = 0xEB00000000203A20;
    v226._countAndFlagsBits = v213;
    v57 = v213;
    v58._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v58);

    v59._countAndFlagsBits = 10;
    v59._object = 0xE100000000000000;
    String.append(_:)(v59);
    String.append(_:)(v221);

    if (v33)
    {
      v221._countAndFlagsBits = 0xD000000000000018;
      v221._object = 0x80000001004D0D60;

      v60._countAndFlagsBits = v210;
      v60._object = v33;
      String.append(_:)(v60);

      v61._countAndFlagsBits = 10;
      v61._object = 0xE100000000000000;
      String.append(_:)(v61);
      String.append(_:)(v221);
    }

    v62._countAndFlagsBits = 687392;
    v62._object = 0xE300000000000000;
    String.append(_:)(v62);
    v6 = v220;
  }

  else
  {
    v63._object = 0x80000001004D0A60;
    v63._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v63);
  }

  v64 = *(v1 + 128);
  if (v64)
  {
    v65 = *(v1 + 160);
    v213 = *(v1 + 152);
    v66 = *(v1 + 184);
    v67 = *(v1 + 176);
    v68 = *(v1 + 144);
    v69 = *(v1 + 136);
    v70 = *(v1 + 120);

    v71._countAndFlagsBits = 0x746954209480E220;
    v71._object = 0xAD00000A7B20656CLL;
    String.append(_:)(v71);
    v221._countAndFlagsBits = 0x7478657420202020;
    v221._object = 0xEB00000000203A20;
    v72._countAndFlagsBits = v70;
    v72._object = v64;
    String.append(_:)(v72);

    v73._countAndFlagsBits = 10;
    v73._object = 0xE100000000000000;
    String.append(_:)(v73);
    String.append(_:)(v221);

    strcpy(&v221, "    style : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v226._countAndFlagsBits = v69;
    type metadata accessor for UIFontTextStyle(0);
    v74 = v69;
    v75._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v75);

    v76._countAndFlagsBits = 10;
    v76._object = 0xE100000000000000;
    String.append(_:)(v76);
    String.append(_:)(v221);

    strcpy(&v221, "    weight : ");
    HIWORD(v221._object) = -4864;
    v226._countAndFlagsBits = v68;
    type metadata accessor for UIFontWeight(0);
    v77._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v77);

    v78._countAndFlagsBits = 10;
    v78._object = 0xE100000000000000;
    String.append(_:)(v78);
    String.append(_:)(v221);

    strcpy(&v221, "    alpha : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v79._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 10;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    String.append(_:)(v221);

    v221._countAndFlagsBits = 0x746E697420202020;
    v221._object = 0xEB00000000203A20;
    v226._countAndFlagsBits = v67;
    v81 = v67;
    v82._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v82);

    v83._countAndFlagsBits = 10;
    v83._object = 0xE100000000000000;
    String.append(_:)(v83);
    String.append(_:)(v221);

    strcpy(&v221, "    hidden : ");
    HIWORD(v221._object) = -4864;
    if (v66)
    {
      v84 = 1702195828;
    }

    else
    {
      v84 = 0x65736C6166;
    }

    if (v66)
    {
      v85 = 0xE400000000000000;
    }

    else
    {
      v85 = 0xE500000000000000;
    }

    v86 = v85;
    String.append(_:)(*&v84);

    v87._countAndFlagsBits = 10;
    v87._object = 0xE100000000000000;
    String.append(_:)(v87);
    String.append(_:)(v221);

    if (v65)
    {
      v221._countAndFlagsBits = 0xD000000000000018;
      v221._object = 0x80000001004D0D60;

      v88._countAndFlagsBits = v213;
      v88._object = v65;
      String.append(_:)(v88);

      v89._countAndFlagsBits = 10;
      v89._object = 0xE100000000000000;
      String.append(_:)(v89);
      String.append(_:)(v221);
    }

    v90._countAndFlagsBits = 687392;
    v90._object = 0xE300000000000000;
    String.append(_:)(v90);
    v6 = v220;
  }

  else
  {
    v91._countAndFlagsBits = 0x1000000000000011;
    v91._object = 0x80000001004D0A80;
    String.append(_:)(v91);
  }

  v92 = *(v1 + 208);
  if (v92 == 1)
  {
    v93._countAndFlagsBits = 0x1000000000000016;
    v93._object = 0x80000001004D0AA0;
    String.append(_:)(v93);
  }

  else
  {
    v95 = *(v1 + 216);
    v94 = *(v1 + 224);

    v96 = v92;
    v97._object = 0x80000001004D0D40;
    v97._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v97);
    strcpy(&v221, "    alpha : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v98._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v98);

    v99._countAndFlagsBits = 10;
    v99._object = 0xE100000000000000;
    String.append(_:)(v99);
    String.append(_:)(v221);

    v221._countAndFlagsBits = 0x746E697420202020;
    v221._object = 0xEB00000000203A20;
    v226._countAndFlagsBits = v92;
    v100 = v96;
    v101._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v101);

    v102._countAndFlagsBits = 10;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    String.append(_:)(v221);

    if (v94)
    {
      v221._countAndFlagsBits = 0xD000000000000018;
      v221._object = 0x80000001004D0D60;

      v103._countAndFlagsBits = v95;
      v103._object = v94;
      String.append(_:)(v103);

      v104._countAndFlagsBits = 10;
      v104._object = 0xE100000000000000;
      String.append(_:)(v104);
      String.append(_:)(v221);
    }

    v105._countAndFlagsBits = 687392;
    v105._object = 0xE300000000000000;
    String.append(_:)(v105);

    v6 = v220;
  }

  v106 = *(v1 + 296);
  if (v106)
  {
    v107 = *(v1 + 288);
    v108 = *(v1 + 280);
    v226._countAndFlagsBits = 0x726F42209480E220;
    v226._object = 0xAE00203A20726564;
    v221._countAndFlagsBits = v108;
    LOBYTE(v221._object) = v107 & 1;
    *&v222 = v106;
    v109 = v106;
    v110._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v110);

    v111._countAndFlagsBits = 10;
    v111._object = 0xE100000000000000;
    String.append(_:)(v111);
    String.append(_:)(v226);
  }

  else
  {
    v112._object = 0x80000001004D0AC0;
    v112._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v112);
  }

  v113 = v216;
  outlined init with copy of UIView.Corner?(v1 + v6[9], v216);
  v115 = v217;
  v114 = v218;
  if ((v217[6])(v113, 1, v218) == 1)
  {
    outlined destroy of UIView.Corner?(v113);
    v116._object = 0x80000001004D0AE0;
    v116._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v116);
  }

  else
  {
    v117 = v215;
    v115[4](v215, v113, v114);
    v221._countAndFlagsBits = 0x726F43209480E220;
    v221._object = 0xAE00203A2072656ELL;
    v115[2](v214, v117, v114);
    v118._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v118);

    v119._countAndFlagsBits = 10;
    v119._object = 0xE100000000000000;
    String.append(_:)(v119);
    String.append(_:)(v221);

    (v115[1])(v117, v114);
  }

  v120 = *(v1 + 232);
  if (v120 == 1)
  {
    v121._countAndFlagsBits = 0x1000000000000014;
    v121._object = 0x80000001004D0B00;
    String.append(_:)(v121);
  }

  else
  {
    v123 = *(v1 + 240);
    v122 = *(v1 + 248);
    v124 = *(v1 + 272);
    v125 = *(v1 + 256);
    v215 = *(v1 + 264);
    v216 = v125;

    v126 = v120;
    v218 = v123;
    v217 = v122;
    v127._countAndFlagsBits = 0x1000000000000010;
    v127._object = 0x80000001004D0CC0;
    String.append(_:)(v127);
    if (v120)
    {
      v221._countAndFlagsBits = 0xD000000000000017;
      v221._object = 0x80000001004D0D20;
      v128 = v126;
      v129 = [v128 description];
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v132 = v131;

      v133._countAndFlagsBits = v130;
      v133._object = v132;
      String.append(_:)(v133);

      v134._countAndFlagsBits = 10;
      v134._object = 0xE100000000000000;
      String.append(_:)(v134);
      String.append(_:)(v221);

      v6 = v220;
    }

    if (v123)
    {
      v221._countAndFlagsBits = 0xD000000000000017;
      v221._object = 0x80000001004D0D00;
      v135 = v218;
      v136 = [v135 description];
      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = v138;

      v140._countAndFlagsBits = v137;
      v140._object = v139;
      String.append(_:)(v140);

      v141._countAndFlagsBits = 10;
      v141._object = 0xE100000000000000;
      String.append(_:)(v141);
      String.append(_:)(v221);

      v6 = v220;
    }

    v142 = v217;
    if (v122)
    {
      v221._countAndFlagsBits = 0xD000000000000014;
      v221._object = 0x80000001004D0CE0;
      v143 = v217;
      v144 = [v143 description];
      v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = v146;

      v148._countAndFlagsBits = v145;
      v148._object = v147;
      String.append(_:)(v148);

      v149._countAndFlagsBits = 10;
      v149._object = 0xE100000000000000;
      String.append(_:)(v149);
      String.append(_:)(v221);

      v6 = v220;
    }

    if (v216 != 2)
    {
      strcpy(&v221, "    color : ");
      BYTE5(v221._object) = 0;
      HIWORD(v221._object) = -5120;
      LOBYTE(v226._countAndFlagsBits) = v216 & 1;
      v150._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v150);

      v151._countAndFlagsBits = 10;
      v151._object = 0xE100000000000000;
      String.append(_:)(v151);
      String.append(_:)(v221);
    }

    if (v124)
    {
      strcpy(&v221, "    group : ");
      BYTE5(v221._object) = 0;
      HIWORD(v221._object) = -5120;

      v152._countAndFlagsBits = v215;
      v152._object = v124;
      String.append(_:)(v152);

      v153._countAndFlagsBits = 10;
      v153._object = 0xE100000000000000;
      String.append(_:)(v153);
      String.append(_:)(v221);
    }

    v154._countAndFlagsBits = 687392;
    v154._object = 0xE300000000000000;
    String.append(_:)(v154);
  }

  v155 = v1 + v6[10];
  v156 = *v155;
  if (*v155)
  {
    v158 = *(v155 + 40);
    v157 = *(v155 + 48);
    v160 = *(v155 + 24);
    v159 = *(v155 + 32);
    v161 = *(v155 + 8);
    v162 = *(v155 + 16);
    v226._countAndFlagsBits = 0x1000000000000013;
    v226._object = 0x80000001004D0CA0;
    v221._countAndFlagsBits = v156;
    v221._object = v161;
    *&v222 = v162;
    *(&v222 + 1) = v160;
    v223 = v159;
    v224 = v158;
    v225 = v157;
    outlined copy of SymbolButton.CustomView?(v156, v161, v162, v160, v159, v158, v157);
    v163 = v157;
    v164 = v156;
    v165._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v165);

    v166._countAndFlagsBits = 10;
    v166._object = 0xE100000000000000;
    String.append(_:)(v166);
    String.append(_:)(v226);

    v167 = v160;
    v6 = v220;
    outlined consume of SymbolButton.CustomView?(v156, v161, v162, v167, v159, v158, v157);
  }

  else
  {
    v168._countAndFlagsBits = 0x1000000000000017;
    v168._object = 0x80000001004D0B20;
    String.append(_:)(v168);
  }

  v169 = (v1 + v6[11]);
  v170 = v169[2];
  if (v170 == 1)
  {
    v171._countAndFlagsBits = 0x1000000000000011;
    v171._object = 0x80000001004D0B40;
    String.append(_:)(v171);
  }

  else
  {
    v173 = *v169;
    v172 = v169[1];
    v174 = v170;
    v175._countAndFlagsBits = 0x646142209480E220;
    v175._object = 0xAD00000A7B206567;
    String.append(_:)(v175);
    v221._countAndFlagsBits = 0xD000000000000014;
    v221._object = 0x80000001004D0C80;
    v176._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v176);

    v177._countAndFlagsBits = 10;
    v177._object = 0xE100000000000000;
    String.append(_:)(v177);
    String.append(_:)(v221);

    strcpy(&v221, "    alpha : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v178._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v178);

    v179._countAndFlagsBits = 10;
    v179._object = 0xE100000000000000;
    String.append(_:)(v179);
    String.append(_:)(v221);

    v221._countAndFlagsBits = 0x746E697420202020;
    v221._object = 0xEB00000000203A20;
    v226._countAndFlagsBits = v170;
    v180 = v174;
    v181._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v181);

    v182._countAndFlagsBits = 10;
    v182._object = 0xE100000000000000;
    String.append(_:)(v182);
    String.append(_:)(v221);

    v183._countAndFlagsBits = 687392;
    v183._object = 0xE300000000000000;
    String.append(_:)(v183);
    outlined consume of SymbolButton.Badge?(v173, v172, v170);
  }

  v184 = (v1 + v6[16]);
  v185 = *v184;
  v186 = *(v184 + 1);
  v187 = *(v184 + 2);
  v188 = v184[24];
  v189._countAndFlagsBits = 0x1000000000000015;
  v189._object = 0x80000001004D0B60;
  String.append(_:)(v189);
  v221._countAndFlagsBits = 0xD00000000000001BLL;
  v221._object = 0x80000001004D0B80;
  if (v185)
  {
    v190 = 1702195828;
  }

  else
  {
    v190 = 0x65736C6166;
  }

  if (v185)
  {
    v191 = 0xE400000000000000;
  }

  else
  {
    v191 = 0xE500000000000000;
  }

  v192 = v191;
  String.append(_:)(*&v190);

  v193._countAndFlagsBits = 10;
  v193._object = 0xE100000000000000;
  String.append(_:)(v193);
  String.append(_:)(v221);

  if (v186)
  {
    v221._countAndFlagsBits = 0xD000000000000021;
    v221._object = 0x80000001004D0C50;
    v226._countAndFlagsBits = v186;
    type metadata accessor for UIContentSizeCategory(0);
    v194 = v186;
    v195._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v195);

    v196._countAndFlagsBits = 10;
    v196._object = 0xE100000000000000;
    String.append(_:)(v196);
    String.append(_:)(v221);

    if (v187)
    {
LABEL_72:
      v221._countAndFlagsBits = 0xD000000000000021;
      v221._object = 0x80000001004D0C20;
      v226._countAndFlagsBits = v187;
      type metadata accessor for UIContentSizeCategory(0);
      v197 = v187;
      v198._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v198);

      v199._countAndFlagsBits = 10;
      v199._object = 0xE100000000000000;
      String.append(_:)(v199);
      String.append(_:)(v221);

      goto LABEL_75;
    }
  }

  else
  {
    v200._countAndFlagsBits = 0xD00000000000002DLL;
    v200._object = 0x80000001004D0BA0;
    String.append(_:)(v200);
    if (v187)
    {
      goto LABEL_72;
    }
  }

  v201._countAndFlagsBits = 0xD00000000000002DLL;
  v201._object = 0x80000001004D0BD0;
  String.append(_:)(v201);
LABEL_75:
  v221._countAndFlagsBits = 0xD00000000000001ELL;
  v221._object = 0x80000001004D0C00;
  if (v188)
  {
    v202 = 1702195828;
  }

  else
  {
    v202 = 0x65736C6166;
  }

  if (v188)
  {
    v203 = 0xE400000000000000;
  }

  else
  {
    v203 = 0xE500000000000000;
  }

  v204 = v203;
  String.append(_:)(*&v202);

  v205._countAndFlagsBits = 10;
  v205._object = 0xE100000000000000;
  String.append(_:)(v205);
  String.append(_:)(v221);

  v206._countAndFlagsBits = 687392;
  v206._object = 0xE300000000000000;
  String.append(_:)(v206);
  v207._countAndFlagsBits = 41;
  v207._object = 0xE100000000000000;
  String.append(_:)(v207);
  return v227;
}

uint64_t outlined init with copy of UIView.Corner?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UIView.Corner?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined consume of SymbolButton.Badge?(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }
}

id outlined copy of SymbolButton.CustomView?(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (result)
  {
    v8 = result;
    v7 = a7;

    return v8;
  }

  return result;
}

id closure #1 in variable initialization expression of static UIColor.MusicTint.normal(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    type metadata accessor for UIColor();
    v5 = 1.0;
    v6 = 250;
    if (v4 == 1)
    {
      v7 = 88;
      v8 = 106;
    }

    else
    {
      v7 = 45;
      v8 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 204;
      v7 = 0;
      v8 = 20;
    }

    else
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 250;
      v7 = 35;
      v8 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.normal.unsafeMutableAddressor()
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.normal;
}

id closure #1 in variable initialization expression of static UIColor.MusicTint.rollover(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    type metadata accessor for UIColor();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.rollover.unsafeMutableAddressor()
{
  if (one-time initialization token for rollover != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.rollover;
}

id closure #1 in variable initialization expression of static UIColor.MusicTint.pressed(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    type metadata accessor for UIColor();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 113;
      v8 = 131;
    }

    else
    {
      v7 = 70;
      v8 = 97;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 187;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 224;
      v7 = 9;
      v8 = 33;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.pressed.unsafeMutableAddressor()
{
  if (one-time initialization token for pressed != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.pressed;
}

id closure #1 in variable initialization expression of static UIColor.MusicTint.deepPressed(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    type metadata accessor for UIColor();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (one-time initialization token for deepPressed != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.deepPressed;
}

id closure #1 in variable initialization expression of static UIColor.MusicTint.disabled(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    type metadata accessor for UIColor();
    v5 = 250;
    if (v4 == 1)
    {
      v6 = 88;
      v7 = 106;
    }

    else
    {
      v6 = 45;
      v7 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      type metadata accessor for UIColor();
      v5 = 214;
      v6 = 0;
      v7 = 23;
    }

    else
    {
      type metadata accessor for UIColor();
      v5 = 250;
      v6 = 35;
      v7 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.disabled.unsafeMutableAddressor()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.disabled;
}

uint64_t *Color.MusicTint.normal.unsafeMutableAddressor()
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.normal;
}

uint64_t *Color.MusicTint.rollover.unsafeMutableAddressor()
{
  if (one-time initialization token for rollover != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.rollover;
}

uint64_t *Color.MusicTint.pressed.unsafeMutableAddressor()
{
  if (one-time initialization token for pressed != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.pressed;
}

uint64_t *Color.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (one-time initialization token for deepPressed != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.deepPressed;
}

uint64_t one-time initialization function for normal(uint64_t a1, void *a2, id *a3, uint64_t *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v6 = *a3;
  result = Color.init(_:)();
  *a4 = result;
  return result;
}

uint64_t *Color.MusicTint.disabled.unsafeMutableAddressor()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.disabled;
}

uint64_t static Color.MusicTint.normal.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for UIColor()
{
  result = _sSo7UIColorCML_0;
  if (!_sSo7UIColorCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo7UIColorCML_0);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaLibrary:)(MPMediaLibrary_optional mediaLibrary)
{
  isa = mediaLibrary.value.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2F10;
  v3 = objc_opt_self();
  v4 = isa;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection, UITraitCollection_ptr);
    v9 = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UITraitCollection.mediaLibrary.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for UIAction(0, &_sSo14MPMediaLibraryCML_0, MPMediaLibrary_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    _sypSgWOh_0(v7);
  }

  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(legacyLibraryFilter:)(__C::MPMediaLibraryFilteringOptions legacyLibraryFilter)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2F10;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:legacyLibraryFilter.rawValue];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection, UITraitCollection_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.legacyLibraryFilter.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
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
    type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    _sypSgWOh_0(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

BOOL UITraitCollection.isMediaPicker.getter()
{
  v0 = UITraitCollection.mediaPickerConfiguration.getter();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t UITraitCollection.mediaPickerConfiguration.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for UIAction(0, &_sSo26MPMediaPickerConfigurationCML_0, MPMediaPickerConfiguration_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _sypSgWOh_0(v7);
    return 0;
  }
}

id UITraitCollection.init(mediaPickerConfiguration:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 _traitCollectionWithValue:v3 forTraitNamed:v4];

  if (v5)
  {
    v6.rawValue = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    if (![v3 showsItemsWithProtectedAssets])
    {
      v6.rawValue |= 0x20;
    }

    if (![v3 showsCloudItems])
    {
      v6.rawValue |= 2;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection, UITraitCollection_ptr);
    isa = UITraitCollection.init(mediaPickerLibraryFilter:)(v6).super.isa;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1004F2FF0;
    *(v9 + 32) = v5;
    *(v9 + 40) = isa;
    v10 = v5;
    v11 = isa;
    v12 = Array._bridgeToObjectiveC()().super.isa;

    v13 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v12];

    return v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaPickerLibraryFilter:)(__C::MPMediaLibraryFilteringOptions mediaPickerLibraryFilter)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2F10;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:mediaPickerLibraryFilter.rawValue];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection, UITraitCollection_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.mediaPickerLibraryFilter.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
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
    type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    _sypSgWOh_0(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

uint64_t UITraitCollection.configure<A, B>(libraryRequest:)(void *a1)
{
  v2 = [a1 mediaLibrary];
  v3 = UITraitCollection.mediaLibrary.getter();
  v4 = v3;
  if (v2)
  {
    type metadata accessor for UIAction(0, &_sSo14MPMediaLibraryCML_0, MPMediaLibrary_ptr);
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = UITraitCollection.mediaLibrary.getter();
  [a1 setMediaLibrary:v7];

  v6 = 1;
LABEL_6:
  v8 = [a1 filteringOptions];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  if (((UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | rawValue) & ~v8) != 0)
  {
    v10 = UITraitCollection.legacyLibraryFilter.getter().rawValue;
    [a1 setFilteringOptions:{UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | v10 | objc_msgSend(a1, "filteringOptions")}];
    return 1;
  }

  return v6;
}

UIMenu static UIMenu.lazy(title:image:options:cached:childrenProvider:)(uint64_t a1, void *a2, void *a3, UIMenuIdentifier_optional a4, char a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1004F2F10;
  if (a5)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = a7;
    v31 = partial apply for closure #2 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
    v32 = v15;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    v30 = &block_descriptor_6_1;
    v16 = _Block_copy(&aBlock);
    v17 = objc_opt_self();

    v18 = [v17 elementWithProvider:v16];
    _Block_release(v16);
  }

  else
  {
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;
    v31 = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    v30 = &block_descriptor_52;
    v21 = _Block_copy(&aBlock);

    v18 = [v19 elementWithUncachedProvider:v21];
    _Block_release(v21);
  }

  *(preferredElementSize + 32) = v18;
  if (a2)
  {
    v22 = a2;
  }

  else
  {
    a1 = 0;
    v22 = 0xE000000000000000;
  }

  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0, UIMenu_ptr);
  v23 = a3;

  v24._countAndFlagsBits = a1;
  v24._object = v22;
  v33.value.super.isa = a3;
  v33.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v33, a4, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v26);
}

uint64_t sub_1002C9D38()
{

  return swift_deallocObject();
}

double thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ()(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (), v4);

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIAction(0, &_sSo13UIMenuElementCML_0, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

UIMenu __swiftcall UIMenu.init(representativeOf:title:image:options:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIMenuOptions options)
{
  v4.value = *&image.is_nil;
  isa = image.value.super.isa;
  if (title.value._object)
  {
    countAndFlagsBits = title.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (title.value._object)
  {
    object = title.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1004F2F10;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2]._rawValue = representativeOf._rawValue;
  v11[3]._rawValue = v4.value;
  aBlock[4] = partial apply for closure #1 in UIMenu.init(representativeOf:title:image:options:);
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_12;
  v12 = _Block_copy(aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  *(preferredElementSize + 32) = v13;
  v14._countAndFlagsBits = countAndFlagsBits;
  v14._object = object;
  v18.value.super.isa = isa;
  v18.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v18, v4, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v16);
}

double closure #1 in UIMenu.init(representativeOf:title:image:options:)(void (*a1)(void *), uint64_t a2, unint64_t a3, NSString *a4)
{
  v16 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v15 = v8;
      closure #1 in closure #1 in UIMenu.init(representativeOf:title:image:options:)(&v16, &v15, &v14, a4);

      v11 = v14;
      v16 = v14;
      ++v7;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_15:
  a1(v11);

  return result;
}

void closure #1 in closure #1 in UIMenu.init(representativeOf:title:image:options:)(uint64_t *a1@<X0>, id *a2@<X1>, void *a3@<X8>, NSString *a4@<X2>)
{
  v6 = *a1;
  v7 = *a2;
  if ([*a2 isHidden])
  {
    *a3 = v6;

    return;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = (v8 + 16);

  v10 = [v7 menuRepresentation];
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    v13 = v11;
    if (v12)
    {
      v14.value = a4;
      append #1 (menu:) in closure #1 in closure #1 in UIMenu.init(representativeOf:title:image:options:)(v12, v14, v8, v7);
    }

    else
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_26;
  }

  v15 = [v7 menu];
  if (!v15)
  {
    v18 = [v7 primaryAction];
    if (v18 && (v19 = v18, [v18 copy], v19, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), type metadata accessor for UIAction(0, &_sSo8UIActionCML_0, UIAction_ptr), (swift_dynamicCast() & 1) != 0))
    {
      v20 = v37;
    }

    else
    {
      v21 = v7;
      v22 = [v21 target];
      v23 = [v21 action];
      if (!v22)
      {

        goto LABEL_26;
      }

      v24 = v23;
      if (!v23)
      {

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      type metadata accessor for UIAction(0, &_sSo8UIActionCML_0, UIAction_ptr);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = v24;

      v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      swift_unknownObjectRelease();
      v20 = v27;
      v28 = [v21 title];
      if (v28)
      {
        v29 = v28;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v30 = String._bridgeToObjectiveC()();

      [v20 setTitle:v30];

      v31 = [v21 image];
      [v20 setImage:v31];
    }

    v32 = [v7 title];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v34 = String._bridgeToObjectiveC()();

    [v20 setTitle:v34];

    v35 = [v7 image];
    [v20 setImage:v35];

    v36 = v20;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_26;
  }

  v16 = v15;
  v17.value = a4;
  append #1 (menu:) in closure #1 in closure #1 in UIMenu.init(representativeOf:title:image:options:)(v15, v17, v8, v7);

LABEL_26:
  swift_beginAccess();
  *a3 = *(v8 + 16);
}

uint64_t append #1 (menu:) in closure #1 in closure #1 in UIMenu.init(representativeOf:title:image:options:)(id a1, UIMenuIdentifier_optional a2, uint64_t a3, void *a4)
{
  if ((a2.value & 1) == 0)
  {
    v8 = [a1 title];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = [a1 image];
    if (v13)
    {

LABEL_7:
      swift_beginAccess();
      v14 = a1;
      goto LABEL_17;
    }
  }

  v15 = [a1 title];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    v20 = [a4 title];
    if (v20)
    {
      v21 = v20;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v22;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }
  }

  v23 = [a1 image];
  if (!v23)
  {
    v23 = [a4 image];
  }

  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0, UIMenu_ptr);
  v24 = [a1 children];
  type metadata accessor for UIAction(0, &_sSo13UIMenuElementCML_0, UIMenuElement_ptr);
  preferredElementSize = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26._countAndFlagsBits = v16;
  v26._object = v18;
  v29.value.super.isa = v23;
  v29.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v29, a2, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28);
  swift_beginAccess();
LABEL_17:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

UIAction_optional __swiftcall UIAction.init(barButtonItem:)(UIBarButtonItem barButtonItem)
{
  v2 = [(objc_class *)barButtonItem.super.super.isa target];
  v3 = [(objc_class *)barButtonItem.super.super.isa action];
  if (!v2)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  if (!v3)
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  swift_unknownObjectRelease();
  v8 = v7;
  v9 = [(objc_class *)barButtonItem.super.super.isa title:0];
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = String._bridgeToObjectiveC()();

  [v8 setTitle:v12];

  v13 = [(objc_class *)barButtonItem.super.super.isa image];
  [v8 setImage:v13];

LABEL_9:
  v14 = v8;
  result.value.super.super.isa = v14;
  result.is_nil = v11;
  return result;
}

void *UINavigationItem.effectiveTrailingBarButtonItems.getter()
{
  v0 = UINavigationItem.allTrailingBarButtonItems.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t UINavigationItem.allTrailingBarButtonItems.getter()
{
  v1 = [v0 trailingItemGroups];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, UIBarButtonItemGroup_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v38 = v2 & 0xFFFFFFFFFFFFFF8;
    v39 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v37 = v2 + 32;
    v2 = &_sSaySo15UIBarButtonItemCGMR;
    v35 = i;
    while (1)
    {
      if (v39)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v38 + 16))
        {
          goto LABEL_45;
        }

        v6 = *(v37 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = [v6 representativeItem];
      if (v9)
      {
        v10 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v44;
      }

      v11 = [v7 barButtonItems];
      type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0, UIBarButtonItem_ptr);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v5 >> 62;
      if (v5 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v14;
      v8 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v8)
      {
        goto LABEL_46;
      }

      v40 = v7;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_25:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_26;
      }

      if (v15)
      {
        goto LABEL_25;
      }

      v18 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = v5;
        goto LABEL_27;
      }

LABEL_26:
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v41 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
        if (v21)
        {
LABEL_31:
          if (((v20 >> 1) - v19) < v42)
          {
            goto LABEL_48;
          }

          v22 = v18 + 8 * v19 + 32;
          v36 = v18;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_50;
            }

            lazy protocol witness table accessor for type [UIBarButtonItem] and conformance [A]();
            for (j = 0; j != v21; ++j)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15UIBarButtonItemCGMd, &_sSaySo15UIBarButtonItemCGMR);
              v25 = specialized protocol witness for Collection.subscript.read in conformance [A](v43, j, v12);
              v27 = *v26;
              (v25)(v43, 0);
              *(v22 + 8 * j) = v27;
            }

            i = v35;
            v23 = v42;
          }

          else
          {
            v23 = v42;
            swift_arrayInitWithCopy();
          }

          v5 = v41;
          if (v23 > 0)
          {
            v28 = *(v36 + 16);
            v8 = __OFADD__(v28, v23);
            v29 = v28 + v23;
            if (v8)
            {
              goto LABEL_49;
            }

            *(v36 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_31;
        }
      }

      v5 = v41;
      if (v42 > 0)
      {
        goto LABEL_47;
      }

LABEL_5:
      v44 = v5;
      if (v4 == i)
      {
        goto LABEL_53;
      }
    }

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
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_53:

  v43[0] = v5;
  v30 = [v34 rightBarButtonItems];
  if (v30)
  {
    v31 = v30;
    type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0, UIBarButtonItem_ptr);
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v32);
    return v43[0];
  }

  return v5;
}

void _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation3URLVSg_SayAHGTg5_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0 = *v1;
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
  if (isUniquelyReferenced_nonNull_native && v5 <= New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0[3] >> 1)
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

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0(isUniquelyReferenced_nonNull_native, v12, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0);
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
  v8 = (New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0[3] >> 1) - New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
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
    *v1 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0;
    return;
  }

  v9 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
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
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for Playlist.Collaborator();
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
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
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

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v8 + 32], (a1 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
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
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV_ACtMd, &_s10Foundation9IndexPathV_ACtMR);
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
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
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
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8TextLineVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8TextLineVGMR, type metadata accessor for Lyrics.TextLine);
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
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for Lyrics.TextLine(0);
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
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1 = *v1;
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
  if (isUniquelyReferenced_nonNull_native && v5 <= New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1(isUniquelyReferenced_nonNull_native, v11, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1);
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
  if ((New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[3] >> 1) - New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1;
    return;
  }

  v8 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t static UIBarButtonItem.PrimaryActionKind.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIBarButtonItem.PrimaryActionKind(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

Class UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a5;
  if (a6)
  {
    image_8 = a3;
    v13 = v10;

    v48 = a1;
    v14 = UIBarButtonItem.init(title:image:target:action:menu:)();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_1004F2F10;
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = closure #1 in UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)partial apply;
    *(v18 + 24) = v15;
    aBlock[4] = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    aBlock[3] = &block_descriptor_28;
    v19 = v10;
    v20 = _Block_copy(aBlock);
    children = v13;
    v21 = v14;

    v22 = [v17 elementWithUncachedProvider:v20];
    _Block_release(v20);
    *(preferredElementSize + 32) = v22;
    if (a2)
    {
      v23 = v48;
    }

    else
    {
      v23 = 0;
    }

    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0, UIMenu_ptr);
    v25 = image_8;
    v26._countAndFlagsBits = v23;
    v26._object = v24;
    v56.value.super.isa = a3;
    v56.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v56, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;

    [(objc_class *)v21 setMenuRepresentation:isa];
  }

  else
  {
    v29 = a5;
    v30 = [v29 title];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {
      v35 = v10;

      v36 = String._bridgeToObjectiveC()();

      [v29 setTitle:v36];

      v10 = v35;
    }

    v37 = [v29 image];
    if (v37)
    {
    }

    else
    {
      [v29 setImage:a3];
    }

    v38 = v29;
    v55.value.super.isa = 0;
    v39 = v10;
    v55.is_nil = v10;
    v57.value.super.super.isa = 0;
    v21 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v55, v57, v58).super.super.isa;
    v40 = v21;
    if (!a2)
    {
      v41 = [v38 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v42 = String._bridgeToObjectiveC()();

    [(objc_class *)v21 setTitle:v42];

    v43 = a3;
    if (!a3)
    {
      v43 = [v38 image];
    }

    v25 = a3;
    [(objc_class *)v21 setImage:v43];

    [(objc_class *)v21 setMenuRepresentation:v38];
    v19 = v39;
  }

  [(objc_class *)v21 setStyle:a4];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v44, a7, a8, a9, a10);

  return v21;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:title:image:style:menuTitle:accessibilityIdentifier:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIBarButtonItemStyle style, Swift::String_optional menuTitle, MusicCore::AccessibilityIdentifier_optional *accessibilityIdentifier)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v42 = *&image.is_nil;
  isa = image.value.super.isa;
  v40 = title.value._countAndFlagsBits;
  if (menuTitle.value._countAndFlagsBits)
  {
    goto LABEL_4;
  }

  if (title.value._object)
  {
    v9 = title.value._countAndFlagsBits;
    v10 = title.value._object;

    title.value._object = v10;
    style = v9;
    countAndFlagsBits = v10;
LABEL_4:
    v11 = title.value._object;
    goto LABEL_5;
  }

  v11 = 0;
  style = UIBarButtonItemStylePlain;
  countAndFlagsBits = 0xE000000000000000;
LABEL_5:
  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0, UIMenu_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1004F2F10;
  v39 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2]._rawValue = representativeOf._rawValue;
  v13[3]._rawValue = 1;
  v48 = closure #1 in UIMenu.init(representativeOf:title:image:options:)partial apply;
  v49 = v13;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v47 = &block_descriptor_35_0;
  v14 = _Block_copy(&aBlock);

  v15 = [v39 elementWithUncachedProvider:v14];
  _Block_release(v14);
  *(preferredElementSize + 32) = v15;
  v16._countAndFlagsBits = style;
  v16._object = countAndFlagsBits;
  v52.value.super.isa = 0;
  v52.is_nil = 0;
  v17 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v52, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v36).super.super.isa;
  v38 = isa;
  v18 = v17;
  v19 = v11;

  v20 = v18;
  v21 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1004F2F10;
  v24 = swift_allocObject();
  *(v24 + 16) = closure #1 in UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)partial apply;
  *(v24 + 24) = v22;
  v48 = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
  v49 = v24;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v47 = &block_descriptor_46;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v21;

  v28 = [v39 elementWithUncachedProvider:v25];
  _Block_release(v25);
  *(v23 + 32) = v28;
  if (v19)
  {
    v29 = v40;
  }

  else
  {
    v29 = 0;
  }

  if (v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = v38;
  v32._countAndFlagsBits = v29;
  v32._object = v30;
  v53.value.super.isa = isa;
  v53.is_nil = 0;
  v33 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v53, 0, 0xFFFFFFFFFFFFFFFFLL, v23, v37.super.super.isa).super.super.isa;

  [v27 setMenuRepresentation:v33];

  [v27 setStyle:v42];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v34, object, accessibilityIdentifier, v50, v51);

  return v27;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(Swift::OpaquePointer representativeOf, UIBarButtonItem configuredAfter, Swift::String_optional menuTitle)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v6 = configuredAfter.super.super.isa;
  v7 = [(objc_class *)v6 title];
  if (v7)
  {
    v8 = v7;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v40 = 0;
    v10 = 0;
  }

  v37 = [(objc_class *)v6 image];

  v38 = [(objc_class *)v6 style];
  v39 = v6;
  if (!object)
  {
    if (v10)
    {

      countAndFlagsBits = v40;
      object = v10;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0, UIMenu_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1004F2F10;
  v36 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2]._rawValue = representativeOf._rawValue;
  v12[3]._rawValue = 1;
  v45 = closure #1 in UIMenu.init(representativeOf:title:image:options:)partial apply;
  v46 = v12;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v44 = &block_descriptor_53_1;
  v13 = _Block_copy(&aBlock);

  v14 = [v36 elementWithUncachedProvider:v13];
  _Block_release(v13);
  *(preferredElementSize + 32) = v14;
  v15._countAndFlagsBits = countAndFlagsBits;
  v15._object = object;
  v47.value.super.isa = 0;
  v47.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v47, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v33).super.super.isa;

  v17 = isa;
  v35 = v37;
  v18 = v17;
  v19 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004F2F10;
  v22 = swift_allocObject();
  *(v22 + 16) = closure #1 in UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)partial apply;
  *(v22 + 24) = v20;
  v45 = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
  v46 = v22;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v44 = &block_descriptor_64;
  v23 = _Block_copy(&aBlock);
  v24 = v18;
  v25 = v19;

  v26 = [v36 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v21 + 32) = v26;
  if (v10)
  {
    v27 = v40;
  }

  else
  {
    v27 = 0;
  }

  if (!v10)
  {
    v10 = 0xE000000000000000;
  }

  v28 = v35;
  v29._countAndFlagsBits = v27;
  v29._object = v10;
  v48.value.super.isa = v37;
  v48.is_nil = 0;
  v30 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v48, 0, 0xFFFFFFFFFFFFFFFFLL, v21, v34.super.super.isa).super.super.isa;

  [v25 setMenuRepresentation:v30];

  [v25 setStyle:v38];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v31, 0, 0, 0, 0);

  return v25;
}

id UIBarButtonItem.primaryActionKind.getter()
{
  result = [v0 primaryAction];
  if (!result)
  {
    return [v0 menu];
  }

  return result;
}

void UIBarButtonItem.primaryActionKind.setter(void *a1, char a2)
{
  v3 = v2;
  v6 = [v2 primaryAction];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = [v2 menu];
    v9 = v6 == 0;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  if (a2 != -1)
  {
    v73 = v8;
    v72 = v6;
    if (a2)
    {
      v10 = a1;
      [v3 setMenu:v10];
      v11 = [v3 customView];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          [v13 setMenu:v10];
          outlined consume of Artwork.View.PlaceholderKind?(a1, a2);

LABEL_42:
          [v3 setPrimaryAction:0];
          v42 = [v3 title];
          if (v42)
          {
            v43 = v42;
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;
          }

          else
          {
            v71 = 0;
            v45 = 0;
          }

          v46 = [v3 image];
          v47 = swift_allocObject();
          *(v47 + 16) = v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
          preferredElementSize = swift_allocObject();
          *(preferredElementSize + 16) = xmmword_1004F2F10;
          v49 = objc_opt_self();
          v50 = swift_allocObject();
          *(v50 + 16) = partial apply for closure #2 in UIBarButtonItem.primaryActionKind.setter;
          *(v50 + 24) = v47;
          aBlock[4] = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
          aBlock[5] = v50;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
          aBlock[3] = &block_descriptor_74_0;
          v51 = _Block_copy(aBlock);
          outlined copy of Artwork.View.PlaceholderKind?(a1, a2);

          v52 = [v49 elementWithUncachedProvider:v51];
          _Block_release(v51);
          *(preferredElementSize + 32) = v52;
          if (v45)
          {
            v53 = v71;
          }

          else
          {
            v53 = 0;
          }

          if (v45)
          {
            v54 = v45;
          }

          else
          {
            v54 = 0xE000000000000000;
          }

          type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0, UIMenu_ptr);
          v55._countAndFlagsBits = v53;
          v55._object = v54;
          v77.value.super.isa = v46;
          v77.is_nil = 0;
          isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v55, 0, v77, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v69).super.super.isa;

          [v3 setMenuRepresentation:isa];
          outlined consume of Artwork.View.PlaceholderKind?(v72, v73);
          outlined consume of Artwork.View.PlaceholderKind?(a1, a2);

          goto LABEL_61;
        }
      }

      outlined consume of Artwork.View.PlaceholderKind?(a1, a2);
      v33 = [v3 customView];
      if (v33)
      {
        v34 = v33;
        type metadata accessor for SymbolButton(0);
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v35;
          v37 = swift_allocObject();
          *(v37 + 16) = v10;
          v38 = (v36 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v39 = *v38;
          v40 = v38[1];
          *v38 = NowPlaying.TrackMetadata.underlyingItem.getter;
          v38[1] = v37;
          v41 = v10;
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v39, v40);
        }
      }

      goto LABEL_42;
    }

    v70 = v7;
    v16 = [v2 title];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v3 image];
    [v3 setPrimaryAction:a1];
    v21 = [a1 title];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      v26 = [a1 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else if (!v19)
    {
      v27 = 0;
LABEL_28:
      [v3 setTitle:v27];

      v28 = [a1 image];
      if (!v28)
      {
        v28 = v20;
      }

      [v3 setImage:v28];

      [v3 setMenu:0];
      v29 = [v3 customView];
      if (v29)
      {
        v30 = v29;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          [v31 setMenu:0];

          v32 = v73;
          goto LABEL_57;
        }
      }

      v57 = [v3 customView];
      v32 = v73;
      if (v57)
      {
        v58 = v57;
        type metadata accessor for SymbolButton(0);
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = (v59 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v61 = *v60;
          v62 = v60[1];
          *v60 = 0;
          v60[1] = 0;
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v61, v62);
        }
      }

LABEL_57:
      if ((v70 & 1) == 0)
      {
        if ((v32 & 1) == 0)
        {
          v65 = [v3 menuRepresentation];
          if (!v65)
          {

            outlined consume of Artwork.View.PlaceholderKind?(a1, a2);
            v63 = v72;
            v64 = v32;
            goto LABEL_62;
          }

          v66 = v65;
          type metadata accessor for UIAction(0, &_sSo13UIMenuElementCML_0, UIMenuElement_ptr);
          v67 = v72;
          v68 = static NSObject.== infix(_:_:)();

          outlined consume of Artwork.View.PlaceholderKind?(v72, v32);
          if (v68)
          {
            [v3 setMenuRepresentation:a1];

            outlined consume of Artwork.View.PlaceholderKind?(a1, a2);
            outlined consume of Artwork.View.PlaceholderKind?(a1, a2);
            v63 = v72;
            v64 = v32;
            goto LABEL_62;
          }

          outlined consume of Artwork.View.PlaceholderKind?(v72, v32);
LABEL_61:
          v63 = a1;
          v64 = a2;
LABEL_62:
          outlined consume of Artwork.View.PlaceholderKind?(v63, v64);
          return;
        }

        outlined consume of Artwork.View.PlaceholderKind?(v72, v32);
      }

      goto LABEL_61;
    }

    v27 = String._bridgeToObjectiveC()();

    goto LABEL_28;
  }

  v14 = v6;
  [v3 setPrimaryAction:0];
  [v3 setMenuRepresentation:0];
  [v3 setMenu:0];
  v74 = [v3 customView];
  if (v74)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      [v15 setMenu:0];
      outlined consume of Artwork.View.PlaceholderKind?(v14, v8);

      return;
    }
  }

  outlined consume of Artwork.View.PlaceholderKind?(v14, v8);
}

uint64_t closure #1 in UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(void *a1)
{
  v1 = [a1 children];
  type metadata accessor for UIAction(0, &_sSo13UIMenuElementCML_0, UIMenuElement_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void (*UIBarButtonItem.primaryActionKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 primaryAction];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v1 menu];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return UIBarButtonItem.primaryActionKind.modify;
}

void UIBarButtonItem.primaryActionKind.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    outlined copy of Artwork.View.PlaceholderKind?(*a1, v3);
    UIBarButtonItem.primaryActionKind.setter(v2, v3);

    outlined consume of Artwork.View.PlaceholderKind?(v2, v3);
  }

  else
  {
    UIBarButtonItem.primaryActionKind.setter(*a1, v3);
  }
}

id UIBarButtonItem.plastify()()
{
  [v0 _setPrefersNoPlatter:1];

  return v2;
}

void *UIBarButtonItemGroup.split()()
{
  v1 = [v0 barButtonItems];
  type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0, UIBarButtonItem_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v5;
      closure #1 in UIBarButtonItemGroup.split()(&v11, &v10, v0);

      ++v4;
      if (v7 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_15:

  return v8;
}

void closure #1 in UIBarButtonItemGroup.split()(void *a1, void **a2, void *a3)
{
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004F2F10;
  *(v6 + 32) = v5;
  v7 = objc_allocWithZone(UIBarButtonItemGroup);
  type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0, UIBarButtonItem_ptr);
  v8 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 initWithBarButtonItems:isa representativeItem:0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v10 = v8;
  v11 = [a3 barButtonItems];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
LABEL_5:
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        __break(1u);
      }

      else if ((v12 & 0xC000000000000001) == 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v12 + 8 * v15 + 32);
          goto LABEL_10;
        }

        __break(1u);
        return;
      }

      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
      v17 = v16;

      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004F2F10;
  *(v19 + 32) = [objc_opt_self() fixedSpaceItemOfWidth:0.0];
  v20 = objc_allocWithZone(UIBarButtonItemGroup);
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v20 initWithBarButtonItems:v21 representativeItem:0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t UIAction.init(target:selector:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = a2;

      v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002CD228()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id closure #1 in UIAction.init(target:selector:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    [result performSelector:a3];
    return v5;
  }

  return result;
}

Class static UIBarButtonItem.contextBarButtonItem(representativeOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  v3.value = 1;
  v4 = specialized static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(v3, partial apply for closure #1 in static UIBarButtonItem.contextBarButtonItem(representativeOf:), v2);

  return v4;
}

uint64_t closure #1 in static UIBarButtonItem.contextBarButtonItem(representativeOf:)(uint64_t a1)
{
  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0, UIMenu_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1004F2F10;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  aBlock[4] = closure #1 in UIMenu.init(representativeOf:title:image:options:)partial apply;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_132_0;
  v5 = _Block_copy(aBlock);

  v6 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(preferredElementSize + 32) = v6;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v7, 0, v14, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v12).super.super.isa;
  v9 = [(objc_class *)isa children];

  type metadata accessor for UIAction(0, &_sSo13UIMenuElementCML_0, UIMenuElement_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

id static UIBarButtonItem.loading.getter()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v0 startAnimating];
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v0];

  return v1;
}

uint64_t UIButton.reconfigure(with:)(void (*a1)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIButton.configuration.getter();
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    static UIButton.Configuration.plain()();
    if (v10(v5, 1, v6) != 1)
    {
      outlined destroy of TaskPriority?(v5, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  a1(v9);
  (*(v7 + 16))(v3, v9, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  UIButton.configuration.setter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t UITraitCollection.isAccessibilitySizeCategory.getter()
{
  v1 = [v0 preferredContentSizeCategory];
  v2 = UIContentSizeCategory.isAccessibilityCategory.getter();

  return v2 & 1;
}

uint64_t UITraitCollection.preferredLargeTitleDisplayMode.getter()
{
  if (![v0 userInterfaceIdiom])
  {
    return 3;
  }

  if ([v0 userInterfaceIdiom] == 1)
  {
    return 3;
  }

  return 1;
}

Swift::Bool __swiftcall UIViewController.scrollToTopIfPossible()()
{
  v1 = [v0 contentScrollView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 _scrollToTopIfPossible:1];

  return v3;
}

Swift::Bool __swiftcall UIViewController.focusOnSearchBarIfPossible()()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 searchBar];
  v4 = [v3 canBecomeFirstResponder];

  if (v4)
  {
    v5 = [v2 searchBar];
    v6 = [v5 becomeFirstResponder];

    v2 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id static UIKeyCommand.findKeyCommand(affecting:)()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v17 - v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v7 = static NSBundle.module;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 keyCommandWithInput:v9 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v11 = v10;
  v12 = String._bridgeToObjectiveC()();

  [v11 setTitle:v12];

  if (one-time initialization token for Handling != -1)
  {
    swift_once();
  }

  v13 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in static UIKeyCommand.findKeyCommand(affecting:);
  *(v14 + 24) = v6;
  v17[1] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIKeyCommand) -> ();
  v17[2] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd, &_sySo12UIKeyCommandCcMR);
  v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v11, v13, v15, 3);

  swift_unknownObjectRelease();

  return v11;
}

void closure #1 in static UIKeyCommand.findKeyCommand(affecting:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setActive:1];
    v4 = [v3 searchBar];
    [v4 becomeFirstResponder];

    v5 = UISearchController.searchText.getter();
    if (v6)
    {
      v7 = v5;
      v8 = v6;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = [v3 searchBar];
        v11 = [v10 searchTextField];

        [v11 selectAll:v3];
      }
    }
  }
}

uint64_t UISearchController.searchText.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v16[0] = v8;
    v16[1] = v10;
    static CharacterSet.newlines.getter();
    _sS2SSysWl_0();
    v11 = StringProtocol.trimmingCharacters(in:)();
    v13 = v12;
    (*(v2 + 8))(v5, v1);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      return v11;
    }
  }

  return 0;
}

id UIKeyCommand.init(title:input:modifierFlags:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = String._bridgeToObjectiveC()();

  v12 = [ObjCClassFromMetadata keyCommandWithInput:v11 modifierFlags:a5 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  [v13 setTitle:v14];

  v15 = one-time initialization token for Handling;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd, &_sySo12UIKeyCommandCcMR);
  v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v13, v16, v18, 3);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t UIKeyCommand.handler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for Handling != -1)
  {
    swift_once();
  }

  v6 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd, &_sySo12UIKeyCommandCcMR);
    v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v3, v6, v8, 3);
  swift_unknownObjectRelease();
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a1, a2);
}

uint64_t (*UIKeyCommand.handler.getter())(uint64_t a1)
{
  if (one-time initialization token for Handling != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, static UIKeyCommand.KeyCommandAssociatedKeys.Handling))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd, &_sySo12UIKeyCommandCcMR);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIKeyCommand) -> (@out ());
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v5, &_sypSgMd_1, &_sypSgMR_1);
  }

  return 0;
}

void (*UIKeyCommand.handler.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = UIKeyCommand.handler.getter();
  v4[1] = v5;
  return UIKeyCommand.handler.modify;
}

void UIKeyCommand.handler.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed () -> ())?(**a1, v3);
    if (one-time initialization token for Handling != -1)
    {
      swift_once();
    }

    v5 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIKeyCommand) -> ()partial apply;
      v2[3] = v6;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd, &_sySo12UIKeyCommandCcMR);
      v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(v2[4], v5, v7, 3);
    swift_unknownObjectRelease();
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4, v3);
    v11 = *v2;
    v12 = v2[1];
  }

  else
  {
    if (one-time initialization token for Handling != -1)
    {
      swift_once();
    }

    v8 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIKeyCommand) -> ()partial apply;
      v2[3] = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd, &_sySo12UIKeyCommandCcMR);
      v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v10 = 0;
    }

    objc_setAssociatedObject(v2[4], v8, v10, 3);
    swift_unknownObjectRelease();
    v11 = v4;
    v12 = v3;
  }

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v11, v12);

  free(v2);
}

uint64_t one-time initialization function for Handling()
{
  result = swift_slowAlloc();
  static UIKeyCommand.KeyCommandAssociatedKeys.Handling = result;
  return result;
}

id UIKeyCommand.pioritizedOverSystemBehavior(_:)(char a1)
{
  [v1 setWantsPriorityOverSystemBehavior:a1 & 1];

  return v3;
}

void @objc UIKeyCommand.music_handleKeyCommand(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v3 = UIKeyCommand.handler.getter();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v3(v7);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
  }

  else
  {
  }
}

id UIFont.monospacedDigits()()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_yptGMR);
  inited = swift_initStackObject();
  v2 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 6;
  *(inited + 16) = xmmword_1004F2EF0;
  v3 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = v3;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;
  v4 = v2;
  v5 = v3;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26UIFontDescriptorFeatureKeya_yptMd, &_sSo26UIFontDescriptorFeatureKeya_yptMR);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd_0, &_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMR_0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1004F2400;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaypGGMd, &_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaypGGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004F2400;
  *(v9 + 32) = v6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaypGGMd, &_sSaySDySo26UIFontDescriptorFeatureKeyaypGGMR);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n_0(v8);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v8 + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd_0, &_sSo29UIFontDescriptorAttributeNamea_yptMR_0);
  _sSo29UIFontDescriptorAttributeNameaMa_0(0);
  _sSo29UIFontDescriptorAttributeNameaABSHSCWl_0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  v13 = [swift_getObjCClassFromMetadata() fontWithDescriptor:v12 size:0.0];
  return v13;
}

uint64_t (*static UIPointerStyle.capsule(in:)(void *a1))(void *a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return partial apply for closure #1 in static UIPointerStyle.capsule(in:);
}

uint64_t closure #1 in static UIPointerStyle.capsule(in:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd, &_s5UIKit14UIPointerShapeOSgMR);
  __chkstk_darwin();
  v8 = &v38 - v7;
  v9 = type metadata accessor for UIPointerEffect();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (a4)
  {
    v22 = a4;
    v39.origin.x = v15;
    v39.origin.y = v17;
    v39.size.width = v19;
    v39.size.height = v21;
    Width = CGRectGetWidth(v39);
    [v22 frame];
    v25 = Width - v24;
    v40.origin.x = v15;
    v40.origin.y = v17;
    v40.size.width = v19;
    v40.size.height = v21;
    Height = CGRectGetHeight(v40);
    [v22 frame];
    v28 = v27;

    v15 = UIEdgeInsetsInsetRect(v15, v17, v19, v21, (Height - v28) * 0.5, v25 * 0.5);
    v17 = v29;
    v19 = v30;
    v21 = v31;
  }

  (*(v10 + 16))(v13, a2, v9);
  v41.origin.x = v15;
  v41.origin.y = v17;
  v41.size.width = v19;
  v41.size.height = v21;
  v32 = CGRectGetWidth(v41);
  v42.origin.x = v15;
  v42.origin.y = v17;
  v42.size.width = v19;
  v42.size.height = v21;
  v33 = CGRectGetHeight(v42);
  if (v33 < v32)
  {
    v32 = v33;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIPointerStyle, UIPointerStyle_ptr);
  *v8 = v15;
  *(v8 + 1) = v17;
  *(v8 + 2) = v19;
  *(v8 + 3) = v21;
  *(v8 + 4) = v32 * 0.5;
  v34 = enum case for UIPointerShape.roundedRect(_:);
  v35 = type metadata accessor for UIPointerShape();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v8, v34, v35);
  (*(v36 + 56))(v8, 0, 1, v35);
  return UIPointerStyle.init(effect:shape:)();
}

unint64_t lazy protocol witness table accessor for type [UIBarButtonItem] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15UIBarButtonItemCGMd, &_sSaySo15UIBarButtonItemCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A]);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd_0, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR_0);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaypGMd, &_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v4, &v11, &_sSo26UIFontDescriptorFeatureKeya_yptMd, &_sSo26UIFontDescriptorFeatureKeya_yptMR);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd_0, &_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMR_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v4, &v11, &_sSo29UIFontDescriptorAttributeNamea_yptMd_0, &_sSo29UIFontDescriptorAttributeNamea_yptMR_0);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo13MPPropertySetCGMd_0, &_ss18_DictionaryStorageCySSSo13MPPropertySetCGMR_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd_0, &_ss18_DictionaryStorageCySSSbGMR_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
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
      *(v3[7] + result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}