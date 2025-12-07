char *specialized SIMD.asScalarArray()(__n128 a1, __n128 a2)
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
  v8 = a1.n128_u64[1];
  v7 = a2;
  *&v2[8 * v4 + 32] = a1.n128_u64[0];
  v9 = v4 + 2;
  if (v5 < (v4 + 2))
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 2, 1, v2);
    v8 = a1.n128_u64[1];
    v7 = a2;
    v2 = v14;
  }

  *(v2 + 2) = v9;
  *&v2[8 * v6 + 32] = v8;
  v10 = *(v2 + 3);
  v11 = v4 + 3;
  if ((v4 + 3) > (v10 >> 1))
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v4 + 3, 1, v2);
    v7 = a2;
    v2 = v15;
  }

  *(v2 + 2) = v11;
  *&v2[8 * v9 + 32] = v7.n128_u64[0];
  v12 = *(v2 + 3);
  if ((v4 + 4) > (v12 >> 1))
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v4 + 4, 1, v2);
    v7.n128_u64[1] = a2.n128_u64[1];
    v2 = v16;
  }

  *(v2 + 2) = v4 + 4;
  *&v2[8 * v11 + 32] = v7.n128_u64[1];
  return v2;
}

void componentPrimToDictionary(component:)()
{
  v328[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v1 = Prim.attributes()();
  v2 = specialized Array._getCount()();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    v5 = 0;
    while (1)
    {
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26670F670](v5, v1);
          v6 = __OFADD__(v5++, 1);
          if (v6)
          {
            goto LABEL_441;
          }
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_443;
          }

          v6 = __OFADD__(v5++, 1);
          if (v6)
          {
LABEL_441:
            __break(1u);
LABEL_442:
            __break(1u);
LABEL_443:
            __break(1u);
            goto LABEL_444;
          }
        }

        v7 = RIOPxrUsdObjectCopyName();
        v8 = RIOPxrTfTokenCopyString();
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12 = RIOPxrUsdAttributeCopyTypeName();
        RIOPxrSdfValueTypeNameRef.type.getter();

        if (swift_dynamicCastMetatype())
        {
          EmptyValue = RIOPxrUsdAttributeCopyValue();
          if (!EmptyValue)
          {
            EmptyValue = RIOPxrVtValueCreateEmptyValue();
          }

          v320.n128_u8[0] = 0;
          v14 = EmptyValue;
          Bool = RIOPxrVtValueGetBool();

          if ((Bool & 1) == 0)
          {
            goto LABEL_47;
          }

          v16.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
          goto LABEL_48;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGMd, &_sSaySbGMR);
        if (swift_dynamicCastMetatype())
        {
          v17 = RIOPxrUsdAttributeCopyValue();
          if (!v17)
          {
            v17 = RIOPxrVtValueCreateEmptyValue();
          }

          v18 = RIOPxrVtValueCopyBoolArray();
          if (!v18)
          {
            goto LABEL_46;
          }

          v320.n128_u64[0] = v18;
          v19 = v18;
          closure #1 in RIOPxrVtValueRef.asBoolArray.getter(v328);

          v3 = MEMORY[0x277D84F90];
LABEL_19:
          v16.super.super.isa = Array._bridgeToObjectiveC()().super.isa;

          goto LABEL_48;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        if (swift_dynamicCastMetatype())
        {
          v17 = RIOPxrUsdAttributeCopyValue();
          if (!v17)
          {
            v17 = RIOPxrVtValueCreateEmptyValue();
          }

          v23 = RIOPxrVtValueCopyInt32Array();
          if (!v23)
          {
            goto LABEL_46;
          }

          v320.n128_u64[0] = v23;
          v24 = v23;
          closure #1 in RIOPxrVtValueRef.asInt32Array.getter(v328);

          v3 = MEMORY[0x277D84F90];
          goto LABEL_19;
        }

        if (swift_dynamicCastMetatype())
        {
LABEL_21:
          v20 = RIOPxrUsdAttributeCopyValue();
          if (!v20)
          {
            v20 = RIOPxrVtValueCreateEmptyValue();
          }

          v320.n128_u32[0] = 0;
          v21 = v20;
          Int32 = RIOPxrVtValueGetInt32();

          if ((Int32 & 1) == 0)
          {
            goto LABEL_47;
          }

          v16.super.super.isa = Int32._bridgeToObjectiveC()().super.super.isa;
          goto LABEL_48;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int32VGMd, &_sSays5Int32VGMR);
        if (swift_dynamicCastMetatype())
        {
          v17 = RIOPxrUsdAttributeCopyValue();
          if (!v17)
          {
            v17 = RIOPxrVtValueCreateEmptyValue();
          }

          v25 = RIOPxrVtValueCopyInt32Array();
          if (!v25)
          {
            goto LABEL_46;
          }

          v26 = v25;
          v320.n128_u64[0] = v25;
          closure #1 in RIOPxrVtValueRef.asInt32Array.getter(v328);

          goto LABEL_19;
        }

        if (!swift_dynamicCastMetatype())
        {
          break;
        }

        v27 = RIOPxrUsdAttributeCopyValue();
        if (!v27)
        {
          v27 = RIOPxrVtValueCreateEmptyValue();
        }

        v320.n128_u64[0] = 0;
        v28 = v27;
        Int64 = RIOPxrVtValueGetInt64();

        if ((Int64 & 1) == 0)
        {
          goto LABEL_47;
        }

        v16.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
LABEL_48:
        v320.n128_u64[0] = v9;
        v320.n128_u64[1] = v11;
        [v0 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v5 == v4)
        {
          goto LABEL_418;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int64VGMd, &_sSays5Int64VGMR);
      if (swift_dynamicCastMetatype())
      {
        v17 = RIOPxrUsdAttributeCopyValue();
        if (!v17)
        {
          v17 = RIOPxrVtValueCreateEmptyValue();
        }

        v30 = RIOPxrVtValueCopyInt64Array();
        if (!v30)
        {
LABEL_46:

LABEL_47:
          v16.super.super.isa = 0;
          goto LABEL_48;
        }

        v320.n128_u64[0] = v30;
        v31 = v30;
        closure #1 in RIOPxrVtValueRef.asInt64Array.getter(v328);

        v3 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }

      if (swift_dynamicCastMetatype())
      {
        v32 = RIOPxrUsdAttributeCopyValue();
        if (!v32)
        {
          v32 = RIOPxrVtValueCreateEmptyValue();
        }

        v320.n128_u32[0] = 0;
        v33 = v32;
        UInt32 = RIOPxrVtValueGetUInt32();

        if (UInt32)
        {
          v16.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
      if (swift_dynamicCastMetatype())
      {
        v35 = RIOPxrUsdAttributeCopyValue();
        if (!v35)
        {
          v35 = RIOPxrVtValueCreateEmptyValue();
        }

        v36 = RIOPxrVtValueRef.asUInt32Array.getter();

        if (!v36)
        {
          goto LABEL_47;
        }

        goto LABEL_19;
      }

      if (swift_dynamicCastMetatype())
      {
        v37 = RIOPxrUsdAttributeCopyValue();
        if (!v37)
        {
          v37 = RIOPxrVtValueCreateEmptyValue();
        }

        v320.n128_u8[0] = 0;
        v38 = v37;
        UInt8 = RIOPxrVtValueGetUInt8();

        if (UInt8)
        {
          v16.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      if (swift_dynamicCastMetatype())
      {
        v40 = RIOPxrUsdAttributeCopyValue();
        if (!v40)
        {
          v40 = RIOPxrVtValueCreateEmptyValue();
        }

        v41 = RIOPxrVtValueRef.asUInt8Array.getter();

        if (!v41)
        {
          goto LABEL_47;
        }

        goto LABEL_19;
      }

      if (swift_dynamicCastMetatype())
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
      if (swift_dynamicCastMetatype())
      {
        v47 = RIOPxrUsdAttributeCopyValue();
        if (!v47)
        {
          v47 = RIOPxrVtValueCreateEmptyValue();
        }

        v48 = RIOPxrVtValueRef.asUInt32Array.getter();

        if (!v48)
        {
          goto LABEL_378;
        }

LABEL_80:
        v49.super.isa = Array._bridgeToObjectiveC()().super.isa;
        goto LABEL_81;
      }

      if (swift_dynamicCastMetatype())
      {
        v50 = RIOPxrUsdAttributeCopyValue();
        if (!v50)
        {
          v50 = RIOPxrVtValueCreateEmptyValue();
        }

        v320.n128_u64[0] = 0;
        UInt64 = RIOPxrVtValueGetUInt64();

        if ((UInt64 & 1) == 0)
        {
          goto LABEL_378;
        }

        v45.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
      if (swift_dynamicCastMetatype())
      {
        v52 = RIOPxrUsdAttributeCopyValue();
        if (!v52)
        {
          v52 = RIOPxrVtValueCreateEmptyValue();
        }

        v53 = RIOPxrVtValueRef.asUInt64Array.getter();

        if (!v53)
        {
          goto LABEL_378;
        }

        goto LABEL_80;
      }

      if (swift_dynamicCastMetatype())
      {
        v54 = RIOPxrUsdAttributeCopyValue();
        if (!v54)
        {
          v54 = RIOPxrVtValueCreateEmptyValue();
        }

        v320.n128_u32[0] = 0;
        Float = RIOPxrVtValueGetFloat();

        if ((Float & 1) == 0)
        {
          goto LABEL_378;
        }

        v45.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      if (swift_dynamicCastMetatype())
      {
        v56 = RIOPxrUsdAttributeCopyValue();
        if (!v56)
        {
          v56 = RIOPxrVtValueCreateEmptyValue();
        }

        v57 = RIOPxrVtValueRef.asFloatArray.getter();

        if (!v57)
        {
          goto LABEL_378;
        }

        goto LABEL_80;
      }

      if (swift_dynamicCastMetatype())
      {
        v58 = RIOPxrUsdAttributeCopyValue();
        if (!v58)
        {
          v58 = RIOPxrVtValueCreateEmptyValue();
        }

        v320.n128_u64[0] = 0;
        Double = RIOPxrVtValueGetDouble();

        if ((Double & 1) == 0)
        {
          goto LABEL_378;
        }

        v45.super.super.isa = MEMORY[0x26670F1F0](v320.n128_f64[0]);
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      if (swift_dynamicCastMetatype())
      {
        v60 = RIOPxrUsdAttributeCopyValue();
        if (!v60)
        {
          v60 = RIOPxrVtValueCreateEmptyValue();
        }

        v61 = RIOPxrVtValueRef.asDoubleArray.getter();

        if (!v61)
        {
          goto LABEL_378;
        }

        goto LABEL_80;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys5Int32VGMd, &_ss5SIMD2Vys5Int32VGMR);
      if (swift_dynamicCastMetatype())
      {
        v62 = RIOPxrUsdAttributeCopyValue();
        if (!v62)
        {
          v62 = RIOPxrVtValueCreateEmptyValue();
        }

        v320.n128_u64[0] = 0;
        Int2 = RIOPxrVtValueGetInt2();

        if (!Int2)
        {
          goto LABEL_378;
        }

        v64 = specialized SIMD.asScalarArray()(v320.n128_f64[0]);
LABEL_117:
        v320.n128_u64[0] = v64;
        isa = _bridgeAnythingToObjectiveC<A>(_:)();
        outlined destroy of Any?(&v320, &_sSays5Int32VGMd, &_sSays5Int32VGMR);
        goto LABEL_379;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2Vys5Int32VGGMd, &_sSays5SIMD2Vys5Int32VGGMR);
      if (swift_dynamicCastMetatype())
      {
        v65 = RIOPxrUsdAttributeCopyValue();
        if (!v65)
        {
          v65 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asInt2Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v66 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2Vys5Int32VGG_SayAIGs5NeverOTg5072_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSays5e4VGs5D10VyAIGXEfU_Tf1cn_n(isa);
        goto LABEL_123;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys5Int32VGMd, &_ss5SIMD3Vys5Int32VGMR);
      if (swift_dynamicCastMetatype())
      {
        v71 = RIOPxrUsdAttributeCopyValue();
        if (!v71)
        {
          v71 = RIOPxrVtValueCreateEmptyValue();
        }

        v320 = 0uLL;
        Int3 = RIOPxrVtValueGetInt3();

        if (!Int3)
        {
          goto LABEL_378;
        }

        v64 = specialized SIMD.asScalarArray()(v320);
        goto LABEL_117;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3Vys5Int32VGGMd, &_sSays5SIMD3Vys5Int32VGGMR);
      if (swift_dynamicCastMetatype())
      {
        v73 = RIOPxrUsdAttributeCopyValue();
        if (!v73)
        {
          v73 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asInt3Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v74 = specialized SIMD.asScalarArray();
LABEL_135:
        v66 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3Vys5Int32VGG_SayAIGs5NeverOTg5072_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSays5e4VGs5D11VyAIGXEfU0_Tf1cn_nTm(isa, v74);
LABEL_123:
        v67 = v66;

        v320.n128_u64[0] = v67;
        v68 = &_sSaySays5Int32VGGMd;
        v69 = &_sSaySays5Int32VGGMd;
        v70 = &_sSaySays5Int32VGGMR;
        goto LABEL_124;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys5Int32VGMd, &_ss5SIMD4Vys5Int32VGMR);
      if (swift_dynamicCastMetatype())
      {
        v75 = RIOPxrUsdAttributeCopyValue();
        if (!v75)
        {
          v75 = RIOPxrVtValueCreateEmptyValue();
        }

        v320 = 0uLL;
        Int4 = RIOPxrVtValueGetInt4();

        if (!Int4)
        {
          goto LABEL_378;
        }

        v64 = specialized SIMD.asScalarArray()(v320);
        goto LABEL_117;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4Vys5Int32VGGMd, &_sSays5SIMD4Vys5Int32VGGMR);
      if (swift_dynamicCastMetatype())
      {
        v77 = RIOPxrUsdAttributeCopyValue();
        if (!v77)
        {
          v77 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asInt4Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v74 = specialized SIMD.asScalarArray();
        goto LABEL_135;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
      if (swift_dynamicCastMetatype())
      {
        v78 = RIOPxrUsdAttributeCopyValue();
        if (!v78)
        {
          v78 = RIOPxrVtValueCreateEmptyValue();
        }

        v320.n128_u64[0] = 0;
        Float2 = RIOPxrVtValueGetFloat2();

        if (!Float2)
        {
          goto LABEL_378;
        }

        v80 = specialized SIMD.asScalarArray()(v320.n128_f64[0]);
LABEL_151:
        v320.n128_u64[0] = v80;
        isa = _bridgeAnythingToObjectiveC<A>(_:)();
        outlined destroy of Any?(&v320, &_sSaySfGMd, &_sSaySfGMR);
        goto LABEL_379;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
      if (swift_dynamicCastMetatype())
      {
        v81 = RIOPxrUsdAttributeCopyValue();
        if (!v81)
        {
          v81 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asFloat2Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v82 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2VySfGG_SaySfGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySfGs5d2VyS7GXEfU2_Tf1cn_n(isa);
        goto LABEL_157;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      if (swift_dynamicCastMetatype())
      {
        v84 = RIOPxrUsdAttributeCopyValue();
        if (!v84)
        {
          v84 = RIOPxrVtValueCreateEmptyValue();
        }

        v320 = 0uLL;
        Float3 = RIOPxrVtValueGetFloat3();

        if (!Float3)
        {
          goto LABEL_378;
        }

        v80 = specialized SIMD.asScalarArray()(v320);
        goto LABEL_151;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
      if (swift_dynamicCastMetatype())
      {
        v86 = RIOPxrUsdAttributeCopyValue();
        if (!v86)
        {
          v86 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asFloat3Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v87 = specialized SIMD.asScalarArray();
LABEL_168:
        v82 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3VySfGG_SaySfGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySfGs5d2VyS7GXEfU3_Tf1cn_nTm(isa, v87);
LABEL_157:
        v83 = v82;

        v320.n128_u64[0] = v83;
        v68 = &_sSaySaySfGGMd;
        v69 = &_sSaySaySfGGMd;
        v70 = &_sSaySaySfGGMR;
        goto LABEL_124;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
      if (swift_dynamicCastMetatype())
      {
        v88 = RIOPxrUsdAttributeCopyValue();
        if (!v88)
        {
          v88 = RIOPxrVtValueCreateEmptyValue();
        }

        v320 = 0uLL;
        Float4 = RIOPxrVtValueGetFloat4();

        if (!Float4)
        {
          goto LABEL_378;
        }

        v80 = specialized SIMD.asScalarArray()(v320);
        goto LABEL_151;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
      if (swift_dynamicCastMetatype())
      {
        v90 = RIOPxrUsdAttributeCopyValue();
        if (!v90)
        {
          v90 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asFloat4Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v87 = specialized SIMD.asScalarArray();
        goto LABEL_168;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
      if (swift_dynamicCastMetatype())
      {
        v91 = RIOPxrUsdAttributeCopyValue();
        if (!v91)
        {
          v91 = RIOPxrVtValueCreateEmptyValue();
        }

        v320 = 0uLL;
        Double2 = RIOPxrVtValueGetDouble2();

        isa = 0;
        if (!Double2)
        {
          goto LABEL_379;
        }

        v93 = specialized SIMD.asScalarArray()(v320);
        goto LABEL_184;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySdGGMd, &_sSays5SIMD2VySdGGMR);
      if (swift_dynamicCastMetatype())
      {
        v94 = RIOPxrUsdAttributeCopyValue();
        if (!v94)
        {
          v94 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asDouble2Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v95 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2VySdGG_SaySdGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySdGs5d2VyS7GXEfU5_Tf1cn_n(isa);
        goto LABEL_190;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
      if (swift_dynamicCastMetatype())
      {
        v97 = RIOPxrUsdAttributeCopyValue();
        if (!v97)
        {
          v97 = RIOPxrVtValueCreateEmptyValue();
        }

        v320 = 0u;
        v321 = 0u;
        Double3 = RIOPxrVtValueGetDouble3();

        if ((Double3 & 1) == 0)
        {
          goto LABEL_378;
        }

        v93 = specialized SIMD.asScalarArray()(v320, v321.n128_f64[0]);
LABEL_184:
        v320.n128_u64[0] = v93;
        isa = _bridgeAnythingToObjectiveC<A>(_:)();
        outlined destroy of Any?(&v320, &_sSaySdGMd, &_sSaySdGMR);
        goto LABEL_379;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySdGGMd, &_sSays5SIMD3VySdGGMR);
      if (swift_dynamicCastMetatype())
      {
        v99 = RIOPxrUsdAttributeCopyValue();
        if (!v99)
        {
          v99 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asDouble3Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v100 = specialized SIMD.asScalarArray();
LABEL_201:
        v95 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD3VySdGG_SaySdGs5NeverOTg5075_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSaySdGs5d2VyS7GXEfU6_Tf1cn_nTm(isa, v100);
LABEL_190:
        v96 = v95;

        v320.n128_u64[0] = v96;
        v68 = &_sSaySaySdGGMd;
        v69 = &_sSaySaySdGGMd;
        v70 = &_sSaySaySdGGMR;
LABEL_124:
        __swift_instantiateConcreteTypeFromMangledNameV2(v69, v70);
        isa = _bridgeAnythingToObjectiveC<A>(_:)();
        outlined destroy of Any?(&v320, v68, v70);
        goto LABEL_379;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
      if (swift_dynamicCastMetatype())
      {
        v101 = RIOPxrUsdAttributeCopyValue();
        if (!v101)
        {
          v101 = RIOPxrVtValueCreateEmptyValue();
        }

        v320 = 0u;
        v321 = 0u;
        Double4 = RIOPxrVtValueGetDouble4();

        if ((Double4 & 1) == 0)
        {
          goto LABEL_378;
        }

        v93 = specialized SIMD.asScalarArray()(v320, v321);
        goto LABEL_184;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySdGGMd, &_sSays5SIMD4VySdGGMR);
      if (swift_dynamicCastMetatype())
      {
        v103 = RIOPxrUsdAttributeCopyValue();
        if (!v103)
        {
          v103 = RIOPxrVtValueCreateEmptyValue();
        }

        isa = RIOPxrVtValueRef.asDouble4Array.getter();

        if (!isa)
        {
          goto LABEL_379;
        }

        v100 = specialized SIMD.asScalarArray();
        goto LABEL_201;
      }

      type metadata accessor for simd_quatf(0);
      if (swift_dynamicCastMetatype())
      {
        v104 = RIOPxrUsdAttributeCopyValue();
        if (!v104)
        {
          v104 = RIOPxrVtValueCreateEmptyValue();
        }

        v320 = 0uLL;
        Quatf = RIOPxrVtValueGetQuatf();

        if (Quatf)
        {
          v312 = v320;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_26198AB70;
          *(v106 + 32) = vextq_s8(v312, v312, 0xCuLL);
          goto LABEL_372;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10simd_quatfaGMd, &_sSaySo10simd_quatfaGMR);
        if (swift_dynamicCastMetatype())
        {
          v107 = RIOPxrUsdAttributeCopyValue();
          if (!v107)
          {
            v107 = RIOPxrVtValueCreateEmptyValue();
          }

          v108 = RIOPxrVtValueRef.asQuatfArray.getter();

          if (v108)
          {
            v298 = v108[1].i64[0];
            if (v298)
            {
              v313 = v108 + 2;
              v109 = MEMORY[0x277D84F90];
              do
              {
                v289 = *v313;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
                v110 = swift_allocObject();
                *(v110 + 16) = xmmword_26198AB70;
                *(v110 + 32) = vextq_s8(v289, v289, 0xCuLL);
                v280 = v110;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109[2] + 1, 1, v109);
                }

                v112 = v109[2];
                v111 = v109[3];
                v290 = v112 + 1;
                if (v112 >= v111 >> 1)
                {
                  v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v290, 1, v109);
                }

                v109[2] = v290;
                v109[v112 + 4] = v280;
                ++v313;
                --v298;
              }

              while (v298);
            }

LABEL_234:

            goto LABEL_372;
          }
        }

        else
        {
          type metadata accessor for simd_quatd(0);
          if (swift_dynamicCastMetatype())
          {
            v113 = RIOPxrUsdAttributeCopyValue();
            if (!v113)
            {
              v113 = RIOPxrVtValueCreateEmptyValue();
            }

            v320 = 0u;
            v321 = 0u;
            Quatd = RIOPxrVtValueGetQuatd();

            if (Quatd)
            {
              v299 = v320;
              v314 = v321;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
              v115 = swift_allocObject();
              *(v115 + 16) = xmmword_26198AB70;
              *(v115 + 32) = vextq_s8(v314, v299, 8uLL);
              *(v115 + 48) = vextq_s8(v299, v314, 8uLL);
              goto LABEL_372;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10simd_quatdaGMd, &_sSaySo10simd_quatdaGMR);
            if (swift_dynamicCastMetatype())
            {
              v116 = RIOPxrUsdAttributeCopyValue();
              if (!v116)
              {
                v116 = RIOPxrVtValueCreateEmptyValue();
              }

              v117 = RIOPxrVtValueRef.asQuatdArray.getter();

              if (v117)
              {
                v291 = v117[1].i64[0];
                if (v291)
                {
                  v118 = v117 + 2;
                  v119 = MEMORY[0x277D84F90];
                  do
                  {
                    v273 = *v118;
                    v281 = v118[1];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
                    v120 = swift_allocObject();
                    *(v120 + 16) = xmmword_26198AB70;
                    *(v120 + 32) = vextq_s8(v281, v273, 8uLL);
                    v121 = vextq_s8(v273, v281, 8uLL);
                    v274 = v120;
                    *(v120 + 48) = v121;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v119[2] + 1, 1, v119);
                    }

                    v123 = v119[2];
                    v122 = v119[3];
                    v282 = v123 + 1;
                    if (v123 >= v122 >> 1)
                    {
                      v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v282, 1, v119);
                    }

                    v119[2] = v282;
                    v119[v123 + 4] = v274;
                    v118 += 2;
                    --v291;
                  }

                  while (v291);
                }

                goto LABEL_234;
              }
            }

            else
            {
              type metadata accessor for simd_double2x2(0);
              if (swift_dynamicCastMetatype())
              {
                v124 = RIOPxrUsdAttributeCopyValue();
                if (!v124)
                {
                  v124 = RIOPxrVtValueCreateEmptyValue();
                }

                v320 = 0u;
                v321 = 0u;
                Matrix2d = RIOPxrVtValueGetMatrix2d();

                if (Matrix2d)
                {
                  v292 = v321;
                  v300 = v320;
                  v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                  v128 = *(v126 + 2);
                  v127 = *(v126 + 3);
                  v129 = v127 >> 1;
                  v130 = v128 + 1;
                  if (v127 >> 1 <= v128)
                  {
                    v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v126);
                    v127 = *(v126 + 3);
                    v129 = v127 >> 1;
                  }

                  *(v126 + 2) = v130;
                  *&v126[8 * v128 + 32] = v300.n128_u64[0];
                  v131 = v128 + 2;
                  if (v129 < v131)
                  {
                    v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v131, 1, v126);
                  }

                  *(v126 + 2) = v131;
                  *&v126[8 * v130 + 32] = v300.n128_u64[1];
                  v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                  v134 = v132[2];
                  v133 = v132[3];
                  v301 = v134 + 1;
                  if (v134 >= v133 >> 1)
                  {
                    v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v301, 1, v132);
                  }

                  v132[2] = v301;
                  v132[v134 + 4] = v126;
                  v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                  v137 = *(v135 + 2);
                  v136 = *(v135 + 3);
                  v138 = v136 >> 1;
                  v302 = v137 + 1;
                  if (v136 >> 1 <= v137)
                  {
                    v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v302, 1, v135);
                    v136 = *(v135 + 3);
                    v138 = v136 >> 1;
                  }

                  *(v135 + 2) = v302;
                  *&v135[8 * v137 + 32] = v292.n128_u64[0];
                  v139 = v137 + 2;
                  if (v138 < v139)
                  {
                    v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v139, 1, v135);
                  }

                  *(v135 + 2) = v139;
                  *&v135[8 * v302 + 32] = v292.n128_u64[1];
                  v141 = v132[2];
                  v140 = v132[3];
                  v303 = v141 + 1;
                  if (v141 >= v140 >> 1)
                  {
                    v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v303, 1, v132);
                  }

                  v132[2] = v303;
                  v132[v141 + 4] = v135;
                  v142.super.isa = Array._bridgeToObjectiveC()().super.isa;

                  v143 = specialized _bridgeAnythingToObjectiveC<A>(_:)(v9, v11);

                  goto LABEL_417;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double2x2aGMd, &_sSaySo14simd_double2x2aGMR);
                if (swift_dynamicCastMetatype())
                {
                  v144 = RIOPxrUsdAttributeCopyValue();
                  if (!v144)
                  {
                    v144 = RIOPxrVtValueCreateEmptyValue();
                  }

                  v145 = RIOPxrVtValueRef.asMatrix2dArray.getter();

                  v315 = v145;
                  if (v145)
                  {
                    v260 = *(v145 + 2);
                    if (v260)
                    {
                      v304 = 0;
                      v293 = (v145 + 48);
                      v146 = MEMORY[0x277D84F90];
                      while (v304 < *(v315 + 2))
                      {
                        v264 = *(v293 - 1);
                        v275 = *v293;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
                        v268 = swift_allocObject();
                        *(v268 + 16) = xmmword_2619891C0;
                        v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                        v149 = *(v147 + 2);
                        v148 = *(v147 + 3);
                        v150 = v148 >> 1;
                        v283 = v149 + 1;
                        if (v148 >> 1 <= v149)
                        {
                          v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v148 > 1), v283, 1, v147);
                          v148 = *(v147 + 3);
                          v150 = v148 >> 1;
                        }

                        *(v147 + 2) = v283;
                        *&v147[8 * v149 + 32] = v264;
                        if (v150 < (v149 + 2))
                        {
                          v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v148 > 1), v149 + 2, 1, v147);
                        }

                        *(v147 + 2) = v149 + 2;
                        *&v147[8 * v283 + 32] = *(&v264 + 1);
                        *(v268 + 32) = v147;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v146[2] + 1, 1, v146);
                        }

                        v152 = v146[2];
                        v151 = v146[3];
                        if (v152 >= v151 >> 1)
                        {
                          v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v151 > 1), v152 + 1, 1, v146);
                        }

                        v146[2] = v152 + 1;
                        v146[v152 + 4] = v268;
                        v269 = swift_allocObject();
                        *(v269 + 16) = xmmword_2619891C0;
                        v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                        v155 = *(v153 + 2);
                        v154 = *(v153 + 3);
                        v156 = v154 >> 1;
                        v284 = v155 + 1;
                        if (v154 >> 1 <= v155)
                        {
                          v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v154 > 1), v284, 1, v153);
                          v154 = *(v153 + 3);
                          v156 = v154 >> 1;
                        }

                        *(v153 + 2) = v284;
                        *&v153[8 * v155 + 32] = v275;
                        if (v156 < (v155 + 2))
                        {
                          v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v154 > 1), v155 + 2, 1, v153);
                        }

                        *(v153 + 2) = v155 + 2;
                        *&v153[8 * v284 + 32] = *(&v275 + 1);
                        *(v269 + 32) = v153;
                        v158 = v146[2];
                        v157 = v146[3];
                        if (v158 >= v157 >> 1)
                        {
                          v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v157 > 1), v158 + 1, 1, v146);
                        }

                        v146[2] = v158 + 1;
                        v146[v158 + 4] = v269;
                        v293 += 2;
                        if (v260 == ++v304)
                        {
                          goto LABEL_344;
                        }
                      }

                      __break(1u);
LABEL_446:
                      __break(1u);
                      goto LABEL_447;
                    }

                    goto LABEL_344;
                  }
                }

                else
                {
                  type metadata accessor for simd_double3x3(0);
                  if (swift_dynamicCastMetatype())
                  {
                    v159 = RIOPxrUsdAttributeCopyValue();
                    if (!v159)
                    {
                      v159 = RIOPxrVtValueCreateEmptyValue();
                    }

                    v324 = 0u;
                    v325 = 0u;
                    v322 = 0u;
                    v323 = 0u;
                    v320 = 0u;
                    v321 = 0u;
                    Matrix3d = RIOPxrVtValueGetMatrix3d();

                    if (Matrix3d)
                    {
                      v161 = v320;
                      v276 = v322;
                      v285 = v323.n128_f64[0];
                      v294 = v324;
                      v305 = v325.n128_f64[0];
                      v320.n128_u64[0] = MEMORY[0x277D84F90];
                      v162 = specialized SIMD.asScalarArray()(v161, v321.n128_f64[0]);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      v163 = v320.n128_u64[0];
                      v165 = *(v320.n128_u64[0] + 16);
                      v164 = *(v320.n128_u64[0] + 24);
                      if (v165 >= v164 >> 1)
                      {
                        v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1, v320.n128_u64[0]);
                        v320.n128_u64[0] = v163;
                      }

                      v163[2] = v165 + 1;
                      v163[v165 + 4] = v162;
                      v166 = specialized SIMD.asScalarArray()(v276, v285);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      v167 = v320.n128_u64[0];
                      v169 = *(v320.n128_u64[0] + 16);
                      v168 = *(v320.n128_u64[0] + 24);
                      if (v169 >= v168 >> 1)
                      {
                        v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v168 > 1), v169 + 1, 1, v320.n128_u64[0]);
                        v320.n128_u64[0] = v167;
                      }

                      v167[2] = v169 + 1;
                      v167[v169 + 4] = v166;
                      v170 = specialized SIMD.asScalarArray()(v294, v305);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      v171 = v320.n128_u64[0];
                      v173 = *(v320.n128_u64[0] + 16);
                      v172 = *(v320.n128_u64[0] + 24);
                      v306 = v173 + 1;
                      if (v173 >= v172 >> 1)
                      {
                        v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v172 > 1), v306, 1, v320.n128_u64[0]);
                        v320.n128_u64[0] = v171;
                      }

LABEL_343:
                      v171[2] = v306;
                      v171[v173 + 4] = v170;
                      v200.super.isa = Array._bridgeToObjectiveC()().super.isa;

                      v201 = specialized _bridgeAnythingToObjectiveC<A>(_:)(v9, v11);

                      goto LABEL_373;
                    }
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double3x3aGMd, &_sSaySo14simd_double3x3aGMR);
                    if (swift_dynamicCastMetatype())
                    {
                      v174 = RIOPxrUsdAttributeCopyValue();
                      if (!v174)
                      {
                        v174 = RIOPxrVtValueCreateEmptyValue();
                      }

                      v175 = RIOPxrVtValueRef.asMatrix3dArray.getter();

                      v307 = v175;
                      if (v175)
                      {
                        v265 = v175[2];
                        if (v265)
                        {
                          v176 = 0;
                          v261 = (v175 + 4);
                          v316 = MEMORY[0x277D84F90];
                          while (v307[2] > v176)
                          {
                            v286 = 0;
                            v258 = v176 + 1;
                            v177 = &v261[96 * v176];
                            v254 = *v177;
                            v256 = *(v177 + 1);
                            v250 = *(v177 + 2);
                            v252 = *(v177 + 3);
                            v247 = *(v177 + 4);
                            v248 = *(v177 + 5);
                            do
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
                              v270 = swift_allocObject();
                              *(v270 + 16) = xmmword_2619891C0;
                              v295 = v254;
                              v277 = v256;
                              if (v286)
                              {
                                v295 = v250;
                                v277 = v252;
                                if (v286 != 1)
                                {
                                  v295 = v247;
                                  v277 = v248;
                                }
                              }

                              v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
                              v180 = *(v178 + 2);
                              v179 = *(v178 + 3);
                              v181 = v179 >> 1;
                              v182 = v180 + 1;
                              if (v179 >> 1 <= v180)
                              {
                                v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v180 + 1, 1, v178);
                                v179 = *(v178 + 3);
                                v181 = v179 >> 1;
                              }

                              *(v178 + 2) = v182;
                              *&v178[8 * v180 + 32] = v295;
                              v183 = v180 + 2;
                              if (v181 < (v180 + 2))
                              {
                                v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v180 + 2, 1, v178);
                              }

                              *(v178 + 2) = v183;
                              *&v178[8 * v182 + 32] = *(&v295 + 1);
                              v184 = *(v178 + 3);
                              v185 = v180 + 3;
                              if (v185 > (v184 >> 1))
                              {
                                v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v184 > 1), v185, 1, v178);
                              }

                              *(v178 + 2) = v185;
                              *&v178[8 * v183 + 32] = v277;
                              *(v270 + 32) = v178;
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v316 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v316[2] + 1, 1, v316);
                              }

                              v187 = v316[2];
                              v186 = v316[3];
                              if (v187 >= v186 >> 1)
                              {
                                v316 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v186 > 1), v187 + 1, 1, v316);
                              }

                              v316[2] = v187 + 1;
                              v316[v187 + 4] = v270;
                              ++v286;
                            }

                            while (v286 != 3);
                            v176 = v258;
                            if (v258 == v265)
                            {
                              goto LABEL_344;
                            }
                          }

                          goto LABEL_446;
                        }

