uint64_t VideoPlayerCollectionContaining.container(at:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_110_1(a1, a2);
  v4 = v3(v2);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [v4 cellForItemAtIndexPath_];

  if (v6)
  {
    ObjectType = swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v6, ObjectType, &protocol descriptor for VideoPlayerContaining);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t VideoPlayerTableContaining.visibleIndexPaths()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = [v2 indexPathsForVisibleRows];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for IndexPath();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t VideoPlayerTableContaining.container(at:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_110_1(a1, a2);
  v4 = v3(v2);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [v4 cellForRowAtIndexPath_];

  if (v6)
  {
    ObjectType = swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v6, ObjectType, &protocol descriptor for VideoPlayerContaining);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

BOOL closure #1 in VideoPlayerListContaining<>.autoplayCandidates(withEdgeBias:)(uint64_t a1)
{
  v1 = IndexPath.section.getter();
  if (v1 == IndexPath.section.getter())
  {
    v2 = IndexPath.item.getter();
    v3 = IndexPath.item.getter();
  }

  else
  {
    v2 = IndexPath.section.getter();
    v3 = IndexPath.section.getter();
  }

  return v2 < v3;
}

uint64_t closure #4 in VideoPlayerListContaining<>.autoplayCandidates(withEdgeBias:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, char *a5@<X8>)
{
  v10 = (*(a4 + 8))(a1, a3, a4);
  if (v11)
  {
    v12 = type metadata accessor for AutoplayCandidate(0);
    v13 = a5;
    v14 = 1;
  }

  else
  {
    v15 = v10;
    if ((*(a4 + 32))(a1, a3, a4))
    {
      v17 = v16;
      v18 = type metadata accessor for AutoplayCandidate(0);
      v19 = v18[5];
      v20 = type metadata accessor for IndexPath();
      (*(*(v20 - 8) + 16))(&a5[v19], a1, v20);
      ObjectType = swift_getObjectType();
      v22 = (*(v17 + 40))(ObjectType, v17);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      swift_unknownObjectRelease();
      *a5 = v15;
      v29 = &a5[v18[6]];
      *v29 = v22;
      *(v29 + 1) = v24;
      *(v29 + 2) = v26;
      *(v29 + 3) = v28;
      *&a5[v18[7]] = a2;
      v13 = a5;
      v14 = 0;
      v12 = v18;
    }

    else
    {
      v30 = type metadata accessor for AutoplayCandidate(0);
      v31 = v30[5];
      v32 = type metadata accessor for IndexPath();
      (*(*(v32 - 8) + 16))(&a5[v31], a1, v32);
      *a5 = v15;
      v33 = &a5[v30[6]];
      *v33 = vdupq_n_s64(0x43E0000000000000uLL);
      v33[1].i64[0] = 0;
      v33[1].i64[1] = 0;
      *&a5[v30[7]] = a2;
      v13 = a5;
      v14 = 0;
      v12 = v30;
    }
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
}

double VideoPlayerContaining.videoRectInWindowCoordinates.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = v3();
  v5 = OUTLINED_FUNCTION_45_1();
  v6 = (v3)(v5);
  [v6 bounds];
  OUTLINED_FUNCTION_40_1();

  v7 = OUTLINED_FUNCTION_35();
  [v8 v9];
  OUTLINED_FUNCTION_40_1();

  return round(v2);
}

CGFloat CGRect.centerPoint.getter()
{
  OUTLINED_FUNCTION_20_2();
  v0 = CGRectGetWidth(v2) * 0.5;
  OUTLINED_FUNCTION_18_30();
  CGRectGetHeight(v3);
  return v0;
}

double CGRect.bottomCenterPoint.getter(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_20_2();
  v4 = v3();
  OUTLINED_FUNCTION_18_30();
  a2();
  return v4;
}

double CGPoint.closestDistance(to:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  MidX = CGRectGetMidX(*&a1);
  v38.origin.x = OUTLINED_FUNCTION_6_48();
  *v37 = MidX;
  v37[1] = CGRectGetMinY(v38);
  v39.origin.x = OUTLINED_FUNCTION_6_48();
  MinX = CGRectGetMinX(v39);
  v40.origin.x = OUTLINED_FUNCTION_6_48();
  *&v37[2] = MinX;
  v37[3] = CGRectGetMinY(v40);
  v41.origin.x = OUTLINED_FUNCTION_6_48();
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = OUTLINED_FUNCTION_6_48();
  *&v37[4] = MaxX;
  v37[5] = CGRectGetMinY(v42);
  v43.origin.x = OUTLINED_FUNCTION_6_48();
  v11 = CGRectGetMinX(v43);
  v44.origin.x = OUTLINED_FUNCTION_6_48();
  *&v37[6] = v11;
  v37[7] = CGRectGetMidY(v44);
  v45.origin.x = OUTLINED_FUNCTION_6_48();
  v12 = CGRectGetMaxX(v45);
  v46.origin.x = OUTLINED_FUNCTION_6_48();
  *&v37[8] = v12;
  v37[9] = CGRectGetMidY(v46);
  v47.origin.x = OUTLINED_FUNCTION_6_48();
  v13 = CGRectGetMinX(v47);
  v48.origin.x = OUTLINED_FUNCTION_6_48();
  *&v37[10] = v13;
  v37[11] = CGRectGetMaxY(v48);
  v49.origin.x = OUTLINED_FUNCTION_6_48();
  v14 = CGRectGetMidX(v49);
  v50.origin.x = OUTLINED_FUNCTION_6_48();
  *&v37[12] = v14;
  v37[13] = CGRectGetMaxY(v50);
  v51.origin.x = OUTLINED_FUNCTION_6_48();
  v15 = CGRectGetMaxX(v51);
  v52.origin.x = OUTLINED_FUNCTION_6_48();
  *&v37[14] = v15;
  v37[15] = CGRectGetMaxY(v52);
  v36 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0);
  v16 = 0;
  v17 = v36;
  v18 = *(v36 + 16);
  v19 = 24 * v18;
  do
  {
    v20 = *&v37[2 * v16];
    v21 = *(v17 + 24);
    v22 = v18 + v16 + 1;
    if (v18 + v16 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v21);
      OUTLINED_FUNCTION_135();
      v35 = v26;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27, v28, v29);
      v20 = v35;
    }

    v23 = OUTLINED_FUNCTION_84_2(*&v20 - a5, *(&v20 + 1) - a6);
    ++v16;
    *(v17 + 16) = v22;
    v24 = v17 + v19;
    *(v24 + 32) = v23;
    *(v24 + 40) = v25;
    v19 += 24;
  }

  while (v16 != 8);
  v30 = *(v17 + 32);
  v31 = v18 + 7;
  if (v18 != -7)
  {
    v32 = v17 + 72;
    do
    {
      v33 = *(v32 - 16);
      v32 += 24;
      if (v33 < v30)
      {
        v30 = v33;
      }

      --v31;
    }

    while (v31);
  }

  return v30;
}

double UIScrollView.videoSafeArea.getter()
{
  [v0 bounds];
  OUTLINED_FUNCTION_40_1();
  [v0 safeAreaInsets];
  v1 = OUTLINED_FUNCTION_35();

  return UIEdgeInsetsInsetRect(v1, v2, v3, v4, v5, v6);
}

uint64_t _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSi_15ConversationKit17AutoplayCandidateVSaySi_AGtGTt1g506_sSa15ef49E3map33_D500BD934DFCA1988754422B7642B6E1LL13usingb45FromSDyqd__xGqd__xXE_tSHRd__lFxx_xtXEfU0_AA17gH7V_SiTg5Tf1nc_n(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15ConversationKit17AutoplayCandidateVGMd, &_ss18_DictionaryStorageCySi15ConversationKit17AutoplayCandidateVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t Dictionary<>.numberItemsInSection(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t Dictionary<>.previousIndexPath(from:)(uint64_t a1, uint64_t a2)
{
  v3 = IndexPath.item.getter();
  for (i = IndexPath.section.getter(); (i & 0x8000000000000000) == 0; --i)
  {
    result = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x1BFB1A660]();
      break;
    }

    if (*(a2 + 16) && (v6 = OUTLINED_FUNCTION_57_0(), v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) != 0))
    {
      v3 = *(*(a2 + 56) + 8 * v7);
    }

    else
    {
      v3 = 0;
    }
  }

  type metadata accessor for IndexPath();
  v9 = OUTLINED_FUNCTION_2_23();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Dictionary<>.nextIndexPath(from:)(uint64_t a1, uint64_t a2)
{
  v3 = IndexPath.item.getter();
  result = IndexPath.section.getter();
  v5 = result;
  v6 = *(a2 + 16);
  if (result >= v6)
  {
LABEL_10:
    if (v5 < v6)
    {
      v10 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1BFB1A660](v10);
    }

LABEL_12:
    type metadata accessor for IndexPath();
    v11 = OUTLINED_FUNCTION_2_23();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    while (1)
    {
      v7 = __OFADD__(v3, 1);
      v8 = v3 + 1;
      if (v7)
      {
        break;
      }

      if (v6 && (result = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        if (v8 < *(*(a2 + 56) + 8 * result))
        {
          goto LABEL_10;
        }
      }

      else if (v8 < 0)
      {
        goto LABEL_10;
      }

      ++v5;
      v3 = -1;
      if (v5 >= v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void IndexPathMappable.prefetchIndexPathsFor(_:amount:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_17_1();
  v9 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v89 = v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v88 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v80 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32();
  v90 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  v82 = v22;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v76 = v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_73_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v81 = v28;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_72_4();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_26_7();
  if (!v8)
  {
LABEL_63:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v74 = v32;
  v33 = (*(v4 + 8))(v6, v4);
  v79 = v11;
  v34 = v11 + 16;
  v77 = v0;
  OUTLINED_FUNCTION_92_0();
  v83 = v35;
  v35();
  v36 = 1;
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v9);
  if (v8 > 0)
  {
    v40 = 1;
  }

  else
  {
    v40 = v8;
  }

  if (v8 <= 0)
  {
    v41 = -1;
  }

  else
  {
    v41 = v8;
  }

  v85 = v41;
  v93 = (v34 + 16);
  v94 = MEMORY[0x1E69E7CC0];
  v84 = v2;
  v91 = (v34 - 8);
  v42 = 1;
  v86 = 1;
  v92 = 1;
  v43 = v90;
  v44 = v82;
  v87 = v33;
  while (1)
  {
    if (v40 < 0 && (v92 & 1) != 0)
    {
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      OUTLINED_FUNCTION_3_62(v2);
      if (v45)
      {
        (v83)(v43, v77, v9);
        OUTLINED_FUNCTION_3_62(v2);
        if (!v45)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        }
      }

      else
      {
        (*v93)(v43, v2, v9);
      }

      v47 = OUTLINED_FUNCTION_43_0();
      Dictionary<>.previousIndexPath(from:)(v47, v48);
      (*v91)(v43, v9);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      OUTLINED_FUNCTION_106_1();
      outlined init with take of URL?();
      OUTLINED_FUNCTION_93_1();
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      v46 = 1;
      OUTLINED_FUNCTION_3_62(v81);
      if (v45)
      {
        v49 = 0;
      }

      else
      {
        v49 = 1;
      }

      v50 = OUTLINED_FUNCTION_139();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, v51, &_s10Foundation9IndexPathVSgMR);
      v92 = v49;
      v36 = v49;
      if (v42)
      {
        goto LABEL_47;
      }

      if ((v49 & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_42:
      v46 = 0;
LABEL_45:
      v36 = 1;
      goto LABEL_47;
    }

    if (v86)
    {
      break;
    }

    if ((v42 & 1) == 0)
    {
      if ((v36 & 1) == 0)
      {
LABEL_62:

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        goto LABEL_63;
      }

      v46 = 0;
      v86 = 0;
      goto LABEL_45;
    }

    v86 = 0;
    v46 = 1;
LABEL_47:
    OUTLINED_FUNCTION_33_0();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    OUTLINED_FUNCTION_3_62(v44);
    if (v45)
    {
      v43 = v90;
      v33 = v87;
    }

    else
    {
      v64 = v36;
      v65 = *v93;
      (*v93)(v88, v44, v9);
      OUTLINED_FUNCTION_92_0();
      v83();
      v66 = v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v87;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_43();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v66 = v72;
      }

      v69 = *(v66 + 16);
      v68 = *(v66 + 24);
      if (v69 >= v68 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v68);
        OUTLINED_FUNCTION_135();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v94 = v73;
      }

      else
      {
        v94 = v66;
      }

      (*(v79 + 8))(v88, v9);
      *(v94 + 16) = v69 + 1;
      OUTLINED_FUNCTION_40_3();
      v65(v71 + v70 + *(v79 + 72) * v69, v89, v9);
      v43 = v90;
      v44 = v82;
      v36 = v64;
    }

    if (v40 == v85)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);

      goto LABEL_63;
    }

    v42 = v46;
    v56 = __OFADD__(v40++, 1);
    v2 = v84;
    if (v56)
    {
      goto LABEL_65;
    }
  }

  v78 = v36;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_3_62(v76);
  if (v45)
  {
    (v83)(v80, v77, v9);
    OUTLINED_FUNCTION_3_62(v76);
    if (!v45)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v76, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    v52();
  }

  v53 = IndexPath.item.getter();
  v54 = IndexPath.section.getter();
  v55 = *(v33 + 16);
  if (v54 >= v55)
  {
LABEL_37:
    if (v54 >= v55)
    {
LABEL_39:
      v60 = 1;
      v44 = v82;
      v59 = v74;
    }

    else
    {
      v59 = v74;
      MEMORY[0x1BFB1A660](v53, v54);
      v60 = 0;
      v44 = v82;
    }

    (*v91)(v80, v9);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v46 = 1;
    __swift_storeEnumTagSinglePayload(v59, v60, 1, v9);
    OUTLINED_FUNCTION_106_1();
    outlined init with take of URL?();
    OUTLINED_FUNCTION_93_1();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v9);
    v62 = OUTLINED_FUNCTION_139();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, v63, &_s10Foundation9IndexPathVSgMR);
    if (EnumTagSinglePayload != 1)
    {
      v86 = 1;
      v36 = v78;
      goto LABEL_47;
    }

    v86 = 0;
    if ((v78 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_42;
  }

  while (1)
  {
    v56 = __OFADD__(v53++, 1);
    if (v56)
    {
      break;
    }

    if (v55 && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(v54), (v58 & 1) != 0))
    {
      if (v53 < *(*(v33 + 56) + 8 * v57))
      {
        goto LABEL_37;
      }
    }

    else if (v53 < 0)
    {
      goto LABEL_37;
    }

    ++v54;
    v53 = -1;
    if (v54 >= v55)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

void *_s15ConversationKit17IndexPathMappablePAAE7mapping4from2inSDyS2iGSo21UITableViewDataSource_p_So0iJ0CtFAJ_Tt1g5(void *a1, void *a2)
{
  if ([a1 respondsToSelector_])
  {
    v4 = [a1 numberOfSectionsInTableView_];
    v5 = Dictionary.init(dictionaryLiteral:)();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = v5;
      swift_unknownObjectRetain();
      v7 = a2;
      for (i = 0; ; ++i)
      {
        if (v4 == i)
        {

          swift_unknownObjectRelease();
          return v6;
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v9 = [a1 tableView:v7 numberOfRowsInSection:i];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = specialized __RawDictionaryStorage.find<A>(_:)(i);
        v13 = v6[2];
        v14 = (v12 & 1) == 0;
        v15 = v13 + v14;
        if (__OFADD__(v13, v14))
        {
          goto LABEL_20;
        }

        v16 = v11;
        v17 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2iGMd, &_ss17_NativeDictionaryVyS2iGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
        {
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(i);
          if ((v17 & 1) != (v19 & 1))
          {
            goto LABEL_23;
          }

          v16 = v18;
        }

        if (v17)
        {
          *(v6[7] + 8 * v16) = v9;
        }

        else
        {
          v6[(v16 >> 6) + 8] |= 1 << v16;
          *(v6[6] + 8 * v16) = i;
          *(v6[7] + 8 * v16) = v9;
          v20 = v6[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v6[2] = v22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
LABEL_23:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {

    return Dictionary.init(dictionaryLiteral:)();
  }

  return result;
}

void IndexPathMappable.mapping(from:in:)(void *a1, void *a2)
{
  if ([a1 respondsToSelector_])
  {
    v5 = [a1 numberOfSectionsInTableView_];
    v6 = Dictionary.init(dictionaryLiteral:)();
    if ((v5 & 0x8000000000000000) == 0)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      v8 = a2;
      for (i = 0; ; ++i)
      {
        if (v5 == i)
        {

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_1_3();
          return;
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        OUTLINED_FUNCTION_97_0();
        v12 = [v10 v11];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized __RawDictionaryStorage.find<A>(_:)(i);
        OUTLINED_FUNCTION_126();
        if (v16)
        {
          goto LABEL_20;
        }

        v17 = v14;
        v18 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2iGMd, &_ss17_NativeDictionaryVyS2iGMR);
        OUTLINED_FUNCTION_130_0();
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v2))
        {
          v19 = specialized __RawDictionaryStorage.find<A>(_:)(i);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_23;
          }

          v17 = v19;
        }

        if (v18)
        {
          *(*(v7 + 56) + 8 * v17) = v12;
        }

        else
        {
          OUTLINED_FUNCTION_48_9();
          if (v16)
          {
            goto LABEL_21;
          }

          *(v7 + 16) = v21;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
LABEL_23:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_1_3();

    Dictionary.init(dictionaryLiteral:)();
  }
}

{
  if ([a1 respondsToSelector_])
  {
    v5 = [a1 numberOfSectionsInCollectionView_];
  }

  else
  {
    v5 = 1;
  }

  v6 = Dictionary.init(dictionaryLiteral:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = v6;
    swift_unknownObjectRetain();
    v8 = a2;
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_1_3();
        return;
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_97_0();
      v12 = [v10 v11];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized __RawDictionaryStorage.find<A>(_:)(i);
      OUTLINED_FUNCTION_126();
      if (v16)
      {
        goto LABEL_19;
      }

      v17 = v14;
      v18 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2iGMd, &_ss17_NativeDictionaryVyS2iGMR);
      OUTLINED_FUNCTION_130_0();
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v2))
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(i);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_22;
        }

        v17 = v19;
      }

      if (v18)
      {
        *(*(v7 + 56) + 8 * v17) = v12;
      }

      else
      {
        OUTLINED_FUNCTION_48_9();
        if (v16)
        {
          goto LABEL_20;
        }

        *(v7 + 16) = v21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
LABEL_22:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *_s15ConversationKit17IndexPathMappablePAAE7mapping4from2inSDyS2iGSo26UICollectionViewDataSource_p_So0iJ0CtFAJ_Tt1g5(void *a1, void *a2)
{
  if ([a1 respondsToSelector_])
  {
    v4 = [a1 numberOfSectionsInCollectionView_];
  }

  else
  {
    v4 = 1;
  }

  v5 = Dictionary.init(dictionaryLiteral:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    swift_unknownObjectRetain();
    v7 = a2;
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        swift_unknownObjectRelease();
        return v6;
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = [a1 collectionView:v7 numberOfItemsInSection:i];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(i);
      v13 = v6[2];
      v14 = (v12 & 1) == 0;
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        goto LABEL_19;
      }

      v16 = v11;
      v17 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2iGMd, &_ss17_NativeDictionaryVyS2iGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
      {
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(i);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_22;
        }

        v16 = v18;
      }

      if (v17)
      {
        *(v6[7] + 8 * v16) = v9;
      }

      else
      {
        v6[(v16 >> 6) + 8] |= 1 << v16;
        *(v6[6] + 8 * v16) = i;
        *(v6[7] + 8 * v16) = v9;
        v20 = v6[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_20;
        }

        v6[2] = v22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t UICollectionView.mapping()(uint64_t (*a1)(void))
{
  if ([v1 dataSource])
  {
    v3 = a1();
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {

    return Dictionary.init(dictionaryLiteral:)();
  }
}

uint64_t IndexPathMappable<>.mapping()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a1, a3);
  v4 = OUTLINED_FUNCTION_247();
  IndexPathMappable.mapping(from:in:)(v4, v3);
  v6 = v5;

  return v6;
}

{
  (*(a3 + 16))(a1, a3);
  v4 = OUTLINED_FUNCTION_247();
  IndexPathMappable.mapping(from:in:)(v4, v3);
  v6 = v5;

  return v6;
}

uint64_t key path getter for RecentsCollectionViewGridCell.PlayBinding.playing : RecentsCollectionViewGridCell.PlayBinding@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

uint64_t RecentsCollectionViewGridCell.PlayBinding.playing.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v3 + 200))();

  OUTLINED_FUNCTION_4_5(v2 + 16, v4);
  return *(v2 + 16);
}

uint64_t RecentsCollectionViewGridCell.PlayBinding.playing.setter(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_3_5(v1 + 16, v7);
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_0_5();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_63_2();
    v6();
  }

  return result;
}

uint64_t (*RecentsCollectionViewGridCell.PlayBinding.playing.modify())()
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 200))();

  OUTLINED_FUNCTION_43_9(v4, v5);
  OUTLINED_FUNCTION_54_7();
  v8 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v6, v7, &protocol conformance descriptor for RecentsCollectionViewGridCell.PlayBinding);
  OUTLINED_FUNCTION_19_17(v8);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = RecentsCollectionViewGridCell.PlayBinding._playing.modify();
  return RecentsCollectionViewGridCell.PlayBinding.playing.modify;
}

uint64_t key path getter for RecentsCollectionViewGridCell.PlayBinding.isSensitive : RecentsCollectionViewGridCell.PlayBinding@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t RecentsCollectionViewGridCell.PlayBinding.isSensitive.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v3 + 200))();

  OUTLINED_FUNCTION_4_5(v2 + 17, v4);
  return *(v2 + 17);
}

uint64_t RecentsCollectionViewGridCell.PlayBinding.isSensitive.setter(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_3_5(v1 + 17, v7);
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_0_5();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_63_2();
    v6();
  }

  return result;
}

uint64_t (*RecentsCollectionViewGridCell.PlayBinding.isSensitive.modify())()
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 200))();

  OUTLINED_FUNCTION_43_9(v4, v5);
  OUTLINED_FUNCTION_54_7();
  v8 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v6, v7, &protocol conformance descriptor for RecentsCollectionViewGridCell.PlayBinding);
  OUTLINED_FUNCTION_19_17(v8);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = RecentsCollectionViewGridCell.PlayBinding._isSensitive.modify();
  return RecentsCollectionViewGridCell.PlayBinding.isSensitive.modify;
}

uint64_t RecentsCollectionViewGridCell.PlayBinding.deinit()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit29RecentsCollectionViewGridCell11PlayBinding___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t RecentsCollectionViewGridCell.PlayBinding.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit29RecentsCollectionViewGridCell11PlayBinding___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_38_4();

  return swift_deallocClassInstance();
}

