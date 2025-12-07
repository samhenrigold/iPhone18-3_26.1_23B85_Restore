uint64_t __dbg_ScreenShape(uint64_t a1)
{
  result = _UIScreenTypePrivateForScreen();
  v2 = (result - 10000) > 0xA || ((1 << (result - 16)) & 0x41F) == 0;
  if (v2 && ((result - 20000) > 0xB || ((1 << (result - 32)) & 0xC03) == 0))
  {
    return -1;
  }

  return result;
}

char *resetDyldInsertLibraries()
{
  result = getenv("DYLD_INSERT_LIBRARIES");
  if (result)
  {
    v1 = result;
    strlen(result);
    v2 = off_3C478();
    v3 = &v14 - ((v2 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v3, v2 + 1);
    v4 = *v1;
    if (!*v1)
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }

    v5 = v3;
    v6 = *v1;
    do
    {
      for (i = 0; v6; v6 = v1[++i])
      {
        if (v6 == 58)
        {
          break;
        }
      }

      v8 = v1;
      if (i)
      {
        v9 = i;
        while (v1[v9] != 47)
        {
          if (!--v9)
          {
            v4 = *v1;
            v8 = v1;
            goto LABEL_13;
          }
        }

        v8 = &v1[v9];
        v4 = 47;
      }

LABEL_13:
      v10 = v4 == 47;
      v11 = v4 == 47;
      if (v10)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = v8;
      }

      if (&v1[i] == v12)
      {
        v1 += i;
      }

      else
      {
        if (strncmp(v12, "libViewDebuggerSupport.dylib", v1 - v8 - v11 + i))
        {
          if (v5 != v3)
          {
            *v5++ = 58;
          }

          v5 = stpncpy(v5, v1, i);
          v6 = v1[i];
        }

        if (v6 == 58)
        {
          v13 = v1 + 1;
        }

        else
        {
          v13 = v1;
        }

        v1 = &v13[i];
        v6 = v13[i];
      }

      v4 = v6;
    }

    while (v6);
    if (v5 > v3)
    {
      *v5 = 0;
      return setenv("DYLD_INSERT_LIBRARIES", v3, 1);
    }

    else
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }
  }

  return result;
}

void sub_F664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, NSString *a30, __CFString *a31, NSArray *a32)
{
  if (a2 == 1)
  {
    [objc_begin_catch(exception_object) callStackSymbols];
    a30 = [NSString stringWithFormat:@"Exception gathering view hierarchy information: %@ \n%@"];
    a31 = @"exceptions";
    a32 = [NSArray arrayWithObjects:&a30 count:1];
    [NSPropertyListSerialization dataWithPropertyList:[NSDictionary dictionaryWithObjects:&a32 forKeys:&a31 count:1] format:200 options:0 error:0];
    objc_end_catch();
    JUMPOUT(0xF624);
  }

  _Unwind_Resume(exception_object);
}

