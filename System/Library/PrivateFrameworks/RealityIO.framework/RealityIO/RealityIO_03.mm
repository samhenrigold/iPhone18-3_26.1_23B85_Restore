void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO15InputDescriptorOGMd, &_ss11_SetStorageCy9RealityIO15InputDescriptorOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v34 = v1;
    v35 = a1 + 32;
    while (1)
    {
      v6 = v35 + 56 * v4;
      v7 = *(v6 + 48);
      v9 = *(v6 + 32);
      v8 = *(v6 + 40);
      v10 = *(v6 + 16);
      v12 = *(v6 + 8);
      v11 = *v6;
      v13 = *(v6 + 24);
      v14 = *(v6 + 16);
      v50 = __PAIR128__(v12, v11);
      v51 = v10;
      v52 = v9;
      v53 = v8;
      v54 = v7;
      v36 = __PAIR128__(v12, v11);
      v37 = v10;
      v45 = __PAIR128__(v12, v11);
      v46 = v10;
      v47 = v9;
      v48 = v8;
      v49 = v7;
      Hasher.init(_seed:)();
      outlined copy of InputDescriptor(v11, v12, v14, v13, v9, v8, v7);
      InputDescriptor.hash(into:)(&v38);
      v15 = Hasher._finalize()();
      v16 = ~(-1 << *(v3 + 32));
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = *(v5 + 8 * v18);
      v20 = 1 << (v15 & v16);
      if ((v20 & v19) != 0)
      {
        do
        {
          v21 = *(v3 + 48) + 56 * v17;
          v22 = *(v21 + 8);
          v23 = *(v21 + 16);
          v24 = *(v21 + 24);
          v25 = *(v21 + 32);
          v26 = *(v21 + 40);
          v38 = *v21;
          v39 = v22;
          v40 = v23;
          v41 = v24;
          v42 = v25;
          v43 = v26;
          v44 = *(v21 + 48);
          outlined copy of InputDescriptor(v38, v22, v23, v24, v25, v26, v44);
          v27 = specialized static InputDescriptor.== infix(_:_:)(&v38, &v50);
          outlined consume of InputDescriptor(v38, v39, v40, v41, v42, v43, v44);
          if (v27)
          {
            outlined consume of InputDescriptor(v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, v54);
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v19 = *(v5 + 8 * (v17 >> 6));
          v20 = 1 << v17;
        }

        while (((1 << v17) & v19) != 0);
        v29 = v50;
        v28 = v51;
        v9 = v52;
        v8 = v53;
        v7 = v54;
      }

      else
      {
        v29 = v36;
        v28 = v37;
      }

      *(v5 + 8 * v18) = v20 | v19;
      v30 = *(v3 + 48) + 56 * v17;
      *v30 = v29;
      *(v30 + 16) = v28;
      *(v30 + 32) = v9;
      *(v30 + 40) = v8;
      *(v30 + 48) = v7;
      v31 = *(v3 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v3 + 16) = v33;
LABEL_4:
      if (++v4 == v34)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO14PrimDirtyStateC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1;
  v22 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v5;
  while (v22)
  {
    result = MEMORY[0x26670F670](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_24;
    }

LABEL_17:
    Hasher.init(_seed:)();
    (*(*v8 + 128))(v23);
    result = Hasher._finalize()();
    v10 = ~(-1 << *(v3 + 32));
    v11 = result & v10;
    v12 = (result & v10) >> 6;
    v13 = *(v7 + 8 * v12);
    v14 = 1 << (result & v10);
    if ((v14 & v13) != 0)
    {
      while (1)
      {
        v15 = *(**(*(v3 + 48) + 8 * v11) + 136);

        LOBYTE(v15) = v15(v8);

        if (v15)
        {
          break;
        }

        v11 = (v11 + 1) & v10;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          v5 = v20;
          v1 = v21;
          goto LABEL_21;
        }
      }

      v5 = v20;
      v1 = v21;
      if (v6 == v20)
      {
        return v3;
      }
    }

    else
    {
LABEL_21:
      *(v7 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v8;
      v16 = *(v3 + 16);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_25;
      }

      *(v3 + 16) = v17;
      if (v6 == v5)
      {
        return v3;
      }
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_26;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *specialized TypeNamePrimDirtyState.__allocating_init(core:)(uint64_t a1)
{
  v2 = RIOBuilderTypeNameDirtyPrimDescriptorCopyTypeNames();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }

LABEL_12:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_13:

    v8 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v5 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_3:
  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  v8 = v4;
  if ((v5 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v6; ++i)
    {
      v10 = MEMORY[0x26670F670](i, v5);
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        v13 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v10 = v13;
      }

      *(v4 + 16) = v12 + 1;
      *(v4 + 8 * v12 + 32) = v10;
    }
  }

  else
  {
    v14 = 32;
    do
    {
      v15 = *(v4 + 16);
      v16 = *(v4 + 24);
      v17 = *(v5 + v14);
      if (v15 >= v16 >> 1)
      {
        v18 = v16 > 1;
        v19 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v15 + 1, 1);
        v17 = v19;
      }

      *(v4 + 16) = v15 + 1;
      *(v4 + 8 * v15 + 32) = v17;
      v14 += 8;
      --v6;
    }

    while (v6);
  }

LABEL_19:
  v43 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v8);

  v20 = MEMORY[0x266710A20](a1);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v21 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_21;
    }
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_21:
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_22;
      }

LABEL_36:

      v27 = MEMORY[0x277D84F90];
      goto LABEL_37;
    }
  }

  v22 = __CocoaSet.count.getter();
  if (!v22)
  {
    goto LABEL_36;
  }

LABEL_22:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v22 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v23 = 0;
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x26670F670](v23, v21);
    }

    else
    {
      v24 = *(v21 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = RIOBuilderDirtyPropertyDescriptorCopyType();
    if (v26 == 3)
    {
      specialized NamespacedPropertyDirtyState.__allocating_init(core:)(v25);
    }

    else if (v26 == 2)
    {
      specialized NamedPropertyDirtyState.__allocating_init(core:)(v25);
    }

    else
    {
      type metadata accessor for PropertyDirtyState();
      PropertyDirtyState.__allocating_init(core:)(v25);
    }

    ++v23;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v22 != v23);

  v27 = v4;
LABEL_37:
  v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO18PropertyDirtyStateC_SayAFGTt0g5Tf4g_n(v27);

  v29 = MEMORY[0x266710A10](a1);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v30 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_39;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_39:
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_40;
      }

LABEL_49:

      v32 = MEMORY[0x277D84F90];
LABEL_55:
      v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v32);

      type metadata accessor for TypeNamePrimDirtyState();
      result = swift_allocObject();
      result[2] = v42;
      result[3] = v28;
      result[4] = a1;
      result[5] = v43;
      return result;
    }
  }

  v31 = __CocoaSet.count.getter();
  if (!v31)
  {
    goto LABEL_49;
  }

LABEL_40:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = v4;
    if ((v30 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v31; ++j)
      {
        MEMORY[0x26670F670](j, v30);
        v34 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        swift_unknownObjectRelease();
        v36 = *(v4 + 16);
        v35 = *(v4 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        }

        *(v4 + 16) = v36 + 1;
        *(v4 + 8 * v36 + 32) = v34;
      }
    }

    else
    {
      v37 = 32;
      do
      {
        v38 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        if (v40 >= v39 >> 1)
        {
          v41 = v38;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          v38 = v41;
        }

        *(v32 + 16) = v40 + 1;
        *(v32 + 8 * v40 + 32) = v38;
        v37 += 8;
        --v31;
      }

      while (v31);
    }

    goto LABEL_55;
  }

LABEL_58:
  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetV_Tt0g5Tf4g_n(uint64_t a1)
{
  v78 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v2 = *(v78 - 8);
  v4.n128_f32[0] = MEMORY[0x28223BE20](v78, v3);
  v74 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v4);
  v77 = &v69 - v7;
  v89 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v8 = *(v89 - 8);
  v10.n128_f32[0] = MEMORY[0x28223BE20](v89, v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v13, v10);
  v16 = &v69 - v15;
  MEMORY[0x28223BE20](v17, v14);
  v72 = &v69 - v18;
  v19 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v20 = *(v19 - 8);
  v22.n128_f32[0] = MEMORY[0x28223BE20](v19, v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v22);
  v90 = &v69 - v26;
  v27 = *(a1 + 16);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVAISH0C2IOyHCg_GMd, &_ss11_SetStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVAISH0C2IOyHCg_GMR);
    v28 = static _SetStorage.allocate(capacity:)();
    v29 = 0;
    v31 = *(v20 + 16);
    v30 = v20 + 16;
    v86 = v31;
    v87 = v28 + 56;
    v71 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v88 = *(v30 + 56);
    v85 = (v8 + 8);
    v76 = (v2 + 8);
    v81 = (v30 - 8);
    v69 = (v30 + 16);
    v82 = v30;
    v70 = v27;
    v84 = v28;
    v80 = v19;
    while (1)
    {
      v73 = v29;
      v86(v90, v71 + v88 * v29, v19);
      Hasher.init(_seed:)();
      v36 = v72;
      __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
      lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, 255, MEMORY[0x277CDACC0], MEMORY[0x277CDACC8]);
      v37 = v89;
      dispatch thunk of Hashable.hash(into:)();
      v83 = *v85;
      v83(v36, v37);
      v38 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      Hasher._combine(_:)(v38);
      v39 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      Hasher._combine(_:)(HIDWORD(v39));
      __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      Hasher._combine(_:)(v40);
      v41 = v77;
      __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
      lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, 255, MEMORY[0x277CDACE0], MEMORY[0x277CDACE8]);
      v42 = v78;
      dispatch thunk of Hashable.hash(into:)();
      v75 = *v76;
      v75(v41, v42);
      v43 = Hasher._finalize()();
      v44 = v84;
      v45 = -1 << *(v84 + 32);
      v46 = v43 & ~v45;
      v47 = v46 >> 6;
      v48 = *(v87 + 8 * (v46 >> 6));
      v49 = 1 << v46;
      if (((1 << v46) & v48) == 0)
      {
LABEL_3:
        *(v87 + 8 * v47) = v48 | v49;
        result = (*v69)(*(v44 + 48) + v46 * v88, v90, v19);
        v33 = *(v44 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (!v34)
        {
          *(v44 + 16) = v35;
          goto LABEL_5;
        }

        __break(1u);
        return result;
      }

      v50 = ~v45;
      while (1)
      {
        v86(v24, *(v44 + 48) + v46 * v88, v19);
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, 255, MEMORY[0x277CDACC0], MEMORY[0x277CDACD0]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v93 == v91 && v94 == v92)
        {
          break;
        }

        v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v53 = v50;
        v54 = v24;
        v55 = v89;
        v56 = v83;
        v83(v12, v89);
        v57 = v55;
        v24 = v54;
        v50 = v53;
        v56(v16, v57);

        if (v79)
        {
          goto LABEL_14;
        }

LABEL_8:
        v19 = v80;
        (*v81)(v24, v80);
LABEL_9:
        v46 = (v46 + 1) & v50;
        v47 = v46 >> 6;
        v48 = *(v87 + 8 * (v46 >> 6));
        v49 = 1 << v46;
        v44 = v84;
        if ((v48 & (1 << v46)) == 0)
        {
          goto LABEL_3;
        }
      }

      v51 = v89;
      v52 = v83;
      v83(v12, v89);
      v52(v16, v51);

LABEL_14:
      v58 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      v60 = v59;
      if (v58 != __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() || v60 != v61)
      {
        goto LABEL_8;
      }

      v62 = v77;
      __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
      v63 = v74;
      __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
      v64 = static __REAssetBundle.ExportOptions.PlatformRequirement.== infix(_:_:)();
      v65 = v63;
      v66 = v78;
      v67 = v75;
      v75(v65, v78);
      v67(v62, v66);
      v68 = *v81;
      v19 = v80;
      (*v81)(v24, v80);
      if ((v64 & 1) == 0)
      {
        goto LABEL_9;
      }

      v68(v90, v19);
      v44 = v84;
LABEL_5:
      v29 = v73 + 1;
      if (v73 + 1 == v70)
      {
        return v44;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO13ImportSessionC15EvaluationFaultO_Tt0g5Tf4g_n(uint64_t a1)
{
  v102 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v2 = *(v102 - 8);
  v4.n128_f32[0] = MEMORY[0x28223BE20](v102, v3);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v4);
  v100 = &v98 - v7;
  v118 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v8 = *(v118 - 8);
  v10.n128_f32[0] = MEMORY[0x28223BE20](v118, v9);
  v116 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v10);
  v117 = &v98 - v13;
  v14 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v122 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v119 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMd, &_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMR);
  MEMORY[0x28223BE20](v121, v17);
  v19 = &v98 - v18;
  v20 = type metadata accessor for ImportSession.EvaluationFault(0);
  v21 = *(v20 - 8);
  v23.n128_f32[0] = MEMORY[0x28223BE20](v20, v22);
  v115 = (&v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26.n128_f32[0] = MEMORY[0x28223BE20](v25, v23);
  v114 = (&v98 - v27);
  v29.n128_f32[0] = MEMORY[0x28223BE20](v28, v26);
  v113 = (&v98 - v30);
  v32.n128_f32[0] = MEMORY[0x28223BE20](v31, v29);
  v34.n128_f32[0] = MEMORY[0x28223BE20](v33, v32);
  v36 = (&v98 - v35);
  v38.n128_f32[0] = MEMORY[0x28223BE20](v37, v34);
  v112 = (&v98 - v39);
  v41.n128_f32[0] = MEMORY[0x28223BE20](v40, v38);
  v43 = &v98 - v42;
  MEMORY[0x28223BE20](v44, v41);
  v125 = &v98 - v46;
  v47 = *(a1 + 16);
  if (!v47)
  {
    return MEMORY[0x277D84FA0];
  }

  v120 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss11_SetStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
  v110 = v2;
  v48 = static _SetStorage.allocate(capacity:)();
  v49 = a1;
  v50 = v48;
  v123 = v48 + 56;
  v109 = v49 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v124 = *(v21 + 72);
  v51 = 0;
  v111 = (v122 + 8);
  v105 = (v122 + 32);
  v104 = (v8 + 8);
  v99 = (v110 + 8);
  v107 = v14;
  v106 = v36;
  v108 = v47;
  while (2)
  {
    outlined init with copy of ImportSession.EvaluationFault(v109 + v124 * v51, v125);
    Hasher.init(_seed:)();
    ImportSession.EvaluationFault.hash(into:)(v128);
    v53 = Hasher._finalize()();
    v122 = ~(-1 << *(v50 + 32));
    v54 = v53 & v122;
    v55 = (v53 & v122) >> 6;
    v56 = *(v123 + 8 * v55);
    v57 = 1 << (v53 & v122);
    if ((v57 & v56) == 0)
    {
      goto LABEL_51;
    }

    v110 = v51;
    do
    {
      outlined init with copy of ImportSession.EvaluationFault(*(v50 + 48) + v54 * v124, v43);
      v61 = &v19[*(v121 + 48)];
      outlined init with copy of ImportSession.EvaluationFault(v43, v19);
      outlined init with copy of ImportSession.EvaluationFault(v125, v61);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v58 = v112;
          outlined init with copy of ImportSession.EvaluationFault(v19, v112);
          v60 = *v58;
          v59 = v58[1];
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_10;
          }

          goto LABEL_35;
        }

        if (EnumCaseMultiPayload == 1)
        {
          outlined init with copy of ImportSession.EvaluationFault(v19, v36);
          v60 = *v36;
          v59 = v36[1];
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_10;
          }

          goto LABEL_35;
        }

        v71 = v120;
        outlined init with copy of ImportSession.EvaluationFault(v19, v120);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          outlined destroy of ImportSession.EvaluationFault(v43);
          (*v111)(v71, v14);
          goto LABEL_11;
        }

        (*v105)(v119, v61, v14);
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, 255, MEMORY[0x277CDACC0], MEMORY[0x277CDACD0]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v128[0] == v126 && v128[1] == v127)
        {
          v72 = *v104;
          v73 = v118;
          (*v104)(v116, v118);
          v72(v117, v73);
        }

        else
        {
          v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v79 = *v104;
          v80 = v118;
          (*v104)(v116, v118);
          v79(v117, v80);

          if ((v103 & 1) == 0)
          {
LABEL_49:
            v93 = *v111;
            v14 = v107;
            (*v111)(v119, v107);
            outlined destroy of ImportSession.EvaluationFault(v43);
            v93(v120, v14);
            v36 = v106;
            goto LABEL_40;
          }
        }

        v81 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        v83 = v82;
        if (v81 == __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() && v83 == v84)
        {
          v85 = v100;
          __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
          v86 = v101;
          v87 = v119;
          __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
          v103 = static __REAssetBundle.ExportOptions.PlatformRequirement.== infix(_:_:)();
          v88 = *v99;
          v89 = v86;
          v90 = v102;
          (*v99)(v89, v102);
          v88(v85, v90);
          v91 = *v111;
          v92 = v107;
          (*v111)(v87, v107);
          outlined destroy of ImportSession.EvaluationFault(v43);
          v91(v120, v92);
          v14 = v92;
          v36 = v106;
          if (v103)
          {
            goto LABEL_4;
          }

          goto LABEL_40;
        }

        goto LABEL_49;
      }

      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v63 = v113;
          outlined init with copy of ImportSession.EvaluationFault(v19, v113);
          v60 = *v63;
          v59 = v63[1];
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v74 = v114;
          outlined init with copy of ImportSession.EvaluationFault(v19, v114);
          v60 = *v74;
          v59 = v74[1];
          if (swift_getEnumCaseMultiPayload() != 4)
          {
LABEL_10:
            outlined destroy of ImportSession.EvaluationFault(v43);

LABEL_11:
            outlined destroy of (ImportSession.EvaluationFault, ImportSession.EvaluationFault)(v19);
            goto LABEL_12;
          }
        }

LABEL_35:
        v75 = *v61;
        v76 = *(v61 + 1);
        if (v60 == v75 && v59 == v76)
        {

          outlined destroy of ImportSession.EvaluationFault(v43);
LABEL_4:
          outlined destroy of ImportSession.EvaluationFault(v19);
          v52 = v125;
LABEL_5:
          outlined destroy of ImportSession.EvaluationFault(v52);
          v51 = v110;
          goto LABEL_6;
        }

        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of ImportSession.EvaluationFault(v43);
        if (v78)
        {
          goto LABEL_4;
        }

        goto LABEL_40;
      }

      if (EnumCaseMultiPayload != 5)
      {
        outlined destroy of ImportSession.EvaluationFault(v43);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }

      v64 = v115;
      outlined init with copy of ImportSession.EvaluationFault(v19, v115);
      v66 = *v64;
      v65 = v64[1];
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_10;
      }

      v67 = *v61;
      v68 = *(v61 + 1);
      if (v66 == v67 && v65 == v68)
      {

        outlined destroy of ImportSession.EvaluationFault(v43);
LABEL_54:
        outlined destroy of ImportSession.EvaluationFault(v125);
        v52 = v19;
        goto LABEL_5;
      }

      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of ImportSession.EvaluationFault(v43);
      if (v70)
      {
        goto LABEL_54;
      }

LABEL_40:
      outlined destroy of ImportSession.EvaluationFault(v19);
LABEL_12:
      v54 = (v54 + 1) & v122;
      v55 = v54 >> 6;
      v56 = *(v123 + 8 * (v54 >> 6));
      v57 = 1 << v54;
    }

    while ((v56 & (1 << v54)) != 0);
    v51 = v110;
