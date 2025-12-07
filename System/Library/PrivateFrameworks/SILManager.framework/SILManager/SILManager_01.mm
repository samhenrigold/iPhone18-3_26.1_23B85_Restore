uint64_t silmanager_silmanager_softboundarystrength(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = tb_client_connection_message_construct();
  if (!v2)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v5 = 0;
    v3 = tb_connection_send_query();
    if ((v3 & 0xFFFFFFF7) != 0)
    {
      v2 = v3;
      tb_client_connection_message_destruct();
    }

    else
    {
      tb_client_connection_message_destruct();
      return 4;
    }
  }

  return v2;
}

uint64_t silmanager_silmanager_setloglevel(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = tb_client_connection_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u8();
    tb_message_complete();
    v6 = 0;
    v4 = tb_connection_send_query();
    if ((v4 & 0xFFFFFFF7) != 0)
    {
      v3 = v4;
      tb_client_connection_message_destruct();
    }

    else
    {
      tb_client_connection_message_destruct();
      return 4;
    }
  }

  return v3;
}

uint64_t silmanager_silmanager_updatecursorstate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = tb_client_connection_message_construct();
  if (!v8)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_s32();
    tb_message_raw_encode_f32();
    tb_message_raw_encode_s32();
    tb_message_raw_encode_u32();
    tb_message_raw_encode_u32();
    for (i = 0; i != 36; i += 4)
    {
      tb_message_raw_encode_f32();
    }

    tb_message_complete();
    v12 = 0;
    v10 = tb_connection_send_query();
    if ((v10 & 0xFFFFFFF7) != 0)
    {
      v8 = v10;
      tb_client_connection_message_destruct();
    }

    else
    {
      tb_client_connection_message_destruct();
      return 4;
    }
  }

  return v8;
}

uint64_t silmanager_silmanager_getcursorinfo(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = tb_client_connection_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_s32();
    tb_message_complete();
    v6 = 0;
    v4 = tb_connection_send_query();
    if ((v4 & 0xFFFFFFF7) != 0)
    {
      v3 = v4;
      tb_client_connection_message_destruct();
    }

    else
    {
      tb_client_connection_message_destruct();
      return 4;
    }
  }

  return v3;
}

uint64_t silmanager_silmanager__init(uint64_t *a1, uint64_t a2)
{
  tb_endpoint_set_interface_identifier();
  v3 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance SILValidator.DisabledHealthCheckOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance SILValidator.DisabledHealthCheckOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance SILValidator.DisabledHealthCheckOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance SILValidator.DisabledHealthCheckOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SILValidator.DisabledHealthCheckOptions@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

__n128 SILValidator.IndicatorStates.subscript.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for SILIndicatorDesc();
  if (static SILIndicatorDesc.isCameraIndicator(_:)(a1))
  {
    v7 = *(v2 + 64);
    if ((v7 & 0xFF00) != 0x200)
    {
      *(a2 + 24) = &type metadata for SILValidator.IndicatorState;
      v8 = swift_allocObject();
      *a2 = v8;
      v9 = *(v3 + 16);
      *(v8 + 16) = *v3;
      *(v8 + 32) = v9;
      result = *(v3 + 32);
      v10 = *(v3 + 48);
LABEL_7:
      *(v8 + 48) = result;
      *(v8 + 64) = v10;
      *(v8 + 80) = v7;
      return result;
    }

    goto LABEL_9;
  }

  if (static SILIndicatorDesc.isMicrophoneIndicator(_:)(a1))
  {
    v7 = *(v2 + 136);
    if ((v7 & 0xFF00) != 0x200)
    {
      *(a2 + 24) = &type metadata for SILValidator.IndicatorState;
      v8 = swift_allocObject();
      *a2 = v8;
      v11 = *(v3 + 88);
      *(v8 + 16) = *(v3 + 72);
      *(v8 + 32) = v11;
      result = *(v3 + 104);
      v10 = *(v3 + 120);
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v12 = *(v2 + 176);
  if (v12 == 2)
  {
LABEL_9:
    result.n128_u64[0] = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 24) = &type metadata for SILValidator.FaceIDState;
  v13 = swift_allocObject();
  *a2 = v13;
  result = *(v3 + 144);
  v14 = *(v3 + 160);
  *(v13 + 16) = result;
  *(v13 + 32) = v14;
  *(v13 + 48) = v12;
  return result;
}

SILManager::SILError_optional __swiftcall SILValidator.FBITriggeredType.toSILError()()
{
  if (v0 >= 3u)
  {
    return 9;
  }

  else
  {
    return (0x80A18u >> (8 * v0));
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SILValidator.FBITriggeredType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266730370](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SILValidator.FBITriggeredType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x266730370](v2);
  return Hasher._finalize()();
}

__n128 SILValidator.indicatorStates.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  *(a1 + 128) = *(v1 + 152);
  *(a1 + 144) = v3;
  *(a1 + 160) = *(v1 + 184);
  *(a1 + 176) = *(v1 + 200);
  v4 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v4;
  v5 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v5;
  v6 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v6;
  result = *(v1 + 56);
  v8 = *(v1 + 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

__n128 SILValidator.indicatorStates.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 144);
  *(v1 + 152) = *(a1 + 128);
  *(v1 + 168) = v3;
  *(v1 + 184) = *(a1 + 160);
  v4 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v4;
  v5 = *(a1 + 112);
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 136) = v5;
  v6 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 200) = *(a1 + 176);
  *(v1 + 72) = v8;
  return result;
}

uint64_t SILValidator.trackedAnimations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 208) = a1;
}

uint64_t SILValidator.pendingStatePerRegion.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 216) = a1;
}

uint64_t SILValidator.statePerRegion.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 224) = a1;
}

uint64_t SILValidator.__allocating_init(displaySize:animationHistoryEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = swift_allocObject();
  SILValidator.init(displaySize:animationHistoryEnabled:)(v5, v4, v3);
  return v6;
}

uint64_t SILValidator.init(displaySize:animationHistoryEnabled:)(int a1, int a2, char a3)
{
  *(v3 + 208) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 88) = 512;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 512;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 2;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v7 = MAX_REGIONS_COUNT.unsafeMutableAddressor();
  *(v3 + 224) = _sSa9repeating5countSayxGx_SitcfC10SILManager12SILValidatorC11RegionStateVSg_Tt1g5Tf4gn_n(v20, *v7);
  v8 = *v7;
  v14[0] = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v9 = _sSa9repeating5countSayxGx_SitcfCSb_10SILManager12SILValidatorC11RegionStateVSgt_Tt1g5Tf4gn_n(v14, v8);
  v10 = specialized _arrayForceCast<A, B>(_:)(v9);

  v11 = 0;
  *(v3 + 216) = v10;
  *(v3 + 16) = a1;
  *(v3 + 20) = a2;
  if (a3)
  {
    type metadata accessor for SILDebugAnimationTracker();
    v11 = swift_allocObject();
    v11[2] = 32;
    v12 = *_emptyDequeStorage.unsafeMutableAddressor();
    v11[3] = v12;
    v11[4] = v12;
    swift_retain_n();
  }

  swift_beginAccess();
  *(v3 + 208) = v11;

  return v3;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v27;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v6 = v4[3];
      v19 = v4[2];
      v20 = v6;
      v7 = v4[3];
      v8 = v4[4];
      v9 = v4[1];
      v18[0] = *v4;
      v18[1] = v9;
      v24 = v19;
      v25 = v7;
      v26 = v4[4];
      v23 = v5;
      v21 = v8;
      v22 = v18[0];
      outlined init with copy of SILBackend?(v18, v17, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMR);
      swift_dynamicCast();
      v25 = v17[3];
      v26 = v17[4];
      v23 = v17[1];
      v24 = v17[2];
      v22 = v17[0];
      v27 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v2 = v27;
      }

      *(v2 + 16) = v11 + 1;
      v12 = (v2 + 80 * v11);
      v12[2] = v22;
      v13 = v23;
      v14 = v24;
      v15 = v26;
      v12[5] = v25;
      v12[6] = v15;
      v12[3] = v13;
      v12[4] = v14;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of SILFileHandle(v4, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pMd, &_s10SILManager13IOSurfaceLike_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pSgMd, &_s10SILManager13IOSurfaceLike_pSgMR);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 64) = v14;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *SILDebugAnimationTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = 32;
  v1 = *_emptyDequeStorage.unsafeMutableAddressor();
  v0[3] = v1;
  v0[4] = v1;
  swift_retain_n();
  return v0;
}