LABEL_344:

                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySdGGMd, &_sSaySaySdGGMR);
                        v142.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_416:
                        v320.n128_u64[0] = v9;
                        v320.n128_u64[1] = v11;
                        v143 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
LABEL_417:
                        [v0 __swift_setObject_forKeyedSubscript_];

                        goto LABEL_380;
                      }
                    }

                    else
                    {
                      type metadata accessor for simd_double4x4(0);
                      if (swift_dynamicCastMetatype())
                      {
                        v188 = RIOPxrUsdAttributeCopyValue();
                        if (!v188)
                        {
                          v188 = RIOPxrVtValueCreateEmptyValue();
                        }

                        v326 = 0u;
                        v327 = 0u;
                        v324 = 0u;
                        v325 = 0u;
                        v322 = 0u;
                        v323 = 0u;
                        v320 = 0u;
                        v321 = 0u;
                        Matrix4d = RIOPxrVtValueGetMatrix4d();

                        if (Matrix4d)
                        {
                          v262 = v322;
                          v266 = v323;
                          v271 = v324;
                          v278 = v325;
                          v287 = v326;
                          v296 = v327;
                          v190 = specialized SIMD.asScalarArray()(v320, v321);
                          v171 = MEMORY[0x277D84F90];
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(MEMORY[0x277D84F90] + 16) + 1, 1, MEMORY[0x277D84F90]);
                          }

                          v192 = v171[2];
                          v191 = v171[3];
                          v308 = v192 + 1;
                          if (v192 >= v191 >> 1)
                          {
                            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v191 > 1), v308, 1, v171);
                          }

                          v171[2] = v308;
                          v171[v192 + 4] = v190;
                          v193 = specialized SIMD.asScalarArray()(v262, v266);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v171[2] + 1, 1, v171);
                          }

                          v195 = v171[2];
                          v194 = v171[3];
                          v309 = v195 + 1;
                          if (v195 >= v194 >> 1)
                          {
                            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v194 > 1), v309, 1, v171);
                          }

                          v171[2] = v309;
                          v171[v195 + 4] = v193;
                          v196 = specialized SIMD.asScalarArray()(v271, v278);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v171[2] + 1, 1, v171);
                          }

                          v198 = v171[2];
                          v197 = v171[3];
                          v310 = v198 + 1;
                          if (v198 >= v197 >> 1)
                          {
                            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v197 > 1), v310, 1, v171);
                          }

                          v171[2] = v310;
                          v171[v198 + 4] = v196;
                          v170 = specialized SIMD.asScalarArray()(v287, v296);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v171[2] + 1, 1, v171);
                          }

                          v173 = v171[2];
                          v199 = v171[3];
                          v306 = v173 + 1;
                          if (v173 >= v199 >> 1)
                          {
                            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v199 > 1), v306, 1, v171);
                          }

                          goto LABEL_343;
                        }
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double4x4aGMd, &_sSaySo14simd_double4x4aGMR);
                        if (!swift_dynamicCastMetatype())
                        {
                          if (swift_dynamicCastMetatype())
                          {
                            v213 = RIOPxrUsdAttributeCopyValue();
                            if (!v213)
                            {
                              v213 = RIOPxrVtValueCreateEmptyValue();
                            }

                            v214 = RIOPxrVtValueRef.asString.getter();
                            v216 = v215;

                            if (v216)
                            {
                              v49.super.isa = MEMORY[0x26670EFB0](v214, v216);
LABEL_81:
                              isa = v49.super.isa;

LABEL_379:
                              v320.n128_u64[0] = v9;
                              v320.n128_u64[1] = v11;
                              [v0 __swift_setObject_forKeyedSubscript_];
                              swift_unknownObjectRelease();
                              goto LABEL_380;
                            }

LABEL_378:
                            isa = 0;
                            goto LABEL_379;
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                          if (swift_dynamicCastMetatype())
                          {
                            v217 = RIOPxrUsdAttributeCopyValue();
                            if (!v217)
                            {
                              v217 = RIOPxrVtValueCreateEmptyValue();
                            }

                            v218 = RIOPxrVtValueRef.asStringArray.getter();

                            if (!v218)
                            {
                              goto LABEL_378;
                            }

                            goto LABEL_80;
                          }

                          if (swift_dynamicCastMetatype())
                          {
                            v219 = RIOPxrUsdAttributeCopyValue();
                            if (!v219)
                            {
                              v219 = RIOPxrVtValueCreateEmptyValue();
                            }

                            isa = RIOPxrVtValueCopyToken();

                            if (!isa)
                            {
                              goto LABEL_379;
                            }

                            v220 = RIOPxrTfTokenCopyString();
                            goto LABEL_408;
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO16ToolsFoundationsO5TokenVGMd, &_sSay9RealityIO16ToolsFoundationsO5TokenVGMR);
                          if (swift_dynamicCastMetatype())
                          {
                            v221 = RIOPxrUsdAttributeCopyValue();
                            if (!v221)
                            {
                              v221 = RIOPxrVtValueCreateEmptyValue();
                            }

                            isa = RIOPxrVtValueRef.asTokenArray.getter();

                            if (!isa)
                            {
                              goto LABEL_379;
                            }

                            v222 = MEMORY[0x277D00AC0];
                            goto LABEL_414;
                          }

                          if (swift_dynamicCastMetatype())
                          {
                            v223 = RIOPxrUsdAttributeCopyValue();
                            if (!v223)
                            {
                              v223 = RIOPxrVtValueCreateEmptyValue();
                            }

                            isa = RIOPxrVtValueCopyPath();

                            if (!isa)
                            {
                              goto LABEL_379;
                            }

                            v220 = RIOPxrSdfPathCopyString();
                            goto LABEL_408;
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
                          if (swift_dynamicCastMetatype())
                          {
                            v224 = RIOPxrUsdAttributeCopyValue();
                            if (!v224)
                            {
                              v224 = RIOPxrVtValueCreateEmptyValue();
                            }

                            isa = RIOPxrVtValueRef.asPathListOp.getter();

                            if (!isa)
                            {
                              goto LABEL_379;
                            }

                            v222 = MEMORY[0x277D00990];
                          }

                          else
                          {
                            if (swift_dynamicCastMetatype())
                            {
                              v225 = RIOPxrUsdAttributeCopyValue();
                              if (!v225)
                              {
                                v225 = RIOPxrVtValueCreateEmptyValue();
                              }

                              isa = RIOPxrVtValueCopyAssetPath();

                              if (!isa)
                              {
                                goto LABEL_379;
                              }

                              v220 = RIOPxrSdfAssetPathAssetPathCopyString();
LABEL_408:
                              v226 = v220;
                              v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                              v318 = v228;

                              v320.n128_u64[0] = v227;
                              v320.n128_u64[1] = v318;
                              isa = _bridgeAnythingToObjectiveC<A>(_:)();
                              outlined destroy of String(&v320);
                              goto LABEL_379;
                            }

                            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMd, &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMR);
                            if (!swift_dynamicCastMetatype())
                            {
                              v142.super.isa = MEMORY[0x26670EFB0](0xD00000000000003CLL, 0x8000000261995D40);
                              goto LABEL_416;
                            }

                            v229 = RIOPxrUsdAttributeCopyValue();
                            if (!v229)
                            {
                              v229 = RIOPxrVtValueCreateEmptyValue();
                            }

                            isa = RIOPxrVtValueRef.asAssetPathArray.getter();

                            if (!isa)
                            {
                              goto LABEL_379;
                            }

                            v222 = MEMORY[0x277D008D0];
                          }

LABEL_414:
                          v230 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9RealityIO16ToolsFoundationsO5TokenVG_SSs5NeverOTg503_s9d63IO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSSAA16fg2O5H7VXEfU8_Tf1cn_nTm(isa, v222);

                          v320.n128_u64[0] = v230;
                          isa = _bridgeAnythingToObjectiveC<A>(_:)();
                          outlined destroy of Any?(&v320, &_sSaySSGMd, &_sSaySSGMR);
                          goto LABEL_379;
                        }

                        v202 = RIOPxrUsdAttributeCopyValue();
                        if (!v202)
                        {
                          v202 = RIOPxrVtValueCreateEmptyValue();
                        }

                        v203 = RIOPxrVtValueRef.asMatrix4dArray.getter();

                        v317 = v203;
                        if (v203)
                        {
                          v288 = v203[2];
                          if (v288)
                          {
                            v204 = 0;
                            v279 = (v203 + 4);
                            v205 = MEMORY[0x277D84F90];
                            while (v317[2] > v204)
                            {
                              v206 = 0;
                              v272 = v204 + 1;
                              v207 = &v279[128 * v204];
                              v263 = *v207;
                              v267 = v207[1];
                              v257 = v207[2];
                              v259 = v207[3];
                              v253 = v207[4];
                              v255 = v207[5];
                              v249 = v207[6];
                              v251 = v207[7];
                              do
                              {
                                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
                                v208 = swift_allocObject();
                                v311 = v208;
                                *(v208 + 16) = xmmword_2619891C0;
                                if (v206 > 1)
                                {
                                  v209 = v253;
                                  v210 = v255;
                                  if (v206 != 2)
                                  {
                                    v209 = v249;
                                    v210 = v251;
                                  }
                                }

                                else
                                {
                                  v209 = v263;
                                  v210 = v267;
                                  if (v206)
                                  {
                                    v209 = v257;
                                    v210 = v259;
                                  }
                                }

                                *(v208 + 32) = specialized SIMD.asScalarArray()(v209, v210);
                                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                {
                                  v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v205[2] + 1, 1, v205);
                                }

                                v212 = v205[2];
                                v211 = v205[3];
                                v297 = v212 + 1;
                                if (v212 >= v211 >> 1)
                                {
                                  v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v211 > 1), v297, 1, v205);
                                }

                                ++v206;
                                v205[2] = v297;
                                v205[v212 + 4] = v311;
                              }

                              while (v206 != 4);
                              v204 = v272;
                              if (v272 == v288)
                              {
                                goto LABEL_371;
                              }
                            }