uint64_t RecentsCollectionViewGridCell.PlayBinding.__allocating_init()()
{
  v0 = swift_allocObject();
  RecentsCollectionViewGridCell.PlayBinding.init()(v0);
  return v0;
}

uint64_t RecentsCollectionViewGridCell.PlayBinding.init()(uint64_t a1)
{
  *(v1 + 16) = 0;
  ObservationRegistrar.init()();
  return v1;
}

void (*protocol witness for Playable.playing.modify in conformance RecentsCollectionViewGridCell.PlayBinding(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 144))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for Playable.isSensitive.modify in conformance RecentsCollectionViewGridCell.PlayBinding(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 192))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t key path getter for RecentsCollectionViewGridCell.playing : RecentsCollectionViewGridCell@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

uint64_t (*RecentsCollectionViewGridCell.playing.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell__playing);
  OUTLINED_FUNCTION_0_1();
  *(a1 + 8) = (*(v3 + 128))() & 1;
  return RecentsCollectionViewGridCell.playing.modify;
}

uint64_t key path getter for RecentsCollectionViewGridCell.isSensitive : RecentsCollectionViewGridCell@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*RecentsCollectionViewGridCell.isSensitive.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell__playing);
  OUTLINED_FUNCTION_0_1();
  *(a1 + 8) = (*(v3 + 176))() & 1;
  return RecentsCollectionViewGridCell.isSensitive.modify;
}

uint64_t key path getter for RecentsCollectionViewGridCell.shouldIgnoreSelection : RecentsCollectionViewGridCell@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result & 1;
  return result;
}

uint64_t RecentsCollectionViewGridCell.shouldIgnoreSelection.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_shouldIgnoreSelection;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_shouldIgnoreSelection, a2);
  return *(v2 + v3);
}

uint64_t RecentsCollectionViewGridCell.shouldIgnoreSelection.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_shouldIgnoreSelection;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t key path getter for RecentsCollectionViewGridCell.shouldShowSelectionView : RecentsCollectionViewGridCell@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result & 1;
  return result;
}

uint64_t RecentsCollectionViewGridCell.shouldShowSelectionView.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_shouldShowSelectionView;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_shouldShowSelectionView, a2);
  return *(v2 + v3);
}

uint64_t RecentsCollectionViewGridCell.shouldShowSelectionView.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_shouldShowSelectionView;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t key path getter for RecentsCollectionViewGridCell.delegate : RecentsCollectionViewGridCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for RecentsCollectionViewGridCell.delegate : RecentsCollectionViewGridCell(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void (*RecentsCollectionViewGridCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t RecentsCollectionViewGridCell.needsAXLayout.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  return v1 & 1;
}

void RecentsCollectionViewGridCell.init(coder:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v87 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v86 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_140_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMR);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_4_24();
  v19 = type metadata accessor for ContactAvatarTileView.ImageStyle();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v25 = (v24 - v23);
  v26 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell__playing;
  v27 = type metadata accessor for RecentsCollectionViewGridCell.PlayBinding(0);
  v28 = OUTLINED_FUNCTION_84(v27);
  RecentsCollectionViewGridCell.PlayBinding.init()(v28);
  *&v2[v26] = v28;
  v2[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_shouldIgnoreSelection] = 0;
  v2[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_shouldShowSelectionView] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v85 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel;
  *v25 = static Color.clear.getter();
  (*(v21 + 104))(v25, *MEMORY[0x1E6995B40], v19);
  v29 = type metadata accessor for SystemImage();
  v30 = OUTLINED_FUNCTION_33_16();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v33 = *(v10 + 104);
  v34 = OUTLINED_FUNCTION_46_10();
  v33(v34);
  v35 = OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_120_1(v35, v36, v37);
  v38 = type metadata accessor for ContactAvatarTileView.Caption();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  v42 = OUTLINED_FUNCTION_31_16(v1);
  v33(v42);
  v43 = OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_120_1(v43, v44, v45);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v38);
  v49 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v38);
  v52 = OUTLINED_FUNCTION_31_16(v1);
  v33(v52);
  v53 = OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_120_1(v53, v54, v55);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_134_0(v56, v57, v58, v38);
  type metadata accessor for ContactAvatarTileView.ButtonConfiguration();
  v59 = OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_134_0(v59, v60, v61, v62);
  v63 = type metadata accessor for ContactPosterOrAvatarTileState();
  memset(&v88[1], 0, 32);
  v89 = 0;
  OUTLINED_FUNCTION_84(v63);
  ContactPosterOrAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)();
  v64 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for RecentsCallItem(v64);
  v65 = OUTLINED_FUNCTION_33_16();
  v69 = OUTLINED_FUNCTION_134_0(v65, v66, v67, v68);
  v70 = type metadata accessor for ContactAvatarTileViewModel(v69);
  v71 = OUTLINED_FUNCTION_84(v70);
  v84 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_28_21();
  ContactAvatarTileViewModel.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(v72, v73, v74, v75, v76, v77, v78, v79, 0, 0, v86, v84);
  *&v2[v85] = v71;
  v80 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutline;
  type metadata accessor for CircleCheckmarkView();
  v81 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v81 setTranslatesAutoresizingMaskIntoConstraints_];
  (*((*MEMORY[0x1E69E7D40] & *v81) + 0xC0))(0);
  *&v2[v80] = v81;
  *&v2[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutlineTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutlineTrailingConstraint] = 0;
  v88[0].receiver = v2;
  v88[0].super_class = type metadata accessor for RecentsCollectionViewGridCell();
  v82 = [(objc_super *)v88 initWithCoder:v87];
  if (v82)
  {
    v83 = v82;
    RecentsCollectionViewGridCell.commonInit()();
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsCollectionViewGridCell.commonInit()()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA940;
  v2 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v3 = MEMORY[0x1E69DC2B0];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(swift_allocObject() + 16) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

uint64_t closure #1 in RecentsCollectionViewGridCell.commonInit()(void *a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))(a2);
  if (result)
  {
    return RecentsCollectionViewGridCell.setupHostingView()();
  }

  return result;
}

uint64_t RecentsCollectionViewGridCell.isSelected.setter(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  if ((result & 1) == 0)
  {
    v6 = type metadata accessor for RecentsCollectionViewGridCell();
    v17.receiver = v2;
    v17.super_class = v6;
    result = objc_msgSendSuper2(&v17, sel_isSelected);
    if (result != (a1 & 1))
    {
      if (a1)
      {
        v15.receiver = v2;
        v15.super_class = v6;
        v7 = objc_msgSendSuper2(&v15, sel_setSelected_, 1);
        v8 = v2;
        (*((*v4 & *v2) + 0x138))(v7);
        OUTLINED_FUNCTION_116_1();
        (*(v9 + 192))(1);
      }

      else
      {
        v16.receiver = v2;
        v16.super_class = v6;
        v10 = objc_msgSendSuper2(&v16, sel_setSelected_, 0);
        v8 = v2;
        (*((*v4 & *v2) + 0x138))(v10);
        OUTLINED_FUNCTION_116_1();
        (*(v11 + 192))(0);
      }

      result = (*((*v4 & *v2) + 0xF0))();
      if (result)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        (*(v13 + 8))(v2, a1 & 1, ObjectType, v13);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t key path getter for RecentsCollectionViewGridCell.circleOutline : RecentsCollectionViewGridCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

void RecentsCollectionViewGridCell.circleOutline.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutline;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void closure #1 in RecentsCollectionViewGridCell.layoutSubviews()(void *a1, uint64_t a2)
{
  if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))(a2))
  {
    v3 = *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutlineTopConstraint);
    if (v3)
    {
      v4 = v3;
      v5 = RecentsCollectionViewGridCell.needsAXLayout.getter();
      v6 = 10.0;
      if (v5)
      {
        v6 = 30.0;
      }

      [v4 setConstant_];
    }

    v7 = *(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_circleOutlineTrailingConstraint);
    if (v7)
    {
      v10 = v7;
      v8 = RecentsCollectionViewGridCell.needsAXLayout.getter();
      v9 = -10.0;
      if (v8)
      {
        v9 = -30.0;
      }

      [v10 setConstant_];
    }
  }
}

uint64_t RecentsCollectionViewGridCell.setupHostingView()()
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVyAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaDRd__lFQOyAA19_ConditionalContentVyAE09Sensitivei8AnalysisB0E12interventionyQrAI12InterventionV4KindOFQOyAA08ModifiedI0Vy014CommunicationsB0017ContactAvatarTileE0VAA12_FrameLayoutVG_Qo_AVG_AA7ForEachVySaySo27UIAccessibilityCustomActionCGA0_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGQo_AA05EmptyE0VGMd, &_s7SwiftUI22UIHostingConfigurationVyAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaDRd__lFQOyAA19_ConditionalContentVyAE09Sensitivei8AnalysisB0E12interventionyQrAI12InterventionV4KindOFQOyAA08ModifiedI0Vy014CommunicationsB0017ContactAvatarTileE0VAA12_FrameLayoutVG_Qo_AVG_AA7ForEachVySaySo27UIAccessibilityCustomActionCGA0_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGQo_AA05EmptyE0VGMR);
  OUTLINED_FUNCTION_92_0();
  v5[4] = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v0, v1, v2, v3);
  __swift_allocate_boxed_opaque_existential_1(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityActionsyQrqd__yXEAaBRd__lFQOyAA19_ConditionalContentVyAC09Sensitiveg8AnalysisB0E12interventionyQrAG12InterventionV4KindOFQOyAA08ModifiedG0Vy014CommunicationsB0017ContactAvatarTileC0VAA12_FrameLayoutVG_Qo_ATG_AA7ForEachVySaySo27UIAccessibilityCustomActionCGAzA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGQo_Md, &_s7SwiftUI4ViewPAAE20accessibilityActionsyQrqd__yXEAaBRd__lFQOyAA19_ConditionalContentVyAC09Sensitiveg8AnalysisB0E12interventionyQrAG12InterventionV4KindOFQOyAA08ModifiedG0Vy014CommunicationsB0017ContactAvatarTileC0VAA12_FrameLayoutVG_Qo_ATG_AA7ForEachVySaySo27UIAccessibilityCustomActionCGAzA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGQo_MR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP09Sensitived8AnalysisB0E12interventionyQrAF12InterventionV4KindOFQOyAA08ModifiedD0Vy014CommunicationsB0017ContactAvatarTileE0VAA12_FrameLayoutVG_Qo_ASGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP09Sensitived8AnalysisB0E12interventionyQrAF12InterventionV4KindOFQOyAA08ModifiedD0Vy014CommunicationsB0017ContactAvatarTileE0VAA12_FrameLayoutVG_Qo_ASGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySo27UIAccessibilityCustomActionCGAeA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGMd, &_s7SwiftUI7ForEachVySaySo27UIAccessibilityCustomActionCGAeA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.intervention(_:)>>.0, ModifiedContent<ContactAvatarTileView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ForEach<[UIAccessibilityCustomAction], UIAccessibilityCustomAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>();
  swift_getOpaqueTypeConformance2();
  UIHostingConfiguration<>.init(content:)();
  return MEMORY[0x1BFB216E0](v5);
}

uint64_t closure #1 in RecentsCollectionViewGridCell.setupHostingView()@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI40ContactAvatarTileViewCustomConfigurationVSgMd, &_s16CommunicationsUI40ContactAvatarTileViewCustomConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v49 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMR) - 8;
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v49 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP09Sensitived8AnalysisB0E12interventionyQrAF12InterventionV4KindOFQOyAA08ModifiedD0Vy014CommunicationsB0017ContactAvatarTileE0VAA12_FrameLayoutVG_Qo_ASGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP09Sensitived8AnalysisB0E12interventionyQrAF12InterventionV4KindOFQOyAA08ModifiedD0Vy014CommunicationsB0017ContactAvatarTileE0VAA12_FrameLayoutVG_Qo_ASGMR);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v49 - v8;
  type metadata accessor for RecentsListViewController(0);
  static RecentsListViewController.gridLayoutItemSize()();
  v65 = OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel;
  v9 = *(**&a1[OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel] + 512);

  v9(v86, v10);

  type metadata accessor for MainActor();
  v11 = a1;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycSgMd, &_syycSgMR);
  Binding.init(get:set:)();
  v60 = v83;
  v61 = v82;
  v58 = v85;
  v59 = v84;
  v17 = v11;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v14;
  v19[4] = v17;
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v14;
  Binding.init(get:set:)();
  v56 = v79;
  v57 = v78;
  v54 = v81;
  v55 = v80;
  v22 = v17;
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v14;
  v24[4] = v22;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v14;
  Binding.init(get:set:)();
  v53 = v75;
  v51 = v77;
  v52 = v76;
  v27 = v22;
  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v14;
  v29[4] = v27;
  v30 = static MainActor.shared.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v14;
  Binding.init(get:set:)();
  v50 = v74;
  v32 = v62;
  ContactAvatarTileViewCustomConfiguration.init(needsHStackingSpacing:)();
  v33 = type metadata accessor for ContactAvatarTileViewCustomConfiguration();
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  v34 = v27;
  v35 = static MainActor.shared.getter();
  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = v14;
  v36[4] = v34;
  v37 = v34;
  v38 = static MainActor.shared.getter();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v14;
  v39[4] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CommunicationsUI8MenuItemVGMd, &_sSay16CommunicationsUI8MenuItemVGMR);
  Binding.init(get:set:)();
  v49 = v73;
  v72 = 0;
  static Binding.constant(_:)();
  v40 = v64;
  ContactAvatarTileView.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:customConfig:showSpinner:menuItem:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = &v40[*(v66 + 44)];
  v42 = v40;
  v43 = v86[1];
  *v41 = v86[0];
  *(v41 + 1) = v43;
  *(v41 + 2) = v86[2];
  v44 = *(**&v63[v65] + 416);

  v46 = v68;
  v44(v45);

  v47 = v67;
  specialized View.intervention(forRecentsCallItem:)(v67);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMR);
  v71 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo27UIAccessibilityCustomActionCGAeA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGMd, &_s7SwiftUI7ForEachVySaySo27UIAccessibilityCustomActionCGAeA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.intervention(_:)>>.0, ModifiedContent<ContactAvatarTileView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ForEach<[UIAccessibilityCustomAction], UIAccessibilityCustomAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>();
  View.accessibilityActions<A>(_:)();
  return sub_1BBCE478C(v47);
}

uint64_t closure #1 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()@<X0>(uint64_t a1@<X2>, uint64_t (**a2)()@<X8>)
{
  v3 = *(**(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel) + 176);

  v5 = v3(v4);
  v7 = v6;

  if (v5)
  {
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v7;
    v9 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v9 = 0;
    result = 0;
  }

  *a2 = v9;
  a2[1] = result;
  return result;
}

uint64_t closure #3 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()@<X0>(uint64_t a1@<X2>, uint64_t (**a2)()@<X8>)
{
  v3 = *(**(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel) + 224);

  v5 = v3(v4);
  v7 = v6;

  if (v5)
  {
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v7;
    v9 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v9 = 0;
    result = 0;
  }

  *a2 = v9;
  a2[1] = result;
  return result;
}

uint64_t closure #5 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()@<X0>(uint64_t a1@<X2>, uint64_t (**a2)()@<X8>)
{
  v3 = *(**(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel) + 272);

  v5 = v3(v4);
  v7 = v6;

  if (v5)
  {
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v7;
    v9 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v9 = 0;
    result = 0;
  }

  *a2 = v9;
  a2[1] = result;
  return result;
}

uint64_t closure #7 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()@<X0>(uint64_t a1@<X2>, uint64_t (**a2)()@<X8>)
{
  v3 = *(**(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel) + 320);

  v5 = v3(v4);
  v7 = v6;

  if (v5)
  {
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v7;
    v9 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v9 = 0;
    result = 0;
  }

  *a2 = v9;
  a2[1] = result;
  return result;
}

uint64_t closure #9 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = *(**(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel) + 368);

  v5 = v3(v4);

  v7 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t closure #10 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(**(a4 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel) + 376);

  v4(v5);
}

double specialized View.intervention(forRecentsCallItem:)@<D0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewP09Sensitived8AnalysisB0E12interventionyQrAH12InterventionV4KindOFQOyAA08ModifiedD0Vy014CommunicationsB0017ContactAvatarTileF0VAA12_FrameLayoutVG_Qo_AU_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewP09Sensitived8AnalysisB0E12interventionyQrAH12InterventionV4KindOFQOyAA08ModifiedD0Vy014CommunicationsB0017ContactAvatarTileF0VAA12_FrameLayoutVG_Qo_AU_GMR);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v27 - v2;
  v4 = type metadata accessor for Intervention.Kind();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP024SensitiveContentAnalysisB0E12interventionyQrAD12InterventionV4KindOFQOyAA08ModifiedE0Vy014CommunicationsB0017ContactAvatarTileC0VAA12_FrameLayoutVG_Qo_Md, &_s7SwiftUI4ViewP024SensitiveContentAnalysisB0E12interventionyQrAD12InterventionV4KindOFQOyAA08ModifiedE0Vy014CommunicationsB0017ContactAvatarTileC0VAA12_FrameLayoutVG_Qo_MR);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.nudityDetectionEnabled.getter() & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
LABEL_6:
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    swift_storeEnumTagMultiPayload();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMR);
    v17 = lazy protocol witness table accessor for type ModifiedContent<ContactAvatarTileView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v31 = v16;
    v32 = v17;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return result;
  }

  outlined init with take of AutoplayCandidate();
  if (specialized Array.count.getter() == 1)
  {
    v19 = &v15[*(v13 + 20)];
    v20 = *v19;
    v21 = v19[1];
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  RecentsCallItem.tuHandles.getter();
  v23 = v22;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_24SensitiveContentAnalysis11ParticipantVs5NeverOTg5085_s7SwiftUI4ViewP15ConversationKitE12intervention18forRecentsCallItemQrAD0hiJ0VSg_tF24ef10Analysis11h4VSo8D6CXEfU_SSSgTf1cn_n(v23, v20, v21);

  RecentsCallItem.scaCallType.getter();
  static Intervention.Kind.attemptingToCallViaIntervenableButton(_:callType:)();

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMR);
  v25 = lazy protocol witness table accessor for type ModifiedContent<ContactAvatarTileView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  View.intervention(_:)();
  (*(v27 + 8))(v6, v28);
  v26 = v29;
  (*(v29 + 16))(v3, v9, v7);
  swift_storeEnumTagMultiPayload();
  v31 = v24;
  v32 = v25;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  (*(v26 + 8))(v9, v7);
  outlined destroy of AutoplayCandidate();
  return result;
}

void View.intervention(forRecentsCallItem:)()
{
  OUTLINED_FUNCTION_29();
  v58 = v2;
  v59 = v0;
  v4 = v3;
  v6 = v5;
  v62 = v7;
  v8 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v56 = type metadata accessor for Intervention.Kind();
  OUTLINED_FUNCTION_1();
  v53 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v52 = v18 - v17;
  OUTLINED_FUNCTION_9_35();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v57 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  v55 = v22;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_32();
  v54 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v50 - v27;
  v29 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v51 = v32 - v31;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for _ConditionalContent();
  OUTLINED_FUNCTION_1();
  v60 = v34;
  v61 = v33;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_71_3();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.nudityDetectionEnabled.getter() & 1) == 0)
  {
    goto LABEL_7;
  }

  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_115(v28, 1, v29);
  if (v36)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
LABEL_7:
    OUTLINED_FUNCTION_142();
    static ViewBuilder.buildExpression<A>(_:)();
    OUTLINED_FUNCTION_142();
    static ViewBuilder.buildExpression<A>(_:)();
    OUTLINED_FUNCTION_9_35();
    OUTLINED_FUNCTION_119_0();
    static ViewBuilder.buildEither<A, B>(second:)();
    v37 = *(v8 + 8);
    v37(v11, v6);
    v37(v14, v6);
    goto LABEL_12;
  }

  v38 = v51;
  outlined init with take of AutoplayCandidate();
  if (specialized Array.count.getter() == 1)
  {
    v39 = (v38 + *(v29 + 20));
    v41 = *v39;
    v40 = v39[1];
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  RecentsCallItem.tuHandles.getter();
  v43 = v42;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_24SensitiveContentAnalysis11ParticipantVs5NeverOTg5085_s7SwiftUI4ViewP15ConversationKitE12intervention18forRecentsCallItemQrAD0hiJ0VSg_tF24ef10Analysis11h4VSo8D6CXEfU_SSSgTf1cn_n(v43, v41, v40);

  RecentsCallItem.scaCallType.getter();
  v44 = v52;
  static Intervention.Kind.attemptingToCallViaIntervenableButton(_:callType:)();

  OUTLINED_FUNCTION_142();
  View.intervention(_:)();
  (*(v53 + 8))(v44, v56);
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_119_0();
  v45 = v54;
  OUTLINED_FUNCTION_43_0();
  static ViewBuilder.buildExpression<A>(_:)();
  v46 = *(v57 + 8);
  v47 = OUTLINED_FUNCTION_43_0();
  v46(v47);
  static ViewBuilder.buildExpression<A>(_:)();
  OUTLINED_FUNCTION_43_0();
  static ViewBuilder.buildEither<A, B>(first:)();
  v48 = OUTLINED_FUNCTION_43_0();
  v46(v48);
  (v46)(v45, OpaqueTypeMetadata2);
  outlined destroy of AutoplayCandidate();
LABEL_12:
  OUTLINED_FUNCTION_9_35();
  v63 = OUTLINED_FUNCTION_119_0();
  v64 = v4;
  OUTLINED_FUNCTION_59_1();
  v49 = v61;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  (*(v60 + 8))(v1, v49);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #11 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()(uint64_t a1)
{
  v1 = *(**(a1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel) + 464);

  v1(v2);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo27UIAccessibilityCustomActionCGMd, &_sSaySo27UIAccessibilityCustomActionCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [UIAccessibilityCustomAction] and conformance [A], &_sSaySo27UIAccessibilityCustomActionCGMd, &_sSaySo27UIAccessibilityCustomActionCGMR, MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type UIAccessibilityCustomAction and conformance NSObject();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Label<Text, Image>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR, MEMORY[0x1E697D680]);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #11 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()(void **a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x1E697D658]);
  return Button.init(action:label:)();
}

void closure #1 in closure #1 in closure #11 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()(void *a1)
{
  v2 = [a1 actionHandler];
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, a1);

    _Block_release(v3);
  }
}