Swift::Int SILValidator.turnOffRegions(renderer:regionMask:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v14[0]) = a2;
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  BitmaskIterator.init(_:)(v14, MEMORY[0x277D84CC0], v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager15BitmaskIteratorVys6UInt32VGMd, &_s10SILManager15BitmaskIteratorVys6UInt32VGMR);
  v18 = BitmaskIterator.next()();
  if (v18.is_nil)
  {
    return v18.value;
  }

  value = v18.value;
  while (1)
  {
    v5 = (*(*v3 + 184))(v16);
    v7 = v6;
    v8 = *v6;
    v18.value = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v8;
    if ((v18.value & 1) == 0)
    {
      break;
    }

    if ((value & 0x8000000000000000) != 0)
    {
      goto LABEL_9;
    }

LABEL_5:
    if (value >= v8[2])
    {
      goto LABEL_10;
    }

    v9 = &v8[10 * value];
    *(v9 + 32) = 1;
    v14[0] = *(v9 + 5);
    v10 = *(v9 + 7);
    v11 = *(v9 + 9);
    v12 = *(v9 + 11);
    v15 = v9[13];
    v14[2] = v11;
    v14[3] = v12;
    v14[1] = v10;
    *(v9 + 7) = 0u;
    *(v9 + 9) = 0u;
    *(v9 + 11) = 0u;
    v9[13] = 0;
    *(v9 + 5) = 0u;
    outlined destroy of SILValidator.RegionState?(v14, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    v5(v16, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager15BitmaskIteratorVys6UInt32VGMd, &_s10SILManager15BitmaskIteratorVys6UInt32VGMR);
    v18 = BitmaskIterator.next()();
    value = v18.value;
    if (v18.is_nil)
    {
      return v18.value;
    }
  }

  v18.value = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  v8 = v18.value;
  *v7 = v18.value;
  if ((value & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return v18.value;
}

uint64_t SILValidator.swapEnd(renderer:swapID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = outlined init with copy of SILBackend?(a1 + 24, v76, &_s10SILManager10SILBackend_pSgMd, &_s10SILManager10SILBackend_pSgMR);
  if (v76[3])
  {
    v25 = *(*v2 + 248);
    v25(&v51, v76, a2);
    v7 = v51;
    v72 = v60;
    v73 = v61;
    v74 = v62;
    v75 = v63;
    v68 = v56;
    v69 = v57;
    v70 = v58;
    v71 = v59;
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    v77[8] = v72;
    v77[9] = v73;
    v77[10] = v74;
    v78 = v75;
    v77[4] = v68;
    v77[5] = v69;
    v77[6] = v70;
    v77[7] = v71;
    v77[0] = v64;
    v77[1] = v65;
    v77[2] = v66;
    v77[3] = v67;
    v24 = *(*v3 + 200);
    v8 = v24(v7);
    v9 = (*(*v3 + 144))(v8);
    if (v9)
    {
      v10 = v9;
      v11 = (*(*v3 + 192))();
      v12 = static UInt64.now()();
      (*(*v10 + 128))(v11, v77, a2, v12);
    }

    v13 = MAX_REGIONS_COUNT.unsafeMutableAddressor();
    v14 = *v13;
    v33[0] = 0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v15 = _sSa9repeating5countSayxGx_SitcfCSb_10SILManager12SILValidatorC11RegionStateVSgt_Tt1g5Tf4gn_n(v33, v14);
    v16 = specialized _arrayForceCast<A, B>(_:)(v15);

    v17 = *(*v3 + 176);
    v17(v16);
    v18 = (*(*v3 + 272))(v77, a1);
    if (!v18)
    {
      v47 = v72;
      v48 = v73;
      v49 = v74;
      v50 = v75;
      v43 = v68;
      v44 = v69;
      v45 = v70;
      v46 = v71;
      v39 = v64;
      v40 = v65;
      v41 = v66;
      v42 = v67;
      goto LABEL_8;
    }

    result = outlined init with copy of SILBackend?(a1 + 24, v32, &_s10SILManager10SILBackend_pSgMd, &_s10SILManager10SILBackend_pSgMR);
    if (v32[3])
    {
      v25(&v51, v32, a2);
      v19 = v51;
      v47 = v60;
      v48 = v61;
      v49 = v62;
      v50 = v63;
      v43 = v56;
      v44 = v57;
      v45 = v58;
      v46 = v59;
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v42 = v55;
      v20 = __swift_destroy_boxed_opaque_existential_1Tm(v32);
      (v24)(v19, v20);
      v21 = *v13;
      v26[0] = 0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0;
      v22 = _sSa9repeating5countSayxGx_SitcfCSb_10SILManager12SILValidatorC11RegionStateVSgt_Tt1g5Tf4gn_n(v26, v21);
      v23 = specialized _arrayForceCast<A, B>(_:)(v22);

      v17(v23);
LABEL_8:
      (*(*v3 + 128))(&v39);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t SILValidator.indicatorStateFromRegions(forRegionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static UInt64.now()();
  v59 = result;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v76 = 0;
    v77 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v56 = 0;
    v57 = 0;
    v81 = 0;
    v70 = 0;
    v61 = 0;
    v54 = a1 + 32;
    v69 = 512;
    v78 = 2;
    v6 = MEMORY[0x277D85000];
    v60 = 512;
    v7 = &_s10SILManager12SILValidatorC11RegionStateVSgMR;
    do
    {
      while (1)
      {
        v8 = (v54 + 72 * v5);
        v9 = v5;
        while (1)
        {
          if (v9 >= v4)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            return result;
          }

          v10 = v8[3];
          v85[2] = v8[2];
          v85[3] = v10;
          v86 = *(v8 + 8);
          v11 = v8[1];
          v85[0] = *v8;
          v85[1] = v11;
          v5 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_71;
          }

          v12 = v7;
          v13 = *v8;
          v111 = v8[1];
          v14 = v8[3];
          v112 = v8[2];
          v113 = v14;
          v114 = *(v8 + 8);
          v110 = v13;
          v115[0] = v13;
          v115[1] = v111;
          v116 = v112;
          v117 = v14;
          v118 = v114;
          v15 = v13;
          if (v13)
          {
            break;
          }

          v7 = v12;
          result = outlined init with copy of SILBackend?(v85, v83, &_s10SILManager12SILValidatorC11RegionStateVSgMd, v12);
          ++v9;
          v8 = (v8 + 72);
          if (v5 == v4)
          {
            goto LABEL_30;
          }
        }

        v16 = v8[3];
        v124[2] = v8[2];
        v124[3] = v16;
        v125 = *(v8 + 8);
        v17 = v8[1];
        v124[0] = *v8;
        v124[1] = v17;
        v53 = *((*v6 & **&v115[0]) + 0x168);
        v18 = v12;
        outlined init with copy of SILBackend?(v85, v83, &_s10SILManager12SILValidatorC11RegionStateVSgMd, v12);
        v19 = outlined init with copy of SILBackend?(&v110, v83, &_s10SILManager12SILValidatorC11RegionStateVSgMd, v18);
        LOBYTE(v53) = v53(v19);
        outlined destroy of SILValidator.RegionState?(&v110, &_s10SILManager12SILValidatorC11RegionStateVSgMd, v18);
        if (v53)
        {
          break;
        }

        v28 = *((*MEMORY[0x277D85000] & *v15) + 0x170);
        v83[2] = v112;
        v83[3] = v113;
        v84 = v114;
        v83[0] = v110;
        v83[1] = v111;
        v29 = outlined init with copy of SILValidator.RegionState(v83, v82);
        v30 = v28(v29);
        v31 = outlined destroy of SILValidator.RegionState?(&v110, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
        if (v30)
        {
          v126[0] = v65;
          v126[1] = v64;
          v126[2] = v63;
          v126[3] = v62;
          v126[4] = v61;
          v127 = v81;
          v128 = v66;
          v130 = BYTE6(v66);
          v129 = WORD2(v66);
          v131 = v68;
          v132 = v67;
          v133 = v60;
          (*(*v58 + 120))(v91, v31);
          updateIndicator #1 (_:_:_:_:) in SILValidator.indicatorStateFromRegions(forRegionState:)(v9, v124, v126, v91, v59, v92);
          v64 = v92[1];
          v65 = v92[0];
          v62 = v92[3];
          v63 = v92[2];
          v61 = v92[4];
          LODWORD(v81) = v93;
          v68 = v97;
          v66 = v94 | ((v95 | (v96 << 16)) << 32);
          v67 = v98;
          v60 = v99;
        }

        else
        {
          v134[0] = v71;
          v134[1] = v72;
          v134[2] = v73;
          v134[3] = v74;
          v134[4] = v70;
          v135 = BYTE4(v81);
          v136 = v75;
          v138 = BYTE6(v75);
          v137 = WORD2(v75);
          v139 = v76;
          v140 = v77;
          v141 = v69;
          (*(*v58 + 120))(v100, v31);
          updateIndicator #1 (_:_:_:_:) in SILValidator.indicatorStateFromRegions(forRegionState:)(v9, v124, v134, &v101, v59, v102);
          v71 = v102[0];
          v72 = v102[1];
          v73 = v102[2];
          v74 = v102[3];
          v70 = v102[4];
          HIDWORD(v81) = v103;
          v75 = v104 | ((v105 | (v106 << 16)) << 32);
          v76 = v107;
          v77 = v108;
          v69 = v109;
        }

        result = outlined destroy of SILValidator.RegionState?(&v110, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
        v7 = &_s10SILManager12SILValidatorC11RegionStateVSgMR;
        if (v5 == v4)
        {
          goto LABEL_30;
        }
      }

      v20 = v80;
      if (v78 == 2)
      {
        v20 = v9;
      }

      if (v9 < v20)
      {
        v20 = v9;
      }

      v80 = v20;
      v21 = *((*MEMORY[0x277D85000] & *v15) + 0xA8);
      v22 = outlined init with copy of SILValidator.RegionState(v115, v83);
      v57 = v21(v22);
      v23 = outlined destroy of SILValidator.RegionState?(&v110, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      if (v78 == 2)
      {
        v24 = v59;
      }

      else
      {
        v24 = v79;
      }

      v25 = *(*v58 + 120);
      v26 = v25(v87, v23);
      if (v88 == 2)
      {
        v27 = v59;
      }

      else
      {
        v27 = v87[21];
      }

      if (v27 >= v24)
      {
        v27 = v24;
      }

      v79 = v27;
      v25(v89, v26);
      v7 = &_s10SILManager12SILValidatorC11RegionStateVSgMR;
      result = outlined destroy of SILValidator.RegionState?(&v110, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v56 = v116;
      v78 = v90 & 1;
      v6 = MEMORY[0x277D85000];
    }

    while (v5 != v4);
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v80 = 0;
    v81 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    v70 = 0;
    v71 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v56 = 0;
    v57 = 0;
    v79 = 0;
    LOBYTE(v78) = 2;
    v60 = 512;
    v69 = 512;
  }

LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager12SILValidatorC14IndicatorStateVSgGMd, &_ss23_ContiguousArrayStorageCy10SILManager12SILValidatorC14IndicatorStateVSgGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_262A998B0;
  *(v32 + 32) = v65;
  *(v32 + 40) = v64;
  *(v32 + 48) = v63;
  *(v32 + 56) = v62;
  *(v32 + 64) = v61;
  *(v32 + 72) = v81;
  *(v32 + 79) = BYTE6(v66);
  *(v32 + 77) = WORD2(v66);
  *(v32 + 73) = v66;
  *(v32 + 80) = v68;
  *(v32 + 88) = v67;
  *(v32 + 96) = v60;
  *(v32 + 104) = v71;
  *(v32 + 112) = v72;
  *(v32 + 120) = v73;
  *(v32 + 128) = v74;
  *(v32 + 136) = v70;
  *(v32 + 144) = BYTE4(v81);
  *(v32 + 151) = BYTE6(v75);
  *(v32 + 149) = WORD2(v75);
  *(v32 + 145) = v75;
  *(v32 + 152) = v76;
  *(v32 + 160) = v77;
  *(v32 + 168) = v69;
  v33 = *(*v58 + 120);
  v34 = v33(&v110);
  v35 = v111;
  v36 = v113;
  *(v32 + 208) = v112;
  *(v32 + 224) = v36;
  *(v32 + 240) = v114;
  *(v32 + 176) = v110;
  *(v32 + 192) = v35;
  (v33)(v115, v34);
  v37 = v32;
  v38 = v121;
  *(v32 + 264) = v120;
  *(v32 + 280) = v38;
  *(v32 + 296) = v122;
  *(v32 + 312) = v123;
  *(v32 + 248) = v119;
  v39 = v60 & 0xFF00;
  if (v61 >= v59)
  {
    v40 = v59;
  }

  else
  {
    v40 = v61;
  }

  if (v81 != 1)
  {
    v40 = v59;
  }

  if (v39 == 512)
  {
    v40 = v59;
  }

  v41 = v69 & 0xFF00;
  if (v70 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v70;
  }

  if (HIDWORD(v81) != 1)
  {
    v42 = v40;
  }

  if (v41 == 512)
  {
    v43 = v40;
  }

  else
  {
    v43 = v42;
  }

  if (*(v37 + 241) << 8 != 512)
  {
    v44 = *(v37 + 208);
    if (v44 >= v43)
    {
      v44 = v43;
    }

    if (*(v37 + 216) == 1)
    {
      v43 = v44;
    }
  }

  v45 = *(v37 + 280);
  v46 = *(v37 + 288);
  v47 = *(v37 + 313) << 8;

  *a2 = v65;
  *(a2 + 8) = v64;
  *(a2 + 16) = v63;
  *(a2 + 24) = v62;
  *(a2 + 47) = BYTE6(v66);
  if (v45 >= v43)
  {
    v48 = v43;
  }

  else
  {
    v48 = v45;
  }

  if (v46 != 1 || v47 == 512)
  {
    v48 = v43;
  }

  v50 = HIDWORD(v81) != 1 || v41 == 512;
  v51 = v70;
  if (!v50)
  {
    v51 = v48;
  }

  if (v81 != 1 || v39 == 512)
  {
    v48 = v61;
  }

  *(a2 + 32) = v48;
  *(a2 + 40) = v81;
  *(a2 + 45) = WORD2(v66);
  *(a2 + 41) = v66;
  *(a2 + 48) = v68;
  *(a2 + 56) = v67;
  *(a2 + 64) = v60;
  *(a2 + 72) = v71;
  *(a2 + 80) = v72;
  *(a2 + 88) = v73;
  *(a2 + 96) = v74;
  *(a2 + 104) = v51;
  *(a2 + 112) = BYTE4(v81);
  *(a2 + 119) = BYTE6(v75);
  *(a2 + 117) = WORD2(v75);
  *(a2 + 113) = v75;
  *(a2 + 120) = v76;
  *(a2 + 128) = v77;
  *(a2 + 136) = v69;
  *(a2 + 144) = v80;
  *(a2 + 152) = v57;
  *(a2 + 160) = v56;
  *(a2 + 168) = v79;
  *(a2 + 176) = v78;
  return result;
}

void updateIndicator #1 (_:_:_:_:) in SILValidator.indicatorStateFromRegions(forRegionState:)(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 + 3);
  v106 = type metadata accessor for Logger();
  v105 = *(v106 - 8);
  v13 = MEMORY[0x28223BE20](v106);
  v104 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v103 = &v98 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v102 = &v98 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v98 - v19;
  v21 = *a2;
  v22 = *(a2 + 36);
  v23 = *(*a2 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer) + 28 * v22;
  v24 = *(a2 + 32);
  v25 = *(a3 + 65) << 8;
  v107 = a5;
  v108 = a5;
  if (v25 != 512)
  {
    v107 = *(a3 + 2);
    v108 = v12;
  }

  v26 = *(v23 + 4);
  v27 = *(a2 + 16);
  v28 = *(a2 + 24);
  v29 = specialized static SILValidator.frameSteady(_:_:_:)(v21, v22, v24);
  if (v25 == 512)
  {
    v30 = a5;
    v31 = a1;
  }

  else
  {
    v32 = *(a3 + 4);
    if (*a3 >= a1)
    {
      v31 = a1;
    }

    else
    {
      v31 = *a3;
    }

    if (v26 <= a3[2])
    {
      v26 = a3[2];
    }

    if (v24 <= a3[3])
    {
      v24 = a3[3];
    }

    if (v29)
    {
      v33 = a5;
    }

    else
    {
      v33 = *(a3 + 4);
    }

    if (*(a3 + 40) != 2)
    {
      v33 = a5;
    }

    if (v29)
    {
      v34 = a5;
    }

    else
    {
      v34 = *(a3 + 4);
    }

    if (*(a3 + 40))
    {
      v35 = 1;
    }

    else
    {
      v32 = v34;
      v35 = v29;
    }

    if (*(a3 + 40) <= 1u)
    {
      v30 = v32;
    }

    else
    {
      v30 = v33;
    }

    if (*(a3 + 40) <= 1u)
    {
      v29 = v35;
    }
  }

  v36 = v29 & 1;
  v37 = *(a4 + 64);
  if ((v37 & 0xFF00) == 0x200)
  {
    LOBYTE(v38) = 0;
    v40 = v107;
    v39 = v108;
LABEL_103:
    v109[72] = 0;
    *a6 = v31;
    *(a6 + 8) = v26;
    *(a6 + 12) = v24;
    *(a6 + 16) = v40;
    *(a6 + 24) = v39;
    *(a6 + 32) = v30;
    *(a6 + 40) = v36;
    *(a6 + 48) = v27;
    *(a6 + 56) = v28;
    *(a6 + 64) = 0;
    *(a6 + 65) = v38;
    return;
  }

  v42 = *(a4 + 8);
  v41 = *(a4 + 12);
  v44 = *(a4 + 16);
  v43 = *(a4 + 24);
  v45 = *(a4 + 32);
  v47 = *(a4 + 48);
  v46 = *(a4 + 56);
  if (*(a4 + 40) > 1u)
  {
    if (*(a4 + 40) != 2)
    {
      v40 = v107;
      v39 = v108;
      if (v29)
      {
        v36 = 1;
      }

      else if (v26 < v42 || v24 < v41)
      {
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }

      goto LABEL_97;
    }

    if (v29)
    {
      v36 = 1;
      goto LABEL_45;
    }

    if (a5 >= v45)
    {
      v53 = *(a4 + 56);
      v54 = *(a4 + 32);
      v99 = v30;
      v100 = v44;
      v101 = v43;
      v55 = UInt64.toSeconds()();
      v56 = MEMORY[0x277D85000];
      v57 = (*((*MEMORY[0x277D85000] & *v21) + 0x138))();
      if (v57)
      {
        v58 = *(v57 + 24);

        v59 = *&v58[OBJC_IVAR____TtC10SILManager14SILConstraints_timeToSteadyAsSeconds];

        if (v59 >= v55 || (v37 & 0x100) != 0)
        {
          v36 = 2;
          v30 = v54;
          v40 = v107;
          v39 = v108;
          v43 = v101;
          v44 = v100;
          v46 = v53;
          goto LABEL_97;
        }

        v83 = SILLogger.unsafeMutableAddressor();
        (*(v105 + 16))(v103, v83, v106);
        outlined init with copy of SILValidator.RegionState(a2, v109);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          LODWORD(v102) = v37;
          v87 = v31;
          v88 = v86;
          *v86 = 134218240;
          *(v86 + 4) = (*((*v56 & *v21) + 0xA8))();
          outlined destroy of SILValidator.RegionState(a2);
          *(v88 + 12) = 2048;
          *(v88 + 14) = v87;
          _os_log_impl(&dword_262A43000, v84, v85, "Indicator %ld in region %ld exceeded timeToSteady threshold", v88, 0x16u);
          v89 = v88;
          v31 = v87;
          v37 = v102;
          MEMORY[0x266730D70](v89, -1, -1);
        }

        else
        {
          outlined destroy of SILValidator.RegionState(a2);
        }

        v40 = v107;
        v39 = v108;
        v46 = v53;

        (*(v105 + 8))(v103, v106);
        swift_beginAccess();
        v30 = v99 & (static SILValidator.DisabledHealthChecks << 61 >> 63);
        v97 = (static SILValidator.DisabledHealthChecks & 4) == 0;
        goto LABEL_93;
      }

      goto LABEL_108;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (!*(a4 + 40))
  {
    v104 = *(a4 + 56);
    if (a5 >= v45)
    {
      v98 = v45;
      v99 = v30;
      *&v103 = v47;
      v100 = v44;
      v101 = v43;
      v48 = UInt64.toSeconds()();
      v49 = (*((*MEMORY[0x277D85000] & *v21) + 0x138))();
      if (v49)
      {
        v50 = *(v49 + 24);

        v51 = *&v50[OBJC_IVAR____TtC10SILManager14SILConstraints_timeToSteadyAsSeconds];

        if (v51 < v48 && (v37 & 0x100) == 0)
        {
          v69 = SILLogger.unsafeMutableAddressor();
          (*(v105 + 16))(v20, v69, v106);
          outlined init with copy of SILValidator.RegionState(a2, v109);
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();
          v72 = os_log_type_enabled(v70, v71);
          v47 = *&v103;
          v46 = *&v104;
          if (v72)
          {
            v73 = swift_slowAlloc();
            LODWORD(v102) = v37;
            v74 = v31;
            v75 = v73;
            *v73 = 134218240;
            *(v73 + 4) = (*((*MEMORY[0x277D85000] & *v21) + 0xA8))();
            outlined destroy of SILValidator.RegionState(a2);
            *(v75 + 12) = 2048;
            *(v75 + 14) = v74;
            _os_log_impl(&dword_262A43000, v70, v71, "Indicator %ld in region %ld exceeded timeToSteady threshold", v75, 0x16u);
            v76 = v75;
            v31 = v74;
            v37 = v102;
            MEMORY[0x266730D70](v76, -1, -1);
          }

          else
          {
            outlined destroy of SILValidator.RegionState(a2);
          }

          v40 = v107;
          v39 = v108;

          (*(v105 + 8))(v20, v106);
          swift_beginAccess();
          v30 = v99 & (static SILValidator.DisabledHealthChecks << 61 >> 63);
          if ((static SILValidator.DisabledHealthChecks & 4) == 0)
          {
            v36 = 3;
          }

          goto LABEL_96;
        }

        v47 = *&v103;
        v46 = *&v104;
        if (v36)
        {
          v36 = 1;
          v40 = v107;
          v39 = v108;
          v43 = v101;
          v44 = v100;
          v30 = v99;
LABEL_97:
          v38 = (v37 >> 8) & 1;
          if (!((v24 > 0.0) | v37 & 1))
          {
            v27 = v47;
            v28 = v46;
          }

          if (v44 < v40)
          {
            v40 = v44;
          }

          if (v43 < v39)
          {
            v39 = v43;
          }

          goto LABEL_103;
        }

        v43 = v101;
        v44 = v100;
        if (v24 >= v41)
        {
          if (v26 < v42 && (v37 & 0x100) == 0)
          {
            goto LABEL_72;
          }
        }

        else if ((v37 & 0x100) == 0)
        {
LABEL_72:
          v77 = SILLogger.unsafeMutableAddressor();
          (*(v105 + 16))(v102, v77, v106);
          outlined init with copy of SILValidator.RegionState(a2, v109);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = v31;
            v81 = swift_slowAlloc();
            *v81 = 134218240;
            *(v81 + 4) = (*((*MEMORY[0x277D85000] & *v21) + 0xA8))();
            outlined destroy of SILValidator.RegionState(a2);
            *(v81 + 12) = 2048;
            *(v81 + 14) = v80;
            _os_log_impl(&dword_262A43000, v78, v79, "Indicator %ld in region %ld shrunk in opacity or size before becoming steady", v81, 0x16u);
            v82 = v81;
            v31 = v80;
            MEMORY[0x266730D70](v82, -1, -1);
          }

          else
          {
            outlined destroy of SILValidator.RegionState(a2);
          }

          v40 = v107;
          v39 = v108;

          (*(v105 + 8))(v102, v106);
          swift_beginAccess();
          v30 = v98 & (static SILValidator.DisabledHealthChecks << 60 >> 63);
          v97 = (static SILValidator.DisabledHealthChecks & 8) == 0;
LABEL_93:
          if (v97)
          {
            v36 = 3;
          }

          else
          {
            v36 = 0;
          }

LABEL_96:
          v43 = v101;
          v44 = v100;
          goto LABEL_97;
        }

        v36 = 0;
        v30 = v98;
LABEL_45:
        v40 = v107;
        v39 = v108;
        goto LABEL_97;
      }

      goto LABEL_107;
    }

    __break(1u);
    goto LABEL_105;
  }

  if (v29)
  {
    v36 = 1;
    v30 = *(a4 + 32);
    goto LABEL_45;
  }

  if (a5 < v45)
  {
    goto LABEL_106;
  }

  v61 = *(a4 + 56);
  v99 = v30;
  v100 = v44;
  v101 = v43;
  v62 = UInt64.toSeconds()();
  v63 = MEMORY[0x277D85000];
  v64 = (*((*MEMORY[0x277D85000] & *v21) + 0x138))();
  if (v64)
  {
    v65 = *(v64 + 24);

    v66 = *&v65[OBJC_IVAR____TtC10SILManager14SILConstraints_timeAsSteadyAsSeconds];

    if (v66 <= v62 || (v37 & 0x100) != 0)
    {
      v36 = 2;
      v30 = a5;
      v40 = v107;
      v39 = v108;
      v43 = v101;
      v44 = v100;
      v46 = v61;
      goto LABEL_97;
    }

    v90 = SILLogger.unsafeMutableAddressor();
    (*(v105 + 16))(v104, v90, v106);
    outlined init with copy of SILValidator.RegionState(a2, v109);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = v63;
      v95 = v93;
      *v93 = 134218752;
      *(v93 + 4) = (*((*v94 & *v21) + 0xA8))();
      outlined destroy of SILValidator.RegionState(a2);
      *(v95 + 12) = 2048;
      *(v95 + 14) = v31;
      *(v95 + 22) = 2048;
      *(v95 + 24) = v62;
      *(v95 + 32) = 2048;
      *(v95 + 34) = v66;
      _os_log_impl(&dword_262A43000, v91, v92, "Indicator %ld in region %ld %fs did not exceed timeAsSteady threshold %fs before becoming unsteady", v95, 0x2Au);
      MEMORY[0x266730D70](v95, -1, -1);
    }

    else
    {
      outlined destroy of SILValidator.RegionState(a2);
    }

    v40 = v107;
    v39 = v108;
    v46 = v61;

    (*(v105 + 8))(v104, v106);
    swift_beginAccess();
    v30 = v99 & (static SILValidator.DisabledHealthChecks << 59 >> 63);
    v97 = (static SILValidator.DisabledHealthChecks & 0x10) == 0;
    goto LABEL_93;
  }

LABEL_109:
  __break(1u);
}

uint64_t SILValidator.commitPendingRegionStates(backend:swapID:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v101 = a1;
  v98 = a2;
  v84 = type metadata accessor for Logger();
  v82 = *(v84 - 8);
  v3 = MEMORY[0x28223BE20](v84);
  v83 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = (*(*v2 + 192))(v3);
  v5 = *(*v2 + 168);
  v6 = *v2 + 168;
  v103 = v2;
  v99 = v6;
  v100 = v5;
  result = v5();
  v8 = result;
  v9 = *(result + 16);
  if (!v9)
  {
LABEL_13:

    v31 = *(*v103 + 240);

    v33 = v31(&v118, v32);
    v96 = v119;
    v97 = v118;
    v94 = v121;
    v95 = v120;
    v92 = v123;
    v93 = *&v122[8];
    v90 = v125;
    v91 = v124;
    v86 = v126;
    v87 = *v122;
    v88 = v128;
    v89 = v127;
    v85 = v129;
    result = (v100)(v33);
    v35 = result;
    v36 = *(result + 16);
    if (!v36)
    {
LABEL_48:
      v73 = v102;

      v74 = v98;
      *v98 = v73;
      v75 = v97;
      *(v74 + 3) = v96;
      *(v74 + 1) = v75;
      v76 = v95;
      *(v74 + 7) = v94;
      *(v74 + 5) = v76;
      v77 = v86;
      *(v74 + 36) = v87;
      v78 = v92;
      *(v74 + 5) = v93;
      *(v74 + 6) = v78;
      v79 = v90;
      *(v74 + 7) = v91;
      *(v74 + 8) = v79;
      *(v74 + 72) = v77;
      v80 = v89;
      *(v74 + 21) = v88;
      *(v74 + 19) = v80;
      *(v74 + 184) = v85;
      return result;
    }

    v37 = 0;
    v38 = v82++;
    v99 = (v38 + 2);
    v100 = "expected case value, %llx";
    v39 = result + 40;
    *&v34 = 134217984;
    v81 = v34;
    v103 = result;
    while (1)
    {
      if (v37 >= *(v35 + 16))
      {
        goto LABEL_50;
      }

      v113 = *(v39 - 8);
      v40 = *(v39 + 8);
      v41 = *(v39 + 24);
      v42 = *(v39 + 56);
      v116 = *(v39 + 40);
      v117 = v42;
      v114 = v40;
      v115 = v41;
      v111[0] = *v39;
      v44 = *(v39 + 32);
      v43 = *(v39 + 48);
      v45 = *(v39 + 16);
      v112 = *(v39 + 64);
      v111[2] = v44;
      v111[3] = v43;
      v111[1] = v45;
      if (v113 != 1)
      {
        break;
      }

      if (*&v111[0])
      {
        v46 = v36;
        v47 = *((*MEMORY[0x277D85000] & **&v111[0]) + 0xA8);
        outlined init with copy of SILBackend?(&v113, &v106, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMR);
        v48 = outlined init with copy of SILBackend?(v111, &v106, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
        v49 = v47(v48);
        type metadata accessor for SILIndicatorDesc();
        if (static SILIndicatorDesc.isCameraIndicator(_:)(v49))
        {
          v50 = *v122;
          v36 = v46;
          if ((*v122 & 0xFF00) == 0x200)
          {
            goto LABEL_30;
          }

          *(&v105 + 1) = &type metadata for SILValidator.IndicatorState;
          v51 = swift_allocObject();
          *&v104 = v51;
          v52 = v119;
          *(v51 + 16) = v118;
          *(v51 + 32) = v52;
          v53 = v120;
          v54 = v121;
          goto LABEL_28;
        }

        if (static SILIndicatorDesc.isMicrophoneIndicator(_:)(v49))
        {
          v50 = v126;
          v36 = v46;
          if ((v126 & 0xFF00) == 0x200)
          {
            goto LABEL_30;
          }

          *(&v105 + 1) = &type metadata for SILValidator.IndicatorState;
          v51 = swift_allocObject();
          *&v104 = v51;
          v55 = v123;
          *(v51 + 16) = *&v122[8];
          *(v51 + 32) = v55;
          v53 = v124;
          v54 = v125;
LABEL_28:
          *(v51 + 48) = v53;
          *(v51 + 64) = v54;
          *(v51 + 80) = v50;
          v35 = v103;
        }

        else
        {
          v56 = v129;
          v36 = v46;
          if (v129 == 2)
          {
LABEL_30:
            outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
            outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
            v104 = 0u;
            v105 = 0u;
            result = outlined destroy of SILValidator.RegionState?(&v104, &_sypSgMd, &_sypSgMR);
            v35 = v103;
            goto LABEL_16;
          }

          *(&v105 + 1) = &type metadata for SILValidator.FaceIDState;
          v57 = swift_allocObject();
          *&v104 = v57;
          v58 = v128;
          *(v57 + 16) = v127;
          *(v57 + 32) = v58;
          *(v57 + 48) = v56;
          v35 = v103;
        }

        if (swift_dynamicCast())
        {
          if ((v110 & 0x100) != 0)
          {
            outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
            v59 = -1;
LABEL_44:
            swift_beginAccess();
            if ((static SILValidator.DisabledHealthChecks & 0x100) != 0)
            {
              v67 = -1;
            }

            else
            {
              v67 = v59;
            }

            v68 = Log.unsafeMutableAddressor();
            swift_beginAccess();
            v69 = *v68;
            *&v106 = 0;
            *(&v106 + 1) = 0xE000000000000000;

            _StringGuts.grow(_:)(42);
            MEMORY[0x26672FCC0](0xD000000000000019, v100 | 0x8000000000000000);
            UInt64.toSeconds()();
            Double.write<A>(to:)();
            MEMORY[0x26672FCC0](0x657220726F662073, 0xED0000206E6F6967);
            *&v104 = v37;
            v70 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v70);

            (*(*v69 + 120))(7, v106, *(&v106 + 1));

            v71 = v101[3];
            v72 = v101[4];
            __swift_project_boxed_opaque_existential_1(v101, v71);
            (*(v72 + 64))(v37, 1, v67, 24, v71, v72);
LABEL_24:
            result = outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
            goto LABEL_16;
          }

          v60 = BYTE8(v108);
          if (BYTE8(v108) != 3 || v108)
          {
            outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
            if (v60)
            {
              v59 = -1;
            }

            else
            {
              v59 = static UInt64.secondsAsTicks(_:)(0.032);
            }

            goto LABEL_44;
          }

          v61 = SILLogger.unsafeMutableAddressor();
          (*v99)(v83, v61, v84);
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = v81;
            *(v64 + 4) = v37;
            _os_log_impl(&dword_262A43000, v62, v63, "Reporting bad health for malicious indicator in region %ld", v64, 0xCu);
            MEMORY[0x266730D70](v64, -1, -1);
          }

          (*v82)(v83, v84);
          v65 = v101[3];
          v66 = v101[4];
          __swift_project_boxed_opaque_existential_1(v101, v65);
          (*(v66 + 64))(v37, 0, -1, 24, v65, v66);
        }

        outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
        goto LABEL_24;
      }

      result = outlined init with copy of SILBackend?(&v113, &v106, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMR);
LABEL_16:
      ++v37;
      v39 += 80;
      if (v36 == v37)
      {
        goto LABEL_48;
      }
    }

    outlined init with copy of SILBackend?(&v113, &v106, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMR);
    goto LABEL_24;
  }

  v10 = 0;
  v11 = result + 40;
  *&v96 = v9 - 1;
  v12 = 32;
  *&v97 = result + 40;
  *&v95 = 32;
LABEL_3:
  v13 = v12 + 72 * v10;
  v14 = (v11 + 80 * v10);
  while (v10 < *(v8 + 16))
  {
    v118 = *(v14 - 8);
    v15 = *(v14 + 8);
    v16 = *(v14 + 24);
    v17 = *(v14 + 56);
    v121 = *(v14 + 40);
    *v122 = v17;
    v119 = v15;
    v120 = v16;
    v18 = v10 + 1;
    v106 = *v14;
    v20 = v14[2];
    v19 = v14[3];
    v21 = v14[1];
    v110 = *(v14 + 8);
    v108 = v20;
    v109 = v19;
    v107 = v21;
    if (v118 == 1)
    {
      outlined init with copy of SILBackend?(&v118, &v113, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMR);
      v22 = v102;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        v22 = result;
      }

      if (v10 >= v22[2])
      {
        goto LABEL_51;
      }

      v102 = v22;
      v23 = v22 + v13;
      v113 = *(v22 + v13);
      v24 = *(v22 + v13 + 16);
      v25 = *(v22 + v13 + 32);
      v26 = *(v22 + v13 + 48);
      *&v117 = *(v22 + v13 + 64);
      v115 = v25;
      v116 = v26;
      v114 = v24;
      v28 = v108;
      v27 = v109;
      v29 = v107;
      *(v23 + 8) = v110;
      *(v23 + 2) = v28;
      *(v23 + 3) = v27;
      *(v23 + 1) = v29;
      *v23 = v106;
      result = outlined destroy of SILValidator.RegionState?(&v113, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v30 = v96 == v10++;
      v11 = v97;
      v12 = v95;
      if (v30)
      {
        goto LABEL_13;
      }

      goto LABEL_3;
    }

    outlined init with copy of SILBackend?(&v118, &v113, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMR);
    result = outlined destroy of SILValidator.RegionState?(&v106, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    v13 += 72;
    v14 += 5;
    ++v10;
    if (v9 == v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t SILValidator.triggerFBI(renderer:region:indicator:)(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v113 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v110 = &v100[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v100[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v100[-v13];
  outlined init with copy of SILBackend?((a1 + 3), v123, &_s10SILManager10SILBackend_pSgMd, &_s10SILManager10SILBackend_pSgMR);
  v15 = v124;
  if (!v124)
  {
    goto LABEL_79;
  }

  v16 = v125;
  __swift_project_boxed_opaque_existential_1(v123, v124);
  v17 = (*(v16 + 104))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v123);
  if (v17)
  {
    v18 = SILLogger.unsafeMutableAddressor();
    (*(v8 + 16))(v14, v18, v7);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = a3;
      _os_log_impl(&dword_262A43000, v19, v20, "Skipping FBI for indicator %ld as it is disabled", v21, 0xCu);
      MEMORY[0x266730D70](v21, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
    return 0;
  }

  type metadata accessor for SILIndicatorDesc();
  v23 = static SILIndicatorDesc.isCameraIndicator(_:)(a3);
  v108 = v8;
  if (v23)
  {
    swift_beginAccess();
    if ((static SILValidator.DisabledHealthChecks & 0x200) == 0)
    {
      v25 = (*(*v4 + 136))(v123);
      if (*(v24 + 65) << 8 != 512)
      {
        *(v24 + 65) = 1;
      }

      v25(v123, 0);
    }
  }

  if (static SILIndicatorDesc.isMicrophoneIndicator(_:)(a3))
  {
    swift_beginAccess();
    if ((static SILValidator.DisabledHealthChecks & 0x200) == 0)
    {
      v27 = (*(*v4 + 136))(v123);
      if (*(v26 + 137) << 8 != 512)
      {
        *(v26 + 137) = 1;
      }

      v27(v123, 0);
    }
  }

  if (static SILIndicatorDesc.isFaceIDIndicator(_:)())
  {
    swift_beginAccess();
    if ((static SILValidator.DisabledHealthChecks & 0x200) == 0)
    {
      v29 = (*(*v4 + 136))(v123);
      if (*(v28 + 176) != 2)
      {
        *(v28 + 176) = 1;
      }

      v29(v123, 0);
    }
  }

  v30 = MEMORY[0x277D85000];
  v31 = *((*MEMORY[0x277D85000] & *a1[8]) + 0xA8);
  v112 = a3;
  v32 = v31(a3);
  v109 = v7;
  v33 = *((*v30 & *v32) + 0x138);
  v34 = v33();
  if (!v34)
  {
    goto LABEL_81;
  }

  v35 = *(v34 + 24);

  *v107 = *&v35[OBJC_IVAR____TtC10SILManager14SILConstraints_fallbackInfo];
  v36 = *&v35[OBJC_IVAR____TtC10SILManager14SILConstraints_fallbackInfo + 16];
  v37 = v35[OBJC_IVAR____TtC10SILManager14SILConstraints_fallbackInfo + 18];

  if (v37)
  {
    v38 = v33();
    if (!v38)
    {
LABEL_82:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v39 = *(v38 + 24);

    v40 = *&v39[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes];

    v41 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v32) + 0x170))() & 1) != 0 || ((*((*v41 & *v32) + 0x178))())
    {
      (*(*v4 + 120))(v123);
      SILValidator.IndicatorStates.subscript.getter(v112, &v118);
      if (v119)
      {
        if (swift_dynamicCast())
        {
          if ((v117 & 1) == 0)
          {
            v42 = *(v40 + 16);
            v43 = *(v42 + 16);
            if (v43)
            {
              v44 = v4[2]._0;
              v45 = v4[2]._1;
              v46 = *(v42 + 32);
              v47 = *(v42 + 40);
              v48 = *(v42 + 48);
              v49 = *(v42 + 56);
              v50 = v43 - 1;
              v102 = v40;
              v101 = v44;
              if (v43 != 1)
              {
                v51 = (v42 + 88);
                v103 = v116 / v45;
                v104 = v115 / v44;
                do
                {
                  v52 = *(v51 - 3);
                  v53 = *(v51 - 2);
                  v54 = *(v51 - 1);
                  v106 = *v51;
                  v107[0] = v54;
                  v56 = v103;
                  v55 = v104;
                  v105 = CGRect.squaredDistanceFrom(_:)(v104, v103, v52, v53, v54, v106);
                  v57 = CGRect.squaredDistanceFrom(_:)(v55, v56, v46, v47, v48, v49);
                  if (v105 < v57)
                  {
                    v46 = v52;
                    v47 = v53;
                    v48 = v107[0];
                    v49 = v106;
                  }

                  v51 += 4;
                  --v50;
                }

                while (v50);
              }

              v58 = Log.unsafeMutableAddressor();
              swift_beginAccess();
              v59 = *(**v58 + 128);

              v59(7, 0xD00000000000002ELL, 0x8000000262A9DFC0);

              v121 = CGRect.midPoint.getter(v46, v47, v48);
              v122 = v60;
              v120 = CGSize.init(_:)(__PAIR64__(v45, v101));
              type metadata accessor for CGPoint(0);
              v62 = v61;
              type metadata accessor for CGSize(0);
              v64 = * infix<A, B>(_:_:)(&v121, &v120, v62, v63, &protocol witness table for CGPoint, &protocol witness table for CGSize);
              width = v118.width;
              height = v118.height;
              v67 = v112;
              goto LABEL_40;
            }
          }
        }
      }

      else
      {
        outlined destroy of SILValidator.RegionState?(&v118, &_sypSgMd, &_sypSgMR);
      }
    }

    v74 = Log.unsafeMutableAddressor();
    swift_beginAccess();
    v75 = *(**v74 + 128);

    v75(7, 0xD00000000000002DLL, 0x8000000262A9DF90);

    v76 = *(v40 + 16);
    if (!*(v76 + 16))
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v121 = CGRect.midPoint.getter(*(v76 + 32), *(v76 + 40), *(v76 + 48));
    v122 = v77;
    v120 = CGSize.init(_:)(v4[2]);
    type metadata accessor for CGPoint(0);
    v79 = v78;
    type metadata accessor for CGSize(0);
    v64 = * infix<A, B>(_:_:)(&v121, &v120, v79, v80, &protocol witness table for CGPoint, &protocol witness table for CGSize);
    width = v118.width;
    height = v118.height;
    v67 = v112;
LABEL_40:
    v81 = (*((*MEMORY[0x277D85000] & *v32) + 0x168))(v64);
    v82 = v32 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer;
    v83 = *(v32 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer);
    if (v81)
    {
      if (!v83)
      {
        goto LABEL_80;
      }

      v84 = *(v82 + 1);
      if (!v84)
      {
        goto LABEL_80;
      }

      v36 = 0;
      v85 = 28 * v84;
      v86 = v83 + 24;
      v87 = 28 * v84;
      do
      {
        if (*(v86 + 3))
        {
          LOWORD(v86) = *v86;
          goto LABEL_67;
        }

        ++v36;
        v86 += 28;
        v87 -= 28;
      }

      while (v87);
      LODWORD(v86) = *(v83 + 24);
      if (v84 == 1)
      {
        goto LABEL_59;
      }

      v36 = 0;
      v88 = *(v83 + 20);
      v89 = v85 - 28;
      v90 = (v83 + 52);
      v91 = 1;
      do
      {
        v92 = *(v90 - 1);
        v93 = v88 >= v92;
        if (v88 < v92)
        {
          v36 = v91;
        }

        ++v91;
        if (v88 <= v92)
        {
          v88 = *(v90 - 1);
        }

        if (!v93)
        {
          LOBYTE(v86) = *v90;
        }

        v90 += 7;
        v89 -= 28;
      }

      while (v89);
    }

    else
    {
      if (!v83)
      {
        goto LABEL_80;
      }

      v94 = *(v82 + 1);
      if (!v94)
      {
        goto LABEL_80;
      }

      LODWORD(v86) = *(v83 + 24);
      if (v94 == 1)
      {
LABEL_59:
        v36 = 0;
      }

      else
      {
        v36 = 0;
        v95 = *(v83 + 4);
        v96 = 28 * v94 - 28;
        v97 = v83 + 32;
        v98 = 1;
        do
        {
          if (v95 < *v97)
          {
            v36 = v98;
          }

          ++v98;
          if (v95 < *v97)
          {
            v95 = *v97;
            LOBYTE(v86) = *(v97 + 20);
          }

          v97 += 28;
          v96 -= 28;
        }

        while (v96);
      }
    }

LABEL_67:
    if (v86 == 2)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v36 >> 16))
    {
      goto LABEL_70;
    }

    __break(1u);
    goto LABEL_78;
  }

  *v123 = *v107;
  v118 = CGSize.init(_:)(v4[2]);
  type metadata accessor for CGPoint(0);
  v69 = v68;
  type metadata accessor for CGSize(0);
  v71 = v70;
  * infix<A, B>(_:_:)(v123, &v118, v69, v70, &protocol witness table for CGPoint, &protocol witness table for CGSize);
  v118 = v114;
  destructiveProjectEnumData for SILValidator.SILValidationErrors();
  v121 = v72;
  v122 = v73;
  + infix<A, B>(_:_:)(&v118, &v121, v69, v71, &protocol witness table for CGPoint, &protocol witness table for CGSize);
  width = v123[0];
  height = v123[1];
  v67 = v112;
LABEL_70:
  ((*a1)[88])(v113, v67, 0, v36, width, height, 1.0, 0.0);

  if (v67 <= 2)
  {
    v99 = 0x20201u >> (8 * v67);
  }

  else
  {
    v99 = 3;
  }

  if (v67 >= 0)
  {
    return v99;
  }

  else
  {
    return 0;
  }
}

void *SILValidator.getMinOnTime(renderer:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v60 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v58 = &v55 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - v8;
  result = outlined init with copy of SILBackend?(a1 + 24, v74, &_s10SILManager10SILBackend_pSgMd, &_s10SILManager10SILBackend_pSgMR);
  v11 = v75;
  if (!v75)
  {
    goto LABEL_46;
  }

  v12 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v13 = (*(v12 + 136))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  v59 = static UInt64.secondsAsTicks(_:)(v13);
  v14 = static UInt64.now()();
  result = outlined init with copy of SILBackend?(a1 + 24, v61, &_s10SILManager10SILBackend_pSgMd, &_s10SILManager10SILBackend_pSgMR);
  v15 = v62;
  if (v62)
  {
    v16 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v17 = (*(v16 + 96))(v15, v16);
    v55 = v18;
    v57 = v19;
    v20 = __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v21 = *(*v1 + 120);
    result = v21(v64, v20);
    v22 = v64[2];
    if (v65 << 8 == 512)
    {
      v22 = 0;
    }

    v23 = v14 >= v22;
    v24 = v14 - v22;
    if (!v23)
    {
      __break(1u);
      goto LABEL_42;
    }

    if (!v17)
    {
      v25 = v59;
      if (v24 >= v59)
      {
        goto LABEL_17;
      }

      v26 = SILLogger.unsafeMutableAddressor();
      (*(v60 + 16))(v9, v26, v3);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = v3;
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_262A43000, v27, v28, "EIC FBI race! Forcing MOT on Cam", v30, 2u);
        v31 = v30;
        v3 = v29;
        v25 = v59;
        MEMORY[0x266730D70](v31, -1, -1);
      }

      v32 = (*(v60 + 8))(v9, v3);
      result = (v21)(v66, v32);
      v33 = v66[2];
      if (v67 << 8 == 512)
      {
        v33 = v14;
      }

      v17 = v33 + v25;
      if (!__CFADD__(v33, v25))
      {
LABEL_17:
        result = (v21)(v68, result);
        if (v69 == 2)
        {
          v34 = 0;
        }

        else
        {
          v34 = v68[21];
        }

        v23 = v14 >= v34;
        v35 = v14 - v34;
        if (v23)
        {
          if (!v57 && v35 < v25)
          {
            v36 = SILLogger.unsafeMutableAddressor();
            (*(v60 + 16))(v58, v36, v3);
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = v3;
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&dword_262A43000, v37, v38, "EIC FBI race! Forcing MOT on FaceID", v40, 2u);
              v41 = v40;
              v3 = v39;
              v25 = v59;
              MEMORY[0x266730D70](v41, -1, -1);
            }

            v42 = (*(v60 + 8))(v58, v3);
            result = (v21)(v70, v42);
            v43 = v71 == 2 ? v14 : v70[21];
            if (__CFADD__(v43, v25))
            {
              goto LABEL_44;
            }
          }

          result = (v21)(v72, result);
          v44 = v72[11];
          if (v73 << 8 == 512)
          {
            v44 = 0;
          }

          v23 = v14 >= v44;
          v45 = v14 - v44;
          if (v23)
          {
            if (v55 || v45 >= v25)
            {
              return v17;
            }

            v46 = SILLogger.unsafeMutableAddressor();
            (*(v60 + 16))(v56, v46, v3);
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v58 = v17;
              v50 = v3;
              v51 = v49;
              *v49 = 0;
              _os_log_impl(&dword_262A43000, v47, v48, "EIC FBI race! Forcing MOT on Mic", v49, 2u);
              v52 = v51;
              v3 = v50;
              v17 = v58;
              MEMORY[0x266730D70](v52, -1, -1);
            }

            v53 = (*(v60 + 8))(v56, v3);
            result = (v21)(v74, v53);
            v54 = v77;
            if (v78 << 8 == 512)
            {
              v54 = v14;
            }

            if (!__CFADD__(v54, v59))
            {
              return v17;
            }

            goto LABEL_45;
          }

LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      __break(1u);
    }

    v25 = v59;
    goto LABEL_17;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t SILValidator.checkFallbackIndicator(states:renderer:)(float *a1, uint64_t a2)
{
  v3 = v2;
  v126 = type metadata accessor for Logger();
  v124 = *(v126 - 8);
  v6 = MEMORY[0x28223BE20](v126);
  v118 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v116 = &v111 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v111 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v111 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v111 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v111 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v111 - v22;
  v125 = static UInt64.now()();
  v24 = *(*v3 + 264);
  v119 = a2;
  v25 = v24(a2);
  v122 = v26;
  v123 = v25;
  v120 = v27;
  v28 = *a1;
  v29 = a1[3];
  v121 = *(a1 + 65) << 8;
  if (v121 != 512)
  {
    v30 = *(a1 + 40);
    if (v30 == 2)
    {
      if (v29 >= 0.1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v30 != 3)
      {
        goto LABEL_13;
      }

      v31 = 0;
      if (*(a1 + 4) || v29 >= 0.1)
      {
        goto LABEL_17;
      }
    }
  }

  if (v125 >= v123)
  {
    (*(*v3 + 120))(v132);
    if (v133 << 8 != 512)
    {
      v48 = SILLogger.unsafeMutableAddressor();
      (*(v124 + 16))(v21, v48, v126);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v117 = v28;
        v52 = v51;
        *v51 = 134218240;
        *(v51 + 4) = v125;
        *(v51 + 12) = 2048;
        *(v51 + 14) = v123;
        _os_log_impl(&dword_262A43000, v49, v50, "Camera disabled %llu >= %llu", v51, 0x16u);
        v53 = v52;
        v28 = v117;
        MEMORY[0x266730D70](v53, -1, -1);
      }

      (*(v124 + 8))(v21, v126);
      v31 = 1;
LABEL_17:
      LODWORD(v117) = v31;
      v113 = *(a1 + 18);
      v54 = a1[40];
      v115 = *(a1 + 176);
      if (v115 == 2 || v54 < 0.1)
      {
        v56 = *(*v3 + 120);
        v55 = v124;
        if (v125 < v120 && v121 == 512)
        {
          v56(v134);
          if (v135 == 2)
          {
            v57 = 3;
          }

          else
          {
            v57 = v134[19];
          }

          v58 = SILLogger.unsafeMutableAddressor();
          (*(v55 + 16))(v18, v58, v126);
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = v28;
            v62 = swift_slowAlloc();
            *v62 = 134218496;
            *(v62 + 4) = v57;
            *(v62 + 12) = 2048;
            *(v62 + 14) = v125;
            *(v62 + 22) = 2048;
            *(v62 + 24) = v120;
            _os_log_impl(&dword_262A43000, v59, v60, "FaceID FBI for %ld! %llu < %llu ", v62, 0x20u);
            v63 = v62;
            v28 = v61;
            MEMORY[0x266730D70](v63, -1, -1);
          }

          v55 = v124;
          (*(v124 + 8))(v18, v126);
          v47 = (*(*v3 + 256))(v119, 2, v57);
        }

        else
        {
          v56(v134);
          if (v135 == 2)
          {
            v47 = 0;
          }

          else
          {
            v64 = SILLogger.unsafeMutableAddressor();
            (*(v55 + 16))(v15, v64, v126);
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 134218240;
              *(v67 + 4) = v125;
              *(v67 + 12) = 2048;
              *(v67 + 14) = v120;
              _os_log_impl(&dword_262A43000, v65, v66, "FaceID indicator disabled %llu >= %llu", v67, 0x16u);
              MEMORY[0x266730D70](v67, -1, -1);
            }

            (*(v55 + 8))(v15, v126);
            v47 = 0;
            LODWORD(v117) = 1;
          }
        }
      }

      else
      {
        v47 = 0;
        v55 = v124;
      }

      v112 = *(a1 + 9);
      v68 = a1[21];
      v114 = *(a1 + 137) << 8;
      if (v114 == 512 || ((v69 = *(a1 + 112), v69 == 2) || v69 == 3 && !*(a1 + 13)) && v68 < 0.1)
      {
        if (v125 < v122 && v121 == 512)
        {
          v70 = SILLogger.unsafeMutableAddressor();
          (*(v55 + 16))(v12, v70, v126);
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v130 = v74;
            *v73 = 134218498;
            *(v73 + 4) = v125;
            *(v73 + 12) = 2048;
            *(v73 + 14) = v122;
            *(v73 + 22) = 2080;
            v75 = *(a1 + 9);
            v144 = *(a1 + 8);
            v145 = v75;
            v146 = *(a1 + 10);
            v147 = *(a1 + 176);
            v76 = *(a1 + 5);
            v140 = *(a1 + 4);
            v141 = v76;
            v77 = *(a1 + 7);
            v142 = *(a1 + 6);
            v143 = v77;
            v78 = *(a1 + 1);
            v136 = *a1;
            v137 = v78;
            v79 = *(a1 + 3);
            v138 = *(a1 + 2);
            v139 = v79;
            v80 = String.init<A>(describing:)();
            v82 = v28;
            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v130);

            *(v73 + 24) = v83;
            v28 = v82;
            v84 = v126;
            _os_log_impl(&dword_262A43000, v71, v72, "Mic FBI for 1! %llu < %llu & states are %s", v73, 0x20u);
            v85 = __swift_destroy_boxed_opaque_existential_1Tm(v74);
            v86 = v74;
            v55 = v124;
            MEMORY[0x266730D70](v86, -1, -1, v85);
            MEMORY[0x266730D70](v73, -1, -1);

            (*(v55 + 8))(v12, v84);
          }

          else
          {

            (*(v55 + 8))(v12, v126);
          }

          v47 = (*(*v3 + 256))(v119, 0, 1);
        }

        else
        {
          (*(*v3 + 120))(&v136);
          if (BYTE9(v144) << 8 != 512)
          {
            v87 = SILLogger.unsafeMutableAddressor();
            v88 = v116;
            (*(v55 + 16))(v116, v87, v126);
            v89 = Logger.logObject.getter();
            v90 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              *v91 = 134218240;
              *(v91 + 4) = v125;
              *(v91 + 12) = 2048;
              *(v91 + 14) = v122;
              _os_log_impl(&dword_262A43000, v89, v90, "Microphone indicator disabled %llu >= %llu", v91, 0x16u);
              MEMORY[0x266730D70](v91, -1, -1);
            }

            (*(v55 + 8))(v88, v126);
LABEL_51:
            v130 = 0;
            v131 = 0xE000000000000000;
            _StringGuts.grow(_:)(42);

            v130 = 0x203A20776F6ELL;
            v131 = 0xE600000000000000;
            v128 = v125;
            v93 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v93);

            MEMORY[0x26672FCC0](0x3A206D6163202620, 0xE900000000000020);
            v128 = v123;
            v94 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v94);

            MEMORY[0x26672FCC0](0x3A20646966202620, 0xE900000000000020);
            v128 = v120;
            v95 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v95);

            MEMORY[0x26672FCC0](0x3A2063696D202620, 0xE900000000000020);
            v128 = v122;
            v96 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v96);

            MEMORY[0x26672FCC0](10, 0xE100000000000000);
            if (v121 != 512)
            {
              v128 = 0;
              v129 = 0xE000000000000000;
              _StringGuts.grow(_:)(26);
              MEMORY[0x26672FCC0](0x6361706F206D6163, 0xED0000203A797469);
              Float.write<A>(to:)();
              MEMORY[0x26672FCC0](0x206E6F6967657220, 0xE800000000000000);
              v127 = v28;
              v97 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x26672FCC0](v97);

              MEMORY[0x26672FCC0](10, 0xE100000000000000);
              MEMORY[0x26672FCC0](v128, v129);
            }

            v98 = v118;
            if (v115 != 2)
            {
              v128 = 0;
              v129 = 0xE000000000000000;
              _StringGuts.grow(_:)(25);
              MEMORY[0x26672FCC0](0x6361706F20646966, 0xEC00000020797469);
              Float.write<A>(to:)();
              MEMORY[0x26672FCC0](0x206E6F6967657220, 0xE800000000000000);
              v127 = v113;
              v99 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x26672FCC0](v99);

              MEMORY[0x26672FCC0](10, 0xE100000000000000);
              MEMORY[0x26672FCC0](v128, v129);
            }

            if (v114 != 512)
            {
              v128 = 0;
              v129 = 0xE000000000000000;
              _StringGuts.grow(_:)(25);
              MEMORY[0x26672FCC0](0x6361706F2063696DLL, 0xED0000203A797469);
              Float.write<A>(to:)();
              MEMORY[0x26672FCC0](0x206E6F6967657220, 0xE800000000000000);
              v127 = v112;
              v100 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x26672FCC0](v100);

              MEMORY[0x26672FCC0](v128, v129);
            }

            v101 = SILLogger.unsafeMutableAddressor();
            (*(v55 + 16))(v98, v101, v126);
            v103 = v130;
            v102 = v131;

            v104 = Logger.logObject.getter();
            v105 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v128 = v107;
              *v106 = 136315138;
              v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v102, &v128);

              *(v106 + 4) = v108;
              _os_log_impl(&dword_262A43000, v104, v105, "%s", v106, 0xCu);
              v109 = __swift_destroy_boxed_opaque_existential_1Tm(v107);
              MEMORY[0x266730D70](v107, -1, -1, v109);
              MEMORY[0x266730D70](v106, -1, -1);
            }

            else
            {
            }

            (*(v55 + 8))(v98, v126);
            return v47;
          }
        }
      }

      v92 = v117;
      if (v47)
      {
        v92 = 1;
      }

      if (v92 != 1)
      {
        return 0;
      }

      goto LABEL_51;
    }