LABEL_51:
    *(v123 + 8 * v55) = v56 | v57;
    result = outlined init with take of ImportSession.EvaluationFault(v125, *(v50 + 48) + v54 * v124);
    v95 = *(v50 + 16);
    v96 = __OFADD__(v95, 1);
    v97 = v95 + 1;
    if (!v96)
    {
      *(v50 + 16) = v97;
LABEL_6:
      if (++v51 == v108)
      {
        return v50;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of (ImportSession.EvaluationFault, ImportSession.EvaluationFault)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMd, &_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    outlined destroy of Any?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of Any?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    outlined destroy of Any?(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of Any?(v9, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for __RKEntityInteractionSpecification();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    outlined destroy of Any?(a1, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);

    outlined destroy of Any?(v8, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

id one-time initialization function for PreliminaryBehaviorPrimTypeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static BehaviorBuilder.PreliminaryBehaviorPrimTypeName = result;
  return result;
}

id one-time initialization function for BehaviorPrimTypeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static BehaviorBuilder.BehaviorPrimTypeName = result;
  return result;
}

uint64_t BehaviorBuilder.inputDescriptors()()
{
  v1 = *v0;
  v7 = MEMORY[0x277D84FA0];
  v2 = swift_allocObject();
  v2[2] = closure #1 in ActionBuilder.inputDescriptors();
  v2[3] = 0;
  v2[4] = v1;
  v14 = xmmword_26198B620;
  v15 = 0xD000000000000020;
  v16 = 0x8000000261994290;
  v17 = partial apply for closure #2 in BehaviorBuilder.inputDescriptors();
  v18 = v2;
  v19 = -127;

  specialized Set._Variant.insert(_:)(&v8, &v14);
  outlined consume of InputDescriptor(v8, *(&v8 + 1), v9, v10, v11, v12, v13);
  v3 = swift_allocObject();
  v3[2] = closure #1 in ActionBuilder.inputDescriptors();
  v3[3] = 0;
  v3[4] = v1;
  v8 = xmmword_26198A9E0;
  v9 = 0xD00000000000001FLL;
  v10 = 0x80000002619941F0;
  v11 = partial apply for closure #3 in BehaviorBuilder.inputDescriptors();
  v12 = v3;
  v13 = -127;
  specialized Set._Variant.insert(_:)(v5, &v8);

  outlined consume of InputDescriptor(v5[0], v5[1], v5[2], v5[3], v5[4], v5[5], v6);
  return v7;
}

uint64_t closure #2 in BehaviorBuilder.inputDescriptors()(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!RIOPxrUsdStageHasPrimAtPrimPath())
  {
    return MEMORY[0x277D84FA0];
  }

  v10 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  type metadata accessor for Prim();
  v12 = swift_allocObject();
  *(v12 + 16) = PrimIfNeeded;

  v13 = a3(a6, a7, v12);

  return v13;
}

uint64_t BehaviorBuilder.run(inputs:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v57 = &v52 - v4;
  v58 = type metadata accessor for __RKEntityInteractionSpecification();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v5);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for __RKEntityActionSpecification();
  v61 = *(v11 - 8);
  v13.n128_f32[0] = MEMORY[0x28223BE20](v11, v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v13);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v52 - v21;
  v23 = type metadata accessor for __RKEntityTriggerSpecification();
  v24 = *(v23 - 8);
  v26.n128_f32[0] = MEMORY[0x28223BE20](v23, v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v26);
  v31 = &v52 - v30;
  BehaviorBuilder.buildTriggerSpecifications(inputs:)(v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v32 = &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd;
    v33 = &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR;
    v34 = v22;
    return outlined destroy of Any?(v34, v32, v33);
  }

  (*(v24 + 32))(v31, v22, v23);
  BehaviorBuilder.buildActionSpecifications(inputs:)(v10);
  if ((*(v61 + 48))(v10, 1, v11) == 1)
  {
    (*(v24 + 8))(v31, v23);
    v32 = &_s10RealityKit29__RKEntityActionSpecificationOSgMd;
    v33 = &_s10RealityKit29__RKEntityActionSpecificationOSgMR;
    v34 = v10;
    return outlined destroy of Any?(v34, v32, v33);
  }

  v54 = a1;
  v35 = v61;
  (*(v61 + 32))(v18, v10, v11);
  (*(v24 + 16))(v28, v31, v23);
  v36 = *(v35 + 16);
  v55 = v18;
  v53 = v11;
  v36(v15, v18, v11);
  MEMORY[0x26670E3A0](v28, v15);
  swift_beginAccess();
  v37 = objc_getAssociatedObject(v59, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v37)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v67, &aBlock);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    v39 = v58;
    v64 = v58;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    v41 = v56;
    v42 = *(v56 + 16);
    v43 = v60;
    v42(boxed_opaque_existential_1, v60, v39);
    Outputs.subscript.setter(&aBlock, 0x726F697661686542, 0xE800000000000000);

    v44 = v59[3];
    v45 = v57;
    v42(v57, v43, v39);
    (*(v41 + 56))(v45, 0, 1, v39);

    Inputs.prim.getter();
    v46 = RIOPxrUsdObjectCopyPath();

    v59 = &v52;
    MEMORY[0x28223BE20](v47, v48);
    *(&v52 - 4) = v44;
    *(&v52 - 3) = v46;
    *(&v52 - 2) = v45;
    v49 = swift_allocObject();
    *(v49 + 16) = closure #1 in BehaviorsCommitter.commit(_:at:inputs:)partial apply;
    *(v49 + 24) = &v52 - 6;
    v65 = thunk for @callee_guaranteed () -> ()partial apply;
    v66 = v49;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v63 = thunk for @escaping @callee_guaranteed () -> ();
    v64 = &block_descriptor_30;
    v50 = _Block_copy(&aBlock);

    RIOBuilderInputsPerformBlockSyncOnEngineQueue();
    _Block_release(v50);
    (*(v41 + 8))(v60, v58);
    (*(v61 + 8))(v55, v53);
    (*(v24 + 8))(v31, v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v32 = &_s10RealityKit34__RKEntityInteractionSpecificationVSgMd;
      v33 = &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR;
      v34 = v57;
      return outlined destroy of Any?(v34, v32, v33);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BehaviorBuilder.clear(inputs:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &aBlock - v5;
  swift_beginAccess();
  v7 = objc_getAssociatedObject(v1, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v21, &aBlock);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    aBlock = 0u;
    v18 = 0u;
    Outputs.subscript.setter(&aBlock, 0x726F697661686542, 0xE800000000000000);

    v9 = v2[3];
    v10 = type metadata accessor for __RKEntityInteractionSpecification();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);

    Inputs.prim.getter();
    v11 = RIOPxrUsdObjectCopyPath();

    MEMORY[0x28223BE20](v12, v13);
    *(&aBlock - 4) = v9;
    *(&aBlock - 3) = v11;
    *(&aBlock - 2) = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in BehaviorsCommitter.commit(_:at:inputs:);
    *(v14 + 24) = &aBlock - 3;
    v19 = partial apply for thunk for @callee_guaranteed () -> ();
    v20 = v14;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v18 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v18 + 1) = &block_descriptor_4;
    v15 = _Block_copy(&aBlock);

    RIOBuilderInputsPerformBlockSyncOnEngineQueue();
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return outlined destroy of Any?(v6, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *BehaviorBuilder.buildTriggerSpecifications(inputs:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for __RKEntityTriggerSpecification();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = Inputs.accumulatedValues(forKey:)(0x7372656767697274, 0xE800000000000000);
  v7 = specialized _arrayConditionalCast<A, B>(_:)(v6);

  if (v7)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v22 = a1;
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v10 >= *(v7 + 16))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

        v12 = *(v7 + 8 * v10 + 32);
        v13 = *(v12 + 16);
        v14 = v11[2];
        v15 = v14 + v13;
        if (__OFADD__(v14, v13))
        {
          goto LABEL_30;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v15 <= v11[3] >> 1)
        {
          if (*(v12 + 16))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v14 <= v15)
          {
            v16 = v14 + v13;
          }

          else
          {
            v16 = v14;
          }

          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v16, 1, v11);
          v11 = result;
          if (*(v12 + 16))
          {
LABEL_16:
            if ((v11[3] >> 1) - v11[2] < v13)
            {
              goto LABEL_32;
            }

            swift_arrayInitWithCopy();

            if (v13)
            {
              v17 = v11[2];
              v18 = __OFADD__(v17, v13);
              v19 = v17 + v13;
              if (v18)
              {
                goto LABEL_33;
              }

              v11[2] = v19;
            }

            goto LABEL_5;
          }
        }

        if (v13)
        {
          goto LABEL_31;
        }

LABEL_5:
        if (v9 == ++v10)
        {

          if (v11[2])
          {
            *v5 = v11;
            (*(v23 + 104))(v5, *MEMORY[0x277CDAFC8], v2);
            v20 = v22;
            (*(v23 + 32))(v22, v5, v2);
            return (*(v23 + 56))(v20, 0, 1, v2);
          }

          else
          {
            (*(v23 + 56))(v22, 1, 1, v2);
          }
        }
      }
    }
  }

  v21 = *(v23 + 56);

  return v21(a1, 1, 1, v2);
}

void *BehaviorBuilder.buildActionSpecifications(inputs:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for __RKEntityActionSpecification();
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __RKEntityGroupActionOrder();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __RKEntityActionGroupArguments();
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v39 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Inputs.accumulatedValues(forKey:)(0x736E6F69746361, 0xE700000000000000);
  v15 = specialized _arrayConditionalCast<A, B>(_:)(v14);

  if (v15)
  {
    v38 = v10;
    v17 = *(v15 + 16);
    if (v17)
    {
      v33 = v7;
      v34 = v11;
      v35 = v6;
      v36 = v5;
      v37 = a1;
      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v18 >= *(v15 + 16))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

        v20 = *(v15 + 8 * v18 + 32);
        v21 = *(v20 + 16);
        v22 = v19[2];
        v23 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_30;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v23 <= v19[3] >> 1)
        {
          if (*(v20 + 16))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v22 <= v23)
          {
            v24 = v22 + v21;
          }

          else
          {
            v24 = v22;
          }

          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v24, 1, v19);
          v19 = result;
          if (*(v20 + 16))
          {
LABEL_16:
            if ((v19[3] >> 1) - v19[2] < v21)
            {
              goto LABEL_32;
            }

            swift_arrayInitWithCopy();

            if (v21)
            {
              v25 = v19[2];
              v26 = __OFADD__(v25, v21);
              v27 = v25 + v21;
              if (v26)
              {
                goto LABEL_33;
              }

              v19[2] = v27;
            }

            goto LABEL_5;
          }
        }

        if (v21)
        {
          goto LABEL_31;
        }

LABEL_5:
        if (v17 == ++v18)
        {

          if (v19[2])
          {
            _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n(0x766973756C637865, 0xE900000000000065, v28);
            v29 = v37;
            (*(v33 + 104))(v38, *MEMORY[0x277CDAF00], v35);
            v31 = v39;
            __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
            v32 = v36;
            (*(v40 + 32))(v36, v31, v34);
            (*(v41 + 104))(v32, *MEMORY[0x277CDAFA0], v2);
            (*(v41 + 32))(v29, v32, v2);
            return (*(v41 + 56))(v29, 0, 1, v2);
          }

          else
          {
            (*(v41 + 56))(v37, 1, 1, v2);
          }
        }
      }
    }
  }

  v30 = *(v41 + 56);

  return v30(a1, 1, 1, v2);
}

uint64_t BehaviorBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance BehaviorBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance BehaviorBuilder);
  outlined destroy of OutputDescriptor(&unk_287410828);
  return v0;
}

uint64_t one-time initialization function for behaviorCommitter()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.behaviorCommitter = result;
  return result;
}

void closure #1 in BehaviorsCommitter.commit(_:at:inputs:)(void *a1, void *a2, uint64_t a3, float a4)
{
  v7 = type metadata accessor for __RKEntityInteractionSpecification();
  v8 = *(v7 - 8);
  v10.n128_f32[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v13, v10);
  v16 = v57 - v15;
  MEMORY[0x28223BE20](v17, v14);
  v19 = v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = v57 - v22;
  outlined init with copy of __RKEntityInteractionSpecification?(a3, v57 - v22);
  swift_beginAccess();
  v24 = a2;
  specialized Dictionary.subscript.setter(v23, v24);
  swift_endAccess();
  v25 = v24;
  swift_beginAccess();
  for (i = v25; ; i = v29)
  {
    if (*(a1[4] + 16))
    {

      specialized __RawDictionaryStorage.find<A>(_:)(i);
      v28 = v27;

      if (v28)
      {
        break;
      }
    }

    if (RIOPxrSdfPathIsEmpty())
    {
      break;
    }

    v29 = RIOPxrSdfPathCopyParentPath();
  }

  if (!*(a1[4] + 16))
  {
LABEL_16:
    if (one-time initialization token for behaviorCommitter != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.behaviorCommitter;
    v45 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2619891C0;
    v47 = RIOPxrSdfPathCopyString();
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v46 + 32) = v48;
    *(v46 + 40) = v50;
    os_log(_:dso:log:type:_:)("Attaching interaction specifications defined by %{public}s to the root entity because no scenes were explicitly defined.", 122, 2, &dword_26187B000, v44, v45, v46);

    v51 = a1[3];
    v52 = *(v51 + 16);
    if (v52)
    {
      v53 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit34__RKEntityInteractionSpecificationV_Tt1g5(*(v51 + 16), 0);
      specialized Sequence._copySequenceContents(initializing:)(&v60, &v53[(*(v8 + 80) + 32) & ~*(v8 + 80)], v52, v51, v54);
      v59 = v55;
      v56 = v60;

      outlined consume of Set<PropertyDirtyState>.Iterator._Variant(v56);
      if (v59 == v52)
      {
LABEL_22:
        Entity.__interactions.setter();

        goto LABEL_23;
      }

      __break(1u);
    }

    goto LABEL_22;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(i);
  if ((v30 & 1) == 0)
  {

    goto LABEL_16;
  }

  v31 = a1[3];
  if (!*(v31 + 16))
  {
LABEL_23:

    return;
  }

  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
  if ((v33 & 1) == 0)
  {

    goto LABEL_23;
  }

  v34 = *(v31 + 56);
  v58 = *(v8 + 72);
  v35 = *(v8 + 16);
  v35(v16, v34 + v58 * v32, v7);

  v57[0] = *(v8 + 32);
  v57[1] = v8 + 32;
  (v57[0])(v19, v16, v7);
  type metadata accessor for Entity();
  v36 = static Entity.fromCore(_:ignoringEntityInfo:)();
  v35(v12, v19, v7);
  v59 = v36;
  v37 = Entity.__interactions.modify();
  v39 = v38;
  v40 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v39 = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
    *v39 = v40;
  }

  v43 = v40[2];
  v42 = v40[3];
  if (v43 >= v42 >> 1)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
    *v39 = v40;
  }

  v40[2] = v43 + 1;
  (v57[0])(v40 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v43 * v58, v12, v7);
  v37(&v60, 0);

  (*(v8 + 8))(v19, v7);
}

