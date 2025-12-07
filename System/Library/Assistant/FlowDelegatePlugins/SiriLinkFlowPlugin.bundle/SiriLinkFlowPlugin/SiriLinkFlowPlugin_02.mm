void static AutoShortcutInvocation.getAutoShortcuts(bundleId:provider:preferences:baseTemplatePhrase:)()
{
  v1 = v0[8];
  $defer #1 () in AutoShortcutInvocation.action.getter(v0[15], v0[18], "AutoShortcutFirstRunFlowFetchAutoShortcuts");
  if (v1)
  {
    v2 = specialized Array.count.getter(v0[20]);
    if (v2)
    {
      v3 = 0;
      v4 = v0[20];
      v5 = v4 & 0xC000000000000001;
      v44 = v4;
      v42 = v2;
      v43 = v4 + 32;
      v6 = &off_2B4000;
      v41 = v4 & 0xC000000000000001;
      while (2)
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
        v46 = v3;
        if (v5)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v43 + 8 * v3);
        }

        v45 = v7;
        v8 = [v7 v6[300]];
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase, LNAutoShortcutLocalizedPhrase_ptr);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v10 = specialized Array.count.getter(v9);
        v11 = 0;
        while (v10 != v11)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_38;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v15 = v0[7];
          v14 = v0[8];
          v16 = [v12 basePhraseTemplate];
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          if (v17 == v15 && v14 == v19)
          {

LABEL_26:

            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            v27 = v0[20];
            v28 = v44;
            if (!isUniquelyReferenced_nonNull_bridgeObject || (v44 & 0x4000000000000000) != 0 || (v27 & 0x8000000000000000) != 0)
            {
              v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v0[20]);
              v27 = v28;
            }

            v29 = v28 & 0xFFFFFFFFFFFFFF8;
            v30 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
            if (v46 >= v30)
            {
LABEL_39:
              __break(1u);
            }

            else
            {
              v31 = v30 - 1;
              v32 = v29 + 8 * v46;
              v33 = *(v32 + 32);
              memmove((v32 + 32), (v32 + 40), 8 * (v30 - 1 - v46));
              *(v29 + 16) = v31;
              v0[2] = v27;
              specialized Array._checkIndex(_:)(0, v27);
              if ((specialized Array.count.getter(v27) & 0x8000000000000000) == 0)
              {
                v34 = specialized Array.count.getter(v27);
                v35 = __OFADD__(v34, 1);
                v36 = v34 + 1;
                if (!v35)
                {
                  v38 = v0[14];
                  v37 = v0[15];
                  v39 = v0[13];
                  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v36, 1);
                  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v33);
                  v25 = v0[2];

                  (*(v38 + 8))(v37, v39);
                  goto LABEL_34;
                }

LABEL_41:
                __break(1u);
LABEL_42:
                __break(1u);
                return;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v11;
          if (v21)
          {
            goto LABEL_26;
          }
        }

        v3 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_42;
        }

        v5 = v41;
        v6 = &off_2B4000;
        if (v3 != v42)
        {
          continue;
        }

        break;
      }
    }

    v23 = v0[14];
    v22 = v0[15];
    v24 = v0[13];

    (*(v23 + 8))(v22, v24);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
  }

  v25 = v0[20];
LABEL_34:

  OUTLINED_FUNCTION_6_6();

  v40(v25);
}

uint64_t $defer #1 () in AutoShortcutInvocation.action.getter(uint64_t a1, uint64_t a2, const char *a3)
{
  v22 = a3;
  v3 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_7_1();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7_1();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v8, v3) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v8, v3);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v15, v16, v19, v22, v17, v18, 2u);
    OUTLINED_FUNCTION_15_0(v18);
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t protocol witness for AppShortcutInvoking.action.getter in conformance AutoShortcutInvocation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AppShortcutInvoking.action.getter in conformance AutoShortcutInvocation;

  return AutoShortcutInvocation.action.getter();
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_6();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation;

  return AutoShortcutInvocation.autoShortcuts.getter();
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6_6();

  return v5(v2);
}

uint64_t outlined init with copy of AutoShortcutInvocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoShortcutInvocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in _globalStringTablePointerOfStaticString(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_8(result, a3, 56 * a2);
  }

  return result;
}

{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_8(result, a3, 88 * a2);
  }

  return result;
}

{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for DisplayHint);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for SpeakableString);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for TemplatingSection);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for UsoIdentifier);
}

char *_sSp14moveInitialize4from5countySpyxG_SitF18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemV_Tg5_0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

char *_sSp14moveInitialize4from5countySpyxG_SitF18SiriLinkFlowPlugin26DisambiguationItemProtocol_p_Tg5_0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_12_4();

    return _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_12_4();

    return _swift_arrayInitWithTakeBackToFront(v9);
  }

  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized Array._checkIndex(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v14 = &v12[2 * a3];
  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = *(v11 + 16);
  v16 = v15 - a2;
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_21;
  }

  v17 = (v11 + 32 + 16 * a2);
  if (v14 != v17 || v17 + 16 * v16 <= v14)
  {
    result = memmove(&v12[2 * a3], v17, 16 * v16);
    v15 = *(v11 + 16);
  }

  v19 = __OFADD__(v15, v13);
  v20 = v15 + v13;
  if (v19)
  {
    goto LABEL_22;
  }

  *(v11 + 16) = v20;
LABEL_12:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if ((v12 + 2) < v14)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t outlined bridged method (pb) of @objc AFPreferences.languageCode()(void *a1)
{
  v1 = [a1 languageCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_35058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_35100(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for AutoShortcutInvocation(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AutoShortcutsProviding();
    if (v2 <= 0x3F)
    {
      type metadata accessor for NSError(319, &lazy cache variable for type metadata for AFPreferences, AFPreferences_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

unint64_t type metadata accessor for AutoShortcutsProviding()
{
  result = lazy cache variable for type metadata for AutoShortcutsProviding;
  if (!lazy cache variable for type metadata for AutoShortcutsProviding)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AutoShortcutsProviding);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutInvocation.AutoShortcutInvocationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutInvocation.AutoShortcutInvocationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x35458);
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

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return OSSignpostIntervalState.init(id:isOpen:)();
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors()
{
  result = lazy protocol witness table cache variable for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors;
  if (!lazy protocol witness table cache variable for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors;
  if (!lazy protocol witness table cache variable for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunVoiceShortcutFlowErrors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x35680);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t ArchivedViewModel.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  outlined copy of Data._Representation(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t ArchivedViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t ArchivedViewModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6174614477656976;
  }

  if (a1 == 1)
  {
    return 0x6C646E7542707061;
  }

  return 0x6C70736944707061;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ArchivedViewModel.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivedViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ArchivedViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ArchivedViewModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = static AutoShortcutDialogTemplating.MAXSHORTCUTNUM.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivedViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivedViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArchivedViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin17ArchivedViewModelV10CodingKeys023_D5D6BBA838A713C1BF8ED0R7B750954LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin17ArchivedViewModelV10CodingKeys023_D5D6BBA838A713C1BF8ED0R7B750954LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v13[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v14;
  v13[23] = 0;
  outlined init with copy of Data(&v15, v13);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v14, *(&v14 + 1));
  if (!v2)
  {
    OUTLINED_FUNCTION_1_9(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_1_9(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t ArchivedViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin17ArchivedViewModelV10CodingKeys023_D5D6BBA838A713C1BF8ED0R7B750954LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin17ArchivedViewModelV10CodingKeys023_D5D6BBA838A713C1BF8ED0R7B750954LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = a2;
  v12 = v25;
  v11 = v26;
  OUTLINED_FUNCTION_4_5(1);
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v13;
  OUTLINED_FUNCTION_4_5(2);
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v17 = v14;
  (*(v7 + 8))(v10, v5);
  outlined copy of Data._Representation(v12, v11);

  v18 = v23;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v12, v11);

  v20 = v24;
  *v24 = v12;
  v20[1] = v11;
  v20[2] = v22;
  v20[3] = v18;
  v20[4] = v17;
  v20[5] = v16;
  return result;
}

double protocol witness for Decodable.init(from:) in conformance ArchivedViewModel@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  ArchivedViewModel.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ArchivedViewModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ArchivedViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ArchivedViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x360D8);
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

void *DisambiguationItemComponent.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t CustomRequestParameterDefinition.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CustomIntentStateAttachment.appBundleId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DisambiguationVisual.items.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t DisambiguationVisual.response.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[80] = v0;
  v1[79] = v2;
  v3 = type metadata accessor for Command();
  v1[81] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[82] = v4;
  v1[83] = OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v5 = type metadata accessor for SeparatorStyle();
  v1[86] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[87] = v6;
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  type metadata accessor for Separators();
  v1[90] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for ComponentWrapper();
  v1[91] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[92] = v8;
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v9 = type metadata accessor for CustomCanvas();
  v1[95] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[96] = v10;
  v1[97] = OUTLINED_FUNCTION_28();

  return _swift_task_switch(DisambiguationVisual.response.getter);
}

{
  v2 = *(v1 + 640);
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[2];
    v5 = one-time initialization token for encoder;

    if (v5 != -1)
    {
      swift_once();
    }

    *(v1 + 16) = v4;
    *(v1 + 24) = v3;
    *(v1 + 96) = 5;
    lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
    dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v6 = *(v1 + 776);
    v8 = *(v1 + 768);
    v9 = *(v1 + 760);
    v74 = *(v1 + 752);
    v78 = *(v1 + 744);
    v10 = *(v1 + 736);
    v76 = *(v1 + 728);
    v11 = *(v1 + 712);
    v12 = *(v1 + 704);
    v13 = *(v1 + 696);
    v14 = *(v1 + 688);
    CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)();
    *(v1 + 568) = v9;
    *(v1 + 576) = &protocol witness table for CustomCanvas;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 544));
    (*(v8 + 16))(boxed_opaque_existential_1, v6, v9);
    v16 = *(v13 + 104);
    v16(v11, enum case for SeparatorStyle.edgeToEdge(_:), v14);
    v16(v12, enum case for SeparatorStyle.standard(_:), v14);
    Separators.init(top:bottom:)();
    ComponentWrapper.init(_:separators:)();
    v17 = v76;
    v77 = *(v10 + 16);
    v77(v78, v74, v17);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v7 = v18;
    v0 = v18[2];
    if (v0 >= v18[3] >> 1)
    {
      OUTLINED_FUNCTION_4_6();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v72;
    }

    v19 = *(v1 + 776);
    v20 = *(v1 + 768);
    v21 = *(v1 + 760);
    v22 = *(v1 + 752);
    v73 = *(v1 + 744);
    v23 = *(v1 + 736);
    v24 = *(v1 + 728);

    v25 = *(v23 + 8);
    v25(v22, v24);
    (*(v20 + 8))(v19, v21);
    *(v1 + 608) = v24;
    *(v1 + 616) = &protocol witness table for ComponentWrapper;
    v26 = __swift_allocate_boxed_opaque_existential_1((v1 + 584));
    v77(v26, v73, v24);
    v7[2] = v0 + 1;
    outlined init with take of AceServiceInvokerAsync((v1 + 584), &v7[5 * v0 + 4]);
    v25(v73, v24);
    v2 = *(v1 + 640);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v27 = v2[4];
  *(v1 + 784) = v27;
  v28 = *(v27 + 16);
  *(v1 + 792) = v28;
  if (!v28)
  {
LABEL_25:
    OUTLINED_FUNCTION_2_7();
    Response.init(_:backgrounds:ornaments:hideRedactedElements:)();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_5_2();

    __asm { BRAA            X1, X16 }
  }

  v29 = 0;
  v30 = v1 + 264;
  v75 = (v1 + 624);
  while (1)
  {
    *(v1 + 808) = v7;
    *(v1 + 800) = v29;
    v31 = (v27 + 48 * v29);
    *(v1 + 816) = v31[4];
    *(v1 + 824) = v31[5];
    *(v1 + 832) = v31[6];
    v32 = v31[7];
    *(v1 + 840) = v32;
    v33 = v31[8];
    *(v1 + 848) = v33;
    *(v1 + 856) = v31[9];
    if (v33)
    {
      break;
    }

    v34 = type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_4_6();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);

    OUTLINED_FUNCTION_7_4();
    static Command.directInvocation(identifier:payload:isNavigation:)();
    *(v1 + 168) = &type metadata for String;
    *(v1 + 176) = &protocol witness table for String;
    *(v1 + 144) = v32;
    *(v1 + 152) = 0;
    if (v0)
    {
      v39 = *(v1 + 840);
      v40 = *(v1 + 832);
      *(v1 + 208) = &type metadata for String;
      *(v1 + 216) = &protocol witness table for String;
      *(v1 + 184) = v40;
      *(v1 + 192) = v39;
      v41 = v1 + 464;
      v42 = 0uLL;
    }

    else
    {
      *&v42 = OUTLINED_FUNCTION_10_5();
      v41 = v1 + 464;
    }

    v43 = *(v1 + 680);
    v44 = *(v1 + 672);
    *(v1 + 224) = v42;
    *(v1 + 240) = v42;
    *(v1 + 256) = 0;
    *v30 = v42;
    *(v30 + 16) = v42;
    *(v30 + 32) = 0;
    *(v1 + 304) = v42;
    *(v1 + 320) = v42;
    *(v1 + 336) = 0;
    *(v1 + 344) = v42;
    *(v1 + 360) = v42;
    *(v1 + 376) = 0;
    *(v1 + 384) = v42;
    *(v1 + 400) = v42;
    *(v1 + 416) = 0;
    *(v1 + 456) = 0;
    *(v1 + 424) = v42;
    *(v1 + 440) = v42;
    outlined init with copy of VisualProperty?(v43, v44);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v34);
    v46 = *(v1 + 672);
    if (EnumTagSinglePayload == 1)
    {

      outlined destroy of VisualProperty?(v46);
      *v41 = 0u;
      *(v41 + 16) = 0u;
      *(v41 + 32) = 0;
    }

    else
    {
      *(v1 + 488) = v34;
      *(v1 + 496) = &protocol witness table for VisualProperty;
      v47 = __swift_allocate_boxed_opaque_existential_1(v41);
      (*(*(v34 - 8) + 32))(v47, v46, v34);
    }

    v48 = *(v1 + 808);
    v49 = *(v1 + 664);
    v50 = *(v1 + 656);
    v51 = *(v1 + 648);
    *(v1 + 528) = v51;
    *(v1 + 536) = &protocol witness table for Command;
    v52 = __swift_allocate_boxed_opaque_existential_1((v1 + 504));
    (*(v50 + 16))(v52, v49, v51);
    *(v1 + 128) = type metadata accessor for SimpleItemRich();
    *(v1 + 136) = &protocol witness table for SimpleItemRich;
    __swift_allocate_boxed_opaque_existential_1((v1 + 104));
    OUTLINED_FUNCTION_3_5();
    SimpleItemRich.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:linkIdentifier:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 624) = v48;
    v7 = *(v1 + 808);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_4_6();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v63;
      *v75 = v63;
    }

    v54 = v7[2];
    v55 = *(v1 + 848);
    if (v54 >= v7[3] >> 1)
    {
      OUTLINED_FUNCTION_4_6();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v64;

      *v75 = v7;
    }

    else
    {
    }

    v0 = *(v1 + 792);
    v56 = *(v1 + 680);
    v57 = *(v1 + 800) + 1;
    (*(*(v1 + 656) + 8))(*(v1 + 664), *(v1 + 648));
    outlined destroy of VisualProperty?(v56);
    v58 = *(v1 + 128);
    v59 = *(v1 + 136);
    v60 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 104, v58);
    v61 = *(v58 - 8);
    v62 = OUTLINED_FUNCTION_28();
    (*(v61 + 16))(v62, v60, v58);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v54, v62, v75, v58, v59);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 104));

    if (v57 == v0)
    {
      goto LABEL_25;
    }

    v29 = *(v1 + 800) + 1;
    v27 = *(v1 + 784);
    v30 = v1 + 264;
  }

  v67 = v33;
  v68 = swift_task_alloc();
  *(v1 + 864) = v68;
  *v68 = v1;
  OUTLINED_FUNCTION_1_10(v68);
  OUTLINED_FUNCTION_5_2();

  return INImage.convertToVisualProperty()(v69);
}

{
  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(DisambiguationVisual.response.getter);
}

uint64_t DisambiguationVisual.response.getter(uint64_t a1)
{
  v5 = v4 + 264;
  v6 = v4 + 344;
  v42 = (v4 + 464);
  v43 = (v4 + 624);
  while (1)
  {
    OUTLINED_FUNCTION_7_4();
    static Command.directInvocation(identifier:payload:isNavigation:)();
    *(v4 + 168) = &type metadata for String;
    *(v4 + 176) = &protocol witness table for String;
    *(v4 + 144) = v3;
    *(v4 + 152) = v1;
    if (v2)
    {
      v7 = *(v4 + 840);
      v8 = *(v4 + 832);
      *(v4 + 208) = &type metadata for String;
      *(v4 + 216) = &protocol witness table for String;
      *(v4 + 184) = v8;
      *(v4 + 192) = v7;
      v9 = 0uLL;
    }

    else
    {
      *&v9 = OUTLINED_FUNCTION_10_5();
    }

    v10 = *(v4 + 680);
    v11 = *(v4 + 672);
    *(v4 + 224) = v9;
    *(v4 + 240) = v9;
    *(v4 + 256) = 0;
    *v5 = v9;
    *(v5 + 16) = v9;
    *(v5 + 32) = 0;
    *(v4 + 304) = v9;
    *(v4 + 320) = v9;
    *(v4 + 336) = 0;
    *v6 = v9;
    *(v6 + 16) = v9;
    *(v6 + 32) = 0;
    *(v4 + 384) = v9;
    *(v4 + 400) = v9;
    *(v4 + 416) = 0;
    *(v4 + 456) = 0;
    *(v4 + 424) = v9;
    *(v4 + 440) = v9;
    outlined init with copy of VisualProperty?(v10, v11);
    v12 = type metadata accessor for VisualProperty();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
    v14 = *(v4 + 672);
    v44 = v12;
    if (EnumTagSinglePayload == 1)
    {

      outlined destroy of VisualProperty?(v14);
      *v42 = 0u;
      *(v4 + 480) = 0u;
      *(v4 + 496) = 0;
    }

    else
    {
      *(v4 + 488) = v12;
      *(v4 + 496) = &protocol witness table for VisualProperty;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
      (*(*(v12 - 8) + 32))(boxed_opaque_existential_1, v14, v12);
    }

    v16 = *(v4 + 808);
    v17 = *(v4 + 664);
    v18 = *(v4 + 656);
    v19 = *(v4 + 648);
    *(v4 + 528) = v19;
    *(v4 + 536) = &protocol witness table for Command;
    v20 = __swift_allocate_boxed_opaque_existential_1((v4 + 504));
    (*(v18 + 16))(v20, v17, v19);
    *(v4 + 128) = type metadata accessor for SimpleItemRich();
    *(v4 + 136) = &protocol witness table for SimpleItemRich;
    __swift_allocate_boxed_opaque_existential_1((v4 + 104));
    OUTLINED_FUNCTION_3_5();
    SimpleItemRich.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:linkIdentifier:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 624) = v16;
    v22 = *(v4 + 808);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_4_6();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v22 = v33;
      *v43 = v33;
    }

    v23 = *(v22 + 16);
    v24 = *(v4 + 848);
    if (v23 >= *(v22 + 24) >> 1)
    {
      OUTLINED_FUNCTION_4_6();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v22 = v34;

      *v43 = v22;
    }

    else
    {
    }

    v25 = *(v4 + 792);
    v26 = *(v4 + 680);
    v3 = *(v4 + 800) + 1;
    (*(*(v4 + 656) + 8))(*(v4 + 664), *(v4 + 648));
    outlined destroy of VisualProperty?(v26);
    v27 = *(v4 + 128);
    v28 = *(v4 + 136);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v4 + 104, v27);
    v30 = *(v27 - 8);
    v2 = OUTLINED_FUNCTION_28();
    (*(v30 + 16))(v2, v29, v27);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v23, v2, v43, v27, v28);
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 104));

    if (v3 == v25)
    {
      OUTLINED_FUNCTION_2_7();
      Response.init(_:backgrounds:ornaments:hideRedactedElements:)();

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_5_2();

      __asm { BRAA            X1, X16 }
    }

    v31 = *(v4 + 800);
    *(v4 + 808) = v22;
    *(v4 + 800) = v31 + 1;
    v32 = (*(v4 + 784) + 48 * v31);
    *(v4 + 816) = v32[10];
    *(v4 + 824) = v32[11];
    *(v4 + 832) = v32[12];
    *(v4 + 840) = v32[13];
    v1 = v32[14];
    *(v4 + 848) = v1;
    *(v4 + 856) = v32[15];
    if (v1)
    {
      break;
    }

    __swift_storeEnumTagSinglePayload(*(v4 + 680), 1, 1, v44);

    v6 = v4 + 344;
    v5 = v4 + 264;
  }

  v37 = v1;
  v38 = swift_task_alloc();
  *(v4 + 864) = v38;
  *v38 = v4;
  OUTLINED_FUNCTION_1_10(v38);
  OUTLINED_FUNCTION_5_2();

  return INImage.convertToVisualProperty()(v39);
}