LABEL_13:
    v31 = 0;
    goto LABEL_17;
  }

  v32 = SILLogger.unsafeMutableAddressor();
  v33 = v124;
  (*(v124 + 16))(v23, v32, v126);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v134[0] = v37;
    *v36 = 134218498;
    *(v36 + 4) = v125;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v123;
    *(v36 + 22) = 2080;
    v38 = *(a1 + 9);
    v144 = *(a1 + 8);
    v145 = v38;
    v146 = *(a1 + 10);
    v147 = *(a1 + 176);
    v39 = *(a1 + 5);
    v140 = *(a1 + 4);
    v141 = v39;
    v40 = *(a1 + 7);
    v142 = *(a1 + 6);
    v143 = v40;
    v41 = *(a1 + 1);
    v136 = *a1;
    v137 = v41;
    v42 = *(a1 + 3);
    v138 = *(a1 + 2);
    v139 = v42;
    v43 = String.init<A>(describing:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v134);

    *(v36 + 24) = v45;
    _os_log_impl(&dword_262A43000, v34, v35, "Cam FBI for 0! %llu < %llu & states are %s", v36, 0x20u);
    v46 = __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266730D70](v37, -1, -1, v46);
    MEMORY[0x266730D70](v36, -1, -1);
  }

  (*(v33 + 8))(v23, v126);
  return (*(*v3 + 256))(v119, 0, 0);
}