uint64_t BehaviorsCommitter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(uint64_t *a3@<X8>)
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v5 = RIOPxrTfTokenCreateWithCString();
  }

  if (RIOPxrUsdPrimHasAttribute())
  {
    v6 = RIOPxrUsdPrimCopyAttribute();
    v7 = RIOPxrUsdAttributeCopyValue();
    if (v7)
    {
      v8 = v7;
      v9 = RIOPxrVtValueCopyToken();

      if (v9)
      {

        *a3 = v9;
        return;
      }
    }

    v10 = RIOPxrUsdAttributeCopyTypeName();
  }

  else
  {

    v10 = 0;
  }

  lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v11 = v10;
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5@<X0>(uint64_t a3@<X8>)
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v5 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFAA7Vector3VySdG_Tt1B5(&v12);

  v7 = v12;
  if (v15)
  {
    v16 = v12;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v8 = v16;
    result = swift_allocError();
    *v9 = v8;
  }

  else
  {
    *&v10 = v13.i64[0];
    v11 = vzip2q_s64(v13, 0).u64[0];
    *(a3 + 24) = v14;
    *a3 = v7;
    *(&v10 + 1) = v11;
    *(a3 + 8) = v10;
  }

  return result;
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(uint64_t a2@<X8>)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    v8 = 0;
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v3 = RIOPxrUsdPrimCopyAttribute();
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4 || (v5 = v4, Float = RIOPxrVtValueGetFloat(), v5, (Float & 1) == 0))
  {
    v8 = RIOPxrUsdAttributeCopyTypeName();

    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
LABEL_8:
  *a2 = v8;
  *(a2 + 8) = v7;
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(uint64_t a2@<X8>)
{
  if (RIOPxrUsdPrimHasAttribute())
  {
    v3 = RIOPxrUsdPrimCopyAttribute();
    v4 = RIOPxrUsdAttributeCopyValue();
    if (v4)
    {
      v5 = v4;
      v6 = RIOPxrVtValueCopyString();
      if (v6)
      {
        v7 = v6;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        *a2 = v8;
        *(a2 + 8) = v10;
        *(a2 + 16) = 0;
        return;
      }
    }

    v11 = RIOPxrUsdAttributeCopyTypeName();

    *a2 = v11;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a2 + 16) = 1;
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(uint64_t a2@<X8>)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    v8 = 0;
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v3 = RIOPxrUsdPrimCopyAttribute();
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4 || (v5 = v4, Double = RIOPxrVtValueGetDouble(), v5, (Double & 1) == 0))
  {
    v8 = RIOPxrUsdAttributeCopyTypeName();

    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
LABEL_8:
  *a2 = v8;
  *(a2 + 8) = v7;
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs6UInt32V_Tt1B5(uint64_t a2@<X8>)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    v8 = 0;
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v3 = RIOPxrUsdPrimCopyAttribute();
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4 || (v5 = v4, UInt32 = RIOPxrVtValueGetUInt32(), v5, (UInt32 & 1) == 0))
  {
    v8 = RIOPxrUsdAttributeCopyTypeName();

    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
LABEL_8:
  *a2 = v8;
  *(a2 + 8) = v7;
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(uint64_t a2@<X8>)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    v8 = 0;
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v3 = RIOPxrUsdPrimCopyAttribute();
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4 || (v5 = v4, Bool = RIOPxrVtValueGetBool(), v5, (Bool & 1) == 0))
  {
    v8 = RIOPxrUsdAttributeCopyTypeName();

    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
LABEL_8:
  *a2 = v8;
  *(a2 + 8) = v7;
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFAA7Vector3VySdG_Tt1B5(uint64_t a2@<X8>)
{
  if (RIOPxrUsdPrimHasAttribute())
  {
    v3 = RIOPxrUsdPrimCopyAttribute();
    v4 = RIOPxrUsdAttributeCopyValue();
    if (v4)
    {
      v5 = v4;
      Double3 = RIOPxrVtValueGetDouble3();

      if (Double3)
      {

        *a2 = 0u;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        return;
      }
    }

    v7 = RIOPxrUsdAttributeCopyTypeName();

    *a2 = v7;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  *(a2 + 32) = 1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit34__RKEntityInteractionSpecificationV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMR);
  v4 = *(type metadata accessor for __RKEntityInteractionSpecification() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo33RIOBuilderDirtyStageDescriptorRefa_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()(v10);
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for UUID();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a3, v12 + *(v20 + 72) * v8, v13);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v4 = v11;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for UUID();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()(v9);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for __RKEntityInteractionSpecification();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a2, v11 + *(v19 + 72) * v7, v12);
    specialized _NativeDictionary._delete(at:)(v7, v10);
    *v3 = v10;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for __RKEntityInteractionSpecification();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for UUID() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
    do
    {
      v27 = *(*(a2 + 48) + 8 * v6);
      v9 = v27;
      v10 = dispatch thunk of Hashable._rawHashValue(seed:)();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for __RKEntityInteractionSpecification() - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
    do
    {
      v23 = *(*(a2 + 48) + 8 * v6);
      v9 = v23;
      v10 = dispatch thunk of Hashable._rawHashValue(seed:)();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(int64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a4 + 64;
  v9 = -1 << *(a4 + 32);
  v10 = ~v9;
  if (-v9 < 64)
  {
    v11 = ~(-1 << -v9);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCySD0A0VySS9RealityIO13ImportSessionC17MeshAssetEstimateV_GGMd, &_ss12_IteratorBoxCySD0A0VySS9RealityIO13ImportSessionC17MeshAssetEstimateV_GGMR);
  result = swift_allocObject();
  v14 = result;
  result[2] = a4;
  result[3] = v8;
  result[4] = v10;
  result[5] = 0;
  result[6] = v12;
  if (!a2)
  {
LABEL_18:
    result = 0;
LABEL_25:
    *a1 = v14;
    return result;
  }

  if (!a3)
  {
    result = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    result = 0;
    a1 = 0;
    v15 = (63 - v9) >> 6;
    v16 = 1;
    while (v12)
    {
LABEL_14:
      v19 = __clz(__rbit64(v12)) | (a1 << 6);
      v20 = (*(a4 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = (*(a4 + 56) + 32 * v19);
      v24 = *v23;
      v25 = v23[1];
      v12 &= v12 - 1;
      v14[2] = a4;
      v14[3] = v8;
      v14[4] = v10;
      v14[5] = a1;
      v14[6] = v12;
      *a2 = v22;
      *(a2 + 8) = v21;
      *(a2 + 16) = v24;
      *(a2 + 32) = v25;
      if (v16 == a3)
      {

        result = a3;
        goto LABEL_23;
      }

      a2 += 48;

      result = v16;
      if (__OFADD__(v16++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v17 = a1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= v15)
      {
        break;
      }

      v12 = *(v8 + 8 * v18);
      ++v17;
      if (v12)
      {
        a1 = v18;
        goto LABEL_14;
      }
    }

    if (v15 <= a1 + 1)
    {
      v27 = a1 + 1;
    }

    else
    {
      v27 = v15;
    }

    v14[2] = a4;
    v14[3] = v8;
    v14[4] = v10;
    v14[5] = v27 - 1;
    v14[6] = 0;
LABEL_23:
    a1 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, float a5)
{
  v43 = type metadata accessor for __RKEntityInteractionSpecification();
  v45 = *(v43 - 8);
  v10.n128_f32[0] = MEMORY[0x28223BE20](v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f32[0] = MEMORY[0x28223BE20](v12, v10);
  v42 = &v36 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 64;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 56);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43, v13);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(uint64_t a1, uint64_t a2, float a3)
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(&v7);

  if (v8)
  {
    v6 = v7;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v5 = v6;
  }

  return result;
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n(uint64_t a1, uint64_t a2, float a3)
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(&v8);

  v4 = v8;
  if (v9)
  {
    v7 = v8;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v5 = v7;
  }

  return v4 & 1;
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFs6UInt32V_Tt1g5Tf4ndn_n(uint64_t a1, uint64_t a2, float a3)
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs6UInt32V_Tt1B5(&v7);

  result = v7;
  if (v8)
  {
    v6 = v7;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v5 = v6;
  }

  return result;
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSS_Tt1g5Tf4ndn_n(uint64_t a1, uint64_t a2, float a3)
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(&v7);

  result = v7;
  if (v8)
  {
    v6 = v7;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v5 = v6;
  }

  return result;
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSf_Tt1g5Tf4ndn_n(uint64_t a1, uint64_t a2, float a3)
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(&v7);

  if (v8)
  {
    v6 = v7;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v5 = v6;
  }

  return result;
}

uint64_t specialized closure #1 in BehaviorBuilder.stageSubscription.getter()
{
  if (one-time initialization token for PreliminaryBehaviorPrimTypeName != -1)
  {
    swift_once();
  }

  v7 = static BehaviorBuilder.PreliminaryBehaviorPrimTypeName;
  v0 = static BehaviorBuilder.PreliminaryBehaviorPrimTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v7);
  v2 = one-time initialization token for BehaviorPrimTypeName;

  if (v2 != -1)
  {
    swift_once();
  }

  v7 = static BehaviorBuilder.BehaviorPrimTypeName;
  v3 = static BehaviorBuilder.BehaviorPrimTypeName;
  v4 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A9D0;
  *(inited + 32) = v1;
  *(inited + 40) = v4;
  v7 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v7;
}

uint64_t specialized BehaviorBuilder.stageSubscription.getter()
{
  v0 = specialized closure #1 in BehaviorBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of __RKEntityInteractionSpecification?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in closure #1 in AudioFileBuilder.stageSubscription.getter()
{
  if (one-time initialization token for loadingStrategy != -1)
  {
    swift_once();
  }

  v0 = static AudioConstants.AudioFile.loadingStrategy;
  type metadata accessor for NamedPropertyDirtyState();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = v0;
  v3 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v1[2] = v3;
  v1[3] = v5;
  v6 = one-time initialization token for shouldLoop;
  v63 = v1;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static AudioConstants.AudioFile.shouldLoop;
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  v12 = one-time initialization token for randomizeStart;
  v62 = v8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static AudioConstants.AudioFile.randomizeStart;
  v14 = swift_allocObject();
  v14[4] = v13;
  v15 = v13;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  v17 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v14[2] = v3;
  v14[3] = v17;
  v18 = one-time initialization token for normalization;
  v61 = v14;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static AudioConstants.AudioFile.normalization;
  v20 = swift_allocObject();
  v20[4] = v19;
  v21 = v19;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v22 = Array._bridgeToObjectiveC()().super.isa;

  v23 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v20[2] = v3;
  v20[3] = v23;
  v24 = v20;

  if (String.count.getter() < 1)
  {
    v25 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v25 = RIOPxrTfTokenCreateWithCString();
  }

  v26 = v25;
  v27 = swift_allocObject();
  v27[4] = v26;
  v28 = v26;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  v30 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v27[2] = v3;
  v27[3] = v30;
  v60 = v27;

  if (String.count.getter() <= 0)
  {
    v31 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v31 = RIOPxrTfTokenCreateWithCString();
  }

  v32 = v31;
  v33 = swift_allocObject();
  v33[4] = v32;
  v34 = v32;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v35 = Array._bridgeToObjectiveC()().super.isa;

  v36 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v33[2] = v3;
  v33[3] = v36;
  v37 = one-time initialization token for calibrationMode;
  v59 = v33;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = static AudioConstants.AudioFile.calibrationMode;
  v39 = swift_allocObject();
  v39[4] = v38;
  v40 = v38;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v41 = v3;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  v43 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v39[2] = v41;
  v39[3] = v43;
  v44 = one-time initialization token for assetPath;
  v58 = v39;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = static AudioConstants.AudioFile.assetPath;
  v46 = swift_allocObject();
  v46[4] = v45;
  v47 = v45;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v41);
  v48 = Array._bridgeToObjectiveC()().super.isa;

  v49 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v46[2] = v41;
  v46[3] = v49;
  v50 = one-time initialization token for mixGroup;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = static AudioConstants.AudioFile.mixGroup;
  v52 = swift_allocObject();
  v52[4] = v51;
  v53 = v51;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v41);
  v54 = Array._bridgeToObjectiveC()().super.isa;

  v55 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v52[2] = v41;
  v52[3] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198B6E0;
  *(inited + 32) = v63;
  *(inited + 40) = v62;
  *(inited + 48) = v61;
  *(inited + 56) = v24;
  *(inited + 64) = v60;
  *(inited + 72) = v59;
  *(inited + 80) = v58;
  *(inited + 88) = v46;
  *(inited + 96) = v52;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v41;
}

void AudioFileBuilder.run(inputs:)(uint64_t a1, float a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = Inputs.prim.getter();
  v7 = RIOBuilderInputsGetImportSession();
  if (!v7)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = v7;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_31:
    __break(1u);
    return;
  }

  ServiceLocator = REEngineGetServiceLocator();
  type metadata accessor for REAudioFileConfigurationWrapper();
  swift_allocObject();

  v12 = specialized REAudioFileConfigurationWrapper.init(prim:)(v11);

  v13 = MEMORY[0x2667102E0](ServiceLocator);
  if (v13)
  {
    v14 = v13;
    if (one-time initialization token for assetPath != -1)
    {
      swift_once();
    }

    v15 = static AudioConstants.AudioFile.assetPath;
    if (!RIOPxrUsdPrimHasAttribute())
    {

      lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
      swift_willThrowTypedImpl();

      outlined consume of Object.Error(0);
      return;
    }

    v42 = v12;
    v16 = RIOPxrUsdPrimCopyAttribute();

    type metadata accessor for AnyAttribute();
    v17 = swift_allocObject();
    v17[2] = v16;
    EmptyValue = RIOPxrUsdAttributeCopyValue();
    if (!EmptyValue)
    {
      EmptyValue = RIOPxrVtValueCreateEmptyValue();
    }

    v43 = EmptyValue;
    outlined consume of Result<AnyAttribute, Object.Error>(v17, 0);
    v19 = RIOPxrVtValueCopyAssetPath();
    if (v19)
    {
      v20 = v19;
      aBlock[0] = v19;
      v25 = SceneDescriptionFoundations.AssetPath.referencedData.getter();
      v27 = v26;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v28 = outlined consume of Data._Representation(v25, v27);
      if (v3[4])
      {
        v30 = v3[6];
        v31 = v3[5];
        v32 = v3[3];
        v33 = v3[4];
        v39 = v3[7];
        v40 = v31;
        outlined copy of AudioFileBuilder.Cache?(v32, v33, v31, v30);
        if (specialized static REAudioFileConfigurationWrapper.== infix(_:_:)(v42, v30))
        {
          v38 = [(objc_class *)isa hash];

          if (v38 == v39)
          {

            return;
          }
        }

        else
        {
        }
      }

      v40 = &v37;
      MEMORY[0x28223BE20](v28, v29);
      v36[2] = v3;
      v36[3] = SwiftObject;
      v36[4] = v14;
      v36[5] = isa;
      v36[6] = v42;
      v36[7] = v6;
      v36[8] = v20;
      v36[9] = a1;
      v36[10] = v5;
      v34 = swift_allocObject();
      *(v34 + 16) = partial apply for closure #1 in AudioFileBuilder.run(inputs:);
      *(v34 + 24) = v36;
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_5;
      v35 = _Block_copy(aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();

      _Block_release(v35);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if ((v35 & 1) == 0)
      {
        return;
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    if (one-time initialization token for rioAudio != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.rioAudio);
    v22 = static os_log_type_t.error.getter();
    v23 = Logger.logObject.getter();
    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26187B000, v23, v22, "AudioFileBuilder could not get an AssetManager.", v24, 2u);
      MEMORY[0x266713AD0](v24, -1, -1);
    }
  }
}

void closure #1 in AudioFileBuilder.run(inputs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  AudioFileBuilder.releaseAudioFileAndClearCache(importSession:)(a2);
  v11 = REAudioFileAssetCreateWithMappedDataAndConfiguration();
  if (v11)
  {
    v12 = v11;
    swift_beginAccess();
    RIOImportSessionQueueAssetForLoad();
    v13 = RIOPxrUsdObjectCopyPath();
    v14 = RIOPxrSdfPathCopyString();
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    oslog = v16;

    v17 = RIOBuilderInputsGetImportSession();
    if (v17)
    {
      v18 = v17;
      SwiftObject = RIOImportSessionGetSwiftObject();

      if (SwiftObject)
      {
        v20 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

        swift_beginAccess();
        v21 = *(SwiftObject + v20);
        v22 = RIOPxrSdfAssetPathAssetPathCopyString();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.utf8CString.getter();

        String.utf8CString.getter();
        RIOImportSessionRegisterAudioAsset();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
        v23 = swift_allocObject();
        *(v23 + 16) = v12;
        v24 = NSObject.hashValue.getter();
        v25 = a1[3];
        v26 = a1[4];
        v27 = a1[5];
        v28 = a1[6];
        a1[3] = v15;
        a1[4] = oslog;
        a1[5] = v23;
        a1[6] = a5;
        a1[7] = v24;

        outlined consume of AudioFileBuilder.Cache?(v25, v26, v27, v28);
        swift_beginAccess();
        v29 = objc_getAssociatedObject(a1, &static BuilderAssociatedKeys.OutputsReference);
        swift_endAccess();
        if (v29)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          outlined init with take of Any(&v48, v49);
          type metadata accessor for Outputs();
          swift_dynamicCast();
          v50 = MEMORY[0x277D841D8];
          v49[0] = v12;
          Outputs.subscript.setter(v49, 0xD00000000000001FLL, 0x80000002619942F0);

          return;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (one-time initialization token for rioAudio != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.rioAudio);
  v31 = static os_log_type_t.error.getter();

  v32 = a7;
  osloga = Logger.logObject.getter();

  if (os_log_type_enabled(osloga, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49[0] = v34;
    *v33 = 136315394;
    v35 = RIOPxrUsdObjectCopyPath();
    v36 = RIOPxrSdfPathCopyString();
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v49);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2080;
    v41 = RIOPxrSdfAssetPathAssetPathCopyString();
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v49);

    *(v33 + 14) = v45;
    _os_log_impl(&dword_26187B000, osloga, v31, "AudioFileBuilder could not create an REAssetRef. Prim path: %s. Asset path: %s.", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266713AD0](v34, -1, -1);
    MEMORY[0x266713AD0](v33, -1, -1);
  }

  else
  {
  }
}

void AudioFileBuilder.releaseAudioFileAndClearCache(importSession:)(uint64_t a1)
{
  v2 = v1[4];
  if (v2)
  {
    v3 = v1[6];
    v4 = v1[5];
    v5 = v1[3];
    v6 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v8 = *(a1 + v6);
    String.utf8CString.getter();
    outlined copy of AudioFileBuilder.Cache?(v5, v2, v4, v3);
    v9 = v8;
    RIOImportSessionRemoveExtraAssetWithTag();

    v10 = v1[4];
  }

  else
  {
    v10 = 0;
  }

  v11 = v1[3];
  v12 = v1[5];
  v13 = v1[6];
  *(v1 + 3) = 0u;
  *(v1 + 5) = 0u;
  v1[7] = 0;
  outlined consume of AudioFileBuilder.Cache?(v11, v10, v12, v13);
}

uint64_t AudioFileBuilder.__deallocating_deinit()
{
  outlined consume of AudioFileBuilder.Cache?(v0[3], v0[4], v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Builder.outputDescriptors() in conformance AudioFileBuilder()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16OutputDescriptorO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance AudioFileBuilder);
  outlined destroy of OutputDescriptor(&unk_287410870);
  return v0;
}

void protocol witness for Builder.clear(inputs:) in conformance AudioFileBuilder(uint64_t a1)
{
  v1 = RIOBuilderInputsGetImportSession();
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_7:
    __break(1u);
    return;
  }

  AudioFileBuilder.releaseAudioFileAndClearCache(importSession:)(v4);
}

uint64_t Prim.attribute(_:)(void *a1)
{
  if (RIOPxrUsdPrimHasAttribute())
  {
    v1 = RIOPxrUsdPrimCopyAttribute();
    type metadata accessor for AnyAttribute();
    v2 = swift_allocObject();
    v2[2] = v1;
    EmptyValue = RIOPxrUsdAttributeCopyValue();
    if (!EmptyValue)
    {
      EmptyValue = RIOPxrVtValueCreateEmptyValue();
    }

    v4 = EmptyValue;
    outlined consume of Result<AnyAttribute, Object.Error>(v2, 0);
    return v4;
  }

  else
  {
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(0);
    return 0;
  }
}

uint64_t REAudioFileConfigurationWrapper.__deallocating_deinit()
{
  REAudioFileAssetConfigurationDestroy();

  return swift_deallocClassInstance();
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

uint64_t getEnumTagSinglePayload for AudioFileBuilder.Cache(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AudioFileBuilder.Cache(uint64_t result, int a2, int a3)
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

BOOL specialized static REAudioFileConfigurationWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RandomizeStart = REAudioFileAssetConfigurationGetRandomizeStart();
  if (RandomizeStart != REAudioFileAssetConfigurationGetRandomizeStart())
  {
    return 0;
  }

  ShouldLoop = REAudioFileAssetConfigurationGetShouldLoop();
  if (ShouldLoop != REAudioFileAssetConfigurationGetShouldLoop())
  {
    return 0;
  }

  v4 = REAudioFileAssetConfigurationGetMixGroupName();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = REAudioFileAssetConfigurationGetMixGroupName();
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v8)
    {
      if (v13)
      {
        if (v6 == v11 && v8 == v13)
        {
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_17;
      }

LABEL_15:

      return 0;
    }

    if (v13)
    {
      goto LABEL_15;
    }
  }

  else if (v8)
  {
    goto LABEL_15;
  }

LABEL_17:
  Streaming = REAudioFileAssetConfigurationGetStreaming();
  if (Streaming == REAudioFileAssetConfigurationGetStreaming())
  {
    NormalizationMode = REAudioFileAssetConfigurationGetNormalizationMode();
    if (NormalizationMode == REAudioFileAssetConfigurationGetNormalizationMode())
    {
      CalibrationMode = REAudioFileAssetConfigurationGetCalibrationMode();
      if (CalibrationMode == REAudioFileAssetConfigurationGetCalibrationMode())
      {
        REAudioFileAssetConfigurationGetCalibrationLevel();
        v19 = v18;
        REAudioFileAssetConfigurationGetCalibrationLevel();
        return v19 == v20;
      }
    }
  }

  return 0;
}

uint64_t specialized AudioFileBuilder.stageSubscription.getter()
{
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v0 = static AudioConstants.AudioFile.primType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v0;
  v2 = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(inited + 32);
  v5 = closure #1 in closure #1 in AudioFileBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = v10;
  v6[3] = v5;
  v6[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v6;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v14 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v10, v10, 0);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_26198A640;
  *(v15 + 32) = v14;

  specialized Sequence.forEach(_:)(v15);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

void outlined consume of AudioFileBuilder.Cache?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void outlined copy of AudioFileBuilder.Cache?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t specialized REAudioFileConfigurationWrapper.init(prim:)(uint64_t a1)
{
  v2 = v1;
  v30[1] = *MEMORY[0x277D85DE8];
  *(v1 + 16) = REAudioFileAssetConfigurationCreate();
  if (one-time initialization token for randomizeStart != -1)
  {
    swift_once();
  }

  v30[0] = static AudioConstants.AudioFile.randomizeStart;
  v3 = static AudioConstants.AudioFile.randomizeStart;
  v4 = Prim.attribute(_:)(v30);

  if (v4)
  {
    LOBYTE(v30[0]) = 0;
    RIOPxrVtValueGetBool();
  }

  REAudioFileAssetConfigurationSetRandomizeStart();
  if (one-time initialization token for shouldLoop != -1)
  {
    swift_once();
  }

  v30[0] = static AudioConstants.AudioFile.shouldLoop;
  v5 = static AudioConstants.AudioFile.shouldLoop;
  v6 = Prim.attribute(_:)(v30);

  if (v6)
  {
    LOBYTE(v30[0]) = 0;
    RIOPxrVtValueGetBool();
  }

  REAudioFileAssetConfigurationSetShouldLoop();
  if (one-time initialization token for mixGroup != -1)
  {
    swift_once();
  }

  v7 = static AudioConstants.AudioFile.mixGroup;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v8 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v9 = swift_allocObject();
    v9[2] = v8;
    v10 = Relationship.targets.getter();
    if (*(v10 + 16))
    {
      EmptyPath = *(v10 + 32);
    }

    else
    {

      EmptyPath = RIOPxrSdfPathCreateEmptyPath();
    }

    outlined consume of Result<AnyAttribute, Object.Error>(v9, 0);
    v12 = RIOPxrSdfPathCopyName();
  }

  else
  {

    v30[0] = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v30[0]);
    v12 = 0;
  }

  REAudioFileAssetConfigurationSetMixGroupName();

  if (one-time initialization token for loadingStrategy != -1)
  {
    swift_once();
  }

  v30[0] = static AudioConstants.AudioFile.loadingStrategy;
  v13 = static AudioConstants.AudioFile.loadingStrategy;
  v14 = Prim.attribute(_:)(v30);

  if (v14)
  {
    v15 = RIOPxrVtValueCopyString();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (v18)
      {
        v19 = String.lowercased()();
        if (v19._countAndFlagsBits == 0x6D6165727473 && v19._object == 0xE600000000000000)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }

    else
    {
    }
  }

  REAudioFileAssetConfigurationSetStreaming();
  if (one-time initialization token for normalization != -1)
  {
    swift_once();
  }

  v30[0] = static AudioConstants.AudioFile.normalization;
  v20 = static AudioConstants.AudioFile.normalization;
  v21 = Prim.attribute(_:)(v30);

  if (v21)
  {
    v22 = RIOPxrVtValueCopyToken();

    if (v22)
    {
      v30[0] = v22;
      AudioConstants.AudioFile.Normalization.init(rawValue:)(v30, &v29);
    }
  }

  REAudioFileAssetConfigurationSetNormalizationMode();
  if (one-time initialization token for calibrationMode != -1)
  {
    swift_once();
  }

  v30[0] = static AudioConstants.AudioFile.calibrationMode;
  v23 = static AudioConstants.AudioFile.calibrationMode;
  v24 = Prim.attribute(_:)(v30);

  if (v24 && (v25 = RIOPxrVtValueCopyToken(), v24, v25) && (v30[0] = v25, AudioConstants.AudioFile.CalibrationMode.init(rawValue:)(v30, &v29), v29 != 3) && v29 > 1u)
  {
    REAudioFileAssetConfigurationSetCalibrationMode();
    if (String.count.getter() > 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    REAudioFileAssetConfigurationSetCalibrationMode();
    if (String.count.getter() >= 1)
    {
LABEL_37:
      v26 = RIOPxrTfTokenCreateWithCString();
      goto LABEL_39;
    }
  }

  v26 = RIOPxrTfTokenEmpty();
LABEL_39:
  v30[0] = v26;
  v27 = Prim.attribute(_:)(v30);

  if (v27)
  {
    v30[0] = 0;
    RIOPxrVtValueGetDouble();
  }

  REAudioFileAssetConfigurationSetCalibrationLevel();
  return v2;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __RKEntityMoveSelection.init(inputs:)@<X0>(uint64_t a2@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v16);
  if (v3)
  {

LABEL_3:
    lazy protocol witness table accessor for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v6 = v16;
  v7 = RIOPxrTfTokenCopyString();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  v12 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveSelectionUSD.init(rawValue:), v11);

  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_3;
    }

    v13 = MEMORY[0x277CDAE90];
  }

  else
  {

    v13 = MEMORY[0x277CDAE98];
  }

  v14 = *v13;
  v15 = type metadata accessor for __RKEntityMoveSelection();
  return (*(*(v15 - 8) + 104))(a2, v14, v15);
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError);
  }

  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    specialized Set.subscript.getter(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      type metadata accessor for SceneDescriptionFoundations.Layer.ReplicationMessagePublisher();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, float a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a3);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for RIOPxrVtValueRef(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t CompileSession.CompilationOption_RequireIncludeMetadata_Default.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 16) = 0;
  }

  return v1 & 1;
}