LABEL_447:
                            __break(1u);
                            return;
                          }

LABEL_371:

                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySdGGMd, &_sSaySaySdGGMR);
LABEL_372:
                          v200.super.isa = Array._bridgeToObjectiveC()().super.isa;

                          v320.n128_u64[0] = v9;
                          v320.n128_u64[1] = v11;
                          v201 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
LABEL_373:
                          [v0 __swift_setObject_forKeyedSubscript_];

LABEL_380:
                          swift_unknownObjectRelease();

                          goto LABEL_381;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_381:
      v3 = MEMORY[0x277D84F90];
      if (v5 == v4)
      {
LABEL_418:

        goto LABEL_420;
      }
    }

    v42 = RIOPxrUsdAttributeCopyValue();
    if (!v42)
    {
      v42 = RIOPxrVtValueCreateEmptyValue();
    }

    v320.n128_u32[0] = 0;
    v43 = v42;
    v44 = RIOPxrVtValueGetUInt32();

    if ((v44 & 1) == 0)
    {
      goto LABEL_378;
    }

    v45.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
LABEL_75:
    isa = v45.super.super.isa;
    goto LABEL_379;
  }

LABEL_420:
  v319 = v0;
  v231 = Prim.children.getter();
  v320.n128_u64[0] = v3;
  v232 = specialized Array._getCount()();
  if (!v232)
  {
    goto LABEL_433;
  }

  v233 = v232;
  v234 = 0;
  while ((v231 & 0xC000000000000001) != 0)
  {
    v235 = MEMORY[0x26670F670](v234, v231);
    v236 = v234 + 1;
    if (__OFADD__(v234, 1))
    {
      goto LABEL_431;
    }

LABEL_427:
    v328[0] = v235;
    if (closure #13 in componentPrimToDictionary(component:)(v328))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v234;
    if (v236 == v233)
    {
      goto LABEL_432;
    }
  }

  if (v234 >= *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_442;
  }

  v235 = *(v231 + 8 * v234 + 32);

  v236 = v234 + 1;
  if (!__OFADD__(v234, 1))
  {
    goto LABEL_427;
  }

LABEL_431:
  __break(1u);
LABEL_432:
  v3 = v320.n128_u64[0];
LABEL_433:

  v237 = specialized Array._getCount()();
  if (v237)
  {
    v238 = v237;
    if (v237 >= 1)
    {
      v239 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26670F670](v239, v3);
        }

        else
        {
        }

        ++v239;
        v240 = RIOPxrUsdObjectCopyName();
        v241 = RIOPxrTfTokenCopyString();
        v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v244 = v243;

        componentPrimToDictionary(component:)();
        v246 = v245;
        v320.n128_u64[0] = v242;
        v320.n128_u64[1] = v244;
        [v319 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
      }

      while (v238 != v239);
      goto LABEL_440;
    }

LABEL_444:
    __break(1u);
  }

LABEL_440:
}

uint64_t closure #13 in componentPrimToDictionary(component:)(uint64_t *a1)
{
  v1 = RIOPxrUsdPrimCopyTypeName();
  if (String.count.getter() < 1)
  {
    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v2 = RIOPxrTfTokenCreateWithCString();
  }

  v3 = v2;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  v4 = static _CFObject.== infix(_:_:)();

  if (v4)
  {
    return 1;
  }

  v5 = RIOPxrUsdPrimCopyTypeName();
  v6 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
  v7 = v6;
  v8 = static _CFObject.== infix(_:_:)();

  if (v8)
  {
    return 1;
  }

  v9 = RIOPxrUsdPrimCopyTypeName();
  v10 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
  v11 = v10;
  v12 = static _CFObject.== infix(_:_:)();

  if (v12)
  {
    return 1;
  }

  v14 = RIOPxrUsdPrimCopyTypeName();
  if (String.count.getter() < 1)
  {
    v15 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v15 = RIOPxrTfTokenCreateWithCString();
  }

  v16 = v15;
  v17 = static _CFObject.== infix(_:_:)();

  return v17 & 1;
}

void *specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t Stage.prim(of:at:)(void *a1, void *a2)
{
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = PrimIfNeeded;
  return result;
}

void Stage.subscript.getter(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v6 = RIOPxrUsdStageCopyRootLayer();
  v8 = RIOPxrSdfLayerCopyCustomLayerDataValue();

  if (v8)
  {
    RIOPxrVtValueRef.mapUSDValue<A>()(a2, a4);
  }

  else
  {
    v7 = *(*(a2 - 8) + 56);

    v7(a4, 1, 1, a2);
  }
}

char *Stage.createImportSession(engine:pipelineVersion:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for __EngineRef();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    dispatch thunk of __Engine.__coreEngine.getter();

    __AssetRef.__as<A>(_:)();
    (*(v4 + 8))(v7, v3);
  }

  result = RIOImportSessionCreateWithStage();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for Entity();
    type metadata accessor for ImportSession(0);
    swift_allocObject();
    return specialized ImportSession.init<A>(core:entityType:)(v9, v10, v11);
  }

  return result;
}

Swift::Int Stage.LoadError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  return Hasher._finalize()();
}

uint64_t Stage.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = RIOPxrUsdStageCreateInMemory();
  return v0;
}

uint64_t Stage.__allocating_init(identifier:buffer:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_allocObject();
  String.utf8CString.getter();

  v5 = RIOPxrUsdStageCreateWithInMemoryBuffer();

  if (v5)
  {
    *(v4 + 16) = v5;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t Stage.init(identifier:buffer:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.utf8CString.getter();

  v5 = RIOPxrUsdStageCreateWithInMemoryBuffer();

  if (v5)
  {
    *(v4 + 16) = v5;
  }

  else
  {
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t Stage.__allocating_init(identifier:data:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  Stage.init(identifier:data:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Stage.init(identifier:data:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  String.utf8CString.getter();

  v8 = RIOPxrUsdStageCreateWithInMemoryDataBufferWithErrorReporting();

  if (v8)
  {
    outlined consume of Data._Representation(a3, a4);
    *(v4 + 16) = v8;
  }

  else
  {
    lazy protocol witness table accessor for type Stage.LoadError and conformance Stage.LoadError();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(a3, a4);
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t Stage.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Stage.init(from:)(a1);
  return v2;
}

uint64_t Stage.init(from:)(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(*MEMORY[0x277D85DE8]);
  v5 = v4;
  v6 = RIOPxrUsdStageCreateWithFileURLWithErrorReporting();

  if (v6)
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 8))(a1, v7);
    *(v2 + 16) = v6;
  }

  else
  {
    lazy protocol witness table accessor for type Stage.LoadError and conformance Stage.LoadError();
    swift_allocError();
    swift_willThrow();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 8))(a1, v8);
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t Stage.__allocating_init(contentsOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = RIOPxrUsdStageCreateWithFileURL();

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  if (v6)
  {
    *(v2 + 16) = v6;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t Stage.init(contentsOf:)@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(a2);
  v6 = v5;
  v7 = RIOPxrUsdStageCreateWithFileURL();

  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(a1, v8);
  if (v7)
  {
    *(v3 + 16) = v7;
  }

  else
  {
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t Stage.__allocating_init(from:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Stage.init(from:)(a1, a2);
  return v4;
}

uint64_t Stage.init(from:)(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();

  v3 = RIOPxrUsdStageCreateWithFilePathWithErrorReporting();

  if (v3)
  {
    *(v2 + 16) = v3;
  }

  else
  {
    lazy protocol witness table accessor for type Stage.LoadError and conformance Stage.LoadError();
    swift_allocError();
    swift_willThrow();
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t Stage.__allocating_init(withFilePath:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = swift_allocObject();
  v5 = String.utf8CString.getter();

  v6 = a3(v5 + 32);

  if (v6)
  {
    *(v4 + 16) = v6;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t Stage.init(withFilePath:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = String.utf8CString.getter();

  v6 = a3(v5 + 32);

  if (v6)
  {
    *(v3 + 16) = v6;
  }

  else
  {
    type metadata accessor for Stage();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t static Stage.isSupportedFile(_:)(uint64_t a1)
{
  URL.absoluteString.getter();
  String.utf8CString.getter();

  IsSupportedFile = RIOPxrUsdStageIsSupportedFile();

  return IsSupportedFile;
}

uint64_t Stage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static Stage.makeTopLevelEntityStage(from:)(uint64_t a1)
{
  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  type metadata accessor for Stage();
  result = swift_allocObject();
  *(result + 16) = TopLevelEntityFromStage;
  return result;
}

uint64_t Stage.description.getter()
{
  v0 = RIOPxrUsdStageCopyUSDA();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t Stage.debugDescription.getter()
{
  v0 = RIOPxrUsdStageCopyUSDA();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  MEMORY[0x26670F080](v1, v3);

  return 0xA3E65676174533CLL;
}

uint64_t (*Stage.metersPerUnit.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrUsdStageGetMetersPerUnit();
  *a1 = v3;
  return Stage.metersPerUnit.modify;
}

uint64_t key path getter for Stage.defaultPrim : Stage@<X0>(uint64_t *a2@<X8>)
{
  v3 = RIOPxrUsdStageCopyDefaultPrim();
  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

uint64_t key path setter for Stage.defaultPrim : Stage(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;

  v3 = RIOPxrUsdStageCopyPseudoRootPrim();
  type metadata accessor for RIOPxrUsdObjectRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, type metadata accessor for RIOPxrUsdObjectRef, &protocol conformance descriptor for RIOPxrUsdObjectRef);
  v4 = static _CFObject.== infix(_:_:)();

  if (v4)
  {
    RIOPxrUsdStageClearDefaultPrim();
  }

  else
  {
    v5 = *(v2 + 16);
    RIOPxrUsdStageSetDefaultPrim();
  }
}

uint64_t Stage.defaultPrim.setter(uint64_t a1)
{
  v2 = RIOPxrUsdStageCopyPseudoRootPrim();
  type metadata accessor for RIOPxrUsdObjectRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, type metadata accessor for RIOPxrUsdObjectRef, &protocol conformance descriptor for RIOPxrUsdObjectRef);
  v3 = static _CFObject.== infix(_:_:)();

  if (v3)
  {
    RIOPxrUsdStageClearDefaultPrim();
  }

  else
  {
    v4 = *(a1 + 16);
    RIOPxrUsdStageSetDefaultPrim();
  }
}

uint64_t (*Stage.defaultPrim.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = *(v1 + 16);
  v3 = RIOPxrUsdStageCopyDefaultPrim();
  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
  return Stage.defaultPrim.modify;
}

uint64_t Stage.defaultPrim.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    v3 = RIOPxrUsdStageCopyPseudoRootPrim();
    type metadata accessor for RIOPxrUsdObjectRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, type metadata accessor for RIOPxrUsdObjectRef, &protocol conformance descriptor for RIOPxrUsdObjectRef);
    v4 = static _CFObject.== infix(_:_:)();

    if (v4)
    {
      RIOPxrUsdStageClearDefaultPrim();
    }

    else
    {
      v7 = *(v2 + 16);
      RIOPxrUsdStageSetDefaultPrim();
    }
  }

  else
  {
    v5 = RIOPxrUsdStageCopyPseudoRootPrim();
    type metadata accessor for RIOPxrUsdObjectRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, type metadata accessor for RIOPxrUsdObjectRef, &protocol conformance descriptor for RIOPxrUsdObjectRef);
    v6 = static _CFObject.== infix(_:_:)();

    if (v6)
    {
      RIOPxrUsdStageClearDefaultPrim();
    }

    else
    {
      v8 = *(v2 + 16);
      RIOPxrUsdStageSetDefaultPrim();
    }
  }
}

uint64_t Stage.addReference(of:at:from:)@<X0>(void **a2@<X1>, uint64_t a4@<X8>)
{
  v5 = *a2;
  URL.absoluteString.getter();
  String.utf8CString.getter();

  IsSupportedFile = RIOPxrUsdStageIsSupportedFile();

  if (IsSupportedFile)
  {
    result = URL.isFileURL.getter();
    if (result)
    {
      if (v5)
      {
        v8 = v5;
      }

      else
      {
        URL.lastPathComponent.getter();
        Stage.generatePrimPath(for:)(&v16);

        v8 = v16;
      }

      v11 = v5;
      v12 = RIOPxrTfTokenEmpty();
      PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
      type metadata accessor for Prim();
      v9 = swift_allocObject();
      *(v9 + 16) = PrimIfNeeded;

      URL.path.getter();
      String.utf8CString.getter();

      v14 = RIOPxrUsdPrimAddReference();

      if (v14)
      {

        v10 = 0;
      }

      else
      {
        v15 = RIOPxrUsdObjectCopyPath();

        RIOPxrUsdStageRemovePrim();

        v10 = 1;
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
      v10 = 1;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  *a4 = v9;
  *(a4 + 8) = v10;
  return result;
}

uint64_t Stage.generatePrimPath(for:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x26670EFB0]();
  v3 = [v2 stringByDeletingPathExtension];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.utf8CString.getter();
  v4 = RIOPxrSdfPathCreateFromCString();

  HasPrimAtPrimPath = RIOPxrUsdStageHasPrimAtPrimPath();

  if (HasPrimAtPrimPath)
  {
    v6 = 1;
    while (1)
    {

      MEMORY[0x26670F080](95, 0xE100000000000000);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26670F080](v7);

      String.utf8CString.getter();

      v8 = RIOPxrSdfPathCreateFromCString();

      v9 = RIOPxrUsdStageHasPrimAtPrimPath();

      if (!v9)
      {
        break;
      }

      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        goto LABEL_7;
      }
    }

    MEMORY[0x26670F080](95, 0xE100000000000000);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26670F080](v12);

    String.utf8CString.getter();

    v11 = RIOPxrSdfPathCreateFromCString();
  }

  else
  {
LABEL_7:
    String.utf8CString.getter();

    v11 = RIOPxrSdfPathCreateFromCString();
  }

  *a1 = v11;
  return result;
}

uint64_t Stage.addReference(identifier:at:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a5@<X8>)
{
  v6 = *a3;
  if (*a3)
  {
    v7 = *a3;
  }

  else
  {
    v8 = MEMORY[0x26670EFB0](a1, a2);
    v9 = [v8 stringByDeletingPathExtension];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Stage.generatePrimPath(for:)(&v17);

    v6 = 0;
    v7 = v17;
  }

  v10 = v6;
  v11 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  type metadata accessor for Prim();
  v13 = swift_allocObject();
  *(v13 + 16) = PrimIfNeeded;

  String.utf8CString.getter();

  v14 = RIOPxrUsdPrimAddReference();

  if (v14)
  {
  }

  else
  {
    v16 = RIOPxrUsdObjectCopyPath();

    RIOPxrUsdStageRemovePrim();

    v13 = 2;
  }

  *a5 = v13;
  *(a5 + 8) = v14 ^ 1;
  return result;
}

uint64_t Stage.copyPrim(at:to:includingDescendants:)(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = RIOPxrUsdStageCopyRootLayer();
  v4 = RIOPxrUsdStageCopyRootLayer();
  RIOPxrUsdUtilsSdfCopySpec();

  v5 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = PrimIfNeeded;
  return result;
}

uint64_t Stage.over(at:)(void *a1, uint64_t (*a2)(void, void))
{
  v3 = a2(*(v2 + 16), *a1);
  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

uint64_t Stage.usedLayers()()
{
  v0 = RIOPxrUsdStageCopyUsedLayers();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      type metadata accessor for RIOPxrSdfLayerRef(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_7:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = v6 + 1;
        v8 = MEMORY[0x26670F670]();
        type metadata accessor for SceneDescriptionFoundations.Layer();
        *(swift_allocObject() + 16) = v8;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v6 = v7;
      }

      while (v4 != v7);
    }

    else
    {
      type metadata accessor for SceneDescriptionFoundations.Layer();
      v9 = 32;
      do
      {
        v10 = *(v3 + v9);
        *(swift_allocObject() + 16) = v10;
        v11 = v10;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 += 8;
        --v4;
      }

      while (v4);
    }

    return v1;
  }

  return result;
}

uint64_t Stage.editTarget()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdStageCopyEditTarget();
  *a1 = result;
  return result;
}

void Stage.setEditTarget(on:)(uint64_t a1)
{
  v1 = RIOPxrUsdEditTargetCreateWithLayer();
  RIOPxrUsdStageSetEditTarget();
}

Swift::String __swiftcall Stage.toFlattenedString(addSourceFileComment:)(Swift::Bool addSourceFileComment)
{
  v1 = RIOPxrUsdStageCopyFlattenedUSDA();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

void Stage.loadThenUnload(loads:unloads:includeDescendants:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(a1);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16RIOPxrSdfPathRefa_SayAEGTt0g5Tf4g_n(IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n);

  type metadata accessor for RIOPxrSdfPathRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef, &protocol conformance descriptor for RIOPxrSdfPathRef);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(a2);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16RIOPxrSdfPathRefa_SayAEGTt0g5Tf4g_n(v6);

  v7 = Set._bridgeToObjectiveC()().super.isa;

  RIOPxrUsdStageLoadThenUnload();
}

uint64_t Stage.export(to:sourceFileComment:fileFormatArguments:)@<X0>(uint64_t a2@<X2>, NSURL *a3@<X8>)
{
  URL._bridgeToObjectiveC()(a3);
  v5 = v4;
  if (a2)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = RIOPxrUsdStageExportWithFileURL();

  return v7;
}

uint64_t Stage.defaultPrim.getter(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(*(v2 + 16));
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

void key path getter for Stage.subscript<A>(customLayerDataKey:) : <A>StageA(id *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *a1;
  Stage.subscript.getter(v4, a3);
}

uint64_t key path setter for Stage.subscript<A>(customLayerDataKey:) : <A>StageA(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Optional();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v17 - v11;
  v13 = *a3;
  (*(v14 + 16))(&v17 - v11, a1, v10);
  v18 = v13;
  v15 = v13;
  return Stage.subscript.setter(v12, &v18, v6, v7);
}

uint64_t Stage.subscript.setter(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = &v25 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v15, v11);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(v9 + 16))(v13, a1, v8, v16);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    v20 = *(v9 + 8);
    v20(v13, v8);
    v21 = RIOPxrUsdStageCopyRootLayer();
    RIOPxrSdfLayerClearCustomLayerData();

    return (v20)(a1, v8);
  }

  else
  {
    (*(v14 + 32))(v18, v13, a3);
    v23 = RIOPxrUsdStageCopyRootLayer();
    v24 = (*(a4 + 8))(a3, a4);
    RIOPxrSdfLayerSetCustomLayerData();

    (*(v9 + 8))(a1, v8);
    return (*(v14 + 8))(v18, a3);
  }
}

void (*Stage.subscript.modify(void *a1, void **a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v18 = v17;
  Stage.subscript.getter(a3, v16);

  return Stage.subscript.modify;
}

void Stage.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[5];
  if (a2)
  {
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[1];
    v9 = *v2;
    (*(v7 + 16))((*a1)[5], v3, v6);
    v12 = v4;
    Stage.subscript.setter(v5, &v12, v9, v8);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    v10 = v2[1];
    v11 = *v2;
    v12 = (*a1)[7];
    Stage.subscript.setter(v3, &v12, v11, v10);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Stage()
{
  v0 = RIOPxrUsdStageCopyUSDA();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Stage()
{
  v0 = RIOPxrUsdStageCopyUSDA();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  MEMORY[0x26670F080](v1, v3);

  return 0xA3E65676174533CLL;
}

id Stage.USDError.getter()
{
  result = RIOPxrUsdStageGetUsdError();
  if (result)
  {
    v1 = result;
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
    result = swift_allocError();
    *v2 = v1;
  }

  return result;
}

uint64_t Stage.USDErrors.getter()
{
  v0 = RIOPxrUsdStageGetUsdErrors();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return v1;
}

uint64_t closure #1 in Stage.getUSDMessages(isWarning:)(uint64_t a1, uint64_t a2)
{
  v3 = String.init(cString:)();
  v5 = v4;
  swift_beginAccess();
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  *(a2 + 16) = v6;
  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t Stage.USDWarnings.getter(uint64_t a1, uint64_t a2, char a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = (v5 + 16);
  v10[4] = a1;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>) -> ();
  v10[3] = a2;
  v7 = _Block_copy(v10);

  RIOPxrUsdStageGatherDiagnostics();
  _Block_release(v7);
  swift_beginAccess();
  v8 = *v6;

  return v8;
}

void Stage.setDiagnosticNotification(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed () -> ();
  v3[3] = &block_descriptor_8;
  v2 = _Block_copy(v3);

  RIOPxrUsdStageSetDiagnosticChangeNotification();
  _Block_release(v2);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

Swift::Int Stage.Error.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Stage.Error()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

uint64_t Stage.MissingReference.assetPath.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Stage.MissingReference.primPath.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Stage.MissingReference.referencedPrimPath.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Stage.MissingReference.sourceFile.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Stage.MissingReference.sourcePrimPath.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void __swiftcall Stage.MissingReference.init(type:assetPath:primPath:referencedPrimPath:sourceFile:sourcePrimPath:)(RealityIO::Stage::MissingReference *__return_ptr retstr, RealityIO::Stage::MissingReferenceType type, Swift::String assetPath, Swift::String_optional primPath, Swift::String_optional referencedPrimPath, Swift::String_optional sourceFile, Swift::String_optional sourcePrimPath)
{
  retstr->type = *type;
  retstr->assetPath = assetPath;
  retstr->primPath = primPath;
  retstr->referencedPrimPath = referencedPrimPath;
  retstr->sourceFile.value._countAndFlagsBits = sourceFile.value._countAndFlagsBits;
  *&retstr->sourceFile.value._object = *&sourceFile.value._object;
  retstr->sourcePrimPath.value._object = sourcePrimPath.value._object;
}

void Stage.MissingReference.hash(into:)(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[6];
  v4 = v1[8];
  v5 = v1[10];
  MEMORY[0x26670FA20](*v1);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_10:
      Hasher._combine(_:)(0);
      if (v5)
      {
        goto LABEL_5;
      }

LABEL_11:
      Hasher._combine(_:)(0);
      return;
    }
  }

  Hasher._combine(_:)(0);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int Stage.MissingReference.hashValue.getter()
{
  Hasher.init(_seed:)();
  Stage.MissingReference.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Stage.MissingReference()
{
  Hasher.init(_seed:)();
  Stage.MissingReference.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Stage.MissingReference()
{
  Hasher.init(_seed:)();
  Stage.MissingReference.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t static Stage.messageToErrorResult(_:)@<X0>(uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v96 = a2;
  v97 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S5st_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S5st_GSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v90 = &v79 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S5st_GMd, &_s17_StringProcessing5RegexV5MatchVySs_S5st_GMR);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v6);
  v87 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S4st_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S4st_GSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v93 = &v79 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S4st_GMd, &_s17_StringProcessing5RegexV5MatchVySs_S4st_GMR);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v11);
  v88 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GMR);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v89 = &v79 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S5stGMd, &_s17_StringProcessing5RegexVySs_S5stGMR);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v21);
  v23 = &v79 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S4stGMd, &_s17_StringProcessing5RegexVySs_S4stGMR);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v24);
  v26 = &v79 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  v102 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v79 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SstMd, &_sSs_SstMR);
  Regex.init(_regexString:version:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_S4stMd, &_sSs_S4stMR);
  v104 = v26;
  v31 = v23;
  Regex.init(_regexString:version:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_S5stMd, &_sSs_S5stMR);
  Regex.init(_regexString:version:)();
  v103 = v27;
  Regex.firstMatch(in:)();
  v32 = v89;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of Any?(v16, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
    v33 = v93;
    v34 = v101;
    Regex.firstMatch(in:)();
    v35 = v94;
    if ((*(v94 + 48))(v33, 1, v95) == 1)
    {
      outlined destroy of Any?(v33, &_s17_StringProcessing5RegexV5MatchVySs_S4st_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S4st_GSgMR);
      v36 = v90;
      v37 = v99;
      Regex.firstMatch(in:)();
      v38 = v91;
      if ((*(v91 + 48))(v36, 1, v92) == 1)
      {
        (*(v98 + 8))(v23, v37);
        (*(v100 + 8))(v104, v34);
        (*(v102 + 8))(v30, v103);
        result = outlined destroy of Any?(v36, &_s17_StringProcessing5RegexV5MatchVySs_S5st_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S5st_GSgMR);
        v40 = v97;
        *v97 = 0u;
        v40[1] = 0u;
        v40[2] = 0u;
        v40[3] = 0u;
        v40[4] = 0u;
        *(v40 + 10) = 0;
      }

      else
      {
        (*(v38 + 32))();
        Regex.Match.output.getter();

        v94 = v106;
        v93 = v107;
        v62 = v109;
        v80 = v108;
        v90 = v114;
        v89 = v115;
        v63 = v117;
        v81 = v116;
        v84 = v118;
        v83 = v119;
        v64 = v121;
        v82 = v120;
        v88 = v122;
        v86 = v123;
        v65 = v125;
        v85 = v124;
        v96 = MEMORY[0x26670F020](v110, v111, v112, v113);
        v95 = v66;

        v94 = MEMORY[0x26670F020](v94, v93, v80, v62);
        v93 = v67;

        v90 = MEMORY[0x26670F020](v90, v89, v81, v63);
        v89 = v68;

        v69 = MEMORY[0x26670F020](v84, v83, v82, v64);
        v71 = v70;

        v72 = MEMORY[0x26670F020](v88, v86, v85, v65);
        v74 = v73;

        (*(v38 + 8))(v87, v92);
        (*(v98 + 8))(v31, v37);
        (*(v100 + 8))(v104, v34);
        result = (*(v102 + 8))(v30, v103);
        v75 = v97;
        *v97 = 2;
        v76 = v95;
        v75[1] = v96;
        v75[2] = v76;
        v77 = v93;
        v75[3] = v94;
        v75[4] = v77;
        v78 = v89;
        v75[5] = v90;
        v75[6] = v78;
        v75[7] = v69;
        v75[8] = v71;
        v75[9] = v72;
        v75[10] = v74;
      }
    }

    else
    {
      (*(v35 + 32))();
      v45 = v35;
      Regex.Match.output.getter();

      v46 = v107;
      v92 = v106;
      v47 = v108;
      v48 = v109;
      v87 = v114;
      v86 = v115;
      v49 = v117;
      v85 = v116;
      v91 = v118;
      v90 = v119;
      v50 = v121;
      v89 = v120;
      v96 = MEMORY[0x26670F020](v110, v111, v112, v113);
      v93 = v51;

      v92 = MEMORY[0x26670F020](v92, v46, v47, v48);
      v53 = v52;

      v54 = MEMORY[0x26670F020](v87, v86, v85, v49);
      v56 = v55;

      v57 = MEMORY[0x26670F020](v91, v90, v89, v50);
      v59 = v58;

      (*(v45 + 8))(v88, v95);
      (*(v98 + 8))(v31, v99);
      (*(v100 + 8))(v104, v34);
      result = (*(v102 + 8))(v30, v103);
      v60 = v97;
      *v97 = 1;
      v61 = v93;
      v60[1] = v96;
      v60[2] = v61;
      v60[3] = v92;
      v60[4] = v53;
      v60[5] = 0;
      v60[6] = 0;
      v60[7] = v54;
      v60[8] = v56;
      v60[9] = v57;
      v60[10] = v59;
    }
  }

  else
  {
    (*(v18 + 32))(v32, v16, v17);
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v41 = MEMORY[0x26670F020](v105[0], v105[1], v105[2], v105[3]);
    v43 = v42;

    (*(v18 + 8))(v32, v17);
    (*(v98 + 8))(v23, v99);
    (*(v100 + 8))(v104, v101);
    result = (*(v102 + 8))(v30, v103);
    v44 = v97;
    *v97 = 0;
    *(v44 + 1) = v41;
    *(v44 + 2) = v43;
    *(v44 + 24) = 0u;
    *(v44 + 40) = 0u;
    *(v44 + 56) = 0u;
    *(v44 + 72) = 0u;
  }

  return result;
}