uint64_t DisambiguationVisual.data.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for Response();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_0(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_28();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = DisambiguationVisual.data.getter;

  return DisambiguationVisual.response.getter();
}

{
  OUTLINED_FUNCTION_8_0();
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = ShowAlertVisual.data.getter;
  }

  else
  {
    v2 = ShowAlertVisual.data.getter;
  }

  return _swift_task_switch(v2);
}

void __swiftcall DisambiguationVisual.init(appBundleId:prompt:items:)(SiriLinkFlowPlugin::DisambiguationVisual *__return_ptr retstr, Swift::String appBundleId, Swift::String_optional prompt, Swift::OpaquePointer items)
{
  retstr->appBundleId = appBundleId;
  retstr->prompt = prompt;
  retstr->items = items;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of AceServiceInvokerAsync(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined init with copy of VisualProperty?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VisualProperty?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguationVisual(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisambiguationVisual(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_10_5()
{
  *(v0 + 216) = 0;
  result = 0.0;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  return result;
}

uint64_t CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  OUTLINED_FUNCTION_14(v6);
  v1[22] = OUTLINED_FUNCTION_27();
  v1[23] = swift_task_alloc();
  v7 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v1[24] = v7;
  OUTLINED_FUNCTION_14(v7);
  v1[25] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for DialogPhase();
  v1[26] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[27] = v9;
  v1[28] = OUTLINED_FUNCTION_27();
  v1[29] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[30] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[31] = v11;
  v1[32] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[33] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[34] = v13;
  v1[35] = OUTLINED_FUNCTION_28();
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14);
}

{
  OUTLINED_FUNCTION_14_0();
  (*(*(v0 + 272) + 104))(*(v0 + 280), enum case for RFFeatureFlags.ResponseFramework._SMART(_:), *(v0 + 264));
  v1 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v2 = OUTLINED_FUNCTION_22_4();
  v3(v2);
  if (v1)
  {
    v4 = *(v0 + 152);
    type metadata accessor for CustomIntentsDialogTemplating();
    if (static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(v4))
    {
      type metadata accessor for EmptyOutput();
      static EmptyOutput.instance.getter();
      OUTLINED_FUNCTION_17_2();

      OUTLINED_FUNCTION_6_7();

      return v5();
    }

    else
    {
      v10 = [*(v0 + 152) _metadata];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 showsWhenRun];

        v13 = v12 ^ 1;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
      OUTLINED_FUNCTION_25_3();
      if (dispatch thunk of DeviceState.isCarPlay.getter())
      {
        v15 = 1;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
        OUTLINED_FUNCTION_25_3();
        v15 = dispatch thunk of DeviceState.isHomePod.getter() | v13;
      }

      v16 = v15 & 1;
      *(v0 + 464) = v15 & 1;
      v17 = *(v0 + 160);
      v18 = *(*(v0 + 168) + 56);
      *(v0 + 288) = v18;
      type metadata accessor for WFDialogState();
      v19 = App.appIdentifier.getter();
      v21 = static WFDialogState.isAppFirstRun(appId:)(v19, v20);

      v25 = (*(*v18 + 336) + **(*v18 + 336));
      v22 = swift_task_alloc();
      *(v0 + 296) = v22;
      *v22 = v0;
      v22[1] = CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse(app:intent:intentResponse:);
      v24 = *(v0 + 144);
      v23 = *(v0 + 152);

      return v25(v24, v23, v17, v16 & v21);
    }
  }

  else
  {
    v7 = *(v0 + 136);
    v7[3] = type metadata accessor for AceOutput();
    v7[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(v7);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 448) = v8;
    *v8 = v9;
    v8[1] = CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse(app:intent:intentResponse:);

    return CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse_rfv1(app:intent:intentResponse:)();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  v3[44] = v5;
  v3[45] = v6;
  v3[46] = v0;

  if (v0)
  {
    v7 = v3[42];

    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 7);
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v3 = (*(v0 + 200) + *(*(v0 + 192) + 28));
  *v3 = *(v0 + 320);
  v3[1] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  if (v2)
  {
    v10 = *(v0 + 312);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAStartLocalRequest, SAStartLocalRequest_ptr);
    v13 = v10;
    CodableAceObject.init(wrappedValue:)();

    outlined destroy of String?(v11, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
    outlined init with take of CodableAceObject<SAStartLocalRequest>?(v12, v11);
  }

  else
  {
  }

  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 465);
  v18 = *(v0 + 200);
  v19 = *(v0 + 184);
  v20 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  *(v0 + 40) = v20;
  *(v0 + 48) = &protocol witness table for WorkflowDataModels.CustomIntentHandledModel;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  outlined init with take of WorkflowDataModels.CustomIntentModel(v18, boxed_opaque_existential_1);
  v22 = (boxed_opaque_existential_1 + v20[5]);
  *v22 = v15;
  v22[1] = v14;
  outlined init with take of CodableAceObject<SAStartLocalRequest>?(v19, boxed_opaque_existential_1 + v20[6]);

  *(boxed_opaque_existential_1 + v20[7]) = v17;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.voiceCommands);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v25))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v26, v27, "#CustomIntentHandleIntentResponseGenerator processIntentHandledResponse - producing Output via RFv2 method");
    OUTLINED_FUNCTION_17();
  }

  v28 = *(v0 + 304);

  v29 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v29);
  v30 = ResponseFactory.init()();
  *(v0 + 120) = OUTLINED_FUNCTION_24_5(v30);
  OUTLINED_FUNCTION_14_3();
  *(v0 + 128) = _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_0(v31, v32, &protocol conformance descriptor for WorkflowDataModels);
  __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v33 = OUTLINED_FUNCTION_20_1();
  (v16)(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v35 = OUTLINED_FUNCTION_64(v34);
  *(v0 + 408) = v35;
  *(v35 + 16) = xmmword_216010;
  *(v35 + 32) = v28;
  v41 = OUTLINED_FUNCTION_16_4(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v36 = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 416) = v37;
  *v37 = v38;
  v39 = OUTLINED_FUNCTION_9_6(v37);

  return (v41)(v39);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (!v0)
  {

    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v7);
}

uint64_t CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v13 = v12;
  OUTLINED_FUNCTION_4_1();
  *v14 = v13;
  *v14 = *v11;
  *(v13 + 304) = v15;

  if (v10)
  {

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_21_0();

    return _swift_task_switch(v25);
  }
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  __swift_project_boxed_opaque_existential_1(v10 + 7, v10[10]);
  OUTLINED_FUNCTION_25_3();
  v12 = dispatch thunk of DeviceState.isWatch.getter();
  v13 = v10[19];
  if (v12)
  {
    v14 = v10[42];

    v15 = [v13 _title];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v10[5] = &type metadata for WorkflowDataModels.WatchModel;
    v10[6] = &protocol witness table for WorkflowDataModels.WatchModel;
    v19 = swift_allocObject();
    v10[2] = v19;

    *(v19 + 16) = v16;
    *(v19 + 24) = v18;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    *(v19 + 80) = 0u;
    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 7);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.voiceCommands);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v23, v24, "#CustomIntentHandleIntentResponseGenerator processIntentHandledResponse - producing Output via RFv2 method");
      OUTLINED_FUNCTION_17();
    }

    v25 = v10[38];

    v26 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v26);
    v27 = ResponseFactory.init()();
    v10[15] = OUTLINED_FUNCTION_24_5(v27);
    OUTLINED_FUNCTION_14_3();
    v10[16] = _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_0(v28, v29, &protocol conformance descriptor for WorkflowDataModels);
    __swift_allocate_boxed_opaque_existential_1(v10 + 12);
    v30 = OUTLINED_FUNCTION_20_1();
    v11(v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v32 = OUTLINED_FUNCTION_64(v31);
    v10[51] = v32;
    *(v32 + 16) = xmmword_216010;
    *(v32 + 32) = v25;
    v57 = OUTLINED_FUNCTION_16_4(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
    v33 = v25;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v10[52] = v34;
    *v34 = v35;
    OUTLINED_FUNCTION_9_6(v34);
    OUTLINED_FUNCTION_21_0();

    return v40(v36, v37, v38, v39, v40, v41, v42, v43, v57, a10);
  }

  else
  {
    v45 = v10[20];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v46 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    v10[47] = v46;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v47 = v13;
    v48 = v45;
    v49 = OUTLINED_FUNCTION_20_1();
    isa = INInteraction.__allocating_init(intent:response:)(v49, v58).super.isa;
    v10[48] = isa;
    v51 = v46;
    CodableAceObject.init(wrappedValue:)();
    v52 = isa;
    CodableINInteraction.init(wrappedValue:)();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v10[49] = v53;
    *v53 = v54;
    v53[1] = CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse(app:intent:intentResponse:);
    OUTLINED_FUNCTION_21_0();

    return INImage.convertToVisualProperty()(v55);
  }
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  __swift_deallocate_boxed_opaque_existential_1(*(v10 + 136));
  OUTLINED_FUNCTION_32_3();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 312);

  v12 = OUTLINED_FUNCTION_22_4();
  v13(v12);
  OUTLINED_FUNCTION_32_3();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

void CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse(app:intent:intentResponse:)()
{
  v1 = *(v0 + 304);
  v28 = *(v0 + 464);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 168);
  v27 = *(v0 + 152);
  static DialogPhase.completion.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 16))(v3, v2, v5);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v4 + 8))(v2, v5);
  (*(*v6 + 160))(v27);
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  if (v28)
  {
    v8 = *(v0 + 304);
    v9 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v9);
    *(v0 + 424) = ResponseFactory.init()();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v11 = OUTLINED_FUNCTION_64(v10);
    *(v0 + 432) = v11;
    *(v11 + 16) = xmmword_216010;
    *(v11 + 32) = v8;
    OUTLINED_FUNCTION_16_4(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v12 = v8;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 440) = v13;
    *v13 = v14;
    v13[1] = CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse(app:intent:intentResponse:);
    OUTLINED_FUNCTION_6_1();

    __asm { BR              X3 }
  }

  v17 = *(v0 + 168);
  v18 = *(v0 + 152);
  OUTLINED_FUNCTION_18_4();
  *(v0 + 312) = (*(v19 + 144))(v18);
  type metadata accessor for CustomIntentSnippetProvider();
  *(v0 + 465) = static CustomIntentSnippetProvider.isDoneButtonEligible(deviceState:intent:siriEnvironment:)(v17 + 16, v18);
  outlined init with copy of DeviceState(v17 + 16, v0 + 56);
  v20 = [v18 _title];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v0 + 320) = v21;
  *(v0 + 328) = v23;
  *(v0 + 336) = [v18 _keyImage];
  v24 = swift_task_alloc();
  *(v0 + 344) = v24;
  *v24 = v0;
  v24[1] = CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse(app:intent:intentResponse:);
  OUTLINED_FUNCTION_6_1();

  __asm { BRAA            X0, X16 }
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 312);

  v2 = OUTLINED_FUNCTION_22_4();
  v3(v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_17_2();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X1, X16 }
}

{
  OUTLINED_FUNCTION_15_2();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);
  OUTLINED_FUNCTION_17_2();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse_rfv1(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[12] = v5;
  v6 = type metadata accessor for ActivityType();
  v1[17] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[18] = v7;
  v1[19] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v1[20] = OUTLINED_FUNCTION_27();
  v1[21] = swift_task_alloc();
  v9 = type metadata accessor for AceOutput();
  v1[22] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[23] = v10;
  v1[24] = OUTLINED_FUNCTION_27();
  v1[25] = swift_task_alloc();
  v11 = type metadata accessor for TemplatingResult();
  v1[26] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[27] = v12;
  v1[28] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_4();
  v7 = (*(v1 + 128) + **(v1 + 128));
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse_rfv1(app:intent:intentResponse:);
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];

  return v7(v5, v3, v4);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = specialized Array.count.getter(v0[30]);
  v0[31] = v1;
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    type metadata accessor for WFDialogState();
    v3 = App.appIdentifier.getter();
    v2 = static WFDialogState.isAppFirstRun(appId:)(v3, v4);
  }

  v5 = v0[15];
  OUTLINED_FUNCTION_18_4();
  v13 = (*(v6 + 344) + **(v6 + 344));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[32] = v7;
  *v7 = v8;
  v7[1] = CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse_rfv1(app:intent:intentResponse:);
  v9 = v0[28];
  v10 = v0[13];
  v11 = v0[14];

  return v13(v9, v10, v11, v5, v2 & 1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  if ((*(v0 + 248) || (v1 = *(TemplatingResult.sections.getter() + 16), , v1)) && (v2 = *(v0 + 112), type metadata accessor for CustomIntentsDialogTemplating(), (static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(v2) & 1) == 0))
  {
    v47 = *(v0 + 200);
    v48 = *(v0 + 184);
    v49 = *(v0 + 176);
    v3 = *(v0 + 168);
    v4 = *(v0 + 128);
    v5 = *(v0 + 112);
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
    (*(*v4 + 160))(v5);
    type metadata accessor for NLContextUpdate();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of String?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v10 = AceOutput.commands.getter();
    specialized Array.append<A>(contentsOf:)(v10);
    (*(v48 + 8))(v47, v49);
  }

  else
  {
  }

  v11 = *(v0 + 152);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v14 = *(v0 + 112);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  (*(v13 + 104))(v11, enum case for ActivityType.completed(_:), v12);
  OUTLINED_FUNCTION_18_4();
  v20 = (*(v19 + 152))(v11, v14);
  v21 = OUTLINED_FUNCTION_20_1();
  v22(v21);
  if (v20)
  {
    v23 = type metadata accessor for DefaultFlowActivity();
    OUTLINED_FUNCTION_13_3();
    v26 = _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_0(v24, v25, &protocol conformance descriptor for DefaultFlowActivity);
  }

  else
  {
    v23 = 0;
    v26 = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
  }

  v27 = *(v0 + 160);
  *(v0 + 56) = v20;
  *(v0 + 80) = v23;
  *(v0 + 88) = v26;
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v27, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  outlined destroy of String?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v29 = *(v0 + 184);
  v28 = *(v0 + 192);
  v30 = *(v0 + 176);
  v31 = *(v0 + 96);
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.voiceCommands);
  (*(v29 + 16))(v28, v31, v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v37 = *(v0 + 184);
  v36 = *(v0 + 192);
  v38 = *(v0 + 176);
  if (v35)
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    v40 = AceOutput.commands.getter();
    v41 = specialized Array.count.getter(v40);

    (*(v37 + 8))(v36, v38);
    *(v39 + 4) = v41;
    _os_log_impl(&dword_0, v33, v34, "CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse successfully assembled %ld commands..", v39, 0xCu);
  }

  else
  {
    (*(v37 + 8))(*(v0 + 192), *(v0 + 176));
  }

  v43 = *(v0 + 216);
  v42 = *(v0 + 224);
  v44 = *(v0 + 208);

  (*(v43 + 8))(v42, v44);

  OUTLINED_FUNCTION_6_7();

  return v45();
}

void CustomIntentHandleIntentResponseGenerator.processIntentHandledResponse_rfv1(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X1, X16 }
}

void *__swift_deallocate_boxed_opaque_existential_1(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t CustomIntentHandleIntentResponseGenerator.processDeviceUnlockAndRestartRequest(app:intent:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for DialogPhase();
  v1[6] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_27();
  v1[9] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[10] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[13] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v4, v5, "Starting RequestDeviceUnlockAndRestartRequest, sending pinlock view.");
    OUTLINED_FUNCTION_17();
  }

  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];

  (*(v7 + 104))(v6, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v8);
  v9 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v7 + 8))(v6, v8);
  if (v9)
  {
    OUTLINED_FUNCTION_18_4();
    v16 = (*(v10 + 216) + **(v10 + 216));
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = CustomIntentHandleIntentResponseGenerator.processDeviceUnlockAndRestartRequest(app:intent:);

    return v16();
  }

  else
  {
    v13 = v0[2];
    v13[3] = type metadata accessor for AceOutput();
    v13[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[21] = v14;
    *v14 = v15;
    v14[1] = CustomIntentHandleIntentResponseGenerator.processDeviceUnlockAndRestartRequest(app:intent:);

    return CustomIntentHandleIntentResponseGenerator.processDeviceUnlockAndRestartRequest_rfv1(app:intent:)();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v9();
  }

  else
  {
    *(v5 + 136) = v3;
    v11 = OUTLINED_FUNCTION_4();

    return _swift_task_switch(v11);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);

  OUTLINED_FUNCTION_6_7();

  return v3();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));

  OUTLINED_FUNCTION_6_0();

  return v1();
}

void CustomIntentHandleIntentResponseGenerator.processDeviceUnlockAndRestartRequest(app:intent:)()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v16 = v0[4];
  static DialogPhase.clarification.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 16))(v2, v3, v5);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v4 + 8))(v3, v5);
  (*(*v6 + 160))(v16);
  OutputGenerationManifest.canUseServerTTS.setter();
  v8 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v8);
  v0[18] = ResponseFactory.init()();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = OUTLINED_FUNCTION_64(v9);
  v0[19] = v10;
  *(v10 + 16) = xmmword_216010;
  *(v10 + 32) = v1;
  v11 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[20] = v12;
  *v12 = v13;
  v12[1] = CustomIntentHandleIntentResponseGenerator.processDeviceUnlockAndRestartRequest(app:intent:);
  OUTLINED_FUNCTION_6_1();

  __asm { BR              X3 }
}

uint64_t CustomIntentHandleIntentResponseGenerator.processDeviceUnlockAndRestartRequest_rfv1(app:intent:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for ActivityType();
  v1[15] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_28();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v1[18] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for TemplatingResult();
  v1[19] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[20] = v8;
  v1[21] = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_4();
  v6 = (*(v1 + 224) + **(v1 + 224));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 176) = v2;
  *v2 = v3;
  v2[1] = CustomIntentHandleIntentResponseGenerator.processDeviceUnlockAndRestartRequest_rfv1(app:intent:);
  v4 = *(v0 + 168);

  return v6(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 184) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  outlined init with copy of DeviceState(v0[14] + 16, (v0 + 2));
  OUTLINED_FUNCTION_18_4();
  (*(v5 + 160))(v4);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  (*(v3 + 104))(v1, enum case for ActivityType.promptUnlock(_:), v2);
  OUTLINED_FUNCTION_18_4();
  v11 = (*(v10 + 152))(v1, v4);
  (*(v3 + 8))(v1, v2);
  if (v11)
  {
    v12 = type metadata accessor for DefaultFlowActivity();
    OUTLINED_FUNCTION_13_3();
    v15 = _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_0(v13, v14, &protocol conformance descriptor for DefaultFlowActivity);
  }

  else
  {
    v12 = 0;
    v15 = 0;
    v0[8] = 0;
    v0[9] = 0;
  }

  v17 = v0[20];
  v16 = v0[21];
  v19 = v0[18];
  v18 = v0[19];
  v0[7] = v11;
  v0[10] = v12;
  v0[11] = v15;
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v19, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v17 + 8))(v16, v18);
  outlined destroy of String?((v0 + 7), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);

  OUTLINED_FUNCTION_6_7();

  return v20();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentHandleIntentResponseGenerator.processFailureHandlingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v1[12] = *v0;
  v6 = type metadata accessor for DialogPhase();
  v1[13] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_27();
  v1[16] = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[17] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[18] = v9;
  v1[19] = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_12_0();
  v0[20] = *(v0[11] + 56);
  OUTLINED_FUNCTION_18_4();
  v7 = (*(v1 + 352) + **(v1 + 352));
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = CustomIntentHandleIntentResponseGenerator.processFailureHandlingIntentResponse(app:intent:intentResponse:);
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];

  return v7(v5, v3, v4);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }
}