uint64_t CompileSession.CompilationOption_DumpDiagnosticsData_Default.getter()
{
  v1 = *(v0 + 17);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 17) = 0;
  }

  return v1 & 1;
}

uint64_t CompileSession.CompilationOption_DumpDiagnosticsDirectory_Default.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    v7 = *(v1 + 24);
  }

  else
  {
    v8 = [objc_opt_self() defaultManager];
    v9 = [v8 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = URL.path.getter();
    v11 = v10;
    (*(v3 + 8))(v6, v2);
    *(v1 + 24) = v7;
    *(v1 + 32) = v11;
  }

  return v7;
}

uint64_t CompileSession.CompilationOption_ForceIncludeUnusedMaterials_Default.getter()
{
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    LOBYTE(v1) = 1;
    *(v0 + 40) = 1;
  }

  return v1 & 1;
}

uint64_t CompileSession.exportOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9RealityIO14CompileSession_exportOptions;
  swift_beginAccess();
  v4 = type metadata accessor for __REAssetBundle.ExportOptions();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t CompileSession.basePath.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CompileSession.deploymentTargets.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9RealityIO14CompileSession_deploymentTargets;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t CompileSession.DeploymentTarget_Default.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v11);
  v16 = &v21[-v15];
  v17 = OBJC_IVAR____TtC9RealityIO14CompileSession____lazy_storage___DeploymentTarget_Default;
  swift_beginAccess();
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v2 + v17, v16, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v18 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    return (*(v19 + 32))(a1, v16, v18);
  }

  outlined destroy of Any?(v16, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  (*(v5 + 104))(v8, *MEMORY[0x277CDACB8], v4);
  __REAssetBundle.ExportOptions.DeploymentTarget.init(platform:version:)();
  (*(v19 + 16))(v13, a1, v18);
  (*(v19 + 56))(v13, 0, 1, v18);
  swift_beginAccess();
  outlined assign with take of (URL, __REAsset)(v13, v2 + v17, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  return swift_endAccess();
}

void CompileSession.compatibilityFaults.getter()
{
  v1 = OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84FA0];
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        specialized Set.union<A>(_:)(v10, v8);
        v8 = v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportSession.EvaluationFault(0);
  v23[0] = *(v4 - 8);
  v6.n128_f32[0] = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f32[0] = MEMORY[0x28223BE20](v9, v6);
  v12 = v23 - v11;
  MEMORY[0x28223BE20](v13, v10);
  v15 = v23 - v14;
  v16 = 0;
  v23[1] = a2;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = v16;
LABEL_9:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    outlined init with copy of CompileSession.ImportSessionData(*(a1 + 48) + *(v23[0] + 72) * (v22 | (v21 << 6)), v15, type metadata accessor for ImportSession.EvaluationFault);
    outlined init with take of CompileSession.ImportSessionData(v15, v8, type metadata accessor for ImportSession.EvaluationFault);
    specialized Set._Variant.insert(_:)(v12, v8);
    outlined destroy of CompileSession.ImportSessionData(v12, type metadata accessor for ImportSession.EvaluationFault);
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(a1 + 56 + 8 * v21);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t CompileSession.includeUnusedMaterials.getter()
{
  v1 = OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CompileSession.includeUnusedMaterials.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CompileSession.loadSubdsAsSubds.getter()
{
  v1 = OBJC_IVAR____TtC9RealityIO14CompileSession_loadSubdsAsSubds;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CompileSession.loadSubdsAsSubds.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9RealityIO14CompileSession_loadSubdsAsSubds;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t CompileSession.LoadError.errorDescription.getter(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(31);

    v8 = 0xD00000000000001DLL;
    v5 = a1;
    v6 = a2;
  }

  else
  {
    _StringGuts.grow(_:)(48);

    v8 = 0xD000000000000023;
    MEMORY[0x26670F080](a1, a2);
    v5 = 0x6E7562206E692022;
    v6 = 0xEB00000000656C64;
  }

  MEMORY[0x26670F080](v5, v6);
  return v8;
}

uint64_t CompileSession.__allocating_init(sourcePaths:exportOptions:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CompileSession.init(sourcePaths:exportOptions:)(a1, a2, v5);
  return v4;
}

uint64_t CompileSession.init(sourcePaths:exportOptions:)(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  v92 = a1;
  v6 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for URL();
  v90 = *(v96 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v96, v10);
  v81 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v11);
  v97 = &v79 - v14;
  v15 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v79 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v20.n128_f32[0] = MEMORY[0x28223BE20](v18 - 8, v19);
  v86 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f32[0] = MEMORY[0x28223BE20](v22, v20);
  v91 = &v79 - v24;
  v26.n128_f32[0] = MEMORY[0x28223BE20](v25, v23);
  v28 = &v79 - v27;
  v30 = MEMORY[0x28223BE20](v29, v26);
  v32 = &v79 - v31;
  *(v4 + 16) = 514;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 2;
  (*(v7 + 56))(v4 + OBJC_IVAR____TtC9RealityIO14CompileSession____lazy_storage___DeploymentTarget_Default, 1, 1, v6, v30);
  v33 = OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults;
  *(v4 + v33) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy9RealityIO13ImportSessionC15EvaluationFaultOGTt0g5Tf4g_nTm(MEMORY[0x277D84F90], &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
  *(v4 + OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials) = 0;
  *(v4 + OBJC_IVAR____TtC9RealityIO14CompileSession_loadSubdsAsSubds) = 1;
  v34 = static os_log_type_t.info.getter();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v35 = swift_allocObject();
  v95 = xmmword_2619891C0;
  *(v35 + 16) = xmmword_2619891C0;
  __REAssetBundle.ExportOptions.deploymentTarget.getter();
  v82 = v7;
  v36 = *(v7 + 48);
  LODWORD(v33) = v36(v32, 1, v6);
  outlined destroy of Any?(v32, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v88 = a2;
  v89 = v4;
  v87 = v6;
  v84 = v36;
  v85 = v7 + 48;
  if (v33 == 1)
  {
    v37 = 0xE400000000000000;
    v38 = 1701736302;
  }

  else
  {
    __REAssetBundle.ExportOptions.deploymentTarget.getter();
    result = (v36)(v28, 1, v6);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v40 = v79;
    __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
    (*(v82 + 8))(v28, v6);
    v38 = __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter();
    v37 = v41;
    (*(v93 + 8))(v40, v94);
  }

  v42 = v92;
  v43 = v96;
  *(v35 + 56) = MEMORY[0x277D837D0];
  v94 = lazy protocol witness table accessor for type String and conformance String();
  *(v35 + 64) = v94;
  *(v35 + 32) = v38;
  *(v35 + 40) = v37;
  v93 = type metadata accessor for OS_os_log();
  v44 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v34, &dword_26187B000, v44, "CompileSession was created with deploymentTarget %@", 51, 2, v35);

  v45 = *(v42 + 16);
  v46 = v97;
  if (v45)
  {
    v47 = *(v90 + 16);
    v48 = v92 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v49 = *(v90 + 72);
    v50 = (v90 + 8);
    do
    {
      v47(v46, v48, v43);
      v51 = static os_log_type_t.info.getter();
      v52 = swift_allocObject();
      *(v52 + 16) = v95;
      v53 = URL.path.getter();
      v54 = v94;
      *(v52 + 56) = MEMORY[0x277D837D0];
      *(v52 + 64) = v54;
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      v56 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v51, &dword_26187B000, v56, "     Contains source path %@", 28, 2, v52);
      v43 = v96;

      v46 = v97;
      (*v50)(v97, v43);
      v48 += v49;
      --v45;
    }

    while (v45);
  }

  v57 = v89;
  v58 = v92;
  *(v89 + 48) = v92;
  v59 = OBJC_IVAR____TtC9RealityIO14CompileSession_exportOptions;
  v60 = type metadata accessor for __REAssetBundle.ExportOptions();
  v61 = *(v60 - 8);
  v62 = v88;
  (*(v61 + 16))(v57 + v59, v88, v60);
  if (*(v58 + 16))
  {
    v63 = v90;
    v64 = v81;
    (*(v90 + 16))(v81, v58 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v43);
    v65 = specialized static CompileSession.findRKAssets(sourcePath:)(v64);
    v67 = v66;
    (*(v63 + 8))(v64, v43);
  }

  else
  {
    v65 = 0;
    v67 = 0xE000000000000000;
  }

  v68 = v87;
  v69 = v91;
  v70 = v84;
  v71 = (v57 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
  *v71 = v65;
  v71[1] = v67;
  *(v57 + OBJC_IVAR____TtC9RealityIO14CompileSession_compilationOptions) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __REAssetBundle.ExportOptions.deploymentTarget.getter();
  v72 = v86;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v69, v86, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  if (v70(v72, 1, v68) == 1)
  {
    v73 = MEMORY[0x277D84FA0];
  }

  else
  {
    v97 = v60;
    v74 = v82;
    v75 = v80;
    (*(v82 + 32))(v80, v72, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVGMR);
    v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v95;
    (*(v74 + 16))(v77 + v76, v75, v68);
    v73 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetV_Tt0g5Tf4g_n(v77);
    swift_setDeallocating();
    v78 = *(v74 + 8);
    v78(v77 + v76, v68);
    v69 = v91;
    swift_deallocClassInstance();
    v78(v75, v68);
    v60 = v97;
  }

  outlined destroy of Any?(v69, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  (*(v61 + 8))(v62, v60);
  *(v57 + OBJC_IVAR____TtC9RealityIO14CompileSession_deploymentTargets) = v73;
  return v57;
}

uint64_t CompileSession.__allocating_init(sourcePaths:exportOptions:compilationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for __REAssetBundle.ExportOptions();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v11, a2, v6, v9);
  type metadata accessor for CompileSession(0);
  v12 = swift_allocObject();
  CompileSession.init(sourcePaths:exportOptions:)(a1, v11, v13);
  if (!*(a3 + 16))
  {

    goto LABEL_6;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000002619955B0);
  if ((v15 & 1) == 0)
  {
LABEL_6:

    (*(v7 + 8))(a2, v6);
    goto LABEL_7;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v14, v20);
  (*(v7 + 8))(a2, v6);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v16 = CompileSession.CompilationOption_ForceIncludeUnusedMaterials_Default.getter();
    goto LABEL_8;
  }

  v16 = v19[15];
LABEL_8:
  v17 = OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials;
  swift_beginAccess();
  *(v12 + v17) = v16 & 1;

  return v12;
}

uint64_t CompileSession.__allocating_init(basePath:sourcePaths:exportOptions:compilationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  CompileSession.init(basePath:sourcePaths:exportOptions:compilationOptions:)(a1, a2, a3, a4, v9);
  return v8;
}

uint64_t CompileSession.init(basePath:sourcePaths:exportOptions:compilationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = v5;
  v94 = a4;
  v101 = a2;
  v98 = a1;
  v8 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v86 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v99 = *(v12 - 8);
  v100 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v106 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v102 = *(v15 - 8);
  v103 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v85 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v20.n128_f32[0] = MEMORY[0x28223BE20](v18 - 8, v19);
  v92 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f32[0] = MEMORY[0x28223BE20](v22, v20);
  v96 = &v85 - v24;
  v26.n128_f32[0] = MEMORY[0x28223BE20](v25, v23);
  v28 = &v85 - v27;
  v30 = MEMORY[0x28223BE20](v29, v26);
  v32 = &v85 - v31;
  *(v5 + 16) = 514;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 2;
  (*(v9 + 56))(v5 + OBJC_IVAR____TtC9RealityIO14CompileSession____lazy_storage___DeploymentTarget_Default, 1, 1, v8, v30);
  v33 = OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults;
  *(v5 + v33) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy9RealityIO13ImportSessionC15EvaluationFaultOGTt0g5Tf4g_nTm(MEMORY[0x277D84F90], &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
  v34 = OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials;
  *(v5 + OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials) = 0;
  *(v5 + OBJC_IVAR____TtC9RealityIO14CompileSession_loadSubdsAsSubds) = 1;
  LODWORD(v104) = static os_log_type_t.info.getter();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v35 = swift_allocObject();
  v105 = xmmword_2619891C0;
  *(v35 + 16) = xmmword_2619891C0;
  v36 = a3;
  __REAssetBundle.ExportOptions.deploymentTarget.getter();
  v87 = v9;
  v37 = *(v9 + 48);
  v38 = v37(v32, 1, v8);
  outlined destroy of Any?(v32, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v95 = v6;
  v97 = v36;
  v88 = v34;
  v93 = v8;
  v91 = v9 + 48;
  v90 = v37;
  if (v38 == 1)
  {
    v39 = 0xE400000000000000;
    v40 = 1701736302;
    goto LABEL_5;
  }

  __REAssetBundle.ExportOptions.deploymentTarget.getter();
  result = (v37)(v28, 1, v8);
  if (result != 1)
  {
    v42 = v85;
    __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
    (*(v87 + 8))(v28, v8);
    v40 = __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter();
    v39 = v43;
    (*(v102 + 8))(v42, v103);
LABEL_5:
    v44 = v106;
    v45 = v104;
    *(v35 + 56) = MEMORY[0x277D837D0];
    v104 = lazy protocol witness table accessor for type String and conformance String();
    *(v35 + 64) = v104;
    *(v35 + 32) = v40;
    *(v35 + 40) = v39;
    v103 = type metadata accessor for OS_os_log();
    v46 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v45, &dword_26187B000, v46, "CompileSession was created with deploymentTarget %@", 51, 2, v35);

    v47 = v100;
    v48 = *(v101 + 16);
    if (v48)
    {
      v102 = *(v99 + 16);
      v49 = v101 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
      v50 = *(v99 + 72);
      v51 = (v99 + 8);
      do
      {
        (v102)(v44, v49, v47);
        v52 = static os_log_type_t.info.getter();
        v53 = swift_allocObject();
        *(v53 + 16) = v105;
        v54 = URL.path.getter();
        v55 = v104;
        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 64) = v55;
        *(v53 + 32) = v54;
        *(v53 + 40) = v56;
        v57 = static OS_os_log.default.getter();
        v58 = v52;
        v44 = v106;
        os_log(_:dso:log:_:_:)(v58, &dword_26187B000, v57, "     Contains source path %@", 28, 2, v53);

        (*v51)(v44, v47);
        v49 += v50;
        --v48;
      }

      while (v48);
    }

    v59 = v95;
    *(v95 + 48) = v101;
    v60 = OBJC_IVAR____TtC9RealityIO14CompileSession_exportOptions;
    v61 = type metadata accessor for __REAssetBundle.ExportOptions();
    v62 = *(v61 - 8);
    v63 = v97;
    (*(v62 + 16))(v59 + v60, v97, v61);
    v64 = v98;
    v65 = URL.path.getter();
    v66 = (v59 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
    *v66 = v65;
    v66[1] = v67;
    v68 = v94;
    *(v59 + OBJC_IVAR____TtC9RealityIO14CompileSession_compilationOptions) = v94;

    v69 = v96;
    __REAssetBundle.ExportOptions.deploymentTarget.getter();
    v70 = v92;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v69, v92, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v71 = v93;
    if (v90(v70, 1, v93) == 1)
    {
      v72 = MEMORY[0x277D84FA0];
    }

    else
    {
      v106 = v61;
      v73 = v87;
      v74 = v86;
      (*(v87 + 32))(v86, v70, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVGMR);
      v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = v105;
      (*(v73 + 16))(v76 + v75, v74, v71);
      v72 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetV_Tt0g5Tf4g_n(v76);
      swift_setDeallocating();
      v77 = *(v73 + 8);
      v78 = v76 + v75;
      v69 = v96;
      v77(v78, v71);
      swift_deallocClassInstance();
      v79 = v74;
      v63 = v97;
      v77(v79, v71);
      v61 = v106;
      v64 = v98;
    }

    v80 = v100;
    outlined destroy of Any?(v69, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    *(v59 + OBJC_IVAR____TtC9RealityIO14CompileSession_deploymentTargets) = v72;
    if (*(v68 + 16) && (v81 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000002619955B0), (v82 & 1) != 0))
    {
      outlined init with copy of Any(*(v68 + 56) + 32 * v81, v108);
      (*(v62 + 8))(v63, v61);
      (*(v99 + 8))(v64, v80);

      if (swift_dynamicCast())
      {
        v83 = v107;
        v84 = v88;
LABEL_17:
        swift_beginAccess();
        *(v59 + v84) = v83 & 1;
        return v59;
      }
    }

    else
    {

      (*(v62 + 8))(v63, v61);
      (*(v99 + 8))(v64, v80);
    }

    v84 = v88;
    v83 = CompileSession.CompilationOption_ForceIncludeUnusedMaterials_Default.getter();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static CompileSession.cartesianProduct(of:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2619891C0;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *a2 = v5;
}

char *CompileSession.postOperationsAndExtraAssets(for:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v155 = a2;
  v146 = type metadata accessor for __AssetRef();
  v151 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v5);
  v145 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v142 = *(v144 - 8);
  v8.n128_f32[0] = MEMORY[0x28223BE20](v144, v7);
  v153 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v8);
  v143 = &v137 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v137 = &v137 - v14;
  v149 = type metadata accessor for Date();
  v141 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v15);
  v140 = (&v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = type metadata accessor for UUID();
  v138 = *(v139 - 1);
  MEMORY[0x28223BE20](v139, v17);
  v19 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for URL();
  v152 = *(v148 - 8);
  v21.n128_f32[0] = MEMORY[0x28223BE20](v148, v20);
  v150 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.n128_f32[0] = MEMORY[0x28223BE20](v23, v21);
  v154 = &v137 - v25;
  MEMORY[0x28223BE20](v26, v24);
  v28 = &v137 - v27;
  v29 = type metadata accessor for Entity.ChildCollection();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = a1;
  v34 = dispatch thunk of Entity.name.getter();
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
    type metadata accessor for Entity();
    HasHierarchy.children.getter();
    lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection, MEMORY[0x277CDB190], MEMORY[0x277CDB1A0]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v38 = dispatch thunk of Collection.distance(from:to:)();
    v39 = *(v30 + 8);
    v39(v33, v29);
    if (v38 == 1)
    {
      HasHierarchy.children.getter();
      Entity.ChildCollection.subscript.getter();
      v39(v33, v29);
      dispatch thunk of Entity.name.getter();

      dispatch thunk of Entity.name.setter();
    }
  }

  v40 = OBJC_IVAR____TtC9RealityIO14CompileSession_compilationOptions;
  swift_beginAccess();
  v41 = *(v3 + v40);
  if (*(v41 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(0x67616944706D7544, 0xEF73636974736F6ELL), (v43 & 1) != 0))
  {
    outlined init with copy of Any(*(v41 + 56) + 32 * v42, &v160);
  }

  else
  {
    v161 = 0u;
    v160 = 0u;
  }

  swift_endAccess();
  if (*(&v161 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v159 != 1)
      {
        goto LABEL_28;
      }

LABEL_16:
      swift_beginAccess();
      v44 = *(v3 + v40);
      if (*(v44 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x8000000261995590), (v46 & 1) != 0))
      {
        outlined init with copy of Any(*(v44 + 56) + 32 * v45, &v160);
      }

      else
      {
        v161 = 0u;
        v160 = 0u;
      }

      v47 = v139;
      swift_endAccess();
      if (*(&v161 + 1))
      {
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        outlined destroy of Any?(&v160, &_sypSgMd, &_sypSgMR);
      }

      CompileSession.CompilationOption_DumpDiagnosticsDirectory_Default.getter();
LABEL_25:
      v48 = v154;
      URL.init(fileURLWithPath:)();

      URL.lastPathComponent.getter();
      URL.appendingPathComponent(_:)();

      v139 = *(v152 + 8);
      (v139)(v48, v148);
      UUID.init()();
      v49 = UUID.uuidString.getter();
      v51 = v50;
      (*(v138 + 8))(v19, v47);
      *&v160 = v49;
      *(&v160 + 1) = v51;

      MEMORY[0x26670F080](45, 0xE100000000000000);

      v52 = *(&v160 + 1);
      v138 = v160;
      v53 = v140;
      Date.init()();
      v54 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v55 = MEMORY[0x26670EFB0](0xD000000000000016, 0x8000000261995940);
      [v54 setDateFormat_];

      isa = Date._bridgeToObjectiveC()().super.isa;
      v57 = [v54 stringFromDate_];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = v139;
      (v141[1])(v53, v149);
      *&v160 = v138;
      *(&v160 + 1) = v52;

      MEMORY[0x26670F080](v58, v60);

      v62 = v160;
      v63 = v150;
      URL.deletingLastPathComponent()();
      *&v160 = URL.lastPathComponent.getter();
      *(&v160 + 1) = v64;

      MEMORY[0x26670F080](45, 0xE100000000000000);

      MEMORY[0x26670F080](v62, *(&v62 + 1));

      v65 = v154;
      URL.appendingPathComponent(_:)();

      v66 = v148;
      v61(v63, v148);
      v61(v28, v66);
      (*(v152 + 32))(v28, v65, v66);
      v67 = static os_log_type_t.info.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_26198A8E0;
      v69 = URL.path.getter();
      v71 = v70;
      v72 = MEMORY[0x277D837D0];
      *(v68 + 56) = MEMORY[0x277D837D0];
      v73 = lazy protocol witness table accessor for type String and conformance String();
      *(v68 + 64) = v73;
      *(v68 + 32) = v69;
      *(v68 + 40) = v71;
      v74 = URL.path.getter();
      *(v68 + 96) = v72;
      *(v68 + 104) = v73;
      *(v68 + 72) = v74;
      *(v68 + 80) = v75;
      type metadata accessor for OS_os_log();
      v76 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v67, &dword_26187B000, v76, "Dumping diagnostics for %@ to %@", 32, 2, v68);

      URL.path.getter();
      v77 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      v78 = v147;
      swift_beginAccess();
      v79 = *(v78 + v77);
      String.utf8CString.getter();
      v80 = v79;

      LOBYTE(v67) = RIOImportSessionDumpDiagnostics();

      if ((v67 & 1) == 0)
      {
        v81 = static os_log_type_t.info.getter();
        v82 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v81, &dword_26187B000, v82, "Error encountered dumping diagnostics!", 38, 2, MEMORY[0x277D84F90]);
      }

      v61(v28, v148);
      goto LABEL_28;
    }
  }

  else
  {
    outlined destroy of Any?(&v160, &_sypSgMd, &_sypSgMR);
  }

  if (CompileSession.CompilationOption_DumpDiagnosticsData_Default.getter())
  {
    goto LABEL_16;
  }