uint64_t closure #1 in closure #2 in closure #1 in closure #11 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t closure #2 in closure #2 in closure #1 in closure #11 in closure #1 in RecentsCollectionViewGridCell.setupHostingView()@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (![a1 image])
  {
    [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  result = Image.init(uiImage:)();
  *a2 = result;
  return result;
}

void RecentsCollectionViewGridCell.configure(with:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewGridCell_viewModel);
  v9 = *(*v3 + 512);

  v9(v38, v10);
  OUTLINED_FUNCTION_0_1();
  v12 = (*(v11 + 176))();
  v14 = v13;
  OUTLINED_FUNCTION_0_1();
  v16 = (*(v15 + 224))();
  v18 = v17;
  OUTLINED_FUNCTION_38_4();
  v20 = (*(v19 + 272))();
  v36 = v21;
  v37 = v20;
  OUTLINED_FUNCTION_38_4();
  v35 = (*(v22 + 320))();
  v24 = v23;
  v34 = v23;
  OUTLINED_FUNCTION_38_4();
  v26 = (*(v25 + 368))();
  OUTLINED_FUNCTION_38_4();
  (*(v27 + 416))();
  OUTLINED_FUNCTION_38_4();
  v29 = (*(v28 + 464))();
  (*(*v8 + 544))(v38, v12, v14, v16, v18, v37, v36, v35, v24, v26, v7, v29);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v35, v34);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v37, v36);
  v30 = OUTLINED_FUNCTION_40_2();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v30, v31);
  v32 = OUTLINED_FUNCTION_77_1();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v32, v33);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  __swift_destroy_boxed_opaque_existential_1(v38);
  RecentsCollectionViewGridCell.setupHostingView()();
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall RecentsCollectionViewGridCell.prepareForReuse()()
{
  OUTLINED_FUNCTION_29();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_1();
  v76 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_4_24();
  v75 = type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMR);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_26_7();
  v19 = type metadata accessor for ContactAvatarTileView.ImageStyle();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v25 = (v24 - v23);
  v81.receiver = v0;
  v81.super_class = type metadata accessor for RecentsCollectionViewGridCell();
  objc_msgSendSuper2(&v81, sel_prepareForReuse);
  v26 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))(0);
  OUTLINED_FUNCTION_65();
  v28 = (*(v27 + 224))(0);
  v29 = (*((*v26 & *v0) + 0x138))(v28);
  [v29 setAlpha_];

  OUTLINED_FUNCTION_65();
  (*(v30 + 152))(0);
  OUTLINED_FUNCTION_65();
  (*(v31 + 176))(0);

  *v25 = static Color.clear.getter();
  (*(v21 + 104))(v25, *MEMORY[0x1E6995B40], v19);
  v32 = type metadata accessor for SystemImage();
  v33 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  v36 = *(v7 + 104);
  (v36)(v11, *MEMORY[0x1E6981DF0], v75);
  OUTLINED_FUNCTION_13_36();
  ContactAvatarTileView.Caption.init(subtitle:font:accessory:accessoryColor:blendMode:opacity:)();
  v37 = type metadata accessor for ContactAvatarTileView.Caption();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  v41 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v32);
  v44 = OUTLINED_FUNCTION_46_10();
  v36(v44);
  OUTLINED_FUNCTION_13_36();
  ContactAvatarTileView.Caption.init(subtitle:font:accessory:accessoryColor:blendMode:opacity:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v37);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v37);
  v51 = OUTLINED_FUNCTION_25_4();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v32);
  v54 = OUTLINED_FUNCTION_46_10();
  v36(v54);
  OUTLINED_FUNCTION_13_36();
  ContactAvatarTileView.Caption.init(subtitle:font:accessory:accessoryColor:blendMode:opacity:)();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_134_0(v55, v56, v57, v37);
  type metadata accessor for ContactAvatarTileView.ButtonConfiguration();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_134_0(v58, v59, v60, v61);
  v62 = type metadata accessor for ContactPosterOrAvatarTileState();
  v77 = 0u;
  v78 = 0;
  OUTLINED_FUNCTION_84(v62);
  v63 = ContactPosterOrAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)();
  v79 = v62;
  OUTLINED_FUNCTION_56_5();
  v80 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v64, v65, MEMORY[0x1E6995C30]);
  *&v77 = v63;
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  OUTLINED_FUNCTION_28_21();
  v74(v70, v71, v72, v73);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v76, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  __swift_destroy_boxed_opaque_existential_1(&v77);
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall RecentsCollectionViewGridCell.addSelectionView()()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_104_1();
  if (((*(v2 + 192))() & 1) == 0)
  {
    OUTLINED_FUNCTION_104_1();
    v4 = (*(v3 + 224))(1);
    v5 = *((*v1 & *v0) + 0x138);
    v6 = (v5)(v4);
    [v6 setAlpha_];

    v7 = v5();
    [v0 bringSubviewToFront_];
  }
}

void (*protocol witness for VideoPlayerContaining.playing.modify in conformance RecentsCollectionViewGridCell(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

id RecentsCollectionViewGridCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_18_30();

  return [v2 v3];
}

id CircleCheckmarkView.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

id CircleCheckmarkView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_fillColor;
  v4 = objc_opt_self();
  *&v1[v3] = [v4 systemWhiteColor];
  v5 = OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_borderColor;
  *&v1[v5] = [v4 systemWhiteColor];
  v6 = OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkColor;
  *&v1[v6] = [v4 systemGrayColor];
  *&v1[OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkSize] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkLabel] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_isChecked] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for CircleCheckmarkView();
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    CircleCheckmarkView.setup()();
  }

  return v8;
}

Swift::Void __swiftcall CircleCheckmarkView.toggle()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_isChecked;
  if (v0[OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_isChecked] == 1)
  {
    v2 = [objc_opt_self() clearColor];
    [v0 setBackgroundColor_];

    v3 = [v0 layer];
    [v3 setBorderWidth_];

    v4 = OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkLabel;
    v5 = *&v0[OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkLabel];
    if (v5)
    {
      [v5 removeFromSuperview];
      v6 = *&v0[v4];
    }

    else
    {
      v6 = 0;
    }

    *&v0[v4] = 0;
  }

  else
  {
    [v0 setBackgroundColor_];
    v7 = [v0 layer];
    [v7 setBorderWidth_];

    v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    outlined bridged method (mbnn) of @objc UILabel.text.setter(9673954, 0xA300000000000000, v8);
    [v8 setTextColor_];
    v9 = [objc_opt_self() systemFontOfSize:*&v0[OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkSize] weight:*MEMORY[0x1E69DB978]];
    [v8 setFont_];

    v10 = v8;
    [v10 sizeToFit];
    OUTLINED_FUNCTION_149_0();
    MidX = CGRectGetMidX(v12);
    OUTLINED_FUNCTION_149_0();
    [v10 setCenter_];

    [v0 addSubview_];
    v6 = *&v0[OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkLabel];
    *&v0[OBJC_IVAR____TtC15ConversationKit19CircleCheckmarkView_checkmarkLabel] = v10;
  }

  v0[v1] = (v0[v1] & 1) == 0;
}

id RecentsCollectionViewGridCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t key path getter for ContactAvatarTileViewModel.primaryAction : ContactAvatarTileViewModel@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 176))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for ContactAvatarTileViewModel.primaryAction : ContactAvatarTileViewModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 184);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t ContactAvatarTileViewModel.primaryAction.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ContactAvatarTileViewModel.primaryAction.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_4_5(v2 + 16, v4);
  v5 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v5, v6);
  return OUTLINED_FUNCTION_46();
}

uint64_t closure #1 in ContactAvatarTileViewModel.primaryAction.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2, a3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

uint64_t (*ContactAvatarTileViewModel.primaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_43_9(v4, v5);
  OUTLINED_FUNCTION_2_70();
  v8 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v6, v7, &protocol conformance descriptor for ContactAvatarTileViewModel);
  OUTLINED_FUNCTION_19_17(v8);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ContactAvatarTileViewModel._primaryAction.modify();
  return ContactAvatarTileViewModel.primaryAction.modify;
}

uint64_t key path getter for ContactAvatarTileViewModel.secondaryAction : ContactAvatarTileViewModel@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 224))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for ContactAvatarTileViewModel.secondaryAction : ContactAvatarTileViewModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 232);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t ContactAvatarTileViewModel.secondaryAction.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_4_5(v2 + 32, v4);
  v5 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v5, v6);
  return OUTLINED_FUNCTION_46();
}

uint64_t closure #1 in ContactAvatarTileViewModel.secondaryAction.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2, a3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

uint64_t (*ContactAvatarTileViewModel.secondaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_43_9(v4, v5);
  OUTLINED_FUNCTION_2_70();
  v8 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v6, v7, &protocol conformance descriptor for ContactAvatarTileViewModel);
  OUTLINED_FUNCTION_19_17(v8);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ContactAvatarTileViewModel._secondaryAction.modify();
  return ContactAvatarTileViewModel.secondaryAction.modify;
}

uint64_t key path getter for ContactAvatarTileViewModel.tertiaryAction : ContactAvatarTileViewModel@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 272))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for ContactAvatarTileViewModel.tertiaryAction : ContactAvatarTileViewModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 280);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t ContactAvatarTileViewModel.tertiaryAction.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_4_5(v2 + 48, v4);
  v5 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v5, v6);
  return OUTLINED_FUNCTION_46();
}

uint64_t closure #1 in ContactAvatarTileViewModel.tertiaryAction.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2, a3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

uint64_t (*ContactAvatarTileViewModel.tertiaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_43_9(v4, v5);
  OUTLINED_FUNCTION_2_70();
  v8 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v6, v7, &protocol conformance descriptor for ContactAvatarTileViewModel);
  OUTLINED_FUNCTION_19_17(v8);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ContactAvatarTileViewModel._tertiaryAction.modify();
  return ContactAvatarTileViewModel.tertiaryAction.modify;
}

uint64_t key path getter for ContactAvatarTileViewModel.longPressAction : ContactAvatarTileViewModel@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 320))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for ContactAvatarTileViewModel.longPressAction : ContactAvatarTileViewModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 328);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t ContactAvatarTileViewModel.longPressAction.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_4_5(v2 + 64, v4);
  v5 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v5, v6);
  return OUTLINED_FUNCTION_46();
}

uint64_t ContactAvatarTileViewModel.primaryAction.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 560))();
  v4 = OUTLINED_FUNCTION_33_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
}

uint64_t closure #1 in ContactAvatarTileViewModel.longPressAction.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2, a3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

uint64_t (*ContactAvatarTileViewModel.longPressAction.modify())()
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_43_9(v4, v5);
  OUTLINED_FUNCTION_2_70();
  v8 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v6, v7, &protocol conformance descriptor for ContactAvatarTileViewModel);
  OUTLINED_FUNCTION_19_17(v8);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ContactAvatarTileViewModel._longPressAction.modify();
  return ContactAvatarTileViewModel.longPressAction.modify;
}

uint64_t key path getter for ContactAvatarTileViewModel.menuItems : ContactAvatarTileViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ContactAvatarTileViewModel.menuItems : ContactAvatarTileViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 376);

  return v2(v3);
}

double ContactAvatarTileViewModel.menuItems.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_4_5(v2 + 80, v4);

  return result;
}

double ContactAvatarTileViewModel.menuItems.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_128();
  v2();

  return result;
}

void closure #1 in ContactAvatarTileViewModel.menuItems.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 80) = a2;
}

uint64_t (*ContactAvatarTileViewModel.menuItems.modify())()
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_43_9(v4, v5);
  OUTLINED_FUNCTION_2_70();
  v8 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v6, v7, &protocol conformance descriptor for ContactAvatarTileViewModel);
  OUTLINED_FUNCTION_19_17(v8);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ContactAvatarTileViewModel._menuItems.modify();
  return ContactAvatarTileViewModel.menuItems.modify;
}

uint64_t key path setter for ContactAvatarTileViewModel.recentCallItem : ContactAvatarTileViewModel(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  return (*(**a2 + 424))(v5);
}

uint64_t ContactAvatarTileViewModel.recentCallItem.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__recentCallItem, v4);
  return outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
}

uint64_t ContactAvatarTileViewModel.recentCallItem.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_40_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_97_0();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_45_1();
  v7 = specialized ContactAvatarTileViewModel.shouldNotifyObservers<A>(_:_:)();
  v8 = OUTLINED_FUNCTION_62_0();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, v9, &_s15ConversationKit15RecentsCallItemVSgMR);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_0_5();
    *(v11 - 16) = v1;
    *(v11 - 8) = a1;
    OUTLINED_FUNCTION_63_2();
    v12();
  }

  else
  {
    OUTLINED_FUNCTION_97_0();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    swift_beginAccess();
    OUTLINED_FUNCTION_97_0();
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
}

uint64_t closure #1 in ContactAvatarTileViewModel.recentCallItem.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__recentCallItem;
  swift_beginAccess();
  outlined assign with copy of RecentsCallItem?(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t (*ContactAvatarTileViewModel.recentCallItem.modify())()
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_43_9(v4, v5);
  OUTLINED_FUNCTION_2_70();
  v8 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v6, v7, &protocol conformance descriptor for ContactAvatarTileViewModel);
  OUTLINED_FUNCTION_19_17(v8);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ContactAvatarTileViewModel._recentCallItem.modify();
  return ContactAvatarTileViewModel.recentCallItem.modify;
}

uint64_t key path getter for ContactAvatarTileViewModel.accessibilityCustomActions : ContactAvatarTileViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ContactAvatarTileViewModel.accessibilityCustomActions : ContactAvatarTileViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 472);

  return v2(v3);
}

double ContactAvatarTileViewModel.accessibilityCustomActions.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__accessibilityCustomActions, v4);

  return result;
}

double ContactAvatarTileViewModel.accessibilityCustomActions.setter(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__accessibilityCustomActions;
  OUTLINED_FUNCTION_3_5(v1 + OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__accessibilityCustomActions, v11);

  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo27UIAccessibilityCustomActionC_Tt1g5(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_0_5();
    *(v9 - 16) = v1;
    *(v9 - 8) = a1;
    OUTLINED_FUNCTION_63_2();
    v10();
  }

  return result;
}

void closure #1 in ContactAvatarTileViewModel.accessibilityCustomActions.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__accessibilityCustomActions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*ContactAvatarTileViewModel.accessibilityCustomActions.modify())()
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_43_9(v4, v5);
  OUTLINED_FUNCTION_2_70();
  v8 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v6, v7, &protocol conformance descriptor for ContactAvatarTileViewModel);
  OUTLINED_FUNCTION_19_17(v8);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ContactAvatarTileViewModel._accessibilityCustomActions.modify();
  return ContactAvatarTileViewModel.accessibilityCustomActions.modify;
}

uint64_t ContactAvatarTileViewModel.state.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 552))();

  v5 = OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__state;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__state, v6);
  return outlined init with copy of IDSLookupManager(v2 + v5, a2);
}

uint64_t ContactAvatarTileViewModel.state.setter(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_128();
  v3();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t closure #1 in ContactAvatarTileViewModel.state.setter(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__state;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + v4), a2);
  return swift_endAccess();
}

uint64_t (*ContactAvatarTileViewModel.state.modify())()
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 552))();

  OUTLINED_FUNCTION_43_9(v4, v5);
  OUTLINED_FUNCTION_2_70();
  v8 = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v6, v7, &protocol conformance descriptor for ContactAvatarTileViewModel);
  OUTLINED_FUNCTION_19_17(v8);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ContactAvatarTileViewModel._state.modify();
  return ContactAvatarTileViewModel.state.modify;
}

void RecentsCollectionViewGridCell.PlayBinding.playing.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  OUTLINED_FUNCTION_45_1();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t *ContactAvatarTileViewModel.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[10] = 0;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  v20 = OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__recentCallItem;
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  ObservationRegistrar.init()();
  v25 = (v12 + OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__state);
  v25[3] = type metadata accessor for ContactPosterOrAvatarTileState();
  OUTLINED_FUNCTION_56_5();
  v25[4] = lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v26, v27, MEMORY[0x1E6995C30]);
  *v25 = a1;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v12[2], v12[3]);
  v12[2] = a2;
  v12[3] = a3;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v12[4], v12[5]);
  v12[4] = a4;
  v12[5] = a5;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v12[6], v12[7]);
  v12[6] = a6;
  v12[7] = a7;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v12[8], v12[9]);
  v12[8] = a8;
  v12[9] = a9;

  v12[10] = a10;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12 + v20, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  outlined init with take of URL?();
  *(v12 + OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__accessibilityCustomActions) = a12;
  return v12;
}

void ContactAvatarTileViewModel.update(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_29();
  v23 = v22;
  v106 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_1();
  v105 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMR);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_4_24();
  v30 = type metadata accessor for ContactAvatarTileView.ImageStyle();
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v33 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMR);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v35);
  v36 = *(v23 + 24);
  OUTLINED_FUNCTION_42_14();
  dispatch thunk of ContactAvatarTileStateProviding.primaryCaption.getter();
  OUTLINED_FUNCTION_87_0();
  v38 = *(v37 + 528);
  v39 = OUTLINED_FUNCTION_89_1();
  v40 = v38(v39);
  OUTLINED_FUNCTION_61_5(v40, v41);
  OUTLINED_FUNCTION_70_1();
  dispatch thunk of ContactAvatarTileStateProviding.primaryCaption.setter();
  v42 = OUTLINED_FUNCTION_90_3();
  v36(v42);
  v43 = *(v23 + 24);
  OUTLINED_FUNCTION_42_14();
  dispatch thunk of ContactAvatarTileStateProviding.secondaryCaption.getter();
  v44 = OUTLINED_FUNCTION_89_1();
  v45 = v38(v44);
  OUTLINED_FUNCTION_61_5(v45, v46);
  OUTLINED_FUNCTION_70_1();
  dispatch thunk of ContactAvatarTileStateProviding.secondaryCaption.setter();
  v47 = OUTLINED_FUNCTION_90_3();
  v43(v47);
  v48 = *(v23 + 24);
  OUTLINED_FUNCTION_42_14();
  dispatch thunk of ContactAvatarTileStateProviding.bodyCaption.getter();
  v49 = OUTLINED_FUNCTION_89_1();
  v50 = v38(v49);
  OUTLINED_FUNCTION_61_5(v50, v51);
  OUTLINED_FUNCTION_70_1();
  dispatch thunk of ContactAvatarTileStateProviding.bodyCaption.setter();
  v52 = OUTLINED_FUNCTION_90_3();
  v48(v52);
  v53 = *(v23 + 24);
  v54 = OUTLINED_FUNCTION_77_1();
  __swift_project_boxed_opaque_existential_1(v54, v55);
  dispatch thunk of ContactAvatarBackgroundStateProviding.avatarImageStyle.getter();
  v56 = OUTLINED_FUNCTION_89_1();
  v57 = v38(v56);
  OUTLINED_FUNCTION_61_5(v57, v58);
  dispatch thunk of ContactAvatarBackgroundStateProviding.avatarImageStyle.setter();
  v59 = OUTLINED_FUNCTION_90_3();
  v53(v59);
  v60 = *(v23 + 24);
  v61 = OUTLINED_FUNCTION_77_1();
  __swift_project_boxed_opaque_existential_1(v61, v62);
  OUTLINED_FUNCTION_62_0();
  dispatch thunk of ContactAvatarTileStateProviding.buttonConfiguration.getter();
  v63 = OUTLINED_FUNCTION_89_1();
  v64 = v38(v63);
  v66 = OUTLINED_FUNCTION_76_2(v64, v65);
  __swift_mutable_project_boxed_opaque_existential_1(v66, *(v67 + 24));
  OUTLINED_FUNCTION_141();
  dispatch thunk of ContactAvatarTileStateProviding.buttonConfiguration.setter();
  v68 = OUTLINED_FUNCTION_90_3();
  v60(v68);
  v69 = *(v23 + 24);
  OUTLINED_FUNCTION_42_14();
  dispatch thunk of ContactAvatarTileStateProviding.detailCaption.getter();
  v70 = OUTLINED_FUNCTION_89_1();
  v71 = v38(v70);
  v73 = OUTLINED_FUNCTION_76_2(v71, v72);
  __swift_mutable_project_boxed_opaque_existential_1(v73, *(v74 + 24));
  OUTLINED_FUNCTION_33_0();
  dispatch thunk of ContactAvatarTileStateProviding.detailCaption.setter();
  v75 = OUTLINED_FUNCTION_90_3();
  v69(v75);
  v76 = *(v23 + 24);
  v77 = OUTLINED_FUNCTION_77_1();
  __swift_project_boxed_opaque_existential_1(v77, v78);
  dispatch thunk of ContactAvatarBackgroundStateProviding.playable.getter();
  v79 = v38(v107);
  v81 = OUTLINED_FUNCTION_76_2(v79, v80);
  __swift_mutable_project_boxed_opaque_existential_1(v81, *(v82 + 24));
  dispatch thunk of ContactAvatarBackgroundStateProviding.playable.setter();
  v76(v107, 0);
  v83 = *(*v21 + 184);
  v84 = OUTLINED_FUNCTION_78();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v84, v85);
  v86 = OUTLINED_FUNCTION_78();
  v83(v86);
  v87 = *(*v21 + 232);
  v88 = OUTLINED_FUNCTION_78();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v88, v89);
  v90 = OUTLINED_FUNCTION_78();
  v87(v90);
  OUTLINED_FUNCTION_87_0();
  v92 = *(v91 + 280);
  v93 = OUTLINED_FUNCTION_78();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v93, v94);
  v95 = OUTLINED_FUNCTION_78();
  v92(v95);
  OUTLINED_FUNCTION_87_0();
  v97 = *(v96 + 328);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v106, a21);
  v97(v106, a21);
  OUTLINED_FUNCTION_87_0();
  v99 = *(v98 + 376);

  v99(v100);
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_87_0();
  (*(v101 + 424))(v105);
  OUTLINED_FUNCTION_87_0();
  v103 = *(v102 + 472);

  v103(v104);
  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsCollectionViewGridCell.PlayBinding.access<A>(keyPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_314(a1, a2, a3);
  lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(v3, v4, v5);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t specialized ContactAvatarTileViewModel.shouldNotifyObservers<A>(_:_:)()
{
  v0 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSg_ADtMd, &_s15ConversationKit15RecentsCallItemVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v6 = *(v5 + 56);
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (__swift_getEnumTagSinglePayload(v4, 1, v0) != 1)
  {
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (__swift_getEnumTagSinglePayload(&v4[v6], 1, v0) != 1)
    {
      outlined init with take of AutoplayCandidate();
      static RecentsCallItem.== infix(_:_:)();
      v9 = v8;
      outlined destroy of AutoplayCandidate();
      outlined destroy of AutoplayCandidate();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
      v7 = v9 ^ 1;
      return v7 & 1;
    }

    outlined destroy of AutoplayCandidate();
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v4[v6], 1, v0) != 1)
  {
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit15RecentsCallItemVSg_ADtMd, &_s15ConversationKit15RecentsCallItemVSg_ADtMR);
    v7 = 1;
    return v7 & 1;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  v7 = 0;
  return v7 & 1;
}

uint64_t *ContactAvatarTileViewModel.deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v0[2], v0[3]);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v0[4], v0[5]);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v0[6], v0[7]);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v0[8], v0[9]);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__recentCallItem, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel__state));
  v1 = OBJC_IVAR____TtC15ConversationKit26ContactAvatarTileViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ContactAvatarTileViewModel.__deallocating_deinit()
{
  ContactAvatarTileViewModel.deinit();
  OUTLINED_FUNCTION_38_4();

  return swift_deallocClassInstance();
}