void SILValidator.validateSwap(now:regionId:indicator:center:frameNumber:opacity:)(unint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, float a7@<S2>)
{
  v114 = a6;
  v115 = a5;
  v119 = a1;
  v113 = a4;
  v109 = type metadata accessor for Logger();
  v111 = *(v109 - 8);
  v12 = MEMORY[0x28223BE20](v109);
  v110 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v108 = &v104 - v14;
  v15 = MEMORY[0x277D85000];
  v16 = (*MEMORY[0x277D85000] & *a2) + 312;
  v17 = *((*MEMORY[0x277D85000] & *a2) + 0x138);
  v18 = a2;
  v120 = v17;
  v121 = v16;
  v19 = v17();
  if (!v19)
  {
    goto LABEL_67;
  }

  v20 = (*(*v19 + 136))(v18, a3);

  v122 = a2;
  v133 = v18;
  v134 = v20;
  *&v136 = v115.n128_u64[0];
  *(&v136 + 1) = v114.n128_u64[0];
  v137 = a7;
  v118 = a3;
  v138 = a3;
  v140 = 0u;
  v141 = 0u;
  v22 = (*v15 & *v18) + 368;
  v23 = *((*v15 & *v18) + 0x170);
  v24 = v23(v21);
  v25 = v15;
  v26 = v117;
  if (v24 & 1) != 0 && ((*(*v117 + 120))(v142), v143 != 2) && (v143 & 1) != 0 || ((*((*v25 & *v18) + 0x178))() & 1) != 0 && ((*(*v26 + 120))(v144), v145 != 2) && (v145 & 1) != 0 || (v106 = v22, v27 = *((*v25 & *v18) + 0x168), v112 = (*v25 & *v18) + 360, (v27()) && ((*(*v26 + 120))(v146), v147 != 2) && (v147)
  {
    v28 = v133;
    v29 = v134;
    v132[0] = *v135;
    *(v132 + 3) = *&v135[3];
    v30 = v136;
    a7 = v137;
    LOWORD(v31) = v138;
    v32 = v139;
    v33 = v140;
    v34 = v141;
LABEL_60:
    v103 = v113;
    *v113 = v28;
    *(v103 + 8) = v29;
    *(v103 + 9) = v132[0];
    *(v103 + 3) = *(v132 + 3);
    *(v103 + 1) = v30;
    *(v103 + 8) = a7;
    *(v103 + 18) = v31;
    *(v103 + 19) = v32;
    *(v103 + 5) = v33;
    *(v103 + 7) = v34;
    return;
  }

  v35 = *v26;
  v107 = v26 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  v36 = (*(v35 + 288))(v119, v18);
  if (a7 > 0.01)
  {
    v37 = v36;
    v105 = v27;
    LODWORD(v7) = *(v26 + 16);
    LODWORD(v8) = *(v26 + 20);
    v38 = v120();
    if (!v38)
    {
      goto LABEL_69;
    }

    v39 = v115.n128_f64[0] / v7;
    v40 = v114.n128_f64[0] / v8;
    v41 = *(v38 + 24);

    v42 = *&v41[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes];

    v43 = *(*v42 + 104);
    if ((v43(v37 & 1, v39, v40) & 1) == 0)
    {
      v104 = v42;
      if ((v37 & 1) == 0)
      {
        v44 = default argument 1 of SILBoundingBoxes.isPositionValid(position:includeDynamicBoundingBoxes:)();
        v45 = v43(v44 & 1, v39, v40);
        if (v45)
        {
          v46 = v23(v45);
          v47 = *(*v26 + 120);
          if (v46)
          {
            v47(v148);
            v48 = v148[2];
            v49 = &v149;
          }

          else
          {
            v47(v150);
            v48 = v150[11];
            v49 = &v151;
          }

          if (*(v49 + 1) << 8 == 512)
          {
            v48 = v119;
          }

          v50 = v119 - v48;
          v51 = v109;
          if (v119 < v48)
          {
            goto LABEL_64;
          }

          v52 = SILLogger.unsafeMutableAddressor();
          (*(v111 + 16))(v108, v52, v51);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 134218496;
            v56 = v114.n128_u64[0];
            *(v55 + 4) = v115.n128_u64[0];
            *(v55 + 12) = 2048;
            *(v55 + 14) = v56;
            *(v55 + 22) = 2048;
            *(v55 + 24) = v50;
            _os_log_impl(&dword_262A43000, v53, v54, "Min time not reach to use dynamic position: (%f, %f) visible time : %llus", v55, 0x20u);
            MEMORY[0x266730D70](v55, -1, -1);
          }

          (*(v111 + 8))(v108, v51);
          swift_beginAccess();
          if ((static SILValidator.DisabledHealthChecks & 1) == 0)
          {
            lazy protocol witness table accessor for type SILError and conformance SILError();
            swift_allocError();
            v58 = 7;
LABEL_31:
            *v57 = v58;
            swift_willThrow();

            outlined destroy of SILValidator.RegionState(&v133);
            return;
          }
        }
      }

      v59 = SILLogger.unsafeMutableAddressor();
      v60 = v110;
      v61 = v111;
      v62 = v109;
      (*(v111 + 16))(v110, v59, v109);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 134218240;
        v66 = v114.n128_u64[0];
        *(v65 + 4) = v115.n128_u64[0];
        *(v65 + 12) = 2048;
        *(v65 + 14) = v66;
        _os_log_impl(&dword_262A43000, v63, v64, "Invalid Position: center: (%f, %f)", v65, 0x16u);
        v67 = v65;
        v60 = v110;
        MEMORY[0x266730D70](v67, -1, -1);
      }

      (*(v61 + 8))(v60, v62);
      swift_beginAccess();
      if ((static SILValidator.DisabledHealthChecks & 2) == 0)
      {
        lazy protocol witness table accessor for type SILError and conformance SILError();
        swift_allocError();
        v58 = 3;
        goto LABEL_31;
      }
    }

    v27 = v105;
  }

  v68 = (v27)(v36);
  if ((v68 & 1) == 0)
  {
    v31 = v118;
LABEL_58:
    v28 = v18;
    v102 = (v120)(v28);
    if (!v102)
    {
      goto LABEL_68;
    }

    v29 = (*(*v102 + 136))(v28, v31);
    outlined destroy of SILValidator.RegionState(&v133);

    *&v30 = v115.n128_u64[0];
    *(&v30 + 1) = v114.n128_u64[0];
    v33 = 0uLL;
    v34 = 0uLL;
    goto LABEL_60;
  }

  v69 = (*(*v26 + 192))(v68);
  v70 = *(v69 + 16);
  if (!v70)
  {
    v117 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v71 = 0;
  v72 = v69 + 32;
  v117 = MEMORY[0x277D84F90];
  v111 = v70 - 1;
  v73 = MEMORY[0x277D85000];
  v112 = v69 + 32;
  do
  {
    v74 = v72 + 72 * v71;
    v75 = v71;
    while (1)
    {
      if (v75 >= *(v69 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      *v130 = *v74;
      v76 = *(v74 + 16);
      v77 = *(v74 + 32);
      v78 = *(v74 + 48);
      *&v130[64] = *(v74 + 64);
      *&v130[32] = v77;
      *&v130[48] = v78;
      *&v130[16] = v76;
      if (*v130)
      {
        break;
      }

LABEL_37:
      ++v75;
      v74 += 72;
      if (v70 == v75)
      {
        goto LABEL_50;
      }
    }

    v79 = v69;
    v80 = *((*v73 & **v130) + 0xA8);
    v126 = *&v130[16];
    v127 = *&v130[32];
    v128 = *&v130[48];
    v129 = *&v130[64];
    v125 = *v130;
    v81 = outlined init with copy of SILValidator.RegionState(&v125, v124);
    v82 = v80(v81);
    v73 = MEMORY[0x277D85000];
    if (v82 != (*((*MEMORY[0x277D85000] & *v18) + 0xA8))(v82))
    {
      outlined destroy of SILValidator.RegionState?(v130, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v69 = v79;
      goto LABEL_37;
    }

    v83 = v117;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v131 = v83;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83[2] + 1, 1);
      v83 = v131;
    }

    v86 = v83[2];
    v85 = v83[3];
    v87 = (v86 + 1);
    if (v86 >= v85 >> 1)
    {
      v117 = (v86 + 1);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
      v87 = v117;
      v83 = v131;
    }

    v71 = v75 + 1;
    v83[2] = v87;
    v117 = v83;
    v88 = &v83[9 * v86];
    *(v88 + 2) = *v130;
    v89 = *&v130[16];
    v90 = *&v130[32];
    v91 = *&v130[48];
    v88[12] = *&v130[64];
    *(v88 + 4) = v90;
    *(v88 + 5) = v91;
    *(v88 + 3) = v89;
    v72 = v112;
    v69 = v79;
  }

  while (v111 != v75);
LABEL_50:
  v116 = v18;

  v92 = v117;
  v122 = v117[2];
  if (!v122)
  {
LABEL_57:

    v31 = v118;
    v18 = v116;
    goto LABEL_58;
  }

  v93 = 0;
  v94 = 4;
  while (v93 < v92[2])
  {
    *v130 = *&v92[v94];
    v95 = *&v92[v94 + 2];
    v96 = *&v92[v94 + 4];
    v97 = *&v92[v94 + 6];
    *&v130[64] = v92[v94 + 8];
    *&v130[32] = v96;
    *&v130[48] = v97;
    *&v130[16] = v95;
    v98 = outlined init with copy of SILBackend?(v130, &v125, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    v99 = (v120)(v98);
    if (!v99)
    {
      goto LABEL_66;
    }

    if (!*v130)
    {
      goto LABEL_65;
    }

    v152 = *v130;
    v153 = *&v130[8];
    v154 = *&v130[24];
    v155 = *&v130[40];
    v156 = *&v130[56];
    v100 = *(*v99 + 128);
    v125 = *v130;
    v127 = *&v130[32];
    v128 = *&v130[48];
    v129 = *&v130[64];
    v126 = *&v130[16];
    outlined init with copy of SILValidator.RegionState(&v125, v124);
    v101 = v123;
    v100(v119, &v152, v118);
    v123 = v101;
    if (v101)
    {

      outlined destroy of SILValidator.RegionState(&v133);
      outlined destroy of SILValidator.RegionState?(v130, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      outlined destroy of SILValidator.RegionState?(v130, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);

      return;
    }

    v93 = (v93 + 1);
    outlined destroy of SILValidator.RegionState?(v130, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);

    outlined destroy of SILValidator.RegionState?(v130, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    v94 += 9;
    v92 = v117;
    if (v122 == v93)
    {
      goto LABEL_57;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

void SILValidator.RegionState.init(now:indicator:center:frameNumber:opacity:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, float a6@<S2>)
{
  v11 = *((*MEMORY[0x277D85000] & *a1) + 0x138);
  v12 = a1;
  v13 = v11();
  if (v13)
  {
    v14 = (*(*v13 + 136))(v12, a2);

    *a3 = v12;
    *(a3 + 8) = v14;
    *(a3 + 16) = a4;
    *(a3 + 24) = a5;
    *(a3 + 32) = a6;
    *(a3 + 36) = a2;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
  }

  else
  {
    __break(1u);
  }
}

void *SILValidator.canUseDynamicBoundingBoxes(now:indicator:)(unint64_t a1, void *a2)
{
  v5 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *a2) + 0x168))())
  {
    return 0;
  }

  v7 = (*((*v5 & *a2) + 0x170))();
  v8 = *(*v2 + 120);
  if (v7)
  {
    result = v8(v13);
    v9 = v13[2];
    v10 = v14;
  }

  else
  {
    result = v8(v13);
    v9 = v14[3];
    v10 = &v15;
  }

  if (*(v10 + 1) << 8 == 512)
  {
    v9 = a1;
  }

  if (a1 >= v9)
  {
    result = (*((*v5 & *a2) + 0x138))(result);
    if (result)
    {
      v11 = result[3];

      v12 = *&v11[OBJC_IVAR____TtC10SILManager14SILConstraints_minStaticLocationDuration];

      return (v12 < UInt64.toSeconds()());
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void SILValidator.clampSwapPosition(indicator:center:)(void *a1, double a2, double a3)
{
  LODWORD(v4) = *(v3 + 16);
  LODWORD(v5) = *(v3 + 20);
  v8 = (*((*MEMORY[0x277D85000] & *a1) + 0x138))();
  if (v8)
  {
    v9 = v4;
    v10 = v5;
    v11 = *(v8 + 24);

    v12 = *&v11[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes];

    v13 = *(v12 + 16);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = a2 / v9;
      v16 = (v13 + 48);
      v17 = 0uLL;
      v18 = INFINITY;
      __asm { FMOV            V2.2D, #0.5 }

      v24 = a3 / v10;
      do
      {
        v25 = vaddq_f64(v16[-1], vmulq_f64(*v16, _Q2));
        v26 = (v15 - *v25.i64) * (v15 - *v25.i64) + (v24 - *&v25.i64[1]) * (v24 - *&v25.i64[1]);
        v27 = vdup_n_s32(v26 < v18);
        v28.i64[0] = v27.u32[0];
        v28.i64[1] = v27.u32[1];
        v17 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v28, 0x3FuLL)), v25, v17);
        if (v26 < v18)
        {
          v18 = (v15 - *v25.i64) * (v15 - *v25.i64) + (v24 - *&v25.i64[1]) * (v24 - *&v25.i64[1]);
        }

        v16 += 2;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SILValidator.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t SILDebugAnimationTracker.animations.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

double SILDebugAnimationTracker.animations.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return result;
}

void SILDebugAnimationTracker.update(_:)(uint64_t *a1)
{
  v2 = v1;
  type metadata accessor for SILIndicatorDesc();
  v4 = *a1;
  if (static SILIndicatorDesc.isCameraIndicator(_:)(*a1))
  {
    v5 = *(*v1 + 96);
    v6 = v5();

    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v8 < 0)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v8 >= v7)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v10 = (v5)(v9);

      v11 = v10[3];
      if (!v11)
      {
LABEL_78:

        __break(1u);
        goto LABEL_79;
      }

      v12 = v11 - 1;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_62;
      }

      if (v12 < 0)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v12 >= v11)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v13 = v10[4] + v12;
      v14 = v10[2];
      if (v13 < v14)
      {
        v14 = 0;
      }

      v15 = BYTE1(v10[9 * (v13 - v14) + 11]);

      if (v15 & 1) != 0 && (*(a1 + 49))
      {
        return;
      }
    }

    else
    {
    }

    v31 = (v5)(v16);

    v32 = *(v31 + 24);

    if (v32 >= 33)
    {
      v34 = (*(*v2 + 112))(v60);
      if (!*(*v33 + 24))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v35 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized Deque._Storage._makeUniqueCopy()();
      }

      v36 = *v35;
      v37 = *(*v35 + 32);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_66;
      }

      v40 = v36[3];
      if (v39 >= v36[2])
      {
        v39 = 0;
      }

      v36[4] = v39;
      if (__OFSUB__(v40, 1))
      {
        goto LABEL_68;
      }

      v36[3] = v40 - 1;
      v34(v60, 0);
    }

    v42 = (*(*v2 + 112))(v60);
    v43 = *(*v41 + 24);
    v44 = v43 + 1;
    if (!__OFADD__(v43, 1))
    {
      v45 = v41;
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_59;
  }

  if (!static SILIndicatorDesc.isMicrophoneIndicator(_:)(v4) || v4 != 1)
  {
    return;
  }

  v17 = *(*v1 + 96);
  v17();
  v19 = v18;

  v20 = *(v19 + 24);
  if (!v20)
  {

LABEL_43:
    (v17)(v30);
    v47 = v46;

    v48 = *(v47 + 24);

    if (v48 >= 33)
    {
      v49 = (*(*v2 + 112))(v60);
      v51 = v50 + 8;
      if (!*(*(v50 + 8) + 24))
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized Deque._Storage._makeUniqueCopy()();
      }

      v52 = *v51;
      v53 = *(*v51 + 32);
      v38 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v38)
      {
        goto LABEL_76;
      }

      v55 = v52[3];
      if (v54 >= v52[2])
      {
        v54 = 0;
      }

      v52[4] = v54;
      if (__OFSUB__(v55, 1))
      {
        goto LABEL_77;
      }

      v52[3] = v55 - 1;
      v49(v60, 0);
    }

    v42 = (*(*v2 + 112))(v60);
    v45 = (v56 + 8);
    v57 = *(*(v56 + 8) + 24);
    v44 = v57 + 1;
    if (!__OFADD__(v57, 1))
    {
LABEL_53:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *v45;
      if (*(*v45 + 16) < v44 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(isUniquelyReferenced_nonNull_native, v44, 0);
        v59 = *v45;
      }

      specialized closure #1 in Deque.append(_:)((v59 + 16), v59 + 40, a1);
      v42(v60, 0);
      return;
    }

    goto LABEL_67;
  }

  v21 = v20 - 1;
  if (__OFSUB__(v20, 1))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v21 < 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v21 >= v20)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  (v17)(v22);
  v24 = v23;

  v25 = v24[3];
  if (!v25)
  {
LABEL_79:

    __break(1u);
    return;
  }

  v26 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    goto LABEL_72;
  }

  if (v26 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v26 >= v25)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v27 = v24[4] + v26;
  v28 = v24[2];
  if (v27 < v28)
  {
    v28 = 0;
  }

  v29 = BYTE1(v24[9 * (v27 - v28) + 11]);

  if ((v29 & 1) == 0 || (*(a1 + 49) & 1) == 0)
  {
    goto LABEL_43;
  }
}