uint64_t Stage.missingReferences.getter()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v2 = (v0 + 16);
  *&v34 = closure #1 in Stage.getUSDMessages(isWarning:)partial apply;
  *(&v34 + 1) = v0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v33 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>) -> ();
  *(&v33 + 1) = &block_descriptor_13;
  v3 = _Block_copy(&aBlock);

  RIOPxrUsdStageGatherDiagnostics();
  _Block_release(v3);
  swift_beginAccess();
  v4 = *v2;

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v4 + 40;
    do
    {
      v20 = v1;
      v9 = (v8 + 16 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v7 = v10 + 1;
        v11 = *v9;
        type metadata accessor for Stage();

        static Stage.messageToErrorResult(_:)(v11, &aBlock);

        if (v33)
        {
          break;
        }

        v28 = v34;
        v29 = v35;
        v30 = v36;
        v31 = v37;
        v26 = aBlock;
        v27 = v33;
        result = outlined destroy of Any?(&v26, &_s9RealityIO5StageC16MissingReferenceVSgMd, &_s9RealityIO5StageC16MissingReferenceVSgMR);
        v9 += 2;
        ++v10;
        if (v6 == v7)
        {
          v1 = v20;
          goto LABEL_13;
        }
      }

      v28 = v34;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      v26 = aBlock;
      v27 = v33;
      v12 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
        v12 = result;
      }

      v13 = v12;
      v14 = *(v12 + 16);
      v15 = v13;
      v16 = *(v13 + 24);
      if (v14 >= v16 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v14 + 1, 1, v15);
        v15 = result;
      }

      v22 = v28;
      v23 = v29;
      v24 = v30;
      v25 = v31;
      v17 = v26;
      v21 = v27;
      *(v15 + 16) = v14 + 1;
      v18 = v15 + 88 * v14;
      v1 = v15;
      *(v18 + 48) = v21;
      *(v18 + 112) = v25;
      *(v18 + 80) = v23;
      *(v18 + 96) = v24;
      *(v18 + 64) = v22;
      *(v18 + 32) = v17;
      v8 = v4 + 40;
    }

    while (v6 - 1 != v10);
  }

LABEL_13:

  v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO5StageC16MissingReferenceV_SayAHGTt0g5Tf4g_n(v1);

  return v19;
}

uint64_t Stage.upAxis.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdStageCopyUpAxis();
  *a1 = result;
  return result;
}

void Stage.upAxis.setter(id *a1)
{
  v1 = *a1;
  RIOPxrUsdStageSetUpAxis();
}

void (*Stage.upAxis.modify(uint64_t *a1))(id *a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdStageCopyUpAxis();
  return Stage.upAxis.modify;
}

void Stage.upAxis.modify(id *a1)
{
  v1 = *a1;
  RIOPxrUsdStageSetUpAxis();
}

uint64_t Stage.colorConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdStageCopyColorConfiguration();
  *a1 = result;
  return result;
}

void Stage.colorConfiguration.setter(id *a1)
{
  v1 = *a1;
  RIOPxrUsdStageSetColorConfiguration();
}

void (*Stage.colorConfiguration.modify(uint64_t *a1))(id *a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdStageCopyColorConfiguration();
  return Stage.colorConfiguration.modify;
}

void Stage.colorConfiguration.modify(id *a1)
{
  v1 = *a1;
  RIOPxrUsdStageSetColorConfiguration();
}

uint64_t Stage.colorManagementSystem.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdStageCopyColorManagementSystem();
  *a1 = result;
  return result;
}

void Stage.colorManagementSystem.setter(id *a1)
{
  v1 = *a1;
  RIOPxrUsdStageSetColorManagementSystem();
}

void (*Stage.colorManagementSystem.modify(uint64_t *a1))(id *a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdStageCopyColorManagementSystem();
  return Stage.colorManagementSystem.modify;
}

void Stage.colorManagementSystem.modify(id *a1)
{
  v1 = *a1;
  RIOPxrUsdStageSetColorManagementSystem();
}

uint64_t (*Stage.startTimeCode.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrUsdStageGetStartTimeCode();
  *a1 = v3;
  return Stage.startTimeCode.modify;
}

uint64_t (*Stage.endTimeCode.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrUsdStageGetEndTimeCode();
  *a1 = v3;
  return Stage.endTimeCode.modify;
}

uint64_t (*Stage.timeCodesPerSecond.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrUsdStageGetTimeCodesPerSecond();
  *a1 = v3;
  return Stage.timeCodesPerSecond.modify;
}

uint64_t (*Stage.framesPerSecond.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrUsdStageGetFramesPerSecond();
  *a1 = v3;
  return Stage.framesPerSecond.modify;
}

Swift::Bool __swiftcall Stage.hasCustomMetadata()()
{
  v0 = RIOPxrUsdStageCopyRootLayer();
  HasCustomLayerMetaData = RIOPxrSdfLayerHasCustomLayerMetaData();

  return HasCustomLayerMetaData;
}

Swift::Void __swiftcall Stage.clearAllCustomMetadata()()
{
  v0 = RIOPxrUsdStageCopyRootLayer();
  RIOPxrSdfLayerClearAllCustomLayerMetaData();
}

char *specialized ImportSession.init<A>(core:entityType:)(void *a1, uint64_t a2, float a3)
{
  v4 = v3;
  v36[1] = a2;
  v6 = type metadata accessor for __EntityRef();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v12 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v14 = swift_allocObject();
  *(v14 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v4[v13] = v14;
  *(v14 + 24) = v15;
  v16 = &v4[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (a1)
  {
    *&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
    v17 = a1;
    EngineRef = RIOImportSessionGetEngineRef();
    if (EngineRef && (*(v4 + 4) = EngineRef, (v19 = RIOImportSessionGetStage()) != 0))
    {
      v20 = v19;
      v36[0] = v7;
      type metadata accessor for Stage();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v4 + 2) = v21;
      v22 = v20;
      RootEntity = RIOImportSessionGetRootEntity();
      if (RootEntity)
      {
        v24 = RootEntity;
        type metadata accessor for AnchorEntity();
        v25 = swift_dynamicCastMetatype();
        REAnchorComponentGetComponentType();
        REEntityRemoveComponentByClass();
        REAnchoringComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (!v25)
          {
            REAnchoringComponentGetComponentType();
            REEntityRemoveComponentByClass();
          }
        }

        else if (v25)
        {
          REAnchoringComponentGetComponentType();
          REEntityAddComponentByClass();
        }

        type metadata accessor for ModelEntity();
        if (swift_dynamicCastMetatype())
        {
          v40 = MEMORY[0x277D841D8];
          aBlock = v24;
          static __AssetRef.__fromCore(_:)();
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          swift_allocObject();
          v27 = MEMORY[0x26670D9A0](v10);
        }

        else
        {
          type metadata accessor for BodyTrackedEntity();
          if (swift_dynamicCastMetatype())
          {
            v40 = MEMORY[0x277D841D8];
            aBlock = v24;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            swift_allocObject();
            v27 = MEMORY[0x26670DC40](v10);
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {
              type metadata accessor for Entity();
              v40 = MEMORY[0x277D841D8];
              aBlock = v24;
              static __AssetRef.__fromCore(_:)();
              __swift_destroy_boxed_opaque_existential_0(&aBlock);
              v28 = static Entity.__fromCore(_:)();
              (*(v36[0] + 8))(v10, v6);
              goto LABEL_23;
            }

            v40 = MEMORY[0x277D841D8];
            aBlock = v24;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            swift_allocObject();
            v27 = MEMORY[0x26670DA30](v10);
          }
        }

        v28 = v27;
LABEL_23:
        *(v4 + 3) = v28;
        type metadata accessor for BehaviorsCommitter();
        v29 = swift_allocObject();
        v29[3] = MEMORY[0x277D84F98];

        v29[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v29[2] = v28;
        *&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v29;
        v30 = swift_allocObject();
        swift_weakInit();
        v41 = closure #1 in ImportSession.init<A>(core:entityType:)partial apply;
        v42 = v30;
        aBlock = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
        v40 = &block_descriptor_110;
        v31 = _Block_copy(&aBlock);

        v32 = *(v4 + 3);
        v33 = swift_allocObject();
        swift_weakInit();
        swift_unownedRetainStrong();
        swift_unownedRetain();

        v34 = swift_allocObject();
        *(v34 + 16) = v32;
        *(v34 + 24) = v33;
        v41 = closure #2 in ImportSession.init<A>(core:entityType:)partial apply;
        v42 = v34;
        aBlock = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
        v40 = &block_descriptor_118;
        v35 = _Block_copy(&aBlock);

        RIOImportSessionSetRegistrationForScenes();
        _Block_release(v35);
        _Block_release(v31);
        RIOImportSessionSetSwiftObject();
        ImportSession.registerDefaultSwiftBuilders()();

        return v4;
      }
    }

    else
    {
    }

    outlined destroy of Any?(&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  }

  else
  {
    outlined destroy of Any?(&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  }

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion], *&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8]);

  type metadata accessor for ImportSession(0);
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t lazy protocol witness table accessor for type Stage.LoadError and conformance Stage.LoadError()
{
  result = lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError;
  if (!lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError;
  if (!lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.LoadError and conformance Stage.LoadError);
  }

  return result;
}

char *_s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5(void *a1, float a2)
{
  v3 = v2;
  v5 = type metadata accessor for __EntityRef();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v10 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v12 = swift_allocObject();
  *(v12 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v3[v11] = v12;
  *(v12 + 24) = v13;
  v14 = &v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (!a1)
  {
    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);

    goto LABEL_11;
  }

  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
  v15 = a1;
  EngineRef = RIOImportSessionGetEngineRef();
  if (!EngineRef || (*(v3 + 4) = EngineRef, (v17 = RIOImportSessionGetStage()) == 0))
  {

LABEL_9:
    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);

LABEL_11:
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion], *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8]);

    type metadata accessor for ImportSession(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = v17;
  type metadata accessor for Stage();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v3 + 2) = v19;
  v20 = v18;
  RootEntity = RIOImportSessionGetRootEntity();
  if (!RootEntity)
  {

    goto LABEL_9;
  }

  v22 = RootEntity;
  REAnchorComponentGetComponentType();
  REEntityRemoveComponentByClass();
  REAnchoringComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REAnchoringComponentGetComponentType();
    REEntityRemoveComponentByClass();
  }

  v35 = MEMORY[0x277D841D8];
  aBlock = v22;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  type metadata accessor for ModelEntity();
  swift_allocObject();
  v23 = MEMORY[0x26670D9A0](v8);
  *(v3 + 3) = v23;
  type metadata accessor for BehaviorsCommitter();
  v24 = swift_allocObject();
  v24[3] = MEMORY[0x277D84F98];

  v24[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v24[2] = v23;
  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  v36 = closure #1 in ImportSession.init<A>(core:entityType:)partial apply;
  v37 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
  v35 = &block_descriptor_71;
  v26 = _Block_copy(&aBlock);

  v27 = *(v3 + 3);
  v28 = swift_allocObject();
  swift_weakInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v36 = closure #2 in ImportSession.init<A>(core:entityType:)partial apply;
  v37 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
  v35 = &block_descriptor_79;
  v30 = _Block_copy(&aBlock);

  RIOImportSessionSetRegistrationForScenes();
  _Block_release(v30);
  _Block_release(v26);
  RIOImportSessionSetSwiftObject();
  ImportSession.registerDefaultSwiftBuilders()();

  return v3;
}

char *_s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ011BodyTrackedK0C_Tt0g5(void *a1, float a2)
{
  v3 = v2;
  v5 = type metadata accessor for __EntityRef();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v10 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v12 = swift_allocObject();
  *(v12 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v3[v11] = v12;
  *(v12 + 24) = v13;
  v14 = &v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (!a1)
  {
    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);

    goto LABEL_11;
  }

  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
  v15 = a1;
  EngineRef = RIOImportSessionGetEngineRef();
  if (!EngineRef || (*(v3 + 4) = EngineRef, (v17 = RIOImportSessionGetStage()) == 0))
  {

LABEL_9:
    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);

LABEL_11:
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion], *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8]);

    type metadata accessor for ImportSession(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = v17;
  type metadata accessor for Stage();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v3 + 2) = v19;
  v20 = v18;
  RootEntity = RIOImportSessionGetRootEntity();
  if (!RootEntity)
  {

    goto LABEL_9;
  }

  v22 = RootEntity;
  REAnchorComponentGetComponentType();
  REEntityRemoveComponentByClass();
  REAnchoringComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REAnchoringComponentGetComponentType();
    REEntityRemoveComponentByClass();
  }

  v35 = MEMORY[0x277D841D8];
  aBlock = v22;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  type metadata accessor for BodyTrackedEntity();
  swift_allocObject();
  v23 = MEMORY[0x26670DC40](v8);
  *(v3 + 3) = v23;
  type metadata accessor for BehaviorsCommitter();
  v24 = swift_allocObject();
  v24[3] = MEMORY[0x277D84F98];

  v24[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v24[2] = v23;
  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  v36 = closure #1 in ImportSession.init<A>(core:entityType:)partial apply;
  v37 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
  v35 = &block_descriptor_97;
  v26 = _Block_copy(&aBlock);

  v27 = *(v3 + 3);
  v28 = swift_allocObject();
  swift_weakInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v36 = closure #2 in ImportSession.init<A>(core:entityType:)partial apply;
  v37 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
  v35 = &block_descriptor_105;
  v30 = _Block_copy(&aBlock);

  RIOImportSessionSetRegistrationForScenes();
  _Block_release(v30);
  _Block_release(v26);
  RIOImportSessionSetSwiftObject();
  ImportSession.registerDefaultSwiftBuilders()();

  return v3;
}

char *_s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ06AnchorK0C_Tt0g5(void *a1, float a2)
{
  v3 = v2;
  v5 = type metadata accessor for __EntityRef();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v10 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v12 = swift_allocObject();
  *(v12 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v3[v11] = v12;
  *(v12 + 24) = v13;
  v14 = &v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (!a1)
  {
    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);

    goto LABEL_11;
  }

  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
  v15 = a1;
  EngineRef = RIOImportSessionGetEngineRef();
  if (!EngineRef || (*(v3 + 4) = EngineRef, (v17 = RIOImportSessionGetStage()) == 0))
  {

LABEL_9:
    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);

LABEL_11:
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion], *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8]);

    type metadata accessor for ImportSession(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = v17;
  type metadata accessor for Stage();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v3 + 2) = v19;
  v20 = v18;
  RootEntity = RIOImportSessionGetRootEntity();
  if (!RootEntity)
  {

    goto LABEL_9;
  }

  v22 = RootEntity;
  REAnchorComponentGetComponentType();
  REEntityRemoveComponentByClass();
  REAnchoringComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    REAnchoringComponentGetComponentType();
    REEntityAddComponentByClass();
  }

  v35 = MEMORY[0x277D841D8];
  aBlock = v22;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  v23 = MEMORY[0x26670DA30](v8);
  *(v3 + 3) = v23;
  type metadata accessor for BehaviorsCommitter();
  v24 = swift_allocObject();
  v24[3] = MEMORY[0x277D84F98];

  v24[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v24[2] = v23;
  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  v36 = closure #1 in ImportSession.init<A>(core:entityType:)partial apply;
  v37 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
  v35 = &block_descriptor_84;
  v26 = _Block_copy(&aBlock);

  v27 = *(v3 + 3);
  v28 = swift_allocObject();
  swift_weakInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v36 = closure #2 in ImportSession.init<A>(core:entityType:)partial apply;
  v37 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
  v35 = &block_descriptor_92;
  v30 = _Block_copy(&aBlock);

  RIOImportSessionSetRegistrationForScenes();
  _Block_release(v30);
  _Block_release(v26);
  RIOImportSessionSetSwiftObject();
  ImportSession.registerDefaultSwiftBuilders()();

  return v3;
}