uint64_t RecentsCallItem.scaCallType.getter()
{
  v0 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  if (RecentsCallItem.isTelephony.getter())
  {
    return 3;
  }

  outlined init with copy of AutoplayCandidate();
  OUTLINED_FUNCTION_40_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
      OUTLINED_FUNCTION_55_7();
      goto LABEL_5;
    case 4u:
      OUTLINED_FUNCTION_55_7();
      outlined destroy of AutoplayCandidate();
      return 4;
    default:
      outlined init with take of AutoplayCandidate();
      v7 = *(v4 + *(v0 + 24));
      if (!v7)
      {
        OUTLINED_FUNCTION_50_10();
LABEL_5:
        outlined destroy of AutoplayCandidate();
        return 1;
      }

      v8 = [v7 mediaType];
      OUTLINED_FUNCTION_50_10();
      outlined destroy of AutoplayCandidate();
      if (v8 != 1)
      {
        return 1;
      }

      return 4;
  }
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AH0K9CandidateVtG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_15i5Kit14kl7O_AI0J9M5VtTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiAJ_ALtIsgnndzo_Tf1nc_n04_s15ivkl102O13uponScrolling2in10candidates17isUsingGridLayout15scrollDirection18allowsSimultaneousSo7CGPointV_SDyu8AC_AA0C9my101GtAA0C7ContextV_SayAMGSbSo022UICollectionViewScrollN0VSbtFZ0iD22FreeFromSpuriousPausesL_3url6actionSbU9_AC_AMttFSDySiALGAH0K7ContextVTf1nnc_n(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, char a5, void *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6;
    specialized closure #1 in _NativeDictionary.filter(_:)(v11, a2, a3, a4, a5 & 1, v12);
    v14 = v13;

    return v14;
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Participant(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Participant(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  if (_minimumMergeRunLength(_:)(v2) < v2)
  {
    if (v2 >= -1)
    {
      v3 = v2 / 2;
      if (v2 <= 1)
      {
        v4 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
        v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v4 + 16) = v3;
      }

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
      OUTLINED_FUNCTION_22(v5);
      OUTLINED_FUNCTION_40_3();

      OUTLINED_FUNCTION_97_0();
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)();
      *(v4 + 16) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)();
  }

  swift_bridgeObjectRelease_n();
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)()
{
  OUTLINED_FUNCTION_57_4();
  v97 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v92 = type metadata accessor for AutoplayCandidate(0);
  OUTLINED_FUNCTION_1();
  v84 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v83 = v13;
  OUTLINED_FUNCTION_4_24();
  v94 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v82 = v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  v93 = v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
  MEMORY[0x1EEE9AC00](v98);
  v86 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_143_0();
  v81 = v24;
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_143_0();
  v85 = v26;
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_143_0();
  v100 = v28;
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_143_0();
  v72 = v7;
  if (v5 != v7)
  {
    v99 = v31;
    v70[1] = v0;
    v32 = *v3;
    v33 = *(v30 + 72);
    v90 = (v15 + 32);
    v91 = (v15 + 16);
    v80 = (v15 + 8);
    v34 = v32 + v33 * (v5 - 1);
    v95 = -v33;
    v96 = v32;
    v35 = v9 - v5;
    v71 = v33;
    v36 = v32 + v33 * v5;
    v37 = v85;
LABEL_3:
    v79 = v5;
    v76 = v36;
    v77 = v35;
    v78 = v34;
    while (1)
    {
      v38 = v99;
      OUTLINED_FUNCTION_95_1();
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      OUTLINED_FUNCTION_95_1();
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      if (*v38 != *v100)
      {
        break;
      }

      OUTLINED_FUNCTION_95_1();
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      v39 = *(v37 + *(v98 + 48));
      OUTLINED_FUNCTION_0_75();
      outlined destroy of AutoplayCandidate();
      if (*(v97 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v39);
        if (v40)
        {
          v41 = v83;
          v87 = *(v84 + 72);
          OUTLINED_FUNCTION_1_73();
          outlined init with copy of AutoplayCandidate();
          v42 = v41 + *(v92 + 20);
          v43 = v82;
          v44 = v94;
          v89 = *v91;
          v89(v82, v42, v94);
          outlined destroy of AutoplayCandidate();
          v88 = *v90;
          v88(v93, v43, v44);
          v45 = v81;
          OUTLINED_FUNCTION_95_1();
          outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
          v46 = *(v45 + *(v98 + 48));
          outlined destroy of AutoplayCandidate();
          if (*(v97 + 16))
          {
            specialized __RawDictionaryStorage.find<A>(_:)(v46);
            if (v47)
            {
              OUTLINED_FUNCTION_1_73();
              v48 = v75;
              outlined init with copy of AutoplayCandidate();
              v49 = v74;
              v50 = v94;
              v89(v74, v48 + *(v92 + 20), v94);
              OUTLINED_FUNCTION_0_75();
              outlined destroy of AutoplayCandidate();
              v51 = v73;
              v88(v73, v49, v50);
              v52 = v93;
              v53 = static IndexPath.< infix(_:_:)();
              v54 = *v80;
              v55 = v51;
              v56 = v94;
              (*v80)(v55, v94);
              v54(v52, v56);
              v37 = v85;
              goto LABEL_11;
            }
          }

          (*v80)(v93, v94);
          v37 = v85;
        }
      }

      OUTLINED_FUNCTION_93_1();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, v64, v65);
      OUTLINED_FUNCTION_93_1();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, v67, v68);
LABEL_15:
      if (!v96)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_95_1();
      outlined init with take of URL?();
      swift_arrayInitWithTakeFrontToBack();
      OUTLINED_FUNCTION_95_1();
      outlined init with take of URL?();
      v34 += v95;
      v36 += v95;
      if (__CFADD__(v35++, 1))
      {
LABEL_18:
        v5 = v79 + 1;
        v34 = v78 + v71;
        v35 = v77 - 1;
        v36 = v76 + v71;
        if (v79 + 1 != v72)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v53 = *v38 < *v100;
LABEL_11:
    OUTLINED_FUNCTION_93_1();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, v58, v59);
    OUTLINED_FUNCTION_93_1();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, v61, v62);
    if ((v53 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_19:

  OUTLINED_FUNCTION_51_2();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v8 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v8);
  v143 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v155 = &v133 - v11;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v133 - v14;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v133 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v133 - v21;
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v135 = &v133 - v27;
  v150 = v23;
  v151 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v160 = *v138;
    if (!v160)
    {
      goto LABEL_154;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_113;
    }

    goto LABEL_148;
  }

  v145 = v19;
  v146 = v25;
  v157 = v24;
  v134 = a4;
  v29 = 0;
  v160 = (v23 + 8);
  v158 = (v23 + 32);
  v159 = v23 + 16;
  v30 = MEMORY[0x1E69E7CC0];
  v137 = v15;
  while (1)
  {
    v31 = v29++;
    if (v29 < v28)
    {
      v154 = v28;
      v139 = v31;
      v32 = *v151;
      v33 = *(v23 + 72);
      v149 = v29;
      v34 = v32 + v33 * v29;
      v35 = *(v23 + 16);
      v36 = v135;
      v35(v135, v34, v8, v26);
      v156 = v32;
      v37 = v32 + v33 * v139;
      v38 = v36;
      v39 = v136;
      v148 = v35;
      (v35)(v136, v37, v8);
      LODWORD(v153) = closure #1 in VideoPlayerListContaining<>.autoplayCandidates(withEdgeBias:)(v38);
      if (v5)
      {
        v132 = *v160;
        (*v160)(v39, v8);
        (v132)(v38, v8);
LABEL_123:

        return;
      }

      v152 = v30;
      v140 = 0;
      v40 = *v160;
      (*v160)(v39, v8);
      v147 = v40;
      (v40)(v38, v8);
      v41 = v139 + 2;
      v42 = v156 + v33 * (v139 + 2);
      v29 = v149;
      v43 = v33;
      v156 = v33;
      v44 = v154;
      while (1)
      {
        v5 = v41;
        if (v29 + 1 >= v44)
        {
          break;
        }

        v30 = v29;
        v45 = v145;
        v46 = v148;
        (v148)(v145, v42, v8);
        v47 = v146;
        v46(v146, v34, v8);
        v48 = IndexPath.section.getter();
        if (v48 == IndexPath.section.getter())
        {
          v49 = IndexPath.item.getter();
          v50 = IndexPath.item.getter();
        }

        else
        {
          v49 = IndexPath.section.getter();
          v50 = IndexPath.section.getter();
        }

        v51 = v49 < v50;
        v52 = v47;
        v53 = v147;
        (v147)(v52, v8);
        v53(v45, v8);
        v43 = v156;
        v42 += v156;
        v34 += v156;
        v29 = v30 + 1;
        v41 = v5 + 1;
        v44 = v154;
        if ((v153 & 1) != v51)
        {
          goto LABEL_13;
        }
      }

      v29 = v44;
LABEL_13:
      if (v153)
      {
        v31 = v139;
        if (v29 < v139)
        {
          goto LABEL_147;
        }

        if (v139 >= v29)
        {
          v5 = v140;
          v23 = v150;
          v30 = v152;
          v15 = v137;
          goto LABEL_36;
        }

        if (v44 >= v5)
        {
          v54 = v5;
        }

        else
        {
          v54 = v44;
        }

        v55 = v139;
        v56 = v43 * (v54 - 1);
        v57 = v43 * v54;
        v58 = v139 * v43;
        v59 = v29;
        v5 = v140;
        do
        {
          if (v55 != --v59)
          {
            v60 = *v151;
            if (!*v151)
            {
              goto LABEL_152;
            }

            v154 = *v158;
            (v154)(v143, &v60[v58], v8);
            v61 = v58 < v56 || &v60[v58] >= &v60[v57];
            if (v61)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v154)(&v60[v56], v143, v8);
            v5 = v140;
            v43 = v156;
          }

          ++v55;
          v56 -= v43;
          v57 -= v43;
          v58 += v43;
        }

        while (v55 < v59);
      }

      else
      {
        v5 = v140;
      }

      v23 = v150;
      v30 = v152;
      v15 = v137;
      v31 = v139;
    }

LABEL_36:
    v62 = v151[1];
    if (v29 < v62)
    {
      if (__OFSUB__(v29, v31))
      {
        goto LABEL_144;
      }

      if (v29 - v31 < v134)
      {
        break;
      }
    }

LABEL_57:
    if (v29 < v31)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
      v30 = v123;
    }

    v82 = *(v30 + 16);
    v81 = *(v30 + 24);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v81 > 1, v82 + 1, 1, v30);
      v30 = v124;
    }

    *(v30 + 16) = v83;
    v84 = (v30 + 32);
    v85 = (v30 + 32 + 16 * v82);
    *v85 = v31;
    v85[1] = v29;
    v156 = *v138;
    if (!v156)
    {
      goto LABEL_153;
    }

    if (v82)
    {
      v152 = v30;
      v154 = (v30 + 32);
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = (v30 + 16 * v83);
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v30 + 32);
          v90 = *(v30 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_78:
          if (v92)
          {
            goto LABEL_130;
          }

          v104 = *v88;
          v103 = v88[1];
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_133;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_138;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        if (v83 < 2)
        {
          goto LABEL_132;
        }

        v111 = *v88;
        v110 = v88[1];
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_93:
        if (v107)
        {
          goto LABEL_135;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_137;
        }

        if (v114 < v106)
        {
          goto LABEL_107;
        }

LABEL_100:
        if (v86 - 1 >= v83)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*v151)
        {
          goto LABEL_150;
        }

        v118 = &v84[16 * v86 - 16];
        v119 = *v118;
        v120 = v86;
        v121 = &v84[16 * v86];
        v30 = *(v121 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v151)[*(v150 + 72) * *v118], &(*v151)[*(v150 + 72) * *v121], &(*v151)[*(v150 + 72) * v30], v156);
        if (v5)
        {
          goto LABEL_123;
        }

        if (v30 < v119)
        {
          goto LABEL_125;
        }

        v5 = *(v152 + 16);
        if (v120 > v5)
        {
          goto LABEL_126;
        }

        *v118 = v119;
        v118[1] = v30;
        if (v120 >= v5)
        {
          goto LABEL_127;
        }

        v83 = v5 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v121 + 16, v5 - 1 - v120, v121);
        v30 = v152;
        *(v152 + 16) = v5 - 1;
        v122 = v5 > 2;
        v5 = 0;
        v84 = v154;
        if (!v122)
        {
          goto LABEL_107;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_128;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_129;
      }

      v100 = v88[1];
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_131;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_134;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_142;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_78;
    }

LABEL_107:
    v23 = v150;
    v28 = v151[1];
    v15 = v137;
    if (v29 >= v28)
    {
      goto LABEL_111;
    }
  }

  v63 = (v31 + v134);
  if (__OFADD__(v31, v134))
  {
    goto LABEL_145;
  }

  if (v63 >= v62)
  {
    v63 = v151[1];
  }

  if (v63 < v31)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
LABEL_113:
    v125 = (v30 + 16);
    v126 = *(v30 + 16);
    while (v126 >= 2)
    {
      if (!*v151)
      {
        goto LABEL_151;
      }

      v127 = v30;
      v128 = (v30 + 16 * v126);
      v129 = *v128;
      v130 = &v125[2 * v126];
      v30 = *(v130 + 1);
      specialized _merge<A>(low:mid:high:buffer:by:)(&(*v151)[*(v150 + 72) * *v128], &(*v151)[*(v150 + 72) * *v130], &(*v151)[*(v150 + 72) * v30], v160);
      if (v5)
      {
        break;
      }

      if (v30 < v129)
      {
        goto LABEL_139;
      }

      if (v126 - 2 >= *v125)
      {
        goto LABEL_140;
      }

      *v128 = v129;
      v128[1] = v30;
      v131 = *v125 - v126;
      if (*v125 < v126)
      {
        goto LABEL_141;
      }

      v126 = *v125 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v130 + 16, v131, v130);
      *v125 = v126;
      v30 = v127;
    }

    goto LABEL_123;
  }

  if (v29 == v63)
  {
    goto LABEL_57;
  }

  v139 = v31;
  v140 = v5;
  v64 = *v151;
  v65 = *(v23 + 72);
  v156 = *(v23 + 16);
  v66 = &v64[v65 * (v29 - 1)];
  v152 = v30;
  v153 = -v65;
  v67 = (v31 - v29);
  v154 = v64;
  v141 = v65;
  v142 = v63;
  v68 = &v64[v29 * v65];
LABEL_45:
  v148 = v66;
  v149 = v29;
  v144 = v68;
  v147 = v67;
  while (1)
  {
    v69 = v156;
    (v156)(v15, v68, v8);
    v70 = v8;
    v71 = v15;
    v72 = v157;
    v73 = v70;
    v69(v157, v66);
    v74 = IndexPath.section.getter();
    if (v74 == IndexPath.section.getter())
    {
      v75 = IndexPath.item.getter();
      v76 = IndexPath.item.getter();
    }

    else
    {
      v75 = IndexPath.section.getter();
      v76 = IndexPath.section.getter();
    }

    v77 = v75 < v76;
    v78 = *v160;
    (*v160)(v72, v73);
    (v78)(v71, v73);
    v15 = v71;
    if (!v77)
    {
      v8 = v73;
LABEL_55:
      v29 = v149 + 1;
      v66 = &v148[v141];
      v67 = v147 - 1;
      v68 = &v144[v141];
      if ((v149 + 1) == v142)
      {
        v29 = v142;
        v31 = v139;
        v5 = v140;
        v30 = v152;
        goto LABEL_57;
      }

      goto LABEL_45;
    }

    if (!v154)
    {
      break;
    }

    v79 = *v158;
    v80 = v155;
    v8 = v73;
    (*v158)(v155, v68, v73);
    swift_arrayInitWithTakeFrontToBack();
    v79(v66, v80, v73);
    v66 += v153;
    v68 += v153;
    v61 = __CFADD__(v67++, 1);
    if (v61)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)()
{
  OUTLINED_FUNCTION_57_4();
  v259 = v0;
  v3 = v2;
  v232 = v4;
  v6 = v5;
  v233 = v7;
  v262 = type metadata accessor for AutoplayCandidate(0);
  OUTLINED_FUNCTION_1();
  v255 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v253 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v236 = v14;
  OUTLINED_FUNCTION_4_24();
  v265 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v252 = v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v263 = v22;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v27);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
  OUTLINED_FUNCTION_1();
  v245 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v227 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v251 = v34;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_72_4();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_73_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v227 - v42);
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_32();
  v249 = v6;
  v50 = v6[1];
  v271 = v3;
  if (v50 < 1)
  {
    swift_bridgeObjectRetain_n();
    v55 = MEMORY[0x1E69E7CC0];
LABEL_127:
    v270 = *v233;
    if (!v270)
    {
      goto LABEL_172;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_129;
    }

    goto LABEL_166;
  }

  v227 = v46;
  v228 = v48;
  v273 = v47;
  v260 = (v16 + 32);
  v261 = (v16 + 16);
  v254 = (v16 + 8);
  v51 = v49;
  v52 = v50;
  swift_bridgeObjectRetain_n();
  v53 = v52;
  v54 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  v56 = v264;
  v270 = v32;
  v266 = v51;
  v267 = v1;
  v247 = v43;
  while (1)
  {
    v57 = v54;
    v58 = v54 + 1;
    v237 = v54;
    if (v54 + 1 >= v53)
    {
      goto LABEL_44;
    }

    v258 = v53;
    OUTLINED_FUNCTION_91_0();
    v60 = *v59;
    v61 = *(v245 + 72);
    v248 = v58;
    v58 = v60 + v61 * v58;
    v62 = v227;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v63 = v60;
    v64 = v57;
    v65 = v228;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v66 = v259;
    closure #5 in static AutoplayAction.uponScrolling(in:candidates:isUsingGridLayout:scrollDirection:allowsSimultaneous:)();
    LODWORD(v257) = v67;
    v259 = v66;
    if (v66)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
      OUTLINED_FUNCTION_112_4();
      swift_bridgeObjectRelease_n();
LABEL_125:

      goto LABEL_139;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
    v68 = v64 + 2;
    v57 = v63 + v61 * (v64 + 2);
    v69 = v248;
    v56 = v264;
    v1 = v267;
    v268 = v61;
    v70 = v258;
    v246 = v55;
    while (v69 + 1 < v70)
    {
      v71 = v69;
      v269 = v68;
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      v72 = v250;
      OUTLINED_FUNCTION_82_3();
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      if (*v43 == *v72)
      {
        OUTLINED_FUNCTION_96_2();
        OUTLINED_FUNCTION_82_3();
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v73 = v56;
        v74 = *(v43 + *(v56 + 48));
        OUTLINED_FUNCTION_0_75();
        outlined destroy of AutoplayCandidate();
        v75 = v271;
        if (*(v271 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v74);
          if (v76)
          {
            OUTLINED_FUNCTION_64_5();
            v248 = v77;
            OUTLINED_FUNCTION_1_73();
            OUTLINED_FUNCTION_96_2();
            outlined init with copy of AutoplayCandidate();
            v78 = v43 + *(v262 + 20);
            v79 = v235;
            v80 = v265;
            v256 = *v261;
            v256(v235, v78, v265);
            outlined destroy of AutoplayCandidate();
            v43 = *v260;
            (*v260)(v238, v79, v80);
            v81 = v234;
            outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
            v82 = *(v81 + *(v73 + 48));
            outlined destroy of AutoplayCandidate();
            if (*(v75 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v82), (v83 & 1) != 0))
            {
              OUTLINED_FUNCTION_1_73();
              outlined init with copy of AutoplayCandidate();
              v84 = OUTLINED_FUNCTION_115_0(&v258);
              v85 = v265;
              (v256)(v84);
              OUTLINED_FUNCTION_0_75();
              outlined destroy of AutoplayCandidate();
              v86 = v229;
              (v43)(v229, type metadata accessor for AutoplayCandidate, v85);
              OUTLINED_FUNCTION_111_1(&v266);
              v87 = static IndexPath.< infix(_:_:)();
              v43 = v254;
              v88 = *v254;
              (*v254)(v86, v85);
              v88(v75, v85);
            }

            else
            {
              OUTLINED_FUNCTION_127();
              v89(v238, v265);
              v87 = 1;
            }

            v56 = v264;
            v1 = v267;
            OUTLINED_FUNCTION_88_2();
            goto LABEL_19;
          }

          v87 = 1;
          v1 = v267;
        }

        else
        {
          v87 = 1;
        }

        OUTLINED_FUNCTION_88_2();
        v56 = v73;
      }

      else
      {
        v87 = *v43 < *v72;
      }

LABEL_19:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v250, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
      OUTLINED_FUNCTION_141();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, v91, v92);
      v57 += v268;
      v58 += v268;
      v69 = (v71 + 1);
      v68 = v269 + 1;
      v93 = (v257 & 1) == (v87 & 1);
      v55 = v246;
      v70 = v258;
      if (!v93)
      {
        goto LABEL_23;
      }
    }

    v69 = v70;