{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v22 = v0[9];
  v24 = CustomIntentHandleIntentResponseGenerator.shouldLaunchAppForFailure(app:intent:intentResponse:)(v0[8]);
  static DialogPhase.completion.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 16))(v3, v2, v5);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v4 + 8))(v2, v5);
  (*(*v6 + 160))(v22);
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  if (v24)
  {
    v8 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v8);
    v9 = ResponseFactory.init()();
    v0[5] = v8;
    v0[6] = &protocol witness table for ResponseFactory;
    v0[2] = v9;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[23] = v10;
    *v10 = v11;
    v10[1] = CustomIntentHandleIntentResponseGenerator.processFailureHandlingIntentResponse(app:intent:intentResponse:);

    return static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:)();
  }

  else
  {
    v13 = v0[22];
    v14 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v14);
    v0[25] = ResponseFactory.init()();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = OUTLINED_FUNCTION_64(v15);
    v0[26] = v16;
    *(v16 + 16) = xmmword_216010;
    *(v16 + 32) = v13;
    v25 = OUTLINED_FUNCTION_16_4(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v17 = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[27] = v18;
    *v18 = v19;
    v18[1] = CustomIntentHandleIntentResponseGenerator.processFailureHandlingIntentResponse(app:intent:intentResponse:);
    v20 = v0[19];
    v21 = v0[7];

    return (v25)(v21, v16, v20);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 192) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();

  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  OUTLINED_FUNCTION_6_7();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

BOOL CustomIntentHandleIntentResponseGenerator.shouldLaunchAppForFailure(app:intent:intentResponse:)(uint64_t a1)
{
  type metadata accessor for AppNameResolver();
  swift_initStackObject();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  if ((dispatch thunk of DeviceState.isPhone.getter() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    if ((dispatch thunk of DeviceState.isPad.getter() & 1) == 0)
    {
      return 0;
    }
  }

  v2 = static SAAppInfoFactory.createAppInfo(app:)();
  v3 = AppNameResolver.resolveAppNameWithAppInfo(appInfo:)(v2);
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v6 != 0;
}

void *CustomIntentHandleIntentResponseGenerator.__allocating_init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_21_5(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = swift_allocObject();
  v11 = a10[3];
  v12 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v11);
  OUTLINED_FUNCTION_28_3();
  __chkstk_darwin(v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(v16 + 16))(v15);
  v25 = OUTLINED_FUNCTION_26_4(v17, v18, v19, v20, v21, v22, v23, v24, a9, v15, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  return v25;
}

void *CustomIntentHandleIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_21_5(a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = a10[3];
  v12 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v11);
  OUTLINED_FUNCTION_28_3();
  __chkstk_darwin(v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(v16 + 16))(v15);
  v25 = OUTLINED_FUNCTION_26_4(v17, v18, v19, v20, v21, v22, v23, v24, a9, v15, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  return v25;
}

uint64_t CustomIntentContinueInAppResponseGenerator.__deallocating_deinit()
{
  CustomIntentResponseGenerator.deinit();

  return swift_deallocClassInstance();
}

INInteraction __swiftcall INInteraction.__allocating_init(intent:response:)(INIntent intent, INIntentResponse_optional response)
{
  isa = response.value.super.isa;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:intent.super.isa response:response.value.super.isa];

  return v4;
}

uint64_t outlined init with take of WorkflowDataModels.CustomIntentModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CodableAceObject<SAStartLocalRequest>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BECC()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0);
}

void *specialized CustomIntentHandleIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v24 = a3;
  v16 = *(a12 - 8);
  v17 = __chkstk_darwin(a1);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v24 - v20;
  (*(v16 + 32))(&v24 - v20);
  outlined init with copy of DeviceState(a4, v29);
  (*(v16 + 16))(v19, v21, a12);
  v22 = specialized CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(a1, a2, v24, v29, v25, v26, v27, v28, a9, v19, a11, a12, a13);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v16 + 8))(v21, a12);
  return v22;
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_17_2()
{
}

void OUTLINED_FUNCTION_21_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 96) = a7;
  *(v8 - 88) = a8;
  *(v8 - 112) = a5;
  *(v8 - 104) = a6;
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1)
{
  v1[50] = a1;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);

  return type metadata accessor for WorkflowDataModels(0);
}

void *OUTLINED_FUNCTION_26_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(v17 - 112);
  v20 = *(v17 - 104);
  v21 = *(v17 - 96);
  v22 = *(v17 - 88);

  return specialized CustomIntentHandleIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v16, v15, v14, v13, v19, v20, v21, v22, a9, a10, a11, a12, a13);
}

uint64_t OUTLINED_FUNCTION_32_3()
{
}

uint64_t static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:actionMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:actionMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_8_0();
  v13 = [*(v12 + 32) systemProtocols];
  type metadata accessor for LNSystemProtocol();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v12 + 40) = v14;

  v15 = swift_task_alloc();
  *(v12 + 48) = v15;
  *v15 = v12;
  v15[1] = static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:actionMetadata:);
  v17 = *(v12 + 16);
  v16 = *(v12 + 24);

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v17, v16, v14);
}

uint64_t static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:actionMetadata:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

unint64_t type metadata accessor for LNSystemProtocol()
{
  result = lazy cache variable for type metadata for LNSystemProtocol;
  if (!lazy cache variable for type metadata for LNSystemProtocol)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSystemProtocol);
  }

  return result;
}

uint64_t static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)()
{
  if (Array<A>.isAudioStarting.getter(v0[9]))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.voiceCommands);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_50(v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_7();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      OUTLINED_FUNCTION_19_0();
    }

    v9 = OUTLINED_FUNCTION_20_1();
    __swift_project_boxed_opaque_existential_1(v9, v10);
    if (dispatch thunk of DeviceState.isHomePod.getter())
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v12))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_4_7();
        _os_log_impl(v13, v14, v15, v16, v17, 2u);
        OUTLINED_FUNCTION_19_0();
      }

      v18 = OUTLINED_FUNCTION_20_1();
      __swift_project_boxed_opaque_existential_1(v18, v19);
      dispatch thunk of AceServiceInvokerAsync.peerInfo()();
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_20_1();
      v20 = dispatch thunk of PeerInfoProviding.getMediaRouteIdentifier()();
      if (v21)
      {
        v22 = v20;
        v23 = v21;
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v26 = 136315138;
          v27 = OUTLINED_FUNCTION_20_1();
          *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v29);
          _os_log_impl(&dword_0, v24, v25, "airplayRouteId: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
        v30 = swift_allocObject();
        *(v30 + 1) = xmmword_216850;
        v30[4] = v22;
        v30[5] = v23;
        goto LABEL_18;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    }

    v30 = _swiftEmptyArrayStorage;
LABEL_18:
    v0[10] = v30;
    v33 = swift_task_alloc();
    v0[11] = v33;
    *v33 = v0;
    v33[1] = static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:);

    return static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:)(v30);
  }

  OUTLINED_FUNCTION_6_0();

  return v31();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 96) = v5;
  *v5 = v4;
  v5[1] = static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:);
  v6 = *(v1 + 64);

  return static SharedAudioStartingIntentSetup.prepareForAudioHandoff(aceServiceInvoker:)(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD000000000000037, 0x80000000002302B0, partial apply for closure #1 in static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:), v2, &type metadata for Bool);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v3 + 40) = v0;

  if (v0)
  {
    v6 = static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:);
  }

  else
  {

    v6 = static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:);
  }

  return _swift_task_switch(v6);
}

{
  return (*(v0 + 8))(*(v0 + 48));
}

{

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    outlined destroy of NSObject?(v5);

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t static SharedAudioStartingIntentSetup.prepareForAudioHandoff(aceServiceInvoker:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = static SharedAudioStartingIntentSetup.prepareForAudioHandoff(aceServiceInvoker:);

  return dispatch thunk of AceServiceInvokerAsync.prepareForAudioHandoff()(v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *(v1 + 32) = v0;

  return _swift_task_switch(static SharedAudioStartingIntentSetup.prepareForAudioHandoff(aceServiceInvoker:));
}

{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 32) == 1)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.voiceCommands);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_50(v3))
    {
      v4 = "PrepareForAudioHandoff succeeded";
LABEL_10:
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v2, v3, v4, v6, 2u);
      OUTLINED_FUNCTION_19_0();
    }
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.voiceCommands);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_50(v3))
    {
      v4 = "PrepareForAudioHandoff failed";
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_6_0();

  return v7();
}

void closure #1 in static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:);
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_0;
  v9 = _Block_copy(aBlock);

  INCRouteAudioToAirplayOutputDevices();
  _Block_release(v9);
}

void closure #1 in closure #1 in static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:)(char a1, uint64_t a2)
{
  if (a1)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.voiceCommands);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "Successfully set AirPlay output device", v5, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.voiceCommands);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v10 + 4) = v12;
      *v11 = v13;
      _os_log_impl(&dword_0, v8, v9, "Failed to set AirPlay output device: %@", v10, 0xCu);
      outlined destroy of NSObject?(v11);
    }

    if (a2)
    {
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
      CheckedContinuation.resume(throwing:)();
    }
  }
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3D680()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return _swift_deallocObject(v0);
}

void partial apply for closure #1 in closure #1 in static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:)(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);

  closure #1 in closure #1 in static SharedAudioStartingIntentSetup.routeAudioToAirPlayOutputDevices(airPlayOutputDevices:)(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t one-time initialization function for semanticToURL()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation3URLVSgtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation3URLVSgtGMR);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217F00;
  v4 = (v3 + v2);
  *v4 = 0x5765746F4E77656ELL;
  *(v4 + 1) = 0xEF65746144687469;
  URL.init(string:)();
  strcpy(&v4[v1], "AirDropPhotos");
  *&v4[v1 + 14] = -4864;
  OUTLINED_FUNCTION_0_8();
  v5 = &v4[2 * v1];
  strcpy(v5, "EmailLastImage");
  v5[15] = -18;
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_4_8();
  strcpy(v6, "TextLastImage");
  *(v6 + 7) = -4864;
  OUTLINED_FUNCTION_0_8();
  v7 = &v4[4 * v1];
  *v7 = 0x65724241656B6154;
  *(v7 + 1) = 0xEA00000000006B61;
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_4_8();
  strcpy(v8, "BlockOffAnHour");
  v8[15] = -18;
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_8();
  *v9 = 0xD000000000000011;
  v9[1] = 0x80000000002304F0;
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_4_8();
  *v10 = 0x464947656B614DLL;
  v10[1] = 0xE700000000000000;
  OUTLINED_FUNCTION_0_8();
  v11 = &v4[8 * v1];
  *v11 = 0x6F435251656B614DLL;
  *(v11 + 1) = 0xEA00000000006564;
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_4_8();
  *v12 = 0x697551636973754DLL;
  v12[1] = 0xE90000000000007ALL;
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_8();
  strcpy(v13, "ShazamShortcut");
  v13[15] = -18;
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_8();
  strcpy(v14, "WhatsAShortcut");
  v14[15] = -18;
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_8();
  *v15 = 0x6146724F65757254;
  v15[1] = 0xEB0000000065736CLL;
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_2_8();
  strcpy(v16, "HaikuGenerator");
  v16[15] = -18;
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_2_8();
  *v17 = 0x6F74537972616353;
  v17[1] = 0xEA00000000007972;
  OUTLINED_FUNCTION_3_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  result = Dictionary.init(dictionaryLiteral:)();
  static TopLevelStarterShortcuts.semanticToURL = result;
  return result;
}

uint64_t *TopLevelStarterShortcuts.semanticToURL.unsafeMutableAddressor()
{
  if (one-time initialization token for semanticToURL != -1)
  {
    OUTLINED_FUNCTION_1_11(&one-time initialization token for semanticToURL);
  }

  return &static TopLevelStarterShortcuts.semanticToURL;
}

uint64_t static TopLevelStarterShortcuts.semanticToURL.getter()
{
  if (one-time initialization token for semanticToURL != -1)
  {
    OUTLINED_FUNCTION_1_11(&one-time initialization token for semanticToURL);
  }
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return URL.init(string:)();
}

uint64_t OUTLINED_FUNCTION_1_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return URL.init(string:)();
}

uint64_t INIntent.debugDescriptionLite.getter()
{
  v3 = v0;
  v4 = outlined bridged method (pb) of @objc INIntent.parametersByName.getter(v0);
  if (!v4)
  {
    _StringGuts.grow(_:)(30);

    swift_getObjectType();
    v125._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v125);

    v126._object = 0x80000000002307B0;
    v126._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v126);
    return 0x746E65746E494E49;
  }

  v5 = v4;
  v133 = v3;
  v6 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = 0;
  v138 = _swiftEmptyDictionarySingleton;
  v136 = v4 + 64;

  for (i = v10; v9; v10 = i)
  {
LABEL_9:
    v13 = (v5[6] + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
    v14 = v13[1];
    v141 = *v13;
    v15 = v5[2];

    if (v15 && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v141, v14), (v17 & 1) != 0))
    {
      outlined init with copy of Any(v5[7] + 32 * v16, &v146);
      outlined init with take of Any(&v146, &v149);
    }

    else
    {
      v150 = &type metadata for String;
      *&v149 = 0x3E6C6C756E3CLL;
      *(&v149 + 1) = 0xE600000000000000;
    }

    v9 &= v9 - 1;
    outlined init with copy of Any(&v149, &v146);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    v140 = v14;
    if (swift_dynamicCast())
    {
      v18 = *&v144[0];
      v1 = *(*&v144[0] + 16);
      if (v1)
      {
        v143 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
        v19 = v143;
        v20 = v18 + 32;
        do
        {
          outlined init with copy of Any(v20, v145);
          outlined init with copy of Any(v145, v142);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin32CustomDebugStringLiteConvertible_pMd, &_s18SiriLinkFlowPlugin32CustomDebugStringLiteConvertible_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of AceServiceInvokerAsync(v144, &v146);
            v21 = v147;
            v22 = v148;
            __swift_project_boxed_opaque_existential_1(&v146, v147);
            v23 = (*(v22 + 8))(v21, v22);
            v25 = v24;
            __swift_destroy_boxed_opaque_existential_0Tm(v145);
            v26 = &v146;
          }

          else
          {
            OUTLINED_FUNCTION_13_4();
            outlined destroy of String?(v27, &_s18SiriLinkFlowPlugin32CustomDebugStringLiteConvertible_pSgMd, &_s18SiriLinkFlowPlugin32CustomDebugStringLiteConvertible_pSgMR);
            outlined init with copy of Any(v145, &v146);
            String.init<A>(describing:)();
            OUTLINED_FUNCTION_9_7();
            String.index(_:offsetBy:limitedBy:)();
            String.subscript.getter();

            v23 = static String._fromSubstring(_:)();
            v25 = v28;

            v26 = v145;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v26);
          v143 = v19;
          v30 = v19[2];
          v29 = v19[3];
          if (v30 >= v29 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
            v19 = v143;
          }

          v19[2] = v30 + 1;
          v31 = &v19[2 * v30];
          v31[4] = v23;
          v31[5] = v25;
          v20 += 32;
          --v1;
        }

        while (v1);

        *&v146 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        BidirectionalCollection<>.joined(separator:)();

        *&v146 = 91;
        *(&v146 + 1) = 0xE100000000000000;
        v32._countAndFlagsBits = OUTLINED_FUNCTION_15_5();
        String.append(_:)(v32);

        v33._countAndFlagsBits = 93;
        v33._object = 0xE100000000000000;
        String.append(_:)(v33);

        v1 = Substring.init(_:)();
        v35 = v34;
        v2 = v36;
        OUTLINED_FUNCTION_16_5(v1, v34, v36, v37, v38, v39, v40, v41, v128, v129, v130, v131, v132, v133, v37, i, v136, v137, v138);
        swift_isUniquelyReferenced_nonNull_native();
        *&v146 = &v146;
        specialized __RawDictionaryStorage.find<A>(_:)(v141, v140);
        OUTLINED_FUNCTION_6_8();
        if (v44)
        {
          goto LABEL_58;
        }

        v45 = v42;
        v46 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSsGMd, &_ss17_NativeDictionaryVySSSsGMR);
        if (OUTLINED_FUNCTION_17_3())
        {
          v47 = specialized __RawDictionaryStorage.find<A>(_:)(v141, v140);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_61;
          }

          v45 = v47;
        }

        v138 = v146;
        if (v46)
        {
          v49 = (*(v146 + 56) + 32 * v45);
          *v49 = v1;
          v49[1] = v35;
          v49[2] = v2;
          v49[3] = v134;
          goto LABEL_42;
        }

        specialized _NativeDictionary._insert(at:key:value:)(v45, v141, v140, v1, v35, v2, v134, v146);
LABEL_49:
        v105 = &v149;
        goto LABEL_50;
      }
    }

    outlined init with copy of Any(&v149, v145);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin32CustomDebugStringLiteConvertible_pMd, &_s18SiriLinkFlowPlugin32CustomDebugStringLiteConvertible_pMR);
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_13_4();
      outlined destroy of String?(v77, &_s18SiriLinkFlowPlugin32CustomDebugStringLiteConvertible_pSgMd, &_s18SiriLinkFlowPlugin32CustomDebugStringLiteConvertible_pSgMR);
      outlined init with copy of Any(&v149, &v146);
      String.init<A>(describing:)();
      v79 = v78;
      OUTLINED_FUNCTION_9_7();
      String.index(_:offsetBy:limitedBy:)();
      String.subscript.getter();
      OUTLINED_FUNCTION_14_4();

      OUTLINED_FUNCTION_16_5(v80, v81, v82, v83, v84, v85, v86, v87, v128, v129, v130, v131, v132, v133, v134, i, v136, v137, v138);
      swift_isUniquelyReferenced_nonNull_native();
      *&v146 = v79;
      specialized __RawDictionaryStorage.find<A>(_:)(v141, v14);
      OUTLINED_FUNCTION_6_8();
      if (v44)
      {
        goto LABEL_56;
      }

      v90 = v88;
      v91 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSsGMd, &_ss17_NativeDictionaryVySSSsGMR);
      v92 = OUTLINED_FUNCTION_17_3();
      if (v92)
      {
        v92 = specialized __RawDictionaryStorage.find<A>(_:)(v141, v140);
        if ((v91 & 1) != (v93 & 1))
        {
          goto LABEL_61;
        }

        v90 = v92;
      }

      v138 = v146;
      if (v91)
      {
        v100 = (*(v146 + 56) + 32 * v90);
        *v100 = v134;
        v100[1] = v2;
        v100[2] = &type metadata for Any;
        v100[3] = v1;
LABEL_42:
      }

      else
      {
        OUTLINED_FUNCTION_5_3(v92, v93, v94, v95, v96, v97, v98, v99, v128, v129, v130, v131, v132, v133, v134, i, v136, v137, v146, v140, v141);
        *v107 = v108;
        v107[1] = v2;
        v107[2] = &type metadata for Any;
        v107[3] = v1;
        v109 = *(v106 + 16);
        v44 = __OFADD__(v109, 1);
        v110 = v109 + 1;
        if (v44)
        {
          goto LABEL_59;
        }

        *(v106 + 16) = v110;
      }

      goto LABEL_49;
    }

    outlined init with take of AceServiceInvokerAsync(v144, &v146);
    v50 = v147;
    v51 = __swift_project_boxed_opaque_existential_1(&v146, v147);
    v52 = OUTLINED_FUNCTION_15_5();
    v53(v52);
    Substring.init(_:)();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_16_5(v54, v55, v56, v57, v58, v59, v60, v61, v128, v129, v130, v131, v132, v133, v134, i, v136, v137, v138);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v144[0] = v51;
    specialized __RawDictionaryStorage.find<A>(_:)(v141, v14);
    OUTLINED_FUNCTION_6_8();
    if (v44)
    {
      goto LABEL_57;
    }

    v65 = v63;
    v66 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSsGMd, &_ss17_NativeDictionaryVySSSsGMR);
    v67 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v50);
    if (v67)
    {
      v67 = specialized __RawDictionaryStorage.find<A>(_:)(v141, v140);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_61;
      }

      v65 = v67;
    }

    v75 = v134;
    if (v66)
    {

      v138 = *&v144[0];
      v76 = (*(*&v144[0] + 56) + 32 * v65);
      *v76 = v134;
      v76[1] = v2;
      v76[2] = &type metadata for Any;
      v76[3] = v1;
    }

    else
    {
      OUTLINED_FUNCTION_5_3(v67, v68, v69, v70, v71, v72, v73, v74, v128, v129, v130, v131, v132, v133, v134, i, v136, v137, v139, v140, v141);
      *v102 = v75;
      v102[1] = v2;
      v102[2] = &type metadata for Any;
      v102[3] = v1;
      v103 = v101[2];
      v44 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v44)
      {
        goto LABEL_60;
      }

      v138 = v101;
      v101[2] = v104;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v149);
    v105 = &v146;