char *_s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAL_Tt0g5(void *a1, float a2)
{
  v3 = v2;
  v5 = type metadata accessor for __EntityRef();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  v9 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v10 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v12 = swift_allocObject();
  *(v12 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v3[v11] = v12;
  *(v12 + 24) = v13;
  v14 = &v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (a1)
  {
    *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
    v15 = a1;
    EngineRef = RIOImportSessionGetEngineRef();
    if (EngineRef && (*(v3 + 4) = EngineRef, (v17 = RIOImportSessionGetStage()) != 0))
    {
      v18 = v17;
      v39 = v6;
      type metadata accessor for Stage();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v3 + 2) = v19;
      v20 = v18;
      RootEntity = RIOImportSessionGetRootEntity();
      if (RootEntity)
      {
        v22 = RootEntity;
        v23 = v20;
        type metadata accessor for AnchorEntity();
        v24 = swift_dynamicCastMetatype();
        REAnchorComponentGetComponentType();
        REEntityRemoveComponentByClass();
        REAnchoringComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (!v24)
          {
            REAnchoringComponentGetComponentType();
            REEntityRemoveComponentByClass();
          }
        }

        else if (v24)
        {
          REAnchoringComponentGetComponentType();
          REEntityAddComponentByClass();
        }

        type metadata accessor for ModelEntity();
        if (swift_dynamicCastMetatype())
        {
          v44 = MEMORY[0x277D841D8];
          aBlock = v22;
          v26 = v40;
          static __AssetRef.__fromCore(_:)();
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          swift_allocObject();
          v27 = MEMORY[0x26670D9A0](v26);
        }

        else
        {
          type metadata accessor for BodyTrackedEntity();
          if (swift_dynamicCastMetatype())
          {
            v44 = MEMORY[0x277D841D8];
            aBlock = v22;
            v28 = v40;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            swift_allocObject();
            v27 = MEMORY[0x26670DC40](v28);
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {
              v44 = MEMORY[0x277D841D8];
              aBlock = v22;
              v38 = v40;
              static __AssetRef.__fromCore(_:)();
              __swift_destroy_boxed_opaque_existential_0(&aBlock);
              v30 = static Entity.__fromCore(_:)();
              (*(v39 + 8))(v38, v5);
              goto LABEL_23;
            }

            v44 = MEMORY[0x277D841D8];
            aBlock = v22;
            v29 = v40;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            swift_allocObject();
            v27 = MEMORY[0x26670DA30](v29);
          }
        }

        v30 = v27;
LABEL_23:
        *(v3 + 3) = v30;
        type metadata accessor for BehaviorsCommitter();
        v31 = swift_allocObject();
        v31[3] = MEMORY[0x277D84F98];

        v31[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v31[2] = v30;
        *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v31;
        v32 = swift_allocObject();
        swift_weakInit();
        v45 = partial apply for closure #1 in ImportSession.init<A>(core:entityType:);
        v46 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v42 = 1107296256;
        v43 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
        v44 = &block_descriptor_59;
        v33 = _Block_copy(&aBlock);

        v34 = *(v3 + 3);
        v35 = swift_allocObject();
        swift_weakInit();
        swift_unownedRetainStrong();
        swift_unownedRetain();

        v36 = swift_allocObject();
        *(v36 + 16) = v34;
        *(v36 + 24) = v35;
        v45 = partial apply for closure #2 in ImportSession.init<A>(core:entityType:);
        v46 = v36;
        aBlock = MEMORY[0x277D85DD0];
        v42 = 1107296256;
        v43 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
        v44 = &block_descriptor_66;
        v37 = _Block_copy(&aBlock);

        RIOImportSessionSetRegistrationForScenes();
        _Block_release(v37);
        _Block_release(v33);
        RIOImportSessionSetSwiftObject();
        ImportSession.registerDefaultSwiftBuilders()();

        return v3;
      }
    }

    else
    {
    }

    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  }

  else
  {
    outlined destroy of Any?(&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  }

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion], *&v3[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8]);

  type metadata accessor for ImportSession(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR, MEMORY[0x277CDAFC0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR, MEMORY[0x277CDAFF8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCGGMR, &_sSay10RealityKit17AnimationResourceCGMd, &_sSay10RealityKit17AnimationResourceCGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMR, MEMORY[0x277CDB000]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR, &_sSaySSGMd, &_sSaySSGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO14CompileSessionC06ImportG4DataVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO14CompileSessionC06ImportG4DataVGMR, type metadata accessor for CompileSession.ImportSessionData);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySaySdGGGMd, &_ss23_ContiguousArrayStorageCySaySaySdGGGMR, &_sSaySaySdGGMd, &_sSaySaySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR, &_sSaySdGMd, &_sSaySdGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD2Vy9RealityIO4HalfVGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2Vy9RealityIO4HalfVGGMR, &_ss5SIMD2Vy9RealityIO4HalfVGMd, &_ss5SIMD2Vy9RealityIO4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VyAC4HalfVGGMR, &_s9RealityIO9TexCoord2VyAA4HalfVGMd, &_s9RealityIO9TexCoord2VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD3Vy9RealityIO4HalfVGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3Vy9RealityIO4HalfVGGMR, &_ss5SIMD3Vy9RealityIO4HalfVGMd, &_ss5SIMD3Vy9RealityIO4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VyAC4HalfVGGMR, &_s9RealityIO6Color3VyAA4HalfVGMd, &_s9RealityIO6Color3VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VyAC4HalfVGGMR, &_s9RealityIO6Point3VyAA4HalfVGMd, &_s9RealityIO6Point3VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VyAC4HalfVGGMR, &_s9RealityIO7Normal3VyAA4HalfVGMd, &_s9RealityIO7Normal3VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VyAC4HalfVGGMR, &_s9RealityIO7Vector3VyAA4HalfVGMd, &_s9RealityIO7Vector3VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VyAC4HalfVGGMR, &_s9RealityIO9TexCoord3VyAA4HalfVGMd, &_s9RealityIO9TexCoord3VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD4Vy9RealityIO4HalfVGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4Vy9RealityIO4HalfVGGMR, &_ss5SIMD4Vy9RealityIO4HalfVGMd, &_ss5SIMD4Vy9RealityIO4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VyAC4HalfVGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VyAC4HalfVGGMR, &_s9RealityIO6Color4VyAA4HalfVGMd, &_s9RealityIO6Color4VyAA4HalfVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC010__ImportedF0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC010__ImportedF0VGMR, MEMORY[0x277CDAE70]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR, type metadata accessor for ImportSession.EvaluationFault);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR, &type metadata for SceneDescriptionFoundations.Path);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5Int64VGMd, &_ss23_ContiguousArrayStorageCys5Int64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD3Vys5Int32VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3Vys5Int32VGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD4Vys5Int32VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4Vys5Int32VGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD3VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD4VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VySdGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VySdGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMR, &type metadata for SceneDescriptionFoundations.AssetPath);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR, &type metadata for ToolsFoundations.Token);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit17AnimationResourceC04animG0_Si11trackNumbertGMd, &_ss23_ContiguousArrayStorageCy10RealityKit17AnimationResourceC04animG0_Si11trackNumbertGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMd, &_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO7Builder_pGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Builder_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Builder_pMd, &_s9RealityIO7Builder_pMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SliceVys12LazySequenceVySSGGGMd, &_ss23_ContiguousArrayStorageCys5SliceVys12LazySequenceVySSGGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVys12LazySequenceVySSGGMd, &_ss5SliceVys12LazySequenceVySSGGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 32 * v10);
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord2VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Point3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Normal3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Vector3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO9TexCoord3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VySfGGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6Color4VySfGGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO15InputDescriptorO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type InputDescriptor and conformance InputDescriptor();
  result = MEMORY[0x26670F270](v2, &type metadata for InputDescriptor, v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v10[2] = *(v5 + 32);
      v11 = *(v5 + 48);
      outlined init with copy of InputDescriptor(v10, v7);
      specialized Set._Variant.insert(_:)(v7, v10);
      outlined consume of InputDescriptor(v7[0], v7[1], v7[2], v7[3], v7[4], v7[5], v8);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt32V_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26670F270](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO14PrimDirtyStateC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for PrimDirtyState();
  v5 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type PrimDirtyState and conformance PrimDirtyState, type metadata accessor for PrimDirtyState, &protocol conformance descriptor for PrimDirtyState);
  result = MEMORY[0x26670F270](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAHGTt0g5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(id *, void *))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x26670F270](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);

      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO18PropertyDirtyStateC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for PropertyDirtyState();
  v5 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type PropertyDirtyState and conformance PropertyDirtyState, type metadata accessor for PropertyDirtyState, &protocol conformance descriptor for PropertyDirtyState);
  result = MEMORY[0x26670F270](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16OutputDescriptorO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type OutputDescriptor and conformance OutputDescriptor();
  result = MEMORY[0x26670F270](v2, &type metadata for OutputDescriptor, v3);
  v7 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      outlined init with take of OutputDescriptor(v5, v8);
      outlined init with copy of OutputDescriptor(v8, v6);
      specialized Set._Variant.insert(_:)(v6, v8);

      v5 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16RIOPxrSdfPathRefa_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    type metadata accessor for RIOPxrSdfPathRef(0);
    v5 = v4;
    v6 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef, &protocol conformance descriptor for RIOPxrSdfPathRef);
    result = MEMORY[0x26670F270](i, v5, v6);
    v13 = result;
    if (j)
    {
      break;
    }

    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * j + 32);
      }

      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v12, v10);

      if (v11 == v8)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v9 = result;
  v8 = __CocoaSet.count.getter();
  result = v9;
  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO5StageC16MissingReferenceV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Stage.MissingReference and conformance Stage.MissingReference();
  result = MEMORY[0x26670F270](v2, &type metadata for Stage.MissingReference, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v13[4] = *(v5 + 64);
      v14 = *(v5 + 80);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      outlined init with copy of Stage.MissingReference(v13, v10);
      specialized Set._Variant.insert(_:)(v8, v13);
      v10[3] = v8[3];
      v10[4] = v8[4];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      v10[2] = v8[2];
      outlined destroy of Stage.MissingReference(v10);
      v5 += 88;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO15StageDirtyStateC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for StageDirtyState();
  v5 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type StageDirtyState and conformance StageDirtyState, type metadata accessor for StageDirtyState, &protocol conformance descriptor for StageDirtyState);
  result = MEMORY[0x26670F270](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO6InputsC13PropertyDeltaV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta();
  result = MEMORY[0x26670F270](v2, &type metadata for Inputs.PropertyDelta, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 2);

      specialized Set._Variant.insert(_:)(v10, v8, v7, v6);
      v9 = v10[1];

      v5 += 3;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t specialized static Stage.MissingReference.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[8];
  v18 = a1[10];
  v8 = a2[3];
  v7 = a2[4];
  v10 = a2[5];
  v9 = a2[6];
  v11 = a2[8];
  v15 = a2[7];
  v16 = a1[7];
  v13 = a2[9];
  v14 = a1[9];
  v17 = a2[10];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v8 || v3 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v16 != v15 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v14 == v13 && v18 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type Stage.Error and conformance Stage.Error()
{
  result = lazy protocol witness table cache variable for type Stage.Error and conformance Stage.Error;
  if (!lazy protocol witness table cache variable for type Stage.Error and conformance Stage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.Error and conformance Stage.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Stage.MissingReferenceType and conformance Stage.MissingReferenceType()
{
  result = lazy protocol witness table cache variable for type Stage.MissingReferenceType and conformance Stage.MissingReferenceType;
  if (!lazy protocol witness table cache variable for type Stage.MissingReferenceType and conformance Stage.MissingReferenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.MissingReferenceType and conformance Stage.MissingReferenceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Stage.MissingReference and conformance Stage.MissingReference()
{
  result = lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference;
  if (!lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference;
  if (!lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stage.MissingReference and conformance Stage.MissingReference);
  }

  return result;
}

uint64_t dispatch thunk of Stage.__allocating_init(from:)()
{
  return (*(v0 + 120))();
}

{
  return (*(v0 + 136))();
}

uint64_t getEnumTagSinglePayload for Stage.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Stage.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Stage.MissingReference(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Stage.MissingReference(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OutputDescriptor and conformance OutputDescriptor()
{
  result = lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor;
  if (!lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor;
  if (!lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutputDescriptor and conformance OutputDescriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InputDescriptor and conformance InputDescriptor()
{
  result = lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor;
  if (!lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor;
  if (!lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputDescriptor and conformance InputDescriptor);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_62Tm()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t one-time initialization function for customComponents()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.customComponents = result;
  return result;
}

uint64_t removeCustomComponentProxy(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  REComponentGetEntity();
  String.utf8CString.getter();
  v5 = REComponentClassFromName();

  if (v5)
  {
    result = REEntityGetCustomComponent();
    if (result)
    {
      if (one-time initialization token for customComponents != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.customComponents;
      v8 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_2619891C0;
      _StringGuts.grow(_:)(26);
      MEMORY[0x26670F080](0x676E69766F6D6552, 0xE900000000000020);
      MEMORY[0x26670F080](a2, a3);
      MEMORY[0x26670F080](0x6E65206D6F726620, 0xED00002079746974);
      REEntityGetName();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      _print_unlocked<A, B>(_:_:)();
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v9 + 32) = 0;
      *(v9 + 40) = 0xE000000000000000;
      os_log(_:dso:log:type:_:)("%{public}s", 10, 2, &dword_26187B000, v7, v8, v9);

      return REEntityRemoveComponentByClass();
    }
  }

  else
  {
    if (one-time initialization token for customComponents != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.customComponents;
    v11 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2619891C0;
    _StringGuts.grow(_:)(49);

    MEMORY[0x26670F080](a2, a3);
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = 0xD00000000000002FLL;
    *(v12 + 40) = 0x8000000261996080;
    os_log(_:dso:log:type:_:)("%{public}s", 10, 2, &dword_26187B000, v10, v11, v12);
  }

  return result;
}

uint64_t closure #1 in CustomComponentBuilder.stageSubscription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8E0;
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 32) = v1;
  if (String.count.getter() < 1)
  {
    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v2 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 40) = v2;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (String.count.getter() < 1)
  {
    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v5 = RIOPxrTfTokenCreateWithCString();
  }

  v6 = v5;
  type metadata accessor for NamedPropertyDirtyState();
  v7 = swift_allocObject();
  v7[4] = v6;
  v8 = v6;
  v9 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v7[2] = v9;
  v7[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_26198A640;
  *(v12 + 32) = v7;

  specialized Sequence.forEach(_:)(v12);

  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for TypeNamePrimDirtyState();
  v13 = swift_allocObject();
  v13[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v14);
  type metadata accessor for RIOPxrTfTokenRef(0);
  v15 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v9);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v9);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  v18 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v13[2] = v9;
  v13[3] = v9;
  v13[4] = v18;

  if (String.count.getter() < 1)
  {
    v19 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v19 = RIOPxrTfTokenCreateWithCString();
  }

  v29 = v19;
  v20 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v29);

  if (String.count.getter() < 1)
  {
    v21 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v21 = RIOPxrTfTokenCreateWithCString();
  }

  v29 = v21;
  v22 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v29);

  if (String.count.getter() < 1)
  {
    v23 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v23 = RIOPxrTfTokenCreateWithCString();
  }

  v29 = v23;
  v24 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v29);

  if (String.count.getter() < 1)
  {
    v25 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v25 = RIOPxrTfTokenCreateWithCString();
  }

  v29 = v25;
  v26 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v29);
  v27 = swift_initStackObject();
  *(v27 + 32) = v13;
  *(v27 + 16) = xmmword_26198C2A0;
  *(v27 + 40) = v20;
  *(v27 + 48) = v22;
  *(v27 + 56) = v24;
  *(v27 + 64) = v26;
  v29 = v9;

  specialized Sequence.forEach(_:)(v27);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v29;
}

void CustomComponentBuilder.run(inputs:)(uint64_t a1)
{
  v2 = v1;
  v79 = *MEMORY[0x277D85DE8];
  v4 = RIOBuilderInputsGetImportSession();
  if (!v4)
  {
    __break(1u);
LABEL_47:
    __break(1u);
  }

  v5 = v4;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
    goto LABEL_47;
  }

  swift_weakAssign();

  Inputs.prim.getter();
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_22;
  }

  v8 = RIOPxrUsdPrimCopyAttribute();
  v9 = RIOPxrUsdAttributeCopyValue();
  if (!v9)
  {

    goto LABEL_22;
  }

  v10 = v9;
  v11 = RIOPxrVtValueCopyToken();

  if (!v11)
  {
LABEL_22:
    specialized CustomComponentBuilder.clear(inputs:)(v7);

    return;
  }

  v12 = RIOPxrTfTokenCopyString();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (Prim.parent.getter())
  {
    if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
    {
      v71 = v13;
      v73 = v15;
      if (one-time initialization token for customComponents != -1)
      {
        swift_once();
      }

      v25 = static OS_os_log.customComponents;
      v26 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26198A8E0;
      v28 = RIOPxrUsdObjectCopyPath();
      v29 = RIOPxrSdfPathCopyString();
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = MEMORY[0x277D837D0];
      *(v27 + 56) = MEMORY[0x277D837D0];
      v34 = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 64) = v34;
      *(v27 + 32) = v30;
      *(v27 + 40) = v32;

      *(v27 + 96) = v33;
      *(v27 + 104) = v34;
      *(v27 + 72) = v71;
      *(v27 + 80) = v73;
      os_log(_:dso:log:type:_:)("Prim is not an entity: %{public}s for custom component %{public}s.", 70, 2, &dword_26187B000, v25, v26, v27);

      return;
    }
  }

  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&v77, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (v78)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {
      v16 = v76;
      v17 = *(v2 + 32);
      if (v17)
      {
        v18 = *(v2 + 24);
        if ((v18 != v13 || v17 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          CustomComponentBuilder.removeProxyComponent()();
          if (v19)
          {
            v70 = v13;
            v72 = v15;
            if (one-time initialization token for customComponents != -1)
            {
              swift_once();
            }

            v69 = static OS_os_log.customComponents;
            v68 = static os_log_type_t.error.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_26198A8E0;
            v21 = MEMORY[0x277D837D0];
            *(v20 + 56) = MEMORY[0x277D837D0];
            v22 = lazy protocol witness table accessor for type String and conformance String();
            *(v20 + 64) = v22;
            *(v20 + 32) = v18;
            *(v20 + 40) = v17;
            swift_getErrorValue();
            v23 = Error.localizedDescription.getter();
            *(v20 + 96) = v21;
            *(v20 + 104) = v22;
            *(v20 + 72) = v23;
            *(v20 + 80) = v24;
            os_log(_:dso:log:type:_:)("Error unregistering prior custom component name: %{public}s. Error: %s)", 73, 2, &dword_26187B000, v69, v68, v20);

            v13 = v70;
            v15 = v72;
            v16 = v76;
          }

          else
          {
          }
        }
      }

      *(v2 + 24) = v13;
      *(v2 + 32) = v15;

      if (RIOPxrUsdPrimIsActive())
      {

        componentPrimToDictionary(component:)();
        v39 = v38;
        v40 = objc_opt_self();
        *&v77 = 0;
        v74 = v39;
        v41 = [v40 dataWithJSONObject:v39 options:0 error:&v77];
        v42 = v77;
        if (v41)
        {
          v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          CustomComponentBuilder.addProxyComponent(entity:with:inputs:)(v16, v43, v45, a1);

          outlined consume of Data._Representation(v43, v45);
        }

        else
        {
          v58 = v13;
          v59 = v42;
          v60 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (one-time initialization token for customComponents != -1)
          {
            swift_once();
          }

          v61 = static OS_os_log.customComponents;
          v62 = static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_26198A8E0;
          v64 = MEMORY[0x277D837D0];
          *(v63 + 56) = MEMORY[0x277D837D0];
          v65 = lazy protocol witness table accessor for type String and conformance String();
          *(v63 + 64) = v65;
          *(v63 + 32) = v58;
          *(v63 + 40) = v15;
          swift_getErrorValue();
          v66 = Error.localizedDescription.getter();
          *(v63 + 96) = v64;
          *(v63 + 104) = v65;
          *(v63 + 72) = v66;
          *(v63 + 80) = v67;
          os_log(_:dso:log:type:_:)("Unexpected error serializing custom component data for %{public}s. Error: %s", 78, 2, &dword_26187B000, v61, v62, v63);
        }
      }

      else
      {
        CustomComponentBuilder.removeProxyComponent()();
        if (v46)
        {
          if (one-time initialization token for customComponents != -1)
          {
            swift_once();
          }

          v75 = static OS_os_log.customComponents;
          v47 = static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_26198AB50;
          v49 = MEMORY[0x277D837D0];
          *(v48 + 56) = MEMORY[0x277D837D0];
          v50 = lazy protocol witness table accessor for type String and conformance String();
          *(v48 + 64) = v50;
          *(v48 + 32) = v13;
          *(v48 + 40) = v15;
          v51 = RIOPxrUsdObjectCopyPath();

          v52 = RIOPxrSdfPathCopyString();
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          *(v48 + 96) = v49;
          *(v48 + 104) = v50;
          *(v48 + 72) = v53;
          *(v48 + 80) = v55;

          swift_getErrorValue();
          v56 = Error.localizedDescription.getter();
          *(v48 + 136) = v49;
          *(v48 + 144) = v50;
          *(v48 + 112) = v56;
          *(v48 + 120) = v57;
          os_log(_:dso:log:type:_:)("Error removing custom component proxy %{public}s for inactive prim %{public}s. Error: %s", 92, 2, &dword_26187B000, v75, v47, v48);
        }

        else
        {
        }
      }

      return;
    }
  }

  else
  {
    outlined destroy of Any?(&v77);
  }

  if (one-time initialization token for customComponents != -1)
  {
    swift_once();
  }

  v35 = static OS_os_log.customComponents;
  v36 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2619891C0;
  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v37 + 32) = v13;
  *(v37 + 40) = v15;
  os_log(_:dso:log:type:_:)("CustomComponentsBuilder.run(): Input is not an entity %{public}s.", 67, 2, &dword_26187B000, v35, v36, v37);
}

void CustomComponentBuilder.addProxyComponent(entity:with:inputs:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v23 = a1;
  v8 = type metadata accessor for CustomComponentProxy();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 32);
  if (v13)
  {
    v24 = *(v4 + 24);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21[2] = Strong;
      v22 = v9;
      v21[0] = v5;
      v21[1] = v21;
      MEMORY[0x28223BE20](Strong, v15);
      v21[-2] = v24;
      v21[-1] = v13;
      v16 = swift_allocObject();
      *(v16 + 16) = partial apply for closure #1 in CustomComponentBuilder.addProxyComponent(entity:with:inputs:);
      *(v16 + 24) = &v21[-4];
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_7;
      v17 = _Block_copy(aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();
      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        outlined copy of Data._Representation(a2, a3);
        CustomComponentProxy.init(with:)();
        String.utf8CString.getter();

        v19 = REComponentClassFromName();

        if (v19)
        {
          v20 = specialized setCustomComponentProxy(_:_:_:)(v23, v19, v12);

          (*(v22 + 8))(v12, v8);
          *(v4 + 40) = v20;
          *(v4 + 16) = 1;
        }

        else
        {
          lazy protocol witness table accessor for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError();
          swift_allocError();
          swift_willThrow();

          (*(v22 + 8))(v12, v8);
        }
      }
    }
  }
}