LABEL_28:
  swift_beginAccess();

  v84 = v147;
  v85 = ImportSession.getCompatibilityFaultsByPrimPath(for:)(v83);

  v86 = OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v158[0] = *(v3 + v86);
  *(v3 + v86) = 0x8000000000000000;
  v88 = 0;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v85, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v158);

  *(v3 + v86) = v158[0];
  swift_endAccess();
  v89 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v150 = v89;
  v90 = RIOImportSessionCopyExtraAssetTags();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&v160 = 0;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v160)
    {
      v91 = v160;
    }

    else
    {
      v91 = MEMORY[0x277D84F90];
    }
  }

  else
  {

    v91 = MEMORY[0x277D84F90];
  }

  v154 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLV_10RealityKit9__REAssetCtTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v149 = *(v91 + 16);
  if (!v149)
  {
LABEL_58:

    return v154;
  }

  v141 = (v3 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
  swift_beginAccess();
  v92 = 0;
  v140 = (v152 + 16);
  v139 = (v151 + 8);
  v93 = (v91 + 40);
  v138 = v91;
  while (v92 < *(v91 + 16))
  {
    v94 = *(v93 - 1);
    v95 = *v93;
    v96 = *&v150[v84];
    v90 = String.utf8CString.getter();

    v88 = v96;
    ExtraAssetWithTag = RIOImportSessionGetExtraAssetWithTag();

    if (ExtraAssetWithTag)
    {
      v151 = v94;
      v152 = ExtraAssetWithTag;
      v99 = *v141;
      v98 = v141[1];

      v90 = URL.path.getter();
      v101 = v100;
      *&v160 = v90;
      *(&v160 + 1) = v100;
      v156 = v99;
      v157 = v98;
      lazy protocol witness table accessor for type String and conformance String();
      lazy protocol witness table accessor for type String and conformance String();
      if (BidirectionalCollection<>.starts<A>(with:)())
      {
        *&v160 = v90;
        *(&v160 + 1) = v101;
        v156 = v99;
        v157 = v98;
        v102 = type metadata accessor for Locale();
        v103 = v137;
        (*(*(v102 - 8) + 56))(v137, 1, 1, v102);
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.range<A>(of:options:range:locale:)();
        v105 = v104;
        v88 = v106;
        outlined destroy of Any?(v103, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

        if (v88)
        {
          v107 = 15;
        }

        else
        {
          v107 = v105;
        }

        v108 = HIBYTE(v101) & 0xF;
        if ((v101 & 0x2000000000000000) == 0)
        {
          v108 = v90 & 0xFFFFFFFFFFFFLL;
        }

        if (4 * v108 < v107 >> 14)
        {
          goto LABEL_61;
        }

        v109 = String.subscript.getter();
        v111 = v110;
        v113 = v112;
        v115 = v114;

        v90 = MEMORY[0x26670F020](v109, v111, v113, v115);
        v101 = v116;
      }

      *&v160 = v90;
      *(&v160 + 1) = v101;

      MEMORY[0x26670F080](58, 0xE100000000000000);

      MEMORY[0x26670F080](v151, v95);

      v90 = *(&v160 + 1);
      v117 = v160;
      v88 = *(v144 + 48);
      v118 = v143;
      (*v140)(v143, v155, v148);
      type metadata accessor for __REAsset();
      *(&v161 + 1) = MEMORY[0x277D841D8];
      *&v160 = v152;
      v119 = v145;
      static __AssetRef.__fromCore(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v160);
      v120 = static __REAsset.__fromHandle(_:)();
      (*v139)(v119, v146);
      *(v118 + v88) = v120;
      outlined init with take of (URL, __REAsset)(v118, v153, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v121 = v154;
      v122 = swift_isUniquelyReferenced_nonNull_native();
      *&v160 = v121;
      v123 = specialized __RawDictionaryStorage.find<A>(_:)(v117, v90);
      v125 = *(v121 + 2);
      v126 = (v124 & 1) == 0;
      v127 = __OFADD__(v125, v126);
      v128 = v125 + v126;
      if (v127)
      {
        goto LABEL_60;
      }

      v129 = v124;
      if (*(v121 + 3) >= v128)
      {
        if (v122)
        {
          goto LABEL_52;
        }

        v88 = v123;
        specialized _NativeDictionary.copy()();
        v123 = v88;
        if ((v129 & 1) == 0)
        {
          goto LABEL_55;
        }

LABEL_53:
        v131 = v123;

        v154 = v160;
        outlined assign with take of (URL, __REAsset)(v153, *(v160 + 56) + *(v142 + 72) * v131, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v128, v122);
        v123 = specialized __RawDictionaryStorage.find<A>(_:)(v117, v90);
        if ((v129 & 1) != (v130 & 1))
        {
          goto LABEL_63;
        }

LABEL_52:
        if (v129)
        {
          goto LABEL_53;
        }

LABEL_55:
        v132 = v160;
        *(v160 + 8 * (v123 >> 6) + 64) |= 1 << v123;
        v133 = (*(v132 + 6) + 16 * v123);
        *v133 = v117;
        v133[1] = v90;
        outlined init with take of (URL, __REAsset)(v153, *(v132 + 7) + *(v142 + 72) * v123, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
        v134 = *(v132 + 2);
        v127 = __OFADD__(v134, 1);
        v135 = v134 + 1;
        if (v127)
        {
          goto LABEL_62;
        }

        v154 = v132;
        *(v132 + 2) = v135;
      }

      v84 = v147;
      v91 = v138;
      goto LABEL_36;
    }

LABEL_36:
    ++v92;
    v93 += 2;
    if (v149 == v92)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  *(v92 + v90) = v158[0];

  __break(1u);
  return result;
}

uint64_t CompileSession.compileSync(outputPath:)(unint64_t a1)
{
  v2 = v1;
  v4 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2619891C0;
  v6 = URL.path.getter();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  type metadata accessor for OS_os_log();
  v9 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &dword_26187B000, v9, "CompileSession compileSync called with outputPath %@", 52, 2, v5);

  v20 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLV_10RealityKit9__REAssetCtTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  type metadata accessor for USDImportService();
  inited = swift_initStackObject();

  v11 = static os_log_type_t.info.getter();
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v11, &dword_26187B000, v12, "[USDImportService] RealityIO USDImportService instantiated.  RealityIO will be used to service load requests from USDImportService.", 131, 2, v18);

  swift_beginAccess();

  v13._countAndFlagsBits = 47;
  v13._object = 0xE100000000000000;
  LOBYTE(v9) = String.hasSuffix(_:)(v13);

  if ((v9 & 1) == 0)
  {
    swift_beginAccess();
    MEMORY[0x26670F080](47, 0xE100000000000000);
    swift_endAccess();
  }

  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy9RealityIO13ImportSessionC15EvaluationFaultOGTt0g5Tf4g_nTm(MEMORY[0x277D84F90], &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
  v15 = OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults;
  swift_beginAccess();
  *(v2 + v15) = v14;

  closure #1 in CompileSession.compileSync(outputPath:)(v2, inited, &v18, &v19, &v20, a1, &v17);
}

uint64_t closure #1 in CompileSession.compileSync(outputPath:)(uint64_t a1, uint64_t a2, Swift::String **a3, unint64_t *a4, uint64_t *a5, unint64_t a6, uint64_t *a7)
{
  v471 = a7;
  v498 = a6;
  v504 = a5;
  v501 = a4;
  v526 = a3;
  v545 = *MEMORY[0x277D85DE8];
  v487 = type metadata accessor for __AssetRef();
  v453 = *(v487 - 8);
  MEMORY[0x28223BE20](v487, v9);
  v486 = &v451 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12WriteOptionsV15TextureFileSizeOSgMd, &_s10RealityKit6EntityC0A10FoundationE12WriteOptionsV15TextureFileSizeOSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v460 = &v451 - v13;
  v14 = type metadata accessor for Entity.WriteOptions.TextureFileSize();
  v464 = *(v14 - 8);
  v465 = v14;
  v16.n128_f32[0] = MEMORY[0x28223BE20](v14, v15);
  v458 = &v451 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v16);
  v463 = &v451 - v19;
  v20 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v455 = *(v20 - 8);
  v456 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v454 = &v451 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v499 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  RealityKitOptionBool = *(v499 - 8);
  MEMORY[0x28223BE20](v499, v24);
  v457 = &v451 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtMd, &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtMR);
  v470 = *(v517 - 8);
  MEMORY[0x28223BE20](v517, v26);
  v508 = (&v451 - v27);
  v492 = type metadata accessor for CompileSession.ImportSessionData(0);
  v510 = *(v492 - 8);
  v29.n128_f32[0] = MEMORY[0x28223BE20](v492, v28);
  v514 = &v451 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.n128_f32[0] = MEMORY[0x28223BE20](v31, v29);
  v484 = (&v451 - v33);
  MEMORY[0x28223BE20](v34, v32);
  v494 = (&v451 - v35);
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v535 = *(v500 - 8);
  v37.n128_f32[0] = MEMORY[0x28223BE20](v500 - 8, v36);
  v485 = &v451 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40.n128_f32[0] = MEMORY[0x28223BE20](v39, v37);
  v506 = &v451 - v41;
  v43.n128_f32[0] = MEMORY[0x28223BE20](v42, v40);
  v536 = &v451 - v44;
  MEMORY[0x28223BE20](v45, v43);
  v531 = &v451 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMR);
  v49.n128_f32[0] = MEMORY[0x28223BE20](v47 - 8, v48);
  v496 = (&v451 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52.n128_f32[0] = MEMORY[0x28223BE20](v51, v49);
  v493 = &v451 - v53;
  v55.n128_f32[0] = MEMORY[0x28223BE20](v54, v52);
  *&v534 = &v451 - v56;
  MEMORY[0x28223BE20](v57, v55);
  v533 = (&v451 - v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttSgMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttSgMR);
  MEMORY[0x28223BE20](v59 - 8, v60);
  v529 = (&v451 - v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v64.n128_f32[0] = MEMORY[0x28223BE20](v62 - 8, v63);
  v461 = &v451 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67.n128_f32[0] = MEMORY[0x28223BE20](v66, v64);
  v481 = &v451 - v68;
  v70.n128_f32[0] = MEMORY[0x28223BE20](v69, v67);
  v473 = &v451 - v71;
  v73.n128_f32[0] = MEMORY[0x28223BE20](v72, v70);
  v476 = &v451 - v74;
  MEMORY[0x28223BE20](v75, v73);
  v475 = &v451 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v77 - 8, v78);
  v474 = &v451 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtSgMd, &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtSgMR);
  v82.n128_f32[0] = MEMORY[0x28223BE20](v80 - 8, v81);
  v525 = &v451 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84, v82);
  v516 = (&v451 - v85);
  v86 = type metadata accessor for URL();
  v87 = *(v86 - 8);
  v89.n128_f32[0] = MEMORY[0x28223BE20](v86, v88);
  v505 = &v451 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92.n128_f32[0] = MEMORY[0x28223BE20](v91, v89);
  v495 = &v451 - v93;
  MEMORY[0x28223BE20](v94, v92);
  v96 = &v451 - v95;
  swift_beginAccess();
  v97 = *(a1 + 48);
  v98 = *(v97 + 16);
  v523 = v86;
  v507 = a1;
  v509 = v87;
  v513 = v98;
  v462 = RealityKitOptionBool;
  v528 = v7;
  if (!v98)
  {
    goto LABEL_145;
  }

  v477 = OBJC_IVAR____TtC9RealityIO14CompileSession_compilationOptions;
  v99 = (a1 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
  v100 = OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials;
  v101 = OBJC_IVAR____TtC9RealityIO14CompileSession_deploymentTargets;
  v102 = OBJC_IVAR____TtC9RealityIO14CompileSession_loadSubdsAsSubds;
  v512 = v97 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
  v515 = v97;

  v490 = v100;
  swift_beginAccess();
  v489 = v101;
  swift_beginAccess();
  v488 = v102;
  v103 = v528;
  swift_beginAccess();
  v491 = v99;
  swift_beginAccess();
  v105 = v515;
  v106 = 0;
  v520 = v87 + 16;
  v518 = (v87 + 8);
  v472 = "unknown reducedTextureSize %@";
  v468 = "relativeCalibration";
  v469 = (RealityKitOptionBool + 32);
  v482 = (RealityKitOptionBool + 56);
  v483 = (RealityKitOptionBool + 48);
  v511 = v96;
  while (1)
  {
    if (v106 >= *(v105 + 16))
    {
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
      goto LABEL_250;
    }

    v107 = *(v87 + 72);
    v524 = v106;
    v519 = *(v87 + 16);
    v519(v96, v512 + v107 * v106, v86);
    LODWORD(v108) = URL.isFileURL.getter();
    if ((v108 & 1) == 0)
    {
      goto LABEL_4;
    }

    v109 = 0;
    v110 = MEMORY[0x277D84F90];
LABEL_9:
    v111 = 6;
    if (v109 > 6)
    {
      v111 = v109;
    }

    v112 = v111 + 1;
    v113 = (&outlined read-only object #0 of one-time initialization function for supportedFilePathExtensions + 16 * v109 + 40);
    while (v109 != 6)
    {
      if (v112 == ++v109)
      {
        __break(1u);
        goto LABEL_167;
      }

      v114 = v113 + 2;
      v115 = *v113;
      v113 += 2;
      if (v115)
      {
        v116 = *(v114 - 3);

        LODWORD(v108) = swift_isUniquelyReferenced_nonNull_native();
        if ((v108 & 1) == 0)
        {
          v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v110 + 16) + 1, 1, v110);
          v110 = v108;
        }

        v118 = *(v110 + 16);
        v117 = *(v110 + 24);
        RealityKitOptionBool = v118 + 1;
        if (v118 >= v117 >> 1)
        {
          v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v110);
          v110 = v108;
        }

        *(v110 + 16) = RealityKitOptionBool;
        v119 = v110 + 16 * v118;
        *(v119 + 32) = v116;
        *(v119 + 40) = v115;
        v96 = v511;
        goto LABEL_9;
      }
    }

    URL.pathExtension.getter();
    v120 = String.lowercased()();

    v542 = v120;
    MEMORY[0x28223BE20](v121, v122);
    v449 = &v542;
    RealityKitOptionBool = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v451 - 4), v110);

    if ((RealityKitOptionBool & 1) == 0)
    {
      v86 = v523;
      v87 = v509;
LABEL_4:
      (*v518)(v96, v86);
      goto LABEL_5;
    }

    URL._bridgeToObjectiveC()(v123);
    RealityKitOptionBool = v124;
    v125 = RIOPxrUsdStageCreateWithFileURL();

    v86 = v523;
    v126 = v507;
    if (!v125)
    {
      (*v518)(v96, v523);
      v87 = v509;
      goto LABEL_5;
    }

    v127 = v477;
    swift_beginAccess();
    v128 = *(v126 + v127);
    if (*(v128 + 16) && (v129 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, v468 | 0x8000000000000000), (v130 & 1) != 0))
    {
      outlined init with copy of Any(*(v128 + 56) + 32 * v129, &v542);
    }

    else
    {
      v542 = 0u;
      v543 = 0u;
    }

    swift_endAccess();
    if (*(&v543 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v540 != 1)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      outlined destroy of Any?(&v542, &_sypSgMd, &_sypSgMR);
    }

    if ((CompileSession.CompilationOption_RequireIncludeMetadata_Default.getter() & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_33:
    v131 = RIOPxrTfTokenCreateWithCString();
    RealityKitOptionBool = RIOPxrUsdUtilsStageGetRealityKitOptionBool();

    if ((RealityKitOptionBool & 1) == 0)
    {
      (*v518)(v96, v86);

      v87 = v509;
      goto LABEL_5;
    }

LABEL_34:
    type metadata accessor for Stage();
    inited = swift_initStackObject();
    *(inited + 16) = v125;
    v132 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
    v133 = v132;
    v134 = RIOPxrUsdStageCopyRootLayer();
    v135 = RIOPxrSdfLayerCopyCustomLayerDataValue();

    if (v135)
    {
      LOBYTE(v542) = 0;
      Bool = RIOPxrVtValueGetBool();
      v137 = v542;
      if (!Bool)
      {
        v137 = 2;
      }

      LOBYTE(v540) = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
      if (swift_dynamicCast())
      {
        v138 = v542;
      }

      else
      {
        v138 = 0;
        LOBYTE(v542) = 2;
      }
    }

    else
    {

      v138 = 0;
    }

    v139 = RIOPxrUsdStageCopyDefaultPrim();
    IsValid = RIOPxrUsdObjectIsValid();

    if (IsValid)
    {
      v141 = RIOPxrUsdStageCopyDefaultPrim();
      RealityKitOptionBool = RIOPxrUsdPrimCopyVariantSets();

      type metadata accessor for VariantSets();
      v142 = swift_allocObject();
      *(v142 + 16) = RealityKitOptionBool;
      v143 = RIOPxrUsdVariantSetsCopySetNames();
      if (!v143)
      {
        goto LABEL_257;
      }

      RealityKitOptionBool = v143;
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      *&v542 = 0;
      static Array._forceBridgeFromObjectiveC(_:result:)();
      v144 = v542;
      if (!v542)
      {
        __break(1u);
LABEL_257:
        __break(1u);
        goto LABEL_258;
      }

      v145 = v142;
    }

    else
    {
      v145 = 0;
      v144 = MEMORY[0x277D84F90];
    }

    v532 = v145;
    v528 = v103;
    if (v138)
    {
      if (v144[1]._countAndFlagsBits)
      {
        break;
      }
    }

    v257 = v523;
LABEL_127:
    v258 = v495;
    v519(v495, v96, v257);
    v259 = type metadata accessor for Entity();
    v260 = _s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityTypeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0nD9ThreadingVxmtc0A3Kit6EntityCRbzlufCAR_Tt3g5(v258, 0, 0, v259);
    if (!v260)
    {

      v353 = URL.path.getter();
      v355 = v354;
      lazy protocol witness table accessor for type CompileSession.LoadError and conformance CompileSession.LoadError();
      v351 = swift_allocError();
      *v356 = v353;
      *(v356 + 8) = v355;
      *(v356 + 16) = 0;
      swift_willThrow();

      result = (*v518)(v96, v523);
      goto LABEL_246;
    }

    v261 = v260;
    RIOPxrUsdStageSetIncludeUnusedMaterials();

    v263 = v481;
    specialized Collection.first.getter(v262, v481);
    v264 = v263;

    v265 = *v483;
    v266 = v499;
    if ((*v483)(v264, 1, v499) == 1)
    {
      v267 = v473;
      CompileSession.DeploymentTarget_Default.getter(v473);
      v268 = v481;
      if (v265(v481, 1, v266) != 1)
      {
        outlined destroy of Any?(v268, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
      }
    }

    else
    {
      v267 = v473;
      (*v469)(v473, v264, v266);
    }

    (*v482)(v267, 0, 1, v266);
    v269 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
    swift_beginAccess();
    outlined assign with take of (URL, __REAsset)(v267, v261 + v269, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    swift_endAccess();
    v270 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    countAndFlagsBits = v270;
    RIOImportSessionSetLoadSubdsAsSubds();
    v271 = *v491;
    v272 = v491[1];

    v273 = URL.path.getter();
    v275 = v274;
    *&v542 = v273;
    *(&v542 + 1) = v274;
    v540 = v271;
    v541 = v272;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    if (BidirectionalCollection<>.starts<A>(with:)())
    {
      *&v542 = v273;
      *(&v542 + 1) = v275;
      v540 = v271;
      v541 = v272;
      v276 = type metadata accessor for Locale();
      v277 = v474;
      (*(*(v276 - 8) + 56))(v474, 1, 1, v276);
      v449 = lazy protocol witness table accessor for type String and conformance String();
      v450 = v449;
      StringProtocol.range<A>(of:options:range:locale:)();
      v279 = v278;
      v281 = v280;
      outlined destroy of Any?(v277, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      if (v281)
      {
        v282 = 15;
      }

      else
      {
        v282 = v279;
      }

      v283 = specialized Collection.subscript.getter(v282, v273, v275);
      v285 = v284;
      v287 = v286;
      v289 = v288;

      v273 = MEMORY[0x26670F020](v283, v285, v287, v289);
      v275 = v290;
    }

    v291 = v492;
    v292 = v484;
    v293 = v523;
    v294 = v519;
    v519(v484 + *(v492 + 28), v498, v523);
    v294(v292 + *(v291 + 32), v511, v293);
    *v292 = v261;
    v292[1] = v273;
    v292[2] = v275;
    v292[3] = MEMORY[0x277D84F90];
    v295 = v504;
    v296 = *v504;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v295 = v296;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v296 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v296[2] + 1, 1, v296);
      *v504 = v296;
    }

    v298 = v528;
    v300 = v296[2];
    v299 = v296[3];
    if (v300 >= v299 >> 1)
    {
      v296 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v299 > 1), v300 + 1, 1, v296);
      *v504 = v296;
    }

    v296[2] = v300 + 1;
    outlined init with take of CompileSession.ImportSessionData(v484, v296 + ((*(v510 + 80) + 32) & ~*(v510 + 80)) + *(v510 + 72) * v300, type metadata accessor for CompileSession.ImportSessionData);
    RIOImportSessionUpdateSynchronouslyOnEngineQueue();
    v96 = v511;
    v301 = CompileSession.postOperationsAndExtraAssets(for:with:)(v261, v511);
    RealityKitOptionBool = v501;
    v302 = swift_isUniquelyReferenced_nonNull_native();
    *&v542 = *RealityKitOptionBool;
    *RealityKitOptionBool = 0x8000000000000000;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v301, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v302, &v542);
    v103 = v298;
    if (v298)
    {
      goto LABEL_261;
    }

    v303 = v523;
    (*v518)(v96, v523);
    v86 = v303;

    *RealityKitOptionBool = v542;

    v87 = v509;