LABEL_50:
    __swift_destroy_boxed_opaque_existential_0Tm(v105);
    v6 = v136;
    v5 = v137;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      swift_getObjectType();
      *&v146 = _typeName(_:qualified:)();
      *(&v146 + 1) = v111;
      v112._countAndFlagsBits = 40;
      v112._object = 0xE100000000000000;
      String.append(_:)(v112);
      OUTLINED_FUNCTION_16_5(v113, v114, &type metadata for Substring, &protocol witness table for String, v115, v116, v117, v118, v128, v129, v130, v131, v132, v133, v134, i, v136, v137, v138);
      v119 = Dictionary.description.getter();
      v121 = v120;

      v122._countAndFlagsBits = v119;
      v122._object = v121;
      String.append(_:)(v122);

      v123._countAndFlagsBits = 41;
      v123._object = 0xE100000000000000;
      String.append(_:)(v123);
      *&v144[0] = 92;
      *(&v144[0] + 1) = 0xE100000000000000;
      *&v149 = 0;
      *(&v149 + 1) = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v124 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      return v124;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *INIntent.parameterMetadata()()
{
  if (!outlined bridged method (ob) of @objc INIntentDescription.slotDescriptions()([v0 _intentInstanceDescription]))
  {
LABEL_19:
    __break(1u);

    __break(1u);
    return result;
  }

  v11 = specialized Array._copyToContiguousArray()(v1);
  specialized MutableCollection<>.sort(by:)(&v11);

  v2 = v11;
  v3 = specialized Array.count.getter(v11);
  if (v3)
  {
    v4 = v3;
    v11 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v4 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v2 + 16))
          {
            goto LABEL_16;
          }

          v7 = *(v2 + 8 * i + 32);
        }

        v8 = v7;
        outlined bridged method (pb) of @objc INIntentSlotDescription.name.getter(v7);
        if (!v9)
        {
          goto LABEL_18;
        }

        [v8 resolveSelector];
        type metadata accessor for SiriKitParameterMetadata();
        swift_allocObject();
        SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v6 == v4)
        {

          return v11;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return _swiftEmptyArrayStorage;
}

INIntent __swiftcall INIntent.clone()()
{
  [v0 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  if (swift_dynamicCast())
  {
    return v11;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  v10 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_85();
    v12[0] = v6;
    *v5 = 136315138;
    v7 = INIntent.debugDescriptionLite.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Unexpected failure when cloning intent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_15_0(v6);
    OUTLINED_FUNCTION_15_0(v5);
  }

  return v10;
}

uint64_t one-time initialization function for setCachedLanguage()
{
  result = closure #1 in variable initialization expression of static INPreferencesCacher.setCachedLanguage();
  static INPreferencesCacher.setCachedLanguage = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static INPreferencesCacher.setCachedLanguage()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = outlined bridged method (ob) of @objc AFPreferences.languageCode()(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [objc_opt_self() sharedPreferences];
    if (v5)
    {
      v6 = v5;
      outlined bridged method (mbnn) of @objc INPreferences._cachedSiriLanguageCode.setter(v3, v4, v5);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.voiceCommands);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Unable to determine current Siri locale. Exceptions may be thrown when trying to convert intents to JSON if this process lacks proper entitlements.", v10, 2u);
    }
  }

  return 1;
}

Swift::String __swiftcall INIntent.jsonRepresentation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v60 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v60 - v9;
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v13 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v13 - 8);
  if (one-time initialization token for setCachedLanguage != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for setCachedLanguage);
  }

  v14 = objc_opt_self();
  v15 = [v1 _JSONDictionaryRepresentation];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v63 = 0;
  v17 = [v14 dataWithJSONObject:isa options:0 error:&v63];

  v18 = v63;
  if (!v17)
  {
    v27 = v18;
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v30 = __swift_project_value_buffer(v29, static Logger.voiceCommands);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_85();
      v63 = v34;
      *v33 = 136315138;
      v62 = v28;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v63);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_0, v31, v32, "Could not convert dictionary representation to JSON: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      OUTLINED_FUNCTION_15_0(v34);
      OUTLINED_FUNCTION_15_0(v33);
    }

    v38 = *(v29 - 8);
    (*(v38 + 16))(v7, v30, v29);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v29);
    v39 = v61;
    outlined init with copy of Logger?(v7, v61);
    if (__swift_getEnumTagSinglePayload(v39, 1, v29) == 1)
    {
      outlined destroy of String?(v61, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
    }

    else
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_85();
        v48 = swift_slowAlloc();
        v63 = v48;
        *v47 = 136315650;
        v49 = StaticString.description.getter();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v63);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2048;
        *(v47 + 14) = 120;
        *(v47 + 22) = 2080;
        *(v47 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x80000000002307D0, &v63);
        _os_log_impl(&dword_0, v45, v46, "FatalError at %s:%lu - %s", v47, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_0(v48);
        OUTLINED_FUNCTION_15_0(v47);
      }

      (*(v38 + 8))(v61, v29);
    }

    goto LABEL_22;
  }

  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  static String.Encoding.utf8.getter();
  OUTLINED_FUNCTION_15_5();
  v19 = String.init(data:encoding:)();
  if (!v20)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    v41 = __swift_project_value_buffer(v40, static Logger.voiceCommands);
    v42 = *(v40 - 8);
    (*(v42 + 16))(v12, v41, v40);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v40);
    v43 = OUTLINED_FUNCTION_8_5();
    outlined init with copy of Logger?(v43, v44);
    if (__swift_getEnumTagSinglePayload(v10, 1, v40) == 1)
    {
      outlined destroy of String?(v10, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
    }

    else
    {
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_85();
        v55 = swift_slowAlloc();
        v63 = v55;
        *v54 = 136315650;
        v56 = StaticString.description.getter();
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v63);

        *(v54 + 4) = v58;
        *(v54 + 12) = 2048;
        *(v54 + 14) = 124;
        *(v54 + 22) = 2080;
        *(v54 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000000230890, &v63);
        _os_log_impl(&dword_0, v52, v53, "FatalError at %s:%lu - %s", v54, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_0(v55);
        OUTLINED_FUNCTION_15_0(v54);
      }

      (*(v42 + 8))(v10, v40);
    }

LABEL_22:
    static SiriKitLifecycle._logCrashToEventBus(_:)();
    v25 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_23;
  }

  v21 = v19;
  v22 = v20;
  v23 = OUTLINED_FUNCTION_15_5();
  outlined consume of Data._Representation(v23, v24);
  v25 = v21;
  v26 = v22;
LABEL_23:
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

uint64_t INIntent.safeJSONDictionaryRepresentation.getter()
{
  if (one-time initialization token for setCachedLanguage != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for setCachedLanguage);
  }

  v1 = [v0 _JSONDictionaryRepresentation];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t INIntentResolutionResult.safeJSONDictionaryRepresentation(for:parameterName:)(uint64_t a1)
{
  if (one-time initialization token for setCachedLanguage != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for setCachedLanguage);
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 _JSONDictionaryRepresentationForIntent:a1 parameterName:v3];

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t INIntent.typed<A>(as:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = v3;
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;
    v8 = v5;
  }

  else
  {
    v10 = a3(v3);
    if (v10)
    {
      v11 = v10;
      v7 = swift_dynamicCastUnknownClass();
      if (!v7)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo23INIntentSlotDescriptionC_Tt0g5(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentSlotDescription, INIntentSlotDescription_ptr);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo23INIntentSlotDescriptionC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo23INIntentSlotDescriptionC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo23INIntentSlotDescriptionC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v17 = v7;
      v18 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = [v10 tag];
        v13 = [v11 tag];

        if (v12 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v14 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v14;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v18 + 8;
      v7 = v17 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_94:
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      v90 = (v8 + 16);
      v91 = *(v8 + 16);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_132;
        }

        v92 = v8;
        v93 = (v8 + 16 * v91);
        v94 = *v93;
        v95 = &v90[2 * v91];
        v8 = *(v95 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * *v93, (*a3 + 8 * *v95), (*a3 + 8 * v8), v111);
        if (v5)
        {
          break;
        }

        if (v8 < v94)
        {
          goto LABEL_120;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_121;
        }

        *v93 = v94;
        v93[1] = v8;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_122;
        }

        v91 = *v90 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v95 + 16, v96, v95);
        *v90 = v91;
        v8 = v92;
      }

LABEL_104:

      return;
    }

LABEL_129:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_96;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v99 = v8;
      v101 = v5;
      v11 = (*a3 + 8 * v7);
      v97 = 8 * v7;
      v13 = *v11;
      v12 = v11 + 2;
      v8 = *(*a3 + 8 * v10);
      v5 = v13;
      v107 = [v8 tag];
      v106 = [v5 tag];

      v103 = v9;
      v14 = v9 + 2;
      while (1)
      {
        v15 = v14;
        v16 = v10 + 1;
        if (v16 >= v6)
        {
          break;
        }

        LODWORD(v111) = v107 < v106;
        v17 = *(v12 - 1);
        v8 = *v12;
        v5 = v17;
        v18 = v16;
        v19 = [v8 tag];
        v20 = [v5 tag];

        v21 = v19 < v20;
        v10 = v18;
        v22 = !v21;
        v23 = v111 ^ v22;
        ++v12;
        v14 = v15 + 1;
        if ((v23 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v6;
LABEL_12:
      if (v107 >= v106)
      {
        v8 = v99;
        v5 = v101;
        v9 = v103;
      }

      else
      {
        v9 = v103;
        if (v10 < v103)
        {
          goto LABEL_126;
        }

        if (v103 >= v10)
        {
          v8 = v99;
          v5 = v101;
        }

        else
        {
          if (v6 >= v15)
          {
            v24 = v15;
          }

          else
          {
            v24 = v6;
          }

          v25 = 8 * v24 - 8;
          v26 = v10;
          v27 = v103;
          v8 = v99;
          v5 = v101;
          v28 = v97;
          do
          {
            if (v27 != --v26)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v30 = *(v29 + v28);
              *(v29 + v28) = *(v29 + v25);
              *(v29 + v25) = v30;
            }

            ++v27;
            v25 -= 8;
            v28 += 8;
          }

          while (v27 < v26);
        }
      }
    }

    v31 = a3[1];
    if (v10 < v31)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_125;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v10 < v9)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v88;
    }

    v46 = *(v8 + 16);
    v47 = v46 + 1;
    if (v46 >= *(v8 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v89;
    }

    *(v8 + 16) = v47;
    v48 = v8 + 32;
    v49 = (v8 + 32 + 16 * v46);
    *v49 = v9;
    v49[1] = v10;
    v109 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v111 = v10;
    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = (v48 + 16 * (v47 - 1));
        v52 = (v8 + 16 * v47);
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v8 + 32);
          v54 = *(v8 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_62:
          if (v56)
          {
            goto LABEL_111;
          }

          v68 = *v52;
          v67 = v52[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_114;
          }

          v72 = v51[1];
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_119;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v47 < 2)
        {
          goto LABEL_113;
        }

        v75 = *v52;
        v74 = v52[1];
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_77:
        if (v71)
        {
          goto LABEL_116;
        }

        v77 = *v51;
        v76 = v51[1];
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v78 < v70)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v50 - 1 >= v47)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v82 = v8;
        v83 = (v48 + 16 * (v50 - 1));
        v84 = *v83;
        v85 = v50;
        v8 = v48 + 16 * v50;
        v86 = *(v8 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * *v83, (*a3 + 8 * *v8), (*a3 + 8 * v86), v109);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v86 < v84)
        {
          goto LABEL_106;
        }

        v5 = *(v82 + 16);
        if (v85 > v5)
        {
          goto LABEL_107;
        }

        *v83 = v84;
        v83[1] = v86;
        if (v85 >= v5)
        {
          goto LABEL_108;
        }

        v87 = v85;
        v47 = (v5 - 1);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v8 + 16), &v5[-v87 - 1], v8);
        v8 = v82;
        *(v82 + 16) = v5 - 1;
        v21 = v5 > 2;
        v5 = 0;
        if (!v21)
        {
          goto LABEL_91;
        }
      }

      v57 = v48 + 16 * v47;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_109;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_110;
      }

      v64 = v52[1];
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_112;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_115;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = v51[1];
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_123;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v6 = a3[1];
    v7 = v111;
    if (v111 >= v6)
    {
      goto LABEL_94;
    }
  }

  v32 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_127;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v9)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v10 == v32)
  {
    goto LABEL_42;
  }

  v100 = v8;
  v102 = v5;
  v33 = *a3;
  v34 = *a3 + 8 * v10 - 8;
  v104 = v9;
  v35 = v9 - v10;
  v108 = v32;
LABEL_35:
  v111 = v10;
  v36 = *(v33 + 8 * v10);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = v36;
    v41 = v39;
    v42 = [v40 tag];
    v43 = [v41 tag];

    if (v42 >= v43)
    {
LABEL_40:
      v10 = v111 + 1;
      v34 += 8;
      --v35;
      if ((v111 + 1) == v108)
      {
        v10 = v108;
        v8 = v100;
        v5 = v102;
        v9 = v104;
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = *(v38 + 8);
    *v38 = v36;
    *(v38 + 8) = v44;
    v38 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 tag];
      v17 = [v15 tag];

      if (v16 >= v17)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = (v19 + 1);
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v33 = v7;
  v34 = v4;
LABEL_15:
  v21 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v23 = v21;
    v24 = *v21;
    v25 = *(v10 - 1);
    v26 = v24;
    v27 = [v25 tag];
    v28 = [v26 tag];

    v29 = v5 + 1;
    if (v27 < v28)
    {
      v20 = v29 == v6;
      v6 = v23;
      v7 = v33;
      v4 = v34;
      if (!v20)
      {
        *v5 = *v23;
        v6 = v23;
      }

      goto LABEL_15;
    }

    if (v10 != v29)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v7 = v33;
    v4 = v34;
    v21 = v23;
  }