LABEL_23:
    v248 = v69;
    if ((v257 & 1) == 0)
    {
      OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_136_0();
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_136_0();
    if (v58 < v57)
    {
      goto LABEL_165;
    }

    if (v57 < v58)
    {
      v97 = v55;
      if (v94 >= v96)
      {
        v98 = v96;
      }

      else
      {
        v98 = v94;
      }

      v99 = v95 * (v98 - 1);
      v100 = v58;
      v101 = v57;
      v57 = v95 * v98;
      v102 = v101 * v95;
      v43 = &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd;
      do
      {
        if (v101 != --v100)
        {
          OUTLINED_FUNCTION_91_0();
          v104 = *v103;
          if (!*v103)
          {
            goto LABEL_170;
          }

          v58 = v104 + v102;
          outlined init with take of URL?();
          v105 = v102 < v99 || v58 >= (v104 + v57);
          if (v105)
          {
            OUTLINED_FUNCTION_123_0();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v102 != v99)
          {
            OUTLINED_FUNCTION_123_0();
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of URL?();
          v95 = v268;
        }

        ++v101;
        v99 -= v95;
        v57 -= v95;
        v102 += v95;
      }

      while (v101 < v100);
      v55 = v97;
      v1 = v267;
      OUTLINED_FUNCTION_88_2();
      OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_136_0();
      v56 = v106;
    }

LABEL_44:
    OUTLINED_FUNCTION_91_0();
    v108 = *(v107 + 8);
    if (v58 < v108)
    {
      if (__OFSUB__(v58, v57))
      {
        goto LABEL_162;
      }

      if (v58 - v57 < v232)
      {
        break;
      }
    }

LABEL_70:
    if (v58 < v57)
    {
      goto LABEL_161;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v248 = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v205 = OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v205, v206, v207, v55);
      v55 = v208;
    }

    v150 = *(v55 + 2);
    v149 = *(v55 + 3);
    v151 = v150 + 1;
    if (v150 >= v149 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v149 > 1, v150 + 1, 1, v55);
      v55 = v209;
    }

    *(v55 + 2) = v151;
    v152 = v55 + 32;
    v153 = &v55[16 * v150 + 32];
    v154 = v248;
    *v153 = v237;
    *(v153 + 1) = v154;
    v269 = *v233;
    if (!v269)
    {
      goto LABEL_171;
    }

    if (v150)
    {
      v56 = v264;
      v268 = v55 + 32;
      while (1)
      {
        v155 = v151 - 1;
        v156 = &v152[16 * v151 - 16];
        v157 = &v55[16 * v151];
        if (v151 >= 4)
        {
          break;
        }

        if (v151 == 3)
        {
          v158 = *(v55 + 4);
          v159 = *(v55 + 5);
          v168 = __OFSUB__(v159, v158);
          v160 = v159 - v158;
          v161 = v168;
LABEL_91:
          if (v161)
          {
            goto LABEL_148;
          }

          v173 = *v157;
          v172 = *(v157 + 1);
          v174 = __OFSUB__(v172, v173);
          v175 = v172 - v173;
          v176 = v174;
          if (v174)
          {
            goto LABEL_151;
          }

          v177 = *(v156 + 1);
          v178 = v177 - *v156;
          if (__OFSUB__(v177, *v156))
          {
            goto LABEL_154;
          }

          if (__OFADD__(v175, v178))
          {
            goto LABEL_156;
          }

          if (v175 + v178 >= v160)
          {
            if (v160 < v178)
            {
              v155 = v151 - 2;
            }

            goto LABEL_113;
          }

          goto LABEL_106;
        }

        if (v151 < 2)
        {
          goto LABEL_150;
        }

        v180 = *v157;
        v179 = *(v157 + 1);
        v168 = __OFSUB__(v179, v180);
        v175 = v179 - v180;
        v176 = v168;
LABEL_106:
        if (v176)
        {
          goto LABEL_153;
        }

        v182 = *v156;
        v181 = *(v156 + 1);
        v168 = __OFSUB__(v181, v182);
        v183 = v181 - v182;
        if (v168)
        {
          goto LABEL_155;
        }

        if (v183 < v175)
        {
          goto LABEL_122;
        }

LABEL_113:
        if (v155 - 1 >= v151)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        v187 = *v249;
        if (!*v249)
        {
          goto LABEL_168;
        }

        v188 = v55;
        v189 = &v152[16 * v155 - 16];
        v190 = *v189;
        v191 = v155;
        v192 = &v152[16 * v155];
        v193 = *(v192 + 1);
        v194 = *(v245 + 72);
        v195 = v187 + v194 * *v189;
        v196 = v187 + v194 * *v192;
        v55 = (v187 + v194 * v193);
        OUTLINED_FUNCTION_112_4();

        v197 = v195;
        v198 = v259;
        specialized _merge<A>(low:mid:high:buffer:by:)(v197, v196, v55, v269, v56, v199, v200, v201, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238);
        v259 = v198;
        if (v198)
        {
          OUTLINED_FUNCTION_112_4();
          swift_bridgeObjectRelease_n();
          goto LABEL_125;
        }

        if (v193 < v190)
        {
          goto LABEL_143;
        }

        v55 = v188;
        v202 = *(v188 + 2);
        if (v191 > v202)
        {
          goto LABEL_144;
        }

        *v189 = v190;
        *(v189 + 1) = v193;
        if (v191 >= v202)
        {
          goto LABEL_145;
        }

        v151 = v202 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v192 + 16, v202 - 1 - v191, v192);
        *(v188 + 2) = v202 - 1;
        v203 = v202 > 2;
        v56 = v264;
        v1 = v267;
        v152 = v268;
        v43 = v247;
        if (!v203)
        {
          goto LABEL_122;
        }
      }

      v162 = &v152[16 * v151];
      v163 = *(v162 - 8);
      v164 = *(v162 - 7);
      v168 = __OFSUB__(v164, v163);
      v165 = v164 - v163;
      if (v168)
      {
        goto LABEL_146;
      }

      v167 = *(v162 - 6);
      v166 = *(v162 - 5);
      v168 = __OFSUB__(v166, v167);
      v160 = v166 - v167;
      v161 = v168;
      if (v168)
      {
        goto LABEL_147;
      }

      v169 = *(v157 + 1);
      v170 = v169 - *v157;
      if (__OFSUB__(v169, *v157))
      {
        goto LABEL_149;
      }

      v168 = __OFADD__(v160, v170);
      v171 = v160 + v170;
      if (v168)
      {
        goto LABEL_152;
      }

      if (v171 >= v165)
      {
        v185 = *v156;
        v184 = *(v156 + 1);
        v168 = __OFSUB__(v184, v185);
        v186 = v184 - v185;
        if (v168)
        {
          goto LABEL_160;
        }

        if (v160 < v186)
        {
          v155 = v151 - 2;
        }

        goto LABEL_113;
      }

      goto LABEL_91;
    }

    v56 = v264;
LABEL_122:
    OUTLINED_FUNCTION_91_0();
    v53 = *(v204 + 8);
    v54 = v248;
    if (v248 >= v53)
    {
      goto LABEL_127;
    }
  }

  v109 = v57 + v232;
  if (__OFADD__(v57, v232))
  {
    goto LABEL_163;
  }

  if (v109 >= v108)
  {
    v109 = v108;
  }

  if (v109 < v57)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
LABEL_129:
    v246 = v55;
    v210 = (v55 + 16);
    for (i = *(v55 + 2); ; *v210 = i)
    {
      if (i < 2)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_140;
      }

      OUTLINED_FUNCTION_91_0();
      v213 = *v212;
      if (!v213)
      {
        goto LABEL_169;
      }

      v214 = &v246[16 * i];
      v215 = *v214;
      v55 = v210;
      v216 = &v210[2 * i];
      v217 = *(v216 + 1);
      v218 = *(v245 + 72);
      v219 = v213 + v218 * *v214;
      v274 = v213 + v218 * *v216;
      v220 = v213 + v218 * v217;
      OUTLINED_FUNCTION_112_4();

      v221 = v219;
      v222 = v259;
      specialized _merge<A>(low:mid:high:buffer:by:)(v221, v274, v220, v270, v210, v223, v224, v225, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238);
      v259 = v222;
      if (v222)
      {
        break;
      }

      if (v217 < v215)
      {
        goto LABEL_157;
      }

      if (i - 2 >= *v210)
      {
        goto LABEL_158;
      }

      *v214 = v215;
      *(v214 + 1) = v217;
      v226 = *v210 - i;
      if (*v210 < i)
      {
        goto LABEL_159;
      }

      i = *v210 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v216 + 16, v226, v216);
    }

    OUTLINED_FUNCTION_112_4();
    swift_bridgeObjectRelease_n();
LABEL_139:

LABEL_140:
    OUTLINED_FUNCTION_51_2();
    return;
  }

  if (v58 == v109)
  {
    goto LABEL_70;
  }

  v246 = v55;
  OUTLINED_FUNCTION_91_0();
  v111 = *v110;
  v112 = *(v245 + 72);
  v113 = *v110 + v112 * (v58 - 1);
  v268 = -v112;
  v269 = v111;
  v114 = v57 - v58;
  v239 = v112;
  v115 = v111 + v58 * v112;
  v116 = v273;
  v240 = v117;
  while (2)
  {
    v248 = v58;
    v242 = v115;
    v118 = v115;
    v243 = v114;
    v244 = v113;
    v57 = v113;
LABEL_54:
    OUTLINED_FUNCTION_82_3();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    OUTLINED_FUNCTION_82_3();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (*v116 != *v1)
    {
      v138 = *v116 < *v1;
      goto LABEL_61;
    }

    v119 = v266;
    OUTLINED_FUNCTION_82_3();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v120 = v1;
    v121 = v56;
    v122 = *(v119 + *(v56 + 48));
    OUTLINED_FUNCTION_0_75();
    outlined destroy of AutoplayCandidate();
    if (!*(v271 + 16))
    {
      goto LABEL_64;
    }

    specialized __RawDictionaryStorage.find<A>(_:)(v122);
    v120 = v267;
    if ((v123 & 1) == 0)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_64_5();
    v256 = v124;
    OUTLINED_FUNCTION_1_73();
    v125 = v253;
    outlined init with copy of AutoplayCandidate();
    v126 = v125 + *(v262 + 20);
    v127 = v252;
    v128 = v265;
    v258 = *v261;
    v258(v252, v126, v265);
    outlined destroy of AutoplayCandidate();
    v129 = v127;
    v130 = v264;
    v257 = *v260;
    (v257)(v263, v129, v128);
    v131 = v251;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v121 = v130;
    v132 = *(v131 + *(v130 + 48));
    v133 = v271;
    outlined destroy of AutoplayCandidate();
    if (!*(v133 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v132), (v134 & 1) == 0))
    {
      OUTLINED_FUNCTION_127();
      v144(v263, v265);
      v120 = v267;
LABEL_64:
      v43 = v120;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v120, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
      OUTLINED_FUNCTION_141();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v145, v146, v147);
      v56 = v121;
      break;
    }

    OUTLINED_FUNCTION_1_73();
    OUTLINED_FUNCTION_96_2();
    outlined init with copy of AutoplayCandidate();
    v135 = OUTLINED_FUNCTION_115_0(&v272);
    v136 = v265;
    (v258)(v135);
    OUTLINED_FUNCTION_0_75();
    outlined destroy of AutoplayCandidate();
    (v257)(v241, v132, v136);
    v137 = v263;
    v138 = static IndexPath.< infix(_:_:)();
    v139 = *v254;
    v140 = OUTLINED_FUNCTION_43_0();
    v139(v140);
    (v139)(v137, v136);
    v56 = v264;
    v1 = v267;
LABEL_61:
    v43 = v1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
    OUTLINED_FUNCTION_141();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v141, v142, v143);
    if ((v138 & 1) == 0)
    {
      v116 = v273;
LABEL_68:
      OUTLINED_FUNCTION_132_0();
      v58 = v118 + 1;
      v113 = v244 + v239;
      v114 = v243 - 1;
      v115 = v242 + v239;
      if (v58 == v240)
      {
        v58 = v240;
        v55 = v246;
        OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_136_0();
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  if (v269)
  {
    OUTLINED_FUNCTION_82_3();
    outlined init with take of URL?();
    swift_arrayInitWithTakeFrontToBack();
    OUTLINED_FUNCTION_82_3();
    outlined init with take of URL?();
    v57 += v268;
    v118 += v268;
    v105 = __CFADD__(v114++, 1);
    v116 = v273;
    v1 = v43;
    if (v105)
    {
      goto LABEL_68;
    }

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_150();
  __break(1u);
LABEL_168:
  OUTLINED_FUNCTION_150();
  __break(1u);
LABEL_169:

  __break(1u);
LABEL_170:
  OUTLINED_FUNCTION_150();
  __break(1u);
LABEL_171:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_172:
  OUTLINED_FUNCTION_150();
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_57_4();
  a19 = v20;
  a20 = v21;
  v159 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v153 = type metadata accessor for AutoplayCandidate(0);
  OUTLINED_FUNCTION_1();
  v148 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_32();
  v144 = v36;
  OUTLINED_FUNCTION_4_24();
  v157 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_32();
  v154 = v47;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
  MEMORY[0x1EEE9AC00](v160);
  v140 = &v136 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_144_0();
  v149 = v50;
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x1EEE9AC00](v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_144_0();
  v150 = v53;
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_144_0();
  v143 = v55;
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_144_0();
  v145 = v57;
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x1EEE9AC00](v58);
  v60 = (&v136 - v59);
  MEMORY[0x1EEE9AC00](v61);
  v64 = (&v136 - v63);
  v66 = *(v65 + 72);
  if (!v66)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  v156 = v30;
  v67 = v28 - v30 == 0x8000000000000000 && v66 == -1;
  if (v67)
  {
    goto LABEL_82;
  }

  v68 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v66 == -1)
  {
    goto LABEL_83;
  }

  v162 = v28;
  v70 = (v28 - v30) / v66;
  v71 = v156;
  a10 = v156;
  v164 = v24;
  v151 = (v38 + 32);
  v152 = (v38 + 16);
  v146 = v62;
  v147 = (v38 + 8);
  v72 = v68 / v66;
  if (v70 < v68 / v66)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v156, v70, v24);
    v158 = v24 + v70 * v66;
    v163 = v158;
    v73 = v162;
    v74 = v145;
    v155 = v26;
    v141 = v66;
    while (1)
    {
      if (v24 >= v158 || v73 >= v26)
      {
        goto LABEL_80;
      }

      v162 = v73;
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      v161 = v24;
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      if (*v64 == *v60)
      {
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        OUTLINED_FUNCTION_138_0();
        v77 = *(v74 + v76);
        OUTLINED_FUNCTION_0_75();
        outlined destroy of AutoplayCandidate();
        if (!*(v159 + 16))
        {
          goto LABEL_31;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v77);
        v26 = v155;
        if ((v78 & 1) == 0)
        {
          goto LABEL_31;
        }

        v79 = v159;
        OUTLINED_FUNCTION_64_5();
        v156 = v80;
        OUTLINED_FUNCTION_1_73();
        v66 = v144;
        outlined init with copy of AutoplayCandidate();
        v81 = *v152;
        v82 = OUTLINED_FUNCTION_115_0(&a18);
        v83 = v157;
        v81(v82);
        outlined destroy of AutoplayCandidate();
        v84 = v74;
        v85 = *v151;
        (*v151)(v154, v84, v83);
        OUTLINED_FUNCTION_96_2();
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        OUTLINED_FUNCTION_138_0();
        v87 = *(v66 + v86);
        outlined destroy of AutoplayCandidate();
        if (!*(v79 + 16) || (v88 = v159, specialized __RawDictionaryStorage.find<A>(_:)(v87), (v89 & 1) == 0))
        {
          OUTLINED_FUNCTION_127();
          v97(v154, v157);
          v26 = v155;
          OUTLINED_FUNCTION_88_2();
          v74 = v145;
LABEL_31:
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_1_73();
        outlined init with copy of AutoplayCandidate();
        v90 = OUTLINED_FUNCTION_111_1(&a9);
        v91 = v157;
        v81(v90);
        OUTLINED_FUNCTION_0_75();
        outlined destroy of AutoplayCandidate();
        v66 = v139;
        v92 = v91;
        v85(v139, v88, v91);
        v93 = v154;
        v94 = static IndexPath.< infix(_:_:)();
        v95 = *v147;
        (*v147)(v66, v92);
        v95(v93, v92);
        v26 = v155;
        OUTLINED_FUNCTION_88_2();
        v74 = v145;
      }

      else
      {
        v94 = *v64 < *v60;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
      if ((v94 & 1) == 0)
      {
        v24 = v161 + v66;
        if (v71 < v161 || v71 >= v24)
        {
          OUTLINED_FUNCTION_66_3();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v71 != v161)
        {
          OUTLINED_FUNCTION_66_3();
          swift_arrayInitWithTakeBackToFront();
        }

        v164 = v24;
        v73 = v162;
        goto LABEL_44;
      }

LABEL_32:
      v98 = v162 + v66;
      if (v71 < v162 || v71 >= v98)
      {
        OUTLINED_FUNCTION_66_3();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v71 != v162)
      {
        OUTLINED_FUNCTION_66_3();
        swift_arrayInitWithTakeBackToFront();
      }

      v73 = v98;
      v24 = v161;
LABEL_44:
      v71 += v66;
      a10 = v71;
    }
  }

  v100 = v162;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v162, v68 / v66, v24);
  v161 = v24;
  v101 = v24 + v72 * v66;
  v102 = -v66;
  v103 = v101;
  v104 = v150;
  v158 = v102;
LABEL_46:
  v162 = v100;
  v105 = v26;
  v144 = v103;
  v106 = v146;
  v155 = v100 + v102;
  while (1)
  {
    if (v101 <= v161)
    {
      a10 = v162;
      v163 = v103;
      goto LABEL_80;
    }

    if (v162 <= v156)
    {
      break;
    }

    v154 = v103;
    v107 = v158;
    v108 = v101 + v158;
    OUTLINED_FUNCTION_312();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (*v104 == *v106)
    {
      v109 = v149;
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      OUTLINED_FUNCTION_138_0();
      v111 = *(v109 + v110);
      OUTLINED_FUNCTION_0_75();
      outlined destroy of AutoplayCandidate();
      if (*(v159 + 16))
      {
        v112 = v159;
        specialized __RawDictionaryStorage.find<A>(_:)(v111);
        if (v113)
        {
          OUTLINED_FUNCTION_64_5();
          v145 = v114;
          OUTLINED_FUNCTION_1_73();
          outlined init with copy of AutoplayCandidate();
          v115 = *v152;
          v116 = OUTLINED_FUNCTION_115_0(&a13);
          v117 = v157;
          v115(v116);
          outlined destroy of AutoplayCandidate();
          v118 = *v151;
          (*v151)(v142, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR, v117);
          v119 = v140;
          outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
          OUTLINED_FUNCTION_138_0();
          v121 = *&v119[v120];
          outlined destroy of AutoplayCandidate();
          if (*(v112 + 16) && (v122 = v159, specialized __RawDictionaryStorage.find<A>(_:)(v121), (v123 & 1) != 0))
          {
            OUTLINED_FUNCTION_1_73();
            v124 = v138;
            outlined init with copy of AutoplayCandidate();
            v125 = v137;
            v126 = v157;
            (v115)(v137, v124 + *(v153 + 20));
            OUTLINED_FUNCTION_0_75();
            outlined destroy of AutoplayCandidate();
            v127 = OUTLINED_FUNCTION_111_1(&v162);
            v128 = v126;
            v118(v127, v125, v126);
            OUTLINED_FUNCTION_115_0(&a16);
            v129 = static IndexPath.< infix(_:_:)();
            v130 = *v147;
            (*v147)(v122, v128);
            v130(v118, v128);
          }

          else
          {
            OUTLINED_FUNCTION_127();
            v131(v142, v157);
            v129 = 1;
          }

          v106 = v146;
        }

        else
        {
          v129 = 1;
        }

        v104 = v150;
        v107 = v158;
      }

      else
      {
        v129 = 1;
        v104 = v150;
      }
    }

    else
    {
      v129 = *v104 < *v106;
    }

    v26 = v105 + v107;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v104, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMR);
    if (v129)
    {
      v133 = v105 < v162 || v26 >= v162;
      v100 = v155;
      if (v133)
      {
        OUTLINED_FUNCTION_75_4();
        swift_arrayInitWithTakeFrontToBack();
        v103 = v154;
        v102 = v158;
      }

      else
      {
        v103 = v154;
        v102 = v158;
        if (v105 != v162)
        {
          OUTLINED_FUNCTION_75_4();
          v135 = v134;
          swift_arrayInitWithTakeBackToFront();
          v103 = v135;
        }
      }

      goto LABEL_46;
    }

    if (v105 < v101 || v26 >= v101)
    {
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_75_4();
      swift_arrayInitWithTakeFrontToBack();
      v105 = v26;
      v101 = v108;
      v103 = v108;
    }

    else
    {
      v103 = v108;
      v67 = v101 == v105;
      v105 = v26;
      v101 = v108;
      if (!v67)
      {
        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_75_4();
        swift_arrayInitWithTakeBackToFront();
        v105 = v26;
        v101 = v108;
        v103 = v108;
      }
    }
  }

  a10 = v162;
  v163 = v144;
LABEL_80:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&a10, &v164, &v163);

  OUTLINED_FUNCTION_51_2();
}