uint64_t SILDebugAnimationTracker.updateRegionStates(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_262A998C0;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  v48 = v7;
  *(v7 + 34) = 0;
  v9 = *(a1 + 16);
  if (!v9)
  {
    v35 = 3;
LABEL_27:
    for (i = 0; i != v35; ++i)
    {
      if ((*(v8 + i) & 1) == 0)
      {
        v37 = static UInt64.now()();
        v38 = static UInt64.now()();
        *v59 = i;
        *&v59[8] = 0;
        *&v59[12] = 0;
        *&v59[24] = 0;
        v60 = v37;
        LOWORD(v61) = 280;
        *(&v61 + 1) = v38;
        LOBYTE(v62) = 0;
        (*(*v4 + 120))(v59);
      }
    }
  }

  v41 = v7 + 32;
  v42 = v4;
  v10 = a1 + 32;
  v49 = a2;
  do
  {
    v11 = *(v10 + 48);
    v56 = *(v10 + 32);
    v57 = v11;
    v58 = *(v10 + 64);
    v12 = *(v10 + 16);
    v55[0] = *v10;
    v55[1] = v12;
    *v59 = v55[0];
    *&v59[16] = v12;
    v60 = v56;
    v61 = v11;
    v62 = v58;
    v13 = *&v55[0];
    if (!*&v55[0])
    {
      outlined init with copy of SILBackend?(v55, v53, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      goto LABEL_4;
    }

    v14 = v60;
    v50 = WORD2(v60);
    type metadata accessor for SILIndicatorDesc();
    v15 = *((*MEMORY[0x277D85000] & *v13) + 0xA8);
    outlined init with copy of SILBackend?(v59, v53, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    outlined init with copy of SILBackend?(v59, v53, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    v16 = outlined init with copy of SILBackend?(v55, v53, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    v17 = (v15)(v16);
    if (!static SILIndicatorDesc.isCameraIndicator(_:)(v17))
    {
      v18 = v15();
      if (!static SILIndicatorDesc.isMicrophoneIndicator(_:)(v18))
      {
LABEL_23:
        outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
        outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);

        goto LABEL_4;
      }
    }

    v19 = v15();
    if (static SILIndicatorDesc.isCameraIndicator(_:)(v19))
    {
      v20 = *(v49 + 64);
      if ((v20 & 0xFF00) == 0x200)
      {
        goto LABEL_17;
      }

      *(&v52 + 1) = &type metadata for SILValidator.IndicatorState;
      v21 = swift_allocObject();
      *&v51 = v21;
      v22 = *(v49 + 16);
      *(v21 + 16) = *v49;
      *(v21 + 32) = v22;
      v23 = *(v49 + 32);
      v24 = *(v49 + 48);
LABEL_14:
      *(v21 + 48) = v23;
      *(v21 + 64) = v24;
      *(v21 + 80) = v20;
      goto LABEL_19;
    }

    if (static SILIndicatorDesc.isMicrophoneIndicator(_:)(v19))
    {
      v20 = *(v49 + 136);
      if ((v20 & 0xFF00) == 0x200)
      {
        goto LABEL_17;
      }

      *(&v52 + 1) = &type metadata for SILValidator.IndicatorState;
      v21 = swift_allocObject();
      *&v51 = v21;
      v25 = *(v49 + 88);
      *(v21 + 16) = *(v49 + 72);
      *(v21 + 32) = v25;
      v23 = *(v49 + 104);
      v24 = *(v49 + 120);
      goto LABEL_14;
    }

    v26 = *(v49 + 176);
    if (v26 == 2)
    {
LABEL_17:
      outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);

      v51 = 0u;
      v52 = 0u;
      outlined destroy of SILValidator.RegionState?(&v51, &_sypSgMd, &_sypSgMR);
      goto LABEL_4;
    }

    *(&v52 + 1) = &type metadata for SILValidator.FaceIDState;
    v27 = swift_allocObject();
    *&v51 = v27;
    v28 = *(v49 + 160);
    *(v27 + 16) = *(v49 + 144);
    *(v27 + 32) = v28;
    *(v27 + 48) = v26;
LABEL_19:
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v45 = v53[0];
    v47 = v53[4];
    v46 = v54;
    v29 = v13;
    v44 = v15();
    outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    v43 = *((*MEMORY[0x277D85000] & *v29) + 0xF8);
    v30 = *v59;
    v31 = v43(v50);
    outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    v63 = v44;
    v64 = v50;
    v65 = v31;
    v66 = v14;
    v67 = v45;
    v68 = a4;
    v69 = a3;
    v70 = 24;
    v71 = v47;
    v72 = v46;
    v32 = (*(*v42 + 120))(&v63);
    v33 = (v15)(v32);
    outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    result = outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    if (v33 >= *(v48 + 16))
    {
      goto LABEL_32;
    }

    *(v41 + v33) = 1;
LABEL_4:
    v10 += 72;
    --v9;
  }

  while (v9);
  v35 = *(v48 + 16);
  v8 = v41;
  v4 = v42;
  if (v35)
  {
    goto LABEL_27;
  }
}

void SILDebugAnimationTracker.updateError(_:_:_:error:_:)(uint64_t a1, __int128 *a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = a2[1];
  v7 = a2[3];
  v48 = a2[2];
  v49 = v7;
  v50 = *(a2 + 8);
  v46 = *a2;
  v47 = v6;
  v8 = *a2;
  if (*a2 && a4 != 24)
  {
    v28 = v5;
    v11 = *(a2 + 8);
    v12 = *(a2 + 18);
    type metadata accessor for SILIndicatorDesc();
    v13 = MEMORY[0x277D85000];
    v14 = *((*MEMORY[0x277D85000] & *v8) + 0xA8);
    v45 = *(a2 + 8);
    v15 = a2[3];
    v44[2] = a2[2];
    v44[3] = v15;
    v16 = a2[1];
    v44[0] = *a2;
    v44[1] = v16;
    outlined init with copy of SILBackend?(a2, v42, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    v17 = outlined init with copy of SILValidator.RegionState(v44, v42);
    v18 = (v14)(v17);
    if (static SILIndicatorDesc.isCameraIndicator(_:)(v18) || (v19 = v14(), static SILIndicatorDesc.isMicrophoneIndicator(_:)(v19)))
    {
      v40[2] = v48;
      v40[3] = v49;
      v41 = v50;
      v40[0] = v46;
      v40[1] = v47;
      v20 = outlined init with copy of SILValidator.RegionState(v40, v42);
      v21 = (v14)(v20);
      v22 = *((*v13 & *v8) + 0xF8);
      v43 = v50;
      v42[2] = v48;
      v42[3] = v49;
      v42[0] = v46;
      v42[1] = v47;
      outlined init with copy of SILValidator.RegionState(v42, &v29);
      v23 = v22(v12);
      outlined destroy of SILValidator.RegionState?(a2, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v24 = static UInt64.now()();
      outlined destroy of SILValidator.RegionState?(a2, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v29 = v21;
      v30 = v12;
      v31 = v23;
      v32 = v11;
      v33 = 0;
      v34 = a5;
      v35 = a3;
      v36 = a4;
      v37 = 0;
      v38 = v24;
      v39 = 0;
      (*(*v28 + 120))(&v29);
      outlined destroy of SILValidator.RegionState?(a2, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v25 = a2;
    }

    else
    {
      outlined destroy of SILValidator.RegionState?(a2, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v25 = a2;
    }

    outlined destroy of SILValidator.RegionState?(v25, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
  }
}

uint64_t SILDebugAnimationTracker.printAnimations(animationDeque:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v80 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v83 = &v79 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v82 = &v79 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v85 = &v79 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v79 - v12;
  v14 = SILLogger.unsafeMutableAddressor();
  v15 = v3;
  v16 = *(v3 + 16);
  v88 = v14;
  v89 = v3 + 16;
  v87 = v16;
  (v16)(v13);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  v19 = os_log_type_enabled(v17, v18);
  v93 = v2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_262A43000, v17, v18, "------", v20, 2u);
    v21 = v20;
    v2 = v93;
    MEMORY[0x266730D70](v21, -1, -1);
  }

  v22 = *(v15 + 8);
  v90 = v15 + 8;
  v86 = v22;
  v22(v13, v2);
  v23 = a1[4];
  if (a1[2] >= a1[3] + v23)
  {
    v24 = a1[3] + v23;
  }

  else
  {
    v24 = a1[2];
  }

  v97 = a1;
  v98 = v23;
  v99 = v24;

  *&v25 = 136315394;
  v81 = v25;
  *&v25 = 136316930;
  v84 = v25;
  while (v23 != v24)
  {
    v28 = v97;
LABEL_14:
    v29 = v98;
    v94 = ++v98;
    v30 = &v28[9 * v29];
    v31 = v30[5];
    v32 = *(v30 + 24);
    v34 = *(v30 + 13);
    v33 = *(v30 + 14);
    v36 = v30[8];
    v35 = v30[9];
    v37 = v30[10];
    v38 = *(v30 + 88);
    v39 = *(v30 + 89);
    v91 = *(v30 + 104);
    v92 = v35;
    v40 = Log.unsafeMutableAddressor();
    swift_beginAccess();
    v41 = *(**v40 + 152);

    v42 = v41(v31);
    v44 = v43;

    if (v38 == 24)
    {
      v2 = v93;
      if (v39)
      {
        v45 = v82;
        v87(v82, v88, v93);

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v96 = v49;
          *v48 = v81;
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v96);

          *(v48 + 4) = v50;
          *(v48 + 12) = 2048;
          *(v48 + 14) = v92;
          _os_log_impl(&dword_262A43000, v46, v47, "Anim: [%s] .... REMOVED .... %llu", v48, 0x16u);
          v51 = __swift_destroy_boxed_opaque_existential_1Tm(v49);
          v52 = v49;
          v2 = v93;
          MEMORY[0x266730D70](v52, -1, -1, v51);
          v53 = v48;
          goto LABEL_22;
        }

LABEL_7:
      }

      else
      {
        v45 = v83;
        v87(v83, v88, v93);

        v46 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v46, v66))
        {
          goto LABEL_7;
        }

        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v96 = v68;
        *v67 = v84;
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v96);

        *(v67 + 4) = v69;
        *(v67 + 12) = 2048;
        *(v67 + 14) = v37;
        *(v67 + 22) = 512;
        *(v67 + 24) = v32;
        *(v67 + 26) = 2048;
        *(v67 + 28) = v34;
        *(v67 + 36) = 2048;
        *(v67 + 38) = v33;
        *(v67 + 46) = 2048;
        *(v67 + 48) = v36;
        *(v67 + 56) = 2048;
        v70 = v91;
        *(v67 + 58) = v92;
        *(v67 + 66) = 2080;
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(qword_262A99E10[v70], 0xE100000000000000, &v96);

        *(v67 + 68) = v71;
        _os_log_impl(&dword_262A43000, v46, v66, "Anim: [%s] (%llu) %hu, %f, %f, %ld, %llu, state:%s", v67, 0x4Cu);
        swift_arrayDestroy();
        v72 = v68;
        v2 = v93;
        MEMORY[0x266730D70](v72, -1, -1);
        v53 = v67;
LABEL_22:
        MEMORY[0x266730D70](v53, -1, -1);
      }

      v26 = v45;
      goto LABEL_9;
    }

    v54 = v85;
    v2 = v93;
    v87(v85, v88, v93);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v96 = v58;
      *v57 = v84;
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v96);

      *(v57 + 4) = v59;
      *(v57 + 12) = 2080;
      v95 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager8SILErrorOSgMd, &_s10SILManager8SILErrorOSgMR);
      v60 = Optional.debugDescription.getter();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v96);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      *(v57 + 24) = v37;
      *(v57 + 32) = 2048;
      *(v57 + 34) = v34;
      *(v57 + 42) = 2048;
      *(v57 + 44) = v33;
      *(v57 + 52) = 2048;
      *(v57 + 54) = v36;
      *(v57 + 62) = 2048;
      v63 = v91;
      *(v57 + 64) = v92;
      *(v57 + 72) = 2080;
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(qword_262A99E10[v63], 0xE100000000000000, &v96);

      *(v57 + 74) = v64;
      _os_log_impl(&dword_262A43000, v55, v56, "Anim: [%s] ERROR! %s (%llu), %f, %f, %ld, %llu, state: %s", v57, 0x52u);
      swift_arrayDestroy();
      MEMORY[0x266730D70](v58, -1, -1);
      v65 = v57;
      v2 = v93;
      MEMORY[0x266730D70](v65, -1, -1);

      v26 = v85;
    }

    else
    {

      v26 = v54;
    }