LABEL_28:
  v30 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, 8 * v30);
  }

  return 1;
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_3_7(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_12_5(v6, v11);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_4_9(a1, a4 + 8 * (a1 >> 6));
  v7 = *(v6 + 48) + 40 * v5;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  result = outlined init with take of Any(v10, (*(v6 + 56) + 32 * v5));
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = OUTLINED_FUNCTION_3_7(a1, a2, a3, a4, a5);
  result = outlined init with take of Any(v9, (v8 + 32 * v7));
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_4_9(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_9(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(*(a4 + 56) + a1) = a3;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_4_9(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + result) = v6;
  *(v5[7] + result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc INIntent.parametersByName.getter(void *a1)
{
  v1 = [a1 parametersByName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_7_5(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined bridged method (ob) of @objc INIntentDescription.slotDescriptions()(void *a1)
{
  v2 = [a1 slotDescriptions];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentSlotDescription, INIntentSlotDescription_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc INIntentSlotDescription.name.getter(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc INPreferences._cachedSiriLanguageCode.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 _setCachedSiriLanguageCode:v4];
}

uint64_t specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_9(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_11_4();
}

{
  OUTLINED_FUNCTION_0_9(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_18_5();
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_11_4();
}

{
  OUTLINED_FUNCTION_0_9(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_18_5();
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_11_4();
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_3_7(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v23 = (*(v21 + 48) + 16 * v22);
  *v23 = a21;
  v23[1] = a20;
}

BOOL OUTLINED_FUNCTION_17_3()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

id OUTLINED_FUNCTION_18_5()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void OfferMoreItemsCatTemplater.makeTemplate(nextPage:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static DialogHelper.globals.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216840;
  strcpy((inited + 32), "nextPageSize");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = Page.itemCount.getter();
  *(inited + 72) = &type metadata for Int;
  strcpy((inited + 80), "remainingPages");
  *(inited + 95) = -18;
  v8 = Page.remainingPages.getter();
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = &type metadata for Int;
    *(inited + 96) = v8 + 1;
    v9 = a2;
    v10 = Dictionary.init(dictionaryLiteral:)();
    v16 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v13 = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = a3;
    v14[4] = 0xD00000000000001ELL;
    v14[5] = 0x800000000022ED50;
    aBlock[4] = partial apply for closure #1 in OfferMoreItemsCatTemplater.makeTemplate(nextPage:_:);
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_1;
    v15 = _Block_copy(aBlock);

    [v16 execute:v6 catId:v11 parameters:isa globals:v13 completion:v15];
    _Block_release(v15);
  }
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = OUTLINED_FUNCTION_4_10();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  OUTLINED_FUNCTION_8_6();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 8;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (a1[6] + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    outlined init with copy of Any(a1[7] + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    v15 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v15) & ~v8[v15 >> 6]) == 0)
    {
      OUTLINED_FUNCTION_2_10();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (v8[v16] != -1)
        {
          OUTLINED_FUNCTION_1_12();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_3_8();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_0_10();
    *(v8 + v20) |= v21;
    v23 = v2[6] + 40 * v22;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    outlined init with take of Any(v32, (v2[7] + 32 * v22));
    ++v2[2];
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = a1[v10 + 8];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = OUTLINED_FUNCTION_4_10();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  OUTLINED_FUNCTION_8_6();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 8;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v6)));
    v12 = (a1[6] + v11);
    v13 = v12[1];
    v14 = (a1[7] + v11);
    v15 = *v14;
    v16 = v14[1];
    *&v34[0] = *v12;
    *(&v34[0] + 1) = v13;

    outlined copy of Data._Representation(v15, v16);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    outlined init with take of Any(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    outlined init with take of Any(v33, v34);
    v17 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v17) & ~v8[v17 >> 6]) == 0)
    {
      OUTLINED_FUNCTION_2_10();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (v8[v18] != -1)
        {
          OUTLINED_FUNCTION_1_12();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_3_8();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_0_10();
    *(v8 + v22) |= v23;
    v25 = v2[6] + 40 * v24;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    outlined init with take of Any(v34, (v2[7] + 32 * v24));
    ++v2[2];
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = a1[v10 + 8];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v48 = type metadata accessor for URL();
  OUTLINED_FUNCTION_13_1();
  v49 = v2;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v47 = v5 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV5valuetMd, &_sSS3key_10Foundation3URLV5valuetMR);
  OUTLINED_FUNCTION_7();
  v7 = __chkstk_darwin(v6);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = v41 - v9;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v10 = OUTLINED_FUNCTION_4_10();
  }

  else
  {
    v10 = _swiftEmptyDictionarySingleton;
  }

  v11 = v50 + 64;
  v12 = 1 << *(v50 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v50 + 64);
  v15 = (v12 + 63) >> 6;
  v41[2] = v49 + 16;
  v41[1] = v49 + 32;
  v16 = v10 + 8;

  v17 = 0;
  v43 = v10;
  v42 = v11;
  v18 = v49;
  v19 = v46;
  if (!v14)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v21 = __clz(__rbit64(v14)) | (v17 << 6);
    v22 = (*(v50 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    v25 = v44;
    v26 = v48;
    (*(v18 + 16))(&v44[*(v19 + 48)], *(v50 + 56) + *(v18 + 72) * v21, v48);
    *v25 = v24;
    v25[1] = v23;
    v27 = v25;
    v28 = v45;
    outlined init with take of (key: String, value: URL)(v27, v45);
    v29 = *(v19 + 48);
    v30 = *(v28 + 1);
    *&v59 = *v28;
    *(&v59 + 1) = v30;

    swift_dynamicCast();
    (*(v18 + 32))(v47, &v28[v29], v26);
    swift_dynamicCast();
    v55 = v51;
    v56 = v52;
    v57 = v53;
    outlined init with take of Any(&v54, v58);
    v51 = v55;
    v52 = v56;
    v53 = v57;
    outlined init with take of Any(v58, &v59);
    v31 = v43;
    v32 = AnyHashable._rawHashValue(seed:)(v43[5]) & ~(-1 << *(v31 + 32));
    if (((-1 << v32) & ~v16[v32 >> 6]) == 0)
    {
      OUTLINED_FUNCTION_2_10();
      v11 = v42;
      while (++v33 != v35 || (v34 & 1) == 0)
      {
        v36 = v33 == v35;
        if (v33 == v35)
        {
          v33 = 0;
        }

        v34 |= v36;
        if (v16[v33] != -1)
        {
          OUTLINED_FUNCTION_1_12();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_3_8();
    v11 = v42;
LABEL_21:
    v14 &= v14 - 1;
    OUTLINED_FUNCTION_0_10();
    *(v16 + v37) |= v38;
    v40 = v31[6] + 40 * v39;
    *v40 = v51;
    *(v40 + 16) = v52;
    *(v40 + 32) = v53;
    outlined init with take of Any(&v59, (v31[7] + 32 * v39));
    ++v31[2];
  }

  while (v14);
LABEL_8:
  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v20);
    ++v17;
    if (v14)
    {
      v17 = v20;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = OUTLINED_FUNCTION_4_10();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  OUTLINED_FUNCTION_8_6();
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (a1[6] + 16 * (v11 | (v10 << 6)));
    v14 = *v12;
    v13 = v12[1];

    swift_dynamicCast();
    outlined init with take of Any(&v23, v25);
    outlined init with take of Any(v25, v26);
    outlined init with take of Any(v26, &v24);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      *v17 = v14;
      v17[1] = v13;

      v18 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      result = outlined init with take of Any(&v24, v18);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;
      result = outlined init with take of Any(&v24, (v2[7] + 32 * result));
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = a1[v10 + 8];
    ++v9;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t closure #1 in OfferMoreItemsCatTemplater.makeTemplate(nextPage:_:)(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v9);
  v11 = (&v22 - v10);
  v12 = type metadata accessor for TemplatingResult();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *v11 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v11);
    return outlined destroy of Any?(v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {

    v17 = [a1 print];
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = a3;
    v19 = v18;

    v20 = [a1 speak];
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    TemplatingResult.init(dialogId:print:speak:)(v23, v19, v21, v15);
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    v22(v11);
    outlined destroy of Any?(v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_41A54()
{

  return _swift_deallocObject(v0);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DescribeCustomIntentItemViewBuilder.__allocating_init(viewFactory:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

double OfferMoreItemsViewBuilder.makeViews(withTemplate:)(uint64_t a1)
{
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  v1 = dispatch thunk of ViewFactory.makeSummaryView(templateResult:snippets:listenAfterSpeaking:canUseServerTTS:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_216010;
  *(v2 + 32) = v1;
  return result;
}

uint64_t DescribeCustomIntentItemViewBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t OfferMoreItemsOutputProvider.__allocating_init(nextPage:templating:viewBuilder:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  v10 = a2[3];
  v9 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v10);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12);
  v16 = a3[3];
  v17 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v16);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19);
  v23 = a4(a1, v14, v21, v5, v10, v16, v9, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v23;
}

uint64_t OfferMoreItemsOutputProvider.makeOutput(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_templating + 24);
  v6 = *(v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_templating + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_templating), v5);
  v7 = OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_nextPage;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v2;
  v9 = *(v6 + 8);

  v9(v2 + v7, partial apply for closure #1 in OfferMoreItemsOutputProvider.makeOutput(_:), v8, v5, v6);
}

uint64_t closure #1 in OfferMoreItemsOutputProvider.makeOutput(_:)(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for AceOutput();
  v41 = *(v10 - 8);
  v42 = v10;
  __chkstk_darwin(v10);
  v38 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NLContextUpdate();
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TemplatingResult();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v20);
  v22 = (&v33 - v21);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v33 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v43 = *v22;
    v46 = 1;
    swift_errorRetain();
    a2(&v43);
  }

  else
  {
    v35 = a2;
    v36 = a3;
    (*(v17 + 32))(v19, v22, v16);
    v23 = *(v37 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_viewBuilder + 24);
    v24 = *(v37 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_viewBuilder + 32);
    __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_viewBuilder), v23);
    v25 = (*(v24 + 8))(v19, v23, v24);
    NLContextUpdate.init()();
    NLContextUpdate.weightedPromptResponseOptions.setter();
    NLContextUpdate.weightedPromptTargetDomain.setter();
    NLContextUpdate.currentDomainName.setter();
    NLContextUpdate.dictationPromptTargetDomain.setter();
    NLContextUpdate.dictationPromptTargetNodes.setter();
    NLContextUpdate.dictationPromptAbortValues.setter();
    v34 = v16;
    if (v25 >> 62)
    {
      type metadata accessor for SABaseCommand();

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SABaseCommand();
    }

    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v27 = v39;
    v26 = v40;
    (*(v40 + 16))(v9, v15, v39);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v27);
    v28 = v38;
    AceOutput.init(commands:flowActivity:nlContextUpdate:)();
    v29 = v42;
    *(&v44 + 1) = v42;
    v45 = &protocol witness table for AceOutput;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
    v31 = v41;
    (*(v41 + 16))(boxed_opaque_existential_1, v28, v29);
    v46 = 0;
    v35(&v43);
    (*(v31 + 8))(v28, v29);
    (*(v26 + 8))(v15, v27);
    (*(v17 + 8))(v19, v34);
  }

  return outlined destroy of Any?(&v43, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

uint64_t OfferMoreItemsOutputProvider.deinit()
{
  v1 = OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_nextPage;
  type metadata accessor for Page();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_viewBuilder));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_templating));
  return v0;
}

uint64_t OfferMoreItemsOutputProvider.__deallocating_deinit()
{
  OfferMoreItemsOutputProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized OfferMoreItemsOutputProvider.__allocating_init(nextPage:templating:viewBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v13 = *(a6 - 8);
  v14 = __chkstk_darwin(a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v14);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OfferMoreItemsOutputProvider(0);
  v21 = swift_allocObject();
  (*(v18 + 16))(v20, a2, a5);
  (*(v13 + 16))(v16, a3, a6);
  v22 = specialized OfferMoreItemsOutputProvider.init(nextPage:templating:viewBuilder:)(a1, v20, v16, v21, a5, a6, v24, v25);
  (*(v13 + 8))(a3, a6);
  (*(v18 + 8))(a2, a5);
  return v22;
}

uint64_t specialized OfferMoreItemsOutputProvider.init(nextPage:templating:viewBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (a4 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_templating);
  v15[3] = a5;
  v15[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v17 = (a4 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_viewBuilder);
  v17[3] = a6;
  v17[4] = a8;
  v18 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a6 - 8) + 32))(v18, a3, a6);
  v19 = OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_nextPage;
  v20 = type metadata accessor for Page();
  (*(*(v20 - 8) + 32))(a4 + v19, a1, v20);
  return a4;
}

uint64_t sub_428AC()
{

  return _swift_deallocObject(v0);
}

uint64_t type metadata accessor for OfferMoreItemsOutputProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for OfferMoreItemsOutputProvider;
  if (!type metadata singleton initialization cache for OfferMoreItemsOutputProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for OfferMoreItemsOutputProvider(uint64_t a1)
{
  result = type metadata accessor for Page();
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

uint64_t outlined init with take of (key: String, value: URL)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV5valuetMd, &_sSS3key_10Foundation3URLV5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Result<TemplatingResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for SABaseCommand()
{
  result = lazy cache variable for type metadata for SABaseCommand;
  if (!lazy cache variable for type metadata for SABaseCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseCommand);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return static _DictionaryStorage.allocate(capacity:)(v0);
}

uint64_t WFExecuteCustomIntentFlow.__allocating_init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11)
{
  OUTLINED_FUNCTION_7_6(a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = swift_allocObject();
  v12 = a9[3];
  v13 = a9[4];
  __swift_mutable_project_boxed_opaque_existential_1(a9, v12);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(v17 + 16))(v16);
  v26 = OUTLINED_FUNCTION_11_5(v18, v19, v20, v21, v22, v23, v24, v25, v16, a10, a11, v11, v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  return v26;
}

uint64_t WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11)
{
  OUTLINED_FUNCTION_7_6(a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = a9[3];
  v13 = a9[4];
  __swift_mutable_project_boxed_opaque_existential_1(a9, v12);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(v17 + 16))(v16);
  v26 = OUTLINED_FUNCTION_11_5(v18, v19, v20, v21, v22, v23, v24, v25, v16, a10, a11, v11, v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  return v26;
}

uint64_t WFExecuteCustomIntentFlow.exitValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3 == 3)
  {
    v7 = v2;
    v8 = v1;
  }

  else if (v3 == 4)
  {
    swift_errorRetain();
  }

  else if (v3 == 5 && (v2 | v1) == 0)
  {
    return 0;
  }

  else
  {
    v5 = lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
    v1 = OUTLINED_FUNCTION_16_6(&type metadata for RunVoiceShortcutFlowErrors, v5);
    *v6 = 0;
  }

  return v1;
}

uint64_t WFExecuteCustomIntentFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[49] = v2;
  v1[50] = v0;
  type metadata accessor for CATOption();
  v1[51] = swift_task_alloc();

  return _swift_task_switch(WFExecuteCustomIntentFlow.execute());
}

{
  v109 = v0;
  v1 = *(v0 + 400);
  v2 = *(v1 + 16);
  *(v0 + 416) = v2;
  v3 = *(v1 + 24);
  *(v0 + 424) = v3;
  v4 = *(v1 + 32);
  if (v4 == 2)
  {

    v28 = v3;
    v29 = [v28 typeName];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v0 + 336) = v30;
    *(v0 + 344) = v32;
    v33 = swift_task_alloc();
    *(v33 + 16) = v0 + 336;
    LOBYTE(v30) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v33, &outlined read-only object #0 of one-time initialization function for parityIntentsList);

    if (v30)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v34 = type metadata accessor for Logger();
      v35 = OUTLINED_FUNCTION_15_6(v34, static Logger.voiceCommands);
      v36 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v36))
      {
        v37 = OUTLINED_FUNCTION_52();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "#WFExecuteCustomIntentFlow execute parity intent.", v37, 2u);
        OUTLINED_FUNCTION_15_0(v37);
      }

      v38 = *(v0 + 400);

      outlined init with copy of DeviceState(v38 + 184, v0 + 176);
      v39 = v28;

      static Device.current.getter();
      type metadata accessor for VoiceCommandParityFlow();
      swift_allocObject();
      *(v0 + 360) = VoiceCommandParityFlow.init(intent:app:outputPublisher:overrideCurrentRequestEnvironment:deviceState:)(v39, v2, (v0 + 176), implicit closure #1 in default argument 3 of VoiceCommandParityFlow.init(intent:app:outputPublisher:overrideCurrentRequestEnvironment:deviceState:), 0, v108);
      v40 = swift_allocObject();
      *(v40 + 16) = partial apply for implicit closure #7 in implicit closure #6 in WFExecuteCustomIntentFlow.execute();
      *(v40 + 24) = v38;
      lazy protocol witness table accessor for type CustomIntentExecutionFlow and conformance CustomIntentExecutionFlow(&lazy protocol witness table cache variable for type VoiceCommandParityFlow and conformance VoiceCommandParityFlow, 255, type metadata accessor for VoiceCommandParityFlow, &protocol conformance descriptor for VoiceCommandParityFlow);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      v41 = OUTLINED_FUNCTION_62();
      outlined consume of WFExecuteCustomIntentFlow.State(v41, v42, 2);
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v47 = type metadata accessor for Logger();
      v48 = OUTLINED_FUNCTION_15_6(v47, static Logger.voiceCommands);
      v49 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v49))
      {
        v50 = OUTLINED_FUNCTION_52();
        *v50 = 0;
        _os_log_impl(&dword_0, v48, v49, "#WFExecuteCustomIntentFlow execute custom intent.", v50, 2u);
        OUTLINED_FUNCTION_15_0(v50);
      }

      v51 = *(v0 + 400);
      v106 = *(v0 + 392);

      outlined init with copy of DeviceState(v51 + 64, v0 + 16);
      v52 = *(v51 + 48);
      v53 = *(v51 + 56);
      outlined init with copy of DeviceState(v51 + 104, v0 + 56);
      outlined init with copy of DeviceState(v51 + 144, v0 + 96);
      outlined init with copy of DeviceState(v51 + 232, v0 + 136);
      type metadata accessor for CustomIntentExecutionFlow(0);
      swift_allocObject();
      v54 = v28;

      CustomIntentExecutionFlow.init(runner:intent:voiceCommandName:deviceIdiom:deviceState:aceServiceInvoker:appPolicyHandler:)(v0 + 16, v3, v52, v53, 0, 1, v0 + 56, v0 + 96, v0 + 136, v98, v99, v101, v103, v105, v106, *&v108[0], *(&v108[0] + 1), *&v108[1], *(&v108[1] + 1), *&v108[2], *(&v108[2] + 1));
      *(v0 + 352) = v55;
      lazy protocol witness table accessor for type CustomIntentExecutionFlow and conformance CustomIntentExecutionFlow(&lazy protocol witness table cache variable for type CustomIntentExecutionFlow and conformance CustomIntentExecutionFlow, 255, type metadata accessor for CustomIntentExecutionFlow, &protocol conformance descriptor for CustomIntentExecutionFlow);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      v56 = OUTLINED_FUNCTION_62();
      outlined consume of WFExecuteCustomIntentFlow.State(v56, v57, 2);
    }

    goto LABEL_56;
  }

  if (v4 != 1)
  {
    if (*(v1 + 32))
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v43 = type metadata accessor for Logger();
      v44 = OUTLINED_FUNCTION_15_6(v43, static Logger.voiceCommands);
      v45 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v45))
      {
        v46 = OUTLINED_FUNCTION_52();
        *v46 = 0;
        _os_log_impl(&dword_0, v44, v45, "#WFExecuteCustomIntentFlow complete", v46, 2u);
        OUTLINED_FUNCTION_15_0(v46);
      }

      static ExecuteResponse.complete()();
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_14_5();
    v5 = OUTLINED_FUNCTION_62();
    outlined copy of WFExecuteCustomIntentFlow.State(v5, v6, 0);

    v7 = v3;
    OUTLINED_FUNCTION_13_5();
    if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
    {
      goto LABEL_10;
    }

    v8 = [v7 typeName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == 0xD000000000000051 && 0x80000000002309D0 == v11)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
LABEL_10:
        *(v1 + 16) = v2;
        *(v1 + 24) = v3;
        v14 = *(v1 + 32);
        *(v1 + 32) = 1;

        v7 = v7;
        v15 = OUTLINED_FUNCTION_13_5();
        outlined consume of WFExecuteCustomIntentFlow.State(v15, v16, v14);
        static ExecuteResponse.ongoing(requireInput:)();
LABEL_46:

        v70 = OUTLINED_FUNCTION_62();
        v72 = 0;
LABEL_63:
        outlined consume of WFExecuteCustomIntentFlow.State(v70, v71, v72);
        goto LABEL_64;
      }
    }

    outlined init with copy of DeviceState(*(v0 + 400) + 184, v0 + 296);
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();

    *(v0 + 384) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    Flow.eraseToAnyFlow()();

    v64 = lazy protocol witness table accessor for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError();
    v65 = OUTLINED_FUNCTION_16_6(&type metadata for WFExecuteCustomIntentError, v64);
    *v66 = 0;
    *(v66 + 8) = 1;
    v68 = *(v1 + 16);
    v67 = *(v1 + 24);
    *(v1 + 16) = v65;
    *(v1 + 24) = 0;
    v69 = *(v1 + 32);
    *(v1 + 32) = 4;
    outlined consume of WFExecuteCustomIntentFlow.State(v68, v67, v69);
    static ExecuteResponse.ongoing(next:)();

    goto LABEL_46;
  }

  OUTLINED_FUNCTION_14_5();
  v17 = OUTLINED_FUNCTION_62();
  outlined copy of WFExecuteCustomIntentFlow.State(v17, v18, 1);

  v19 = v3;
  OUTLINED_FUNCTION_13_5();
  if ((dispatch thunk of DeviceState.isLockedWithPasscode.getter() & 1) == 0)
  {
    goto LABEL_58;
  }

  if (WFExecuteCustomIntentFlow.shouldRequestUserToUnlockDeviceBeforeRunningCustomIntent(intent:)())
  {
    goto LABEL_13;
  }

  v58 = [v19 typeName];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  if (v59 == 0xD000000000000029 && 0x800000000022DD30 == v61)
  {
  }

  else
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v63 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  objc_opt_self();
  v73 = swift_dynamicCastObjCClass();
  if (!v73)
  {
LABEL_58:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v89 = type metadata accessor for Logger();
    v90 = OUTLINED_FUNCTION_15_6(v89, static Logger.voiceCommands);
    v91 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v91))
    {
      v92 = OUTLINED_FUNCTION_52();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "#WFExecuteCustomIntentFlow does not need unlock", v92, 2u);
      OUTLINED_FUNCTION_15_0(v92);
    }

    v93 = *(v1 + 16);
    v94 = *(v1 + 24);
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    v95 = *(v1 + 32);
    *(v1 + 32) = 2;

    v96 = v19;
    outlined consume of WFExecuteCustomIntentFlow.State(v93, v94, v95);
    static ExecuteResponse.ongoing(requireInput:)();

    v70 = OUTLINED_FUNCTION_62();
    v72 = 1;
    goto LABEL_63;
  }

  v74 = v73;
  v75 = v19;
  v76 = outlined bridged method (pb) of @objc INSendMessageIntent.attachments.getter(v74);
  if (!v76)
  {

    goto LABEL_58;
  }

  v77 = specialized Array.count.getter(v76);

  if (!v77)
  {
    goto LABEL_58;
  }