LABEL_5:
    v105 = v515;
    v106 = v524 + 1;
    if (v524 + 1 == v513)
    {
      v528 = v103;

LABEL_145:
      v540 = MEMORY[0x277D84F90];
      type metadata accessor for __AssetLoadRequest();
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      countAndFlagsBits = __AssetLoadRequest.__allocating_init(serviceLocator:)();
      v304 = *v504;
      v305 = (v470 + 56);
      v306 = (v470 + 48);

      v307 = 0;
      v308 = 0;
      v309 = &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtSgMd;
      while (1)
      {
        v310 = *(v304 + 16);
        RealityKitOptionBool = v525;
        if (v308 == v310)
        {
          v311 = 1;
          v312 = v517;
        }

        else
        {
          v312 = v517;
          if (v308 >= v310)
          {
            goto LABEL_248;
          }

          v538 = v308 + 1;
          v313 = v304 + ((*(v510 + 80) + 32) & ~*(v510 + 80)) + *(v510 + 72) * v308;
          v314 = *(v517 + 48);
          v315 = v306;
          v316 = v305;
          v317 = v309;
          v318 = v304;
          v319 = v307;
          v320 = v508;
          *v508 = v308;
          outlined init with copy of CompileSession.ImportSessionData(v313, v320 + v314, type metadata accessor for CompileSession.ImportSessionData);
          v321 = v320;
          v307 = v319;
          v304 = v318;
          v309 = v317;
          v305 = v316;
          v306 = v315;
          outlined init with take of (URL, __REAsset)(v321, v525, &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtMd, &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtMR);
          v311 = 0;
          v308 = v538;
          RealityKitOptionBool = v525;
        }

        (*v305)(RealityKitOptionBool, v311, 1, v312);
        v322 = RealityKitOptionBool;
        v323 = v516;
        outlined init with take of (URL, __REAsset)(v322, v516, v309, &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtSgMR);
        if ((*v306)(v323, 1, v312) == 1)
        {
          break;
        }

        v324 = v323;
        v325 = *v323;
        v326 = v324 + *(v312 + 48);
        v327 = v514;
        outlined init with take of CompileSession.ImportSessionData(v326, v514, type metadata accessor for CompileSession.ImportSessionData);
        v328 = v528;
        v329 = specialized CompileSession.handleLoad(of:with:assetLoadRequest:metadata:)(v327, v325, countAndFlagsBits, &v540);
        v528 = v328;
        if (v328)
        {

          outlined destroy of CompileSession.ImportSessionData(v327, type metadata accessor for CompileSession.ImportSessionData);

          *v471 = v528;
          return result;
        }

        v330 = v329;
        outlined destroy of CompileSession.ImportSessionData(v327, type metadata accessor for CompileSession.ImportSessionData);
        v307 |= v330;
      }

      LODWORD(v538) = v307;

      v331 = RERealityFileWritingParametersCreate();
      swift_beginAccess();
      v332 = v461;
      __REAssetBundle.ExportOptions.deploymentTarget.getter();
      v333 = v462;
      v334 = v499;
      v335 = (*(v462 + 48))(v332, 1, v499);
      v524 = v331;
      if (v335 == 1)
      {
        outlined destroy of Any?(v332, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
        swift_endAccess();
        v125 = v528;
        v103 = v496;
        v110 = v464;
        RealityKitOptionBool = v465;
        goto LABEL_158;
      }

      v103 = v457;
      (*(v333 + 32))(v457, v332, v334);
      swift_endAccess();
      v337 = v454;
      __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
      v537 = __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter();
      v338 = v333;
      v536 = v339;
      (*(v455 + 8))(v337, v456);
      v340 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      v341 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() >> 32;
      __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      *&v342 = __PAIR64__(v341, v340);
      DWORD2(v342) = v343;
      v534 = v342;
      RealityKitOptionBool = String.utf8CString.getter();

      RERealityFileWriterGetVersionFromDeploymentTarget();

      v344 = v528;
      if (v331)
      {
        RERealityFileWritingParametersSetMajorVersion();
        (*(v338 + 8))(v103, v499);
        v103 = v496;
        v110 = v464;
        RealityKitOptionBool = v465;
        v125 = v344;
LABEL_158:
        swift_beginAccess();
        v96 = v460;
        __REAssetBundle.ExportOptions.reducedTextureFileSize.getter();
        if ((*(v110 + 48))(v96, 1, RealityKitOptionBool) == 1)
        {
          outlined destroy of Any?(v96, &_s10RealityKit6EntityC0A10FoundationE12WriteOptionsV15TextureFileSizeOSgMd, &_s10RealityKit6EntityC0A10FoundationE12WriteOptionsV15TextureFileSizeOSgMR);
          swift_endAccess();
          v96 = v125;
          if (!v524)
          {
            __break(1u);
            goto LABEL_161;
          }

LABEL_174:
          v361 = RERealityFileWriterCreateWithParameters();
          if (!v361)
          {
            v405 = type metadata accessor for __RealityFileError();
            lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90], MEMORY[0x277CDAB98]);
            v406 = swift_allocError();
            v408 = v407;
            *&v542 = 0;
            *(&v542 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(44);

            *&v542 = 0xD000000000000029;
            *(&v542 + 1) = 0x80000002619959C0;
            v409 = URL.absoluteString.getter();
            MEMORY[0x26670F080](v409);

            MEMORY[0x26670F080](46, 0xE100000000000000);
            v410 = *(&v542 + 1);
            *v408 = v542;
            v408[1] = v410;
            (*(*(v405 - 8) + 104))(v408, *MEMORY[0x277CDAB88], v405);
            swift_willThrow();
            RERelease();

            *v471 = v406;
            return result;
          }

          v362 = v361;
          RERealityFileWriterCertifyFreeOfChangeSceneActions();
          v544 = 0;
          URL.absoluteString.getter();
          String.utf8CString.getter();

          v520 = v362;
          v363 = RERealityFileWriterOpen();

          if (v363)
          {
            v519 = RERealityFileAssetWriteReportCreate();
            if (v519)
            {
              v364 = *v501;
              v365 = *v501 + 64;
              v366 = 1 << *(*v501 + 32);
              v367 = -1;
              if (v366 < 64)
              {
                v367 = ~(-1 << v366);
              }

              v368 = v367 & *(*v501 + 64);
              v522 = (v366 + 63) >> 6;
              v529 = (v509 + 32);
              v527 = (v453 + 8);
              v532 = (v509 + 8);
              v525 = v364;

              v369 = 0;
              v521 = xmmword_2619891C0;
              v530 = v365;
              while (1)
              {
                if (!v368)
                {
                  if (v522 <= v369 + 1)
                  {
                    v378 = v369 + 1;
                  }

                  else
                  {
                    v378 = v522;
                  }

                  v379 = v378 - 1;
                  while (1)
                  {
                    v377 = v369 + 1;
                    if (__OFADD__(v369, 1))
                    {
                      goto LABEL_240;
                    }

                    if (v377 >= v522)
                    {
                      v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
                      (*(*(v404 - 8) + 56))(v103, 1, 1, v404);
                      v381 = 0;
                      v369 = v379;
                      goto LABEL_193;
                    }

                    v368 = *(v365 + 8 * v377);
                    ++v369;
                    if (v368)
                    {
                      v528 = v96;
                      v369 = v377;
                      goto LABEL_192;
                    }
                  }
                }

                v528 = v96;
                v377 = v369;
LABEL_192:
                v380 = __clz(__rbit64(v368));
                v381 = (v368 - 1) & v368;
                v382 = v380 | (v377 << 6);
                v383 = *(v525 + 56);
                v384 = (*(v525 + 48) + 16 * v382);
                v386 = *v384;
                v385 = v384[1];
                v538 = v386;
                v537 = v385;
                v387 = v531;
                outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v383 + *(v535 + 72) * v382, v531, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
                v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
                v389 = *(v388 + 48);
                v390 = v387;
                v391 = v537;
                *v103 = v538;
                v103[1] = v391;
                outlined init with take of (URL, __REAsset)(v390, v103 + v389, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
                (*(*(v388 - 8) + 56))(v103, 0, 1, v388);

                v96 = v528;
LABEL_193:
                v392 = v493;
                outlined init with take of (URL, __REAsset)(v103, v493, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMR);
                v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
                if ((*(*(v393 - 8) + 48))(v392, 1, v393) == 1)
                {
                  break;
                }

                v536 = v381;
                v528 = v96;
                v394 = *(v392 + 8);
                v533 = *v392;
                *&v534 = v394;
                v395 = v500;
                v538 = *(v392 + *(v393 + 48) + *(v500 + 48));
                v396 = *v529;
                v397 = v485;
                v398 = v523;
                (*v529)(v485);
                v399 = v531;
                v537 = *(v395 + 48);
                v400 = v506;
                v396(v506, v397, v398);
                *(v400 + v537) = v538;
                outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v400, v399, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
                v401 = v486;
                dispatch thunk of __REAsset.__handle.getter();

                __AssetRef.__as<A>(_:)();
                (*v527)(v401, v487);
                v537 = *v532;
                (v537)(v399, v398);
                v402 = REAssetWithMetadataCreate();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
                *(swift_allocObject() + 16) = v402;
                if (v402)
                {
                  String.utf8CString.getter();

                  REAssetWithMetadataSetLabel();

                  MEMORY[0x26670F130](v403);
                  if (*((v540 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v540 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  __AssetLoadRequest.add(asset:)();

                  v376 = v528;
                  v375 = v506;
                  v103 = v496;
                }

                else
                {

                  LODWORD(v538) = static os_log_type_t.error.getter();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                  v370 = swift_allocObject();
                  *(v370 + 16) = v521;
                  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v506, v399, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);

                  v371 = URL.absoluteString.getter();
                  v373 = v372;
                  *(v370 + 56) = MEMORY[0x277D837D0];
                  *(v370 + 64) = lazy protocol witness table accessor for type String and conformance String();
                  *(v370 + 32) = v371;
                  *(v370 + 40) = v373;
                  (v537)(v399, v398);
                  type metadata accessor for OS_os_log();
                  v374 = static OS_os_log.default.getter();
                  os_log(_:dso:log:_:_:)(v538, &dword_26187B000, v374, "CompileSession unable to create asset with metadata for %@", 58, 2, v370);

                  v375 = v506;
                  v376 = v528;
                  v103 = v496;
                }

                v368 = v536;
                outlined destroy of Any?(v375, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
                v365 = v530;
                v96 = v376;
              }

              __AssetLoadRequest.waitForCompletion()();
              v104 = v540;
              RealityKitOptionBool = v540 >> 62;
              if (v540 >> 62)
              {
                goto LABEL_253;
              }

              for (i = *((v540 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = v448)
              {
                v535 = RealityKitOptionBool;
                RealityKitOptionBool = v104;
                *&v542 = MEMORY[0x277D84F90];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
                if (i < 0)
                {
                  __break(1u);
LABEL_255:
                  __break(1u);
                }

                v415 = 0;
                v416 = v542;
                v104 = RealityKitOptionBool;
                v538 = RealityKitOptionBool & 0xC000000000000001;
                v536 = RealityKitOptionBool & 0xFFFFFFFFFFFFFF8;
                v537 = RealityKitOptionBool;
                while (1)
                {
                  v417 = v415 + 1;
                  if (__OFADD__(v415, 1))
                  {
                    break;
                  }

                  if (v538)
                  {
                    v418 = *(MEMORY[0x26670F670](v415, v104) + 16);
                    if (!v418)
                    {
                      goto LABEL_255;
                    }
                  }

                  else
                  {
                    if (v415 >= *(v536 + 16))
                    {
                      goto LABEL_252;
                    }

                    v418 = *( + 16);
                    if (!v418)
                    {
                      goto LABEL_255;
                    }
                  }

                  *&v542 = v416;
                  v420 = *(v416 + 16);
                  v419 = *(v416 + 24);
                  RealityKitOptionBool = v420 + 1;
                  if (v420 >= v419 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v419 > 1), v420 + 1, 1);
                    v416 = v542;
                  }

                  *(v416 + 16) = RealityKitOptionBool;
                  *(v416 + 8 * v420 + 32) = v418;
                  ++v415;
                  v104 = v537;
                  if (v417 == i)
                  {
                    RealityKitOptionBool = v535;
                    goto LABEL_221;
                  }
                }

LABEL_250:
                __break(1u);
LABEL_251:
                __break(1u);
LABEL_252:
                __break(1u);
LABEL_253:
                v447 = v104;
                v448 = __CocoaSet.count.getter();
                v104 = v447;
              }

LABEL_221:
              if (RealityKitOptionBool)
              {
                __CocoaSet.count.getter();
              }

              v429 = RERealityFileWriterWriteAssetArrayAndDependencies();

              if ((v429 & 1) == 0)
              {
                v431 = RERealityFileAssetWriteReportGetError();
                if (v431)
                {
                  v432 = v431;
                  type metadata accessor for CFErrorRef(0);
                  lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
                  v351 = swift_allocError();
                  *v433 = v432;
                }

                else
                {
                  v440 = type metadata accessor for __RealityFileError();
                  lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90], MEMORY[0x277CDAB98]);
                  v351 = swift_allocError();
                  v442 = v441;
                  *&v542 = 0;
                  *(&v542 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(41);

                  *&v542 = 0xD000000000000026;
                  *(&v542 + 1) = 0x80000002619959F0;
                  v443 = URL.absoluteString.getter();
                  MEMORY[0x26670F080](v443);

                  MEMORY[0x26670F080](46, 0xE100000000000000);
                  v444 = *(&v542 + 1);
                  *v442 = v542;
                  v442[1] = v444;
                  (*(*(v440 - 8) + 104))(v442, *MEMORY[0x277CDAB88], v440);
                }

                goto LABEL_242;
              }

              if ((*v526)[1]._countAndFlagsBits)
              {

                isa = Array._bridgeToObjectiveC()().super.isa;

                RERealityFileWriterSetConfigurationSetNames();
              }

              if (RERealityFileWriterClose())
              {
                RERelease();
                if (v524)
                {
                  RERelease();
                }

                RERelease();
              }

LABEL_233:
              v434 = v544;
              if (v544)
              {
                type metadata accessor for CFErrorRef(0);
                lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
                v435 = v434;
                v351 = swift_allocError();
                *v436 = v435;
              }

              else
              {
LABEL_241:
                v445 = type metadata accessor for __RealityFileError();
                lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90], MEMORY[0x277CDAB98]);
                v351 = swift_allocError();
                *v446 = 0xD000000000000018;
                v446[1] = 0x8000000261995A50;
                (*(*(v445 - 8) + 104))(v446, *MEMORY[0x277CDAB88], v445);
              }

LABEL_242:
              swift_willThrow();
              RERelease();
              if (v524)
              {
                RERelease();
              }

              RERelease();
LABEL_245:

LABEL_246:
              *v471 = v351;
              return result;
            }

            v421 = type metadata accessor for __RealityFileError();
            lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90], MEMORY[0x277CDAB98]);
            v351 = swift_allocError();
            v423 = v422;
            *&v542 = 0;
            *(&v542 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(48);

            v424 = 0x8000000261995A20;
            v425 = 0xD00000000000002DLL;
LABEL_219:
            *&v542 = v425;
            *(&v542 + 1) = v424;
            v427 = URL.absoluteString.getter();
            MEMORY[0x26670F080](v427);

            MEMORY[0x26670F080](46, 0xE100000000000000);
            v428 = *(&v542 + 1);
            *v423 = v542;
            v423[1] = v428;
            (*(*(v421 - 8) + 104))(v423, *MEMORY[0x277CDAB88], v421);
          }

          else
          {
            v411 = v544;
            if (!v544)
            {
              v421 = type metadata accessor for __RealityFileError();
              lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90], MEMORY[0x277CDAB98]);
              v351 = swift_allocError();
              v423 = v426;
              *&v542 = 0;
              *(&v542 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(41);

              v424 = 0x80000002619959F0;
              v425 = 0xD000000000000026;
              goto LABEL_219;
            }

            type metadata accessor for CFErrorRef(0);
            lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
            v412 = v411;
            v351 = swift_allocError();
            *v413 = v412;
          }

          swift_willThrow();
          RERelease();
          RERelease();

          goto LABEL_245;
        }

LABEL_161:
        v345 = v463;
        (*(v110 + 32))(v463, v96, RealityKitOptionBool);
        swift_endAccess();
        v346 = v458;
        (*(v110 + 16))(v458, v345, RealityKitOptionBool);
        LODWORD(v108) = (*(v110 + 88))(v346, RealityKitOptionBool);
        if (v108 == *MEMORY[0x277CDB100])
        {
          v96 = v125;
        }

        else
        {
LABEL_164:
          v96 = v125;
          if (v108 != *MEMORY[0x277CDB0F0])
          {
LABEL_167:
            if (v108 != *MEMORY[0x277CDB0F8])
            {
              v357 = static os_log_type_t.error.getter();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v358 = swift_allocObject();
              *(v358 + 16) = xmmword_2619891C0;
              *&v542 = 0;
              *(&v542 + 1) = 0xE000000000000000;
              _print_unlocked<A, B>(_:_:)();
              v359 = v542;
              *(v358 + 56) = MEMORY[0x277D837D0];
              *(v358 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v358 + 32) = v359;
              type metadata accessor for OS_os_log();
              v360 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)(v357, &dword_26187B000, v360, "CompileSession: unknown reducedTextureSize %@", 45, 2, v358);
              v110 = v464;
              RealityKitOptionBool = v465;

              (*(v110 + 8))(v458, RealityKitOptionBool);
            }
          }
        }

        if (v524)
        {
          RERealityFileWritingParametersSetReducedTextureSize();
          (*(v110 + 8))(v463, RealityKitOptionBool);
          goto LABEL_174;
        }