LABEL_9:
    v86(v26, v2);
    v24 = v99;
    v23 = v94;
  }

  v27 = specialized Deque.Iterator._swapSegment()();
  v28 = v97;
  if (v27)
  {
    goto LABEL_14;
  }

  v73 = v80;
  v87(v80, v88, v2);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_262A43000, v74, v75, "-----", v77, 2u);
    MEMORY[0x266730D70](v77, -1, -1);
  }

  return (v86)(v73, v2);
}

Swift::Void __swiftcall SILDebugAnimationTracker.print()()
{
  v1 = *(*v0 + 96);
  v2 = v1();

  v3 = *(*v0 + 144);
  v3(v2);

  (v1)(v4);
  v6 = v5;

  v3(v6);
}

uint64_t SILDebugAnimationTracker.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySb5dirty_10SILManager12SILValidatorC11RegionStateVSgtGMd, &_ss23_ContiguousArrayStorageCySb5dirty_10SILManager12SILValidatorC11RegionStateVSgtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager12SILValidatorC11RegionStateVSgGMd, &_ss23_ContiguousArrayStorageCy10SILManager12SILValidatorC11RegionStateVSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager13SILFileHandle_pGMd, &_ss23_ContiguousArrayStorageCy10SILManager13SILFileHandle_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13SILFileHandle_pMd, &_s10SILManager13SILFileHandle_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager13IOSurfaceLike_pSgGMd, &_ss23_ContiguousArrayStorageCy10SILManager13IOSurfaceLike_pSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pSgMd, &_s10SILManager13IOSurfaceLike_pSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectV_SbtGMd, &_ss23_ContiguousArrayStorageCySo6CGRectV_SbtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySrys5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySrys5UInt8VGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager11SILRendererC6RegionC11PageContentVGMd, &_ss23_ContiguousArrayStorageCy10SILManager11SILRendererC6RegionC11PageContentVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, "^U");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySb5dirty_10SILManager12SILValidatorC11RegionStateVSgtGMd, &_ss23_ContiguousArrayStorageCySb5dirty_10SILManager12SILValidatorC11RegionStateVSgtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager12SILValidatorC11RegionStateVSgGMd, &_ss23_ContiguousArrayStorageCy10SILManager12SILValidatorC11RegionStateVSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager13SILFileHandle_pGMd, &_ss23_ContiguousArrayStorageCy10SILManager13SILFileHandle_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13SILFileHandle_pMd, &_s10SILManager13SILFileHandle_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_10SILManager13SILCursorDescC5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_10SILManager13SILCursorDescC5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10SILManager13SILCursorDescC5valuetMd, &_sSS3key_10SILManager13SILCursorDescC5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager13IOSurfaceLike_pSgGMd, &_ss23_ContiguousArrayStorageCy10SILManager13IOSurfaceLike_pSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pSgMd, &_s10SILManager13IOSurfaceLike_pSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void specialized Deque._Storage._makeUniqueCopy()()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy10SILManager24SILDebugAnimationTrackerC14AnimPropertiesVGMd, "nh");
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    specialized closure #2 in Deque._UnsafeHandle.copyElements()(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
}

void specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(char a1, Swift::Int to, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= to)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy10SILManager24SILDebugAnimationTrackerC14AnimPropertiesVGMd, "nh");
    v9 = swift_allocObject();
    v10 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    if (v10 >= 1)
    {
      specialized closure #2 in Deque._UnsafeHandle.copyElements()(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    Deque._Storage._growCapacity(to:linearly:)(to, a3 & 1);
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy10SILManager24SILDebugAnimationTrackerC14AnimPropertiesVGMd, "nh");
      v9 = swift_allocObject();
      *(v9 + 16) = (_swift_stdlib_malloc_size(v9) - 40) / 72;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        specialized closure #2 in Deque._UnsafeHandle.moveElements(minimumCapacity:)(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy10SILManager24SILDebugAnimationTrackerC14AnimPropertiesVGMd, "nh");
      v9 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v9);
      v12 = *(v4 + 24);
      *(v9 + 16) = (v11 - 40) / 72;
      *(v9 + 24) = v12;
      *(v9 + 32) = 0;
      if (v12 >= 1)
      {
        specialized closure #2 in Deque._UnsafeHandle.copyElements(minimumCapacity:)(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
}

void *specialized closure #1 in Deque.append(_:)(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v6 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v6)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        v7 = a2 + 72 * v5;
        *(v7 + 64) = *(a3 + 64);
        v8 = *(a3 + 48);
        *(v7 + 32) = *(a3 + 32);
        *(v7 + 48) = v8;
        v9 = *(a3 + 16);
        *v7 = *a3;
        *(v7 + 16) = v9;
        v10 = result[1];
        v6 = __OFADD__(v10, 1);
        v11 = v10 + 1;
        if (!v6)
        {
          result[1] = v11;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void specialized closure #2 in Deque._UnsafeHandle.moveElements(minimumCapacity:)(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[72 * v4];
  if (v12 != __dst || &v12[72 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 72 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[72 * v8];
  v17 = 72 * v7;
  if (v16 != v11 || v16 >= &v11[v17])
  {

    memmove(v16, v11, v17);
  }
}

void specialized closure #2 in Deque._UnsafeHandle.copyElements(minimumCapacity:)(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = 72 * v9;
  memcpy(__dst, &__src[72 * v4], 72 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[v11], v10, 72 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void specialized closure #2 in Deque._UnsafeHandle.copyElements()(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[72 * v4], &__src[72 * v4], 72 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 72 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t specialized Deque.Iterator._swapSegment()()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC10SILManager12SILValidatorC11RegionStateVSg_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = *v3;
    v7 = *(v3 + 32);
    v6 = *(v3 + 48);
    v8 = *(v3 + 16);
    *(v4 + 96) = *(v3 + 64);
    *(v4 + 64) = v7;
    *(v4 + 80) = v6;
    *(v4 + 48) = v8;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = v4 + 104;
      do
      {
        outlined init with copy of SILBackend?(v3, v14, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
        *v10 = *v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 32);
        v13 = *(v3 + 48);
        *(v10 + 64) = *(v3 + 64);
        *(v10 + 32) = v12;
        *(v10 + 48) = v13;
        *(v10 + 16) = v11;
        v10 += 72;
        --v9;
      }

      while (v9);
    }

    outlined init with copy of SILBackend?(v3, v14, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
    return v5;
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSb_10SILManager12SILValidatorC11RegionStateVSgt_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  v16[0] = *result;
  *&v16[8] = *(result + 8);
  *&v16[24] = *(result + 24);
  *&v16[40] = *(result + 40);
  *&v16[56] = *(result + 56);
  *&v16[72] = v2;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    v6 = *&v16[16];
    *(v4 + 32) = *v16;
    v8 = *&v16[48];
    v7 = *&v16[64];
    v9 = *&v16[32];
    *(v4 + 48) = v6;
    *(v4 + 64) = v9;
    *(v4 + 80) = v8;
    *(v4 + 96) = v7;
    v10 = a2 - 1;
    if (a2 != 1)
    {
      v11 = (v4 + 112);
      do
      {
        outlined init with copy of SILBackend?(v16, v15, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMR);
        *v11 = *v16;
        v12 = *&v16[16];
        v13 = *&v16[32];
        v14 = *&v16[64];
        v11[3] = *&v16[48];
        v11[4] = v14;
        v11[1] = v12;
        v11[2] = v13;
        v11 += 5;
        --v10;
      }

      while (v10);
    }

    outlined init with copy of SILBackend?(v16, v15, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMd, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMR);
    return v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
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

id *specialized static SILValidator.frameSteady(_:_:_:)(void *a1, uint64_t a2, float a3)
{
  if (*(a1 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook))
  {
    result = (*((*MEMORY[0x277D85000] & *a1) + 0x138))(a3);
    if (result)
    {
      v5 = (*(*result + 15))(a2);

      return (v5 & 1);
    }

    __break(1u);
    goto LABEL_14;
  }

  v7 = *(*(a1 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer) + 28 * a2 + 4);
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0x138);
  result = v8();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result[3];

  v10 = *&v9[OBJC_IVAR____TtC10SILManager14SILConstraints_steadyFrames];

  if (v10 <= v7)
  {
    result = v8();
    if (!result)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v12 = result[3];

    v13 = *&v12[OBJC_IVAR____TtC10SILManager14SILConstraints_steadyFrames + 4];

    v11 = v7 <= v13;
  }

  else
  {
    v11 = 0;
  }

  result = v8();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = result[3];

  v15 = *&v14[OBJC_IVAR____TtC10SILManager14SILConstraints_steadyOpacity];

  if (v15 <= a3)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined destroy of SILValidator.RegionState?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SILError and conformance SILError()
{
  result = lazy protocol witness table cache variable for type SILError and conformance SILError;
  if (!lazy protocol witness table cache variable for type SILError and conformance SILError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILError and conformance SILError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILError and conformance SILError;
  if (!lazy protocol witness table cache variable for type SILError and conformance SILError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILError and conformance SILError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILError and conformance SILError;
  if (!lazy protocol witness table cache variable for type SILError and conformance SILError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILError and conformance SILError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions()
{
  result = lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions;
  if (!lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions;
  if (!lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions;
  if (!lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions;
  if (!lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SILValidator.FBITriggeredType and conformance SILValidator.FBITriggeredType()
{
  result = lazy protocol witness table cache variable for type SILValidator.FBITriggeredType and conformance SILValidator.FBITriggeredType;
  if (!lazy protocol witness table cache variable for type SILValidator.FBITriggeredType and conformance SILValidator.FBITriggeredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.FBITriggeredType and conformance SILValidator.FBITriggeredType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.SILValidationErrors(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SILValidator.SILValidationErrors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.IndicatorState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.IndicatorState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.IndicatorState.AnimationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.IndicatorState.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for SILValidator.IndicatorState.AnimationState(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for SILValidator.IndicatorState.AnimationState(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.FaceIDState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.FaceIDState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.IndicatorStates(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 177))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 65);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.IndicatorStates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.FBITriggeredType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.FBITriggeredType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.RegionState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.RegionState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILDebugAnimationTracker.AnimProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SILDebugAnimationTracker.AnimProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for CGPoint(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of SILBackend?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

Swift::Int __swiftcall scaleDimension(dim:scale:)(Swift::Int dim, Swift::Float scale)
{
  v2 = dim * scale;
  v3 = floorf(v2);
  v4 = ceilf(v2);
  if (v2 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 < 9.2234e18)
  {
    return v5;
  }

LABEL_10:
  __break(1u);
  return dim;
}

void *FrameDesc.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager9FrameDescC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10SILManager9FrameDescC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for FrameDesc();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = 0;
    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_dataOffset] = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = 1;
    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_dataSize] = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_time] = v10;
    v22 = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_size] = v11;
    v22 = 9;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v12 & 0x10000) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetX] = v13;
    v22 = 10;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v14 & 0x10000) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetY] = v15;
    v22 = 4;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = *&v16;
    if ((v16 & 0x100000000) != 0)
    {
      v17 = 0.0;
    }

    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_blur] = v17;
    v22 = 5;
    v3[OBJC_IVAR____TtC10SILManager9FrameDesc_unnoticeable] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v22 = 6;
    v3[OBJC_IVAR____TtC10SILManager9FrameDesc_skipEic] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v22 = 7;
    v3[OBJC_IVAR____TtC10SILManager9FrameDesc_insecure] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v22 = 8;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v3[OBJC_IVAR____TtC10SILManager9FrameDesc_delayed] = v19 & 1;
    v20 = type metadata accessor for FrameDesc();
    v21.receiver = v3;
    v21.super_class = v20;
    v9 = objc_msgSendSuper2(&v21, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t lazy protocol witness table accessor for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys);
  }

  return result;
}

id FrameDesc.init()()
{
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_dataOffset] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_dataSize] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_time] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_size] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_blur] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetX] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetY] = 0;
  v0[OBJC_IVAR____TtC10SILManager9FrameDesc_unnoticeable] = 0;
  v0[OBJC_IVAR____TtC10SILManager9FrameDesc_skipEic] = 0;
  v0[OBJC_IVAR____TtC10SILManager9FrameDesc_insecure] = 0;
  v0[OBJC_IVAR____TtC10SILManager9FrameDesc_delayed] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FrameDesc();
  return objc_msgSendSuper2(&v2, sel_init);
}

void __swiftcall FrameDesc.getSILFrameDesc()(SILFrameDesc *__return_ptr retstr)
{
  v2 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_size);
  v3 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_blur);
  v4 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetX);
  v5 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetY);
  v6 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_dataOffset);
  v7 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_dataSize);
  v8 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_unnoticeable);
  v9 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_skipEic);
  v10 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_insecure);
  v11 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_delayed);
  retstr->var0 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_time);
  retstr->var1 = v2;
  retstr->var2 = v3;
  retstr->var3 = v4;
  retstr->var4 = v5;
  retstr->var5 = v6;
  retstr->var6 = v7;
  retstr->var7 = v8;
  retstr->var8 = v9;
  retstr->var9 = v10;
  retstr->var10 = v11;
}