LABEL_13:
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v20 = type metadata accessor for Logger();
  v21 = OUTLINED_FUNCTION_15_6(v20, static Logger.voiceCommands);
  v22 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v22))
  {
    v23 = OUTLINED_FUNCTION_52();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "#WFExecuteCustomIntentFlow needs unlock", v23, 2u);
    OUTLINED_FUNCTION_15_0(v23);
  }

  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_13_5();
  dispatch thunk of DeviceState.sessionHandOffContinuityID.getter();
  *(v0 + 432) = v24;
  if (!v24)
  {
    goto LABEL_53;
  }

  __swift_project_boxed_opaque_existential_1((v1 + 104), *(v1 + 128));
  if ((dispatch thunk of DeviceState.isHomePod.getter() & 1) == 0)
  {

LABEL_53:
    v107 = v19;
    outlined init with copy of DeviceState(v1 + 104, v0 + 216);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_6(&one-time initialization token for shared);
    }

    v78 = *(v0 + 400);
    v79 = static WFDialogState.shared;
    type metadata accessor for RunCustomIntentCATs(0);

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_2();
    v104 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunCustomIntentCATsSimple(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_2();
    v102 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_2();
    v100 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_2();
    v80 = CATWrapperSimple.__allocating_init(options:globals:)();
    v81 = type metadata accessor for AppNameResolver();
    v82 = swift_allocObject();
    type metadata accessor for CustomIntentsDialogTemplating();
    v83 = swift_allocObject();
    *(v83 + 136) = v81;
    *(v83 + 144) = &protocol witness table for AppNameResolver;
    *(v83 + 112) = v82;
    *(v83 + 56) = v79;
    outlined init with take of AceServiceInvokerAsync((v0 + 216), v83 + 16);
    *(v83 + 64) = 0;
    *(v83 + 72) = 1;
    *(v83 + 80) = v104;
    *(v83 + 88) = v102;
    *(v83 + 96) = v100;
    *(v83 + 104) = v80;
    outlined init with copy of DeviceState(v1 + 104, v0 + 256);
    type metadata accessor for ShortcutsUnlockDeviceStrategy();
    v84 = swift_allocObject();
    *(v84 + 16) = v83;
    outlined init with take of AceServiceInvokerAsync((v0 + 256), v84 + 24);
    v85 = *(v78 + 272);

    *(v0 + 368) = v85(v84);
    type metadata accessor for GuardFlow();
    *(v0 + 376) = Flow.eraseToAnyValueFlow()();
    v86 = swift_allocObject();
    *(v86 + 16) = partial apply for implicit closure #5 in implicit closure #4 in WFExecuteCustomIntentFlow.execute();
    *(v86 + 24) = v78;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
    lazy protocol witness table accessor for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>();
    static ExecuteResponse.replan<A>(next:childCompletion:)();

    v87 = OUTLINED_FUNCTION_62();
    outlined consume of WFExecuteCustomIntentFlow.State(v87, v88, 1);

LABEL_56:

LABEL_64:

    OUTLINED_FUNCTION_6_0();

    return v97();
  }

  v25 = swift_task_alloc();
  *(v0 + 440) = v25;
  *v25 = v0;
  v25[1] = WFExecuteCustomIntentFlow.execute();
  v26 = *(v0 + 392);

  return WFExecuteCustomIntentFlow.handoffToCompanionDevice(continuityId:)(v26);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  return _swift_task_switch(WFExecuteCustomIntentFlow.execute());
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);

  outlined consume of WFExecuteCustomIntentFlow.State(v1, v2, 1);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t closure #1 in WFExecuteCustomIntentFlow.execute()(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2[10] = swift_task_alloc();
  type metadata accessor for CATOption();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in WFExecuteCustomIntentFlow.execute());
}

uint64_t closure #1 in WFExecuteCustomIntentFlow.execute()()
{
  v1 = v0[10];
  v2 = v0[8];
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v3 = CATWrapper.__allocating_init(options:globals:)();
  v0[15] = v3;
  v4 = v2[16];
  v5 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v4);
  v6 = DeviceState.asSiriKitDeviceState()(v4, v5);
  v0[16] = v6;
  v7 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v7);
  v12 = (*(*v3 + class metadata base offset for RunVoiceCommandCATs + 32) + **(*v3 + class metadata base offset for RunVoiceCommandCATs + 32));
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = closure #1 in WFExecuteCustomIntentFlow.execute();
  v9 = v0[14];
  v10 = v0[10];

  return v12(v9, v6, v10);
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 80);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  outlined destroy of String?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    v7 = closure #1 in WFExecuteCustomIntentFlow.execute();
  }

  else
  {
    v7 = closure #1 in WFExecuteCustomIntentFlow.execute();
  }

  return _swift_task_switch(v7);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 104), *(*(v0 + 64) + 128));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v3 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  v4 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v2[3] = v4;
  v2[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v2);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = OUTLINED_FUNCTION_13_5();
  v6(v5);

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WFExecuteCustomIntentFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFExecuteCustomIntentFlow();
  lazy protocol witness table accessor for type CustomIntentExecutionFlow and conformance CustomIntentExecutionFlow(&lazy protocol witness table cache variable for type WFExecuteCustomIntentFlow and conformance WFExecuteCustomIntentFlow, v2, type metadata accessor for WFExecuteCustomIntentFlow, &protocol conformance descriptor for WFExecuteCustomIntentFlow);
  return Flow.deferToExecuteAsync(_:)();
}

void WFExecuteCustomIntentFlow.processDeviceUnlockResult(exitValue:)(uint64_t result)
{
  if (*(v1 + 32) == 1)
  {
    if ((result & 1) == 0)
    {
      *(v1 + 32) = 2;
      return;
    }

    v2 = lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
    v3 = OUTLINED_FUNCTION_16_6(&type metadata for RunVoiceShortcutFlowErrors, v2);
    *v4 = 1;
  }

  else
  {
    v5 = lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
    v3 = OUTLINED_FUNCTION_16_6(&type metadata for RunVoiceShortcutFlowErrors, v5);
    *v6 = 0;
  }

  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  *(v1 + 16) = v3;
  *(v1 + 24) = 0;
  v9 = *(v1 + 32);
  *(v1 + 32) = 4;

  outlined consume of WFExecuteCustomIntentFlow.State(v8, v7, v9);
}

void WFExecuteCustomIntentFlow.processCustomIntentExecutionResult(executionResult:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
  OUTLINED_FUNCTION_13_1();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = (&v58 - v8);
  (*(v6 + 16))(&v58 - v8, a1, v4);
  v10 = OUTLINED_FUNCTION_20_4();
  v12 = v11(v10);
  if (v12 == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v13 = OUTLINED_FUNCTION_20_4();
    v14(v13);
    v15 = v9[1];
    v16 = v9[2];

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_15_6(v17, static Logger.voiceCommands);
    v19 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v19))
    {
      v20 = OUTLINED_FUNCTION_52();
      *v20 = 0;
      OUTLINED_FUNCTION_21_6(&dword_0, v21, v22, "#WFExecuteCustomIntentFlow process execution result");
      OUTLINED_FUNCTION_15_0(v20);
    }

    if ([v16 _intentResponseCode] != &dword_4 + 1)
    {
      v27 = *(v2 + 16);
      v28 = *(v2 + 24);
      *(v2 + 16) = v15;
      *(v2 + 24) = v16;
      v44 = *(v2 + 32);
      v45 = 3;
      goto LABEL_20;
    }

    v23 = [v16 _intentResponseCode];
    v24 = lazy protocol witness table accessor for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError();
    v25 = OUTLINED_FUNCTION_16_6(&type metadata for WFExecuteCustomIntentError, v24);
    *v26 = v23;
    *(v26 + 8) = 0;

    v27 = *(v2 + 16);
    v28 = *(v2 + 24);
    *(v2 + 16) = v25;
LABEL_16:
    *(v2 + 24) = 0;
    v44 = *(v2 + 32);
    v45 = 4;
LABEL_20:
    *(v2 + 32) = v45;
    outlined consume of WFExecuteCustomIntentFlow.State(v27, v28, v44);
    return;
  }

  if (v12 == enum case for RCHFlowResult.error<A, B>(_:))
  {
    v29 = OUTLINED_FUNCTION_20_4();
    v30(v29);
    v31 = *v9;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v32 = type metadata accessor for Logger();
    v33 = OUTLINED_FUNCTION_15_6(v32, static Logger.voiceCommands);
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_52();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "#WFExecuteCustomIntentFlow process execution result state error", v35, 2u);
      OUTLINED_FUNCTION_15_0(v35);
    }

    v36 = _convertErrorToNSError(_:)();
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v59 = v40;
      *v39 = 134218242;
      *(v39 + 4) = [v36 code];
      *(v39 + 12) = 2080;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v59);

      *(v39 + 14) = v43;
      _os_log_impl(&dword_0, v37, v38, "#WFExecuteCustomIntentFlow error code %ld, error: %s", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_15_0(v40);
      OUTLINED_FUNCTION_15_0(v39);
    }

    v27 = *(v2 + 16);
    v28 = *(v2 + 24);
    *(v2 + 16) = v31;
    goto LABEL_16;
  }

  if (v12 == enum case for RCHFlowResult.cancelled<A, B>(_:))
  {
    v27 = OUTLINED_FUNCTION_18_6();
    goto LABEL_20;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v46 = type metadata accessor for Logger();
  v47 = OUTLINED_FUNCTION_15_6(v46, static Logger.voiceCommands);
  v48 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v48))
  {
    v49 = OUTLINED_FUNCTION_52();
    *v49 = 0;
    _os_log_impl(&dword_0, v47, v48, "#WFExecuteCustomIntentFlow process execution result state cancelled", v49, 2u);
    OUTLINED_FUNCTION_15_0(v49);
  }

  v50 = lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
  v51 = OUTLINED_FUNCTION_16_6(&type metadata for RunVoiceShortcutFlowErrors, v50);
  *v52 = 0;
  v54 = *(v2 + 16);
  v53 = *(v2 + 24);
  *(v2 + 16) = v51;
  *(v2 + 24) = 0;
  v55 = *(v2 + 32);
  *(v2 + 32) = 4;
  outlined consume of WFExecuteCustomIntentFlow.State(v54, v53, v55);
  v56 = OUTLINED_FUNCTION_20_4();
  v57(v56);
}

void WFExecuteCustomIntentFlow.processParityRequestExecutionResult(flowResult:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    if (a3 == 1)
    {
      swift_errorRetain();
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v6 = type metadata accessor for Logger();
      v7 = OUTLINED_FUNCTION_15_6(v6, static Logger.voiceCommands);
      v8 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v8))
      {
        v9 = OUTLINED_FUNCTION_52();
        *v9 = 0;
        OUTLINED_FUNCTION_21_6(&dword_0, v10, v11, "#WFExecuteCustomIntentFlow cannot create executionResult for parity intents.");
        OUTLINED_FUNCTION_15_0(v9);
      }

      v12 = *(v4 + 16);
      v13 = *(v4 + 24);
      *(v4 + 16) = a1;
      *(v4 + 24) = 0;
      v14 = *(v4 + 32);
      v15 = 4;
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v25 = type metadata accessor for Logger();
      v26 = OUTLINED_FUNCTION_15_6(v25, static Logger.voiceCommands);
      v27 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v27))
      {
        v28 = OUTLINED_FUNCTION_52();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "#WFExecuteCustomIntentFlow parity intent is cancelled.", v28, 2u);
        OUTLINED_FUNCTION_15_0(v28);
      }

      v12 = OUTLINED_FUNCTION_18_6();
    }

    *(v4 + 32) = v15;

    outlined consume of WFExecuteCustomIntentFlow.State(v12, v13, v14);
  }

  else
  {
    v17 = *(v4 + 16);
    v18 = *(v4 + 24);
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v19 = *(v4 + 32);
    *(v4 + 32) = 3;
    v20 = a1;
    v21 = a2;
    outlined consume of WFExecuteCustomIntentFlow.State(v17, v18, v19);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_6(&one-time initialization token for shared);
    }

    (*(*static WFDialogState.shared + 224))(0);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v22 = type metadata accessor for Logger();
    oslog = OUTLINED_FUNCTION_15_6(v22, static Logger.voiceCommands);
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = OUTLINED_FUNCTION_52();
      *v24 = 0;
      _os_log_impl(&dword_0, oslog, v23, "#WFExecuteCustomIntentFlow created executionResult for parity intents successfully.", v24, 2u);
      OUTLINED_FUNCTION_15_0(v24);
    }
  }
}

uint64_t WFExecuteCustomIntentFlow.handoffToCompanionDevice(continuityId:)(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(WFExecuteCustomIntentFlow.handoffToCompanionDevice(continuityId:));
}

uint64_t WFExecuteCustomIntentFlow.handoffToCompanionDevice(continuityId:)()
{
  v1 = *(v0 + 112);
  outlined init with copy of DeviceState(v1 + 64, v0 + 16);
  outlined init with copy of DeviceState(v1 + 104, v0 + 56);
  type metadata accessor for CustomIntentHandoffToCompanionFlowStrategy();
  v2 = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync((v0 + 16), v2 + 56);
  outlined init with take of AceServiceInvokerAsync((v0 + 56), v2 + 16);
  outlined init with copy of DeviceState(v1 + 104, v0 + 16);
  outlined init with copy of DeviceState(v1 + 184, v0 + 56);
  *(v0 + 96) = v2;
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  swift_allocObject();
  lazy protocol witness table accessor for type CustomIntentExecutionFlow and conformance CustomIntentExecutionFlow(&lazy protocol witness table cache variable for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy, 255, type metadata accessor for CustomIntentHandoffToCompanionFlowStrategy, &protocol conformance descriptor for CustomIntentHandoffToCompanionFlowStrategy);

  v3 = HandoffSessionToCompanionFlowAsync.init<A>(strategy:deviceState:outputPublisher:)();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v6 = *(v1 + 32);
  *(v1 + 32) = 5;
  outlined consume of WFExecuteCustomIntentFlow.State(v4, v5, v6);
  *(v0 + 16) = v3;
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t WFExecuteCustomIntentFlow.shouldRequestUserToUnlockDeviceBeforeRunningCustomIntent(intent:)()
{
  if (INIntent.requiresDeviceToBeUnlocked()())
  {
    __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
    v1 = dispatch thunk of DeviceState.isHomePod.getter() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t WFExecuteCustomIntentFlow.deinit()
{
  outlined consume of WFExecuteCustomIntentFlow.State(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));

  return v0;
}

uint64_t WFExecuteCustomIntentFlow.__deallocating_deinit()
{
  WFExecuteCustomIntentFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

void protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.execute() in conformance WFExecuteCustomIntentFlow(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFExecuteCustomIntentFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 192))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t outlined bridged method (pb) of @objc INSendMessageIntent.attachments.getter(void *a1)
{
  v1 = [a1 attachments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for INSendMessageAttachment();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = a3;
  v50 = a2;
  v51 = a10;
  v55[3] = a13;
  v55[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, a9, a13);
  v52 = a5;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  outlined init with copy of DeviceState(v21, a12 + 104);
  outlined init with copy of DeviceState(v22, a12 + 144);
  outlined init with copy of DeviceState(a7, a12 + 184);
  v24 = v50;
  *(a12 + 40) = a1;
  *(a12 + 48) = v24;
  *(a12 + 56) = v53;
  v53 = a4;
  outlined init with copy of DeviceState(a4, a12 + 64);
  *(a12 + 224) = a8;
  outlined init with copy of DeviceState(v55, a12 + 232);
  *(a12 + 272) = v51;
  *(a12 + 280) = a11;
  v25 = one-time initialization token for voiceCommands;
  v26 = a1;
  v51 = a8;

  if (v25 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  v28 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_0, v29, v30, "#WFExecuteCustomIntentFlow intent: %@", v31, 0xCu);
    outlined destroy of String?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v34 = [*(a12 + 40) _metadata];
  if (v34)
  {
    v35 = v34;
    outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v34);
    if (v36)
    {
      v49[5] = a11;
      v50 = v22;
      v37 = [v28 typeName];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v54[0] = v38;
      v54[1] = v40;
      __chkstk_darwin(v41);
      v49[2] = v54;
      LOBYTE(v37) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v49, &outlined read-only object #0 of one-time initialization function for parityIntentsList);

      if ((v37 & 1) == 0)
      {
        [v35 setExecutionContext:2];
      }

      [v28 _setMetadata:v35];
      type metadata accessor for App();
      v42 = App.__allocating_init(appIdentifier:)();

      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      v43 = 0;
      goto LABEL_14;
    }
  }

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "#WFExecuteCustomIntentFlow error state because metadata or bundleid is nil", v46, 2u);
  }

  lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
  v42 = swift_allocError();
  *v47 = 0;

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  v28 = 0;
  v43 = 4;
LABEL_14:
  *(a12 + 16) = v42;
  *(a12 + 24) = v28;
  *(a12 + 32) = v43;
  return a12;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

void outlined consume of WFExecuteCustomIntentFlow.State(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
      v3 = a2;

      goto LABEL_7;
    case 3:
      v3 = a2;

LABEL_7:

      break;
    case 4:

      break;
    default:
      return;
  }
}

uint64_t sub_45920()
{

  return _swift_deallocObject(v0);
}