uint64_t closure #1 in CustomComponentBuilder.addProxyComponent(entity:with:inputs:)(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  v4 = REComponentClassFromName();

  if (!v4)
  {
    type metadata accessor for CustomComponentProxy();
    result = static Component.registerComponentProxy(componentName:)();
    if (!result)
    {
      if (one-time initialization token for customComponents != -1)
      {
        swift_once();
      }

      v6 = static OS_os_log.customComponents;
      v7 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2619891C0;
      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v8 + 32) = a1;
      *(v8 + 40) = a2;

      os_log(_:dso:log:type:_:)("CustomComponentsBuilder.run(): Unable to register custom component: %{public}.", 80, 2, &dword_26187B000, v6, v7, v8);
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CustomComponentBuilder.removeProxyComponent()()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 32);
    if (v1 && (v2 = *(v0 + 40)) != 0)
    {
      v3 = *(v0 + 24);
      v4 = one-time initialization token for customComponents;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = static OS_os_log.customComponents;
      v6 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2619891C0;
      _StringGuts.grow(_:)(41);

      MEMORY[0x26670F080](v3, v1);
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v7 + 32) = 0xD000000000000027;
      *(v7 + 40) = 0x8000000261996050;
      os_log(_:dso:log:type:_:)("%{public}s", 10, 2, &dword_26187B000, v5, v6, v7);

      removeCustomComponentProxy(_:_:)(v2, v3, v1);

      *(v0 + 40) = 0;
      *(v0 + 16) = 0;
    }

    else
    {
      lazy protocol witness table accessor for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t CustomComponentBuilder.__deallocating_deinit()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t CustomComponentBuilder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  *(v0 + 48) = v1;
  *(v0 + 56) = 2;
  swift_weakInit();
  return v0;
}

uint64_t protocol witness for Builder.inputDescriptors() in conformance CustomComponentBuilder()
{
  v5 = MEMORY[0x277D84FA0];
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v0 = static EntityBuilder.OutputName;
  v1 = one-time initialization token for OutputIdentifier;

  if (v1 != -1)
  {
    swift_once();
  }

  v6 = v0;
  v7 = static EntityBuilder.OutputIdentifier;
  v8 = *algn_27FEC8E68;
  v9 = 0;
  v10 = 0;
  v11 = 112;

  specialized Set._Variant.insert(_:)(v3, &v6);
  outlined consume of InputDescriptor(v3[0], v3[1], v3[2], v3[3], v3[4], v3[5], v4);
  return v5;
}

uint64_t specialized setCustomComponentProxy(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CustomComponentProxy();
  v20 = v4;
  v21 = MEMORY[0x277CDB458];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a3, v4);
  __AssetRef.__as<A>(_:)();
  CustomComponent = REEntityGetCustomComponent();
  v7 = &off_261989000;
  v8 = MEMORY[0x277D837D0];
  if (CustomComponent)
  {
    v9 = CustomComponent;
LABEL_7:
    if (one-time initialization token for customComponents != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.customComponents;
    v15 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = *(v7 + 28);
    *(v16 + 56) = v8;
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 32) = 0xD00000000000003BLL;
    *(v16 + 40) = 0x80000002619960D0;
    os_log(_:dso:log:type:_:)("%{public}s", 10, 2, &dword_26187B000, v14, v15, v16);

    if (RECustomComponentGetObject())
    {
      static CustomComponentProxy.__store(attribute:to:offset:deinitialize:)();
    }

    RENetworkMarkComponentDirty();
    goto LABEL_12;
  }

  if (one-time initialization token for customComponents != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.customComponents;
  v10 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2619891C0;
  _StringGuts.grow(_:)(47);

  __swift_project_boxed_opaque_existential_1(v19, v20);
  swift_getDynamicType();
  v12 = dispatch thunk of static Component.componentName.getter();
  MEMORY[0x26670F080](v12);

  MEMORY[0x26670F080](0x20656874206F7420, 0xEF20797469746E65);
  __AssetRef.__as<A>(_:)();
  REEntityGetName();
  v13 = String.init(cString:)();
  MEMORY[0x26670F080](v13);

  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = 0xD00000000000001CLL;
  *(v11 + 40) = 0x80000002619960B0;
  os_log(_:dso:log:type:_:)("%{public}s", 10, 2, &dword_26187B000, v18, v10, v11);

  v9 = REEntityAddComponentByClass();
  if (v9)
  {
    v8 = MEMORY[0x277D837D0];
    v7 = &off_261989000;
    goto LABEL_7;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v9;
}

uint64_t specialized CustomComponentBuilder.stageSubscription.getter()
{
  v0 = closure #1 in CustomComponentBuilder.stageSubscription.getter();
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

void specialized CustomComponentBuilder.clear(inputs:)(float a1)
{
  if (one-time initialization token for customComponents != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.customComponents;
  v2 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2619891C0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = String.init<A>(describing:)();
  MEMORY[0x26670F080](v4);

  v5 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v6 = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 64) = v6;
  *(v3 + 32) = 0x7261656C63206E49;
  *(v3 + 40) = 0xEA0000000000203ALL;
  os_log(_:dso:log:type:_:)("%{public}s", 10, 2, &dword_26187B000, v1, v2, v3);

  CustomComponentBuilder.removeProxyComponent()();
  if (v7)
  {
    v8 = static os_log_type_t.error.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2619891C0;
    _StringGuts.grow(_:)(59);
    MEMORY[0x26670F080](0xD000000000000035, 0x8000000261995FB0);

    v10 = String.init<A>(describing:)();
    MEMORY[0x26670F080](v10);

    MEMORY[0x26670F080](8238, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    *(v9 + 56) = v5;
    *(v9 + 64) = v6;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    type metadata accessor for OS_os_log();
    v11 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v8, &dword_26187B000, v11, "%s", 1);
  }
}

unint64_t lazy protocol witness table accessor for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError()
{
  result = lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError;
  if (!lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError;
  if (!lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomComponentBuilder.ComponentRegistryError and conformance CustomComponentBuilder.ComponentRegistryError);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t closure #1 in ModelSortGroupBuilder.run(inputs:)(char *a1)
{
  v2 = type metadata accessor for ModelSortGroup();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMd, &_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMR);
  v9.n128_f32[0] = MEMORY[0x28223BE20](v7 - 8, v8);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v9);
  v49 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v46 - v16;
  v18 = *(v3 + 56);
  v50 = v2;
  v46 = v18;
  (v18)(v17, 1, 1, v2, v15);
  v19 = OBJC_IVAR____TtC9RealityIO21ModelSortGroupBuilder_meshSortingGroup;
  swift_beginAccess();
  v47 = v19;
  outlined assign with take of ModelSortGroup?(v17, &a1[v19]);
  swift_endAccess();
  specialized Builder.prim.getter();
  v20 = v6;
  v21 = v3;
  if (String.count.getter() < 1)
  {
    v22 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v22 = RIOPxrTfTokenCreateWithCString();
  }

  v23 = v22;
  v24 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(v22);
  v26 = v25;

  if (v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = 1701736270;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  if (v27 == 0x73736150657270 && v28 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v29 = v21;
    v30 = v20;
    v31 = *MEMORY[0x277CDB310];
    v32 = type metadata accessor for ModelSortGroup.DepthPass();
    v33 = *(v32 - 8);
    v34 = v49;
    (*(v33 + 104))(v49, v31, v32);
    (*(v33 + 56))(v34, 0, 1, v32);
    v35 = v50;
    goto LABEL_14;
  }

  v29 = v21;
  v30 = v20;
  if (v27 == 0x7373615074736F70 && v28 == 0xE800000000000000)
  {

    v34 = v49;
    v35 = v50;
LABEL_20:
    v42 = *MEMORY[0x277CDB318];
    v43 = type metadata accessor for ModelSortGroup.DepthPass();
    v44 = *(v43 - 8);
    (*(v44 + 104))(v34, v42, v43);
    (*(v44 + 56))(v34, 0, 1, v43);
    goto LABEL_14;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v34 = v49;
  v35 = v50;
  if (v41)
  {
    goto LABEL_20;
  }

  v45 = type metadata accessor for ModelSortGroup.DepthPass();
  (*(*(v45 - 8) + 56))(v34, 1, 1, v45);
LABEL_14:
  outlined init with copy of ModelSortGroup.DepthPass?(v34, v48);
  ModelSortGroup.init(depthPass:)();
  v36 = *(v29 + 16);
  v36(v17, v30, v35);
  v46(v17, 0, 1, v35);
  v37 = v47;
  swift_beginAccess();
  outlined assign with take of ModelSortGroup?(v17, &a1[v37]);
  swift_endAccess();
  swift_beginAccess();
  v38 = objc_getAssociatedObject(a1, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v38)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v51, &v52);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    v53 = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v36(boxed_opaque_existential_1, v30, v35);
    Outputs.subscript.setter(&v52, 0xD000000000000014, 0x8000000261994310);

    (*(v29 + 8))(v30, v35);
    return outlined destroy of Any?(v34, &_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMd, &_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Builder.prim.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.CoreReference);
  result = swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v5, &v6);
    type metadata accessor for RIOBuilderRef(0);
    swift_dynamicCast();
    v3 = RIOBuilderCopyPrim();

    type metadata accessor for Prim();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ModelSortGroupBuilder.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC9RealityIO21ModelSortGroupBuilder_meshSortingGroup, &_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Builder.outputDescriptors() in conformance ModelSortGroupBuilder()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16OutputDescriptorO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance ModelSortGroupBuilder);
  outlined destroy of OutputDescriptor(&unk_287410938);
  return v0;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance ModelSortGroupBuilder(uint64_t a1)
{
  v2 = *v1;
  v8 = v1;
  v9 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelSortGroupBuilder.run(inputs:);
  *(v3 + 24) = &v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_8;
  v4 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Builder.clear(inputs:) in conformance ModelSortGroupBuilder()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = type metadata accessor for ModelSortGroup();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC9RealityIO21ModelSortGroupBuilder_meshSortingGroup;
  swift_beginAccess();
  outlined assign with take of ModelSortGroup?(v4, v0 + v6);
  return swift_endAccess();
}

id static MeshSortingConstants.MeshSortingGroup.primType.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for primType != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static MeshSortingConstants.MeshSortingGroup.primType;
  *a1 = static MeshSortingConstants.MeshSortingGroup.primType;

  return v2;
}

uint64_t type metadata accessor for ModelSortGroupBuilder(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModelSortGroupBuilder;
  if (!type metadata singleton initialization cache for ModelSortGroupBuilder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ModelSortGroupBuilder(uint64_t a1)
{
  type metadata accessor for ModelSortGroup?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for ModelSortGroup?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModelSortGroup?)
  {
    type metadata accessor for ModelSortGroup();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModelSortGroup?);
    }
  }
}

uint64_t outlined assign with take of ModelSortGroup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of ModelSortGroup.DepthPass?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMd, &_s17RealityFoundation14ModelSortGroupV9DepthPassOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized ModelSortGroupBuilder.stageSubscription.getter()
{
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v8 = static MeshSortingConstants.MeshSortingGroup.primType;
  v0 = static MeshSortingConstants.MeshSortingGroup.primType;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = v8;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v5 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v4, 0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26198A640;
  *(v6 + 32) = v5;
  v8 = v3;

  specialized Sequence.forEach(_:)(v6);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v8;
}

uint64_t one-time initialization function for iblComponents()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.iblComponents = result;
  return result;
}

id one-time initialization function for entityRelationshipName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x7469746E456C6269, 0xE900000000000079, "iblEntity", &static ImageBasedLightReceiverBuilder.entityRelationshipName);
}

{
  return one-time initialization function for infoID(a1, 0x70756F7267, 0xE500000000000000, "group", &static ModelSortGroupComponentBuilder.entityRelationshipName);
}

uint64_t ImageBasedLightReceiverBuilder.inputDescriptors()()
{
  v1 = *v0;
  v8 = MEMORY[0x277D84FA0];
  v2 = swift_allocObject();
  v2[2] = specialized closure #2 in ImageBasedLightReceiverBuilder.inputDescriptors();
  v2[3] = 0;
  v2[4] = closure #1 in ImageBasedLightReceiverBuilder.inputDescriptors();
  v2[5] = 0;
  v2[6] = v1;
  if (one-time initialization token for OutputIdentifier != -1)
  {
    swift_once();
  }

  v4 = static EntityBuilder.OutputIdentifier;
  v3 = *algn_27FEC8E68;
  *&v15 = 0xD000000000000010;
  *(&v15 + 1) = 0x8000000261994960;
  v16 = static EntityBuilder.OutputIdentifier;
  v17 = *algn_27FEC8E68;
  v18 = partial apply for closure #3 in ImageBasedLightReceiverBuilder.inputDescriptors();
  v19 = v2;
  v20 = -127;
  swift_bridgeObjectRetain_n();

  specialized Set._Variant.insert(_:)(&v9, &v15);
  outlined consume of InputDescriptor(v9, *(&v9 + 1), v10, v11, v12, v13, v14);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v9 = static EntityBuilder.OutputName;
  v10 = v4;
  v11 = v3;
  v12 = 0;
  v13 = 0;
  v14 = 112;

  specialized Set._Variant.insert(_:)(v6, &v9);

  outlined consume of InputDescriptor(v6[0], v6[1], v6[2], v6[3], v6[4], v6[5], v7);
  return v8;
}

uint64_t closure #1 in ImageBasedLightReceiverBuilder.inputDescriptors()(void *a1, uint64_t a2)
{
  if (RIOPxrUsdPrimHasRelationship())
  {
    v2 = RIOPxrUsdPrimCopyRelationship();
    type metadata accessor for Relationship();
    v3 = swift_allocObject();
    v3[2] = v2;
    v4 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v3, 0);
    v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAHGTt0g5Tf4g_n(v4);

    return v5;
  }

  else
  {
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(0);
    return MEMORY[0x277D84FA0];
  }
}

uint64_t closure #3 in ImageBasedLightReceiverBuilder.inputDescriptors()(uint64_t a1, id *a2, uint64_t (*a3)(uint64_t, id *), uint64_t a4, uint64_t (*a5)(id *, uint64_t))
{
  v11 = *a2;
  v6 = a3(a1, &v11);
  if (!v6)
  {
    return MEMORY[0x277D84FA0];
  }

  v7 = v6;

  if (one-time initialization token for entityRelationshipName != -1)
  {
    swift_once();
  }

  v11 = static ImageBasedLightReceiverBuilder.entityRelationshipName;
  v8 = static ImageBasedLightReceiverBuilder.entityRelationshipName;
  v9 = a5(&v11, v7);

  return v9;
}

void closure #1 in ImageBasedLightReceiverBuilder.run(inputs:)(uint64_t a1, void *a2, float a3)
{
  v4 = type metadata accessor for __EntityRef();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Inputs.prim.getter();
  v9 = RIOPxrUsdObjectCopyName();
  v10 = RIOPxrTfTokenCopyString();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_20;
  }

  v14 = RIOPxrUsdPrimCopyAttribute();
  v15 = RIOPxrUsdAttributeCopyValue();
  if (!v15)
  {

    goto LABEL_21;
  }

  v65 = v11;
  v16 = v15;
  v17 = RIOPxrVtValueCopyToken();

  if (!v17)
  {
    goto LABEL_20;
  }

  v63 = v5;
  v64 = a2;
  v18 = RIOPxrTfTokenCopyString();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == 0xD000000000000022 && 0x8000000261996400 == v21)
  {

    v22 = v65;
    goto LABEL_11;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v22 = v65;
  if ((v23 & 1) == 0)
  {
LABEL_20:

LABEL_21:
    ImageBasedLightReceiverBuilder.clear(inputs:)();

    goto LABEL_23;
  }

LABEL_11:
  if (Prim.parent.getter())
  {
    if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
    {
      if (one-time initialization token for iblComponents != -1)
      {
        swift_once();
      }

      v64 = static OS_os_log.iblComponents;
      v26 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26198A8E0;
      v28 = RIOPxrUsdObjectCopyPath();
      v29 = RIOPxrSdfPathCopyString();
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = MEMORY[0x277D837D0];
      *(v27 + 56) = MEMORY[0x277D837D0];
      v34 = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 64) = v34;
      *(v27 + 32) = v30;
      *(v27 + 40) = v32;

      *(v27 + 96) = v33;
      *(v27 + 104) = v34;
      v35 = v64;
      *(v27 + 72) = v65;
      *(v27 + 80) = v13;
      os_log(_:dso:log:type:_:)("Prim is not an entity: %{public}s for %{public}s.", 53, 2, &dword_26187B000, v35, v26, v27);

      return;
    }
  }

  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&v68, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (v69)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {
      v24 = v67;
      if ((RIOPxrUsdPrimIsActive() & 1) == 0)
      {

        ImageBasedLightReceiverBuilder.clear(inputs:)();

LABEL_23:

        return;
      }

      v39 = specialized Inputs.pathsForRelationship(named:requestContext:)(0x7469746E456C6269, 0xE900000000000079, v25);

      if (!*(v39 + 16))
      {

        ImageBasedLightReceiverBuilder.clear(inputs:)();
        goto LABEL_45;
      }

      v65 = v24;
      v40 = *(v39 + 32);

      v41 = RIOBuilderInputsGetImportSession();
      if (v41)
      {
        v42 = v41;
        SwiftObject = RIOImportSessionGetSwiftObject();

        if (SwiftObject)
        {

          swift_beginAccess();
          v44 = v40;
          EntityAtPrimPath = RIOImportSessionGetEntityAtPrimPath();
          if (!EntityAtPrimPath)
          {

            if (one-time initialization token for iblComponents != -1)
            {
              swift_once();
            }

            v63 = static OS_os_log.iblComponents;
            LODWORD(v62) = static os_log_type_t.debug.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v52 = swift_allocObject();
            *(v52 + 16) = xmmword_26198A8E0;
            __AssetRef.__as<A>(_:)();
            REEntityGetName();
            v53 = String.init(cString:)();
            v55 = v54;
            v56 = MEMORY[0x277D837D0];
            *(v52 + 56) = MEMORY[0x277D837D0];
            v57 = lazy protocol witness table accessor for type String and conformance String();
            *(v52 + 64) = v57;
            *(v52 + 32) = v53;
            *(v52 + 40) = v55;
            v58 = RIOPxrSdfPathCopyString();
            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;

            *(v52 + 96) = v56;
            *(v52 + 104) = v57;
            *(v52 + 72) = v59;
            *(v52 + 80) = v61;
            os_log(_:dso:log:type:_:)("Unable to add component ImageBasedLightReceiver to entity named %{public}s because there is no entity at: %{public}s", 120, 2, &dword_26187B000, v63, v62, v52);

            ImageBasedLightReceiverBuilder.clear(inputs:)();

            goto LABEL_45;
          }

          v46 = EntityAtPrimPath;
          type metadata accessor for Entity();
          v69 = MEMORY[0x277D841D8];
          *&v68 = v46;
          static __AssetRef.__fromCore(_:)();
          __swift_destroy_boxed_opaque_existential_0(&v68);
          v62 = static Entity.__fromCore(_:)();

          v47 = *(v63 + 8);
          v47(v8, v4);

          __AssetRef.__as<A>(_:)();
          REImageBasedLightReceiverComponentGetComponentType();
          v48 = REEntityGetOrAddComponentByClass();
          swift_beginAccess();
          v49 = v64;
          v50 = objc_getAssociatedObject(v64, &static BuilderAssociatedKeys.CoreReference);
          swift_endAccess();
          if (v50)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            outlined init with take of Any(&v67, &v68);
            type metadata accessor for RIOBuilderRef(0);
            swift_dynamicCast();
            v51 = v66;
            RIOBuilderAddComponent();

            dispatch thunk of Entity.__coreEntity.getter();
            __AssetRef.__as<A>(_:)();
            v47(v8, v4);
            v49[17] = 1;
            REImageBasedLightReceiverComponentSetIBLEntity();
            MEMORY[0x26670FF10](v48);

LABEL_45:

            goto LABEL_23;
          }

          goto LABEL_48;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    v22 = v65;
  }

  else
  {
    outlined destroy of Any?(&v68);
  }

  if (one-time initialization token for iblComponents != -1)
  {
    swift_once();
  }

  v36 = static OS_os_log.iblComponents;
  v37 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2619891C0;
  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v38 + 32) = v22;
  *(v38 + 40) = v13;
  os_log(_:dso:log:type:_:)("Input is not an entity %{public}s.", 36, 2, &dword_26187B000, v36, v37, v38);
}