LABEL_259:
        __break(1u);
LABEL_260:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_261:

        *RealityKitOptionBool = v542;

        __break(1u);
        return result;
      }

LABEL_258:
      __break(1u);
      goto LABEL_259;
    }
  }

  v146 = v523;
  if ((*v526)[1]._countAndFlagsBits)
  {
    goto LABEL_237;
  }

  specialized static CompileSession.computeVariantInstances(from:)(v145);
  RealityKitOptionBool = v147;
  v466 = *(v147 + 16);
  if (!v466)
  {

    v257 = v146;
    goto LABEL_127;
  }

  *v526 = v144;

  v467 = RealityKitOptionBool + 32;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v148 = 0;
  v452 = v125;
  v459 = RealityKitOptionBool;
  while (1)
  {
    if (v148 >= *(RealityKitOptionBool + 16))
    {
      goto LABEL_249;
    }

    v503 = v148;
    RealityKitOptionBool = *(v467 + 8 * v148);
    v149 = *(RealityKitOptionBool + 16);

    v530 = RealityKitOptionBool;
    countAndFlagsBits = v149;
    v96 = 0;
    if (v149)
    {
      break;
    }

    v146 = 0xE000000000000000;
LABEL_71:
    v156 = v532;
    countAndFlagsBits = (*v526)[1]._countAndFlagsBits;
    if (countAndFlagsBits)
    {
      if (countAndFlagsBits > *(RealityKitOptionBool + 16))
      {
        goto LABEL_251;
      }

      v157 = 0;
      v158 = 0;
      while (v158 < (*v526)[1]._countAndFlagsBits)
      {
        if (v156)
        {
          String.utf8CString.getter();

          v159 = RIOPxrUsdVariantSetsCopyVariantSet();

          type metadata accessor for VariantSet();
          v125 = swift_initStackObject();
          *(v125 + 16) = v159;
          String.utf8CString.getter();

          RIOPxrUsdVariantSetSetVariantSelection();

          swift_setDeallocating();

          v156 = v532;
        }

        ++v158;
        v157 += 16;
        if (countAndFlagsBits == v158)
        {
          goto LABEL_78;
        }
      }

      goto LABEL_236;
    }

LABEL_78:
    v502 = Stage.createImportSession(engine:pipelineVersion:)(0, 0);
    if (!v502)
    {

      v347 = v511;
      v348 = URL.path.getter();
      v350 = v349;
      lazy protocol witness table accessor for type CompileSession.LoadError and conformance CompileSession.LoadError();
      v351 = swift_allocError();
      *v352 = v348;
      *(v352 + 8) = v350;
      *(v352 + 16) = 0;
      swift_willThrow();

      result = (*v518)(v347, v523);
      goto LABEL_246;
    }

    v160 = v495;
    URL.deletingPathExtension()();
    v161 = URL.lastPathComponent.getter();
    v163 = v162;
    v164 = *v518;
    (*v518)(v160, v523);
    *&v542 = v161;
    *(&v542 + 1) = v163;

    MEMORY[0x26670F080](95, 0xE100000000000000);

    MEMORY[0x26670F080](v96, v146);

    MEMORY[0x26670F080](46, 0xE100000000000000);

    v165 = *(&v542 + 1);
    v166 = v542;
    v167 = URL.pathExtension.getter();
    v169 = v168;
    v542 = __PAIR128__(v165, v166);

    MEMORY[0x26670F080](v167, v169);

    URL.deletingLastPathComponent()();
    URL.appendingPathComponent(_:)();

    v480 = v164;
    v164(v160, v523);
    v171 = *v491;
    v170 = v491[1];

    v172 = URL.path.getter();
    v174 = v173;
    *&v542 = v172;
    *(&v542 + 1) = v173;
    v540 = v171;
    v541 = v170;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    if (BidirectionalCollection<>.starts<A>(with:)())
    {
      *&v542 = v172;
      *(&v542 + 1) = v174;
      v540 = v171;
      v541 = v170;
      v175 = type metadata accessor for Locale();
      v176 = v474;
      (*(*(v175 - 8) + 56))(v474, 1, 1, v175);
      v449 = lazy protocol witness table accessor for type String and conformance String();
      v450 = v449;
      StringProtocol.range<A>(of:options:range:locale:)();
      v178 = v177;
      v180 = v179;
      outlined destroy of Any?(v176, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      if (v180)
      {
        v181 = 15;
      }

      else
      {
        v181 = v178;
      }

      v182 = specialized Collection.subscript.getter(v181, v172, v174);
      v184 = v183;
      v186 = v185;
      v188 = v187;

      v478 = MEMORY[0x26670F020](v182, v184, v186, v188);
      v479 = v189;
    }

    else
    {
      v478 = v172;
      v479 = v174;
    }

    v103 = v533;
    v190 = v476;
    v191 = v501;
    RIOPxrUsdStageSetIncludeUnusedMaterials();

    specialized Collection.first.getter(v192, v190);

    v193 = *v483;
    v194 = v499;
    if ((*v483)(v190, 1, v499) == 1)
    {
      v195 = v475;
      CompileSession.DeploymentTarget_Default.getter(v475);
      if (v193(v190, 1, v194) != 1)
      {
        outlined destroy of Any?(v190, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
      }
    }

    else
    {
      v195 = v475;
      (*v469)(v475, v190, v194);
    }

    ++v503;
    (*v482)(v195, 0, 1, v194);
    v196 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
    v197 = v502;
    swift_beginAccess();
    outlined assign with take of (URL, __REAsset)(v195, v197 + v196, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    swift_endAccess();
    RealityKitOptionBool = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    RIOImportSessionUpdateSynchronouslyOnEngineQueue();
    RIOImportSessionSetLoadSubdsAsSubds();
    v198 = CompileSession.postOperationsAndExtraAssets(for:with:)(v197, v505);
    v199 = swift_isUniquelyReferenced_nonNull_native();
    countAndFlagsBits = *v191;
    *&v542 = countAndFlagsBits;
    *v191 = 0x8000000000000000;
    v200 = *(v198 + 8);
    v522 = (v198 + 64);
    v201 = 1 << v198[32];
    if (v201 < 64)
    {
      v202 = ~(-1 << v201);
    }

    else
    {
      v202 = -1;
    }

    v203 = v202 & v200;
    *&v521 = (v201 + 63) >> 6;
    v527 = v198;

    v204 = 0;
    while (1)
    {
      v110 = v534;
      LODWORD(v538) = v199;
      if (!v203)
      {
        if (v521 <= v204 + 1)
        {
          v207 = v204 + 1;
        }

        else
        {
          v207 = v521;
        }

        while (1)
        {
          v125 = v204 + 1;
          if (__OFADD__(v204, 1))
          {
            break;
          }

          if (v125 >= v521)
          {
            v537 = v207 - 1;
            v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
            (*(*(v241 - 8) + 56))(v103, 1, 1, v241);
            v203 = 0;
            goto LABEL_104;
          }

          v203 = *(v522 + 8 * v125);
          ++v204;
          if (v203)
          {
            goto LABEL_103;
          }
        }

        __break(1u);
        goto LABEL_164;
      }

      v125 = v204;
LABEL_103:
      v208 = __clz(__rbit64(v203));
      v203 &= v203 - 1;
      v209 = v208 | (v125 << 6);
      v210 = (*(v527 + 6) + 16 * v209);
      v212 = *v210;
      v211 = v210[1];
      v213 = v531;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(*(v527 + 7) + *(v535 + 72) * v209, v531, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
      v215 = *(v214 + 48);
      v216 = v533;
      *v533 = v212;
      v216[1] = v211;
      v103 = v216;
      outlined init with take of (URL, __REAsset)(v213, v216 + v215, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      (*(*(v214 - 8) + 56))(v103, 0, 1, v214);

      v537 = v125;
      v110 = v534;
LABEL_104:
      outlined init with take of (URL, __REAsset)(v103, v110, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMR);
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
      if ((*(*(v217 - 8) + 48))(v110, 1, v217) == 1)
      {
        v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
        v219 = v529;
        (*(*(v218 - 8) + 56))(v529, 1, 1, v218);
      }

      else
      {
        v220 = *(v217 + 48);
        v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
        v223 = *v110;
        v222 = *(v110 + 8);
        v224 = v110 + v220;
        v125 = v529;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v224, v529 + *(v221 + 48), &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
        *v125 = v223;
        *(v125 + 8) = v222;

        v225 = v110;
        v219 = v125;
        outlined destroy of Any?(v225, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
        (*(*(v221 - 8) + 56))(v125, 0, 1, v221);
      }

      v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
      if ((*(*(v226 - 8) + 48))(v219, 1, v226) == 1)
      {
        break;
      }

      v227 = *v219;
      v103 = v219[1];
      outlined init with take of (URL, __REAsset)(v219 + *(v226 + 48), v536, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v228 = countAndFlagsBits;
      v230 = specialized __RawDictionaryStorage.find<A>(_:)(v227, v103);
      v231 = *(v228 + 16);
      v232 = (v229 & 1) == 0;
      v233 = v231 + v232;
      if (__OFADD__(v231, v232))
      {
        __break(1u);
        goto LABEL_233;
      }

      RealityKitOptionBool = v229;
      if (*(v228 + 24) >= v233)
      {
        if (v538)
        {
          if (v229)
          {
            goto LABEL_93;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (RealityKitOptionBool)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v233, v538 & 1);
        v234 = specialized __RawDictionaryStorage.find<A>(_:)(v227, v103);
        if ((RealityKitOptionBool & 1) != (v235 & 1))
        {
          goto LABEL_260;
        }

        v230 = v234;
        if (RealityKitOptionBool)
        {
LABEL_93:

          v205 = v542;
          RealityKitOptionBool = *(v535 + 72) * v230;
          v206 = v531;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(*(v542 + 56) + RealityKitOptionBool, v531, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
          outlined destroy of Any?(v536, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
          countAndFlagsBits = v205;
          LODWORD(v108) = outlined assign with take of (URL, __REAsset)(v206, *(v205 + 56) + RealityKitOptionBool, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
          goto LABEL_94;
        }
      }

      v236 = v542;
      *(v542 + 8 * (v230 >> 6) + 64) |= 1 << v230;
      v237 = (v236[6] + 16 * v230);
      *v237 = v227;
      v237[1] = v103;
      LODWORD(v108) = outlined init with take of (URL, __REAsset)(v536, v236[7] + *(v535 + 72) * v230, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v238 = v236[2];
      v239 = __OFADD__(v238, 1);
      v240 = v238 + 1;
      if (v239)
      {
        __break(1u);
LABEL_240:
        __break(1u);
        goto LABEL_241;
      }

      countAndFlagsBits = v236;
      v236[2] = v240;
LABEL_94:
      v199 = 1;
      v204 = v537;
      v103 = v533;
    }

    *v501 = countAndFlagsBits;

    v242 = v492;
    v243 = v494;
    v244 = v523;
    v245 = v519;
    v519(v494 + *(v492 + 28), v498, v523);
    v245(v243 + *(v242 + 32), v505, v244);
    v246 = v478;
    v247 = v479;
    *v243 = v502;
    v243[1] = v246;
    v248 = v530;
    v243[2] = v247;
    v243[3] = v248;
    v249 = v504;
    v250 = *v504;
    v251 = swift_isUniquelyReferenced_nonNull_native();
    *v249 = v250;
    if ((v251 & 1) == 0)
    {
      v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v250[2] + 1, 1, v250);
      *v504 = v250;
    }

    v103 = v528;
    v87 = v509;
    v96 = v511;
    v253 = v250[2];
    v252 = v250[3];
    if (v253 >= v252 >> 1)
    {
      v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v252 > 1), v253 + 1, 1, v250);
      *v504 = v256;
    }

    v254 = v480;
    v480(v505, v523);
    v255 = *v504;
    *(v255 + 16) = v253 + 1;
    outlined init with take of CompileSession.ImportSessionData(v494, v255 + ((*(v510 + 80) + 32) & ~*(v510 + 80)) + *(v510 + 72) * v253, type metadata accessor for CompileSession.ImportSessionData);
    v148 = v503;
    RealityKitOptionBool = v459;
    if (v503 == v466)
    {

      v86 = v523;
      v254(v96, v523);
      goto LABEL_5;
    }
  }

  v150 = 0;
  v151 = (RealityKitOptionBool + 40);
  v146 = 0xE000000000000000;
  while (v150 < *(RealityKitOptionBool + 16))
  {
    ++v150;
    v153 = *(v151 - 1);
    v152 = *v151;
    v154 = HIBYTE(v146) & 0xF;
    if ((v146 & 0x2000000000000000) == 0)
    {
      v154 = v96 & 0xFFFFFFFFFFFFLL;
    }

    if (v154)
    {
      v155 = 95;
    }

    else
    {
      v155 = 0;
    }

    if (v154)
    {
      v125 = 0xE100000000000000;
    }

    else
    {
      v125 = 0xE000000000000000;
    }

    *&v542 = v96;
    *(&v542 + 1) = v146;

    MEMORY[0x26670F080](v155, v125);

    MEMORY[0x26670F080](v153, v152);
    RealityKitOptionBool = v530;

    v146 = *(&v542 + 1);
    v96 = v542;
    v151 += 2;
    if (countAndFlagsBits == v150)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:

  v437 = type metadata accessor for __RealityFileError();
  lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90], MEMORY[0x277CDAB98]);
  v438 = swift_allocError();
  *v439 = 0xD000000000000053;
  v439[1] = 0x8000000261995B00;
  (*(*(v437 - 8) + 104))(v439, *MEMORY[0x277CDAB88], v437);
  swift_willThrow();

  result = (*v518)(v96, v146);
  *v471 = v438;
  return result;
}

char *_s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityTypeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0nD9ThreadingVxmtc0A3Kit6EntityCRbzlufCAR_Tt3g5(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v25 = a4;
  v24[3] = a3;
  v5 = type metadata accessor for __EngineRef();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1, v10, v13);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v6 + 8))(v9, v5);
  v17 = 0;
  if (specialized static USDImportService.canLoad(url:)(v15))
  {
    URL._bridgeToObjectiveC()(v16);
    v19 = v18;
    v20 = RIOImportSessionCreateWithURL();

    type metadata accessor for ImportSession(0);
    swift_allocObject();
    v17 = specialized ImportSession.init<A>(core:entityType:)(v20, v25, v21);
  }

  v22 = *(v11 + 8);
  v22(a1, v10);
  v22(v15, v10);
  return v17;
}

uint64_t CompileSession.deinit()
{

  v1 = OBJC_IVAR____TtC9RealityIO14CompileSession_exportOptions;
  v2 = type metadata accessor for __REAssetBundle.ExportOptions();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC9RealityIO14CompileSession____lazy_storage___DeploymentTarget_Default, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);

  return v0;
}

uint64_t CompileSession.__deallocating_deinit()
{
  CompileSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
  v7 = *a1;
  v6 = a1[1];
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a1 + v4, a2 + *(v5 + 48), &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

void specialized LazyMapSequence.Iterator.next()(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v43 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMR);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v12 - 8, v13);
  v49 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f32[0] = MEMORY[0x28223BE20](v16, v14);
  v19 = (&v42 - v18);
  v20 = *v1;
  v21 = v1[1];
  v23 = v1[2];
  v22 = v1[3];
  v24 = v1[4];
  v48 = v23;
  if (v24)
  {
    v46 = v4;
    v47 = a1;
    v25 = v3;
    v26 = v22;
LABEL_11:
    v44 = v20;
    v45 = (v24 - 1) & v24;
    v30 = __clz(__rbit64(v24)) | (v26 << 6);
    v31 = (*(v20 + 48) + 16 * v30);
    v32 = *v31;
    v33 = v31[1];
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(*(v20 + 56) + *(v8 + 72) * v30, v11, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
    v34 = *(v25 + 48);
    *v19 = v32;
    v19[1] = v33;
    v3 = v25;
    outlined init with take of (URL, __REAsset)(v11, v19 + v34, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
    v4 = v46;
    (*(v46 + 56))(v19, 0, 1, v3);

    v29 = v26;
    v36 = v44;
    v35 = v45;
    a1 = v47;
LABEL_12:
    *v1 = v36;
    v1[1] = v21;
    v37 = v49;
    v1[2] = v48;
    v1[3] = v29;
    v1[4] = v35;
    v38 = v1[5];
    outlined init with take of (URL, __REAsset)(v19, v37, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMR);
    v39 = 1;
    if ((*(v4 + 48))(v37, 1, v3) != 1)
    {
      v40 = v43;
      outlined init with take of (URL, __REAsset)(v37, v43, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
      v38(v40);
      outlined destroy of Any?(v40, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
      v39 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
    (*(*(v41 - 8) + 56))(a1, v39, 1, v41);
  }

  else
  {
    v27 = (v23 + 64) >> 6;
    if (v27 <= v22 + 1)
    {
      v28 = v22 + 1;
    }

    else
    {
      v28 = (v23 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        v36 = v20;
        (*(v4 + 56))(v19, 1, 1, v3, v17);
        v35 = 0;
        goto LABEL_12;
      }

      v24 = *(v21 + 8 * v26);
      ++v22;
      if (v24)
      {
        v46 = v4;
        v47 = a1;
        v25 = v3;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

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
      *v12 = v8;
      v12[1] = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit29__RKEntityActionSpecificationOG0C2IO6InputsCcTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4UUIDVtMd, &_sSS_10Foundation4UUIDVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v10, v6, &_sSS_10Foundation4UUIDVtMd, &_sSS_10Foundation4UUIDVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for UUID();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLV_10RealityKit9__REAssetCtTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMd, &_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;

    while (1)
    {
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v10, v6, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
      v12 = *v6;
      v11 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v8[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      result = outlined init with take of (URL, __REAsset)(v6 + v23, v17 + *(*(v18 - 8) + 72) * v15, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17RIOPxrSdfLayerRefa_9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMd, &_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMd, &_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
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
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMd, &_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy9RealityIO13ImportSessionC15EvaluationFaultOGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAC05ToolsG0O5TokenVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized static CompileSession.findRKAssets(sourcePath:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v5.n128_f32[0] = MEMORY[0x28223BE20](v2, v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8, v5);
  v11 = v24 - v10;
  v12 = *(v3 + 16);
  v3 += 16;
  v24[1] = a1;
  v12(v24 - v10, a1, v2, v9);
  v13 = (v3 - 8);
  v14 = (v3 + 16);
  while (1)
  {
    URL.lastPathComponent.getter();
    v16._countAndFlagsBits = 0x7374657373616B72;
    v16._object = 0xE800000000000000;
    v17 = String.hasSuffix(_:)(v16);

    v18 = URL.path.getter();
    if (v17)
    {
      break;
    }

    v24[4] = v18;
    v24[5] = v19;
    v24[2] = 0x7374657373616B72;
    v24[3] = 0xE800000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v20 = StringProtocol.contains<A>(_:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_8;
    }

    URL.deletingLastPathComponent()();
    (*v13)(v11, v2);
    (*v14)(v11, v7, v2);
    if (!URL.lastPathComponent.getter() && v21 == 0xE000000000000000)
    {

LABEL_8:
      v22 = URL.path.getter();
      goto LABEL_10;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_8;
    }
  }

  v22 = v18;
LABEL_10:
  (*v13)(v11, v2);
  return v22;
}

void type metadata completion function for CompileSession(uint64_t a1)
{
  type metadata accessor for __REAssetBundle.ExportOptions();
  if (v2 <= 0x3F)
  {
    type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget?(319, v1);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget?(uint64_t a1, float a2)
{
  if (!lazy cache variable for type metadata for __REAssetBundle.ExportOptions.DeploymentTarget?)
  {
    type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for __REAssetBundle.ExportOptions.DeploymentTarget?);
    }
  }
}

void *specialized static CompileSession.cartesianProduct(of:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return a1;
  }

  v3 = a1 + 32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v4 = Sequence.flatMap<A>(_:)();

  if (v2 == 1)
  {
    return v4;
  }

  v7 = 1;
  v22 = v2;
  v23 = v3;
  while (1)
  {
    v8 = *(v3 + 8 * v7);
    v28 = *(v8 + 16);
    if (v28)
    {
      break;
    }

    v5 = v4;
LABEL_8:
    if (++v7 == v2)
    {
      return v5;
    }
  }

  v24 = v7;
  v9 = *(v4 + 16);
  v25 = (v4 + 32);
  v26 = v8 + 32;

  v10 = 0;
  v5 = MEMORY[0x277D84F90];
  v27 = v8;
  while (v10 < *(v8 + 16))
  {
    if (v9)
    {
      v11 = (v26 + 16 * v10);
      v12 = *v11;
      v13 = v11[1];

      v14 = v25;
      v15 = v9;
      do
      {
        v16 = *v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        }

        *(v16 + 2) = v18 + 1;
        v19 = &v16[16 * v18];
        *(v19 + 4) = v12;
        *(v19 + 5) = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        }

        v21 = v5[2];
        v20 = v5[3];
        if (v21 >= v20 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v5);
        }

        v5[2] = v21 + 1;
        v5[v21 + 4] = v16;
        ++v14;
        --v15;
      }

      while (v15);

      v8 = v27;
    }

    if (++v10 == v28)
    {

      v4 = v5;
      v2 = v22;
      v3 = v23;
      v7 = v24;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void specialized static CompileSession.computeVariantInstances(from:)(uint64_t a1)
{
  if (a1)
  {
    if (RIOPxrUsdVariantSetsCopySetNames())
    {
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      static Array._forceBridgeFromObjectiveC(_:result:)();
LABEL_13:
      __break(1u);
      return;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = *(MEMORY[0x277D84F90] + 16);
  if (v4)
  {
    v1 = 0;
    v2 = MEMORY[0x277D84F90] + 40;
    v3 = MEMORY[0x277D84F90];
    while (v1 < *(MEMORY[0x277D84F90] + 16))
    {
      ++v1;
      v2 += 16;
      if (v4 == v1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_12;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_10:

  specialized static CompileSession.cartesianProduct(of:)(v3);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v46[0] = *v18;
    v46[1] = v19;
    v46[2] = v20;

    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v42 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {
      v12 = *(v33[7] + 8 * v26);

      specialized Set.union<A>(_:)(v23, v12);
      v14 = v13;

      *(v33[7] + 8 * v26) = v14;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v15;
    v6 = v39;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      outlined consume of Set<PropertyDirtyState>.Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined assign with take of (URL, __REAsset)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized CompileSession.handleLoad(of:with:assetLoadRequest:metadata:)(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a2;
  v42 = a4;
  v46 = a3;
  v5 = type metadata accessor for __AssetRef();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v43 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.assetService.getter();

  __swift_project_boxed_opaque_existential_1(&v52, v54);
  v47 = dispatch thunk of __REAssetService.__handle.getter();
  __swift_destroy_boxed_opaque_existential_0(&v52);
  v14 = *(a1 + 1);
  v13 = *(a1 + 2);
  v15 = *(type metadata accessor for CompileSession.ImportSessionData(0) + 28);
  v50 = v9;
  v51 = v8;
  (*(v9 + 16))(v12, &a1[v15], v8);
  String.utf8CString.getter();
  v16 = RESceneCreate();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
  *(swift_initStackObject() + 16) = v16;
  if (!v16)
  {
    v19 = type metadata accessor for __RealityFileError();
    lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90], MEMORY[0x277CDAB98]);
    swift_allocError();
    v21 = v20;
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v52 = 0xD000000000000024;
    v53 = 0x8000000261995B80;
    MEMORY[0x26670F080](v14, v13);
LABEL_5:
    v22 = v53;
    *v21 = v52;
    v21[1] = v22;
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277CDAB88], v19);
    swift_willThrow();
    goto LABEL_6;
  }

  v41[0] = v14;
  v41[1] = v13;
  Entity.coreEntity.getter();
  RESceneAddEntity();
  type metadata accessor for Scene();
  static Scene.fromCore(_:)();
  v17 = v49;
  v18 = dispatch thunk of Scene.containsChangeSceneActions()();
  if (v17)
  {

LABEL_6:

LABEL_7:
    (*(v50 + 8))(v12, v51);
    return v23 & 1;
  }

  v25 = v18;

  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v52 = 0x523A79726F6D656DLL;
  v53 = 0xEB00000000746F6FLL;
  v55 = v48;
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26670F080](v26);

  MEMORY[0x26670F080](0x656E65637365722ELL, 0xE800000000000000);
  String.utf8CString.getter();

  v27 = REAssetManagerSceneAssetCreate();

  inited = swift_initStackObject();
  *(inited + 16) = v27;
  if (!v27)
  {
    v19 = type metadata accessor for __RealityFileError();
    lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90], MEMORY[0x277CDAB98]);
    swift_allocError();
    v21 = v34;
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    MEMORY[0x26670F080](0xD000000000000039, 0x8000000261995BB0);
    v35 = URL.absoluteString.getter();
    MEMORY[0x26670F080](v35);

    goto LABEL_5;
  }

  v49 = inited;
  LODWORD(v48) = v25;
  v54 = MEMORY[0x277D841D8];
  v52 = v27;
  v29 = v43;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v52);
  __AssetLoadRequest.add(asset:)();
  (*(v44 + 8))(v29, v45);
  v30 = REAssetWithMetadataCreate();
  *(swift_allocObject() + 16) = v30;
  if (!v30)
  {
    v36 = type metadata accessor for __RealityFileError();
    lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90], MEMORY[0x277CDAB98]);
    swift_allocError();
    v38 = v37;
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    MEMORY[0x26670F080](0xD000000000000041, 0x8000000261995BF0);
    v39 = URL.absoluteString.getter();
    MEMORY[0x26670F080](v39);

    v40 = v53;
    *v38 = v52;
    v38[1] = v40;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277CDAB88], v36);
    swift_willThrow();

    swift_setDeallocating();
    RERelease();
    goto LABEL_7;
  }

  String.utf8CString.getter();
  REAssetWithMetadataSetLabel();

  v32 = v42;
  MEMORY[0x26670F130](v31);
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (*(*(a1 + 3) + 16))
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    REAssetWithMetadataSetConfigurationNames();
  }

  else
  {
  }

  (*(v50 + 8))(v12, v51);
  v23 = v48;
  return v23 & 1;
}

uint64_t type metadata accessor for CompileSession(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CompileSession.LoadError and conformance CompileSession.LoadError()
{
  result = lazy protocol witness table cache variable for type CompileSession.LoadError and conformance CompileSession.LoadError;
  if (!lazy protocol witness table cache variable for type CompileSession.LoadError and conformance CompileSession.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileSession.LoadError and conformance CompileSession.LoadError);
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = &_s10Foundation3URLV_10RealityKit9__REAssetCtMd;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v49 = *(v11 - 8);
  v13.n128_f32[0] = MEMORY[0x28223BE20](v11 - 8, v12);
  v48 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v13);
  v57 = v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttSgMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = (v47 - v19);
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v50 = a1;
  v51 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v52 = v22;
  v53 = 0;
  v54 = v25 & v23;
  v55 = a2;
  v56 = a3;

  v47[1] = a3;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(v20);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
    if ((*(*(v28 - 8) + 48))(v20, 1, v28) == 1)
    {
      outlined consume of Set<PropertyDirtyState>.Iterator._Variant(v50);
    }

    v30 = *v20;
    v29 = v20[1];
    v31 = v10;
    outlined init with take of (URL, __REAsset)(v20 + *(v28 + 48), v57, v10, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
    v32 = *a5;
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (v32[3] >= v37)
    {
      if (a4)
      {
        v41 = *a5;
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v41 = *a5;
        if ((v38 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v26 = v48;
      v27 = *(v49 + 72) * v34;
      v10 = v31;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v41[7] + v27, v48, v31, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      outlined destroy of Any?(v57, v31, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);

      outlined assign with take of (URL, __REAsset)(v26, v41[7] + v27, v31, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      a4 = 1;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, a4 & 1);
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_21;
      }

      v34 = v39;
      v41 = *a5;
      if (v38)
      {
        goto LABEL_5;
      }

LABEL_14:
      v41[(v34 >> 6) + 8] |= 1 << v34;
      v42 = (v41[6] + 16 * v34);
      *v42 = v30;
      v42[1] = v29;
      v10 = v31;
      outlined init with take of (URL, __REAsset)(v57, v41[7] + *(v49 + 72) * v34, v31, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v43 = v41[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_20;
      }

      v41[2] = v45;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
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

uint64_t outlined init with take of (URL, __REAsset)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of CompileSession.ImportSessionData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of CompileSession.ImportSessionData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CompileSession.ImportSessionData(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CompileSession.LoadError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CompileSession.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void type metadata completion function for CompileSession.ImportSessionData(uint64_t a1)
{
  type metadata accessor for ImportSession(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String]();
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

uint64_t closure #1 in closure #1 in EntityAnchoringBuilder.stageSubscription.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  type metadata accessor for NamedPropertyDirtyState();
  v2 = swift_allocObject();
  v2[4] = v1;
  v3 = v1;
  v4 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v2[2] = v4;
  v2[3] = v6;

  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  v9 = swift_allocObject();
  v9[4] = v8;
  v10 = v8;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v4);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v9[2] = v4;
  v9[3] = v12;

  if (String.count.getter() < 1)
  {
    v13 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v13 = RIOPxrTfTokenCreateWithCString();
  }

  v14 = v13;
  v15 = swift_allocObject();
  v15[4] = v14;
  v16 = v14;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v4);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  v18 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v15[2] = v4;
  v15[3] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8D0;
  *(inited + 32) = v2;
  *(inited + 40) = v9;
  *(inited + 48) = v15;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v4;
}

uint64_t specialized EntityAnchoringBuilder.stageSubscription.getter()
{
  v0 = closure #1 in closure #1 in EntityAnchoringBuilder.stageSubscription.getter();
  type metadata accessor for PrimDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = PrimDirtyState.init(primMetadataContainsAnyOf:propertiesContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v4 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v1, v1, 0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26198A640;
  *(v5 + 32) = v4;

  specialized Sequence.forEach(_:)(v5);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2Vys5Int32VGG_SayAIGs5NeverOTg5072_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSays5e4VGs5D10VyAIGXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v5 = v18;
  v6 = (a1 + 32);
  do
  {
    *&v4 = *v6;
    v17 = v4;
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v2);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
    v11 = v9 + 1;
    if (v8 >> 1 <= v9)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      v8 = *(v7 + 3);
      v10 = v8 >> 1;
    }

    *(v7 + 2) = v11;
    v4 = v17;
    *&v7[4 * v9 + 32] = v17;
    v12 = v9 + 2;
    if (v10 < v12)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v12, 1, v7);
      v4 = v17;
    }

    *(v7 + 2) = v12;
    *&v7[4 * v11 + 32] = DWORD1(v4);
    v14 = *(v18 + 16);
    v13 = *(v18 + 24);
    if (v14 >= v13 >> 1)
    {
      v15 = v7;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v7 = v15;
    }

    *(v18 + 16) = v14 + 1;
    *(v18 + 8 * v14 + 32) = v7;
    ++v6;
    --v1;
  }

  while (v1);
  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3Vys5Int32VGG_SayAIGs5NeverOTg5072_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSays5e4VGs5D11VyAIGXEfU0_Tf1cn_nTm(__n128 *a1, uint64_t (*a2)(uint64_t, __n128))
{
  v2 = a1[1].n128_i64[0];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    v6 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v12;
    v7 = a1 + 2;
    do
    {
      v6 = a2(v6, *v7);
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v6 = v10;
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v6;
      ++v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2VySfGG_SaySfGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySfGs5d2VyS7GXEfU2_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v5 = v18;
  v6 = (a1 + 32);
  do
  {
    *&v4 = *v6;
    v17 = v4;
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v2);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
    v11 = v9 + 1;
    if (v8 >> 1 <= v9)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      v8 = *(v7 + 3);
      v10 = v8 >> 1;
    }

    *(v7 + 2) = v11;
    v4 = v17;
    *&v7[4 * v9 + 32] = v17;
    v12 = v9 + 2;
    if (v10 < v12)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v12, 1, v7);
      v4 = v17;
    }

    *(v7 + 2) = v12;
    *&v7[4 * v11 + 32] = DWORD1(v4);
    v14 = *(v18 + 16);
    v13 = *(v18 + 24);
    if (v14 >= v13 >> 1)
    {
      v15 = v7;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v7 = v15;
    }

    *(v18 + 16) = v14 + 1;
    *(v18 + 8 * v14 + 32) = v7;
    ++v6;
    --v1;
  }

  while (v1);
  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3VySfGG_SaySfGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySfGs5d2VyS7GXEfU3_Tf1cn_nTm(__n128 *a1, uint64_t (*a2)(uint64_t, __n128))
{
  v2 = a1[1].n128_i64[0];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    v6 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v12;
    v7 = a1 + 2;
    do
    {
      v6 = a2(v6, *v7);
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v6 = v10;
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v6;
      ++v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2VySdGG_SaySdGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySdGs5d2VyS7GXEfU5_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v4 = v18;
  v5 = (a1 + 32);
  do
  {
    v17 = *v5;
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v2);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
    v10 = v8 + 1;
    if (v7 >> 1 <= v8)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
      v7 = *(v6 + 3);
      v9 = v7 >> 1;
    }

    *(v6 + 2) = v10;
    v11 = *(&v17 + 1);
    *&v6[8 * v8 + 32] = v17;
    v12 = v8 + 2;
    if (v9 < v12)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v12, 1, v6);
      v11 = *(&v17 + 1);
    }

    *(v6 + 2) = v12;
    *&v6[8 * v10 + 32] = v11;
    v14 = *(v18 + 16);
    v13 = *(v18 + 24);
    if (v14 >= v13 >> 1)
    {
      v15 = v6;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v6 = v15;
    }

    *(v18 + 16) = v14 + 1;
    *(v18 + 8 * v14 + 32) = v6;
    ++v5;
    --v1;
  }

  while (v1);
  return v4;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3VySdGG_SaySdGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySdGs5d2VyS7GXEfU6_Tf1cn_nTm(__n128 *a1, uint64_t (*a2)(uint64_t, __n128, __n128))
{
  v2 = a1[1].n128_i64[0];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    v6 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v12;
    v7 = a1 + 2;
    do
    {
      v6 = a2(v6, *v7, v7[1]);
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v6 = v10;
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v6;
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9RealityIO16ToolsFoundationsO5TokenVG_SSs5NeverOTg503_s9d63IO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSSAA16fg2O5H7VXEfU8_Tf1cn_nTm(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v16;
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;
      v8 = a2();
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v3;
}

char *specialized SIMD.asScalarArray()(double a1)
{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = HIDWORD(a1);
  *&v1[4 * v3 + 32] = LODWORD(a1);
  v7 = v3 + 2;
  if (v4 < v7)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v7, 1, v1);
    v6 = HIDWORD(a1);
    v1 = v9;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6;
  return v1;
}

{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = HIDWORD(a1);
  *&v1[4 * v3 + 32] = LODWORD(a1);
  v7 = v3 + 2;
  if (v4 < v7)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v7, 1, v1);
    v6 = HIDWORD(a1);
    v1 = v9;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6;
  return v1;
}

char *specialized SIMD.asScalarArray()(__n128 a1)
{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = a1;
  *&v1[4 * v3 + 32] = a1.n128_u32[0];
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 2, 1, v1);
    v6 = a1;
    v1 = v10;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6.n128_u32[1];
  v8 = *(v1 + 3);
  if ((v3 + 3) > (v8 >> 1))
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v3 + 3, 1, v1);
    v6.n128_u32[2] = a1.n128_u32[2];
    v1 = v11;
  }

  *(v1 + 2) = v3 + 3;
  *&v1[4 * v7 + 32] = v6.n128_u32[2];
  return v1;
}

{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = a1;
  *&v1[4 * v3 + 32] = a1.n128_u32[0];
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 2, 1, v1);
    v6 = a1;
    v1 = v12;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6.n128_u32[1];
  v8 = *(v1 + 3);
  v9 = v3 + 3;
  if ((v3 + 3) > (v8 >> 1))
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v3 + 3, 1, v1);
    v6.n128_u64[1] = a1.n128_u64[1];
    v1 = v13;
  }

  *(v1 + 2) = v9;
  *&v1[4 * v7 + 32] = v6.n128_u32[2];
  v10 = *(v1 + 3);
  if ((v3 + 4) > (v10 >> 1))
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v3 + 4, 1, v1);
    v6.n128_u32[3] = a1.n128_u32[3];
    v1 = v14;
  }

  *(v1 + 2) = v3 + 4;
  *&v1[4 * v9 + 32] = v6.n128_u32[3];
  return v1;
}