id outlined copy of WFExecuteCustomIntentFlow.State(id result, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
      v4 = a2;

      goto LABEL_7;
    case 3:
      v4 = result;
      v3 = a2;
LABEL_7:

      result = v4;
      break;
    case 4:

      result = swift_errorRetain();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>()
{
  result = lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in WFExecuteCustomIntentFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in WFExecuteCustomIntentFlow.execute()(v3, v0);
}

unint64_t lazy protocol witness table accessor for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError()
{
  result = lazy protocol witness table cache variable for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError;
  if (!lazy protocol witness table cache variable for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin27CustomIntentExecutionResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentExecutionResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomIntentExecutionResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CustomIntentExecutionResult(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WFExecuteCustomIntentError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WFExecuteCustomIntentError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for WFExecuteCustomIntentError(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for WFExecuteCustomIntentError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin021WFExecuteCustomIntentC0C5State33_4CBE3C012460CCC628CB6B85AAA07635LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for WFExecuteCustomIntentFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WFExecuteCustomIntentFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for WFExecuteCustomIntentFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t lazy protocol witness table accessor for type CustomIntentExecutionFlow and conformance CustomIntentExecutionFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t type metadata accessor for INSendMessageAttachment()
{
  result = lazy cache variable for type metadata for INSendMessageAttachment;
  if (!lazy cache variable for type metadata for INSendMessageAttachment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INSendMessageAttachment);
  }

  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

void OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 96) = a7;
  *(v8 - 88) = a8;
  *(v8 - 112) = a5;
  *(v8 - 104) = a6;
  *(v8 - 120) = a4;
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *(v17 - 120);
  v20 = *(v17 - 112);
  v21 = *(v17 - 104);
  v22 = *(v17 - 96);
  v23 = *(v17 - 88);

  return specialized WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)(v16, v15, v14, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_16_6(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_18_6()
{
  result = *(v0 + 16);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

void OUTLINED_FUNCTION_21_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *SiriLinkFlowPlugin.__allocating_init()()
{
  v0 = type metadata accessor for CATOption();
  __chkstk_darwin(v0 - 8);
  OUTLINED_FUNCTION_3();
  v24 = type metadata accessor for DateTimeResolver();
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v23 = type metadata accessor for AppInstallInfoProvider();
  v22 = swift_allocObject();
  static Device.current.getter();
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static AceService.currentAsync.getter();
  v20 = type metadata accessor for LocationProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = 0x3FA999999999999ALL;
  outlined init with take of AceServiceInvokerAsync(&v25, v7 + 24);
  DateTimeResolver.init()();
  v19 = type metadata accessor for VoiceShortcutClientWrapper();
  v18 = swift_allocObject();
  type metadata accessor for AutoShortcutCATs(0);
  static CATOption.defaultMode.getter();
  v21 = CATWrapper.__allocating_init(options:globals:)();
  v8 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  v9 = type metadata accessor for LinkMetadataProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
  v11 = type metadata accessor for AutoShortcutProvider();
  v12 = swift_allocObject();
  *(v12 + 16) = [objc_allocWithZone(LNAutoShortcutsProvider) init];
  v13 = [objc_opt_self() sharedPreferences];
  v14 = swift_allocObject();
  v14[7] = v23;
  v14[8] = &protocol witness table for AppInstallInfoProvider;
  v14[4] = v22;
  v14[27] = v20;
  v14[28] = &protocol witness table for LocationProvider;
  v14[24] = v7;
  v14[32] = v24;
  v14[33] = &protocol witness table for DateTimeResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14 + 29);
  (*(v2 + 16))(boxed_opaque_existential_1, v6, v24);
  v14[37] = v19;
  v14[38] = &protocol witness table for VoiceShortcutClientWrapper;
  v14[34] = v18;
  v14[43] = v8;
  v14[44] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v14[40] = v17;
  v14[48] = v9;
  v14[49] = &protocol witness table for LinkMetadataProvider;
  v14[45] = v10;
  v14[53] = v11;
  v14[54] = &protocol witness table for AutoShortcutProvider;
  v14[50] = v12;
  (*(v2 + 8))(v6, v24);
  v14[2] = 0xD000000000000030;
  v14[3] = 0x800000000022F760;
  outlined init with take of AceServiceInvokerAsync(v28, (v14 + 9));
  outlined init with take of AceServiceInvokerAsync(&v27, (v14 + 14));
  outlined init with take of AceServiceInvokerAsync(&v26, (v14 + 19));
  v14[39] = v21;
  v14[55] = v13;
  return v14;
}

uint64_t SiriLinkFlowPlugin.__allocating_init(appInstallInfoProvider:deviceState:aceServiceInvoker:outputPublisher:locationProvider:dateTimeResolver:voiceShortcutsClient:autoShortcutCATs:linkActionPatterns:linkMetadataProvider:appShortcutProvider:preferences:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = a1[3];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v16);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_3();
  v56 = v19 - v18;
  (*(v20 + 16))();
  v57 = a5;
  __swift_mutable_project_boxed_opaque_existential_1(a5, a5[3]);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_3();
  v54 = v23 - v22;
  (*(v24 + 16))();
  v55 = a6;
  v25 = a6[3];
  __swift_mutable_project_boxed_opaque_existential_1(a6, v25);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_3();
  v53 = v28 - v27;
  (*(v29 + 16))();
  __swift_mutable_project_boxed_opaque_existential_1(a7, a7[3]);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_3();
  v33 = v32 - v31;
  (*(v34 + 16))(v32 - v31);
  __swift_mutable_project_boxed_opaque_existential_1(a9, a9[3]);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_3();
  v38 = v37 - v36;
  (*(v39 + 16))(v37 - v36);
  v40 = a10[3];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v40);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_3();
  v44 = v43 - v42;
  (*(v45 + 16))(v43 - v42);
  __swift_mutable_project_boxed_opaque_existential_1(a11, a11[3]);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_3();
  v49 = v48 - v47;
  (*(v50 + 16))(v48 - v47);
  v51 = a13(v56, a2, a3, a4, v54, v53, v33, a8, v38, v44, v49, a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v51;
}

uint64_t SiriLinkFlowPlugin.findFlowForX(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C12SearchResultVSgMd, &_s11SiriKitFlow0C12SearchResultVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  SiriLinkFlowPlugin.makeFlowFlowSearchResult(parse:)(a1, &v9 - v5);
  v7 = type metadata accessor for FlowSearchResult();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v6, v7);
  }

  outlined destroy of Any?(v6, &_s11SiriKitFlow0C12SearchResultVSgMd, &_s11SiriKitFlow0C12SearchResultVSgMR);
  return static FlowSearchResult.noFlow.getter();
}

uint64_t SiriLinkFlowPlugin.makeFlowFlowSearchResult(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v94 = a2;
  v3 = type metadata accessor for LinkParse();
  v84 = *(v3 - 8);
  v85 = v3;
  __chkstk_darwin(v3);
  v83 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NLIntent();
  v90 = *(v7 - 8);
  v91 = v7;
  __chkstk_darwin(v7);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Parse.DirectInvocation();
  v89 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Parse();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v82 = v81 - v19;
  __chkstk_darwin(v18);
  v93 = v81 - v20;
  v21 = v2[7];
  v22 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v21);
  if ((*(v22 + 8))(v21, v22))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v81[1] = __swift_project_value_buffer(v23, static Logger.voiceCommands);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#SiriLinkFlowPlugin has Shortcuts app installed", v26, 2u);
    }

    v27 = *(v14 + 16);
    v28 = v93;
    v27(v93, v92, v13);
    v29 = (*(v14 + 88))(v28, v13);
    if (v29 == enum case for Parse.NLv3IntentOnly(_:))
    {
      (*(v14 + 96))(v28, v13);
      v31 = v90;
      v30 = v91;
      (*(v90 + 32))(v9, v28, v91);
      if (SiriLinkFlowPlugin.makeFlowFor(nlv3Intent:)(v9))
      {
        v32 = v94;
        static FlowSearchResult.flow(_:)();

        (*(v31 + 8))(v9, v30);
        v33 = type metadata accessor for FlowSearchResult();
        v34 = v32;
LABEL_9:
        v35 = 0;
        return __swift_storeEnumTagSinglePayload(v34, v35, 1, v33);
      }

      (*(v31 + 8))(v9, v30);
      goto LABEL_25;
    }

    if (v29 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(v14 + 96))(v28, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);
      v43 = Parse.ServerConversion.siriKitIntent.getter();
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      v47 = os_log_type_enabled(v45, v46);
      if (v44)
      {
        if (v47)
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v95 = v49;
          *v48 = 136315138;
          v50 = [v43 debugDescription];
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v95);

          *(v48 + 4) = v54;
          v55 = "INListShortcutsIntent is deprecated: %s";
LABEL_31:
          _os_log_impl(&dword_0, v45, v46, v55, v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);

LABEL_33:
          v66 = v90;
          v67 = type metadata accessor for FlowSearchResult();
          __swift_storeEnumTagSinglePayload(v94, 1, 1, v67);
          return (*(v66 + 8))(v93, v91);
        }
      }

      else if (v47)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v95 = v49;
        *v48 = 136315138;
        v61 = [v43 debugDescription];
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v95);

        *(v48 + 4) = v65;
        v55 = "Support for intent not yet implemented: %s";
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if (v29 == enum case for Parse.directInvocation(_:))
    {
      (*(v14 + 96))(v28, v13);
      v56 = v89;
      (*(v89 + 32))(v12, v28, v10);
      if (SiriLinkFlowPlugin.makeFlowFor(directInvocation:)(v12))
      {
        v57 = v94;
        static FlowSearchResult.flow(_:)();

        (*(v56 + 8))(v12, v10);
        v33 = type metadata accessor for FlowSearchResult();
        v34 = v57;
        goto LABEL_9;
      }

      (*(v56 + 8))(v12, v10);
LABEL_25:
      v33 = type metadata accessor for FlowSearchResult();
      v34 = v94;
      v35 = 1;
      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v33);
    }

    if (v29 == enum case for Parse.uso(_:))
    {
      (*(v14 + 96))(v28, v13);
      v59 = v86;
      v58 = v87;
      v60 = v88;
      (*(v87 + 32))(v86, v28, v88);
      SiriLinkFlowPlugin.makeFlowFor(usoParse:)(v59, v94);
      return (*(v58 + 8))(v59, v60);
    }

    if (v29 == enum case for Parse.link(_:))
    {
      (*(v14 + 96))(v28, v13);
      v59 = v83;
      v58 = v84;
      v60 = v85;
      (*(v84 + 32))(v83, v28, v85);
      v68 = v86;
      LinkParse.usoParse.getter();
      SiriLinkFlowPlugin.makeFlowFor(usoParse:)(v68, v94);
      (*(v87 + 8))(v68, v88);
      return (*(v58 + 8))(v59, v60);
    }

    v69 = v82;
    v27(v82, v92, v13);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v95 = v73;
      *v72 = 136315138;
      v27(v17, v69, v13);
      v74 = String.init<A>(describing:)();
      v75 = v69;
      v77 = v76;
      v78 = *(v14 + 8);
      v78(v75, v13);
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v77, &v95);

      *(v72 + 4) = v79;
      _os_log_impl(&dword_0, v70, v71, "Unhandled Parse type: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
    }

    else
    {

      v78 = *(v14 + 8);
      v78(v69, v13);
    }

    v80 = type metadata accessor for FlowSearchResult();
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v80);
    return (v78)(v93, v13);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.voiceCommands);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "User does not have Shortcuts app installed", v39, 2u);
    }

    v40 = type metadata accessor for FlowSearchResult();
    v41 = v94;

    return __swift_storeEnumTagSinglePayload(v41, 1, 1, v40);
  }
}

uint64_t SiriLinkFlowPlugin.makeFlowFor(directInvocation:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v104 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v103 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v94 - v7;
  v102 = type metadata accessor for AutoShortcutInvocation(0);
  __chkstk_darwin(v102);
  v10 = (&v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for CATOption();
  __chkstk_darwin(v11 - 8);
  if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003BLL && 0x8000000000230BC0 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v15 = Parse.DirectInvocation.userData.getter();
  if (v15)
  {
    static ShortcutDoneButtonConverter.toShortcutDoneButton(userData:)(v15, &v122);

    v16 = v123;
    if (v123)
    {
      v17 = v124;
      if (!*(&v122 + 1))
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        __swift_project_value_buffer(v77, static Logger.voiceCommands);
        v69 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v69, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_0, v69, v78, "Cannot get workflowName from the done button", v79, 2u);
        }

        else
        {
        }

        goto LABEL_61;
      }

      v102 = v125;
      v103 = v124;
      v104 = v123;
      v127 = v122;
      v131 = 0;
      memset(__src, 0, 40);
      outlined init with copy of DeviceState(v1 + 112, v121);
      outlined init with copy of DeviceState(v1 + 72, v120);
      outlined init with copy of DeviceState(v1 + 152, v105);
      outlined init with copy of DeviceState(v1 + 192, &v117);
      outlined init with copy of DeviceState(v1 + 232, v114);
      v18 = one-time initialization token for shared;

      if (v18 != -1)
      {
        swift_once();
      }

      v101 = static WFDialogState.shared;
      type metadata accessor for RunCustomIntentCATs(0);

      static CATOption.defaultMode.getter();
      v100 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunVoiceCommandCATs(0);
      static CATOption.defaultMode.getter();
      v99 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunVoiceCommandCATsSimple(0);
      static CATOption.defaultMode.getter();
      v97 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
      static CATOption.defaultMode.getter();
      v95 = CATWrapper.__allocating_init(options:globals:)();
      v98 = type metadata accessor for WorkflowRunnerFlow(0);
      v19 = objc_allocWithZone(v98);
      v21 = *(&v118 + 1);
      v20 = v119;
      v22 = __swift_mutable_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
      v96 = &v94;
      __chkstk_darwin(v22);
      v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24);
      v27 = v115;
      v26 = v116;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
      __chkstk_darwin(v28);
      v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(&v127, __src, v101, v121, v120, v105, v100, v99, v97, v95, closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow, 0, v24, v91, v30, v92, v19, &type metadata for DefaultLinkHandlingFlowFactory, v21, v27, &type metadata for DefaultTCCTemplatesCATWrapper, &protocol witness table for DefaultLinkHandlingFlowFactory, v20, v26, &protocol witness table for DefaultTCCTemplatesCATWrapper, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      __swift_destroy_boxed_opaque_existential_1Tm(&v117);
      *&__src[0] = v33;
      lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type WorkflowRunnerFlow and conformance WorkflowRunnerFlow, 255, type metadata accessor for WorkflowRunnerFlow, &protocol conformance descriptor for WorkflowRunnerFlow);
      v34 = Flow.eraseToAnyFlow()();

      return v34;
    }
  }

LABEL_14:
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000041 && 0x8000000000230C00 == v35)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v38 = Parse.DirectInvocation.userData.getter();
  if (v38)
  {
    v39 = v38;
    type metadata accessor for InstallVoiceShortcutInvocationData(0);
    InstallVoiceShortcutInvocationData.__allocating_init(invocationData:)(v39);
    outlined init with copy of DeviceState(v2 + 72, &v127);
    outlined init with copy of DeviceState(v2 + 112, __src);
    outlined init with copy of DeviceState(v2 + 272, v121);
    outlined init with copy of DeviceState(v2 + 152, v120);
    outlined init with copy of DeviceState(v2 + 192, v105);
    outlined init with copy of DeviceState(v2 + 232, &v117);
    type metadata accessor for InstallVoiceShortcutFlow();
    swift_allocObject();

    InstallVoiceShortcutFlow.init(invocationData:deviceState:aceService:vcClient:outputPublisher:installShortcutViewFactory:locationProvider:dateTimeResolver:)();
    *&v127 = v40;
    lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type InstallVoiceShortcutFlow and conformance InstallVoiceShortcutFlow, 255, type metadata accessor for InstallVoiceShortcutFlow, &protocol conformance descriptor for InstallVoiceShortcutFlow);
    v34 = Flow.eraseToAnyFlow()();

    return v34;
  }

LABEL_23:
  v101 = v4;
  if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000004BLL && 0x8000000000230C50 == v41)
  {

LABEL_30:
    v44 = Parse.DirectInvocation.userData.getter();
    if (v44)
    {
      v45 = v44;
      v100 = v10;
      __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
      if ((dispatch thunk of DeviceState.isMac.getter() & 1) == 0)
      {
        v80 = type metadata accessor for AutoShortcutProvider();
        v81 = swift_allocObject();
        v82 = objc_allocWithZone(LNAutoShortcutsProvider);

        *(v81 + 16) = [v82 init];
        *(&v128 + 1) = v80;
        *&v129 = &protocol witness table for AutoShortcutProvider;
        *&v127 = v81;
        v83 = [objc_opt_self() sharedPreferences];
        v84 = v100;
        AutoShortcutInvocation.init(directInvocationData:provider:preferences:)(v45, &v127, v83, v100);

        outlined init with copy of DeviceState(v2 + 112, &v127);
        outlined init with copy of DeviceState(v2 + 152, __src);
        outlined init with copy of DeviceState(v2 + 272, v121);
        outlined init with copy of DeviceState(v2 + 360, v120);
        outlined init with copy of DeviceState(v2 + 72, v105);
        type metadata accessor for AutoShortcutFlow();
        v89 = swift_allocObject();
        *(v89 + 40) = v102;
        *(v89 + 48) = &protocol witness table for AutoShortcutInvocation;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v89 + 16));
        outlined init with copy of AutoShortcutInvocation(v84, boxed_opaque_existential_1, type metadata accessor for AutoShortcutInvocation);
        outlined init with take of AceServiceInvokerAsync(&v127, v89 + 56);
        outlined init with take of AceServiceInvokerAsync(__src, v89 + 136);
        outlined init with take of AceServiceInvokerAsync(v121, v89 + 176);
        outlined init with take of AceServiceInvokerAsync(v120, v89 + 216);
        outlined init with take of AceServiceInvokerAsync(v105, v89 + 96);
        *(v89 + 272) = 0;
        *(v89 + 256) = closure #1 in variable initialization expression of static AutoShortcutFlow.defaultRunner;
        *(v89 + 264) = 0;
        *&v127 = v89;
        lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type AutoShortcutFlow and conformance AutoShortcutFlow, 255, type metadata accessor for AutoShortcutFlow, &protocol conformance descriptor for AutoShortcutFlow);
        v34 = Flow.eraseToAnyFlow()();

        outlined destroy of AutoShortcutInvocation(v84, type metadata accessor for AutoShortcutInvocation);
        return v34;
      }
    }

    goto LABEL_33;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    goto LABEL_30;
  }

LABEL_33:
  if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003FLL && 0x8000000000230CA0 == v46)
  {

    v49 = v101;
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v49 = v101;
    if ((v48 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  v50 = Parse.DirectInvocation.userData.getter();
  if (!v50)
  {
LABEL_45:
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.voiceCommands);
    v67 = v104;
    v68 = v104[2];
    v68(v8, a1, v49);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v69, v70))
    {

      v67[1](v8, v49);
      return 0;
    }

    v71 = v67;
    v72 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&v127 = v102;
    *v72 = 136315138;
    v68(v103, v8, v49);
    v73 = String.init<A>(describing:)();
    v75 = v74;
    v71[1](v8, v49);
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v127);

    *(v72 + 4) = v76;
    _os_log_impl(&dword_0, v69, v70, "Unhandled direct invocation type: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);

    goto LABEL_60;
  }

  static WFPausedShortcutConverter.toSiriWorkflowInput(userData:)(v50, __src);
  memcpy(v121, __src, 0x41uLL);

  if (LOBYTE(__src[4]) == 255)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, static Logger.voiceCommands);
    v69 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v69, v86))
    {
      goto LABEL_61;
    }

    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_0, v69, v86, "Cannot parse WFPausedShortcutData from userData, returning nil...", v87, 2u);
LABEL_60:

LABEL_61:

    return 0;
  }

  v127 = __src[0];
  v128 = __src[1];
  v129 = __src[2];
  v130 = __src[3];
  v131 = __src[4];
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  outlined init with copy of DeviceState(v1 + 112, v114);
  outlined init with copy of DeviceState(v1 + 72, v113);
  outlined init with copy of DeviceState(v1 + 152, v112);
  outlined init with copy of DeviceState(v1 + 192, v109);
  outlined init with copy of DeviceState(v1 + 232, v106);
  memcpy(v120, v121, 0x41uLL);
  outlined init with copy of SiriWorkflowRunnerInput(v120, v105);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v104 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs(0);

  static CATOption.defaultMode.getter();
  v103 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v102 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v101 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v99 = CATWrapper.__allocating_init(options:globals:)();
  v51 = objc_allocWithZone(type metadata accessor for WorkflowRunnerFlow(0));
  v53 = v110;
  v52 = v111;
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
  v100 = &v94;
  __chkstk_darwin(v54);
  v56 = &v94 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56);
  v59 = v107;
  v58 = v108;
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
  __chkstk_darwin(v60);
  v62 = &v94 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v63 + 16))(v62);
  specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(&v127, &v117, v104, v114, v113, v112, v103, v102, v101, v99, closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow, 0, v56, v91, v62, v92, v51, &type metadata for DefaultLinkHandlingFlowFactory, v53, v59, &type metadata for DefaultTCCTemplatesCATWrapper, &protocol witness table for DefaultLinkHandlingFlowFactory, v52, v58, &protocol witness table for DefaultTCCTemplatesCATWrapper, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
  v65 = v64;
  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  __swift_destroy_boxed_opaque_existential_1Tm(v109);
  *&v105[0] = v65;
  lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type WorkflowRunnerFlow and conformance WorkflowRunnerFlow, 255, type metadata accessor for WorkflowRunnerFlow, &protocol conformance descriptor for WorkflowRunnerFlow);
  v34 = Flow.eraseToAnyFlow()();
  outlined destroy of Any?(__src, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerInputOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerInputOSgMR);

  return v34;
}