unint64_t *specialized _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, char a3, void *a4)
{
  v8 = a1;
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = a4;
  v13 = v12;
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v19 = v13;
      v8 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AH0K9CandidateVtG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_15i5Kit14kl7O_AI0J9M5VtTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiAJ_ALtIsgnndzo_Tf1nc_n04_s15ivkl102O13uponScrolling2in10candidates17isUsingGridLayout15scrollDirection18allowsSimultaneousSo7CGPointV_SDyu8AC_AA0C9my101GtAA0C7ContextV_SayAMGSbSo022UICollectionViewScrollN0VSbtFZ0iD22FreeFromSpuriousPausesL_3url6actionSbU9_AC_AMttFSDySiALGAH0K7ContextVTf1nnc_n(v18, v11, v8, a2, a3 & 1, v19);
      MEMORY[0x1BFB23DF0](v18, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  v14 = (v20 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v14);

  v15 = v13;
  specialized closure #1 in _NativeDictionary.filter(_:)(v14, v11, v8, a2, a3 & 1, v15);
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v8 = v16;
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  return v8;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v67 = a6;
  v56 = a2;
  v57 = a1;
  v8 = type metadata accessor for AutoplayCandidate(0);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
  v66 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v61 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v58 = 0;
  v20 = 0;
  v68 = a3;
  v23 = a3[8];
  v22 = a3 + 8;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v65 = a4;
  v60 = &v55 - v18;
  while (v26)
  {
    v28 = __clz(__rbit64(v26));
    v70 = (v26 - 1) & v26;
LABEL_11:
    v31 = *(v68[6] + 8 * (v28 | (v20 << 6)));
    v59 = v28 | (v20 << 6);
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    *v16 = *v19;
    outlined init with copy of AutoplayCandidate();
    if (*(a4 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v31), (v32 & 1) != 0))
    {
      outlined init with copy of AutoplayCandidate();
      outlined init with take of AutoplayCandidate();
      UIScrollView.videoSafeAreaInWindowCoordinates.getter();
      v69 = v33;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v40 = &v12[*(v64 + 24)];
      x = v40->origin.x;
      y = v40->origin.y;
      width = v40->size.width;
      height = v40->size.height;
      switch(*&v12[*(v64 + 28)])
      {
        case 1:
          MidX = CGRectGetMidX(*v40);
          v73.origin.x = x;
          v73.origin.y = y;
          v73.size.width = width;
          v73.size.height = height;
          MinY = CGRectGetMinY(v73);
          goto LABEL_20;
        case 2:
          MinX = CGRectGetMinX(*v40);
          goto LABEL_19;
        case 4:
          MidX = CGRectGetMidX(*v40);
          v74.origin.x = x;
          v74.origin.y = y;
          v74.size.width = width;
          v74.size.height = height;
          MinY = CGRectGetMaxY(v74);
          goto LABEL_20;
        case 8:
          MinX = CGRectGetMaxX(*v40);
          goto LABEL_19;
        default:
          MinX = CGRectGetMidX(*v40);
LABEL_19:
          MidX = MinX;
          v75.origin.x = x;
          v75.origin.y = y;
          v75.size.width = width;
          v75.size.height = height;
          MinY = CGRectGetMidY(v75);
LABEL_20:
          v72.y = MinY;
          v76.origin.x = v69;
          v76.origin.y = v35;
          v76.size.width = v37;
          v76.size.height = v39;
          v72.x = MidX;
          v48 = CGRectContainsPoint(v76, v72);
          outlined destroy of AutoplayCandidate();
          v49 = v16;
          v50 = v61;
          outlined init with take of URL?();
          v51 = v12;
          v52 = *v50;
          v16 = v49;
          outlined destroy of AutoplayCandidate();
          v53 = v52 - 3;
          v12 = v51;
          a4 = v65;
          v19 = v60;
          if (v53 > 0xFFFFFFFD || !v48)
          {
            goto LABEL_24;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
          v26 = v70;
          break;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
LABEL_24:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
      *(v57 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      v54 = __OFADD__(v58++, 1);
      v26 = v70;
      if (v54)
      {
        __break(1u);
LABEL_27:
        specialized _NativeDictionary.extractDictionary(using:count:)(v57, v56, v58, v68);

        return;
      }
    }
  }

  v29 = v20;
  while (1)
  {
    v20 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v20 >= v27)
    {
      goto LABEL_27;
    }

    v30 = v22[v20];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v70 = (v30 - 1) & v30;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v27 - v5;
  v6 = type metadata accessor for AutoplayCandidate(0);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMd, &_ss18_DictionaryStorageCySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMR);
  result = static _DictionaryStorage.copy(original:)();
  v9 = result;
  v10 = 0;
  v35 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v28 = result + 64;
  if ((v15 & v11) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v37 = *(*(v35 + 48) + 8 * v21);
      v22 = v29;
      outlined init with copy of AutoplayCandidate();
      UIScrollView.videoSafeAreaInWindowCoordinates.getter();
      v23 = CGRectIntersectsRect(v38, *&v22[*(v31 + 24)]) ? 0 : 2;
      *v32 = v23;
      outlined init with copy of AutoplayCandidate();
      outlined destroy of AutoplayCandidate();
      *(v28 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v9 + 48) + 8 * v21) = v37;
      result = outlined init with take of URL?();
      v24 = *(v9 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v9 + 16) = v26;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {

        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v42 = a3;
  v5 = type metadata accessor for AutoplayCandidate(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_15ConversationKit17AutoplayCandidateVtMd, &_sSi_15ConversationKit17AutoplayCandidateVtMR);
  MEMORY[0x1EEE9AC00](v10);
  v41 = (&v35 - v13);
  v39 = *(a1 + 16);
  if (v39)
  {
    v14 = 0;
    v15 = *(v11 + 48);
    v37 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = v15;
    while (v14 < *(a1 + 16))
    {
      v16 = v12;
      v17 = v41;
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      v18 = *v17;
      v19 = v9;
      outlined init with take of AutoplayCandidate();
      v20 = *v42;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_18;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((a2 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit17AutoplayCandidateVGMd, &_ss17_NativeDictionaryVySi15ConversationKit17AutoplayCandidateVGMR);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a2 & 1);
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_20;
        }

        v22 = v27;
      }

      v29 = *v42;
      if (v26)
      {
        v30 = *(v40 + 72) * v22;
        v31 = v36;
        outlined init with copy of AutoplayCandidate();
        v9 = v19;
        outlined destroy of AutoplayCandidate();
        outlined assign with take of AutoplayCandidate(v31, v29[7] + v30);
      }

      else
      {
        v29[(v22 >> 6) + 8] |= 1 << v22;
        *(v29[6] + 8 * v22) = v18;
        v9 = v19;
        outlined init with take of AutoplayCandidate();
        v32 = v29[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_19;
        }

        v29[2] = v34;
      }

      ++v14;
      a2 = 1;
      v12 = v16;
      if (v39 == v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t _s15ConversationKit29RecentsCollectionViewGridCellC22didChangeNeedsAXLayout013previousTraitD04selfSbSo07UITraitD0C_So0O11Environment_ptFZTf4nen_nAA0c4ListE10ControllerC_Tt1g5Tm(void *a1, void *a2)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v5 = [a2 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = UIContentSizeCategory.isAccessibilityCategory.getter();
  return (v4 ^ v5) & 1;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with take of AutoplayCandidate()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined destroy of AutoplayCandidate()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of AutoplayCandidate()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type AutoplayAction.EvaluationMethod and conformance AutoplayAction.EvaluationMethod()
{
  result = lazy protocol witness table cache variable for type AutoplayAction.EvaluationMethod and conformance AutoplayAction.EvaluationMethod;
  if (!lazy protocol witness table cache variable for type AutoplayAction.EvaluationMethod and conformance AutoplayAction.EvaluationMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoplayAction.EvaluationMethod and conformance AutoplayAction.EvaluationMethod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoplayAction and conformance AutoplayAction()
{
  result = lazy protocol witness table cache variable for type AutoplayAction and conformance AutoplayAction;
  if (!lazy protocol witness table cache variable for type AutoplayAction and conformance AutoplayAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoplayAction and conformance AutoplayAction);
  }

  return result;
}

void type metadata completion function for AutoplayCandidate(uint64_t a1)
{
  type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIRectEdge(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AutoplayContext(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for AutoplayContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoplayAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AutoplayAction.EvaluationMethod(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for RecentsCollectionViewGridCell.PlayBinding(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void type metadata completion function for ContactAvatarTileViewModel(uint64_t a1)
{
  type metadata accessor for RecentsCallItem?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for RecentsCallItem?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RecentsCallItem?)
  {
    type metadata accessor for RecentsCallItem(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RecentsCallItem?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ContextMenuNotificationUserInfoKey and conformance ContextMenuNotificationUserInfoKey()
{
  result = lazy protocol witness table cache variable for type ContextMenuNotificationUserInfoKey and conformance ContextMenuNotificationUserInfoKey;
  if (!lazy protocol witness table cache variable for type ContextMenuNotificationUserInfoKey and conformance ContextMenuNotificationUserInfoKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContextMenuNotificationUserInfoKey and conformance ContextMenuNotificationUserInfoKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContextMenuNotificationUserInfoKey and conformance ContextMenuNotificationUserInfoKey;
  if (!lazy protocol witness table cache variable for type ContextMenuNotificationUserInfoKey and conformance ContextMenuNotificationUserInfoKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContextMenuNotificationUserInfoKey and conformance ContextMenuNotificationUserInfoKey);
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

uint64_t outlined assign with copy of RecentsCallItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.intervention(_:)>>.0, ModifiedContent<ContactAvatarTileView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.intervention(_:)>>.0, ModifiedContent<ContactAvatarTileView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.intervention(_:)>>.0, ModifiedContent<ContactAvatarTileView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP09Sensitived8AnalysisB0E12interventionyQrAF12InterventionV4KindOFQOyAA08ModifiedD0Vy014CommunicationsB0017ContactAvatarTileE0VAA12_FrameLayoutVG_Qo_ASGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP09Sensitived8AnalysisB0E12interventionyQrAF12InterventionV4KindOFQOyAA08ModifiedD0Vy014CommunicationsB0017ContactAvatarTileE0VAA12_FrameLayoutVG_Qo_ASGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ContactAvatarTileView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.intervention(_:)>>.0, ModifiedContent<ContactAvatarTileView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ContactAvatarTileView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ContactAvatarTileView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ContactAvatarTileView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB021ContactAvatarTileViewVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type RecentsCollectionViewGridCell.PlayBinding and conformance RecentsCollectionViewGridCell.PlayBinding(&lazy protocol witness table cache variable for type ContactAvatarTileView and conformance ContactAvatarTileView, MEMORY[0x1E6995B70], MEMORY[0x1E6995B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ContactAvatarTileView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[UIAccessibilityCustomAction], UIAccessibilityCustomAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[UIAccessibilityCustomAction], UIAccessibilityCustomAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[UIAccessibilityCustomAction], UIAccessibilityCustomAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySo27UIAccessibilityCustomActionCGAeA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGMd, &_s7SwiftUI7ForEachVySaySo27UIAccessibilityCustomActionCGAeA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Label<Text, Image>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[UIAccessibilityCustomAction], UIAccessibilityCustomAction, Button<Label<Text, Image>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t objectdestroy_169Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type UIAccessibilityCustomAction and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIAccessibilityCustomAction and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIAccessibilityCustomAction and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIAccessibilityCustomAction, 0x1E69DC5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIAccessibilityCustomAction and conformance NSObject);
  }

  return result;
}

uint64_t outlined assign with take of AutoplayCandidate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoplayCandidate(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_69_3()
{
  **(v1 - 400) = v0;

  return outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
}

uint64_t OUTLINED_FUNCTION_99_2()
{

  return MEMORY[0x1EEDE1268](0);
}

uint64_t OUTLINED_FUNCTION_108_3()
{

  return _ConditionalContent<>.init(storage:)();
}

BOOL static CaptioningStateManager.CaptioningState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v4 = *&v3 == 0;
  }

  else
  {
    if (*&v2 != 1)
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = *&v3 == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t CaptioningStateManager.captioningStatePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<CaptioningStateManager.CaptioningState, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMR, MEMORY[0x1E695BFB0]);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t CaptioningStateManager.call.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CaptioningStateManager.call.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(&lazy protocol witness table cache variable for type CaptioningStateManager and conformance CaptioningStateManager, 255, type metadata accessor for CaptioningStateManager, &protocol conformance descriptor for CaptioningStateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t key path setter for CaptioningStateManager.call : CaptioningStateManager(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return CaptioningStateManager.call.setter(v2, v1);
}

uint64_t CaptioningStateManager.call.setter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)(KeyPath, partial apply for closure #1 in CaptioningStateManager.call.setter, &v7);

  return swift_unknownObjectRelease();
}

uint64_t CaptioningStateManager.access<A>(keyPath:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_76();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v1, 255, v2, &protocol conformance descriptor for CaptioningStateManager);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t type metadata accessor for CaptioningStateManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for CaptioningStateManager;
  if (!type metadata singleton initialization cache for CaptioningStateManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in CaptioningStateManager.call.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_76();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v3, 255, v4, &protocol conformance descriptor for CaptioningStateManager);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CaptioningStateManager.withMutation<A, B>(keyPath:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_76();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v4, 255, v5, &protocol conformance descriptor for CaptioningStateManager);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CaptioningStateManager.asrAssetIdentifier.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_76();
  v5 = lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v3, 255, v4, &protocol conformance descriptor for CaptioningStateManager);
  OUTLINED_FUNCTION_1_12(v5, v6);

  v7 = *(v2 + 40);

  return v7;
}

uint64_t key path getter for CaptioningStateManager.asrAssetIdentifier : CaptioningStateManager@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = CaptioningStateManager.asrAssetIdentifier.getter(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

double key path setter for CaptioningStateManager.asrAssetIdentifier : CaptioningStateManager(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CaptioningStateManager.asrAssetIdentifier.setter(v1, v2);
}

double CaptioningStateManager.asrAssetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)(v8, partial apply for closure #1 in CaptioningStateManager.asrAssetIdentifier.setter, v9);
  }

  return result;
}

uint64_t CaptioningStateManager.asrAssetIdentifier.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void closure #1 in CaptioningStateManager.asrAssetIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

uint64_t CaptioningStateManager.asrAvailability.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(&lazy protocol witness table cache variable for type CaptioningStateManager and conformance CaptioningStateManager, 255, type metadata accessor for CaptioningStateManager, &protocol conformance descriptor for CaptioningStateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 56);
}

uint64_t CaptioningStateManager.asrAvailability.setter(uint64_t result, uint64_t a2)
{
  if (*(v2 + 56) != result)
  {
    v3 = result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[2] = v2;
    v6[3] = v3;
    specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)(v5, partial apply for closure #1 in CaptioningStateManager.asrAvailability.setter, v6);
  }

  return result;
}

uint64_t CaptioningStateManager.captionsRecognizerStateManager.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_76();
  v5 = lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v3, 255, v4, &protocol conformance descriptor for CaptioningStateManager);
  OUTLINED_FUNCTION_1_12(v5, v6);

  OUTLINED_FUNCTION_4_5(v2 + 72, v7);
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t key path getter for CaptioningStateManager.captionsRecognizerStateManager : CaptioningStateManager@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = CaptioningStateManager.captionsRecognizerStateManager.getter(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t key path setter for CaptioningStateManager.captionsRecognizerStateManager : CaptioningStateManager(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return CaptioningStateManager.captionsRecognizerStateManager.setter(v2, v1);
}

uint64_t CaptioningStateManager.captionsRecognizerStateManager.setter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)(KeyPath, partial apply for closure #1 in CaptioningStateManager.captionsRecognizerStateManager.setter, &v7);

  return swift_unknownObjectRelease();
}

uint64_t CaptioningStateManager.captionsRecognizerStateManager.init@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = a2;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in CaptioningStateManager.captionsRecognizerStateManager.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 80) = a3;
  return swift_unknownObjectWeakAssign();
}

void (*CaptioningStateManager.captionsRecognizerStateManager.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_getKeyPath();
  v3[6] = OBJC_IVAR____TtC15ConversationKit22CaptioningStateManager___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_76();
  v3[7] = lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v4, 255, v5, &protocol conformance descriptor for CaptioningStateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v1 + 80);
  v3[3] = Strong;
  v3[4] = v7;
  return CaptioningStateManager.captionsRecognizerStateManager.modify;
}

void CaptioningStateManager.captionsRecognizerStateManager.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 80) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
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

  *v3 = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

double CaptioningStateManager.cancellables.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_76();
  v5 = lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v3, 255, v4, &protocol conformance descriptor for CaptioningStateManager);
  OUTLINED_FUNCTION_1_12(v5, v6);

  OUTLINED_FUNCTION_4_5(v2 + 88, v7);

  return result;
}

double CaptioningStateManager.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();

  _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5();
  v4 = v3;

  if (v4)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)(v7, partial apply for closure #1 in CaptioningStateManager.cancellables.setter, v8);
  }

  return result;
}

void closure #1 in CaptioningStateManager.cancellables.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
}

void *CaptioningStateManager.__allocating_init(capabilities:call:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_48(a1, a2);
  v2 = OUTLINED_FUNCTION_5_46();

  return specialized CaptioningStateManager.__allocating_init(capabilities:call:)(v2, v3, v4, v5, v6);
}

void *CaptioningStateManager.init(capabilities:call:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_48(a1, a2);
  v2 = OUTLINED_FUNCTION_5_46();

  return specialized CaptioningStateManager.init(capabilities:call:)(v2, v3, v4, v5, v6);
}

uint64_t closure #1 in CaptioningStateManager.init(capabilities:call:)(char *a1, uint64_t a2)
{
  v2 = *a1;
  OUTLINED_FUNCTION_4_5(a2 + 16, a2);
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptioningStateManager.setCaptioningEnabled(_:)(v2);
  }

  return result;
}

Swift::Void __swiftcall CaptioningStateManager.setCaptioningEnabled(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if ((CaptioningStateManager.isCaptioningEnabled.getter() & 1) != v4)
  {
    if (a1)
    {
      v8 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
      type metadata accessor for MainActor();

      v9 = static MainActor.shared.getter();
      v10 = swift_allocObject();
      v11 = MEMORY[0x1E69E85E0];
      v10[2] = v9;
      v10[3] = v11;
      v10[4] = v2;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    }

    else
    {
      v12 = 0;
      v13 = 1;
      CurrentValueSubject.send(_:)();
    }
  }
}

uint64_t closure #1 in CaptioningStateManager.setCaptioningEnabled(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in CaptioningStateManager.setCaptioningEnabled(_:), v6, v5);
}

uint64_t closure #1 in CaptioningStateManager.setCaptioningEnabled(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 2;
  if (CaptioningStateManager.asrAvailability.getter(a1, a2) == 2)
  {
    v5 = 1009;
  }

  else
  {
    v5 = 1;
  }

  v6 = objc_opt_self();
  v3[2] = v3;
  v3[7] = v3 + 18;
  v3[3] = closure #1 in CaptioningStateManager.setCaptioningEnabled(_:);
  v7 = swift_continuation_init();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyShySSGs5NeverOGMd, &_sSccyShySSGs5NeverOGMR);
  v3[10] = MEMORY[0x1E69E9820];
  v3[11] = 1107296256;
  v3[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> () with result type Set<String>;
  v3[13] = &block_descriptor_48;
  v3[14] = v7;
  [v6 installedLanguagesForTaskHint:v5 completion:v3 + 10];

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t closure #1 in CaptioningStateManager.setCaptioningEnabled(_:)()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](closure #1 in CaptioningStateManager.setCaptioningEnabled(_:), v2, v1);
}

{

  v2 = *(v0 + 144);
  v4 = CaptioningStateManager.asrAssetIdentifier.getter(v1, v3);
  v6 = specialized Set.contains(_:)(v4, v5, v2);

  if (v6)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v7 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BC4BAA20;
    v10 = CaptioningStateManager.asrAvailability.getter(v8, v9);
    v11 = lazy protocol witness table accessor for type String and conformance String();
    v13 = v11;
    v14 = v10 == 2;
    if (v10 == 2)
    {
      v15 = 1381187911;
    }

    else
    {
      v15 = 0x525341474ELL;
    }

    v16 = 0xE500000000000000;
    v17 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = v11;
    if (v14)
    {
      v16 = 0xE400000000000000;
    }

    *(v8 + 32) = v15;
    *(v8 + 40) = v16;
    v18 = CaptioningStateManager.asrAssetIdentifier.getter(v11, v12);
    *(v8 + 96) = v17;
    *(v8 + 104) = v13;
    *(v8 + 72) = v18;
    *(v8 + 80) = v19;
    v20 = static os_log_type_t.default.getter();
    v21 = 2;
    os_log(_:dso:log:type:_:)("%@ speech model (%@) is ready for captions", 42, 2, &dword_1BBC58000, v7, v20, v8);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v22 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BC4BAA20;
    v25 = CaptioningStateManager.asrAvailability.getter(v23, v24);
    v26 = lazy protocol witness table accessor for type String and conformance String();
    v28 = v26;
    v29 = v25 == 2;
    if (v25 == 2)
    {
      v30 = 1381187911;
    }

    else
    {
      v30 = 0x525341474ELL;
    }

    v31 = 0xE500000000000000;
    v32 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = v26;
    if (v29)
    {
      v31 = 0xE400000000000000;
    }

    *(v23 + 32) = v30;
    *(v23 + 40) = v31;
    v33 = CaptioningStateManager.asrAssetIdentifier.getter(v26, v27);
    *(v23 + 96) = v32;
    *(v23 + 104) = v28;
    *(v23 + 72) = v33;
    *(v23 + 80) = v34;
    v35 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%@ speech model (%@) is missing", 31, 2, &dword_1BBC58000, v22, v35, v23);
    v21 = 1;
  }

  *(v0 + 80) = v21;
  *(v0 + 88) = 1;
  CurrentValueSubject.send(_:)();
  v36 = *(v0 + 8);

  return v36();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> () with result type Set<String>(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v2, v3);
}

Swift::Void __swiftcall CaptioningStateManager.fetchSpeechModel()()
{
  v1 = v0;
  v2 = CurrentValueSubject.value.getter();
  if (v43 == 1 && v42 == 1)
  {
    v11 = CaptioningStateManager.asrAvailability.getter(v2, v3);
    if (v11 == 2)
    {
      v13 = 1009;
    }

    else
    {
      v11 = CaptioningStateManager.asrAvailability.getter(v11, v12);
      if (v11 != 1)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        v40 = static OS_os_log.conversationKit;
        v41 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Invalid availability returned for live captions", 47, 2, &dword_1BBC58000, v40, v41, MEMORY[0x1E69E7CC0]);
LABEL_20:
        CurrentValueSubject.send(_:)();
        return;
      }

      v13 = 1011;
    }

    CaptioningStateManager.call.getter(v11, v12);
    v15 = v14;
    ObjectType = swift_getObjectType();
    v17 = (*(v15 + 184))(ObjectType, v15);
    swift_unknownObjectRelease();
    v18 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(v17);
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v22 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SFEntitledAssetConfig, 0x1E697B9B8);
      v24 = CaptioningStateManager.asrAssetIdentifier.getter(v22, v23);
      v26 = SFEntitledAssetConfig.__allocating_init(language:taskHint:)(v24, v25, v13);
      v27 = objc_opt_self();
      v28 = MEMORY[0x1BFB209B0](v20, v21);

      OUTLINED_FUNCTION_20();
      v29 = swift_allocObject();
      swift_weakInit();
      v46 = partial apply for closure #1 in CaptioningStateManager.fetchSpeechModel();
      v47 = v29;
      v42 = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed (@unowned Int, @unowned Bool) -> ();
      v45 = &block_descriptor_22;
      v30 = _Block_copy(&v42);

      v46 = partial apply for closure #2 in CaptioningStateManager.fetchSpeechModel();
      v47 = v1;
      v42 = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ();
      v45 = &block_descriptor_11_0;
      v31 = _Block_copy(&v42);

      [v27 fetchAssetWithConfig:v26 clientIdentifier:v28 detailedProgress:v30 completion:v31];
      _Block_release(v31);
      _Block_release(v30);

      return;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v32 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BA940;
    v42 = CaptioningStateManager.call.getter(v33, v34);
    v43 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
    v36 = String.init<A>(reflecting:)();
    v38 = v37;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v33 + 32) = v36;
    *(v33 + 40) = v38;
    v39 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Missing bundle identifier for call %@", 37, 2, &dword_1BBC58000, v32, v39, v33, v42, v43);

    goto LABEL_20;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v5 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  CurrentValueSubject.value.getter();
  v48 = v42;
  v49 = v43;
  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Ignoring request to fetch the speech model in state '%@')", 57, 2, &dword_1BBC58000, v5, v10, v6);
}

id SFEntitledAssetConfig.__allocating_init(language:taskHint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x1BFB209B0](a1, a2);

  v8 = [v6 initWithLanguage:v7 taskHint:a3];

  return v8;
}

uint64_t closure #1 in CaptioningStateManager.fetchSpeechModel()(uint64_t a1, char a2, uint64_t a3)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BAA20;
  v5 = String.init<A>(reflecting:)();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v10 = String.init<A>(reflecting:)();
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Speech model download progress: %@. Is stalled: %@", 50, 2, &dword_1BBC58000, v3, v12, v4);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @unowned Bool) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t closure #2 in CaptioningStateManager.fetchSpeechModel()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  aBlock[4] = partial apply for closure #1 in closure #2 in CaptioningStateManager.fetchSpeechModel();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_37;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v9, v6, v13);
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

uint64_t closure #1 in closure #2 in CaptioningStateManager.fetchSpeechModel()(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BC4BA940;
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Speech model fetch failed! - %@)", 32, 2, &dword_1BBC58000, v3, v9, v4);

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
LABEL_13:

      CurrentValueSubject.send(_:)();
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong && (v15 = CaptioningStateManager.asrAvailability.getter(Strong, v14), , v15 == 2))
    {
      v16 = 0xE400000000000000;
      v17 = 1381187911;
    }

    else
    {
      v16 = 0xE500000000000000;
      v17 = 0x525341474ELL;
    }

    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v17;
    *(v12 + 40) = v16;
    v18 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%@ Speech model fetch complete", 30, 2, &dword_1BBC58000, v11, v18, v12);

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      goto LABEL_13;
    }
  }

  return result;
}

double thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);

  return result;
}