uint64_t ImageBasedLightReceiverBuilder.clear(inputs:)()
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&v2, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (!v3)
  {
    return outlined destroy of Any?(&v2);
  }

  type metadata accessor for EntityProxy(0);
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v0 + 17) == 1)
    {
      __AssetRef.__as<A>(_:)();
      REImageBasedLightReceiverComponentGetComponentType();
      REEntityRemoveComponentByClass();

      *(v0 + 17) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance ImageBasedLightReceiverBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ImageBasedLightReceiverBuilder.run(inputs:);
  *(v3 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_9;
  v4 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized closure #2 in ImageBasedLightReceiverBuilder.inputDescriptors()(uint64_t a1, void *a2)
{
  if (!RIOPxrUsdStageHasPrimAtPrimPath())
  {
    return 0;
  }

  v2 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = PrimIfNeeded;
  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  if (RIOPxrUsdPrimHasAttribute())
  {
    v5 = RIOPxrUsdPrimCopyAttribute();
    v6 = RIOPxrUsdAttributeCopyValue();
    if (!v6)
    {

      return 0;
    }

    v7 = v6;
    v8 = RIOPxrVtValueCopyToken();

    if (v8)
    {
      v9 = RIOPxrTfTokenCopyString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }
  }

  return 0;
}

uint64_t specialized ImageBasedLightReceiverBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v8 = static ImageBasedLightReceiverBuilder.realityKitComponentTypeName;
  v0 = static ImageBasedLightReceiverBuilder.realityKitComponentTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = v8;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v5 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v4, 0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26198A640;
  *(v6 + 32) = v5;
  v8 = v3;

  specialized Sequence.forEach(_:)(v6);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v8;
}

uint64_t Inputs.identifierForEntity(withInputKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Inputs.subscript.getter(&v7, a1, a2);
  if (!v8)
  {
    outlined destroy of Any?(&v7);
    goto LABEL_5;
  }

  type metadata accessor for EntityProxy(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 1;
    goto LABEL_6;
  }

  __EntityRef.__validInteractionIdentifier.getter();

  v4 = 0;
LABEL_6:
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 56))(a3, v4, 1, v5);
}

void closure #1 in Inputs.forEachObjectPathInProperty(named:inputName:requestContext:callback:)(unint64_t a1, void (*a2)(uint64_t, char *), uint64_t a3, float a4)
{
  v17 = a2;
  v18 = a3;
  v16 = type metadata accessor for UUID();
  v5 = *(v16 - 8);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v16, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    v12 = (v5 + 8);
    while ((a1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26670F670](v11, a1, v7);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      __EntityRef.__validInteractionIdentifier.getter();
      v5 = v18;
      v17(v13, v9);

      (*v12)(v9, v16);
      ++v11;
      if (v14 == i)
      {
        return;
      }
    }

    if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 8 * v11 + 32);

    v14 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

unint64_t specialized Inputs.pathsForRelationship(named:requestContext:)(uint64_t a1, uint64_t a2, float a3)
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

  if (RIOPxrUsdPrimHasRelationship())
  {
    v4 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v5 = swift_allocObject();
    v5[2] = v4;
    v6 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v5, 0);
    return v6;
  }

  else
  {

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }
}

uint64_t specialized Inputs.forEachAffectedObject(requestContext:callback:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v4 = Inputs.accumulatedValues(forKey:)(static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  v5 = specialized _arrayConditionalCast<A, B>(_:)(v4);

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v7 >> 62)
  {
    v13 = v7;
    v14 = __CocoaSet.count.getter();
    v7 = v13;
    if (v14)
    {
LABEL_8:
      MEMORY[0x28223BE20](v7, v6);
      v15[2] = v8;
      v15[3] = a1;
      v15[4] = a2;
      v9 = swift_allocObject();
      *(v9 + 16) = partial apply for closure #1 in Inputs.forEachObjectPathInProperty(named:inputName:requestContext:callback:);
      *(v9 + 24) = v15;
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_10;
      v10 = _Block_copy(aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      return result;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized Inputs.forEachTriggerObjectPathInProperty(named:inputName:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = Inputs.accumulatedValues(forKey:)(a1, a2);
  v7 = specialized _arrayConditionalCast<A, B>(_:)(v6);

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v9 >> 62)
  {
    v15 = v9;
    v16 = __CocoaSet.count.getter();
    v9 = v15;
    if (v16)
    {
LABEL_6:
      MEMORY[0x28223BE20](v9, v8);
      v17[2] = v10;
      v17[3] = a3;
      v17[4] = a4;
      v11 = swift_allocObject();
      *(v11 + 16) = closure #1 in Inputs.forEachObjectPathInProperty(named:inputName:requestContext:callback:)partial apply;
      *(v11 + 24) = v17;
      aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_8_0;
      v12 = _Block_copy(aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();
      _Block_release(v12);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      return result;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }
}

uint64_t __RKEntityHideActionBuildOutAnimationType.init(inputs:)@<X0>(uint64_t x8_0@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v13);
  if (v3)
  {

LABEL_4:
    lazy protocol witness table accessor for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v5 = v13;
  v6 = RIOPxrTfTokenCopyString();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v14._countAndFlagsBits = v7;
  v14._object = v9;
  v10 = specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(v14);
  if (v10 == 10)
  {
    goto LABEL_4;
  }

  v12 = v10;

  return __RKEntityHideActionBuildOutAnimationType.init(from:)(v12, x8_0);
}

uint64_t __RKEntityHideActionBuildOutAnimationType.init(from:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for __RKEntityHideActionBuildOutAnimationType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279AEECE8 + a1);

  return v5(a2, v6, v4);
}

uint64_t __RKEntityShowActionBuildInAnimationType.init(inputs:)@<X0>(uint64_t a2@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v15);
  if (v3)
  {

    v5 = *MEMORY[0x277CDB058];
    v6 = type metadata accessor for __RKEntityShowActionBuildInAnimationType();
    return (*(*(v6 - 8) + 104))(a2, v5, v6);
  }

  else
  {
    v8 = v15;
    v9 = RIOPxrTfTokenCopyString();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v16._countAndFlagsBits = v10;
    v16._object = v12;
    v13 = specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(v16);
    if (v13 == 10)
    {
      lazy protocol witness table accessor for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v14 = v13;

      return __RKEntityShowActionBuildInAnimationType.init(from:)(v14, a2);
    }
  }
}

uint64_t __RKEntityShowActionBuildInAnimationType.init(from:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for __RKEntityShowActionBuildInAnimationType();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279AEED38 + a1);

  return v5(a2, v6, v4);
}

uint64_t __RKEntityActionVisibilityTypeUSD.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 7368560;
    v6 = 0x7055656C616373;
    if (a1 != 8)
    {
      v6 = 0x776F44656C616373;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x766F624165766F6DLL;
    if (a1 != 5)
    {
      v7 = 0x6F6C654265766F6DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701736302;
    v2 = 0x6867695265766F6DLL;
    v3 = 0x6E6F724665766F6DLL;
    if (a1 != 3)
    {
      v3 = 0x6B63614265766F6DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7466654C65766F6DLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t specialized __RKEntityActionVisibilityTypeUSD.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionVisibilityTypeUSD.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized __RKEntityActionVisibilityTypeUSD.init(from:)(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityHideActionBuildOutAnimationType();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CDB0A8])
  {
    v9 = 0;
LABEL_21:
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  if (v8 == *MEMORY[0x277CDB070])
  {
    v9 = 1;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB098])
  {
    v9 = 2;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB090])
  {
    v9 = 3;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB078])
  {
    v9 = 4;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB080])
  {
    v9 = 5;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB088])
  {
    v9 = 6;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB0A0])
  {
    v9 = 7;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB0B0])
  {
    v9 = 9;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB0B8])
  {
    v9 = 8;
    goto LABEL_21;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

{
  v2 = type metadata accessor for __RKEntityShowActionBuildInAnimationType();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CDB058])
  {
    v9 = 0;
LABEL_21:
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  if (v8 == *MEMORY[0x277CDB020])
  {
    v9 = 1;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB048])
  {
    v9 = 2;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB040])
  {
    v9 = 3;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB028])
  {
    v9 = 4;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB030])
  {
    v9 = 5;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB038])
  {
    v9 = 6;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB050])
  {
    v9 = 7;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB060])
  {
    v9 = 9;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CDB068])
  {
    v9 = 8;
    goto LABEL_21;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError and conformance __RKEntityShowActionBuildInAnimationType.BuildInAnimationTypeLoadingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError and conformance __RKEntityHideActionBuildOutAnimationType.BuildOutAnimationTypeLoadingError);
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaG_So0i2TfhL0a_ALts5NeverOTg503_s9d4IO16fg2O5h5VSo16ijk48RefaSo0f2TfeI0aAGIgngoo_AE3key_AG5valuetAI_AGts5n46OIegnrzr_TR05_sSD9a6IOAA16cd2O5e8VRszSo16fgH46s16Rs_rlE02vtH0AGvgtuV25_AGtAE_AGtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v6 = *(a1 + 36);
    v22 = v1;
    v23 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v24 = v5;
      v9 = *(*(a1 + 48) + 8 * v4);
      v10 = *(*(a1 + 56) + 8 * v4);
      v11 = v9;

      v13 = *(v25 + 16);
      v12 = *(v25 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v25 + 16) = v13 + 1;
      v14 = v25 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v7 = 1 << *(a1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v15 = *(a1 + 64 + 8 * v8);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v23;
      if (v23 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v8 << 6;
        v18 = v8 + 1;
        v19 = (a1 + 72 + 8 * v8);
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v4, v23, 0);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v4, v23, 0);
      }

LABEL_4:
      v5 = v24 + 1;
      v4 = v7;
      if (v24 + 1 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, uint64_t a8, uint64_t a9)
{
  v33 = a9;
  v42 = a1;
  v43 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a7);
  v44 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v14.n128_f32[0] = MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v17, v14);
  v40 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v34 = *(v19 - 8);
  v35 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v31 - v21;
  v23 = dispatch thunk of Collection.count.getter();
  if (!v23)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v45 = v23;
  v49 = ContiguousArray.init()();
  v36 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v45);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v45 & 0x8000000000000000) == 0)
  {
    v31 = v11;
    v32 = a5;
    v25 = 0;
    v37 = (v46 + 16);
    v38 = (v46 + 8);
    v39 = v9;
    while (!__OFADD__(v25, 1))
    {
      v46 = v25 + 1;
      v26 = dispatch thunk of Collection.subscript.read();
      v27 = v16;
      v28 = v16;
      v29 = AssociatedTypeWitness;
      (*v37)(v27);
      v26(v48, 0);
      v30 = v47;
      v42(v28, v44);
      if (v30)
      {
        (*v38)(v28, v29);
        (*(v34 + 8))(v22, v35);

        return (*(v31 + 32))(v33, v44, v32);
      }

      v47 = 0;
      (*v38)(v28, v29);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v25;
      v16 = v28;
      if (v46 == v45)
      {
        (*(v34 + 8))(v22, v35);
        return v49;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RIOPxrVtValueRef.asBool.getter()
{
  if (RIOPxrVtValueGetBool())
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t RIOPxrVtValueRef.asString.getter()
{
  v0 = RIOPxrVtValueCopyString();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t RIOPxrVtValueRef.asAssetPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrVtValueCopyAssetPath();
  *a1 = result;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, __n128 a7@<Q0>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](a1, a7);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v18.n128_f32[0] = MEMORY[0x28223BE20](v17, v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21, v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v7, v22);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v8)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t RIOPxrVtValueRef.asToken.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrVtValueCopyToken();
  *a1 = result;
  return result;
}

unint64_t RIOPxrVtValueRef.asInt32.getter()
{
  v0 = MEMORY[0x277D00E90];

  return RIOPxrVtValueRef.asInt32.getter(v0);
}

void *RIOPxrVtValueRef.asAssetPathArray.getter(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *))
{
  result = a1(v4);
  if (result)
  {
    v9 = result;
    v7 = result;
    a4(&v8, &v9);

    return v8;
  }

  return result;
}

uint64_t RIOPxrVtValueRef.asInt64.getter()
{
  v0 = MEMORY[0x277D00EA0];

  return RIOPxrVtValueRef.asInt64.getter(v0);
}

unint64_t RIOPxrVtValueRef.asUInt32.getter()
{
  v0 = MEMORY[0x277D00EA8];

  return RIOPxrVtValueRef.asInt32.getter(v0);
}

unint64_t RIOPxrVtValueRef.asInt32.getter(uint64_t (*a1)(uint64_t, unsigned int *))
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v2 = a1(v1, &v5);
  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

uint64_t RIOPxrVtValueRef.asUInt64.getter()
{
  v0 = MEMORY[0x277D00EB0];

  return RIOPxrVtValueRef.asInt64.getter(v0);
}

uint64_t RIOPxrVtValueRef.asInt64.getter(uint64_t (*a1)(uint64_t, void *))
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v2 = a1(v1, v5);
  v3 = v5[0];
  if (!v2)
  {
    return 0;
  }

  return v3;
}

uint64_t RIOPxrVtValueRef.asInt3.getter()
{
  v0 = MEMORY[0x277D00E88];

  return RIOPxrVtValueRef.asInt3.getter(v0);
}

uint64_t RIOPxrVtValueRef.asInt4.getter()
{
  v0 = MEMORY[0x277D00E98];

  return RIOPxrVtValueRef.asInt3.getter(v0);
}

uint64_t RIOPxrVtValueRef.asInt3.getter(uint64_t (*a1)(uint64_t, void *))
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  v2 = a1(v1, v5);
  v3 = v5[0];
  if (!v2)
  {
    return 0;
  }

  return v3;
}

uint64_t RIOPxrVtValueRef.asFloat3.getter()
{
  v0 = MEMORY[0x277D00E70];

  return RIOPxrVtValueRef.asFloat3.getter(v0);
}

uint64_t RIOPxrVtValueRef.asFloat4.getter()
{
  v0 = MEMORY[0x277D00E78];

  return RIOPxrVtValueRef.asFloat3.getter(v0);
}

uint64_t RIOPxrVtValueRef.asFloat3.getter(uint64_t (*a1)(uint64_t, void *))
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  v2 = a1(v1, v5);
  v3 = v5[0];
  if (!v2)
  {
    return 0;
  }

  return v3;
}

uint64_t RIOPxrVtValueRef.asDouble3.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D00E60];

  return RIOPxrVtValueRef.asDouble3.getter(v1, a1);
}

uint64_t RIOPxrVtValueRef.asDouble4.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D00E68];

  return RIOPxrVtValueRef.asDouble3.getter(v1, a1);
}