uint64_t SiriLinkFlowPlugin.makeFlowFor(nlv3Intent:)(uint64_t a1)
{
  v3 = type metadata accessor for CATOption();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for VoiceCommandsNLIntent(0);
  __chkstk_darwin(v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NLIntent();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  if (one-time initialization token for voiceCommandVerbNode != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, 255, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v17[0] == 3)
  {
    outlined init with copy of DeviceState(v1 + 72, v17);
    outlined init with copy of DeviceState(v1 + 112, v16);
    type metadata accessor for ListShortcutsCATs(0);
    static CATOption.defaultMode.getter();
    v8 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for ListShortcutsFlow();
    swift_allocObject();
    *v17 = ListShortcutsFlow.init(deviceState:aceServiceInvoker:catWrapper:)(v17, v16, v8);
    v9 = &lazy protocol witness table cache variable for type ListShortcutsFlow and conformance ListShortcutsFlow;
    v10 = type metadata accessor for ListShortcutsFlow;
    v11 = &protocol conformance descriptor for ListShortcutsFlow;
  }

  else
  {
    outlined init with copy of DeviceState(v1 + 72, v17);
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v12 = static VoiceCommandsAppPolicyHandler.instance;
    type metadata accessor for WFRunVoiceShortcutFlow(0);
    v13 = swift_allocObject();

    *v17 = specialized WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(v17, v12, v13);
    v9 = &lazy protocol witness table cache variable for type WFRunVoiceShortcutFlow and conformance WFRunVoiceShortcutFlow;
    v10 = type metadata accessor for WFRunVoiceShortcutFlow;
    v11 = &protocol conformance descriptor for WFRunVoiceShortcutFlow;
  }

  lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(v9, 255, v10, v11);
  v14 = Flow.eraseToAnyFlow()();

  outlined destroy of AutoShortcutInvocation(v6, type metadata accessor for VoiceCommandsNLIntent);
  return v14;
}

uint64_t SiriLinkFlowPlugin.makeFlowFor(usoParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a2;
  v193 = type metadata accessor for USOParse();
  v3 = *(v193 - 8);
  v4 = __chkstk_darwin(v193);
  v191 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v179 = &v168 - v6;
  v7 = type metadata accessor for CATOption();
  __chkstk_darwin(v7 - 8);
  v172 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0a4LinkC6Plugin026AutoShortcutsSetEnablementC0C_Qo_Md, &_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0a4LinkC6Plugin026AutoShortcutsSetEnablementC0C_Qo_MR);
  v174 = *(v9 - 8);
  v175 = v9;
  __chkstk_darwin(v9);
  v173 = &v168 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0a4LinkC6Plugin018WFRunVoiceShortcutC0C_Qo_Md, &_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0a4LinkC6Plugin018WFRunVoiceShortcutC0C_Qo_MR);
  v170 = *(v11 - 8);
  v171 = v11;
  __chkstk_darwin(v11);
  v169 = &v168 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMd, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMR);
  __chkstk_darwin(v13 - 8);
  v181 = &v168 - v14;
  v182 = type metadata accessor for VoiceCommandTask(0);
  v15 = __chkstk_darwin(v182);
  v176 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v178 = &v168 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMd, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMR);
  __chkstk_darwin(v18 - 8);
  v186 = &v168 - v19;
  v187 = type metadata accessor for AutoShortcutInvocation(0);
  __chkstk_darwin(v187);
  v177 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nlu_External_UserParse();
  v185 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v25 = __chkstk_darwin(v24 - 8);
  v180 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v184 = &v168 - v28;
  v29 = __chkstk_darwin(v27);
  v183 = &v168 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v168 - v32;
  __chkstk_darwin(v31);
  v189 = &v168 - v34;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v35 = __chkstk_darwin(v190);
  v36 = __chkstk_darwin(v35);
  v38 = &v168 - v37;
  __chkstk_darwin(v36);
  v40 = &v168 - v39;
  v41 = a1;
  USOParse.parserIdentifier.getter();
  v42 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  if (__swift_getEnumTagSinglePayload(v40, 1, v42) == 1)
  {
    goto LABEL_15;
  }

  v168 = v3;
  outlined init with copy of UUID?(v40, v38, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v43 = *(v42 - 8);
  v44 = (*(v43 + 88))(v38, v42);
  if (v44 != enum case for Siri_Nlu_External_Parser.ParserIdentifier.overrides(_:) && v44 != enum case for Siri_Nlu_External_Parser.ParserIdentifier.nlv4(_:) && v44 != enum case for Siri_Nlu_External_Parser.ParserIdentifier.shortcutsExact(_:) && v44 != enum case for Siri_Nlu_External_Parser.ParserIdentifier.ssu(_:))
  {
    (*(v43 + 8))(v38, v42);
    v3 = v168;
LABEL_15:
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.voiceCommands);
    v53 = v191;
    v54 = v193;
    (*(v3 + 16))(v191, v41, v193);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = v53;
      v59 = swift_slowAlloc();
      *&__dst[0] = v59;
      *v57 = 136315138;
      USOParse.parserIdentifier.getter();
      v60 = String.init<A>(describing:)();
      v62 = v61;
      (*(v3 + 8))(v58, v193);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, __dst);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_0, v55, v56, "SiriLinkFlow plugin received NL parse from a parser it does not support: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
    }

    else
    {

      (*(v3 + 8))(v53, v54);
    }

    v64 = v192;
    v65 = type metadata accessor for FlowSearchResult();
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v65);
    return outlined destroy of Any?(v40, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  }

  outlined destroy of Any?(v40, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  USOParse.userParse.getter();
  v48 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v185 + 8))(v23, v21);
  v49 = v189;
  specialized Collection.first.getter(v48, v189);

  outlined init with copy of UUID?(v49, v33, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v50 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v33, 1, v50) == 1)
  {
    outlined destroy of Any?(v33, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v51 = v186;
    __swift_storeEnumTagSinglePayload(v186, 1, 1, v187);
LABEL_22:
    outlined destroy of Any?(v51, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMd, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMR);
    v68 = v188;
    goto LABEL_23;
  }

  USOParse.groupIndex.getter();
  v51 = v186;
  Siri_Nlu_External_UserDialogAct.extractAutoShortcutInvocation(groupIndex:)();
  (*(*(v50 - 8) + 8))(v33, v50);
  v67 = v187;
  if (__swift_getEnumTagSinglePayload(v51, 1, v187) == 1)
  {
    goto LABEL_22;
  }

  v84 = v177;
  outlined init with take of VoiceCommandTask(v51, v177, type metadata accessor for AutoShortcutInvocation);
  v68 = v188;
  __swift_project_boxed_opaque_existential_1(v188 + 9, v188[12]);
  if ((dispatch thunk of DeviceState.isMac.getter() & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v139 = type metadata accessor for Logger();
    __swift_project_value_buffer(v139, static Logger.voiceCommands);
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.debug.getter();
    v142 = os_log_type_enabled(v140, v141);
    v85 = v192;
    if (v142)
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_0, v140, v141, "#SiriLinkFlowPlugin Starting AutoShortcutFlow", v143, 2u);
    }

    outlined init with copy of DeviceState((v68 + 9), __dst);
    static AceService.currentAsync.getter();
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v144 = type metadata accessor for VoiceShortcutClientWrapper();
    v145 = swift_allocObject();
    v208 = v144;
    v209 = &protocol witness table for VoiceShortcutClientWrapper;
    *&v207 = v145;
    v146 = type metadata accessor for LinkMetadataProvider();
    v147 = swift_allocObject();
    *(v147 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
    v205 = v146;
    v206 = &protocol witness table for LinkMetadataProvider;
    *&v204 = v147;
    type metadata accessor for AutoShortcutFlow();
    v148 = swift_allocObject();
    *(v148 + 40) = v67;
    *(v148 + 48) = &protocol witness table for AutoShortcutInvocation;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v148 + 16));
    outlined init with copy of AutoShortcutInvocation(v84, boxed_opaque_existential_1, type metadata accessor for AutoShortcutInvocation);
    outlined init with take of AceServiceInvokerAsync(v211, v148 + 56);
    outlined init with take of AceServiceInvokerAsync(v210, v148 + 136);
    outlined init with take of AceServiceInvokerAsync(&v207, v148 + 176);
    outlined init with take of AceServiceInvokerAsync(&v204, v148 + 216);
    outlined init with take of AceServiceInvokerAsync(__dst, v148 + 96);
    *(v148 + 272) = 0;
    *(v148 + 256) = closure #1 in variable initialization expression of static AutoShortcutFlow.defaultRunner;
    *(v148 + 264) = 0;
    *&__dst[0] = v148;
    lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type AutoShortcutFlow and conformance AutoShortcutFlow, 255, type metadata accessor for AutoShortcutFlow, &protocol conformance descriptor for AutoShortcutFlow);
    Flow.eraseToAnyFlow()();

    static FlowSearchResult.flow(_:)();

    outlined destroy of AutoShortcutInvocation(v84, type metadata accessor for AutoShortcutInvocation);
LABEL_71:
    outlined destroy of Any?(v49, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v80 = type metadata accessor for FlowSearchResult();
    v81 = v85;
LABEL_72:
    v101 = 0;
    return __swift_storeEnumTagSinglePayload(v81, v101, 1, v80);
  }

  outlined destroy of AutoShortcutInvocation(v84, type metadata accessor for AutoShortcutInvocation);
LABEL_23:
  v69 = v183;
  outlined init with copy of UUID?(v49, v183, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v50);
  v71 = v184;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Any?(v69, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  }

  else
  {
    Siri_Nlu_External_UserDialogAct.convertToStarterShortcut()();
    v73 = v72;
    (*(*(v50 - 8) + 8))(v69, v50);
    if (v73)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static Logger.voiceCommands);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_0, v75, v76, "#SiriLinkFlowPlugin received starter shortcut", v77, 2u);
      }

      outlined init with copy of DeviceState((v68 + 9), __dst);
      outlined init with copy of DeviceState((v68 + 14), v211);
      outlined init with copy of DeviceState((v68 + 34), v210);
      outlined init with copy of DeviceState((v68 + 19), &v207);
      outlined init with copy of DeviceState((v68 + 24), &v204);
      outlined init with copy of DeviceState((v68 + 29), &v201);
      type metadata accessor for InstallVoiceShortcutFlow();
      swift_allocObject();

      InstallVoiceShortcutFlow.init(invocationData:deviceState:aceService:vcClient:outputPublisher:installShortcutViewFactory:locationProvider:dateTimeResolver:)();
      *&__dst[0] = v78;
      lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type InstallVoiceShortcutFlow and conformance InstallVoiceShortcutFlow, 255, type metadata accessor for InstallVoiceShortcutFlow, &protocol conformance descriptor for InstallVoiceShortcutFlow);
      Flow.eraseToAnyFlow()();

      v79 = v192;
      static FlowSearchResult.flow(_:)();

      outlined destroy of Any?(v49, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v80 = type metadata accessor for FlowSearchResult();
      v81 = v79;
      goto LABEL_72;
    }
  }

  outlined init with copy of UUID?(v49, v71, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  if (__swift_getEnumTagSinglePayload(v71, 1, v50) == 1)
  {
    outlined destroy of Any?(v71, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v82 = v181;
    __swift_storeEnumTagSinglePayload(v181, 1, 1, v182);
LABEL_34:
    outlined destroy of Any?(v82, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMd, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMR);
    v83 = v180;
    outlined init with copy of UUID?(v49, v180, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (__swift_getEnumTagSinglePayload(v83, 1, v50) == 1)
    {
      outlined destroy of Any?(v83, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      memset(v211, 0, sizeof(v211));
LABEL_41:
      outlined destroy of Any?(v211, &_s18SiriLinkFlowPlugin32AppShortcutGeneralizedInvocationVSgMd, &_s18SiriLinkFlowPlugin32AppShortcutGeneralizedInvocationVSgMR);
      goto LABEL_42;
    }

    USOParse.groupIndex.getter();
    Siri_Nlu_External_UserDialogAct.extractGeneralizedAppShortcutInvocation(groupIndex:provider:)();
    (*(*(v50 - 8) + 8))(v83, v50);
    v85 = v192;
    if (!*&v211[0])
    {
      goto LABEL_41;
    }

    memcpy(__dst, v211, sizeof(__dst));
    __swift_project_boxed_opaque_existential_1(v68 + 9, v68[12]);
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      outlined destroy of AppShortcutGeneralizedInvocation(__dst);
LABEL_42:
      v86 = v193;
      v87 = v168;
      v88 = v179;
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      __swift_project_value_buffer(v89, static Logger.voiceCommands);
      (*(v87 + 16))(v88, v41, v86);
      v90 = Logger.logObject.getter();
      v91 = v87;
      v92 = v88;
      v93 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v90, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&__dst[0] = v95;
        *v94 = 136315138;
        v96 = USOParse.debugDescription.getter();
        v98 = v97;
        (*(v91 + 8))(v92, v86);
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, __dst);

        *(v94 + 4) = v99;
        _os_log_impl(&dword_0, v90, v93, "Cannot find flow for the uso parse: %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v95);

        v100 = v189;
      }

      else
      {

        (*(v87 + 8))(v92, v86);
        v100 = v49;
      }

      outlined destroy of Any?(v100, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v80 = type metadata accessor for FlowSearchResult();
      v81 = v192;
      v101 = 1;
      return __swift_storeEnumTagSinglePayload(v81, v101, 1, v80);
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v162 = type metadata accessor for Logger();
    __swift_project_value_buffer(v162, static Logger.voiceCommands);
    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&dword_0, v163, v164, "#SiriLinkFlowPlugin Starting Generalized AutoShortcutFlow", v165, 2u);
    }

    outlined init with copy of DeviceState((v68 + 14), v211);
    outlined init with copy of DeviceState((v68 + 19), v210);
    outlined init with copy of DeviceState((v68 + 34), &v207);
    outlined init with copy of DeviceState((v68 + 45), &v204);
    outlined init with copy of DeviceState((v68 + 9), &v201);
    type metadata accessor for AutoShortcutFlow();
    v166 = swift_allocObject();
    *(v166 + 40) = &type metadata for AppShortcutGeneralizedInvocation;
    *(v166 + 48) = &protocol witness table for AppShortcutGeneralizedInvocation;
    v167 = swift_allocObject();
    *(v166 + 16) = v167;
    outlined init with copy of AppShortcutGeneralizedInvocation(__dst, v167 + 16);
    outlined init with take of AceServiceInvokerAsync(v211, v166 + 56);
    outlined init with take of AceServiceInvokerAsync(v210, v166 + 136);
    outlined init with take of AceServiceInvokerAsync(&v207, v166 + 176);
    outlined init with take of AceServiceInvokerAsync(&v204, v166 + 216);
    outlined init with take of AceServiceInvokerAsync(&v201, v166 + 96);
    *(v166 + 272) = 0;
    *(v166 + 256) = closure #1 in variable initialization expression of static AutoShortcutFlow.defaultRunner;
    *(v166 + 264) = 0;
    *&v211[0] = v166;
    lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type AutoShortcutFlow and conformance AutoShortcutFlow, 255, type metadata accessor for AutoShortcutFlow, &protocol conformance descriptor for AutoShortcutFlow);
    Flow.eraseToAnyFlow()();

    static FlowSearchResult.flow(_:)();

    outlined destroy of AppShortcutGeneralizedInvocation(__dst);
    goto LABEL_71;
  }

  v82 = v181;
  Siri_Nlu_External_UserDialogAct.convertToVoiceCommandTask()(v181);
  (*(*(v50 - 8) + 8))(v71, v50);
  if (__swift_getEnumTagSinglePayload(v82, 1, v182) == 1)
  {
    goto LABEL_34;
  }

  v102 = v178;
  outlined init with take of VoiceCommandTask(v82, v178, type metadata accessor for VoiceCommandTask);
  v103 = v176;
  outlined init with copy of AutoShortcutInvocation(v102, v176, type metadata accessor for VoiceCommandTask);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AutoShortcutInvocation(v103, type metadata accessor for VoiceCommandTask);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    __swift_project_value_buffer(v104, static Logger.voiceCommands);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_0, v105, v106, "#SiriLinkFlowPlugin Starting AutoShortcutsSetEnablementFlow", v107, 2u);
    }

    outlined init with copy of DeviceState((v68 + 9), __dst);
    outlined init with copy of DeviceState((v68 + 19), v211);
    outlined init with copy of DeviceState((v68 + 40), v210);
    v108 = v68[39];
    outlined init with copy of DeviceState((v68 + 34), &v207);
    outlined init with copy of DeviceState((v68 + 50), &v204);
    v109 = v68[55];
    type metadata accessor for AutoShortcutCATsSimple(0);
    v191 = v109;
    static CATOption.defaultMode.getter();
    v188 = CATWrapperSimple.__allocating_init(options:globals:)();
    v110 = type metadata accessor for AppNameResolver();
    v111 = swift_allocObject();
    v112 = type metadata accessor for UserDefaultsWrapper();
    swift_allocObject();
    v113 = UserDefaultsWrapper.init()();
    v193 = v113;
    v190 = type metadata accessor for AutoShortcutsSetEnablementFlow();
    v114 = swift_allocObject();
    v202 = v110;
    v203 = &protocol witness table for AppNameResolver;
    *&v201 = v111;
    v199 = v112;
    v200 = &protocol witness table for UserDefaultsWrapper;
    *&v198 = v113;
    type metadata accessor for WorkflowNLContextProvider();
    *(v114 + 280) = swift_allocObject();
    outlined init with copy of DeviceState(__dst, v114 + 16);
    outlined init with copy of DeviceState(v211, v114 + 56);
    outlined init with copy of DeviceState(__dst, v197);
    outlined init with copy of DeviceState(v210, v194);
    type metadata accessor for AutoShortcutDialogTemplating();
    v115 = swift_allocObject();
    v116 = v195;
    v117 = v196;
    v118 = __swift_mutable_project_boxed_opaque_existential_1(v194, v195);
    __chkstk_darwin(v118);
    v120 = &v168 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v121 + 16))(v120);
    v122 = specialized AutoShortcutDialogTemplating.init(deviceState:autoShortcutCATs:autoShortcutCATsSimple:linkActionPatterns:)(v197, v108, v188, v120, v115, v116, v117);

    __swift_destroy_boxed_opaque_existential_1Tm(v194);
    *(v114 + 96) = v122;
    outlined init with copy of DeviceState(__dst, v197);
    outlined init with copy of DeviceState(v210, v194);
    type metadata accessor for RunLinkActionCATs(0);
    static CATOption.defaultMode.getter();
    v187 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunLinkActionCATsSimple(0);
    static CATOption.defaultMode.getter();
    v123 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs(0);
    static CATOption.defaultMode.getter();
    v124 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple(0);
    static CATOption.defaultMode.getter();
    v125 = CATWrapperSimple.__allocating_init(options:globals:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v210);
    __swift_destroy_boxed_opaque_existential_1Tm(v211);
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
    type metadata accessor for LinkActionDialogTemplating();
    v126 = swift_allocObject();
    v128 = v195;
    v127 = v196;
    v129 = __swift_mutable_project_boxed_opaque_existential_1(v194, v195);
    __chkstk_darwin(v129);
    v131 = &v168 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v132 + 16))(v131);
    v133 = specialized LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)(v197, v187, v123, v124, v125, v131, v126, v128, v127);

    __swift_destroy_boxed_opaque_existential_1Tm(v194);
    *(v114 + 104) = v133;
    outlined init with take of AceServiceInvokerAsync(&v207, v114 + 112);
    outlined init with take of AceServiceInvokerAsync(&v204, v114 + 152);
    outlined init with take of AceServiceInvokerAsync(&v201, v114 + 192);
    *(v114 + 232) = v191;
    outlined init with take of AceServiceInvokerAsync(&v198, v114 + 240);
    *(v114 + 288) = 0u;
    *(v114 + 304) = 0u;
    *(v114 + 320) = 0u;
    *(v114 + 336) = 0u;
    *(v114 + 352) = 0x80;
    *&__dst[0] = v114;
    v134 = lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type AutoShortcutsSetEnablementFlow and conformance AutoShortcutsSetEnablementFlow, 255, type metadata accessor for AutoShortcutsSetEnablementFlow, &protocol conformance descriptor for AutoShortcutsSetEnablementFlow);
    v135 = v173;
    v136 = v190;
    Flow.toActingFlow()();

    *&__dst[0] = v136;
    *(&__dst[0] + 1) = v134;
    swift_getOpaqueTypeConformance2();
    v137 = v192;
    v138 = v175;
    static FlowSearchResult.flow<A>(_:)();
    (*(v174 + 8))(v135, v138);
    outlined destroy of AutoShortcutInvocation(v178, type metadata accessor for VoiceCommandTask);
    outlined destroy of Any?(v189, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v80 = type metadata accessor for FlowSearchResult();
    v81 = v137;
    goto LABEL_72;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v150 = type metadata accessor for Logger();
  __swift_project_value_buffer(v150, static Logger.voiceCommands);
  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_0, v151, v152, "#SiriLinkFlowPlugin Starting WFRunVoiceShortcutFlow", v153, 2u);
  }

  outlined init with copy of DeviceState((v68 + 9), __dst);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v154 = static VoiceCommandsAppPolicyHandler.instance;
  v155 = type metadata accessor for WFRunVoiceShortcutFlow(0);
  v156 = swift_allocObject();

  *&__dst[0] = specialized WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(__dst, v154, v156);
  v157 = lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type WFRunVoiceShortcutFlow and conformance WFRunVoiceShortcutFlow, 255, type metadata accessor for WFRunVoiceShortcutFlow, &protocol conformance descriptor for WFRunVoiceShortcutFlow);
  v158 = v169;
  Flow.toActingFlow()();

  *&__dst[0] = v155;
  *(&__dst[0] + 1) = v157;
  swift_getOpaqueTypeConformance2();
  v159 = v192;
  v160 = v171;
  static FlowSearchResult.flow<A>(_:)();
  (*(v170 + 8))(v158, v160);
  outlined destroy of AutoShortcutInvocation(v178, type metadata accessor for VoiceCommandTask);
  outlined destroy of Any?(v49, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v161 = type metadata accessor for FlowSearchResult();
  __swift_storeEnumTagSinglePayload(v159, 0, 1, v161);
  return outlined destroy of AutoShortcutInvocation(v103, type metadata accessor for ShortcutIdentification);
}