Swift::Void __swiftcall CaptioningStateManager.setRecognizerEnabled(_:)(Swift::Bool a1)
{
  v3 = CaptioningStateManager.captionsRecognizerStateManager.getter(a1, v1);
  v5 = v4;
  if (a1)
  {
    if (!v3)
    {
      return;
    }

    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v7 = swift_getObjectType();
    (*(v5 + 16))(v7, v5);
  }

  swift_unknownObjectRelease();
}

uint64_t CaptioningStateManager.createMoreMenuItemProvider()@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isMoreMenuEnabled.getter())
  {
    v2 = type metadata accessor for LiveCaptionMoreMenuItemViewModel();
    v3 = swift_allocObject();

    LiveCaptionMoreMenuItemViewModel.init(_:)(v4);
    result = lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(&lazy protocol witness table cache variable for type LiveCaptionMoreMenuItemViewModel and conformance LiveCaptionMoreMenuItemViewModel, v5, type metadata accessor for LiveCaptionMoreMenuItemViewModel, &protocol conformance descriptor for LiveCaptionMoreMenuItemViewModel);
  }

  else
  {
    v2 = 0;
    result = 0;
    v3 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v2;
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t LiveCaptionMoreMenuItemViewModel.__allocating_init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_48();
  v2 = swift_allocObject();
  LiveCaptionMoreMenuItemViewModel.init(_:)(a1);
  return v2;
}

uint64_t CaptioningStateManager.deinit()
{

  swift_unknownObjectRelease();

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 72);

  v1 = OBJC_IVAR____TtC15ConversationKit22CaptioningStateManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CaptioningStateManager.__deallocating_deinit()
{
  CaptioningStateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t LiveCaptionMoreMenuItemViewModel.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v5 = [v4 videoCallTranslationEnabled];

  *(v2 + 16) = v5;
  *(v2 + 24) = a1;
  type metadata accessor for FTMenuItem();

  *(v2 + 32) = static FTMenuItem.liveCaptionsRow(isSessionActive:rowAction:stopAction:)();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of FTMenuItem.rowAction.setter();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of FTMenuItem.stopAction.setter();

  return v2;
}

uint64_t closure #1 in LiveCaptionMoreMenuItemViewModel.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OUTLINED_FUNCTION_4_5(a1 + 16, a2);
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptioningStateManager.setCaptioningEnabled(_:)(v2 & 1);
  }

  return result;
}

uint64_t LiveCaptionMoreMenuItemViewModel.createMenuItem()()
{
  if (((*((*MEMORY[0x1E69E7D40] & **(*(v0 + 24) + 64)) + 0x70))() & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + 16) != 1)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = VideoCallTranslationController.hudViewModel.getter();
  v3 = CallTranslationHUDViewModel.isTranslationStarted.getter(v1, v2);

  if (v3)
  {
    return 0;
  }

LABEL_7:
  CurrentValueSubject.value.getter();
  v4 = *(v0 + 32);
  dispatch thunk of FTMenuItem.isSessionActive.setter();

  return v4;
}

uint64_t LiveCaptionMoreMenuItemViewModel.deinit()
{

  return v0;
}

uint64_t LiveCaptionMoreMenuItemViewModel.__deallocating_deinit()
{
  LiveCaptionMoreMenuItemViewModel.deinit();
  OUTLINED_FUNCTION_4_48();

  return swift_deallocClassInstance();
}

void *specialized CaptioningStateManager.__allocating_init(capabilities:call:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();

  return specialized CaptioningStateManager.init(capabilities:call:)(a1, a2, v9, a4, a5);
}

void *specialized CaptioningStateManager.init(capabilities:call:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v40 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v33 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMR);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v33 - v10;
  v39 = type metadata accessor for Locale();
  v11 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LanguageManager();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3[10] = 0;
  swift_unknownObjectWeakInit();
  a3[11] = MEMORY[0x1E69E7CD0];
  v37 = a3 + 11;
  ObservationRegistrar.init()();
  a3[8] = a1;
  v41 = 0;
  v42 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMR);
  swift_allocObject();
  v18 = a1;
  a3[2] = CurrentValueSubject.init(_:)();
  a3[3] = a2;
  a3[4] = v40;
  [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  LanguageManager.init(featureFlags:)();
  static Locale.current.getter();
  v19 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v21 = v20;
  v23 = v22;
  (*(v11 + 8))(v13, v39);
  v24 = (*(v15 + 8))(v17, v14);
  a3[5] = v19;
  a3[6] = v21;
  a3[7] = v23;
  v25 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v18) + 0x70))(v24))
  {
    v26 = (*((*v25 & *v18) + 0x68))();
    v40 = v18;
    v41 = v26;
    v27 = [objc_opt_self() mainRunLoop];
    v43 = v27;
    v28 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v29 = v34;
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, MEMORY[0x1E695BED8]);
    lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
    v30 = v35;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSRunLoop.SchedulerOptions?(v29);

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMR, MEMORY[0x1E695BE98]);
    v31 = v38;
    Publisher<>.sink(receiveValue:)();

    (*(v36 + 8))(v30, v31);
    swift_getKeyPath();
    v41 = a3;
    lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(&lazy protocol witness table cache variable for type CaptioningStateManager and conformance CaptioningStateManager, 255, type metadata accessor for CaptioningStateManager, &protocol conformance descriptor for CaptioningStateManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = a3;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v41 = a3;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  else
  {
  }

  return a3;
}

uint64_t partial apply for closure #1 in CaptioningStateManager.setCaptioningEnabled(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in CaptioningStateManager.setCaptioningEnabled(_:)(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata completion function for CaptioningStateManager(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

Swift::Void __swiftcall ShareViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShareViewController();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  ShareViewController.startProcessInputItemsTask()();
}

uint64_t ShareViewController.startProcessInputItemsTask()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

id ShareViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ShareViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility] = 0;
  v7 = OBJC_IVAR____TtC15ConversationKit19ShareViewController_collaborationInitiationManager;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 conversationManager];

  type metadata accessor for CollaborationInitiationManager();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *&v3[v7] = v10;
  if (a2)
  {
    v11 = MEMORY[0x1BFB209B0](a1, a2);
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for ShareViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id ShareViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ShareViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility] = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit19ShareViewController_collaborationInitiationManager;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 conversationManager];

  type metadata accessor for CollaborationInitiationManager();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *&v1[v3] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ShareViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id ShareViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in ShareViewController.startProcessInputItemsTask()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = closure #1 in ShareViewController.startProcessInputItemsTask();

  return ShareViewController.processInputItems()();
}

uint64_t closure #1 in ShareViewController.startProcessInputItemsTask()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  *(v6 + 80) = v0;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v9 = closure #1 in ShareViewController.startProcessInputItemsTask();
  }

  else
  {
    v9 = closure #1 in ShareViewController.startProcessInputItemsTask();
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  v18 = v0;

  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, &static Log.default);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_42();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v3 = v10;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Error processing input items: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  v12 = [*(v0 + 48) extensionContext];
  v13 = *(v0 + 80);
  if (v12)
  {
    OUTLINED_FUNCTION_28_0();
    v14 = _convertErrorToNSError(_:)();
    [v3 cancelRequestWithError_];
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v15();
}

uint64_t ShareViewController.processInputItems()()
{
  v1[24] = v0;
  type metadata accessor for MainActor();
  v1[25] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v3;
  v1[27] = v2;

  return MEMORY[0x1EEE6DFA0](ShareViewController.processInputItems(), v3, v2);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = ShareViewController.processInputItems();
  }

  else
  {
    v7 = ShareViewController.processInputItems();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t ShareViewController.processExtensionItem(_:for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x1EEE6DFA0](ShareViewController.processExtensionItem(_:for:), v6, v5);
}

void ShareViewController.processExtensionItem(_:for:)()
{
  v1 = outlined bridged method (pb) of @objc NSExtensionItem.attachments.getter(*(v0 + 16));
  *(v0 + 96) = v1;
  if (!v1)
  {
    v12 = *(v0 + 16);

    OUTLINED_FUNCTION_19_18();
    _StringGuts.grow(_:)(21);
    v13 = v12;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v46 = v15;
    v47 = v17;
    v18 = 0x80000001BC4FD110;
    v19 = 0xD000000000000013;
    goto LABEL_25;
  }

  v2 = v1;
  OUTLINED_FUNCTION_33_17();
  v3 = specialized Array.count.getter();
  *(v0 + 104) = v3;
  v4 = 0;
  if (v3)
  {
    do
    {
      v5 = *(v0 + 96);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB22010](v4);
      }

      else
      {
        if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v6 = *(v5 + 8 * v4 + 32);
      }

      v7 = v6;
      *(v0 + 112) = v6;
      *(v0 + 120) = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_26_18();
      v9 = v8;
      v10 = [v7 hasItemConformingToTypeIdentifier_];

      if (v10)
      {
        v39 = swift_task_alloc();
        *(v0 + 128) = v39;
        *v39 = v0;
        OUTLINED_FUNCTION_4_49(v39);
        OUTLINED_FUNCTION_13_3();

        ShareViewController.loadSandboxToken(from:)(v40);
        return;
      }

      v4 = *(v0 + 120);
    }

    while (v4 != *(v0 + 104));
    v11 = *(v0 + 96);
    v2 = v11;
  }

  else
  {
    v11 = *(v0 + 96);
  }

  v20 = 0;
  v21 = v2 & 0xFFFFFFFFFFFFFF8;
  v22 = v11 & 0xC000000000000001;
  v23 = v11 + 32;
  while (1)
  {
    if (v20 == v4)
    {
      v29 = *(v0 + 16);

      OUTLINED_FUNCTION_19_18();
      _StringGuts.grow(_:)(46);
      v30 = v29;
      v31 = [v30 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v46 = v32;
      v47 = v34;
      v19 = 0xD00000000000002CLL;
      v18 = 0x80000001BC4FD190;
LABEL_25:
      MEMORY[0x1BFB20B10](v19, v18);
      v35 = lazy protocol witness table accessor for type ShareViewControllerError and conformance ShareViewControllerError();
      OUTLINED_FUNCTION_19_6(&type metadata for ShareViewControllerError, v35);
      *v36 = v46;
      v36[1] = v47;
      swift_willThrow();

      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_13_3();

      __asm { BRAA            X1, X16 }
    }

    if (v22)
    {
      v24 = MEMORY[0x1BFB22010](v20, *(v0 + 96));
    }

    else
    {
      if (v20 >= *(v21 + 16))
      {
        goto LABEL_35;
      }

      v24 = *(v23 + 8 * v20);
    }

    v25 = v24;
    *(v0 + 160) = v24;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_26_18();
    v27 = v26;
    v28 = [v25 hasItemConformingToTypeIdentifier_];

    if (v28 & 1) == 0 && [v25 respondsToSelector_] && (objc_msgSend(v25, sel_sl_hasPossibleCollaborationRepresentation))
    {
      v42 = *(v0 + 24);
      *(v0 + 168) = *(*(v0 + 32) + OBJC_IVAR____TtC15ConversationKit19ShareViewController_collaborationInitiationManager);
      v43 = v25;
      *(v0 + 176) = [v42 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = swift_task_alloc();
      *(v0 + 184) = v44;
      *v44 = v0;
      OUTLINED_FUNCTION_6_49(v44);
      OUTLINED_FUNCTION_13_3();

      NSItemProvider.collaborationInitiator.getter();
      return;
    }

    v4 = *(v0 + 104);
    ++v20;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t ShareViewController.processExtensionItem(_:for:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  v3[17] = v5;
  v3[18] = v6;
  v3[19] = v0;

  if (v0)
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = ShareViewController.processExtensionItem(_:for:);
  }

  else
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = ShareViewController.processExtensionItem(_:for:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  v50 = v0;
  v1 = MEMORY[0x1BFB209B0](*(v0 + 136), *(v0 + 144));
  consumeSandboxToken(v1);

  if (one-time initialization token for default != -1)
  {
LABEL_38:
    OUTLINED_FUNCTION_0_45(&one-time initialization token for default);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 112);
    v9 = OUTLINED_FUNCTION_42();
    v10 = swift_slowAlloc();
    v48 = v10;
    *v9 = 136315138;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v48);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Consumed sandbox token %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v12 = 0xED00006E656B6F74;
  OUTLINED_FUNCTION_33_17();
  while (1)
  {
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);
    if (v13 == *(v0 + 104))
    {
      v19 = 0;
      v20 = v14 & 0xFFFFFFFFFFFFFF8;
      v21 = v14 & 0xC000000000000001;
      v22 = v14 + 32;
      while (1)
      {
        if (v19 == v13)
        {
          v32 = *(v0 + 16);

          OUTLINED_FUNCTION_19_18();
          _StringGuts.grow(_:)(46);
          v33 = v32;
          v34 = [v33 description];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v48 = v35;
          v49 = v37;
          MEMORY[0x1BFB20B10](0xD00000000000002CLL, 0x80000001BC4FD190);
          v38 = v48;
          v39 = v49;
          v40 = lazy protocol witness table accessor for type ShareViewControllerError and conformance ShareViewControllerError();
          OUTLINED_FUNCTION_19_6(&type metadata for ShareViewControllerError, v40);
          *v41 = v38;
          v41[1] = v39;
          swift_willThrow();

          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_13_3();

          __asm { BRAA            X1, X16 }
        }

        if (v21)
        {
          v23 = MEMORY[0x1BFB22010](v19, *(v0 + 96));
        }

        else
        {
          if (v19 >= *(v20 + 16))
          {
            goto LABEL_36;
          }

          v23 = *(v22 + 8 * v19);
        }

        v24 = v23;
        *(v0 + 160) = v23;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_35;
        }

        v25 = v12;
        v26 = MEMORY[0x1BFB209B0](v4, v12);
        v27 = [v24 hasItemConformingToTypeIdentifier_];

        if (v27 & 1) == 0 && [v24 respondsToSelector_] && (objc_msgSend(v24, sel_sl_hasPossibleCollaborationRepresentation))
        {
          v44 = *(v0 + 24);
          *(v0 + 168) = *(*(v0 + 32) + OBJC_IVAR____TtC15ConversationKit19ShareViewController_collaborationInitiationManager);
          v45 = v24;
          *(v0 + 176) = [v44 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = swift_task_alloc();
          *(v0 + 184) = v46;
          *v46 = v0;
          OUTLINED_FUNCTION_6_49(v46);
          OUTLINED_FUNCTION_13_3();

          return NSItemProvider.collaborationInitiator.getter();
        }

        v13 = *(v0 + 104);
        ++v19;
        v12 = v25;
      }
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1BFB22010](*(v0 + 120));
    }

    else
    {
      if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v15 = *(v14 + 8 * v13 + 32);
    }

    v16 = v15;
    *(v0 + 112) = v15;
    *(v0 + 120) = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v17 = MEMORY[0x1BFB209B0](v4, 0xED00006E656B6F74);
    v18 = [v16 hasItemConformingToTypeIdentifier_];

    if (v18)
    {
      break;
    }
  }

  v28 = swift_task_alloc();
  *(v0 + 128) = v28;
  *v28 = v0;
  OUTLINED_FUNCTION_4_49(v28);
  OUTLINED_FUNCTION_13_3();

  return ShareViewController.loadSandboxToken(from:)(v29);
}

{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    v6 = *(v3 + 176);
    v8 = *(v3 + 48);
    v7 = *(v3 + 56);
    v9 = *(v3 + 40);

    (*(v8 + 8))(v7, v9);
    v10 = *(v3 + 80);
    v11 = *(v3 + 88);
    v12 = ShareViewController.processExtensionItem(_:for:);
  }

  else
  {
    v10 = *(v3 + 80);
    v11 = *(v3 + 88);
    v12 = ShareViewController.processExtensionItem(_:for:);
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

{
  v1 = *(v0 + 160);
  if (*(v0 + 272) == 1)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);

    v4 = static MainActor.shared.getter();
    *(v0 + 240) = v4;
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    v5[2] = v2;
    v5[3] = v1;
    v5[4] = v3;
    v6 = swift_task_alloc();
    *(v0 + 256) = v6;
    *v6 = v0;
    v6[1] = ShareViewController.processExtensionItem(_:for:);
    v7 = MEMORY[0x1E69E85E0];
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v6, v4, v7, 0xD00000000000001CLL, 0x80000001BC4FD170, partial apply for closure #2 in ShareViewController.processExtensionItem(_:for:), v5, v8);
  }

  else
  {

    v9 = lazy protocol witness table accessor for type ShareViewControllerError and conformance ShareViewControllerError();
    OUTLINED_FUNCTION_19_6(&type metadata for ShareViewControllerError, v9);
    *v10 = 0xD000000000000033;
    v10[1] = 0x80000001BC4FD130;
    swift_willThrow();

    OUTLINED_FUNCTION_13();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_44();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = ShareViewController.processExtensionItem(_:for:);
  }

  else
  {
    v7 = ShareViewController.processExtensionItem(_:for:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);

  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility);
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility) = 0;

  OUTLINED_FUNCTION_13();

  return v3();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_13();

  return v2();
}

id ShareViewController.processExtensionItem(_:for:)()
{
  OUTLINED_FUNCTION_44();
  v1 = [*(v0 + 16) attributedTitle];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 208) = v5;
  result = [*(v0 + 32) view];
  if (result)
  {
    v7 = result;

    *(v0 + 216) = [v7 window];

    v8 = swift_task_alloc();
    *(v0 + 224) = v8;
    *v8 = v0;
    v8[1] = ShareViewController.processExtensionItem(_:for:);

    return CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShareViewController.processExtensionItem(_:for:)(char a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 232) = v1;

  v7 = *(v4 + 216);
  v8 = *(v4 + 192);
  if (v1)
  {
    v9 = *(v5 + 48);
    v10 = *(v5 + 56);
    v11 = *(v5 + 40);

    (*(v9 + 8))(v10, v11);
    v12 = *(v5 + 80);
    v13 = *(v5 + 88);
    v14 = ShareViewController.processExtensionItem(_:for:);
  }

  else
  {
    v16 = *(v5 + 48);
    v15 = *(v5 + 56);
    v17 = *(v5 + 40);
    *(v5 + 272) = a1 & 1;
    (*(v16 + 8))(v15, v17);

    v12 = *(v5 + 80);
    v13 = *(v5 + 88);
    v14 = ShareViewController.processExtensionItem(_:for:);
  }

  return MEMORY[0x1EEE6DFA0](v14, v12, v13);
}

uint64_t ShareViewController.loadSandboxToken(from:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[4] = a1;
  v1[5] = ObjectType;
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x1EEE6DFA0](ShareViewController.loadSandboxToken(from:), v5, v4);
}

uint64_t ShareViewController.loadSandboxToken(from:)()
{
  OUTLINED_FUNCTION_44();
  v7 = *(v0 + 32);
  v1 = static MainActor.shared.getter();
  *(v0 + 80) = v1;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *(v2 + 16) = v7;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = ShareViewController.loadSandboxToken(from:);
  v4 = MEMORY[0x1E69E85E0];
  v5 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE6DE38](v0 + 16, v1, v4, 0xD000000000000017, 0x80000001BC4FD1C0, partial apply for closure #1 in ShareViewController.loadSandboxToken(from:), v2, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = ShareViewController.loadSandboxToken(from:);
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = ShareViewController.loadSandboxToken(from:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

void closure #1 in ShareViewController.loadSandboxToken(from:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5Error_pGMd, _sScCySSs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = MEMORY[0x1BFB209B0](0x2D786F62646E6173, 0xED00006E656B6F74, v6);
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in ShareViewController.loadSandboxToken(from:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_23;
  v12 = _Block_copy(aBlock);

  [a2 loadItemForTypeIdentifier:v9 options:0 completionHandler:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in ShareViewController.loadSandboxToken(from:)(void *a1, void *a2)
{
  if (a1 && (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd, &_sSo14NSSecureCoding_pMR), (swift_dynamicCast() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5Error_pGMd, _sScCySSs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    _StringGuts.grow(_:)(55);
    MEMORY[0x1BFB20B10](0xD000000000000035, 0x80000001BC4FD210);
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v5 = String.init<A>(describing:)();
    MEMORY[0x1BFB20B10](v5);

    lazy protocol witness table accessor for type ShareViewControllerError and conformance ShareViewControllerError();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5Error_pGMd, _sScCySSs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

void closure #2 in ShareViewController.processExtensionItem(_:for:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  objc_allocWithZone(MEMORY[0x1E697B698]);
  v15 = @nonobjc SWBackgroundSendUtility.init(itemProvider:faceTime:queue:completion:)(a3, a4, v12, partial apply for closure #1 in closure #2 in ShareViewController.processExtensionItem(_:for:), v14);
  v16 = *(a2 + OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility);
  *(a2 + OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility) = v15;
}

uint64_t closure #1 in closure #2 in ShareViewController.processExtensionItem(_:for:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

id @nonobjc SWBackgroundSendUtility.init(itemProvider:faceTime:queue:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v12[3] = &block_descriptor_23;
  v9 = _Block_copy(v12);
  v10 = [v5 initWithItemProvider:a1 faceTimeConversation:a2 queue:a3 completion:v9];

  _Block_release(v9);

  return v10;
}

unint64_t lazy protocol witness table accessor for type ShareViewControllerError and conformance ShareViewControllerError()
{
  result = lazy protocol witness table cache variable for type ShareViewControllerError and conformance ShareViewControllerError;
  if (!lazy protocol witness table cache variable for type ShareViewControllerError and conformance ShareViewControllerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareViewControllerError and conformance ShareViewControllerError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TUConversation and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversation and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversation and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversation and conformance NSObject);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc NSExtensionItem.attachments.getter(void *a1)
{
  v1 = [a1 attachments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSItemProvider, 0x1E696ACA0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnnn) of @objc NSExtensionContext.completeRequest(returningItems:completionHandler:)(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 completeRequestReturningItems:isa completionHandler:a2];
}

uint64_t partial apply for closure #1 in closure #1 in ShareViewController.loadSandboxToken(from:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5Error_pGMd, _sScCySSs5Error_pGMR);

  return closure #1 in closure #1 in ShareViewController.loadSandboxToken(from:)(a1, a2);
}

uint64_t objectdestroy_16Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in ShareViewController.processExtensionItem(_:for:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  return closure #1 in closure #2 in ShareViewController.processExtensionItem(_:for:)(a1);
}

id ShareCardSharePlayHeaderView.init(controlsManager:app:)(void *a1, void *a2)
{
  State.init(wrappedValue:)();
  v4 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x78);
  v5 = a1;
  v6 = a2;
  v4();

  return v5;
}

double ShareCardSharePlayHeaderView.picker.getter@<D0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v32 = a3;
  v31 = a1;
  v38 = a5;
  type metadata accessor for MenuOrder();
  OUTLINED_FUNCTION_1();
  v36 = v7;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA15ModifiedContentVyAEyAEyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGANyAA5ColorVSgGGANyAA4FontVSgGGAA7SectionVyAiA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA9_AA6ButtonVyAA6HStackVyAA9TupleViewVyAI_AA6SpacerVAKSgtGGGGAA9EmptyViewVGGMd, &_s7SwiftUI4MenuVyAA15ModifiedContentVyAEyAEyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGANyAA5ColorVSgGGANyAA4FontVSgGGAA7SectionVyAiA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA9_AA6ButtonVyAA6HStackVyAA9TupleViewVyAI_AA6SpacerVAKSgtGGGGAA9EmptyViewVGGMR);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = [objc_opt_self() conversationKit];
  v49._object = 0xE000000000000000;
  v19.value._countAndFlagsBits = 0x61737265766E6F43;
  v19.value._object = 0xEF74694B6E6F6974;
  v20._object = 0x80000001BC4FD250;
  v20._countAndFlagsBits = 0xD000000000000017;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BA940;
  v23 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x68))();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  String.init(format:_:)();

  v26 = String.uppercased()();

  v43 = v26;
  v44 = v31;
  v45 = a2;
  v46 = v32;
  v47 = v33;
  v39 = v31;
  v40 = a2;
  v41 = v32;
  v42 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGALyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGALyAA4FontVSgGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGAlA6ButtonVyAA6HStackVyAA9TupleViewVyAE_AA6SpacerVAA5ImageVSgtGGGGAA05EmptyQ0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGAlA6ButtonVyAA6HStackVyAA9TupleViewVyAE_AA6SpacerVAA5ImageVSgtGGGGAA05EmptyQ0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Section<Text, ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>>, EmptyView> and conformance <> Section<A, B, C>();
  Menu.init(content:label:)();
  static MenuOrder.fixed.getter();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, Section<Text, ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>>, EmptyView>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA15ModifiedContentVyAEyAEyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGANyAA5ColorVSgGGANyAA4FontVSgGGAA7SectionVyAiA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA9_AA6ButtonVyAA6HStackVyAA9TupleViewVyAI_AA6SpacerVAKSgtGGGGAA9EmptyViewVGGMd, &_s7SwiftUI4MenuVyAA15ModifiedContentVyAEyAEyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGANyAA5ColorVSgGGANyAA4FontVSgGGAA7SectionVyAiA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA9_AA6ButtonVyAA6HStackVyAA9TupleViewVyAI_AA6SpacerVAKSgtGGGGAA9EmptyViewVGGMR, MEMORY[0x1E697CD28]);
  v27 = v34;
  View.menuOrder(_:)();
  (*(v36 + 8))(v9, v37);
  (*(v11 + 8))(v14, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = &v17[*(v35 + 36)];
  *v29 = partial apply for closure #1 in View.animation(_:);
  *(v29 + 1) = v28;
  v48 = v26;
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGMR);

  return result;
}

uint64_t closure #1 in ShareCardSharePlayHeaderView.picker.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGAhA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGGMd, &_s7SwiftUI7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGAhA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGGMR);
  lazy protocol witness table accessor for type ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>> and conformance <> ForEach<A, B, C>();
  lazy protocol witness table accessor for type String and conformance String();
  return Section<>.init<A>(_:content:)();
}