id arrayOfObjectPointers(void *a1)
{
  v1 = a1;
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [NSString stringWithFormat:@"%p", *(*(&v10 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id viewWantsAutoLayout(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 _wantsAutolayout];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id @objc static ARView.fallback_debugHierarchyAdditionalGroupingIDs()(id a1, SEL a2)
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

id @objc static ARView.fallback_debugHierarchyObjectsInGroup(withID:on:outOptions:)(id a1, SEL a2, id a3, id a4, id *a5)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v8 = specialized static ARView.fallback_debugHierarchyObjectsInGroup(withID:on:outOptions:)(v5, v7, v11);

  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29DebugHierarchyObject_Fallback_pMd, &_sSo29DebugHierarchyObject_Fallback_pMR);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

UIImage_optional __swiftcall ARView.__dbg_snapshotImage()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [objc_opt_self() mainScreen];
  [v5 scale];
  v7 = v6;

  v12.width = v2;
  v12.height = v4;
  UIGraphicsBeginImageContextWithOptions(v12, 0, v7);
  [v0 bounds];
  [v0 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v10 = v8;
  result.value.super.isa = v10;
  result.is_nil = v9;
  return result;
}

id @objc ARView.__dbg_snapshotImage()(id a1, SEL a2)
{
  v2 = a1;
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v13.width = v4;
  v13.height = v6;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v9);
  [v2 bounds];
  [v2 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
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

id specialized static ARView.fallback_debugHierarchyObjectsInGroup(withID:on:outOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any(a3, v34);
  type metadata accessor for ARView();
  if (swift_dynamicCast())
  {
    v5 = v33;
    if (a1 == 0xD000000000000021 && 0x8000000000031390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v34[0] = v33;
      v6 = _Pointer.debugDescription.getter();
      v8 = v7;
      v9 = objc_opt_self();
      result = [v9 sharedHub];
      if (!result)
      {
        goto LABEL_33;
      }

      v11 = result;
      specialized DebugHierarchyTargetHub.spatialSceneDebugRepresentationCache.getter();
      v13 = v12;

      if (*(v13 + 16))
      {
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8);
        if (v15)
        {
          v16 = v14;

          v17 = *(*(v13 + 56) + 8 * v16);

          if (!(v17 >> 62))
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

            return v17;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29DebugHierarchyObject_Fallback_pMd, &_sSo29DebugHierarchyObject_Fallback_pMR);
          v28 = _bridgeCocoaArray<A>(_:)();

LABEL_31:
          swift_bridgeObjectRelease_n();
          return v28;
        }
      }

      type metadata accessor for RealityKitHierarchyExporter();
      v18 = static RealityKitHierarchyExporter.exportDebugRepresentation(for:)();
      if (v18)
      {
        v19 = v18;
        if (v18 >> 62)
        {
          v20 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v20 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
        }

        v21 = &_swiftEmptyArrayStorage;
        if (!v20)
        {
          goto LABEL_22;
        }

        v29 = v9;
        v30 = v6;
        v31 = v33;
        v34[0] = &_swiftEmptyArrayStorage;
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v20 & 0x8000000000000000) == 0)
        {
          v22 = 0;
          do
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v23 = *(v19 + 8 * v22 + 32);
            }

            v24 = v23;
            ++v22;
            v25 = type metadata accessor for SpatialSceneDebugRepresentationWrapper();
            v26 = objc_allocWithZone(v25);
            *&v26[OBJC_IVAR____TtC22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapper_sceneDebugRepresentation] = v24;
            v32.receiver = v26;
            v32.super_class = v25;
            objc_msgSendSuper2(&v32, "init");
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v20 != v22);
          v21 = v34[0];
LABEL_22:
          result = [v9 sharedHub];
          if (result)
          {
            v27 = result;

            specialized DebugHierarchyTargetHub.cache(spatialSceneDebugRepresentation:for:)(v21, v6, v8);

            if (!(v21 >> 62))
            {

              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

              return v21;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29DebugHierarchyObject_Fallback_pMd, &_sSo29DebugHierarchyObject_Fallback_pMR);
            v28 = _bridgeCocoaArray<A>(_:)();

            goto LABEL_31;
          }

          goto LABEL_34;
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapperCGGMd, &_ss18_DictionaryStorageCySSSay22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapperCGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapperCGGMd, &_ss18_DictionaryStorageCySSSay22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapperCGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void specialized DebugHierarchyTargetHub.spatialSceneDebugRepresentationCache.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedHub];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = [v1 additionalKnownObjects];

  if (!v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *&v9 = 0xD000000000000018;
  *(&v9 + 1) = 0x8000000000031400;
  v4 = [v3 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    outlined destroy of Any?(v11);
LABEL_10:
    v5 = [v0 sharedHub];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 additionalKnownObjects];

      if (v7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapperCGMd, &_sSay22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapperCGMR);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        *&v11[0] = 0xD000000000000018;
        *(&v11[0] + 1) = 0x8000000000031400;
        [v7 __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapperCGGMd, &_sSDySSSay22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapperCGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }
}

void specialized DebugHierarchyTargetHub.cache(spatialSceneDebugRepresentation:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized DebugHierarchyTargetHub.spatialSceneDebugRepresentationCache.getter();
  v7 = v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  v9 = [objc_opt_self() sharedHub];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 additionalKnownObjects];

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapperCGMd, &_sSay22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapperCGMR);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v11 __swift_setObject:isa forKeyedSubscript:{_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(), 0xD000000000000018, 0x8000000000031400}];

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

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SpatialSceneDebugRepresentationWrapper.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpatialSceneDebugRepresentationWrapper();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void static SpatialSceneDebugRepresentationWrapper.fallback_debugHierarchyValueForProperty(withName:on:outOptions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 != 0xD000000000000018 || 0x8000000000031400 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

  outlined init with copy of Any(a3, v14);
  type metadata accessor for SpatialSceneDebugRepresentationWrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v14[5];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v14[0] = *&v7[OBJC_IVAR____TtC22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapper_sceneDebugRepresentation];
  v8 = v14[0];
  type metadata accessor for SpatialSceneDebugRepresentation();
  lazy protocol witness table accessor for type SpatialSceneDebugRepresentation and conformance SpatialSceneDebugRepresentation();
  v9 = v8;
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {

LABEL_7:
    a4[3] = &type metadata for () + 8;
    return;
  }

  v12 = v10;
  v13 = v11;

  a4[3] = &type metadata for Data;

  *a4 = v12;
  a4[1] = v13;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialSceneDebugRepresentation and conformance SpatialSceneDebugRepresentation()
{
  result = lazy protocol witness table cache variable for type SpatialSceneDebugRepresentation and conformance SpatialSceneDebugRepresentation;
  if (!lazy protocol witness table cache variable for type SpatialSceneDebugRepresentation and conformance SpatialSceneDebugRepresentation)
  {
    type metadata accessor for SpatialSceneDebugRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialSceneDebugRepresentation and conformance SpatialSceneDebugRepresentation);
  }

  return result;
}