uint64_t RIOPxrVtValueRef.asDouble3.getter@<X0>(uint64_t (*a1)(uint64_t, __int128 *)@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  result = a1(v2, &v9);
  if (result)
  {
    v6 = *(&v9 + 1);
    v5 = v9;
    v8 = *(&v10 + 1);
    v7 = v10;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = result ^ 1;
  return result;
}

uint64_t RIOPxrVtValueRef.asQuatd.getter@<X0>(uint64_t a1@<X8>)
{
  result = RIOPxrVtValueGetQuatd();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = result ^ 1;
  return result;
}

uint64_t RIOPxrVtValueRef.asMatrix2d.getter@<X0>(uint64_t a1@<X8>)
{
  result = RIOPxrVtValueGetMatrix2d();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = result ^ 1;
  return result;
}

uint64_t RIOPxrVtValueRef.asMatrix3d.getter@<X0>(uint64_t a1@<X8>)
{
  result = RIOPxrVtValueGetMatrix3d();
  if (result)
  {
    v3 = 0;
    v5 = 0u;
    v4 = 0u;
    v7 = 0u;
    v6 = 0u;
    v9 = 0u;
    v8 = 0u;
  }

  else
  {
    v3 = 1;
    v4 = 0uLL;
    v7 = 0uLL;
    v6 = 0uLL;
    v9 = 0uLL;
    v8 = 0uLL;
    v5 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v4;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v9;
  *(a1 + 80) = v8;
  *(a1 + 96) = v3;
  return result;
}

__n128 RIOPxrVtValueRef.asMatrix4d.getter@<Q0>(uint64_t a1@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  if (RIOPxrVtValueGetMatrix4d())
  {
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    _sSo14simd_double4x4aSgWOi__0(&v6);
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v15 = v6;
    v16 = v7;
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0__0(&v15);
  }

  v2 = v22;
  *(a1 + 96) = v21;
  *(a1 + 112) = v2;
  *(a1 + 128) = v23;
  v3 = v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = v3;
  v4 = v20;
  *(a1 + 64) = v19;
  *(a1 + 80) = v4;
  result = v16;
  *a1 = v15;
  *(a1 + 16) = result;
  return result;
}

uint64_t RIOPxrVtValueRef.asStringArray.getter()
{
  v0 = RIOPxrVtValueCopyStringArray();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v2 = MEMORY[0x277D84F90];

  return v2;
}

uint64_t RIOPxrVtValueRef.asPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrVtValueCopyPath();
  *a1 = result;
  return result;
}

uint64_t RIOPxrVtValueRef.mapUSDValue<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  if (swift_dynamicCastMetatype())
  {
    Bool = RIOPxrVtValueGetBool();
    v5 = 0;
    if (!Bool)
    {
      v5 = 2;
    }

    v83.i8[0] = v5;
    v6 = &_sSbSgMd;
    v7 = &_sSbSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    v83.i32[0] = 0;
    v83.i8[4] = RIOPxrVtValueGetInt32() ^ 1;
    v6 = &_ss5Int32VSgMd;
    v7 = &_ss5Int32VSgMR;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    v8 = swift_dynamicCast();
    return (*(*(a1 - 8) + 56))(a2, v8 ^ 1u, 1, a1);
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asInt.getter();
    v83.i8[8] = v10 & 1;
    v6 = &_sSiSgMd;
    v7 = &_sSiSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asInt64.getter();
    v83.i8[8] = v11 & 1;
    v6 = &_ss5Int64VSgMd;
    v7 = &_ss5Int64VSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i16[0] = RIOPxrVtValueRef.asUInt8.getter() & 0x1FF;
    v6 = &_ss5UInt8VSgMd;
    v7 = &_ss5UInt8VSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    v12 = RIOPxrVtValueRef.asUInt32.getter();
    v83.i32[0] = v12;
    v83.i8[4] = BYTE4(v12) & 1;
    v6 = &_ss6UInt32VSgMd;
    v7 = &_ss6UInt32VSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asUInt.getter();
    v83.i8[8] = v13 & 1;
    v6 = &_sSuSgMd;
    v7 = &_sSuSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asUInt64.getter();
    v83.i8[8] = v14 & 1;
    v6 = &_ss6UInt64VSgMd;
    v7 = &_ss6UInt64VSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys5Int32VGMd, &_ss5SIMD2Vys5Int32VGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asInt2.getter();
    v83.i8[8] = v15 & 1;
    v6 = &_ss5SIMD2Vys5Int32VGSgMd;
    v7 = &_ss5SIMD2Vys5Int32VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys5Int32VGMd, &_ss5SIMD3Vys5Int32VGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asInt3.getter();
    v83.i64[1] = v16;
    LOBYTE(v84) = v17 & 1;
    v6 = &_ss5SIMD3Vys5Int32VGSgMd;
    v7 = &_ss5SIMD3Vys5Int32VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys5Int32VGMd, &_ss5SIMD4Vys5Int32VGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asInt4.getter();
    v83.i64[1] = v18;
    LOBYTE(v84) = v19 & 1;
    v6 = &_ss5SIMD4Vys5Int32VGSgMd;
    v7 = &_ss5SIMD4Vys5Int32VGSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i32[0] = 0;
    v83.i8[4] = RIOPxrVtValueGetFloat() ^ 1;
    v6 = &_s9RealityIO4HalfVSgMd;
    v7 = &_s9RealityIO4HalfVSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vy9RealityIO4HalfVGMd, &_ss5SIMD2Vy9RealityIO4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asHalf2.getter(v83.i64);
    v6 = &_ss5SIMD2Vy9RealityIO4HalfVGSgMd;
    v7 = &_ss5SIMD2Vy9RealityIO4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO9TexCoord2VyAA4HalfVGMd, &_s9RealityIO9TexCoord2VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asTexCoord2h.getter(&v83);
    v6 = &_s9RealityIO9TexCoord2VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO9TexCoord2VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vy9RealityIO4HalfVGMd, &_ss5SIMD3Vy9RealityIO4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asHalf3.getter(&v83);
    v6 = &_ss5SIMD3Vy9RealityIO4HalfVGSgMd;
    v7 = &_ss5SIMD3Vy9RealityIO4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color3VyAA4HalfVGMd, &_s9RealityIO6Color3VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asTexCoord3h.getter(v83.i64);
    v6 = &_s9RealityIO6Color3VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO6Color3VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Point3VyAA4HalfVGMd, &_s9RealityIO6Point3VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asNormal3h.getter(v83.i64);
    v6 = &_s9RealityIO6Point3VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO6Point3VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Normal3VyAA4HalfVGMd, &_s9RealityIO7Normal3VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asNormal3h.getter(v83.i64);
    v6 = &_s9RealityIO7Normal3VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO7Normal3VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Vector3VyAA4HalfVGMd, &_s9RealityIO7Vector3VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asNormal3h.getter(v83.i64);
    v6 = &_s9RealityIO7Vector3VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO7Vector3VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO9TexCoord3VyAA4HalfVGMd, &_s9RealityIO9TexCoord3VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asTexCoord3h.getter(v83.i64);
    v6 = &_s9RealityIO9TexCoord3VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO9TexCoord3VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vy9RealityIO4HalfVGMd, &_ss5SIMD4Vy9RealityIO4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asHalf4.getter(v83.i64);
    v6 = &_ss5SIMD4Vy9RealityIO4HalfVGSgMd;
    v7 = &_ss5SIMD4Vy9RealityIO4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color4VyAA4HalfVGMd, &_s9RealityIO6Color4VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asColor4h.getter(v83.i64);
    v6 = &_s9RealityIO6Color4VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO6Color4VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v20 = RIOPxrVtValueRef.asFloat.getter();
    v83.i32[0] = v20;
    v83.i8[4] = BYTE4(v20) & 1;
    v6 = &_sSfSgMd;
    v7 = &_sSfSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asFloat2.getter();
    v83.i8[8] = v21 & 1;
    v6 = &_ss5SIMD2VySfGSgMd;
    v7 = &_ss5SIMD2VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asFloat3.getter();
    v83.i64[1] = v22;
    LOBYTE(v84) = v23 & 1;
    v6 = &_ss5SIMD3VySfGSgMd;
    v7 = &_ss5SIMD3VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asFloat4.getter();
    v83.i64[1] = v24;
    LOBYTE(v84) = v25 & 1;
    v6 = &_ss5SIMD4VySfGSgMd;
    v7 = &_ss5SIMD4VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color3VySfGMd, &_s9RealityIO6Color3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    Float3 = RIOPxrVtValueGetFloat3();
    v27 = 0uLL;
    v27.i32[3] = 0;
    if (Float3)
    {
      v28 = -1;
    }

    else
    {
      v28 = 0;
    }

    v83 = vandq_s8(v27, vdupq_n_s64(v28));
    LOBYTE(v84) = Float3 ^ 1;
    v6 = &_s9RealityIO6Color3VySfGSgMd;
    v7 = &_s9RealityIO6Color3VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color4VySfGMd, &_s9RealityIO6Color4VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0uLL;
    LOBYTE(v84) = RIOPxrVtValueGetFloat4() ^ 1;
    v6 = &_s9RealityIO6Color4VySfGSgMd;
    v7 = &_s9RealityIO6Color4VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Point3VySfGMd, &_s9RealityIO6Point3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v29 = RIOPxrVtValueGetFloat3();
    v30 = 0uLL;
    v30.i32[3] = 0;
    if (v29)
    {
      v31 = -1;
    }

    else
    {
      v31 = 0;
    }

    v83 = vandq_s8(v30, vdupq_n_s64(v31));
    LOBYTE(v84) = v29 ^ 1;
    v6 = &_s9RealityIO6Point3VySfGSgMd;
    v7 = &_s9RealityIO6Point3VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Normal3VySfGMd, &_s9RealityIO7Normal3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v32 = RIOPxrVtValueGetFloat3();
    v33 = 0uLL;
    v33.i32[3] = 0;
    if (v32)
    {
      v34 = -1;
    }

    else
    {
      v34 = 0;
    }

    v83 = vandq_s8(v33, vdupq_n_s64(v34));
    LOBYTE(v84) = v32 ^ 1;
    v6 = &_s9RealityIO7Normal3VySfGSgMd;
    v7 = &_s9RealityIO7Normal3VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Vector3VySfGMd, &_s9RealityIO7Vector3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v35 = RIOPxrVtValueGetFloat3();
    v36 = 0uLL;
    v36.i32[3] = 0;
    if (v35)
    {
      v37 = -1;
    }

    else
    {
      v37 = 0;
    }

    v83 = vandq_s8(v36, vdupq_n_s64(v37));
    LOBYTE(v84) = v35 ^ 1;
    v6 = &_s9RealityIO7Vector3VySfGSgMd;
    v7 = &_s9RealityIO7Vector3VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO9TexCoord3VySfGMd, &_s9RealityIO9TexCoord3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v38 = RIOPxrVtValueGetFloat3();
    v39 = 0uLL;
    v39.i32[3] = 0;
    if (v38)
    {
      v40 = -1;
    }

    else
    {
      v40 = 0;
    }

    v83 = vandq_s8(v39, vdupq_n_s64(v40));
    LOBYTE(v84) = v38 ^ 1;
    v6 = &_s9RealityIO9TexCoord3VySfGSgMd;
    v7 = &_s9RealityIO9TexCoord3VySfGSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asDouble.getter();
    v83.i8[8] = v41 & 1;
    v6 = &_sSdSgMd;
    v7 = &_sSdSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asDouble2.getter();
    v83.i64[1] = v42;
    LOBYTE(v84) = v43 & 1;
    v6 = &_ss5SIMD2VySdGSgMd;
    v7 = &_ss5SIMD2VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0u;
    v84 = 0u;
    Double3 = RIOPxrVtValueGetDouble3();
    if (Double3)
    {
      v46 = v83.i64[1];
      v45 = v83.i64[0];
      v48 = *(&v84 + 1);
      v47 = v84;
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
    }

    v83.i64[0] = v45;
    v83.i64[1] = v46;
    *&v84 = v47;
    *(&v84 + 1) = v48;
    v85 = Double3 ^ 1;
    v6 = &_ss5SIMD3VySdGSgMd;
    v7 = &_ss5SIMD3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color3VySdGMd, &_s9RealityIO6Color3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0u;
    v49 = RIOPxrVtValueGetDouble3();
    if (v49)
    {
      v50 = -1;
    }

    else
    {
      v50 = 0;
    }

    v83 = vandq_s8(v83, vdupq_n_s64(v50));
    v84 = 0uLL;
    v85 = v49 ^ 1;
    v6 = &_s9RealityIO6Color3VySdGSgMd;
    v7 = &_s9RealityIO6Color3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Point3VySdGMd, &_s9RealityIO6Point3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0u;
    v51 = RIOPxrVtValueGetDouble3();
    if (v51)
    {
      v52 = -1;
    }

    else
    {
      v52 = 0;
    }

    v83 = vandq_s8(v83, vdupq_n_s64(v52));
    v84 = 0uLL;
    v85 = v51 ^ 1;
    v6 = &_s9RealityIO6Point3VySdGSgMd;
    v7 = &_s9RealityIO6Point3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Normal3VySdGMd, &_s9RealityIO7Normal3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0u;
    v53 = RIOPxrVtValueGetDouble3();
    if (v53)
    {
      v54 = -1;
    }

    else
    {
      v54 = 0;
    }

    v83 = vandq_s8(v83, vdupq_n_s64(v54));
    v84 = 0uLL;
    v85 = v53 ^ 1;
    v6 = &_s9RealityIO7Normal3VySdGSgMd;
    v7 = &_s9RealityIO7Normal3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Vector3VySdGMd, &_s9RealityIO7Vector3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0u;
    v55 = RIOPxrVtValueGetDouble3();
    if (v55)
    {
      v56 = -1;
    }

    else
    {
      v56 = 0;
    }

    v83 = vandq_s8(v83, vdupq_n_s64(v56));
    v84 = 0uLL;
    v85 = v55 ^ 1;
    v6 = &_s9RealityIO7Vector3VySdGSgMd;
    v7 = &_s9RealityIO7Vector3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO9TexCoord3VySdGMd, &_s9RealityIO9TexCoord3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0u;
    v57 = RIOPxrVtValueGetDouble3();
    if (v57)
    {
      v58 = -1;
    }

    else
    {
      v58 = 0;
    }

    v83 = vandq_s8(v83, vdupq_n_s64(v58));
    v84 = 0uLL;
    v85 = v57 ^ 1;
    v6 = &_s9RealityIO9TexCoord3VySdGSgMd;
    v7 = &_s9RealityIO9TexCoord3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0u;
    v84 = 0u;
    Double4 = RIOPxrVtValueGetDouble4();
    if (Double4)
    {
      v61 = v83.i64[1];
      v60 = v83.i64[0];
      v63 = *(&v84 + 1);
      v62 = v84;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
    }

    v83.i64[0] = v60;
    v83.i64[1] = v61;
    *&v84 = v62;
    *(&v84 + 1) = v63;
    v85 = Double4 ^ 1;
    v6 = &_ss5SIMD4VySdGSgMd;
    v7 = &_ss5SIMD4VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color4VySdGMd, &_s9RealityIO6Color4VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0u;
    v84 = 0u;
    v64 = RIOPxrVtValueGetDouble4();
    if (v64)
    {
      v66 = v83.i64[1];
      v65 = v83.i64[0];
      v68 = *(&v84 + 1);
      v67 = v84;
    }

    else
    {
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
    }

    v83.i64[0] = v65;
    v83.i64[1] = v66;
    *&v84 = v67;
    *(&v84 + 1) = v68;
    v85 = v64 ^ 1;
    v6 = &_s9RealityIO6Color4VySdGSgMd;
    v7 = &_s9RealityIO6Color4VySdGSgMR;
    goto LABEL_9;
  }

  type metadata accessor for simd_quatf(0);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asQuatf.getter();
    v83.i64[1] = v69;
    LOBYTE(v84) = v70 & 1;
    v6 = &_sSo10simd_quatfaSgMd;
    v7 = &_sSo10simd_quatfaSgMR;
    goto LABEL_9;
  }

  type metadata accessor for simd_quatd(0);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0u;
    v84 = 0u;
    Quatd = RIOPxrVtValueGetQuatd();
    if (Quatd)
    {
      v73 = v83.i64[1];
      v72 = v83.i64[0];
      v75 = *(&v84 + 1);
      v74 = v84;
    }

    else
    {
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
    }

    v83.i64[0] = v72;
    v83.i64[1] = v73;
    *&v84 = v74;
    *(&v84 + 1) = v75;
    v85 = Quatd ^ 1;
    v6 = &_sSo10simd_quatdaSgMd;
    v7 = &_sSo10simd_quatdaSgMR;
    goto LABEL_9;
  }

  type metadata accessor for simd_double2x2(0);
  if (swift_dynamicCastMetatype())
  {
    v83 = 0u;
    v84 = 0u;
    Matrix2d = RIOPxrVtValueGetMatrix2d();
    if (Matrix2d)
    {
      v78 = v83.i64[1];
      v77 = v83.i64[0];
      v80 = *(&v84 + 1);
      v79 = v84;
    }

    else
    {
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 0;
    }

    v83.i64[0] = v77;
    v83.i64[1] = v78;
    *&v84 = v79;
    *(&v84 + 1) = v80;
    v85 = Matrix2d ^ 1;
    v6 = &_sSo14simd_double2x2aSgMd;
    v7 = &_sSo14simd_double2x2aSgMR;
    goto LABEL_9;
  }

  type metadata accessor for simd_double3x3(0);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asMatrix3d.getter(&v83);
    v6 = &_sSo14simd_double3x3aSgMd;
    v7 = &_sSo14simd_double3x3aSgMR;
    goto LABEL_9;
  }

  type metadata accessor for simd_double4x4(0);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asMatrix4d.getter(&v83);
    v6 = &_sSo14simd_double4x4aSgMd;
    v7 = &_sSo14simd_double4x4aSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asString.getter();
    v83.i64[1] = v81;
    v6 = &_sSSSgMd;
    v7 = &_sSSSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueCopyToken();
    v6 = &_s9RealityIO16ToolsFoundationsO5TokenVSgMd;
    v7 = &_s9RealityIO16ToolsFoundationsO5TokenVSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueCopyPath();
    v6 = &_s9RealityIO27SceneDescriptionFoundationsO4PathVSgMd;
    v7 = &_s9RealityIO27SceneDescriptionFoundationsO4PathVSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueCopyAssetPath();
    v6 = &_s9RealityIO27SceneDescriptionFoundationsO9AssetPathVSgMd;
    v7 = &_s9RealityIO27SceneDescriptionFoundationsO9AssetPathVSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGMd, &_sSaySbGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asBoolArray.getter();
    v6 = &_sSaySbGSgMd;
    v7 = &_sSaySbGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays4Int8VGMd, &_sSays4Int8VGMR);
  if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int16VGMd, &_sSays5Int16VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int32VGMd, &_sSays5Int32VGMR), swift_dynamicCastMetatype()))
  {
    v83.i64[0] = RIOPxrVtValueRef.asInt32Array.getter();
    v6 = &_sSays5Int32VGSgMd;
    v7 = &_sSays5Int32VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asIntArray.getter();
    v6 = &_sSaySiGSgMd;
    v7 = &_sSaySiGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int64VGMd, &_sSays5Int64VGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asInt64Array.getter();
    v6 = &_sSays5Int64VGSgMd;
    v7 = &_sSays5Int64VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asUIntArray.getter();
    v6 = &_sSaySuGSgMd;
    v7 = &_sSaySuGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asUInt8Array.getter();
    v6 = &_sSays5UInt8VGSgMd;
    v7 = &_sSays5UInt8VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt16VGMd, &_sSays6UInt16VGMR);
  if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR), swift_dynamicCastMetatype()))
  {
    v83.i64[0] = RIOPxrVtValueRef.asUInt32Array.getter();
    v6 = &_sSays6UInt32VGSgMd;
    v7 = &_sSays6UInt32VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asUInt64Array.getter();
    v6 = &_sSays6UInt64VGSgMd;
    v7 = &_sSays6UInt64VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO4HalfVGMd, &_sSay9RealityIO4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asHalfArray.getter();
    v6 = &_sSay9RealityIO4HalfVGSgMd;
    v7 = &_sSay9RealityIO4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2Vy9RealityIO4HalfVGGMd, &_sSays5SIMD2Vy9RealityIO4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asHalf2Array.getter();
    v6 = &_sSays5SIMD2Vy9RealityIO4HalfVGGSgMd;
    v7 = &_sSays5SIMD2Vy9RealityIO4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord2VyAA4HalfVGGMd, &_sSay9RealityIO9TexCoord2VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asTexCoord2hArray.getter();
    v6 = &_sSay9RealityIO9TexCoord2VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord2VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3Vy9RealityIO4HalfVGGMd, &_sSays5SIMD3Vy9RealityIO4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asHalf3Array.getter();
    v6 = &_sSays5SIMD3Vy9RealityIO4HalfVGGSgMd;
    v7 = &_sSays5SIMD3Vy9RealityIO4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color3VyAA4HalfVGGMd, &_sSay9RealityIO6Color3VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asColor3hArray.getter();
    v6 = &_sSay9RealityIO6Color3VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO6Color3VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Point3VyAA4HalfVGGMd, &_sSay9RealityIO6Point3VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asPoint3hArray.getter();
    v6 = &_sSay9RealityIO6Point3VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO6Point3VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Normal3VyAA4HalfVGGMd, &_sSay9RealityIO7Normal3VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asNormal3hArray.getter();
    v6 = &_sSay9RealityIO7Normal3VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO7Normal3VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Vector3VyAA4HalfVGGMd, &_sSay9RealityIO7Vector3VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asVector3hArray.getter();
    v6 = &_sSay9RealityIO7Vector3VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO7Vector3VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord3VyAA4HalfVGGMd, &_sSay9RealityIO9TexCoord3VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asTexCoord3hArray.getter();
    v6 = &_sSay9RealityIO9TexCoord3VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord3VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4Vy9RealityIO4HalfVGGMd, &_sSays5SIMD4Vy9RealityIO4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asHalf4Array.getter();
    v6 = &_sSays5SIMD4Vy9RealityIO4HalfVGGSgMd;
    v7 = &_sSays5SIMD4Vy9RealityIO4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color4VyAA4HalfVGGMd, &_sSay9RealityIO6Color4VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asColor4hArray.getter();
    v6 = &_sSay9RealityIO6Color4VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO6Color4VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asFloatArray.getter();
    v6 = &_sSaySfGSgMd;
    v7 = &_sSaySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asFloat2Array.getter();
    v6 = &_sSays5SIMD2VySfGGSgMd;
    v7 = &_sSays5SIMD2VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord2VySfGGMd, &_sSay9RealityIO9TexCoord2VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asTexCoord2fArray.getter();
    v6 = &_sSay9RealityIO9TexCoord2VySfGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord2VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asFloat3Array.getter();
    v6 = &_sSays5SIMD3VySfGGSgMd;
    v7 = &_sSays5SIMD3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color3VySfGGMd, &_sSay9RealityIO6Color3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asColor3fArray.getter();
    v6 = &_sSay9RealityIO6Color3VySfGGSgMd;
    v7 = &_sSay9RealityIO6Color3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Point3VySfGGMd, &_sSay9RealityIO6Point3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asPoint3fArray.getter();
    v6 = &_sSay9RealityIO6Point3VySfGGSgMd;
    v7 = &_sSay9RealityIO6Point3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Normal3VySfGGMd, &_sSay9RealityIO7Normal3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asNormal3fArray.getter();
    v6 = &_sSay9RealityIO7Normal3VySfGGSgMd;
    v7 = &_sSay9RealityIO7Normal3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Vector3VySfGGMd, &_sSay9RealityIO7Vector3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asVector3fArray.getter();
    v6 = &_sSay9RealityIO7Vector3VySfGGSgMd;
    v7 = &_sSay9RealityIO7Vector3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord3VySfGGMd, &_sSay9RealityIO9TexCoord3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asTexCoord3fArray.getter();
    v6 = &_sSay9RealityIO9TexCoord3VySfGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asFloat4Array.getter();
    v6 = &_sSays5SIMD4VySfGGSgMd;
    v7 = &_sSays5SIMD4VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color4VySfGGMd, &_sSay9RealityIO6Color4VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asColor4fArray.getter();
    v6 = &_sSay9RealityIO6Color4VySfGGSgMd;
    v7 = &_sSay9RealityIO6Color4VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asDoubleArray.getter();
    v6 = &_sSaySdGSgMd;
    v7 = &_sSaySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySdGGMd, &_sSays5SIMD2VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asDouble2Array.getter();
    v6 = &_sSays5SIMD2VySdGGSgMd;
    v7 = &_sSays5SIMD2VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord2VySdGGMd, &_sSay9RealityIO9TexCoord2VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asTexCoord2dArray.getter();
    v6 = &_sSay9RealityIO9TexCoord2VySdGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord2VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySdGGMd, &_sSays5SIMD3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asDouble3Array.getter();
    v6 = &_sSays5SIMD3VySdGGSgMd;
    v7 = &_sSays5SIMD3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color3VySdGGMd, &_sSay9RealityIO6Color3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asColor3dArray.getter();
    v6 = &_sSay9RealityIO6Color3VySdGGSgMd;
    v7 = &_sSay9RealityIO6Color3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Point3VySdGGMd, &_sSay9RealityIO6Point3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asPoint3dArray.getter();
    v6 = &_sSay9RealityIO6Point3VySdGGSgMd;
    v7 = &_sSay9RealityIO6Point3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Normal3VySdGGMd, &_sSay9RealityIO7Normal3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asNormal3dArray.getter();
    v6 = &_sSay9RealityIO7Normal3VySdGGSgMd;
    v7 = &_sSay9RealityIO7Normal3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Vector3VySdGGMd, &_sSay9RealityIO7Vector3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asVector3dArray.getter();
    v6 = &_sSay9RealityIO7Vector3VySdGGSgMd;
    v7 = &_sSay9RealityIO7Vector3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord3VySdGGMd, &_sSay9RealityIO9TexCoord3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asTexCoord3dArray.getter();
    v6 = &_sSay9RealityIO9TexCoord3VySdGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySdGGMd, &_sSays5SIMD4VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asDouble4Array.getter();
    v6 = &_sSays5SIMD4VySdGGSgMd;
    v7 = &_sSays5SIMD4VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color4VySdGGMd, &_sSay9RealityIO6Color4VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asColor4dArray.getter();
    v6 = &_sSay9RealityIO6Color4VySdGGSgMd;
    v7 = &_sSay9RealityIO6Color4VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10simd_quatfaGMd, &_sSaySo10simd_quatfaGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asQuatfArray.getter();
    v6 = &_sSaySo10simd_quatfaGSgMd;
    v7 = &_sSaySo10simd_quatfaGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10simd_quatdaGMd, &_sSaySo10simd_quatdaGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asQuatdArray.getter();
    v6 = &_sSaySo10simd_quatdaGSgMd;
    v7 = &_sSaySo10simd_quatdaGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double2x2aGMd, &_sSaySo14simd_double2x2aGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asMatrix2dArray.getter();
    v6 = &_sSaySo14simd_double2x2aGSgMd;
    v7 = &_sSaySo14simd_double2x2aGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double3x3aGMd, &_sSaySo14simd_double3x3aGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asMatrix3dArray.getter();
    v6 = &_sSaySo14simd_double3x3aGSgMd;
    v7 = &_sSaySo14simd_double3x3aGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double4x4aGMd, &_sSaySo14simd_double4x4aGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asMatrix4dArray.getter();
    v6 = &_sSaySo14simd_double4x4aGSgMd;
    v7 = &_sSaySo14simd_double4x4aGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asStringArray.getter();
    v6 = &_sSaySSGSgMd;
    v7 = &_sSaySSGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO16ToolsFoundationsO5TokenVGMd, &_sSay9RealityIO16ToolsFoundationsO5TokenVGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asTokenArray.getter();
    v6 = &_sSay9RealityIO16ToolsFoundationsO5TokenVGSgMd;
    v7 = &_sSay9RealityIO16ToolsFoundationsO5TokenVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asPathListOp.getter();
    v6 = &_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGSgMd;
    v7 = &_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMd, &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asAssetPathArray.getter();
    v6 = &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGSgMd;
    v7 = &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMd, &_sSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMR);
  if (swift_dynamicCastMetatype())
  {
    v83.i64[0] = RIOPxrVtValueRef.asDictionary.getter();
    v6 = &_sSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGSgMd;
    v7 = &_sSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGSgMR;
    goto LABEL_9;
  }

  v82 = *(*(a1 - 8) + 56);

  return v82(a2, 1, 1, a1);
}