uint64_t closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter(void *a1, void *a2, char a3, uint64_t a4)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  v9 = a1;
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit13ForegroundAppC19AutomaticShareStateOGMd, &_sSay15ConversationKit13ForegroundAppC19AutomaticShareStateOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [ForegroundApp.AutomaticShareState] and conformance [A], &_sSay15ConversationKit13ForegroundAppC19AutomaticShareStateOGMd, &_sSay15ConversationKit13ForegroundAppC19AutomaticShareStateOGMR, MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type ForegroundApp.AutomaticShareState and conformance ForegroundApp.AutomaticShareState();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Text, Spacer, Image?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGMR, MEMORY[0x1E697D680]);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter(char *a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  *(v10 + 48) = v9;

  v11 = a2;
  v12 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, Spacer, Image?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGMR, MEMORY[0x1E69817F8]);
  return Button.init(action:label:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter(void *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit13ForegroundAppC014AutomaticShareC0OGMd, &_s7SwiftUI5StateVy15ConversationKit13ForegroundAppC014AutomaticShareC0OGMR);
  State.wrappedValue.setter();
  v8 = v7 == 2;
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x90))(v8);
  v10 = ShareCardSharePlayHeaderView.shareMediaEphemeralAlert(authorization:)(v8, a1, a2);
  return (*((*v9 & *a1) + 0x8E0))(v10);
}

__n128 closure #2 in closure #1 in closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter@<Q0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  v6 = a1;
  v8 = static VerticalAlignment.center.getter();
  v22 = 1;
  closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter(v6, &v16);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  result = v16;
  v15 = v22;
  *a6 = v8;
  *(a6 + 8) = 0;
  *(a6 + 16) = v15;
  *(a6 + 24) = result;
  *(a6 + 40) = v9;
  *(a6 + 48) = v10;
  *(a6 + 56) = v11;
  *(a6 + 64) = v12;
  *(a6 + 72) = v13;
  return result;
}

double closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter@<D0>(unsigned __int8 a1@<W0>, uint64_t a4@<X8>)
{
  v5 = a1;
  v6 = [objc_opt_self() conversationKit];
  v22 = 0xE000000000000000;
  if (v5 == 1)
  {
    v7 = 0x7478654E206B7341;
    v8 = 0x656D695420;
  }

  else
  {
    v7 = 0x6974616D6F747541;
    v8 = 0x796C6C6163;
  }

  v9 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, v10, v6, v11, *(&v22 - 1));

  lazy protocol witness table accessor for type String and conformance String();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit13ForegroundAppC014AutomaticShareC0OGMd, &_s7SwiftUI5StateVy15ConversationKit13ForegroundAppC014AutomaticShareC0OGMR);
  State.wrappedValue.getter();
  if (v23 == v5)
  {
    v20 = Image.init(systemName:)();
  }

  else
  {
    v20 = 0;
  }

  outlined copy of Text.Storage(v13, v15, v17 & 1);
  *a4 = v13;
  *(a4 + 8) = v15;
  *(a4 + 16) = v17 & 1;
  *(a4 + 24) = v19;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v20;

  outlined consume of Text.Storage(v13, v15, v17 & 1);

  return result;
}

uint64_t closure #2 in ShareCardSharePlayHeaderView.picker.getter@<X0>(char a1@<W2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd, &_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMR);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGMR);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  LOBYTE(v40._countAndFlagsBits) = a1;
  v40._object = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit13ForegroundAppC014AutomaticShareC0OGMd, &_s7SwiftUI5StateVy15ConversationKit13ForegroundAppC014AutomaticShareC0OGMR);
  State.wrappedValue.getter();
  v17 = v39;
  v18 = [objc_opt_self() conversationKit];
  v19 = "chevron.up.chevron.down";
  if (v17 == 1)
  {
    v19 = "SharePlay For Quoted_%@";
    v20 = 0xD000000000000014;
  }

  else
  {
    v20 = 0xD000000000000017;
  }

  v41._object = 0xE000000000000000;
  v21.value._countAndFlagsBits = 0x61737265766E6F43;
  v21.value._object = 0xEF74694B6E6F6974;
  v22 = v19 | 0x8000000000000000;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v20, v21, v18, v23, v41);

  v40 = v24;
  lazy protocol witness table accessor for type String and conformance String();
  Label<>.init<A>(_:systemImage:)();
  KeyPath = swift_getKeyPath();
  v26 = &v12[*(v10 + 44)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMR) + 28);
  v28 = *MEMORY[0x1E697E7D8];
  v29 = type metadata accessor for LayoutDirection();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = KeyPath;
  (*(v6 + 32))(v12, v8, v5);
  v30 = static Color.secondary.getter();
  v31 = swift_getKeyPath();
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v12, v16, &_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd, &_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMR);
  v32 = &v16[*(v14 + 44)];
  *v32 = v31;
  v32[1] = v30;
  v33 = static Font.callout.getter();
  v34 = swift_getKeyPath();
  v35 = v38;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v16, v38, &_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGALyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGALyAA4FontVSgGGMR);
  v37 = (v35 + *(result + 36));
  *v37 = v34;
  v37[1] = v33;
  return result;
}

uint64_t closure #1 in ShareCardSharePlayHeaderView.content.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v38 = a3;
  v36 = a1;
  v39 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v32 - v10);
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v16 = a2;
  v17 = static UIImage.appIcon(for:usingIconCrop:)(*(a2 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier), *(a2 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8), 0);
  if (v17)
  {
    v18 = a4;
    v19 = v17;
    Image.init(uiImage:)();
    (*(v13 + 104))(v15, *MEMORY[0x1E6981630], v12);
    v35 = Image.resizable(capInsets:resizingMode:)();

    (*(v13 + 8))(v15, v12);
    static Layout.ConversationControls.values.getter(v45);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    a4 = v18;
    LOBYTE(v46[0]) = 0;
    v41 = v45[56];
    v42 = v45[55];
    v40 = v45[57];
    v20 = v45[58];
    v33 = v45[60];
    v34 = v45[59];
    v21 = 0x3FF0000000000000;
  }

  else
  {
    v34 = 0.0;
    v35 = 0;
    v21 = 0;
    v41 = 0.0;
    v42 = 0.0;
    v40 = 0.0;
    v20 = 0.0;
    v33 = 0.0;
  }

  v32 = v20;
  v22 = static HorizontalAlignment.leading.getter();
  static Layout.ConversationControls.values.getter(v46);
  v23 = v46[17];
  *v11 = v22;
  v11[1] = v23;
  *(v11 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAA0D0PAAE9menuOrderyQrAA04MenuM0VFQOyAA0N0VyAMyAMyAMyAA5LabelVyAkA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA0G9DirectionOGGA_yAA5ColorVSgGGA_yAA4FontVSgGGAA7SectionVyAkA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA22_AA6ButtonVyAA6HStackVyAIyAK_AA6SpacerVAXSgtGGGGAA05EmptyD0VGG_Qo_AA012_TransactionT0VGAA023AccessibilityAttachmentT0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAA0D0PAAE9menuOrderyQrAA04MenuM0VFQOyAA0N0VyAMyAMyAMyAA5LabelVyAkA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA0G9DirectionOGGA_yAA5ColorVSgGGA_yAA4FontVSgGGAA7SectionVyAkA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA22_AA6ButtonVyAA6HStackVyAIyAK_AA6SpacerVAXSgtGGGGAA05EmptyD0VGG_Qo_AA012_TransactionT0VGAA023AccessibilityAttachmentT0VGtGGMR);
  closure #1 in closure #1 in ShareCardSharePlayHeaderView.content.getter(v36, v16, v38, a4, v11 + *(v24 + 44));
  v25 = v37;
  outlined init with copy of Participant?(v11, v37, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMR);
  v27 = v34;
  v26 = v35;
  v43[0] = v35;
  v43[1] = v21;
  v43[2] = 0;
  *&v43[3] = v42;
  *&v43[4] = v41;
  *&v43[5] = v40;
  *&v43[6] = v20;
  *&v43[7] = v34;
  v28 = v33;
  *&v43[8] = v33;
  v29 = v39;
  memcpy(v39, v43, 0x48uLL);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSg_AA6VStackVyAA9TupleViewVyAA4TextV_ACyACyAA0L0PAAE9menuOrderyQrAA04MenuO0VFQOyAA0P0VyACyACyACyAA5LabelVyArEGAA30_EnvironmentKeyWritingModifierVyAA0H9DirectionOGGA2_yAA5ColorVSgGGA2_yAA4FontVSgGGAA7SectionVyArA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA25_AA6ButtonVyAA6HStackVyAPyAR_AA6SpacerVAESgtGGGGAA05EmptyL0VGG_Qo_AA012_TransactionU0VGAA023AccessibilityAttachmentU0VGtGGtMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSg_AA6VStackVyAA9TupleViewVyAA4TextV_ACyACyAA0L0PAAE9menuOrderyQrAA04MenuO0VFQOyAA0P0VyACyACyACyAA5LabelVyArEGAA30_EnvironmentKeyWritingModifierVyAA0H9DirectionOGGA2_yAA5ColorVSgGGA2_yAA4FontVSgGGAA7SectionVyArA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA25_AA6ButtonVyAA6HStackVyAPyAR_AA6SpacerVAESgtGGGGAA05EmptyL0VGG_Qo_AA012_TransactionU0VGAA023AccessibilityAttachmentU0VGtGGtMR);
  outlined init with copy of Participant?(v25, v29 + *(v30 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?(v43, v44);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMR);
  v44[0] = v26;
  v44[1] = v21;
  v44[2] = 0;
  *&v44[3] = v42;
  *&v44[4] = v41;
  *&v44[5] = v40;
  *&v44[6] = v32;
  *&v44[7] = v27;
  *&v44[8] = v28;
  return outlined destroy of ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?(v44);
}

double closure #1 in closure #1 in ShareCardSharePlayHeaderView.content.getter@<D0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v32 = a3;
  v31 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v29 = &v29 - v11;
  v34 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x68))(v10);
  v35 = v12;
  lazy protocol witness table accessor for type String and conformance String();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.Weight.bold.getter();
  v18 = Text.fontWeight(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  outlined consume of Text.Storage(v13, v15, v17 & 1);

  v25 = v29;
  ShareCardSharePlayHeaderView.picker.getter(v31, a2, v32, v33, v29);
  v26 = v30;
  outlined init with copy of Participant?(v25, v30, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMR);
  *a5 = v18;
  *(a5 + 8) = v20;
  *(a5 + 16) = v22 & 1;
  *(a5 + 24) = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAA4ViewPAAE9menuOrderyQrAA04MenuH0VFQOyAA0I0VyAEyAEyAEyAA5LabelVyAcA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAcA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleF0VyAC_AA6SpacerVAPSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGtMd, &_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAA4ViewPAAE9menuOrderyQrAA04MenuH0VFQOyAA0I0VyAEyAEyAEyAA5LabelVyAcA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAcA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleF0VyAC_AA6SpacerVAPSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGtMR);
  outlined init with copy of Participant?(v26, a5 + *(v27 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMR);
  outlined copy of Text.Storage(v18, v20, v22 & 1);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMR);
  outlined consume of Text.Storage(v18, v20, v22 & 1);

  return result;
}

void *ShareCardSharePlayHeaderView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v33 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6HStackVyAA5GroupVyAEyAA15ModifiedContentVyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAEyAA4TextV_AKyAKyAA0C0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyAKyAKyAKyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAGyAEyAX_AA6SpacerVAMSgtGGGGAA05EmptyC0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGMd, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6HStackVyAA5GroupVyAEyAA15ModifiedContentVyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAEyAA4TextV_AKyAKyAA0C0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyAKyAKyAKyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAGyAEyAX_AA6SpacerVAMSgtGGGGAA05EmptyC0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32[-v13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v16 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v16;
  v17 = static Axis.Set.vertical.getter();
  *(inited + 33) = v17;
  v18 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    v18 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    v18 = Axis.Set.init(rawValue:)();
  }

  *v10 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA6HStackVyAA5GroupVyAIyAA15ModifiedContentVyAOyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA6VStackVyAIyAA4TextV_AOyAOyAA0D0PAAE9menuOrderyQrAA04MenuV0VFQOyAA0W0VyAOyAOyAOyAA5LabelVyA0_AQGAA30_EnvironmentKeyWritingModifierVyAA0Q9DirectionOGGA12_yAA5ColorVSgGGA12_yAA4FontVSgGGAA7SectionVyA0_AA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA35_AA6ButtonVyAKyAIyA0__AA6SpacerVAQSgtGGGGAA05EmptyD0VGG_Qo_AA20_TransactionModifierVGAA31AccessibilityAttachmentModifierVGtGGtGGG_AZyA60_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA6HStackVyAA5GroupVyAIyAA15ModifiedContentVyAOyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA6VStackVyAIyAA4TextV_AOyAOyAA0D0PAAE9menuOrderyQrAA04MenuV0VFQOyAA0W0VyAOyAOyAOyAA5LabelVyA0_AQGAA30_EnvironmentKeyWritingModifierVyAA0Q9DirectionOGGA12_yAA5ColorVSgGGA12_yAA4FontVSgGGAA7SectionVyA0_AA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA35_AA6ButtonVyAKyAIyA0__AA6SpacerVAQSgtGGGGAA05EmptyD0VGG_Qo_AA20_TransactionModifierVGAA31AccessibilityAttachmentModifierVGtGGtGGG_AZyA60_GtGGMR);
  closure #1 in ShareCardSharePlayHeaderView.body.getter(a1, a2, v33, v34, &v10[*(v19 + 44)]);
  v20 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v10, v14, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6HStackVyAA5GroupVyAEyAA15ModifiedContentVyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAEyAA4TextV_AKyAKyAA0C0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyAKyAKyAKyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAGyAEyAX_AA6SpacerVAMSgtGGGGAA05EmptyC0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGMd, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6HStackVyAA5GroupVyAEyAA15ModifiedContentVyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAEyAA4TextV_AKyAKyAA0C0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyAKyAKyAKyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAGyAEyAX_AA6SpacerVAMSgtGGGGAA05EmptyC0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGMR);
  v29 = &v14[*(v11 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(__src);
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v14, a5, &_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGMR);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGAA05_FlexoN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGAA05_FlexoN0VGMR);
  return memcpy((a5 + *(v30 + 36)), __src, 0x70uLL);
}

uint64_t closure #1 in ShareCardSharePlayHeaderView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMd, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v30[-1] - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMd, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v30[-1] - v19);
  static Layout.ConversationControls.values.getter(v30);
  v21 = v30[15];
  *v20 = static VerticalAlignment.center.getter();
  v20[1] = v21;
  *(v20 + 16) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA5GroupVyAA05TupleD0VyAA15ModifiedContentVyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSg_AA6VStackVyAKyAA4TextV_AMyAMyAA0D0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyAMyAMyAMyAA5LabelVyAzOGAA30_EnvironmentKeyWritingModifierVyAA0G9DirectionOGGA10_yAA5ColorVSgGGA10_yAA4FontVSgGGAA7SectionVyAzA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA33_AA6ButtonVyAA0F0VyAKyAZ_AA6SpacerVAOSgtGGGGAA05EmptyD0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA5GroupVyAA05TupleD0VyAA15ModifiedContentVyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSg_AA6VStackVyAKyAA4TextV_AMyAMyAA0D0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyAMyAMyAMyAA5LabelVyAzOGAA30_EnvironmentKeyWritingModifierVyAA0G9DirectionOGGA10_yAA5ColorVSgGGA10_yAA4FontVSgGGAA7SectionVyAzA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA33_AA6ButtonVyAA0F0VyAKyAZ_AA6SpacerVAOSgtGGGGAA05EmptyD0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGGMR);
  closure #1 in ShareCardSharePlayHeaderView.content.getter(a1, a2, a3, a4, v20 + *(v22 + 44));
  v23 = static HorizontalAlignment.leading.getter();
  static Layout.ConversationControls.values.getter(v31);
  v24 = v31[16];
  *v14 = v23;
  v14[1] = v24;
  *(v14 + 16) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA5GroupVyAA05TupleD0VyAA15ModifiedContentVyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSg_AA0F0VyAKyAA4TextV_AMyAMyAA0D0PAAE9menuOrderyQrAA04MenuR0VFQOyAA0S0VyAMyAMyAMyAA5LabelVyAzOGAA30_EnvironmentKeyWritingModifierVyAA0G9DirectionOGGA10_yAA5ColorVSgGGA10_yAA4FontVSgGGAA7SectionVyAzA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA33_AA6ButtonVyAA6HStackVyAKyAZ_AA6SpacerVAOSgtGGGGAA05EmptyD0VGG_Qo_AA012_TransactionX0VGAA023AccessibilityAttachmentX0VGtGGtGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA5GroupVyAA05TupleD0VyAA15ModifiedContentVyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSg_AA0F0VyAKyAA4TextV_AMyAMyAA0D0PAAE9menuOrderyQrAA04MenuR0VFQOyAA0S0VyAMyAMyAMyAA5LabelVyAzOGAA30_EnvironmentKeyWritingModifierVyAA0G9DirectionOGGA10_yAA5ColorVSgGGA10_yAA4FontVSgGGAA7SectionVyAzA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA33_AA6ButtonVyAA6HStackVyAKyAZ_AA6SpacerVAOSgtGGGGAA05EmptyD0VGG_Qo_AA012_TransactionX0VGAA023AccessibilityAttachmentX0VGtGGtGGGMR);
  closure #1 in ShareCardSharePlayHeaderView.content.getter(a1, a2, a3, a4, v14 + *(v25 + 44));
  outlined init with copy of Participant?(v20, v17, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMd, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMR);
  outlined init with copy of Participant?(v14, v11, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMd, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMR);
  v26 = v29;
  outlined init with copy of Participant?(v17, v29, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMd, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMR);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGG_ATyA54_GtMd, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGG_ATyA54_GtMR);
  outlined init with copy of Participant?(v11, v26 + *(v27 + 48), &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMd, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMd, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMd, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMd, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMR);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMd, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMR);
}

Class ShareCardSharePlayHeaderView.shareMediaEphemeralAlert(authorization:)(char a1, uint64_t a2, void *a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v4 = *MEMORY[0x1E69DDD40];
  v36 = 0;
  v37[0] = 0x616C706572616873;
  v37[1] = 0xE900000000000079;
  v37[2] = 1;
  v37[3] = v4;
  v38 = 0;
  v39 = 4;
  v40 = 0;
  v41 = 0;
  v42[0] = 0x616C706572616873;
  v42[1] = 0xE900000000000079;
  v42[2] = 1;
  v42[3] = v4;
  v43 = 0;
  v44 = 4;
  v45 = 0;
  v46 = 0;
  v5 = v4;
  outlined init with copy of SymbolImageDescription(v37, v34);
  outlined destroy of SymbolImageDescription(v42);
  v6 = static UIImage.symbolImage(for:)(v37);
  outlined destroy of SymbolImageDescription(v37);
  if (v6)
  {
    v7 = [objc_opt_self() labelColor];
    v8 = [v6 imageWithTintColor_];
  }

  else
  {
    v8 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v9 = objc_opt_self();
  v10 = [v9 conversationKit];
  v11._object = 0xE900000000000059;
  v47._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x414C504552414853;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v47);

  memset(v34, 0, sizeof(v34));
  v35 = 1;
  v15 = v8;
  v32 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v14._countAndFlagsBits, v14._object, v8, v34);

  v17 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x68))(v16);
  v19 = v18;
  v20 = [v9 conversationKit];
  v21 = "SharePlay Automatically";
  if (a1)
  {
    v21 = "%@_WILL_ASK_SHAREPLAY";
    v22 = 0xD00000000000001FLL;
  }

  else
  {
    v22 = 0xD000000000000015;
  }

  v48._object = 0xE000000000000000;
  v23 = v21 | 0x8000000000000000;
  v24.value._countAndFlagsBits = 0x61737265766E6F43;
  v24.value._object = 0xEF74694B6E6F6974;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v22, v24, v20, v25, v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BC4BA940;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v26 + 32) = v17;
  *(v26 + 40) = v19;
  v27 = String.init(format:_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  NSAttributedString.__allocating_init(string:)(v30);

  return v32;
}