{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = a1;
  *&v1[4 * v3 + 32] = a1.n128_u32[0];
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 2, 1, v1);
    v6 = a1;
    v1 = v10;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6.n128_u32[1];
  v8 = *(v1 + 3);
  if ((v3 + 3) > (v8 >> 1))
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v3 + 3, 1, v1);
    v6.n128_u32[2] = a1.n128_u32[2];
    v1 = v11;
  }

  *(v1 + 2) = v3 + 3;
  *&v1[4 * v7 + 32] = v6.n128_u32[2];
  return v1;
}

{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = a1;
  *&v1[4 * v3 + 32] = a1.n128_u32[0];
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 2, 1, v1);
    v6 = a1;
    v1 = v12;
  }

  *(v1 + 2) = v7;
  *&v1[4 * v5 + 32] = v6.n128_u32[1];
  v8 = *(v1 + 3);
  v9 = v3 + 3;
  if ((v3 + 3) > (v8 >> 1))
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v3 + 3, 1, v1);
    v6.n128_u64[1] = a1.n128_u64[1];
    v1 = v13;
  }

  *(v1 + 2) = v9;
  *&v1[4 * v7 + 32] = v6.n128_u32[2];
  v10 = *(v1 + 3);
  if ((v3 + 4) > (v10 >> 1))
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v3 + 4, 1, v1);
    v6.n128_u32[3] = a1.n128_u32[3];
    v1 = v14;
  }

  *(v1 + 2) = v3 + 4;
  *&v1[4 * v9 + 32] = v6.n128_u32[3];
  return v1;
}

{
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = a1.n128_u64[1];
  *&v1[8 * v3 + 32] = a1.n128_u64[0];
  v7 = v3 + 2;
  if (v4 < v7)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v7, 1, v1);
    v6 = a1.n128_u64[1];
    v1 = v9;
  }

  *(v1 + 2) = v7;
  *&v1[8 * v5 + 32] = v6;
  return v1;
}

char *specialized SIMD.asScalarArray()(__n128 a1, double a2)
{
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v6;
  v7 = a1.n128_u64[1];
  *&v2[8 * v4 + 32] = a1.n128_u64[0];
  v8 = v4 + 2;
  if (v5 < (v4 + 2))
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 2, 1, v2);
    v7 = a1.n128_u64[1];
    v2 = v11;
  }

  *(v2 + 2) = v8;
  *&v2[8 * v6 + 32] = v7;
  v9 = *(v2 + 3);
  if ((v4 + 3) > (v9 >> 1))
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v4 + 3, 1, v2);
  }

  *(v2 + 2) = v4 + 3;
  *&v2[8 * v8 + 32] = a2;
  return v2;
}