uint64_t FrameDesc.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x7366664F61746164;
    v6 = 1701669236;
    v7 = 1702521203;
    if (a1 != 3)
    {
      v7 = 1920298082;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x657A695361746164;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x646579616C6564;
    if (a1 != 8)
    {
      v1 = 0x657366664F736F70;
    }

    v2 = 0x656369746F6E6E75;
    v3 = 0x63694570696B73;
    if (a1 != 6)
    {
      v3 = 0x6572756365736E69;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FrameDesc.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FrameDesc.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FrameDesc.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x8000000262A9E150;
    v13 = 0xD000000000000013;
    if (a1 != 2)
    {
      v13 = 0x7246796461657473;
      v12 = 0xEF657A6953656D61;
    }

    v14 = 0x676E69646E756F62;
    if (a1)
    {
      v11 = 0xED00007365786F42;
    }

    else
    {
      v14 = 0x73656369766564;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xD000000000000015;
    v4 = 0x8000000262A9E1B0;
    v5 = 0x8000000262A9E1D0;
    v6 = 0x704F796461657473;
    if (a1 == 7)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xED00007974696361;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x8000000262A9E180;
    v8 = 0xD000000000000019;
    if (a1 != 4)
    {
      v8 = 0x6B6361626C6C6166;
      v7 = 0xEC0000006F666E49;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v16 = 0x8000000262A9E150;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v16 = 0xEF657A6953656D61;
        if (v9 != 0x7246796461657473)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      if (a2)
      {
        v17 = 0x676E69646E756F62;
        v18 = 0x7365786F42;
        goto LABEL_48;
      }

      v16 = 0xE700000000000000;
      if (v9 != 0x73656369766564)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = "timeToSteadyAsSeconds";
LABEL_42:
        v16 = (v15 - 32) | 0x8000000000000000;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      if (a2 == 7)
      {
        v15 = "timeAsSteadyAsSeconds";
        goto LABEL_42;
      }

      v17 = 0x704F796461657473;
      v18 = 0x7974696361;
LABEL_48:
      v16 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      if (v9 != v17)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    if (a2 == 4)
    {
      v16 = 0x8000000262A9E180;
      if (v9 != 0xD000000000000019)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v16 = 0xEC0000006F666E49;
      if (v9 != 0x6B6361626C6C6166)
      {
LABEL_53:
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_54;
      }
    }
  }

LABEL_51:
  if (v10 != v16)
  {
    goto LABEL_53;
  }

  v19 = 1;
LABEL_54:

  return v19 & 1;
}

{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x7954726F73727563;
  v5 = 0xEA00000000006570;
  if (a1 != 5)
  {
    v4 = 0xD000000000000017;
    v5 = 0x8000000262A9E260;
  }

  v6 = 0x74616D726F66;
  if (a1 != 3)
  {
    v6 = 0x74657366666FLL;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = 0xE600000000000000;
  }

  v7 = 2020896616;
  if (a1 != 1)
  {
    v7 = 2037673832;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v7 = 0x656C616373;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v10 = 0xE400000000000000;
      if (a2 == 1)
      {
        if (v8 != 2020896616)
        {
          goto LABEL_39;
        }
      }

      else if (v8 != 2037673832)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0xE500000000000000;
      if (v8 != 0x656C616373)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v10 = 0xEA00000000006570;
      if (v8 != 0x7954726F73727563)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0x8000000262A9E260;
      if (v8 != 0xD000000000000017)
      {
LABEL_39:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v10 = 0xE600000000000000;
    if (a2 == 3)
    {
      if (v8 != 0x74616D726F66)
      {
        goto LABEL_39;
      }
    }

    else if (v8 != 0x74657366666FLL)
    {
      goto LABEL_39;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_39;
  }

  v11 = 1;
LABEL_40:

  return v11 & 1;
}

{
  v2 = 1701667182;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6B6F6F6270696C66;
  if (a1 != 6)
  {
    v6 = 0x6F666E4972657375;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73656D617266;
  if (a1 != 4)
  {
    v8 = 0x656D614E626F6C62;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7499842;
  if (a1 != 2)
  {
    v10 = 0x746E65747865;
    v9 = 0xE600000000000000;
  }

  v11 = 1701869940;
  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v11 = 1701667182;
  }

  if (a1 > 1u)
  {
    v4 = v9;
  }

  else
  {
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v3 <= 3)
  {
    v13 = v4;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v14 = 0xE800000000000000;
      if (a2 == 6)
      {
        if (v12 != 0x6B6F6F6270696C66)
        {
          goto LABEL_43;
        }
      }

      else if (v12 != 0x6F666E4972657375)
      {
        goto LABEL_43;
      }
    }

    else if (a2 == 4)
    {
      v14 = 0xE600000000000000;
      if (v12 != 0x73656D617266)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v14 = 0xE800000000000000;
      if (v12 != 0x656D614E626F6C62)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE300000000000000;
        if (v12 != 7499842)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v14 = 0xE600000000000000;
      v2 = 0x746E65747865;
    }

    else
    {
      v14 = 0xE400000000000000;
      if (a2)
      {
        if (v12 != 1701869940)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }
    }

    if (v12 != v2)
    {
LABEL_43:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v13 != v14)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

{
  v2 = 0xE900000000000065;
  v3 = 0xE90000000000006DLL;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x6E6F6D6D6F43;
  if (a1 != 6)
  {
    v6 = 0x69746164696C6156;
    v5 = 0xEA00000000006E6FLL;
  }

  v7 = 0x65646E65524C4953;
  v8 = 0xEB00000000726572;
  if (a1 != 4)
  {
    v7 = 0x646E656B636142;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x6361667275535845;
  if (a1 == 2)
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v9 = 0x6F4C617461445845;
    v10 = 0xEC00000072656461;
  }

  v11 = 0x616C707369445845;
  if (a1)
  {
    v3 = 0xE900000000000079;
  }

  else
  {
    v11 = 0x6165627468676954;
  }

  if (a1 > 1u)
  {
    v3 = v10;
  }

  else
  {
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 3)
  {
    v13 = v3;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE600000000000000;
        if (v12 != 0x6E6F6D6D6F43)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v2 = 0xEA00000000006E6FLL;
        if (v12 != 0x69746164696C6156)
        {
LABEL_46:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEB00000000726572;
      if (v12 != 0x65646E65524C4953)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (v12 != 0x646E656B636142)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (v12 != 0x6361667275535845)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0xEC00000072656461;
      if (v12 != 0x6F4C617461445845)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2)
  {
    v2 = 0xE900000000000079;
    if (v12 != 0x616C707369445845)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v2 = 0xE90000000000006DLL;
    if (v12 != 0x6165627468676954)
    {
      goto LABEL_46;
    }
  }

  if (v13 != v2)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FrameDesc.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FrameDesc.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FrameDesc.CodingKeys(uint64_t a1)
{
  FrameDesc.CodingKeys.rawValue.getter(*v1);
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FrameDesc.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  FrameDesc.CodingKeys.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FrameDesc.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FrameDesc.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FrameDesc.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = FrameDesc.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance FrameDesc.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized FrameDesc.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FrameDesc.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FrameDesc.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance FrameDesc@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SILBoundingBoxes.__allocating_init(values:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SILBoundingBoxes.init(values:)(a1);
  return v2;
}

uint64_t SILBoundingBoxes.init(values:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  if (!a1)
  {
    goto LABEL_35;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {

LABEL_35:
    *(v1 + 16) = &outlined read-only object #0 of SILBoundingBoxes.init(values:);
    *(v1 + 24) = v2;
    return v1;
  }

  v57 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = 0;
  v6 = v57;
  do
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v7 = *(a1 + 8 * v5 + 32);

    if (!*(v7 + 16))
    {
      goto LABEL_65;
    }

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(88, 0xE100000000000000);
    if ((v9 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_67;
    }

    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(89, 0xE100000000000000);
    if ((v12 & 1) == 0)
    {
      goto LABEL_68;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_69;
    }

    v13 = *(*(v7 + 56) + 8 * v11);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x6874646957, 0xE500000000000000);
    if ((v15 & 1) == 0)
    {
      goto LABEL_70;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_71;
    }

    v16 = *(*(v7 + 56) + 8 * v14);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x746867696548, 0xE600000000000000);
    if ((v18 & 1) == 0)
    {
      goto LABEL_72;
    }

    v19 = *(*(v7 + 56) + 8 * v17);
    if (*(v7 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0x63696D616E7964, 0xE700000000000000), (v20 & 1) != 0))
    {
      if (!*(v7 + 16))
      {
        goto LABEL_73;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x63696D616E7964, 0xE700000000000000);
      if ((v22 & 1) == 0)
      {
        goto LABEL_74;
      }

      v23 = *(*(v7 + 56) + 8 * v21) > 0.0;
    }

    else
    {
      v23 = 0;
    }

    v25 = *(v57 + 16);
    v24 = *(v57 + 24);
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
    }

    ++v5;
    *(v57 + 16) = v25 + 1;
    v26 = v57 + 40 * v25;
    *(v26 + 32) = v10;
    *(v26 + 40) = v13;
    *(v26 + 48) = v16;
    *(v26 + 56) = v19;
    *(v26 + 64) = v23;
  }

  while (v4 != v5);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_23;
  }

LABEL_75:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
  v6 = result;
LABEL_23:
  v1 = v54;
  v28 = *(v6 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = v6 + 32;
LABEL_25:
    v31 = v30 + 40 * v29;
    v32 = v29;
    while (*(v31 + 32) != 1)
    {
      ++v32;
      v31 += 40;
      if (v32 >= v28)
      {
        if (v28 <= v29 + 1)
        {
          v32 = v29 + 1;
        }

        else
        {
          v32 = v28;
        }

        goto LABEL_39;
      }
    }

    v33 = v30 + 40 * v28;
    while (v32 < --v28)
    {
      v34 = *(v33 - 8);
      v33 -= 40;
      if ((v34 & 1) == 0)
      {
        v35 = *v31;
        v36 = *(v31 + 16);
        v37 = *(v33 + 32);
        v38 = *(v33 + 16);
        *v31 = *v33;
        *(v31 + 16) = v38;
        *(v31 + 32) = v37;
        *v33 = v35;
        *(v33 + 16) = v36;
        v29 = v32 + 1;
        *(v33 + 32) = 1;
        if (v32 + 1 < v28)
        {
          goto LABEL_25;
        }

        ++v32;
        break;
      }
    }

LABEL_39:
    if (v32 < 0)
    {
      __break(1u);
    }

    else if (*(v6 + 16) >= v32)
    {
      if (v32)
      {

        v39 = MEMORY[0x277D84F90];
        v40 = 32;
        v41 = v32;
        do
        {
          v52 = *(v6 + v40 + 16);
          v55 = *(v6 + v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
          }

          v43 = *(v39 + 2);
          v42 = *(v39 + 3);
          if (v43 >= v42 >> 1)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v39);
          }

          *(v39 + 2) = v43 + 1;
          v44 = &v39[32 * v43];
          *(v44 + 2) = v55;
          *(v44 + 3) = v52;
          v40 += 40;
          --v41;
        }

        while (v41);
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

      *(v1 + 16) = v39;
      v45 = *(v6 + 16);
      if (v45 >= v32)
      {
        goto LABEL_52;
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    __break(1u);
    goto LABEL_78;
  }

  v32 = 0;
  *(v54 + 16) = MEMORY[0x277D84F90];
  v45 = *(v6 + 16);
LABEL_52:
  v46 = v45 - v32;
  if (v45 == v32)
  {
    v47 = MEMORY[0x277D84F90];
LABEL_62:
    *(v1 + 24) = v47;

    return v1;
  }

  if (v45 > v32)
  {

    v48 = 40 * v32 + 32;
    v47 = MEMORY[0x277D84F90];
    do
    {
      v53 = *(v6 + v48 + 16);
      v56 = *(v6 + v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
      }

      v50 = *(v47 + 2);
      v49 = *(v47 + 3);
      if (v50 >= v49 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v47);
      }

      *(v47 + 2) = v50 + 1;
      v51 = &v47[32 * v50];
      *(v51 + 2) = v56;
      *(v51 + 3) = v53;
      v48 += 40;
      --v46;
    }

    while (v46);

    goto LABEL_62;
  }

LABEL_79:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall SILBoundingBoxes.isPositionValid(position:includeDynamicBoundingBoxes:)(CGPoint position, Swift::Bool includeDynamicBoundingBoxes)
{
  v3 = includeDynamicBoundingBoxes;
  y = position.y;
  x = position.x;
  v6 = *(v2 + 16);
  v7 = v6 + 56;
  v8 = -*(v6 + 16);
  v9 = -1;
  while (1)
  {
    if (v8 + v9 == -1)
    {
      if (!v3)
      {
        return 0;
      }

      v12 = *(v2 + 24);
      v13 = v12 + 56;
      v14 = -*(v12 + 16);
      v15 = -1;
      do
      {
        v11 = v14 + v15 != -1;
        if (v14 + v15 == -1)
        {
          break;
        }

        if (++v15 >= *(v12 + 16))
        {
          goto LABEL_15;
        }

        v16 = v13 + 32;
        includeDynamicBoundingBoxes = CGRect.contains(_:)(__PAIR128__(*&y, *&x));
        v13 = v16;
      }

      while (!includeDynamicBoundingBoxes);
      return v11;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    v10 = v7 + 32;
    includeDynamicBoundingBoxes = CGRect.contains(_:)(__PAIR128__(*&y, *&x));
    v7 = v10;
    if (includeDynamicBoundingBoxes)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return includeDynamicBoundingBoxes;
}

uint64_t SILBoundingBoxes.deinit()
{

  return v0;
}

uint64_t SILBoundingBoxes.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t SILConstraints.constraintsFile.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10SILManager14SILConstraints_constraintsFile);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SILConstraints.constraintsFile.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10SILManager14SILConstraints_constraintsFile);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *SILConstraints.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager14SILConstraintsC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10SILManager14SILConstraintsC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for SILConstraints();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v35 = 0;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &_sSaySSGMd, &_sSaySSGMR);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v36;
    if (!v36)
    {
      v10 = MEMORY[0x277D84F90];
    }

    *&v1[OBJC_IVAR____TtC10SILManager14SILConstraints_devices] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSdGGMd, &_sSaySDySSSdGGMR);
    v35 = 1;
    lazy protocol witness table accessor for type [[String : Double]] and conformance <A> [A]();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v36;
    type metadata accessor for SILBoundingBoxes();
    v12 = swift_allocObject();
    SILBoundingBoxes.init(values:)(v11);
    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSdGMd, &_sSDySSSdGMR);
    v35 = 5;
    lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Double] and conformance <> [A : B], &_sSDySSSdGMd, &_sSDySSSdGMR);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = specialized FallbackInfo.init(values:)(v36);
    v14 = &v3[OBJC_IVAR____TtC10SILManager14SILConstraints_fallbackInfo];
    *v14 = v13;
    *(v14 + 1) = v15;
    *(v14 + 8) = v16;
    v14[18] = v17 & 1;
    LOBYTE(v36) = 3;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = *&v18 + -0.5;
    if ((v18 & 0x100000000) != 0)
    {
      v19 = 0.0;
    }

    v20 = &v3[OBJC_IVAR____TtC10SILManager14SILConstraints_steadyFrames];
    *v20 = v19;
    *(v20 + 1) = 1203982208;
    LOBYTE(v36) = 6;
    v21 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v22)
    {
      v21 = 1.0;
    }

    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_timeToSteadyAsSeconds] = v21;
    LOBYTE(v36) = 7;
    v23 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v24)
    {
      v23 = 0.5;
    }

    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_timeAsSteadyAsSeconds] = v23;
    LOBYTE(v36) = 8;
    v25 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v26)
    {
      v25 = 0.2;
    }

    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_steadyOpacity] = v25;
    LOBYTE(v36) = 2;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = *&v27;
    if ((v27 & 0x100000000) != 0)
    {
      v28 = 0.0;
    }

    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_noticeableFrame] = v28;
    LOBYTE(v36) = 4;
    v29 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v30)
    {
      v29 = 3.0;
    }

    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_minStaticLocationDuration] = v29;
    (*(v6 + 8))(v8, v5);
    v31 = &v3[OBJC_IVAR____TtC10SILManager14SILConstraints_constraintsFile];
    *v31 = 0x3E656E696C6E693CLL;
    *(v31 + 1) = 0xE800000000000000;
    v32 = type metadata accessor for SILConstraints();
    v34.receiver = v3;
    v34.super_class = v32;
    v3 = objc_msgSendSuper2(&v34, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t SILConstraints.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73656369766564;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x7246796461657473;
    }

    if (a1)
    {
      v5 = 0x676E69646E756F62;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0x704F796461657473;
    if (a1 == 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000019;
    if (a1 != 4)
    {
      v3 = 0x6B6361626C6C6166;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SILConstraints.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SILConstraints.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SILConstraints.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SILConstraints.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SILConstraints.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SILConstraints.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SILConstraints.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SILConstraints.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SILConstraints.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SILConstraints.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double SILConstraints.__ivar_destroyer()
{

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance SILConstraints@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SILAssetDesc.type.getter()
{
  v1 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SILAssetDesc.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SILAssetDesc.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);

  return v1;
}

uint64_t SILAssetDesc.blobName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobName);

  return v1;
}

void *SILAssetDesc.flipbook.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook);
  v2 = v1;
  return v1;
}

double variable initialization expression of SILAssetDesc.blobHandle@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t SILAssetDesc.blobHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobHandle;
  swift_beginAccess();
  return outlined init with copy of SILFileHandle?(v1 + v3, a1);
}

uint64_t SILAssetDesc.blobHandle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobHandle;
  swift_beginAccess();
  outlined assign with take of SILFileHandle?(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SILAssetDesc.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SILAssetDesc.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SILAssetDesc.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xE800000000000000;
  v6 = 0x6B6F6F6270696C66;
  if (v2 != 6)
  {
    v6 = 0x6F666E4972657375;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73656D617266;
  if (v2 != 4)
  {
    v8 = 0x656D614E626F6C62;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7499842;
  if (v2 != 2)
  {
    v10 = 0x746E65747865;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SILAssetDesc.CodingKeys()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6B6F6F6270696C66;
  if (v1 != 6)
  {
    v3 = 0x6F666E4972657375;
  }

  v4 = 0x73656D617266;
  if (v1 != 4)
  {
    v4 = 0x656D614E626F6C62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 7499842;
  if (v1 != 2)
  {
    v5 = 0x746E65747865;
  }

  if (*v0)
  {
    v2 = 1701869940;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SILAssetDesc.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SILAssetDesc.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SILAssetDesc.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SILAssetDesc.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SILAssetDesc.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager12SILAssetDescC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10SILManager12SILAssetDescC10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v55 = v1;
  v8 = v1 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobHandle;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v11 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_4;
  }

  v49 = v5;
  LOBYTE(v52[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v55;
  v12 = (v55 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
  *v12 = v9;
  v12[1] = v13;
  LOBYTE(v52[0]) = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v49;
  *(v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent) = v14;
  LOBYTE(v52[0]) = 2;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v17)
  {
    v18 = -1;
  }

  else
  {
    v18 = v16;
  }

  *(v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_Bpr) = v18;
  LOBYTE(v52[0]) = 5;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = (v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobName);
  *v20 = v19;
  v20[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SILManager9FrameDescCGMd, &_sSay10SILManager9FrameDescCGMR);
  v51 = 4;
  lazy protocol witness table accessor for type [FrameDesc] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = *&v52[0];
  v48 = *&v52[0];
  if (*&v52[0] >> 62)
  {
    if (*&v52[0] < 0)
    {
      v43 = *&v52[0];
    }

    else
    {
      v43 = *&v52[0] & 0xFFFFFFFFFFFFFF8;
    }

    v44 = MEMORY[0x2667300B0](v43);
    v22 = v48;
    v23 = v44;
  }

  else
  {
    v23 = *((*&v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = 0;
  result = 28 * v23;
  if ((v23 * 28) >> 64 == (28 * v23) >> 63)
  {
    result = swift_slowAlloc();
    if ((v23 & 0x8000000000000000) == 0)
    {
      if (v23)
      {
        v24 = v22;
        v47 = v23;
        v25 = 0;
        v26 = v22 & 0xC000000000000001;
        v45 = result;
        v27 = result;
        do
        {
          if (v26)
          {
            v28 = MEMORY[0x266730000](v25);
          }

          else
          {
            v28 = *(v24 + 8 * v25 + 32);
          }

          v29 = v28;
          ++v25;
          (*((*MEMORY[0x277D85000] & *v28) + 0xB0))(v54);

          *v27 = v54[0];
          *(v27 + 12) = *(v54 + 12);
          v27 = (v27 + 28);
          v24 = v48;
        }

        while (v47 != v25);
        v30 = (v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer);
        v31 = v45;
        v23 = v47;
        *v30 = v45;
        v30[1] = v23;
        *(v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_frames) = v31;
        v15 = v49;
        if (v23 <= 0xFFFFFFFFLL)
        {
          goto LABEL_22;
        }

        __break(1u);
      }

      v32 = (v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer);
      *v32 = result;
      v32[1] = 0;
      *(v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_frames) = result;
LABEL_22:
      *(v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount) = v23;
      LOBYTE(v52[0]) = 1;
      v33 = v46;
      v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if (!v33)
      {
        if (v35)
        {
          v36 = -1;
        }

        else
        {
          v36 = v34;
        }

        *(v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_type) = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSDySSSaySiGGGGMd, &_sSDySSSDySSSDySSSaySiGGGGMR);
        v51 = 6;
        lazy protocol witness table accessor for type [String : [String : [String : [Int]]]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [String : [String : [Int]]]] and conformance <> [A : B], &_sSDySSSDySSSDySSSaySiGGGGMd, &_sSDySSSDySSSDySSSaySiGGGGMR, lazy protocol witness table accessor for type [String : [String : [Int]]] and conformance <> [A : B]);
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v37 = *&v52[0];
        if (*&v52[0])
        {
          v38 = objc_allocWithZone(type metadata accessor for SILFlipBookDesc());
          SILFlipBookDesc.init(_:_:)(v48, v37);
        }

        else
        {

          v39 = 0;
        }

        v40 = v55;
        *(v55 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook) = v39;
        v41 = _ss22KeyedDecodingContainerV10SILManagerE15decodeIfPresent_6forKeySDySSypGSgAFm_xtKFAC12SILAssetDescC10CodingKeysO_Ttg5(7);
        (*(v49 + 8))(v7, v4);
        *&v40[OBJC_IVAR____TtC10SILManager12SILAssetDesc_userInfo] = v41;
        v53 = 0;
        memset(v52, 0, sizeof(v52));
        swift_beginAccess();
        outlined assign with take of SILFileHandle?(v52, v8);
        swift_endAccess();
        v42 = type metadata accessor for SILAssetDesc();
        v50.receiver = v40;
        v50.super_class = v42;
        v11 = objc_msgSendSuper2(&v50, sel_init);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        return v11;
      }

      (*(v15 + 8))(v7, v4);

      __swift_destroy_boxed_opaque_existential_1Tm(a1);

LABEL_4:
      outlined destroy of SILFileHandle?(v8);
      type metadata accessor for SILAssetDesc();
      swift_deallocPartialClassInstance();
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}