uint64_t specialized static SpatialSceneDebugRepresentationWrapper.fallback_debugHierarchyPropertyDescriptions()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2DC10;
  v1 = String._bridgeToObjectiveC()();
  type metadata accessor for NSData();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"DebugHierarchyLogicalPropertyTypeCustom";
  }

  v7 = v1;
  v8 = v3;
  v9 = v5;
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11 = Mutable;
  if (v7)
  {
    CFDictionaryAddValue(Mutable, @"propertyName", v7);
  }

  if (v8)
  {
    CFDictionaryAddValue(v11, @"propertyRuntimeType", v8);
  }

  CFDictionaryAddValue(v11, @"propertyLogicalType", v6);
  CFDictionaryAddValue(v11, @"propertyFormat", @"public.data");
  if (!v11)
  {
    v15 = +[NSAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"CFDictionaryRef  _Nonnull CreateDebugHierarchyPropertyDescriptionWithValue(CFTypeRef _Nullable, CFStringRef _Nonnull, CFStringRef _Nullable, CFDebugHierarchyLogicalPropertyType _Nullable, CFStringRef _Nullable, DebugHierarchyVisibility, DebugHierarchyPropertyOptions)"];
    [v15 handleFailureInFunction:v16 file:@"DebugHierarchyHelpers_CoreFoundation.h" lineNumber:568 description:&stru_3C768];

    v17 = +[NSAssertionHandler currentHandler];
    v18 = [NSString stringWithUTF8String:"CFDictionaryRef  _Nonnull CreateDebugHierarchyPropertyDescription(CFStringRef _Nonnull, CFStringRef _Nullable, CFDebugHierarchyLogicalPropertyType _Nullable, CFStringRef _Nullable, DebugHierarchyVisibility, DebugHierarchyPropertyOptions)"];
    [v17 handleFailureInFunction:v18 file:@"DebugHierarchyHelpers_CoreFoundation.h" lineNumber:575 description:&stru_3C768];

    v19 = +[NSAssertionHandler currentHandler];
    v20 = [NSString stringWithUTF8String:"DebugHierarchyPropertyDescriptionDictionary  _Nonnull DebugHierarchyPropertyDescriptionOfData(NSString * _Nonnull __strong, NSString * _Nullable __strong, DebugHierarchyLogicalPropertyType  _Nullable __strong, NSString * _Nullable __strong, DebugHierarchyVisibility, DebugHierarchyPropertyOptions)"];
    [v19 handleFailureInFunction:v20 file:@"DebugHierarchyHelpers_Foundation.h" lineNumber:666 description:&stru_3C768];
  }

  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 32) = v13;
  return v0;
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}