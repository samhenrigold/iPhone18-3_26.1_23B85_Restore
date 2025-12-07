uint64_t one-time initialization function for _errorDomainUserInfoProviderQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v5 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v7[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  _errorDomainUserInfoProviderQueue = result;
  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t one-time initialization function for cache(uint64_t a1)
{
  return one-time initialization function for cache(a1, &static ICUNumberFormatter.cache, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMR, algn_1EA7B1D98);
}

{
  return one-time initialization function for cache(a1, &static ICUMeasurementNumberFormatter.cache, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMR, algn_1EA7B1588);
}

{
  return one-time initialization function for cache(a1, &static ICUPercentNumberFormatter.cache, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMR, algn_1EA7B0228);
}

{
  return one-time initialization function for cache(a1, &static ICUCurrencyNumberFormatter.cache, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMR, &qword_1EA7B5100);
}

{
  return one-time initialization function for cache(a1, &static ICUByteCountNumberFormatter.cache, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA27ICUByteCountNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA27ICUByteCountNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMR, &qword_1EA7AEDE0);
}

unint64_t lazy protocol witness table accessor for type ICUNumberFormatter.Signature and conformance ICUNumberFormatter.Signature()
{
  result = lazy protocol witness table cache variable for type ICUNumberFormatter.Signature and conformance ICUNumberFormatter.Signature;
  if (!lazy protocol witness table cache variable for type ICUNumberFormatter.Signature and conformance ICUNumberFormatter.Signature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUNumberFormatter.Signature and conformance ICUNumberFormatter.Signature);
  }

  return result;
}

uint64_t NumberFormatStyleConfiguration.Collection.skeleton.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v71 - v3;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v71 - v9;
  v98 = 0;
  v99 = 0xE000000000000000;
  if ((*(v0 + 8) & 1) == 0)
  {
    v11 = *v0;
    v90._countAndFlagsBits = 0x2F656C616373;
    v90._object = 0xE600000000000000;
    specialized NSDecimal.init(_:)(v11);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v91._countAndFlagsBits = v12;
    v91._object = v14;
    LODWORD(v92) = v16;
    if (_So9NSDecimala__length_getter(&v91) || (v91._countAndFlagsBits = v13, v91._object = v15, LODWORD(v92) = v17, !_So9NSDecimala__isNegative_getter(&v91)))
    {
      v91._countAndFlagsBits = v13;
      v91._object = v15;
      LODWORD(v92) = v17;
      if (_So9NSDecimala__length_getter(&v91))
      {
        v89._countAndFlagsBits = 0;
        v89._object = 0xE000000000000000;
        v91._countAndFlagsBits = v13;
        v91._object = v15;
        LODWORD(v92) = v17;
        v87 = v91;
        v88 = v17;
        if (_So9NSDecimala__exponent_getter(&v87) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v87 = v91;
            v88 = v92;
            v18 = _So9NSDecimala__exponent_getter(&v87);
            _So9NSDecimala__exponent_setter((v18 - 1), &v91);
            v87 = v91;
            v88 = v92;
          }

          while (_So9NSDecimala__exponent_getter(&v87) > 0);
        }

        v87 = v91;
        v88 = v92;
        if (!_So9NSDecimala__exponent_getter(&v87))
        {
          _So9NSDecimala__exponent_setter(1, &v91);
        }

        v87 = v91;
        v88 = v92;
        if (_So9NSDecimala__length_getter(&v87))
        {
          v72 = v5;
          v71 = v6;
          v73 = v10;
          while (1)
          {
            v87 = v91;
            v88 = v92;
            if (!_So9NSDecimala__exponent_getter(&v87))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v87 = v91;
            v88 = v92;
            v19 = _So9NSDecimala__exponent_getter(&v87);
            _So9NSDecimala__exponent_setter((v19 + 1), &v91);
            countAndFlagsBits_low = LODWORD(v91._countAndFlagsBits);
            v82 = WORD2(v91._countAndFlagsBits);
            countAndFlagsBits_high = HIWORD(v91._countAndFlagsBits);
            object_low = LOWORD(v91._object);
            v80 = WORD1(v91._object);
            v79 = WORD2(v91._object);
            object_high = HIWORD(v91._object);
            v78 = v92;
            v76 = WORD1(v92);
            NSDecimal.asVariableLengthInteger()(LODWORD(v91._countAndFlagsBits) | (WORD2(v91._countAndFlagsBits) << 32) | (HIWORD(v91._countAndFlagsBits) << 48), LOWORD(v91._object) | (WORD1(v91._object) << 16) | (WORD2(v91._object) << 32) | (HIWORD(v91._object) << 48), v92 | (WORD1(v92) << 16));
            v21 = v20;
            v22 = *(v20 + 2);
            v23 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v22);
            countAndFlagsBits = v23;
            v87._countAndFlagsBits = v23;
            if (v22)
            {
              break;
            }

            v27 = 48;
LABEL_22:
            while (1)
            {
              v28 = *(countAndFlagsBits + 16);
              if (!v28 || *(countAndFlagsBits + 2 * v28 + 30))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v87._countAndFlagsBits + 16) - 1);
              }

              countAndFlagsBits = v87._countAndFlagsBits;
            }

            LODWORD(v87._countAndFlagsBits) = countAndFlagsBits_low;
            WORD2(v87._countAndFlagsBits) = v82;
            HIWORD(v87._countAndFlagsBits) = countAndFlagsBits_high;
            LOWORD(v87._object) = object_low;
            WORD1(v87._object) = v80;
            WORD2(v87._object) = v79;
            HIWORD(v87._object) = object_high;
            LOWORD(v88) = v78;
            HIWORD(v88) = v76;
            NSDecimal.copyVariableLengthInteger(_:)(countAndFlagsBits);
            if (v29)
            {
              goto LABEL_111;
            }

            v30 = *(countAndFlagsBits + 16);

            if (HIDWORD(v30))
            {
              __break(1u);
LABEL_111:

              result = swift_unexpectedError();
              __break(1u);
              return result;
            }

            _So9NSDecimala__length_setter(v30, &v87);
            v91 = v87;
            LODWORD(v92) = v88;
            v85._countAndFlagsBits = v27;
            v31 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v31);

            v85 = v91;
            v86 = v92;
            v32 = _So9NSDecimala__length_getter(&v85);
            v10 = v73;
            if (!v32)
            {
              goto LABEL_29;
            }
          }

          v74 = 0;
          v25 = 0;
          v10 = v22 + 15;
          while (1)
          {
            v6 = v10 - 15;
            if ((v10 - 15) > *(v21 + 2))
            {
              break;
            }

            v5 = *&v21[2 * v10];
            LODWORD(v23) = swift_isUniquelyReferenced_nonNull_native();
            if ((v23 & 1) == 0)
            {
              v23 = specialized _ArrayBuffer._consumeAndCreateNew()(countAndFlagsBits);
              countAndFlagsBits = v23;
            }

            if (v6 > *(countAndFlagsBits + 16))
            {
              goto LABEL_102;
            }

            v26 = v5 | (v25 << 16);
            *(countAndFlagsBits + 2 * v10) = v26 / 0xA;
            v25 = v26 % 0xA;
            if (--v10 == 15)
            {

              v87._countAndFlagsBits = countAndFlagsBits;
              v27 = v25 | 0x30;
              v5 = v72;
              v6 = v71;
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

LABEL_29:
        v87 = v91;
        v88 = v92;
        if (_So9NSDecimala__exponent_getter(&v87) <= 0)
        {
          while (1)
          {
            v87 = v91;
            v88 = v92;
            if (!_So9NSDecimala__exponent_getter(&v87))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v87 = v91;
            v88 = v92;
            v33 = _So9NSDecimala__exponent_getter(&v87);
            _So9NSDecimala__exponent_setter((v33 + 1), &v91);
          }

          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        }

        v87 = v91;
        v88 = v92;
        if (_So9NSDecimala__isNegative_getter(&v87))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v87 = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        v34 = String.init<A>(_:)();
        v36 = v35;
      }

      else
      {
        v36 = 0xE100000000000000;
        v34 = 48;
      }
    }

    else
    {
      v36 = 0xE300000000000000;
      v34 = 5136718;
    }

    MEMORY[0x1865CB0E0](v34, v36);

    v91 = v90;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);
  }

  v38 = *(v1 + 40);
  v37 = *(v1 + 48);
  v40 = *(v1 + 56);
  v39 = *(v1 + 64);
  v41 = *(v1 + 72);
  v42 = v1 + *(type metadata accessor for NumberFormatStyleConfiguration.Collection(0) + 40);
  v43 = *(v42 + 8);
  if (v38 >> 1 == 0xFFFFFFFF && v40 <= 1 && v41 < 2)
  {
    if (v43 == 255)
    {
      goto LABEL_51;
    }

    v91._countAndFlagsBits = NumberFormatStyleConfiguration.RoundingIncrement.skeleton.getter(*v42, v43 & 1);
    v91._object = v44;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  }

  else
  {
    if (v43 == 255)
    {
      v91 = *(v1 + 16);
      v92 = *(v1 + 32);
      v93 = v38;
      v94 = v37;
      v95 = v40;
      v96 = v39;
      v97 = v41;
      v87._countAndFlagsBits = NumberFormatStyleConfiguration.Precision.skeleton.getter();
      v87._object = v50;

      MEMORY[0x1865CB0E0](32, 0xE100000000000000);

      object = v87._object;
      v48 = v87._countAndFlagsBits;
      goto LABEL_50;
    }

    v45 = *v42;
    v91 = *(v1 + 16);
    v92 = *(v1 + 32);
    v93 = v38;
    v94 = v37;
    v95 = v40;
    v96 = v39;
    v97 = v41;
    v46._countAndFlagsBits = NumberFormatStyleConfiguration.RoundingIncrement.skeleton.getter(v45, v43 & 1);
    v47 = NumberFormatStyleConfiguration.Precision.skeletonWithRoundingIncrement(stem:)(v46);

    v91 = v47;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  }

  object = v91._object;
  v48 = v91._countAndFlagsBits;
LABEL_50:
  MEMORY[0x1865CB0E0](v48, object);

LABEL_51:
  v51 = *(v1 + 73);
  if (v51 != 2)
  {
    v52 = (v51 & 1) == 0;
    v53 = 0x666F2D70756F7267;
    if (v52)
    {
      v53 = 0;
    }

    if (v52)
    {
      v54 = 0xE000000000000000;
    }

    else
    {
      v54 = 0xE900000000000066;
    }

    v91._countAndFlagsBits = v53;
    v91._object = v54;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);
  }

  if (*(v1 + 74) != 2)
  {
    v55 = 0x76656E2D6E676973;
    if ((*(v1 + 74) & 0x100) == 0)
    {
      v55 = 0x7475612D6E676973;
    }

    v56 = 0xE90000000000006FLL;
    if ((*(v1 + 74) & 0x100) != 0)
    {
      v56 = 0xEA00000000007265;
    }

    v57 = 0xEB00000000737961;
    v58 = 0x776C612D6E676973;
    if (((*(v1 + 74) | (*(v1 + 76) << 16)) & 0x10000) != 0)
    {
      v58 = 0xD000000000000010;
      v57 = 0x800000018147F0D0;
    }

    if (*(v1 + 74))
    {
      v59 = v55;
    }

    else
    {
      v59 = v58;
    }

    if (*(v1 + 74))
    {
      v60 = v56;
    }

    else
    {
      v60 = v57;
    }

    v91._countAndFlagsBits = v59;
    v91._object = v60;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);
  }

  v61 = *(v1 + 77);
  if (v61 != 2)
  {
    if (v61)
    {
      v62 = 0xEE00737961776C61;
    }

    else
    {
      v62 = 0xEC0000006F747561;
    }

    v91._countAndFlagsBits = 0x2D6C616D69636564;
    v91._object = v62;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);
  }

  v25 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v1 + *(v25 + 36), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of TermOfAddress?(v4, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
    goto LABEL_86;
  }

  (*(v6 + 32))(v10, v4, v5);
  v21 = v84;
  (*(v6 + 16))(v84, v10, v5);
  LODWORD(v23) = (*(v6 + 88))(v21, v5);
  if (v23 != *MEMORY[0x1E69E7038])
  {
    if (v23 == *MEMORY[0x1E69E7030])
    {
      v64 = 0x800000018147F070;
      v65 = 0xD000000000000017;
      goto LABEL_85;
    }

    if (v23 == *MEMORY[0x1E69E7040])
    {
      v63 = "rounding-mode-ceiling";
      goto LABEL_82;
    }

LABEL_103:
    if (v23 == *MEMORY[0x1E69E7048])
    {
      v64 = 0x800000018147F030;
      v65 = 0xD000000000000013;
    }

    else if (v23 == *MEMORY[0x1E69E7020])
    {
      v64 = 0x800000018147F010;
      v65 = 0xD000000000000012;
    }

    else if (v23 == *MEMORY[0x1E69E7028])
    {
      v65 = 0xD000000000000010;
      v64 = 0x800000018147F0B0;
    }

    else
    {
      (*(v6 + 8))(v21, v5);
      v65 = 0;
      v64 = 0xE000000000000000;
    }

    goto LABEL_85;
  }

  v63 = "rounding-mode-half-up";
LABEL_82:
  v64 = (v63 - 32) | 0x8000000000000000;
  v65 = 0xD000000000000015;
LABEL_85:
  v91._countAndFlagsBits = v65;
  v91._object = v64;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);

  MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);

  (*(v6 + 8))(v10, v5);
LABEL_86:
  v66 = *(v1 + *(v25 + 44));
  if (*(v1 + *(v25 + 44)) <= 1u)
  {
    if (*(v1 + *(v25 + 44)))
    {
      v66 = 0x6669746E65696373;
      v67 = 0xEA00000000006369;
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    goto LABEL_92;
  }

  if (v66 == 2)
  {
    v67 = 0xED000074726F6873;
    v66 = 0x2D746361706D6F63;
LABEL_92:
    v91._countAndFlagsBits = v66;
    v91._object = v67;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);
  }

  v68 = HIBYTE(v99) & 0xF;
  if ((v99 & 0x2000000000000000) == 0)
  {
    v68 = v98 & 0xFFFFFFFFFFFFLL;
  }

  if (v68)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v98, v99);
    v69 = String.init(_:)();
  }

  else
  {

    return 0;
  }

  return v69;
}

uint64_t one-time initialization function for cache(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  *a2 = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *a5 = result;
  return result;
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2, a3, a4, a5, specialized __RawDictionaryStorage.find<A>(_:));
}

{
  if (!*(*a1 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
  if (v5)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*(*a1 + 16))
  {
    return 1;
  }

  a6(a2, a3, a4, a5);
  if (v6)
  {
  }

  else
  {
    return 1;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v8);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1865CD060](a3);
  MEMORY[0x1865CD060](a4);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v8);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v17 == a3 && v16 == a4)
      {
        break;
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = *(v5 + 48) + 32 * v7;
      if (*(v11 + 16) == a3 && *(v11 + 24) == a4)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 20) = BYTE4(a4) & 1;
  *(v7 + 24) = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

CFTypeRef _NSAttributedStringDescriptionWithLocaleFunc(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a1 = [a1 string];
  }

  return _NSDescriptionWithLocaleFunc(a1, a2);
}

uint64_t specialized Endianness.init(_:)(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 > 2483028223)
  {
    switch(v1)
    {
      case 2617245952:
        return 0;
      case 2550137088:
        return 1;
      case 2483028224:
        return 0;
    }
  }

  else
  {
    if (v1 == 10 || v1 == 2348810496)
    {
      return 2;
    }

    if (v1 == 2415919360)
    {
      return 1;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Foundation::Date_optional __swiftcall Calendar.date(bySettingHour:minute:second:of:matchingPolicy:repeatedTimePolicy:direction:)(Swift::Int bySettingHour, Swift::Int minute, Swift::Int second, Foundation::Date of, Foundation::Calendar::MatchingPolicy matchingPolicy, Foundation::Calendar::RepeatedTimePolicy repeatedTimePolicy, Foundation::Calendar::SearchDirection direction)
{
  v13 = v8;
  v14 = *matchingPolicy;
  v15 = *direction;
  v38 = *v7;
  v39 = *repeatedTimePolicy;
  v17 = *v9;
  v16 = *(v9 + 1);
  v52[0] = 3;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v18 = static Date.validCalendarRange;
  if (*(&static Date.validCalendarRange + 1) >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v19)
  {
    v20 = *&static Date.validCalendarRange;
  }

  else
  {
    v20 = v19;
  }

  ObjectType = swift_getObjectType();
  *__dst = v20;
  v22 = (*(v16 + 160))(__src, v52, __dst, ObjectType, v16);
  if ((__src[2] & 1) == 0)
  {
    v37 = v15;
    v24 = __src[0];
    LOBYTE(__src[5]) = 1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    __src[12] = 0;
    LOBYTE(__src[13]) = 1;
    __src[14] = 0;
    LOBYTE(__src[15]) = 1;
    __src[16] = 0;
    LOBYTE(__src[17]) = 1;
    __src[18] = 0;
    LOBYTE(__src[19]) = 1;
    __src[20] = 0;
    LOBYTE(__src[21]) = 1;
    __src[22] = 0;
    LOBYTE(__src[23]) = 1;
    __src[24] = 0;
    LOBYTE(__src[25]) = 1;
    __src[26] = 0;
    LOBYTE(__src[27]) = 1;
    __src[28] = 0;
    LOBYTE(__src[29]) = 1;
    __src[30] = 0;
    LOBYTE(__src[31]) = 1;
    LOBYTE(__src[33]) = 1;
    __src[32] = 0;
    __src[34] = 0;
    LOBYTE(__src[35]) = 1;
    *(&__src[35] + 1) = 514;
    memset(__src, 0, 40);
    __dst[0] = 0;
    __dst[1] = 0;
    DateComponents.timeZone.setter(__dst);
    __src[4] = 0;
    LOBYTE(__src[5]) = 1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    if (bySettingHour == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0;
    }

    else
    {
      v25 = bySettingHour;
    }

    __src[14] = v25;
    LOBYTE(__src[15]) = bySettingHour == 0x7FFFFFFFFFFFFFFFLL;
    if (minute == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = 0;
    }

    else
    {
      v26 = minute;
    }

    __src[16] = v26;
    LOBYTE(__src[17]) = minute == 0x7FFFFFFFFFFFFFFFLL;
    if (second == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0;
    }

    else
    {
      v27 = second;
    }

    __src[18] = v27;
    LOBYTE(__src[19]) = second == 0x7FFFFFFFFFFFFFFFLL;
    __src[20] = 0;
    LOBYTE(__src[21]) = 1;
    __src[22] = 0;
    LOBYTE(__src[23]) = 1;
    __src[24] = 0;
    LOBYTE(__src[25]) = 1;
    __src[26] = 0;
    LOBYTE(__src[27]) = 1;
    __src[30] = 0;
    LOBYTE(__src[31]) = 1;
    LOBYTE(__src[33]) = 1;
    __src[32] = 0;
    __src[34] = 0;
    LOBYTE(__src[35]) = 1;
    __src[12] = 0;
    LOBYTE(__src[13]) = 1;
    memcpy(__dst, __src, 0x11BuLL);
    if (v39 == 3)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }

    memcpy(v52, __src, 0x11BuLL);
    v49 = v17;
    v50 = v16;
    if (DateComponents._validate(for:)(&v49))
    {
      v29 = v13;
      if (*&v24 + -0.5 >= *&v18 && *(&v18 + 1) >= *&v24 + -0.5)
      {
        v30 = 101;
        v31 = *&v24 + -0.5;
        while (1)
        {
          v42 = v17;
          v43 = v16;
          *&v48 = *&v24 + -0.5;
          memcpy(v52, __dst, 0x11BuLL);
          v47 = v28;
          v46 = v37;
          v45 = v38;
          v44 = v31;
          v40 = 0;
          LOBYTE(v41) = 1;
          Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v48, v52, &v47, &v46, &v45, &v44, &v40, &v49);
          if (v50 != 2)
          {
            break;
          }

          v31 = v51;
          if (!--v30)
          {
            v42 = *&v24 + -0.5;
            v49 = v17;
            v50 = v16;
            memcpy(v52, __dst, 0x11BuLL);
            LOBYTE(v40) = v38;
            LOBYTE(v48) = v28;
            LOBYTE(v44) = v37;
            _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(&v42, &v49, v52, &v40, &v48, &v44);
            goto LABEL_30;
          }
        }

        v33 = v49;
        if (*&v24 <= v49)
        {
          v22 = outlined destroy of DateComponents(__dst);
          *v13 = v33;
          *(v13 + 8) = 0;
          goto LABEL_46;
        }

        memcpy(v52, __dst, 0x11BuLL);
        v49 = v17;
        v50 = v16;
        if (DateComponents._validate(for:)(&v49) && *&v24 >= *&v18 && *(&v18 + 1) >= *&v24)
        {
          v34 = 101;
          v35 = *&v24;
          while (1)
          {
            v42 = v17;
            v43 = v16;
            v48 = v24;
            memcpy(v52, __dst, 0x11BuLL);
            v47 = v39;
            v46 = v37;
            v45 = v38;
            v44 = v35;
            v40 = 0;
            LOBYTE(v41) = 1;
            Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v48, v52, &v47, &v46, &v45, &v44, &v40, &v49);
            if (v50 != 2)
            {
              break;
            }

            v35 = v51;
            if (!--v34)
            {
              v42 = *&v24;
              v49 = v17;
              v50 = v16;
              memcpy(v52, __dst, 0x11BuLL);
              LOBYTE(v40) = v38;
              LOBYTE(v48) = v39;
              LOBYTE(v44) = v37;
              _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(&v42, &v49, v52, &v40, &v48, &v44);
              goto LABEL_42;
            }
          }

          v36 = v49;
          v22 = outlined destroy of DateComponents(__dst);
          v32 = 0;
        }

        else
        {
LABEL_42:
          v22 = outlined destroy of DateComponents(__dst);
          v36 = 0.0;
          v32 = 1;
        }

        *v13 = v36;
        goto LABEL_33;
      }

LABEL_30:
      v22 = outlined destroy of DateComponents(__dst);
    }

    else
    {
      v22 = outlined destroy of DateComponents(__dst);
      v29 = v13;
    }

    *v29 = 0;
    v32 = 1;
LABEL_33:
    *(v29 + 8) = v32;
    goto LABEL_46;
  }

  *v13 = 0;
  *(v13 + 8) = 1;
LABEL_46:
  result.value = *&v23;
  result.is_nil = v22;
  return result;
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, *a2, a2[1], a2[2], a2[3]);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t specialized _withResizingUCharBuffer(initialSize:_:)(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  v2 = a1;
  isStackAllocationSafe = swift_retain_n();
  if (v2 < 513 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v5 = (&v10[-1] - v4);

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v5, v10);
    v6 = v10[0];
  }

  else
  {
    v8 = swift_slowAlloc();

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v8, v10);
    MEMORY[0x1865D2690](v8, -1, -1);

    return v10[0];
  }

  return v6;
}

void *__cdecl NSZoneMalloc(NSZone *zone, NSUInteger size)
{
  if (!zone)
  {
    zone = malloc_default_zone();
  }

  return malloc_type_zone_malloc(zone, size, 0x409734D7uLL);
}

uint64_t protocol witness for _LocaleProtocol.identifierCapturingPreferences.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t outlined init with copy of FloatingPointRoundingRule?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v4[3] = a1;
  v4[4] = a2;

  v7 = MEMORY[0x1865CB200](a1, a2);
  if (v7)
  {
    v8 = v7;
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v7, 0);

    v10 = specialized Sequence._copySequenceContents(initializing:)(&v13, (v9 + 4), v8, a1, a2);

    if (v10 != v8)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v13 = 0;
  if (v9[2] >> 31)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  String.utf8CString.getter();

  v11 = unumf_openForSkeletonAndLocale();

  if (v11)
  {
    if (v13 <= 0)
    {
      v4[2] = v11;
      return v4;
    }

    unumf_close();
  }

  type metadata accessor for ICUNumberFormatterBase();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t ICUNumberFormatterBase.FormatResult.__deallocating_deinit()
{
  unumf_closeResult();

  return swift_deallocClassInstance();
}

uint64_t JSONDecoderImpl.unwrapURL<A>(from:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v73 = a7;
  v74 = a5;
  v77 = a4;
  v69 = a8;
  v72 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  v71 = type metadata accessor for Optional();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v64 - v24;
  if ((a3 & 0xE0) == 0xA0 && !(a2 | a1) && a3 == 160)
  {
    v69 = type metadata accessor for DecodingError();
    swift_allocError();
    v68 = v26;
    *v26 = &type metadata for URL;
    v27 = v70;
    v28 = *(v70 + 16);
    v29 = v71;
    v28(v25, v74, v71);
    v28(v20, v25, v29);
    v30 = v72;
    if ((*(v72 + 48))(v20, 1, a6) == 1)
    {
      v31 = *(v27 + 8);
      v31(v20, v29);
      _CodingPathNode.path.getter(v77);
      v31(v25, v29);
    }

    else
    {
      (*(v30 + 32))(v16, v20, a6);
      v44 = _CodingPathNode.path.getter(v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v46 = v73;
      *(inited + 56) = a6;
      *(inited + 64) = v46;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v30 + 16))(boxed_opaque_existential_0, v16, a6);
      v75 = v44;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v30 + 8))(v16, a6);
      (*(v27 + 8))(v25, v29);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    v75 = 0;
    v76 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
    MEMORY[0x1865CB0E0](5001813, 0xE300000000000000);
    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
    v48 = v68;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v69 - 1) + 104))(v48, *MEMORY[0x1E69E6B08]);
  }

  else
  {
    v66 = v23;
    v67 = v22;
    result = JSONDecoderImpl.unwrapString<A>(from:for:_:)(a1, a2, a3, v77, v74, a6, v73);
    if (v8)
    {
      return result;
    }

    v34 = v33;
    if (one-time initialization token for compatibility2 != -1)
    {
      v63 = result;
      swift_once();
      result = v63;
    }

    v35 = result;
    v36 = v72;
    if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
    {
      v37 = type metadata accessor for _BridgedURL();
      v38 = &protocol witness table for _BridgedURL;
    }

    else
    {
      v37 = type metadata accessor for _SwiftURL();
      v38 = &protocol witness table for _SwiftURL;
    }

    v39 = v38[1];

    if (v39(v35, v34))
    {
      v40 = (v38[56])(v37, v38);
      v42 = v41;

      result = swift_unknownObjectRelease();
      v43 = v69;
      *v69 = v40;
      v43[1] = v42;
      return result;
    }

    v69 = type metadata accessor for DecodingError();
    swift_allocError();
    v65 = v49;
    v50 = v70;
    v51 = *(v70 + 16);
    v52 = v67;
    v53 = v71;
    v51(v67, v74, v71);
    v54 = v66;
    v51(v66, v52, v53);
    if ((*(v36 + 48))(v54, 1, a6) == 1)
    {
      v55 = *(v50 + 8);
      v55(v54, v53);
      _CodingPathNode.path.getter(v77);
      v55(v52, v53);
    }

    else
    {
      v56 = v68;
      (*(v36 + 32))(v68, v54, a6);
      v57 = _CodingPathNode.path.getter(v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      v58 = v50;
      v59 = swift_initStackObject();
      *(v59 + 16) = xmmword_181218E20;
      v60 = v73;
      *(v59 + 56) = a6;
      *(v59 + 64) = v60;
      v61 = __swift_allocate_boxed_opaque_existential_0((v59 + 32));
      (*(v36 + 16))(v61, v56, a6);
      v75 = v57;
      specialized Array.append<A>(contentsOf:)(v59);
      (*(v36 + 8))(v56, a6);
      (*(v58 + 8))(v52, v53);
    }

    v62 = v65;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v69 - 1) + 104))(v62, *MEMORY[0x1E69E6B00]);
  }

  return swift_willThrow();
}

void TimeZone.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation8TimeZoneV10CodingKeys33_FCA19904DF8ABA4A431CA6B8207AE9D9LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation8TimeZoneV10CodingKeys33_FCA19904DF8ABA4A431CA6B8207AE9D9LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v21[0]) = 1;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v9 == 2 || (v9 & 1) == 0)
    {
      LOBYTE(v21[0]) = 0;
      v12 = KeyedDecodingContainer.decode(_:forKey:)();
      v14 = v13;
      if (one-time initialization token for cache != -1)
      {
        v20 = v12;
        swift_once();
        v12 = v20;
      }

      v22 = v21;
      v15 = static TimeZoneCache.cache;
      MEMORY[0x1EEE9AC00](v12);
      v21[-2] = v16;
      v21[-1] = v14;
      os_unfair_lock_lock(v15 + 30);
      closure #1 in TimeZoneCache.fixed(_:)partial apply(v21);
      os_unfair_lock_unlock(v15 + 30);
      inited = v21[0];
      v11 = v21[1];

      if (!inited)
      {
        v17 = type metadata accessor for DecodingError();
        swift_allocError();
        v22 = v18;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Decoder.codingPath.getter();
        v19 = v22;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B00], v17);
        swift_willThrow();
        (*(v6 + 8))(v8, v5);
        goto LABEL_8;
      }
    }

    else
    {
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      type metadata accessor for _TimeZoneAutoupdating();
      inited = swift_initStaticObject();
      v11 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating, &protocol conformance descriptor for _TimeZoneAutoupdating);
    }

    (*(v6 + 8))(v8, v5);
    *a2 = inited;
    a2[1] = v11;
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Calendar.identifier.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t type metadata instantiation function for MeasurementFormatUnitUsage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Usage.rawValue.getter(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6E6F73726570;
      break;
    case 2:
      result = 1685024614;
      break;
    case 3:
      result = 0x682D6E6F73726570;
      break;
    case 4:
      result = 1684107122;
      break;
    case 5:
      result = 0x656C2D6C61636F66;
      break;
    case 6:
      v3 = 1852399986;
      goto LABEL_13;
    case 7:
      v3 = 2003791475;
LABEL_13:
      result = v3 | 0x6C6C616600000000;
      break;
    case 8:
      result = 0x79746C6269736976;
      break;
    case 9:
      result = 0x6372746D6F726162;
      break;
    case 10:
      result = 1684957559;
      break;
    case 11:
      result = 0x72656874616577;
      break;
    case 12:
      result = 0x6469756C66;
      break;
    case 13:
      result = 0x6469766F72507361;
      break;
    default:
      return result;
  }

  return result;
}

id NSUnitLength.init(forLocale:usage:)(uint64_t *a1, char *a2, unint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = a1[1];
  v46 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = [ObjCClassFromMetadata baseUnit];
  ObjectType = swift_getObjectType();
  (*(v9 + 448))(&v51, ObjectType, v9);
  v11 = v52;
  if (v52)
  {
    v12 = a4;
    v13 = v53;
    v14 = v54;
    v15 = v51;
    v16 = (*(v9 + 64))(ObjectType, v9);
    v51 = 29549;
    v52 = 0xE200000000000000;
    specialized static Locale.identifierWithKeywordValue(_:key:value:)(v16, v17, &v51, v13, v14);

    v18 = v14;
    a4 = v12;
    outlined consume of Locale.LanguageCode?(v15, v11, v13, v18);
  }

  else
  {
    (*(v9 + 64))(ObjectType, v9);
  }

  type metadata accessor for NSMorphologyPronoun(0, a3, a4);
  v19 = [swift_getObjCClassFromMetadata() icuType];
  if (!v19)
  {
    Usage.rawValue.getter(v46);
    goto LABEL_32;
  }

  v20 = v19;
  isTaggedPointer = _objc_isTaggedPointer(v19);
  v22 = v20;
  v23 = v22;
  if (!isTaggedPointer)
  {
    goto LABEL_10;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v22);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v27 = v26;

        goto LABEL_28;
      }

LABEL_10:
      v51 = 0;
      if (__CFStringIsCF())
      {
        if (v51)
        {
LABEL_26:
          v25 = String.init(_cocoaString:)();
          v27 = v37;
          goto LABEL_27;
        }
      }

      else
      {
        v28 = v23;
        v29 = String.init(_nativeStorage:)();
        if (v30)
        {
          v25 = v29;
          v27 = v30;

          goto LABEL_28;
        }

        v51 = [v28 length];
        if (v51)
        {
          goto LABEL_26;
        }
      }

      v31 = Usage.rawValue.getter(v46);
      v33 = v32;
      goto LABEL_33;
    }

    result = [v23 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v35 = String.init(utf8String:)(result);
    if (v36)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  _CFIndirectTaggedPointerStringGetContents();
  v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (!v36)
  {
    [v23 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v25 = v49;
    v27 = v50;
    goto LABEL_27;
  }

LABEL_22:
  v25 = v35;
  v27 = v36;

LABEL_27:
LABEL_28:
  v31 = Usage.rawValue.getter(v46);
  v33 = v38;
  if (v27)
  {
    if (v25 == 0x796772656E65 && v27 == 0xE600000000000000)
    {
LABEL_34:
      if (v31 == 0x746C7561666564 && v33 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v39 = 0;
        goto LABEL_39;
      }

LABEL_38:
      v39 = 0;
      goto LABEL_39;
    }

LABEL_33:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

LABEL_32:
  v39 = 1;
LABEL_39:
  String.utf8CString.getter();

  if ((v39 & 1) == 0)
  {
    String.utf8CString.getter();
  }

  String.utf8CString.getter();
  uameasfmt_getUnitsForUsage();

  swift_unknownObjectRelease();

  v44 = getDimensionUnitFromUnitSpecifier(0);

  if (v44)
  {
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v41 = v45;
    }

    else
    {

      v41 = v48;
    }

    v40 = ObjCClassFromMetadata;
  }

  else
  {
    v40 = ObjCClassFromMetadata;
    v41 = v48;
  }

  v42 = [objc_allocWithZone(v40) initWithDimension_];
  if (!v42)
  {
    __break(1u);
  }

  v43 = v42;
  swift_unknownObjectRelease();

  return v43;
}

void *specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *result@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _DWORD *a5@<X8>)
{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v9, *result + a3, a4, *result, v7);
    if (!v5)
    {
      *a5 = v9;
    }
  }

  return result;
}

{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v9, *result + a3, a4, *result, v7);
    if (!v5)
    {
      *a5 = v9;
    }
  }

  return result;
}

uint64_t MeasurementFormatUnitUsage.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
}

id NSUnitPressure.init(forLocale:usage:)(uint64_t *a1, char *a2)
{

  return NSUnitLength.init(forLocale:usage:)(a1, a2, &lazy cache variable for type metadata for NSUnitPressure, off_1E69EEB60, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

void _LocaleICU.temperatureUnit.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v10[6] = *(v1 + 152);
  *v11 = v4;
  *&v11[12] = *(v1 + 180);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v10[2] = *(v1 + 88);
  v10[3] = v6;
  v10[4] = *(v1 + 120);
  v10[5] = v3;
  v10[0] = *(v1 + 56);
  v10[1] = v5;
  if (_s10Foundation17LocalePreferencesVSgWOg(v10) == 1 || v11[25] == 2)
  {
    v7 = *(v1 + 200);
    os_unfair_lock_lock(v7 + 134);
    partial apply for closure #1 in _LocaleICU.temperatureUnit.getter(&v7[4], &v9);
    os_unfair_lock_unlock(v7 + 134);
    v8 = v9;
  }

  else
  {
    v8 = v11[25] & 1;
  }

  *a1 = v8;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeZone(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v2 + 120))(v5, ObjectType, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for _LocaleProtocol.forceTemperatureUnit.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 456))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

void *partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

unint64_t specialized _parseInteger<A>(_:)(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_37;
  }

  v2 = *a1;
  if (v2 == 43)
  {
    if (a2 >= 2)
    {
      v13 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        v14 = 0;
        v15 = a2 - 1;
        while (1)
        {
          v16 = *v13 - 48;
          if (v16 > 9)
          {
            break;
          }

          v7 = 0;
          v17 = 10 * v14;
          v18 = v17 != v17;
          v10 = __OFADD__(v17, v16);
          v14 = v17 + v16;
          v19 = v10;
          v12 = 1;
          if (!v18 && (v19 & 1) == 0)
          {
            v12 = 0;
            ++v13;
            v7 = v14;
            if (--v15)
            {
              continue;
            }
          }

          return v7 | (v12 << 32);
        }

        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v2 != 45)
  {
    if (a2 >= 1)
    {
      v20 = 0;
      v21 = &a1[a2];
      while (1)
      {
        v22 = *a1 - 48;
        if (v22 > 9)
        {
          break;
        }

        v7 = 0;
        v23 = 10 * v20;
        v24 = v23 != v23;
        v10 = __OFADD__(v23, v22);
        v20 = v23 + v22;
        v25 = v10;
        v12 = 1;
        if (!v24 && (v25 & 1) == 0)
        {
          v12 = 0;
          ++a1;
          v7 = v20;
          if (a1 < v21)
          {
            continue;
          }
        }

        return v7 | (v12 << 32);
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (a2 < 2)
  {
LABEL_37:
    v7 = 0;
    v12 = 1;
    return v7 | (v12 << 32);
  }

  v3 = a1 + 1;
  if (a1 + 1 < &a1[a2])
  {
    v4 = 0;
    v5 = a2 - 1;
    while (1)
    {
      v6 = *v3 - 48;
      if (v6 > 9)
      {
        break;
      }

      v7 = 0;
      v8 = 10 * v4;
      v9 = v8 != v8;
      v10 = __OFSUB__(v8, v6);
      v4 = v8 - v6;
      v11 = v10;
      v12 = 1;
      if (!v9 && (v11 & 1) == 0)
      {
        v12 = 0;
        ++v3;
        v7 = v4;
        if (--v5)
        {
          continue;
        }
      }

      return v7 | (v12 << 32);
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = 0;
  v12 = 0;
  return v7 | (v12 << 32);
}

{
  if (!a2)
  {
    goto LABEL_37;
  }

  v2 = *a1;
  if (v2 == 43)
  {
    if (a2 >= 2)
    {
      v13 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        v14 = 0;
        v15 = a2 - 1;
        while (1)
        {
          v16 = *v13 - 48;
          if (v16 > 9)
          {
            break;
          }

          v7 = 0;
          v17 = 10 * v14;
          v18 = (v17 & 0xFFFFFFFF00000000) != 0;
          v10 = __CFADD__(v17, v16);
          v14 = v17 + v16;
          v19 = v10;
          v12 = 1;
          if (!v18 && (v19 & 1) == 0)
          {
            v12 = 0;
            ++v13;
            v7 = v14;
            if (--v15)
            {
              continue;
            }
          }

          return v7 | (v12 << 32);
        }

        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v2 != 45)
  {
    if (a2 >= 1)
    {
      v20 = 0;
      v21 = &a1[a2];
      while (1)
      {
        v22 = *a1 - 48;
        if (v22 > 9)
        {
          break;
        }

        v7 = 0;
        v23 = 10 * v20;
        v24 = (v23 & 0xFFFFFFFF00000000) != 0;
        v10 = __CFADD__(v23, v22);
        v20 = v23 + v22;
        v25 = v10;
        v12 = 1;
        if (!v24 && (v25 & 1) == 0)
        {
          v12 = 0;
          ++a1;
          v7 = v20;
          if (a1 < v21)
          {
            continue;
          }
        }

        return v7 | (v12 << 32);
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (a2 < 2)
  {
LABEL_37:
    v7 = 0;
    v12 = 1;
    return v7 | (v12 << 32);
  }

  v3 = a1 + 1;
  if (a1 + 1 < &a1[a2])
  {
    v4 = 0;
    v5 = a2 - 1;
    while (1)
    {
      v6 = *v3 - 48;
      if (v6 > 9)
      {
        break;
      }

      v7 = 0;
      v8 = 10 * v4;
      v9 = (v8 & 0xFFFFFFFF00000000) != 0;
      v10 = v8 >= v6;
      v4 = v8 - v6;
      v11 = !v10;
      v12 = 1;
      if (!v9 && (v11 & 1) == 0)
      {
        v12 = 0;
        ++v3;
        v7 = v4;
        if (--v5)
        {
          continue;
        }
      }

      return v7 | (v12 << 32);
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = 0;
  v12 = 0;
  return v7 | (v12 << 32);
}

void *URL.append<A>(path:directoryHint:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *v4;
  v11 = v5[1];
  ObjectType = swift_getObjectType();
  v15 = v9;
  result = (*(v11 + 352))(v16, a1, &v15, a3, a4, ObjectType, v11);
  v14 = v16[0];
  if (v16[0])
  {
    v11 = v16[1];
    result = swift_unknownObjectRelease();
    v10 = v14;
  }

  *v5 = v10;
  v5[1] = v11;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.forceMeasurementSystem.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 448))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in _LocaleICU.temperatureUnit.getter@<X0>(uint64_t result@<X0>, _BYTE *a3@<X8>)
{
  v4 = *(result + 312);
  if (v4 == 2)
  {
    v5 = result;
    String.utf8CString.getter();
    uameasfmt_getUnitsForUsage();

    *(v5 + 312) = 1;
    *a3 = 1;
  }

  else
  {
    *a3 = v4 & 1;
  }

  return result;
}

id NSUnitSpeed.init(forLocale:usage:)(uint64_t *a1, char *a2)
{

  return NSUnitLength.init(forLocale:usage:)(a1, a2, &lazy cache variable for type metadata for NSUnitSpeed, off_1E69EEB70, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

unint64_t lazy protocol witness table accessor for type TimeZone and conformance TimeZone()
{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

NSUnitVolume *getDimensionUnitFromUnitSpecifier(int a1)
{
  if (a1 > 1)
  {
    if (a1 - 256 > 4)
    {
      if (a1 - 512 > 8)
      {
        if ((a1 - 4609) <= 8 && ((1 << (a1 - 1)) & 0x103) != 0)
        {
          v2 = NSUnitConcentrationMass;
          return [(__objc2_class *)v2 baseUnit];
        }

        v4 = a1 & 0xFFFFFFFC;
        if (v4 == 3328)
        {
          v1 = NSUnitFuelEfficiency;
          if (a1 == 3331)
          {
            return +[NSUnitFuelEfficiency milesPerImperialGallon];
          }

          else
          {
            if (a1 != 3329)
            {
              goto LABEL_3;
            }

            return +[NSUnitFuelEfficiency milesPerGallon];
          }
        }

        else
        {
          if (a1 == 4611)
          {
            v2 = NSUnitDispersion;
            return [(__objc2_class *)v2 baseUnit];
          }

          if (a1 - 1024 > 9)
          {
            if ((a1 & 0xFFFFFFFE) == 0xF00)
            {
              v1 = NSUnitElectricCurrent;
              if (a1 != 3841)
              {
                goto LABEL_3;
              }

              return +[NSUnitElectricCurrent milliamperes];
            }

            else
            {
              if (a1 == 3842)
              {
                v2 = NSUnitElectricResistance;
                return [(__objc2_class *)v2 baseUnit];
              }

              if (a1 == 3843)
              {
                v2 = NSUnitElectricPotentialDifference;
                return [(__objc2_class *)v2 baseUnit];
              }

              if (a1 - 3072 > 5)
              {
                if (v4 == 4096)
                {
                  v1 = NSUnitFrequency;
                  switch(a1)
                  {
                    case 4097:
                      return +[NSUnitFrequency kilohertz];
                    case 4098:
                      return +[NSUnitFrequency megahertz];
                    case 4099:
                      return +[NSUnitFrequency gigahertz];
                    default:
                      goto LABEL_3;
                  }
                }

                else
                {
                  if (a1 == 4352)
                  {
                    v2 = NSUnitIlluminance;
                    return [(__objc2_class *)v2 baseUnit];
                  }

                  if (a1 - 3584 > 0xA)
                  {
                    if (a1 - 1280 > 0x12)
                    {
                      if (a1 - 1536 > 0xA)
                      {
                        if (a1 - 1792 > 5)
                        {
                          if (a1 > 2051)
                          {
                            if (a1 > 2054)
                            {
                              if (a1 == 2055)
                              {
                                return +[NSUnitPressure megapascals];
                              }

                              if (a1 == 2057)
                              {
                                return +[NSUnitPressure bars];
                              }
                            }

                            else
                            {
                              if (a1 == 2052)
                              {
                                return +[NSUnitPressure poundsForcePerSquareInch];
                              }

                              if (a1 == 2054)
                              {
                                return +[NSUnitPressure kilopascals];
                              }
                            }
                          }

                          else
                          {
                            if (a1 > 2049)
                            {
                              if (a1 == 2050)
                              {
                                return +[NSUnitPressure millibars];
                              }

                              else
                              {
                                return +[NSUnitPressure millimetersOfMercury];
                              }
                            }

                            if (a1 == 2048)
                            {
                              return +[NSUnitPressure hectopascals];
                            }

                            if (a1 == 2049)
                            {
                              return +[NSUnitPressure inchesOfMercury];
                            }
                          }

                          if (v4 == 2304)
                          {
                            v1 = NSUnitSpeed;
                            switch(a1)
                            {
                              case 2307:
                                return +[NSUnitSpeed knots];
                              case 2306:
                                return +[NSUnitSpeed milesPerHour];
                              case 2305:
                                return +[NSUnitSpeed kilometersPerHour];
                              default:
                                goto LABEL_3;
                            }
                          }

                          else if (a1 - 2560 > 2)
                          {
                            if ((a1 - 2823) < 0x10 || (a1 - 2816) <= 0x18 && ((1 << a1) & 0x100003F) != 0)
                            {
                              v1 = NSUnitVolume;
                              switch(a1)
                              {
                                case 2817:
                                  result = +[NSUnitVolume cubicKilometers];
                                  break;
                                case 2818:
                                  result = +[NSUnitVolume cubicMiles];
                                  break;
                                case 2819:
                                  result = +[NSUnitVolume milliliters];
                                  break;
                                case 2820:
                                  result = +[NSUnitVolume centiliters];
                                  break;
                                case 2821:
                                  result = +[NSUnitVolume deciliters];
                                  break;
                                case 2823:
                                  result = +[NSUnitVolume megaliters];
                                  break;
                                case 2824:
                                  result = +[NSUnitVolume cubicCentimeters];
                                  break;
                                case 2825:
                                  result = +[NSUnitVolume cubicMeters];
                                  break;
                                case 2826:
                                  result = +[NSUnitVolume cubicInches];
                                  break;
                                case 2827:
                                  result = +[NSUnitVolume cubicFeet];
                                  break;
                                case 2828:
                                  result = +[NSUnitVolume cubicYards];
                                  break;
                                case 2829:
                                  result = +[NSUnitVolume acreFeet];
                                  break;
                                case 2830:
                                  result = +[NSUnitVolume bushels];
                                  break;
                                case 2831:
                                  result = +[NSUnitVolume teaspoons];
                                  break;
                                case 2832:
                                  result = +[NSUnitVolume tablespoons];
                                  break;
                                case 2833:
                                  result = +[NSUnitVolume fluidOunces];
                                  break;
                                case 2834:
                                  result = +[NSUnitVolume cups];
                                  break;
                                case 2835:
                                  result = +[NSUnitVolume pints];
                                  break;
                                case 2836:
                                  result = +[NSUnitVolume quarts];
                                  break;
                                case 2837:
                                  result = +[NSUnitVolume gallons];
                                  break;
                                case 2838:
                                  result = +[NSUnitVolume metricCups];
                                  break;
                                case 2840:
                                  result = +[NSUnitVolume imperialGallons];
                                  break;
                                default:
                                  goto LABEL_3;
                              }
                            }

                            else
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v1 = NSUnitTemperature;
                            if (a1 == 2561)
                            {
                              return +[NSUnitTemperature fahrenheit];
                            }

                            else
                            {
                              if (a1 != 2560)
                              {
                                goto LABEL_3;
                              }

                              return +[NSUnitTemperature celsius];
                            }
                          }
                        }

                        else
                        {
                          v1 = NSUnitPower;
                          if (a1 <= 1794)
                          {
                            if (a1 == 1793)
                            {
                              return +[NSUnitPower kilowatts];
                            }

                            else
                            {
                              if (a1 != 1794)
                              {
                                goto LABEL_3;
                              }

                              return +[NSUnitPower horsepower];
                            }
                          }

                          else
                          {
                            switch(a1)
                            {
                              case 1795:
                                return +[NSUnitPower milliwatts];
                              case 1796:
                                return +[NSUnitPower megawatts];
                              case 1797:
                                return +[NSUnitPower gigawatts];
                              default:
                                goto LABEL_3;
                            }
                          }
                        }
                      }

                      else
                      {
                        v1 = NSUnitMass;
                        if (a1 > 1541)
                        {
                          if (a1 <= 1543)
                          {
                            if (a1 == 1542)
                            {
                              return +[NSUnitMass milligrams];
                            }

                            else
                            {
                              return +[NSUnitMass metricTons];
                            }
                          }

                          else
                          {
                            switch(a1)
                            {
                              case 1544:
                                return +[NSUnitMass shortTons];
                              case 1545:
                                return +[NSUnitMass carats];
                              case 1546:
                                return +[NSUnitMass ouncesTroy];
                              default:
                                goto LABEL_3;
                            }
                          }
                        }

                        else if (a1 <= 1538)
                        {
                          if (a1 == 1536)
                          {
                            return +[NSUnitMass grams];
                          }

                          else
                          {
                            if (a1 != 1538)
                            {
                              goto LABEL_3;
                            }

                            return +[NSUnitMass ounces];
                          }
                        }

                        else if (a1 == 1539)
                        {
                          return +[NSUnitMass poundsMass];
                        }

                        else if (a1 == 1540)
                        {
                          return +[NSUnitMass stones];
                        }

                        else
                        {
                          return +[NSUnitMass micrograms];
                        }
                      }
                    }

                    else
                    {
                      v1 = NSUnitLength;
                      switch(a1)
                      {
                        case 1281:
                          result = +[NSUnitLength centimeters];
                          break;
                        case 1282:
                          result = +[NSUnitLength kilometers];
                          break;
                        case 1283:
                          result = +[NSUnitLength millimeters];
                          break;
                        case 1284:
                          result = +[NSUnitLength picometers];
                          break;
                        case 1285:
                          result = +[NSUnitLength feet];
                          break;
                        case 1286:
                          result = +[NSUnitLength inches];
                          break;
                        case 1287:
                          result = +[NSUnitLength miles];
                          break;
                        case 1288:
                          result = +[NSUnitLength yards];
                          break;
                        case 1289:
                          result = +[NSUnitLength lightyears];
                          break;
                        case 1290:
                          result = +[NSUnitLength decimeters];
                          break;
                        case 1291:
                          result = +[NSUnitLength micrometers];
                          break;
                        case 1292:
                          result = +[NSUnitLength nanometers];
                          break;
                        case 1293:
                          result = +[NSUnitLength nauticalMiles];
                          break;
                        case 1294:
                          result = +[NSUnitLength fathoms];
                          break;
                        case 1295:
                          result = +[NSUnitLength furlongs];
                          break;
                        case 1296:
                          result = +[NSUnitLength astronomicalUnits];
                          break;
                        case 1297:
                          result = +[NSUnitLength parsecs];
                          break;
                        case 1298:
                          result = +[NSUnitLength scandinavianMiles];
                          break;
                        default:
                          goto LABEL_3;
                      }
                    }
                  }

                  else
                  {
                    v1 = NSUnitInformationStorage;
                    if (a1 > 3589)
                    {
                      if (a1 <= 3591)
                      {
                        if (a1 == 3590)
                        {
                          return +[NSUnitInformationStorage megabits];
                        }

                        else
                        {
                          return +[NSUnitInformationStorage megabytes];
                        }
                      }

                      else
                      {
                        switch(a1)
                        {
                          case 3592:
                            return +[NSUnitInformationStorage terabits];
                          case 3593:
                            return +[NSUnitInformationStorage terabytes];
                          case 3594:
                            return +[NSUnitInformationStorage petabytes];
                          default:
                            goto LABEL_3;
                        }
                      }
                    }

                    else if (a1 <= 3586)
                    {
                      if (a1 == 3584)
                      {
                        return +[NSUnitInformationStorage bits];
                      }

                      else
                      {
                        if (a1 != 3586)
                        {
                          goto LABEL_3;
                        }

                        return +[NSUnitInformationStorage gigabits];
                      }
                    }

                    else if (a1 == 3587)
                    {
                      return +[NSUnitInformationStorage gigabytes];
                    }

                    else if (a1 == 3588)
                    {
                      return +[NSUnitInformationStorage kilobits];
                    }

                    else
                    {
                      return +[NSUnitInformationStorage kilobytes];
                    }
                  }
                }
              }

              else
              {
                v1 = NSUnitEnergy;
                if (a1 <= 3074)
                {
                  if (a1 == 3072)
                  {
                    return +[NSUnitEnergy calories];
                  }

                  else
                  {
                    if (a1 != 3073)
                    {
                      goto LABEL_3;
                    }

                    return +[NSUnitEnergy foodcalories];
                  }
                }

                else
                {
                  switch(a1)
                  {
                    case 3075:
                      return +[NSUnitEnergy kilocalories];
                    case 3077:
                      return +[NSUnitEnergy kilowattHours];
                    case 3076:
                      return +[NSUnitEnergy kilojoules];
                    default:
                      goto LABEL_3;
                  }
                }
              }
            }
          }

          else
          {
            v1 = NSUnitDuration;
            if (a1 <= 1030)
            {
              if (a1 == 1028)
              {
                return +[NSUnitDuration hours];
              }

              else
              {
                if (a1 != 1029)
                {
                  goto LABEL_3;
                }

                return +[NSUnitDuration minutes];
              }
            }

            else
            {
              switch(a1)
              {
                case 1031:
                  return +[NSUnitDuration milliseconds];
                case 1032:
                  return +[NSUnitDuration microseconds];
                case 1033:
                  return +[NSUnitDuration nanoseconds];
                default:
                  goto LABEL_3;
              }
            }
          }
        }
      }

      else
      {
        v1 = NSUnitArea;
        if (a1 > 516)
        {
          if (a1 > 518)
          {
            if (a1 == 519)
            {
              return +[NSUnitArea squareInches];
            }

            else
            {
              if (a1 != 520)
              {
                goto LABEL_3;
              }

              return +[NSUnitArea squareYards];
            }
          }

          else if (a1 == 517)
          {
            return +[NSUnitArea hectares];
          }

          else
          {
            return +[NSUnitArea squareCentimeters];
          }
        }

        else if (a1 > 514)
        {
          if (a1 == 515)
          {
            return +[NSUnitArea squareMiles];
          }

          else
          {
            return +[NSUnitArea acres];
          }
        }

        else if (a1 == 513)
        {
          return +[NSUnitArea squareKilometers];
        }

        else
        {
          if (a1 != 514)
          {
            goto LABEL_3;
          }

          return +[NSUnitArea squareFeet];
        }
      }
    }

    else
    {
      v1 = NSUnitAngle;
      if (a1 > 258)
      {
        if (a1 == 259)
        {
          return +[NSUnitAngle radians];
        }

        else
        {
          if (a1 != 260)
          {
            goto LABEL_3;
          }

          return +[NSUnitAngle revolutions];
        }
      }

      else if (a1 == 257)
      {
        return +[NSUnitAngle arcMinutes];
      }

      else
      {
        if (a1 != 258)
        {
          goto LABEL_3;
        }

        return +[NSUnitAngle arcSeconds];
      }
    }
  }

  else
  {
    v1 = NSUnitAcceleration;
    if (a1)
    {
LABEL_3:
      v2 = v1;
      return [(__objc2_class *)v2 baseUnit];
    }

    return +[NSUnitAcceleration gravity];
  }

  return result;
}

char *static Locale.preferredLanguages.getter()
{
  if (one-time initialization token for cache != -1)
  {
LABEL_40:
    swift_once();
  }

  v0 = String._bridgeToObjectiveCImpl()();
  v1 = CFPreferencesCopyAppValue(v0, *MEMORY[0x1E695E8A8]);
  swift_unknownObjectRelease();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), (swift_dynamicCast() & 1) != 0))
  {
    v2 = v28;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v2 + 16);
  if (v27)
  {
    v3 = 0;
    v26 = *MEMORY[0x1E695E4A8];
    v4 = v2 + 40;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v6 = String._bridgeToObjectiveCImpl()();

      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v26, v6);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        break;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v9 = CanonicalLanguageIdentifierFromString;
      v10 = v9;
      if ((isTaggedPointer & 1) == 0)
      {
        goto LABEL_15;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v9);
      if (!TaggedPointerTag)
      {
        _CFIndirectTaggedPointerStringGetContents();
        v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v20)
        {
          [(__CFString *)v10 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v12 = v28;
          v14 = v29;
LABEL_30:

          goto LABEL_31;
        }

        goto LABEL_25;
      }

      if (TaggedPointerTag == 22)
      {
        v18 = [(__CFString *)v10 UTF8String];
        if (!v18)
        {
          goto LABEL_41;
        }

        v19 = String.init(utf8String:)(v18);
        if (!v20)
        {
          __break(1u);
LABEL_41:
          __break(1u);
        }

LABEL_25:
        v12 = v19;
        v14 = v20;

        goto LABEL_31;
      }

      if (TaggedPointerTag != 2)
      {
LABEL_15:
        LOBYTE(v28) = 0;
        if (__CFStringIsCF())
        {
        }

        else
        {
          v15 = v10;
          v16 = String.init(_nativeStorage:)();
          if (v17)
          {
            v12 = v16;
            v14 = v17;

            goto LABEL_31;
          }

          if ([(__CFString *)v15 length])
          {
            v12 = String.init(_cocoaString:)();
            v14 = v21;
            goto LABEL_30;
          }
        }

        goto LABEL_18;
      }

      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_31:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v23 = *(v5 + 2);
      v22 = *(v5 + 3);
      if (v23 >= v22 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
      }

      ++v3;
      *(v5 + 2) = v23 + 1;
      v24 = &v5[16 * v23];
      *(v24 + 4) = v12;
      *(v24 + 5) = v14;
      v4 += 16;
      if (v27 == v3)
      {
        goto LABEL_38;
      }
    }

LABEL_18:
    v12 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_31;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_38:

  return v5;
}

id NSUnitLength.init(forLocale:usage:)(uint64_t *a1, char *a2)
{

  return NSUnitLength.init(forLocale:usage:)(a1, a2, &lazy cache variable for type metadata for NSUnitLength, off_1E69EEB30, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

id NSUnitTemperature.init(forLocale:usage:)(uint64_t *a1, char *a2)
{
  v39[4] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata baseUnit];
  ObjectType = swift_getObjectType();
  (*(v2 + 456))(v39, ObjectType, v2);
  v7 = v39[0];
  if (LOBYTE(v39[0]) == 2)
  {
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSUnitTemperature, off_1E69EEB78);
    (*(v2 + 64))(ObjectType, v2);
    v8 = [swift_getObjCClassFromMetadata() icuType];
    if (!v8)
    {
      Usage.rawValue.getter(v3);
      goto LABEL_34;
    }

    v9 = v8;
    isTaggedPointer = _objc_isTaggedPointer(v8);
    v11 = v9;
    v12 = v11;
    if (!isTaggedPointer)
    {
      goto LABEL_12;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v11);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v16 = v15;

          goto LABEL_30;
        }

LABEL_12:
        v39[0] = 0;
        if (__CFStringIsCF())
        {
          if (v39[0])
          {
LABEL_28:
            v14 = String.init(_cocoaString:)();
            v16 = v29;
            goto LABEL_29;
          }
        }

        else
        {
          v20 = v12;
          v21 = String.init(_nativeStorage:)();
          if (v22)
          {
            v14 = v21;
            v16 = v22;

            goto LABEL_30;
          }

          v39[0] = [v20 length];
          if (v39[0])
          {
            goto LABEL_28;
          }
        }

        v23 = Usage.rawValue.getter(v3);
        v25 = v24;
        goto LABEL_35;
      }

      result = [v12 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v27 = String.init(utf8String:)(result);
      if (v28)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v27 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v28)
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v14 = v37;
      v16 = v38;
      goto LABEL_29;
    }

LABEL_24:
    v14 = v27;
    v16 = v28;

LABEL_29:
LABEL_30:
    v23 = Usage.rawValue.getter(v3);
    v25 = v30;
    if (v16)
    {
      if (v14 == 0x796772656E65 && v16 == 0xE600000000000000)
      {
LABEL_36:
        if (v23 == 0x746C7561666564 && v25 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v31 = 0;
          goto LABEL_41;
        }

LABEL_40:
        v31 = 0;
        goto LABEL_41;
      }

LABEL_35:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

LABEL_34:
    v31 = 1;
LABEL_41:
    String.utf8CString.getter();

    if ((v31 & 1) == 0)
    {
      String.utf8CString.getter();
    }

    String.utf8CString.getter();
    uameasfmt_getUnitsForUsage();

    swift_unknownObjectRelease();

    v34 = getDimensionUnitFromUnitSpecifier(0);

    if (v34)
    {
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (v35)
      {
        v36 = v35;

        v5 = v36;
      }

      else
      {
      }
    }

    goto LABEL_44;
  }

  v17 = objc_opt_self();
  if (v7)
  {
    v18 = [v17 celsius];
  }

  else
  {
    v18 = [v17 fahrenheit];
  }

  v19 = v18;

  v5 = v19;
LABEL_44:
  v32 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDimension_];
  if (!v32)
  {
    __break(1u);
  }

  v33 = v32;
  swift_unknownObjectRelease();

  return v33;
}

uint64_t protocol witness for _LocaleProtocol.forceTemperatureUnit.getter in conformance _LocaleICU@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v9[6] = *(v1 + 152);
  *v10 = v4;
  *&v10[12] = *(v1 + 180);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v9[2] = *(v1 + 88);
  v9[3] = v6;
  v9[4] = *(v1 + 120);
  v9[5] = v3;
  v9[0] = *(v1 + 56);
  v9[1] = v5;
  result = _s10Foundation17LocalePreferencesVSgWOg(v9);
  v8 = v10[25];
  if (result == 1)
  {
    v8 = 2;
  }

  *a1 = v8;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.region.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 376))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t NSURLSession.data(for:delegate:)()
{
  v1 = *(v0 + 104);
  type metadata accessor for NSURLSession.CancelState();
  v7 = *(v0 + 112);
  inited = swift_initStackObject();
  *(v0 + 128) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMR);
  v3 = swift_initStackObject();
  *(v0 + 136) = v3;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(inited + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  *(v4 + 40) = inited;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So13NSURLResponseCtMd, &_s10Foundation4DataV_So13NSURLResponseCtMR);
  *v5 = v0;
  v5[1] = NSURLSession.data(for:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.data(for:delegate:));
}

{
  swift_setDeallocating();

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[1];

  return v4(v1, v2, v3);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = NSURLSession.data(for:delegate:);
  }

  else
  {

    v2 = NSURLSession.data(for:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in closure #1 in NSURLSession.data(for:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataV_So13NSURLResponseCts5Error_pGMd, &_sScCy10Foundation4DataV_So13NSURLResponseCts5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  [*(a3 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest, 0x1E695AC18);
  swift_dynamicCast();
  v14 = aBlock[6];
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v13, v9);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in NSURLSession.data(for:delegate:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_191;
  v17 = _Block_copy(aBlock);

  v18 = [a2 _dataTaskWithRequest_delegate_completionHandler_];
  _Block_release(v17);

  [v18 set:1 callCompletionHandlerInline:?];
  [v18 resume];
  v19 = *(v21 + 16);
  v22 = v18;
  os_unfair_lock_lock((v19 + 32));
  closure #1 in NSURLSession.CancelState.activate(task:)partial apply((v19 + 16), aBlock);
  os_unfair_lock_unlock((v19 + 32));
  if ((aBlock[0] & 1) == 0)
  {
    [v18 cancel];
  }
}

uint64_t specialized _NSDecimalMultiplyByPowerOf10(_:_:_:_:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  *a1 = specialized NSDecimal._multiplyByPowerOfTen(power:roundingMode:)(a3, *a2, *(a2 + 8), *(a2 + 16));
  *(a1 + 8) = v4;
  *(a1 + 10) = v5;
  *(a1 + 12) = v6;
  *(a1 + 14) = v7;
  *(a1 + 16) = v8;
  *(a1 + 18) = v9;
  return 0;
}

void *_checkErrorAndRound(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, NSDecimal *retstr, __int128 *a7, void *a8)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && (result = [a8 exceptionDuringOperation:a2 error:a1 leftOperand:a3 rightOperand:a4]) != 0)
  {
    if (a5 == 0x7FFF)
    {
      return result;
    }

    v16 = 0uLL;
    v17 = 0;
    objc_msgSend_decimalValue(result);
    _NSDecimalRound(a7, &v16, a5, retstr);
    v12 = objc_opt_self();
    v14 = *a7;
    LODWORD(v15) = *(a7 + 4);
    v13 = &v14;
  }

  else
  {
    if (a5 != 0x7FFF)
    {
      _NSDecimalRound(a7, a7, a5, retstr);
    }

    v12 = objc_opt_self();
    v16 = *a7;
    v17 = *(a7 + 4);
    v13 = &v16;
  }

  return [v12 decimalNumberWithDecimal:{v13, v14, v15}];
}

id _NSDecimalString(Swift::OpaquePointer a1, uint64_t a2)
{
  if (a2)
  {
    rawValue = a1._rawValue;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    a1._rawValue = rawValue;
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  __NSDecimalString(_:_:)(a1, v5);
  outlined destroy of Any?(v5);
  v3 = String._bridgeToObjectiveCImpl()();

  return v3;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>()
{
  result = lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>);
  }

  return result;
}

void static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      *&v14 = a2;
      WORD4(v14) = a3;
      BYTE10(v14) = BYTE2(a3);
      BYTE11(v14) = BYTE3(a3);
      BYTE12(v14) = BYTE4(a3);
      BYTE13(v14) = BYTE5(a3);
      v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v14 length:BYTE6(a3)];
      goto LABEL_9;
    }

    v6 = a2;
    v7 = a2 >> 32;
    if (v7 < v6)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
LABEL_7:
    v5 = __DataStorage.bridgedReference(_:)(v6, v7);
    goto LABEL_9;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v8 = v5;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v14 = 0;
  v10 = __NSKeyedUnarchiverSecureUnarchiveObjectOfClass(ObjCClassFromMetadata, v8, &v14);

  v11 = v14;
  if (v10)
  {
    v12 = v14;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v13 = v11;
  }

  v16 = v14;
  v17 = v15;
  if (v11)
  {
    swift_willThrow();
    outlined destroy of TermOfAddress?(&v16, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    v14 = v16;
    v15 = v17;
    if (*(&v17 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      outlined destroy of TermOfAddress?(&v14, &_sypSgMd, &_sypSgMR);
    }
  }
}

uint64_t closure #1 in _FileManagerImpl.subpathsOfDirectory(atPath:)@<X0>(const char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v140 = *MEMORY[0x1E69E9840];
  if (!a1)
  {

    if (_foundation_swift_url_feature_enabled())
    {

      v46 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
      v48 = v47;

      LOBYTE(v133) = 3;
      type metadata accessor for _SwiftURL();
      v136 = 0;
      v137 = 0;
      swift_allocObject();
      _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v46, v48, 0, &v133, &v136);
      v49 = _SwiftURL.convertingFileReference()();
      v51 = v50;
    }

    else
    {
      v60 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
      objc_allocWithZone(type metadata accessor for _BridgedURL());

      v61 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v60);
      if (!v61)
      {

        v64 = String._bridgeToObjectiveCImpl()();
        goto LABEL_57;
      }

      v62 = v61;
      v49 = _BridgedURL.convertingFileReference()();
      v51 = v63;
    }

    v64 = String._bridgeToObjectiveCImpl()();
    if (v49)
    {
      ObjectType = swift_getObjectType();
      v66 = (*(v51 + 432))(ObjectType, v51);
      swift_unknownObjectRelease();
LABEL_58:
      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      return swift_willThrow();
    }

LABEL_57:
    v66 = 0;
    goto LABEL_58;
  }

  type metadata accessor for _FTSSequence.Iterator();
  swift_initStackObject();
  _FTSSequence.Iterator.init(_:_:)(a1, 28);
  v6 = _FTSSequence.Iterator.next()();
  if (v9 == -1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_55;
  }

  v10 = v6;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v131 = v11;
    while (1)
    {
      while (1)
      {
        if (v9)
        {
          v55 = v7;
          v67 = v8;

          v59 = v67;
LABEL_46:
          v130 = v55;
          v132 = v59;
          if (v10 > 26)
          {
            switch(v10)
            {
              case 0x1B:
                v68 = 263;
                goto LABEL_63;
              case 0x3F:
                v68 = 258;
                goto LABEL_63;
              case 0x66:
                v69 = 0;
                v70 = 256;
                goto LABEL_127;
            }
          }

          else
          {
            switch(v10)
            {
              case 1:
                goto LABEL_50;
              case 2:
                v68 = 260;
                goto LABEL_63;
              case 0xD:
LABEL_50:
                v68 = 257;
LABEL_63:
                if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                {
LABEL_149:
                  _StringGuts.grow(_:)(22);

                  v128 = dispatch thunk of CustomStringConvertible.description.getter();
                  MEMORY[0x1865CB0E0](v128);

                  result = _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                  return result;
                }

                isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
                v73 = @"NSPOSIXErrorDomain";
                v74 = v73;
                v129 = v68;
                if (!isTaggedPointer)
                {
LABEL_69:
                  LOBYTE(v133) = 0;
                  v136 = 0;
                  v135 = 0;
                  if (__CFStringIsCF())
                  {
LABEL_70:

                    goto LABEL_82;
                  }

                  v76 = v74;
                  String.init(_nativeStorage:)();
                  if (!v77 && (v136 = [(__CFString *)v76 length]) != 0)
                  {
                    String.init(_cocoaString:)();
                  }

                  else
                  {
                  }

LABEL_82:
                  v81 = POSIXErrorCode.rawValue.getter();
                  v82 = objc_allocWithZone(NSError);
                  v83 = String._bridgeToObjectiveCImpl()();

                  v69 = [v82 initWithDomain:v83 code:v81 userInfo:_NativeDictionary.bridged()()];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v84 = [v69 domain];
                  if (!v84)
                  {
LABEL_99:
                    v90 = 0;
                    v92 = 0xE000000000000000;
                    goto LABEL_103;
                  }

                  v85 = v84;
                  v86 = _objc_isTaggedPointer(v84);
                  v87 = v85;
                  v88 = v87;
                  if ((v86 & 1) == 0)
                  {
                    goto LABEL_88;
                  }

                  TaggedPointerTag = _objc_getTaggedPointerTag(v87);
                  if (TaggedPointerTag)
                  {
                    if (TaggedPointerTag != 22)
                    {
                      if (TaggedPointerTag == 2)
                      {
                        MEMORY[0x1EEE9AC00](TaggedPointerTag);
                        v90 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v92 = v91;

LABEL_103:
                        v100 = v74;
                        v101 = v100;
                        if (!isTaggedPointer)
                        {
LABEL_108:
                          LOBYTE(v133) = 0;
                          v136 = 0;
                          v135 = 0;
                          if (__CFStringIsCF())
                          {

LABEL_112:
                            v103 = 0;
                            v105 = 0xE000000000000000;
                            goto LABEL_122;
                          }

                          v106 = v101;
                          v107 = String.init(_nativeStorage:)();
                          if (v108)
                          {
                            v103 = v107;
                            v105 = v108;

                            goto LABEL_122;
                          }

                          v136 = [(__CFString *)v106 length];
                          if (!v136)
                          {

                            goto LABEL_112;
                          }

                          v103 = String.init(_cocoaString:)();
                          v105 = v112;
LABEL_122:
                          if (v90 == v103 && v92 == v105)
                          {
                          }

                          else
                          {
                            v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if ((v113 & 1) == 0)
                            {
                              goto LABEL_143;
                            }
                          }

                          v70 = v129;
LABEL_127:

                          if (_foundation_swift_url_feature_enabled())
                          {

                            v114 = specialized String.withFileSystemRepresentation<A>(_:)(v130, v132, v130, v132);
                            v116 = v115;

                            LOBYTE(v133) = 3;
                            type metadata accessor for _SwiftURL();
                            v136 = 0;
                            v137 = 0;
                            swift_allocObject();
                            _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v114, v116, 0, &v133, &v136);
                            v117 = _SwiftURL.convertingFileReference()();
                            v119 = v118;
                          }

                          else
                          {
                            v120 = (specialized BidirectionalCollection.last.getter(v130, v132) & 0x1FF) == 47;
                            objc_allocWithZone(type metadata accessor for _BridgedURL());

                            v121 = _BridgedURL.init(fileURLWithPath:isDirectory:)(v130, v132, v120);
                            if (!v121)
                            {

                              v123 = String._bridgeToObjectiveCImpl()();
                              if (v69)
                              {
                                goto LABEL_133;
                              }

                              goto LABEL_136;
                            }

                            v117 = _BridgedURL.convertingFileReference()();
                            v119 = v122;
                          }

                          v123 = String._bridgeToObjectiveCImpl()();
                          if (v117)
                          {
                            v124 = swift_getObjectType();
                            v121 = (*(v119 + 432))(v124, v119);
                            swift_unknownObjectRelease();
                            if (v69)
                            {
LABEL_133:
                              v136 = v69;
                              lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                              v69 = v69;
                              v125 = _getErrorEmbeddedNSError<A>(_:)();

                              if (v125)
                              {
                              }

                              else
                              {
                                swift_allocError();
                                *v127 = v69;
                              }

                              v126 = _swift_stdlib_bridgeErrorToNSError();
                              goto LABEL_139;
                            }
                          }

                          else
                          {
                            v121 = 0;
                            if (v69)
                            {
                              goto LABEL_133;
                            }
                          }

LABEL_136:
                          v126 = 0;
LABEL_139:
                          [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                          swift_unknownObjectRelease();

                          swift_willThrow();
                          outlined consume of SubpathElement();
                        }

                        v102 = _objc_getTaggedPointerTag(v100);
                        if (!v102)
                        {
                          goto LABEL_116;
                        }

                        if (v102 != 22)
                        {
                          if (v102 == 2)
                          {
                            MEMORY[0x1EEE9AC00](v102);
                            v103 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                            v105 = v104;

                            goto LABEL_122;
                          }

                          goto LABEL_108;
                        }

                        v109 = [(__CFString *)v101 UTF8String];
                        if (v109)
                        {
                          v110 = String.init(utf8String:)(v109);
                          if (v111)
                          {
                            goto LABEL_117;
                          }

                          __break(1u);
LABEL_116:
                          _CFIndirectTaggedPointerStringGetContents();
                          v110 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                          if (!v111)
                          {
                            [(__CFString *)v101 mutableCopy];
                            _bridgeAnyObjectToAny(_:)();

                            swift_unknownObjectRelease();
                            swift_dynamicCast();
                            v103 = v133;
                            v105 = v134;
                            goto LABEL_122;
                          }

LABEL_117:
                          v103 = v110;
                          v105 = v111;

                          goto LABEL_122;
                        }

                        goto LABEL_147;
                      }

LABEL_88:
                      LOBYTE(v133) = 0;
                      v136 = 0;
                      v135 = 0;
                      if (__CFStringIsCF())
                      {
                        v90 = v136;

                        v92 = 0xE000000000000000;
                        goto LABEL_103;
                      }

                      v93 = v88;
                      v94 = String.init(_nativeStorage:)();
                      if (v95)
                      {
                        v90 = v94;
                        v92 = v95;

                        goto LABEL_103;
                      }

                      v136 = [v93 length];
                      if (!v136)
                      {

                        goto LABEL_99;
                      }

                      v90 = String.init(_cocoaString:)();
                      v92 = v99;
LABEL_102:

                      goto LABEL_103;
                    }

                    v96 = [v88 UTF8String];
                    if (!v96)
                    {
LABEL_148:
                      __break(1u);
                      goto LABEL_149;
                    }

                    v97 = String.init(utf8String:)(v96);
                    if (v98)
                    {
LABEL_96:
                      v90 = v97;
                      v92 = v98;

                      goto LABEL_102;
                    }

                    __break(1u);
                  }

                  _CFIndirectTaggedPointerStringGetContents();
                  v97 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v98)
                  {
                    [v88 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v90 = v133;
                    v92 = v134;
                    goto LABEL_102;
                  }

                  goto LABEL_96;
                }

                v75 = _objc_getTaggedPointerTag(v73);
                if (!v75)
                {
LABEL_76:
                  _CFIndirectTaggedPointerStringGetContents();
                  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (v80)
                  {
                    goto LABEL_70;
                  }

                  [(__CFString *)v74 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  goto LABEL_82;
                }

                if (v75 != 22)
                {
                  if (v75 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v75);
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_82;
                  }

                  goto LABEL_69;
                }

                v78 = [(__CFString *)v74 UTF8String];
                if (v78)
                {
                  String.init(utf8String:)(v78);
                  if (v79)
                  {
                    goto LABEL_70;
                  }

                  __break(1u);
                  goto LABEL_76;
                }

LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
                goto LABEL_148;
            }
          }

          v68 = 256;
          goto LABEL_63;
        }

        v13 = *(v10 + 88);
        if (v13 > 0xD)
        {
          goto LABEL_5;
        }

        v14 = 1 << v13;
        if ((v14 & 0x390A) != 0)
        {
          break;
        }

        if ((v14 & 0x490) != 0)
        {
          if (*(v10 + 48))
          {
            v52 = v9;
            v53 = v8;
            v54 = v7;
            v55 = String.init(cString:)();
            v57 = v56;
            v58 = *(v10 + 56);
            outlined consume of _FTSSequence.Element?(v10, v54, v53, v52);

            LODWORD(v10) = v58;
            v59 = v57;
            goto LABEL_46;
          }

LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

LABEL_5:
        outlined consume of _FTSSequence.Element?(v10, v7, v8, v9);
        v10 = _FTSSequence.Iterator.next()();
        if (v9 == -1)
        {
          goto LABEL_55;
        }
      }

      if (!*(v10 + 48))
      {
        __break(1u);
        goto LABEL_145;
      }

      v15 = a4;
      v16 = v9;
      v17 = v8;
      v18 = v7;
      v19 = String.init(cString:)();
      v11 = v20;
      outlined consume of _FTSSequence.Element?(v10, v18, v17, v16);
      if (!v131)
      {
        break;
      }

      v133 = v19;
      v134 = v11;
      lazy protocol witness table accessor for type String and conformance String();
      Collection<>.trimmingPrefix<A>(_:)();

      if (v137 >> 14 == v136 >> 14)
      {

        a4 = v15;
      }

      else
      {
        if (Substring.subscript.getter() == 47 && v21 == 0xE100000000000000)
        {
        }

        else
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v22 & 1) == 0)
          {
            v38 = MEMORY[0x1865CAE80](v136, v137, v138, v139);
            v40 = v39;

            a4 = v15;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
            }

            v42 = *(v12 + 2);
            v41 = *(v12 + 3);
            if (v42 >= v41 >> 1)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v12);
            }

            *(v12 + 2) = v42 + 1;
            v43 = &v12[16 * v42];
            *(v43 + 4) = v38;
            *(v43 + 5) = v40;
            goto LABEL_32;
          }
        }

        v23 = Substring.index(_:offsetBy:limitedBy:)();
        if (v24)
        {
          v23 = v137;
        }

        if (v137 >> 14 < v23 >> 14)
        {
          __break(1u);
LABEL_143:
          __break(1u);
        }

        v25 = Substring.subscript.getter();
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v32 = MEMORY[0x1865CAE80](v25, v27, v29, v31);
        v34 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v36 = *(v12 + 2);
        v35 = *(v12 + 3);
        if (v36 >= v35 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v12);
        }

        *(v12 + 2) = v36 + 1;
        v37 = &v12[16 * v36];
        *(v37 + 4) = v32;
        *(v37 + 5) = v34;
        a4 = v15;
      }

LABEL_32:
      v10 = _FTSSequence.Iterator.next()();
      if (v9 == -1)
      {
        goto LABEL_55;
      }
    }

    v10 = _FTSSequence.Iterator.next()();
    a4 = v15;
    v12 = MEMORY[0x1E69E7CC0];
    if (v9 != -1)
    {
      continue;
    }

    break;
  }

LABEL_55:

  *a4 = v12;
  return result;
}

uint64_t _FTSSequence.Iterator.init(_:_:)(const char *a1, int a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  *(v2 + 56) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = v5;
  *(v2 + 80) = 0;
  *(v2 + 48) = a1;
  memset(&v13, 0, sizeof(v13));
  if (lstat(a1, &v13) || (v14[0] = a1, v14[1] = 0, (v11 = fts_open(v14, a2, 0)) == 0))
  {
    v6 = MEMORY[0x1865CA7A0]();
    v7 = String.init(cString:)();
    v9 = 1;
    v10 = v6;
  }

  else
  {
    v10 = v11;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *(v2 + 16) = v10;
  *(v2 + 24) = v7;
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  return v2;
}

Swift::Void __swiftcall URL.appendPathComponent(_:isDirectory:)(Swift::String _, Swift::Bool isDirectory)
{
  v3 = v2;
  v4 = isDirectory;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v7 = *v2;
  v8 = v3[1];
  ObjectType = swift_getObjectType();
  (*(v8 + 336))(v11, countAndFlagsBits, object, v4, ObjectType, v8);
  v10 = v11[0];
  if (v11[0])
  {
    v8 = v11[1];
    swift_unknownObjectRelease();
    v7 = v10;
  }

  *v3 = v7;
  v3[1] = v8;
}

double _NSSwiftTimeZone.daylightSavingTimeOffset.getter()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  swift_unknownObjectRetain();
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&v2 = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  ObjectType = swift_getObjectType();
  __tp.tv_sec = v2;
  v4 = (*(v1 + 80))(&__tp, ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t outlined consume of _FTSSequence.Element(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t outlined consume of _FTSSequence.Iterator.State(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t specialized SetAlgebra.init<A>(_:)@<X0>(void *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v11 - v6;
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v8 = 0;
  if ((v12 & 1) == 0)
  {
    v8 = 0;
    do
    {
      v9 = v11;
      if ((v11 & ~v8) == 0)
      {
        v9 = 0;
      }

      v8 |= v9;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v12 != 1);
  }

  result = (*(v5 + 8))(v7, AssociatedTypeWitness);
  *a3 = v8;
  return result;
}

uint64_t outlined init with take of (key: CodingUserInfoKey, value: Sendable)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV3key_s8Sendable_p5valuetMd, &_ss17CodingUserInfoKeyV3key_s8Sendable_p5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t URLComponents.string.getter()
{
  v3 = *v0;
  if ((*(v0 + 1) & 1) == 0)
  {
    return URLComponents._URLComponents.computedString.getter();
  }

  if (!v3)
  {
    return 0;
  }

  v1 = *(v3 + 16);

  return v1;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id Date.description.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v2 = [v1 description];

  if (!v2)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v2);
  v4 = v2;
  v5 = v4;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v4);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v17 = v18;
    }

LABEL_21:

    return v17;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v7;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v9 = v5;
    v10 = String.init(_nativeStorage:)();
    if (v11)
    {
      v12 = v10;

      return v12;
    }

    if (![v9 length])
    {

      return 0;
    }

    v17 = String.init(_cocoaString:)();
    goto LABEL_21;
  }

  result = [v5 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v13)
    {
      v14 = result;

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
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

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = *(*v3 + 88);
  v7 = a1;
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  *(v6 + 16) = v7;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v11 = *(v6 + 40);
  *(v6 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v8, v9, v10, v11);
  v12 = *(v4 + 88);

  v13 = specialized Set._Variant.insert(_:)(&v38, v12);
  v40 = v38;
  if (v13)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v14 = swift_allocObject();
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 16) = 2;
    *(v14 + 40) = -112;
    *(v14 + 48) = -1;
    *(v4 + 88) = v14;
  }

  v15 = dispatch thunk of CodingKey.stringValue.getter();
  v17 = v16;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v15, v16))
  {

    v18 = MEMORY[0x1865CB280](v15, v17);
    v19 = 1;
  }

  else
  {
    v20 = String._bridgeToObjectiveCImpl()();

    v18 = [v20 hash];
    swift_unknownObjectRelease();
    v19 = 0;
  }

  v21 = *(v4 + 88);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = *(v21 + 32);
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v18;
  v25 = *(v21 + 40);
  *(v21 + 40) = v19;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v22, v23, v24, v25);

  v26 = specialized Set._Variant.insert(_:)(&v38, v21);

  v27 = v38;
  if (v26)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v28 = swift_allocObject();
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *(v28 + 16) = 2;
    *(v28 + 40) = -112;
    *(v28 + 48) = -1;

    *(v4 + 88) = v28;
  }

  v30 = *(v5 + 40);
  if ((v30 & 0xF0) == 0x60)
  {
    v32 = *(v5 + 24);
    v31 = *(v5 + 32);
    v38 = *(v5 + 16);
    v33 = v38;
    *&v39 = v32;
    *(&v39 + 1) = v31;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = 2;
    *(v5 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v33, v32, v31, v30);
    specialized OrderedDictionary.subscript.setter(v40, v27);
    v34 = *(v5 + 16);
    v35 = *(v5 + 24);
    v36 = *(v5 + 32);
    *(v5 + 16) = v38;
    *(v5 + 24) = v39;
    v37 = *(v5 + 40);
    *(v5 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v34, v35, v36, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Double __swiftcall _TimeZoneICU.daylightSavingTimeOffset(for:)(Foundation::Date a1)
{
  v2 = v1[2];
  os_unfair_lock_lock(v2 + 6);
  v3 = 0.0;
  if (_TimeZoneICU.State.calendar(_:)(v1[3], v1[4]))
  {
    ucal_setMillis();
    v4 = ucal_get();
    v3 = v4 / 1000.0;
  }

  os_unfair_lock_unlock(v2 + 6);
  return v3;
}

unint64_t specialized String.withFileSystemRepresentation<A>(_:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = v4;
  v21[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v11 = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v12 = 3 * v11;
  if ((v11 * 3) >> 64 != (3 * v11) >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v12 < -1)
  {
    __break(1u);
    return v21[0];
  }

  v5 = v12 + 1;

  if (v12 >= 1024)
  {
LABEL_18:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_8;
    }

    v18 = swift_slowAlloc();

    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v18, v5, a1, a2, a3, a4, v21);
    MEMORY[0x1865D2690](v18, -1, -1);

    if (v6)
    {
      return a3;
    }

    return v21[0];
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v15 = &v19 - v14;
  if (String._fileSystemRepresentation(into:)(&v19 - v14, v5, a1, a2))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  closure #1 in _FileManagerImpl.subpathsOfDirectory(atPath:)(v16, a3, a4, &v20);
  if (v6)
  {
    swift_willThrow();
  }

  else
  {
    a3 = v20;
  }

  return a3;
}

unint64_t _FTSSequence.Iterator.next()()
{
  v2 = (v0 + 16);
  result = *(v0 + 16);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      *v2 = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      result = result;
      *(v0 + 40) = 2;
      return result;
    }

    return 0;
  }

  v3 = fts_read(result);
  if (v3)
  {
    v4 = v3;
    if (_FTSSequence.Iterator._shouldFilter(_:)(v3))
    {
      return _FTSSequence.Iterator.next()();
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (!MEMORY[0x1865CA7A0]())
    {
      v10 = *(v0 + 40);
      if (!v10)
      {
        fts_close(*(v0 + 16));
        v10 = *(v0 + 40);
      }

      v11 = *(v0 + 16);
      v12 = *(v0 + 24);
      v13 = *(v0 + 32);
      *v2 = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      *(v0 + 40) = 2;
      outlined consume of _FTSSequence.Iterator.State(v11, v12, v13, v10);
      return 0;
    }

    v5 = MEMORY[0x1865CA7A0]();
    v6 = *(v0 + 40);
    if (!v6)
    {
      fts_close(*(v0 + 16));
      v6 = *(v0 + 40);
    }

    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    *v2 = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 2;
    outlined consume of _FTSSequence.Iterator.State(v7, v8, v9, v6);
    String.init(cString:)();
    return v5;
  }
}

BOOL _FTSSequence.Iterator._shouldFilter(_:)(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  static String._fromUTF8Repairing(_:)();
  if (!*(v1 + 56))
  {
    v6._countAndFlagsBits = 24366;
    v6._object = 0xE200000000000000;
    if (String.hasPrefix(_:)(v6))
    {
      goto LABEL_29;
    }
  }

  v7 = *(v1 + 64);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v9 = 0;
    if (v5 != 6)
    {
      goto LABEL_5;
    }

LABEL_18:
    v15 = *(v1 + 72);
    v20 = *(v15 + 2);
    if (!v20 || *&v15[8 * v20 + 24] != v3)
    {
      goto LABEL_27;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v15 + 2);
      if (v21)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v21 = *(v15 + 2);
      if (v21)
      {
LABEL_22:
        *(v15 + 2) = v21 - 1;
        *(v1 + 72) = v15;
        v15 = *(v1 + 64);
        if (*(v15 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v22 = *(v15 + 2);
            if (v22)
            {
LABEL_25:
              *(v15 + 2) = v22 - 1;
LABEL_26:
              *(v1 + 64) = v15;
              goto LABEL_27;
            }

LABEL_38:
            __break(1u);
          }

LABEL_37:
          v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
          v22 = *(v15 + 2);
          if (v22)
          {
            goto LABEL_25;
          }

          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v9 = *(v7 + 4 * v8 + 28);
  if (v5 == 6)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v5 == 1 && (!v8 || *(v7 + 4 * v8 + 28) != v4))
  {
    v10 = *(v1 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 72) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      *(v1 + 72) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      v14 = v13 + 1;
      v10 = v29;
    }

    *(v10 + 2) = v14;
    *&v10[8 * v13 + 32] = v3;
    *(v1 + 72) = v10;
    v15 = *(v1 + 64);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 64) = v15;
    if ((v16 & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      *(v1 + 64) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
      v19 = v18 + 1;
      v15 = v30;
    }

    *(v15 + 2) = v19;
    *&v15[4 * v18 + 32] = v4;
    v9 = v4;
    goto LABEL_26;
  }

LABEL_27:
  if (v9 == *(v1 + 56))
  {
    if ((*(v1 + 80) & 1) == 0)
    {
LABEL_29:

      return 0;
    }
  }

  else
  {
    bzero(&v31, 0x878uLL);
    v23 = statfs(v2, &v31);
    v24 = v31.f_flags & 0x8000;
    *(v1 + 56) = v9;
    v25 = v23 | v24;
    *(v1 + 80) = v25 == 0;
    if (v25)
    {
      goto LABEL_29;
    }
  }

  v26._countAndFlagsBits = 24366;
  v26._object = 0xE200000000000000;
  v27 = String.hasPrefix(_:)(v26);

  return v27;
}

uint64_t outlined consume of _FTSSequence.Element?(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return outlined consume of _FTSSequence.Element(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t _FTSSequence.Iterator.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    fts_close(*(v0 + 16));
    v1 = *(v0 + 40);
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 2;
  outlined consume of _FTSSequence.Iterator.State(v2, v3, v4, v1);
  outlined consume of _FTSSequence.Iterator.State(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting()
{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

uint64_t Data.description.getter(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || !__OFSUB__(*(result + 24), *(result + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
LABEL_9:
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v3);

    MEMORY[0x1865CB0E0](0x736574796220, 0xE600000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t KeyPathComparator.init<A>(_:order:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v32 = a1;
  v8 = (v7 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v30 = *v8;
  type metadata accessor for KeyPath();

  swift_dynamicCast();
  v10 = *&v31[0];
  *a4 = *&v31[0];
  if (swift_dynamicCastMetatype())
  {
    v12 = one-time initialization token for localizedStandard;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = static String.StandardComparator.localizedStandard;
    v14 = word_1EA7AF548;
    v15 = HIBYTE(word_1EA7AF548);
    *(a4 + 32) = &type metadata for String.StandardComparator;
    v16 = lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();
    *(a4 + 8) = v13;
    *(a4 + 16) = v14;
    *(a4 + 17) = v15;
    *(a4 + 40) = v16;
    *(a4 + 48) = specialized closure #1 in AnySortComparator.init<A>(_:);
    v17 = specialized thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 56) = 0;
    *(a4 + 64) = specialized thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 72) = 0;
    *(a4 + 80) = specialized closure #3 in AnySortComparator.init<A>(_:);
    *(a4 + 88) = 0;
  }

  else
  {
    v18 = type metadata accessor for ComparableComparator(0, v9, a3, v11);
    *(a4 + 32) = v18;
    *(a4 + 40) = swift_getWitnessTable();
    *(a4 + 8) = 0;
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v29 = a2;
    WitnessTable = swift_getWitnessTable();
    *(v19 + 24) = WitnessTable;
    *(a4 + 48) = partial apply for closure #1 in AnySortComparator.init<A>(_:);
    *(a4 + 56) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = WitnessTable;
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for closure #2 in AnySortComparator.init<A>(_:);
    *(v22 + 24) = v21;
    v17 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 64) = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 72) = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    *(v23 + 24) = WitnessTable;
    a2 = v29;
    *(a4 + 80) = partial apply for closure #3 in AnySortComparator.init<A>(_:);
    *(a4 + 88) = v23;
  }

  v24 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v30;
  *(v27 + 24) = v9;
  *(v27 + 32) = a3;
  *(v27 + 40) = v24;
  *(v27 + 48) = v26 & 1;
  *(v27 + 56) = v10;
  *(a4 + 96) = partial apply for closure #1 in KeyPathComparator.init<A>(_:order:);
  *(a4 + 104) = v27;

  (v17)(v31, a4 + 8, a2 & 1);

  __swift_destroy_boxed_opaque_existential_1((a4 + 8));
  return outlined init with take of Equatable(v31, a4 + 8);
}

{
  v7 = *a1;
  v36 = a1;
  v8 = (v7 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v34 = *v8;
  type metadata accessor for KeyPath();

  swift_dynamicCast();
  v10 = *&v35[0];
  *a4 = *&v35[0];
  v11 = *(v9 + 16);
  if (swift_dynamicCastMetatype())
  {
    v13 = one-time initialization token for localizedStandard;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = static String.StandardComparator.localizedStandard;
    v15 = word_1EA7AF548;
    v16 = HIBYTE(word_1EA7AF548);
    *(a4 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18OptionalComparatorVySSAAE08StandardC0VGMd, &_s10Foundation18OptionalComparatorVySSAAE08StandardC0VGMR);
    v17 = lazy protocol witness table accessor for type OptionalComparator<String.StandardComparator> and conformance OptionalComparator<A>();
    *(a4 + 8) = v14;
    *(a4 + 16) = v15;
    *(a4 + 17) = v16;
    *(a4 + 40) = v17;
    *(a4 + 48) = specialized closure #1 in AnySortComparator.init<A>(_:);
    v18 = specialized thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 56) = 0;
    *(a4 + 64) = specialized thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 72) = 0;
    *(a4 + 80) = specialized closure #3 in AnySortComparator.init<A>(_:);
    *(a4 + 88) = 0;
  }

  else
  {
    v19 = type metadata accessor for ComparableComparator(255, v11, a3, v12);
    WitnessTable = swift_getWitnessTable();
    v22 = type metadata accessor for OptionalComparator(0, v19, WitnessTable, v21);
    *(a4 + 32) = v22;
    *(a4 + 40) = swift_getWitnessTable();
    *(a4 + 8) = 0;
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v33 = a2;
    v24 = swift_getWitnessTable();
    *(v23 + 24) = v24;
    *(a4 + 48) = closure #1 in AnySortComparator.init<A>(_:)partial apply;
    *(a4 + 56) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = closure #2 in AnySortComparator.init<A>(_:)partial apply;
    *(v26 + 24) = v25;
    v18 = thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)partial apply;
    *(a4 + 64) = thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)partial apply;
    *(a4 + 72) = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    *(v27 + 24) = v24;
    a2 = v33;
    *(a4 + 80) = closure #3 in AnySortComparator.init<A>(_:)partial apply;
    *(a4 + 88) = v27;
  }

  v28 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v30 = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = v34;
  *(v31 + 24) = v11;
  *(v31 + 32) = a3;
  *(v31 + 40) = v28;
  *(v31 + 48) = v30 & 1;
  *(v31 + 56) = v10;
  *(a4 + 96) = partial apply for closure #1 in KeyPathComparator.init<A>(_:order:);
  *(a4 + 104) = v31;

  (v18)(v35, a4 + 8, a2 & 1);

  __swift_destroy_boxed_opaque_existential_1((a4 + 8));
  return outlined init with take of Equatable(v35, a4 + 8);
}

uint64_t sub_1809406F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_180940730()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator()
{
  result = lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator;
  if (!lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator;
  if (!lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator;
  if (!lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator;
  if (!lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator);
  }

  return result;
}

uint64_t type metadata instantiation function for KeyPathComparator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t instantiation function for generic protocol witness table for KeyPathComparator<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1E69E69C0];
  a3[3] = MEMORY[0x1E69E69B8];
  a3[4] = v5;
  *a3 = swift_allocObject();
  outlined init with take of Equatable(a1, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
  swift_dynamicCast();
  a2 &= 1u;
  v14 = a2;
  *(a1 + 24) = &type metadata for String.StandardComparator;
  *(a1 + 32) = lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();
  v6 = v12;
  v7 = v13;
  *a1 = v12;
  *(a1 + 8) = v7;
  *(a1 + 9) = a2;
  v9 = v6;
  v10 = v7;
  v11 = a2;
  return AnyHashable.init<A>(_:)();
}

{
  v5 = MEMORY[0x1E69E69C0];
  a3[3] = MEMORY[0x1E69E69B8];
  a3[4] = v5;
  *a3 = swift_allocObject();
  outlined init with take of Equatable(a1, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18OptionalComparatorVySSAAE08StandardC0VGMd, &_s10Foundation18OptionalComparatorVySSAAE08StandardC0VGMR);
  swift_dynamicCast();
  a2 &= 1u;
  v15 = a2;
  *(a1 + 24) = v6;
  *(a1 + 32) = lazy protocol witness table accessor for type OptionalComparator<String.StandardComparator> and conformance OptionalComparator<A>();
  v7 = v13;
  v8 = v14;
  *a1 = v13;
  *(a1 + 8) = v8;
  *(a1 + 9) = a2;
  v10 = v7;
  v11 = v8;
  v12 = a2;
  return AnyHashable.init<A>(_:)();
}

uint64_t sub_180940A2C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t Sequence.sorted<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  (*(v13 + 16))(&v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v4, a2, v6);
  v21 = dispatch thunk of Sequence._copyToContiguousArray()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.sort(by:)();
  return v21;
}

Swift::Void __swiftcall JSONWriter.writeIndent()()
{
  v1 = *v0;
  if (*v0 <= 4)
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        return;
      }

      if (v1 == 1)
      {
        specialized Array.append<A>(contentsOf:)("  ", 2);
        return;
      }
    }

    else
    {
      switch(v1)
      {
        case 2:
          specialized Array.append<A>(contentsOf:)("    ", 4);
          return;
        case 3:
          specialized Array.append<A>(contentsOf:)("      ", 6);
          return;
        case 4:
          specialized Array.append<A>(contentsOf:)("        ", 8);
          return;
      }
    }
  }

  else if (v1 > 7)
  {
    switch(v1)
    {
      case 8:
        specialized Array.append<A>(contentsOf:)("                ", 16);
        return;
      case 9:
        specialized Array.append<A>(contentsOf:)("                  ", 18);
        return;
      case 10:
        specialized Array.append<A>(contentsOf:)("                    ", 20);
        return;
    }
  }

  else
  {
    switch(v1)
    {
      case 5:
        specialized Array.append<A>(contentsOf:)("          ", 10);
        return;
      case 6:
        specialized Array.append<A>(contentsOf:)("            ", 12);
        return;
      case 7:
        specialized Array.append<A>(contentsOf:)("              ", 14);
        return;
    }
  }

  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    do
    {
      specialized Array.append<A>(contentsOf:)("  ", 2);
      --v1;
    }

    while (v1);
  }
}

uint64_t (*JSONDecoder.userInfo.modify(void *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  a1[3] = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  *a1 = *(v1 + v5 + 104);

  return JSONDecoder.userInfo.modify;
}

uint64_t JSONDecoder.userInfo.modify(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  *(v2 + a1[3] + 104) = *a1;

  v3 = *(v2 + v1);

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t JSONDecoder.dateDecodingStrategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v6 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v8 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options);
  v9 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 8);
  *v7 = v2;
  *(v7 + 8) = v3;
  v10 = *(v7 + 16);
  *(v7 + 16) = v4;
  outlined consume of JSONDecoder.DateDecodingStrategy(v8, v9, v10);
  v11 = *(v1 + v5);

  os_unfair_lock_unlock(v11 + 4);
}

unint64_t lazy protocol witness table accessor for type _LocaleUnlocalized and conformance _LocaleUnlocalized()
{
  result = lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized;
  if (!lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized)
  {
    type metadata accessor for _LocaleUnlocalized();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _LocaleUnlocalized(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _LocaleUnlocalized and conformance _LocaleUnlocalized();
  *(a1 + 8) = result;
  return result;
}

uint64_t Date.ISO8601FormatStyle.parse(_:in:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v9 = v5[1];
  v28 = *v5;
  v29 = v9;
  v30 = v5[2];
  v10 = String.subscript.getter();
  v12 = v11;

  if ((v10 ^ v12) < 0x4000)
  {
    goto LABEL_2;
  }

  v14 = v5[1];
  v21 = *v5;
  v22 = v14;
  v23 = v5[2];
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v28, &v20);
  DateComponents.ISO8601FormatStyle.parse(_:fillMissingUnits:in:)(a1, a2, 1, __src);
  v25[0] = v21;
  v25[1] = v22;
  v25[2] = v23;
  outlined destroy of DateComponents.ISO8601FormatStyle(v25);
  memcpy(__dst, __src, 0x123uLL);
  memcpy(v27, __src, 0x123uLL);
  result = _s10Foundation17LocalePreferencesVSgWOg(v27);
  if (result == 1)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 1;
  }

  else
  {
    v15 = v27[0];
    v16 = *(&v29 + 1);
    ObjectType = swift_getObjectType();
    memcpy(__src, &v27[1], 0x11BuLL);
    v18 = *(v16 + 176);
    swift_unknownObjectRetain();
    v18(&v21, __src, ObjectType, v16);
    outlined destroy of TermOfAddress?(__dst, &_sSS5IndexV_10Foundation14DateComponentsVtSgMd, &_sSS5IndexV_10Foundation14DateComponentsVtSgMR);
    result = swift_unknownObjectRelease();
    if (BYTE8(v21))
    {
LABEL_2:
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 1;
      return result;
    }

    v19 = v21;
    *a5 = v15;
    *(a5 + 8) = v19;
    *(a5 + 16) = 0;
  }

  return result;
}

void *DateComponents.ISO8601FormatStyle.parse(_:fillMissingUnits:in:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, char *a6@<X8>)
{
  v12 = *(v6 + 4);
  v11 = *(v6 + 5);
  v13 = String.subscript.getter();
  v17 = v16;
  v52 = v13;
  v53 = v14;
  v54 = v15;
  v55 = v16;
  if ((v13 ^ v14) < 0x4000)
  {

    sub_1809417B0(__dst);
    v18 = __dst;
    v19 = a6;
    return memcpy(v19, v18, 0x123uLL);
  }

  v37 = a1;
  v38 = a6;
  if ((v16 & 0x1000000000000000) != 0)
  {
    Substring._slowMakeContiguousUTF8()();
    v15 = v54;
    v17 = v55;
    v20 = v52;
    v14 = v53;
  }

  else
  {
    v20 = v13;
  }

  v21 = v20 >> 16;
  v22 = v14 >> 16;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v47 = v15;
    v48 = v17 & 0xFFFFFFFFFFFFFFLL;
    v27 = v22 - v21;
    v28 = v6[1];
    v41 = *v6;
    v42 = v28;
    v43 = v12;
    v44 = v11;
    v40[0] = v12;
    v40[1] = v11;
    swift_unknownObjectRetain();
    v29 = &v47 + v21;
    v21 = v37;
    DateComponents.ISO8601FormatStyle.components(from:fillMissingUnits:defaultTimeZone:in:)(v37, a2, a3 & 1, v40, v29, v27, &v45);
  }

  else
  {
    if ((v15 & 0x1000000000000000) != 0)
    {
      v23 = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v23 = _StringObject.sharedUTF8.getter();
      if (!v23)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    v24 = v22 - v21;
    v25 = v6[1];
    v41 = *v6;
    v42 = v25;
    v43 = v12;
    v44 = v11;
    v47 = v12;
    v48 = v11;
    swift_unknownObjectRetain();
    v26 = (v23 + v21);
    v21 = v37;
    DateComponents.ISO8601FormatStyle.components(from:fillMissingUnits:defaultTimeZone:in:)(v37, a2, a3 & 1, &v47, v26, v24, &v45);
  }

  swift_unknownObjectRelease();
  v30 = v45;
  __src[0] = v45;
  memcpy(&__src[1], v46, 0x11BuLL);
  _NSBundleDeallocatingImmortalBundle();
  v49 = v30;
  memcpy(v50, v46, sizeof(v50));
  memcpy(__dst, __src, 0x123uLL);
  v11 = v38;
  outlined init with copy of FloatingPointRoundingRule?(&v49, &v45, &_sSi_10Foundation14DateComponentsVtMd, &_sSi_10Foundation14DateComponentsVtMR);

  v31 = (v21 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v31) = 1;
  }

  if ((v20 & 0xC) != 4 << v31)
  {
    v32 = v49;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_26:
    v36 = MEMORY[0x1865CB180](v20, v32, v21, a2);
    outlined destroy of TermOfAddress?(__dst, &_sSi_10Foundation14DateComponentsVtSgMd, &_sSi_10Foundation14DateComponentsVtSgMR);
    goto LABEL_20;
  }

LABEL_25:
  v20 = _StringGuts._slowEnsureMatchingEncoding(_:)(v20, v21, a2);
  v32 = v49;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  result = outlined destroy of TermOfAddress?(__dst, &_sSi_10Foundation14DateComponentsVtSgMd, &_sSi_10Foundation14DateComponentsVtSgMR);
  v34 = v32 + (v20 >> 16);
  if (__OFADD__(v32, v20 >> 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v35 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v35 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v35 >= v34)
  {
    v36 = (v34 << 16) | 4;
LABEL_20:
    memcpy(v46, v50, sizeof(v46));
    v45 = v36;
    _NSBundleDeallocatingImmortalBundle();
    v18 = &v45;
    v19 = v11;
    return memcpy(v19, v18, 0x123uLL);
  }

LABEL_29:
  __break(1u);
  return result;
}

double sub_1809417B0(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1812187D0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 287) = 0;
  return result;
}

uint64_t DateComponents.ISO8601FormatStyle.components(from:fillMissingUnits:defaultTimeZone:in:)@<X0>(char *a1@<X0>, __CFString *a2@<X1>, char a3@<W2>, char **a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v9 = v8;
  v10 = v7;
  v11 = a2;
  v12 = a1;
  object = &v267;
  v289 = *MEMORY[0x1E69E9840];
  v15 = *a4;
  v14 = a4[1];
  v16 = v7[1];
  v282 = *v7;
  v283 = v16;
  v17 = v7[2];
  v286 = v16;
  v287 = v17;
  v284 = v17;
  v285 = v282;
  if (*(&v282 + 1))
  {
    v18 = BYTE8(v282);
  }

  else
  {
    v18 = 59;
  }

  v259 = a5;
  v260 = &a5[a6];
  v255 = v14;
  v256 = &a5[a6];
  v257 = v18;
  if ((v18 & 1) == 0)
  {
    if (a3)
    {
      if ((v18 & 2) == 0)
      {
        if ((v18 & 4) == 0)
        {
          swift_unknownObjectRetain();
          if ((v18 & 8) == 0)
          {
            v239 = 0;
            v240 = 0;
            v19 = 0;
            v247 = 0;
            LOBYTE(v248) = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v237 = 1;
            v238 = 0;
            v252 = 1970;
            v242 = 1;
            v243 = 0;
            v236 = 1;
            LOBYTE(v10) = 1;
            v246 = 1;
            v24 = 1;
            v251 = 1;
            goto LABEL_16;
          }

          goto LABEL_69;
        }

        LOBYTE(v249) = (v18 & 1) == 0;
        v43 = 1970;
        goto LABEL_52;
      }

      v252 = 1970;
      goto LABEL_22;
    }

    if ((v18 & 2) != 0)
    {
      v252 = 0;
LABEL_22:
      LOBYTE(v248) = a3 ^ 1;
      swift_unknownObjectRetain();
      v34 = 0;
      v251 = 1;
      goto LABEL_23;
    }

    if ((v18 & 4) != 0)
    {
      LOBYTE(v249) = (v18 & 1) == 0;
      v43 = 0;
LABEL_52:
      v44 = a3 ^ 1;
      swift_unknownObjectRetain();
      v40 = 0;
      goto LABEL_53;
    }

    if ((v18 & 8) == 0)
    {
      swift_unknownObjectRetain();
      v239 = 0;
      v240 = 0;
      v246 = 0;
      v247 = 0;
      v252 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v237 = 1;
      v238 = 0;
      v242 = 1;
      v243 = 0;
      v236 = 1;
      LOBYTE(v10) = 1;
      v19 = 1;
      v251 = 1;
      LOBYTE(v248) = 1;
      v24 = 1;
LABEL_16:
      v29 = 1;
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_170;
    }

    swift_unknownObjectRetain();
    v243 = 0;
    v246 = 0;
    v252 = 0;
    v241 = 1;
    v251 = 1;
    LOBYTE(v248) = 1;
    goto LABEL_101;
  }

  LODWORD(v249) = (v18 & 1) == 0;
  v258 = a1;
  v27 = BYTE3(v282);
  v28 = v9;
  if (BYTE3(v282) == 1)
  {
    swift_unknownObjectRetain();

LABEL_19:
    v31 = v15;
    v32 = 0;
    v33 = 4;
    goto LABEL_28;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRetain();

  if (v30)
  {
    goto LABEL_19;
  }

  v31 = v15;
  v33 = 0;
  v32 = 1;
LABEL_28:
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
  v38 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v33, v32, 0, v258, a2, 0, 0, &v259, &v282);
  if (v28)
  {
    outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
    return swift_unknownObjectRelease();
  }

  v40 = v38;
  outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
  v251 = (v18 & 4) == 0;
  if ((v18 & 4) != 0)
  {
    v34 = v40;
  }

  else
  {
    v34 = 0;
  }

  if ((v18 & 4) != 0)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  v252 = v41;
  v15 = v31;
  if ((v18 & 2) != 0)
  {
    v248 = (v18 & 4) >> 2;
    if (v27)
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v9 = 0;
      if ((v45 & 1) == 0)
      {
        v11 = a2;
        v12 = v258;
        goto LABEL_23;
      }
    }

    else
    {

      v9 = 0;
    }

    v11 = a2;
    v12 = v258;
    if (v259 >= v256 || (v59 = *v259, ++v259, v59 != 45))
    {
      v60 = v15;
      v61 = v10[1];
      *v288 = *v10;
      *&v288[16] = v61;
      *&v288[32] = v10[2];
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
      clock_gettime(_CLOCK_REALTIME, &__tp);
      *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
      v62 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
      object = v62._object;
      v267 = *v288;
      v268 = *&v288[16];
      v269 = *&v288[32];
      outlined destroy of Date.ISO8601FormatStyle(&v267);
      *v288 = 0;
      *&v288[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(89);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      MEMORY[0x1865CB0E0](v258, v11);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
      MEMORY[0x1865CB0E0](v62._countAndFlagsBits, v62._object);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v63 = *v288;
      v64 = *&v288[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v65 = swift_allocObject();
      v65[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
      v65[9] = MEMORY[0x1E69E6158];
      v65[5] = v66;
      v65[6] = v63;
      v65[7] = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
      v67 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of FloatingPointRoundingRule?((v65 + 4), v288, &_sSS_yptMd, &_sSS_yptMR);
      swift_setDeallocating();

      outlined destroy of TermOfAddress?((v65 + 4), &_sSS_yptMd, &_sSS_yptMR);
      swift_deallocClassInstance();
      v68 = *v288;
      v15 = *&v288[8];
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(*v288, *&v288[8]);
      v71 = v70;

      if (v71)
      {
        __break(1u);
      }

      else
      {
        v67[(v69 >> 6) + 8] |= 1 << v69;
        v72 = (v67[6] + 16 * v69);
        *v72 = v68;
        v72[1] = v15;
        outlined init with take of Any(&v288[16], (v67[7] + 32 * v69));
        v73 = v67[2];
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (!v74)
        {
          v67[2] = v75;
          static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
          v76 = objc_allocWithZone(NSError);
          v77 = String._bridgeToObjectiveCImpl()();

          v9 = [v76 initWithDomain:v77 code:2048 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v78 = [v9 domain];
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)(v78);
          v80 = v79;

          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
          v15 = v82;
          if (v12 != v81 || v80 != v82)
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v11 & 1) == 0)
            {
              __break(1u);
LABEL_69:
              v243 = 0;
              v241 = 0;
              LOBYTE(v248) = 0;
              v252 = 1970;
              v246 = 1;
              v251 = 1;
              goto LABEL_101;
            }

LABEL_117:
            swift_willThrow();
            return swift_unknownObjectRelease();
          }

LABEL_111:

          goto LABEL_117;
        }
      }

      __break(1u);
      goto LABEL_251;
    }

LABEL_23:
    v247 = v34;
    if (BYTE3(v282) == 1)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        v37 = 0;
        v36 = 1;
        goto LABEL_45;
      }
    }

    v36 = 0;
    v37 = 2;
LABEL_45:
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
    v46 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v37, v36, 0, v12, v11, 0, 0, &v259, &v282);
    if (v9)
    {
      goto LABEL_198;
    }

    v245 = v11;
    v246 = v46;
    outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
    v265 = v283;
    v47 = *(&v283 + 1);
    ObjectType = swift_getObjectType();
    v288[0] = 2;
    v49 = *(v47 + 136);
    outlined init with copy of Calendar(&v265, &v267);
    v50 = v49(v288, ObjectType, v47);
    v52 = v51;
    LOBYTE(ObjectType) = v53;
    result = outlined destroy of Calendar(&v265);
    if (ObjectType)
    {
LABEL_267:
      __break(1u);
      goto LABEL_268;
    }

    if (v246 >= v50 && v246 < v52)
    {
      object = &v267;
      v239 = 0;
      v240 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v237 = 1;
      v238 = 0;
      v242 = 1;
      v243 = 0;
      v24 = 1;
      v236 = 1;
      LOBYTE(v10) = 1;
      v29 = 1;
      v9 = 0;
      goto LABEL_143;
    }

    v54 = v10[1];
    *v288 = *v10;
    *&v288[16] = v54;
    *&v288[32] = v10[2];
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
    clock_gettime(_CLOCK_REALTIME, &__tp);
    *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
    v55 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
    countAndFlagsBits = v55._countAndFlagsBits;
    v57 = v55._object;
    v267 = *v288;
    v268 = *&v288[16];
    v269 = *&v288[32];
    outlined destroy of Date.ISO8601FormatStyle(&v267);
    v58 = v12;
LABEL_157:
    v183 = v245;
LABEL_219:
    v222.value._countAndFlagsBits = countAndFlagsBits;
    v222.value._object = v57;
    parseError(_:exampleFormattedString:extendedDescription:)(v288, *&v58, v222, 0);

    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v9 = 0;
  if ((v18 & 4) != 0)
  {
    if (v27)
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = a2;
      if ((v42 & 1) == 0)
      {
        v43 = 0;
        v44 = 1;
        v12 = v258;
        goto LABEL_53;
      }
    }

    else
    {

      v11 = a2;
    }

    v12 = v258;
    if (v259 < v256)
    {
      v86 = *v259++;
      if (v86 == 45)
      {
        v43 = 0;
        v44 = 1;
LABEL_53:
        outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
        specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(0x57, v12, v11, 0, 0, &v259, &v282);
        if (v9)
        {
          goto LABEL_198;
        }

        outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
        v247 = v40;
        LOBYTE(v248) = v44;
        v252 = v43;
        if (BYTE3(v282))
        {
        }

        else
        {
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v83 & 1) == 0)
          {
            v85 = 0;
            v84 = 1;
            goto LABEL_87;
          }
        }

        v84 = 0;
        v85 = 2;
LABEL_87:
        outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
        v243 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v85, v84, 0, v12, v11, 0, 0, &v259, &v282);
        v245 = v11;
        outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
        v264 = v283;
        v110 = *(&v283 + 1);
        v111 = swift_getObjectType();
        v288[0] = 11;
        v112 = *(v110 + 136);
        outlined init with copy of Calendar(&v264, &v267);
        v113 = v112(v288, v111, v110);
        v115 = v114;
        LOBYTE(v110) = v116;
        result = outlined destroy of Calendar(&v264);
        if (v110)
        {
LABEL_271:
          __break(1u);
          goto LABEL_272;
        }

        if (v243 >= v113 && v243 < v115)
        {
          object = &v267;
          v239 = 0;
          v240 = 0;
          LOBYTE(v10) = 0;
          v246 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v237 = 1;
          v238 = 0;
          v242 = 1;
          v236 = 1;
          v19 = 1;
          v251 = v249;
          v24 = 1;
          v29 = 1;
          v9 = 0;
          goto LABEL_143;
        }

        v160 = v10[1];
        *v288 = *v10;
        *&v288[16] = v160;
        v161 = v10[2];
        goto LABEL_156;
      }
    }

    v19 = v15;
    v87 = v10[1];
    *v288 = *v10;
    *&v288[16] = v87;
    *&v288[32] = v10[2];
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
    clock_gettime(_CLOCK_REALTIME, &__tp);
    *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
    v88 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
    object = v88._object;
    v267 = *v288;
    v268 = *&v288[16];
    v269 = *&v288[32];
    outlined destroy of Date.ISO8601FormatStyle(&v267);
    *v288 = 0;
    *&v288[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v258, v11);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v88._countAndFlagsBits, v88._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v89 = *v288;
    v90 = *&v288[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v91 = swift_allocObject();
    v91[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
    v91[9] = MEMORY[0x1E69E6158];
    v91[5] = v92;
    v91[6] = v89;
    v91[7] = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v93 = static _DictionaryStorage.allocate(capacity:)();
    v12 = v288;
    outlined init with copy of FloatingPointRoundingRule?((v91 + 4), v288, &_sSS_yptMd, &_sSS_yptMR);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?((v91 + 4), &_sSS_yptMd, &_sSS_yptMR);
    swift_deallocClassInstance();
    v94 = *v288;
    v95 = *&v288[8];
    v96 = specialized __RawDictionaryStorage.find<A>(_:)(*v288, *&v288[8]);
    v98 = v97;

    if ((v98 & 1) == 0)
    {
      *(v93 + 8 * (v96 >> 6) + 64) |= 1 << v96;
      v99 = (*(v93 + 48) + 16 * v96);
      *v99 = v94;
      v99[1] = v95;
      result = outlined init with take of Any(&v288[16], (*(v93 + 56) + 32 * v96));
      v100 = *(v93 + 16);
      v74 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (!v74)
      {
        *(v93 + 16) = v101;
        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
        v102 = objc_allocWithZone(NSError);
        v103 = String._bridgeToObjectiveCImpl()();

        v104 = [v102 initWithDomain:v103 code:2048 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v105 = [v104 domain];
        v106 = static String._unconditionallyBridgeFromObjectiveC(_:)(v105);
        v108 = v107;

        if (v106 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v108 == v109)
        {
          goto LABEL_111;
        }

        v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v117)
        {
          goto LABEL_117;
        }

LABEL_262:
        __break(1u);
        goto LABEL_263;
      }

LABEL_255:
      __break(1u);
      goto LABEL_256;
    }

LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  if ((a3 & 1) == 0)
  {
    object = &v267;
    v11 = a2;
    if ((v18 & 8) == 0)
    {
      v239 = 0;
      v240 = 0;
      v246 = 0;
      v247 = 0;
      LOBYTE(v248) = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v237 = 1;
      v238 = 0;
      v242 = 1;
      v243 = 0;
      v24 = 1;
      v236 = 1;
      LOBYTE(v10) = 1;
      v19 = 1;
      goto LABEL_84;
    }

    v243 = 0;
    v246 = 0;
    v19 = 0;
    LOBYTE(v248) = 0;
    v241 = 1;
LABEL_95:
    v251 = 1;
    v252 = v40;
    v12 = v258;
    if (BYTE3(v282))
    {
      v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v118 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

    else
    {
    }

    if (v259 < v256)
    {
      v119 = *v259++;
      if (v119 == 45)
      {
LABEL_101:
        v242 = (v18 & 4) == 0;
        if ((v18 & 4) == 0)
        {
          if ((v18 & 2) == 0)
          {
            if (BYTE3(v282))
            {
            }

            else
            {
              v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v143 & 1) == 0)
              {
                v145 = 0;
                v144 = 1;
LABEL_130:
                outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
                v162 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v145, v144, 0, v12, v11, 0, 0, &v259, &v282);
                if (v9)
                {
                  goto LABEL_198;
                }

                v240 = v162;
                v245 = v11;
                outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
                v261 = object[10];
                v163 = *(&v261 + 1);
                v164 = swift_getObjectType();
                v288[0] = 18;
                v165 = *(v163 + 136);
                outlined init with copy of Calendar(&v261, &v267);
                v166 = v165(v288, v164, v163);
                v168 = v167;
                LOBYTE(v163) = v169;
                result = outlined destroy of Calendar(&v261);
                if (v163)
                {
LABEL_273:
                  __break(1u);
                  goto LABEL_274;
                }

                if (v240 >= v166 && v240 < v168)
                {
                  v247 = 0;
                  v237 = 0;
                  v238 = 0;
                  v239 = 0;
                  goto LABEL_135;
                }

                goto LABEL_155;
              }
            }

            v144 = 0;
            v145 = 3;
            goto LABEL_130;
          }

          if (BYTE3(v282))
          {
          }

          else
          {
            v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v146 & 1) == 0)
            {
              v148 = 0;
              v147 = 1;
LABEL_137:
              outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
              v170 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v148, v147, 0, v12, v11, 0, 0, &v259, &v282);
              if (v9)
              {
                goto LABEL_198;
              }

              v239 = v170;
              v245 = v11;
              outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
              v262 = object[10];
              v171 = *(&v262 + 1);
              v172 = swift_getObjectType();
              v288[0] = 3;
              v173 = *(v171 + 136);
              outlined init with copy of Calendar(&v262, &v267);
              v174 = v173(v288, v172, v171);
              v176 = v175;
              LOBYTE(v171) = v177;
              result = outlined destroy of Calendar(&v262);
              if (v171)
              {
LABEL_274:
                __break(1u);
                goto LABEL_275;
              }

              if (v239 >= v174 && v239 < v176)
              {
                v247 = 0;
                v240 = 0;
                v236 = 0;
                v237 = 1;
                v238 = 0;
                goto LABEL_142;
              }

LABEL_155:
              *v288 = v285;
              *&v288[16] = v286;
              v161 = v287;
LABEL_156:
              *&v288[32] = v161;
              __tp.tv_sec = 0;
              __tp.tv_nsec = 0;
              outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
              clock_gettime(_CLOCK_REALTIME, &__tp);
              *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
              v182 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
              countAndFlagsBits = v182._countAndFlagsBits;
              v57 = v182._object;
              v267 = *v288;
              v268 = *&v288[16];
              v269 = *&v288[32];
              outlined destroy of Date.ISO8601FormatStyle(&v267);
              v58 = v12;
              goto LABEL_157;
            }
          }

          v147 = 0;
          v148 = 2;
          goto LABEL_137;
        }

        if (BYTE3(v282) == 1)
        {
        }

        else
        {
          v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v139 & 1) == 0)
          {
            v141 = 0;
            v140 = 1;
LABEL_123:
            outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
            v149 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v141, v140, 0, v12, v11, 0, 0, &v259, &v282);
            if (v9)
            {
              goto LABEL_198;
            }

            v247 = 0;
            v150 = v12;
            v245 = v11;
            v151 = v149;
            outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
            v263 = v283;
            v152 = *(&v283 + 1);
            v153 = swift_getObjectType();
            v288[0] = 7;
            v154 = *(v152 + 136);
            outlined init with copy of Calendar(&v263, &v267);
            v155 = v154(v288, v153, v152);
            v157 = v156;
            LOBYTE(v152) = v158;
            result = outlined destroy of Calendar(&v263);
            if (v152)
            {
LABEL_272:
              __break(1u);
              goto LABEL_273;
            }

            v159 = v151 % 7 + 1;
            v12 = v150;
            if (v159 >= v155 && v159 < v157)
            {
              v238 = v151 % 7 + 1;
              v239 = 0;
              v240 = 0;
              v237 = 1;
LABEL_135:
              v236 = 1;
LABEL_142:
              object = &v267;
              v9 = 0;
              LOBYTE(v10) = 1;
              v19 = v241;
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 1;
              v29 = 1;
              v11 = v245;
              goto LABEL_143;
            }

            goto LABEL_155;
          }
        }

        v140 = 0;
        v141 = 2;
        goto LABEL_123;
      }
    }

    LOBYTE(v10) = v15;
    *v288 = v285;
    *&v288[16] = v286;
    *&v288[32] = v287;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
    clock_gettime(_CLOCK_REALTIME, &__tp);
    *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
    v120 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
    object = v120._object;
    v267 = *v288;
    v268 = *&v288[16];
    v269 = *&v288[32];
    outlined destroy of Date.ISO8601FormatStyle(&v267);
    *v288 = 0;
    *&v288[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v258, v11);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v120._countAndFlagsBits, v120._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v121 = *v288;
    v122 = *&v288[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v123 = swift_allocObject();
    v123[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
    v123[9] = MEMORY[0x1E69E6158];
    v123[5] = v124;
    v123[6] = v121;
    v123[7] = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v93 = static _DictionaryStorage.allocate(capacity:)();
    v12 = v288;
    outlined init with copy of FloatingPointRoundingRule?((v123 + 4), v288, &_sSS_yptMd, &_sSS_yptMR);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?((v123 + 4), &_sSS_yptMd, &_sSS_yptMR);
    swift_deallocClassInstance();
    v125 = *v288;
    v126 = *&v288[8];
    v96 = specialized __RawDictionaryStorage.find<A>(_:)(*v288, *&v288[8]);
    v98 = v127;

    if (v98)
    {
      __break(1u);
    }

    else
    {
      *(v93 + 8 * (v96 >> 6) + 64) |= 1 << v96;
      v128 = (*(v93 + 48) + 16 * v96);
      *v128 = v125;
      v128[1] = v126;
      result = outlined init with take of Any(&v288[16], (*(v93 + 56) + 32 * v96));
      v129 = *(v93 + 16);
      v74 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (!v74)
      {
        *(v93 + 16) = v130;
        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
        v131 = objc_allocWithZone(NSError);
        v132 = String._bridgeToObjectiveCImpl()();

        v133 = [v131 initWithDomain:v132 code:2048 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v134 = [v133 domain];
        v135 = static String._unconditionallyBridgeFromObjectiveC(_:)(v134);
        v137 = v136;

        if (v135 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v137 == v138)
        {
          goto LABEL_111;
        }

        v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v142)
        {
          goto LABEL_117;
        }

        __break(1u);
        goto LABEL_262;
      }
    }

    __break(1u);
    goto LABEL_254;
  }

  object = &v267;
  v11 = a2;
  if ((v18 & 8) != 0)
  {
    v243 = 0;
    v241 = 0;
    v19 = 0;
    LOBYTE(v248) = 0;
    v246 = 1;
    goto LABEL_95;
  }

  v239 = 0;
  v240 = 0;
  v19 = 0;
  v247 = 0;
  LOBYTE(v248) = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v242 = 1;
  v243 = 0;
  v237 = 1;
  v238 = 0;
  v236 = 1;
  LOBYTE(v10) = 1;
  v246 = 1;
  v24 = 1;
LABEL_84:
  v251 = 1;
  v252 = v40;
  v29 = 1;
  v12 = v258;
  if ((v18 & 0x10) == 0)
  {
    goto LABEL_143;
  }

  if (BYTE4(v282) == 1)
  {
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
    specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(0x54, v258, v11, 0, 0, &v259, &v282);
  }

  else
  {
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
    specialized BufferViewIterator<A>.expectOneOrMoreCharacters(_:input:onFailure:extendedDescription:)(0x20u, v258, v11, 0, 0, &v259, &v282);
  }

  v9 = 0;
  outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
LABEL_170:
  if (v282)
  {
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
    v202 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v12, v11, 0, 0, &v259, &v282);
    if (!v9)
    {
      v250 = v202;
      outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
      outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
      v203 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v12, v11, 0, 0, &v259, &v282);
      outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
      outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
      v204 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v12, v11, 0, 0, &v259, &v282);
      goto LABEL_173;
    }

LABEL_198:
    outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
    return swift_unknownObjectRelease();
  }

  outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
  v207 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 0, 1, 0, v12, v11, 0, 0, &v259, &v282);
  if (v9)
  {
    goto LABEL_198;
  }

  v250 = v207;
  outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
  specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(0x3A, v12, v11, 0, 0, &v259, &v282);
  v203 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 0, 1, 0, v12, v11, 0, 0, &v259, &v282);
  outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
  specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(0x3A, v12, v11, 0, 0, &v259, &v282);
  v204 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 0, 1, 0, v12, v11, 0, 0, &v259, &v282);
  v9 = 0;
LABEL_173:
  v205 = v204;
  outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
  v256 = v260;
  if (v259 >= v260)
  {
    v20 = 0;
    v29 = 0;
    v24 = 1;
    LOBYTE(v10) = 1;
    v23 = v250;
    v22 = v203;
    v21 = v205;
  }

  else
  {
    v29 = 0;
    v20 = 0;
    v23 = v250;
    v22 = v203;
    v21 = v205;
    if (*v259 == 46)
    {
      v235 = v205;
      ++v259;
      outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
      v206 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 0, 1, 1, v12, v11, 0, 0, &v259, &v282);
      outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
      v20 = v206;
      v24 = 0;
      v29 = 0;
      LOBYTE(v10) = 1;
      v23 = v250;
      v22 = v203;
      v21 = v235;
    }

    else
    {
      LOBYTE(v10) = 1;
      v24 = 1;
    }
  }

LABEL_143:
  v232 = v24;
  v249 = v23;
  v258 = v22;
  v233 = v20;
  v234 = v21;
  if ((v18 & 0x20) == 0)
  {
    v241 = v19;
    v69 = a7;
    goto LABEL_164;
  }

  v257 = v29;
  if ((BYTE4(v282) & 1) == 0)
  {

    goto LABEL_149;
  }

  v178 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v178)
  {
LABEL_149:
    BufferViewIterator<A>.expectZeroOrMoreCharacters(_:)(32);
  }

  v179 = v259;
  if (v259 >= v256)
  {
    goto LABEL_218;
  }

  v180 = v259 + 1;
  v181 = *v259++;
  if (v181 > 102)
  {
    if (v181 != 103)
    {
      if (v181 != 122)
      {
        goto LABEL_184;
      }

      goto LABEL_160;
    }
  }

  else if (v181 != 71)
  {
    if (v181 != 90)
    {
      goto LABEL_184;
    }

LABEL_160:
    v241 = v19;
    if (one-time initialization token for cache == -1)
    {
LABEL_161:
      v255 = *(&xmmword_1ED440468 + 1);
      v184 = xmmword_1ED440468;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v15 = v184;
LABEL_162:
      v69 = a7;
LABEL_163:
      v29 = v257;
LABEL_164:
      v71 = v29;
      v60 = v10;
      if (one-time initialization token for cache == -1)
      {
LABEL_165:
        LOBYTE(v267) = 7;
        v185 = CalendarCache.fixed(_:)(&v267);
        LOBYTE(v272) = 1;
        *&v267 = v185;
        *(&v267 + 1) = v186;
        *v288 = v15;
        *&v288[8] = v255;
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(v288);
        v187 = v267;
        LOBYTE(v267) = 1;
        v288[0] = v248 & 1;
        LOBYTE(__tp.tv_sec) = v241;
        LOBYTE(v281) = v236;
        LOBYTE(v279) = v71;
        LOBYTE(v278) = v71;
        LOBYTE(v277) = v71;
        LOBYTE(v276) = v232;
        LOBYTE(v275) = v242;
        LOBYTE(v274) = 1;
        LOBYTE(v273) = 1;
        LOBYTE(v271) = 1;
        LOBYTE(v270) = v60;
        LOBYTE(v280) = v237;
        v188 = v272;
        result = a5;
        *v69 = v259 - a5;
        *(v69 + 8) = v187;
        *(v69 + 24) = v15;
        *(v69 + 32) = v255;
        *(v69 + 40) = 0;
        *(v69 + 48) = 1;
        *(v69 + 49) = v267;
        *(v69 + 52) = *(&v267 + 3);
        *(v69 + 56) = v252;
        *(v69 + 64) = v248 & 1;
        *(v69 + 65) = *v288;
        *(v69 + 68) = *(object + 243);
        *(v69 + 72) = v246;
        *(v69 + 80) = v241;
        tv_sec = __tp.tv_sec;
        *(v69 + 84) = *(&__tp.tv_sec + 3);
        *(v69 + 81) = tv_sec;
        *(v69 + 88) = v239;
        *(v69 + 96) = v236;
        v190 = v281;
        *(v69 + 100) = *(object + 139);
        *(v69 + 97) = v190;
        *(v69 + 104) = v240;
        *(v69 + 112) = v237;
        v191 = v280;
        *(v69 + 116) = *(object + 131);
        *(v69 + 113) = v191;
        *(v69 + 120) = v249;
        *(v69 + 128) = v71;
        v192 = v279;
        *(v69 + 132) = *(object + 123);
        *(v69 + 129) = v192;
        *(v69 + 136) = v258;
        *(v69 + 144) = v71;
        v193 = v278;
        *(v69 + 148) = *(object + 115);
        *(v69 + 145) = v193;
        *(v69 + 152) = v234;
        *(v69 + 160) = v71;
        v194 = v277;
        *(v69 + 164) = *(object + 107);
        *(v69 + 161) = v194;
        *(v69 + 168) = v233;
        *(v69 + 176) = v232;
        v195 = v276;
        *(v69 + 180) = *(object + 99);
        *(v69 + 177) = v195;
        *(v69 + 184) = v238;
        *(v69 + 192) = v242;
        v196 = v275;
        *(v69 + 196) = *(object + 91);
        *(v69 + 193) = v196;
        *(v69 + 200) = 0;
        *(v69 + 208) = 1;
        v197 = v274;
        *(v69 + 212) = *(object + 83);
        *(v69 + 209) = v197;
        *(v69 + 216) = 0;
        *(v69 + 224) = 1;
        v198 = v273;
        *(v69 + 228) = *(object + 75);
        *(v69 + 225) = v198;
        *(v69 + 232) = 0;
        *(v69 + 240) = v188;
        v199 = v272;
        *(v69 + 244) = *(object + 67);
        *(v69 + 241) = v199;
        *(v69 + 248) = 0;
        *(v69 + 256) = 1;
        v200 = v271;
        *(v69 + 260) = *(object + 59);
        *(v69 + 257) = v200;
        *(v69 + 264) = v243;
        *(v69 + 272) = v60;
        v201 = v270;
        *(v69 + 276) = *(object + 51);
        *(v69 + 273) = v201;
        *(v69 + 280) = v247;
        *(v69 + 288) = v251;
        *(v69 + 289) = 514;
        return result;
      }

LABEL_251:
      swift_once();
      goto LABEL_165;
    }

LABEL_263:
    swift_once();
    goto LABEL_161;
  }

  if (v180 < v256)
  {
    v208 = v179[1];
    v180 = v179 + 2;
    v259 = v179 + 2;
    if ((v208 | 0x20) == 0x6D && v180 < v256)
    {
      v209 = v179[2];
      v180 = v179 + 3;
      v259 = v179 + 3;
      if ((v209 | 0x20) == 0x74)
      {
        if (v180 < v256)
        {
          v210 = *v180;
        }

        else
        {
          v210 = 0;
        }

        if (v180 >= v256)
        {
          goto LABEL_225;
        }

        if (v210 == 43)
        {
          v211 = v12;
          v220 = 1;
          LOBYTE(v12) = 1;
        }

        else
        {
          if (v210 != 45)
          {
            goto LABEL_225;
          }

          v211 = v12;
          v220 = 0;
          LOBYTE(v12) = 0;
        }

        if (v180 >= v256)
        {
          goto LABEL_197;
        }

        v225 = v179 + 4;
LABEL_248:
        v259 = v225;
        LOBYTE(v12) = v220;
        goto LABEL_197;
      }
    }
  }

LABEL_184:
  if (v181 > 84)
  {
    if (v181 != 117 && v181 != 85)
    {
      goto LABEL_218;
    }

    if (v180 >= v256)
    {
      goto LABEL_218;
    }

    v212 = *v180;
    v259 = v180 + 1;
    if ((v212 | 0x20) != 0x74)
    {
      goto LABEL_218;
    }

    if ((v180 + 1) >= v256)
    {
      goto LABEL_218;
    }

    v213 = v180[1];
    v214 = v180 + 2;
    v259 = v180 + 2;
    if ((v213 | 0x20) != 0x63)
    {
      goto LABEL_218;
    }

    if (v214 < v256)
    {
      v215 = *v214;
    }

    else
    {
      v215 = 0;
    }

    if (v214 < v256)
    {
      if (v215 == 43)
      {
        v211 = v12;
        v220 = 1;
        LOBYTE(v12) = 1;
        goto LABEL_246;
      }

      if (v215 == 45)
      {
        v211 = v12;
        v220 = 0;
        LOBYTE(v12) = 0;
LABEL_246:
        if (v214 >= v256)
        {
          goto LABEL_197;
        }

        v225 = v180 + 3;
        goto LABEL_248;
      }
    }

LABEL_225:
    v241 = v19;
    goto LABEL_226;
  }

  if (v181 == 43)
  {
    v211 = v12;
    LOBYTE(v12) = 1;
    goto LABEL_197;
  }

  if (v181 != 45)
  {
LABEL_218:
    *v288 = v285;
    *&v288[16] = v286;
    *&v288[32] = v287;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
    clock_gettime(_CLOCK_REALTIME, &__tp);
    *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
    v221 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
    countAndFlagsBits = v221._countAndFlagsBits;
    v57 = v221._object;
    v267 = *v288;
    v268 = *&v288[16];
    v269 = *&v288[32];
    outlined destroy of Date.ISO8601FormatStyle(&v267);
    v58 = v12;
    v183 = v11;
    goto LABEL_219;
  }

  v211 = v12;
  LOBYTE(v12) = 0;
LABEL_197:
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
  v98 = v211;
  v216 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v211, v11, 0, 0, &v259, &v282);
  if (v9)
  {
    goto LABEL_198;
  }

  v93 = v216;
  outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
  if (v259 >= v260)
  {
LABEL_201:
    result = 3600 * v93;
    if ((v93 * 3600) >> 64 != (3600 * v93) >> 63)
    {
      __break(1u);
      goto LABEL_265;
    }

    v241 = v19;
    if (result)
    {
      goto LABEL_203;
    }

    goto LABEL_226;
  }

  if (*v259 == 58)
  {
    ++v259;
  }

  else if (*v259 - 58 <= 0xFFFFFFF5)
  {
    goto LABEL_201;
  }

  outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
  v244 = v11;
  v96 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v98, v11, 0, 0, &v259, &v282);
  result = outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
  v224 = v259;
  if (v259 < v260 && *v259 == 58)
  {
    v224 = ++v259;
  }

  if (v224 >= v260 || *v224 - 58 < 0xFFFFFFF6)
  {
    v226 = 3600 * v93;
    if ((v93 * 3600) >> 64 != (3600 * v93) >> 63)
    {
LABEL_268:
      __break(1u);
      goto LABEL_269;
    }

    v227 = 60 * v96;
    if ((v96 * 60) >> 64 != (60 * v96) >> 63)
    {
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    result = v226 + v227;
    if (__OFADD__(v226, v227))
    {
LABEL_270:
      __break(1u);
      goto LABEL_271;
    }

    object = &v267;
LABEL_243:
    v11 = v244;
    v241 = v19;
    if (result)
    {
LABEL_203:
      if ((v12 & 1) != 0 || (v74 = __OFSUB__(0, result), result = -result, !v74))
      {
        if (one-time initialization token for cache == -1)
        {
LABEL_206:
          v217 = TimeZoneCache.offsetFixed(_:)(result);
          if (v217)
          {
            v219 = v217;
            v255 = v218;
            swift_unknownObjectRelease();
            v15 = v219;
            goto LABEL_162;
          }

          v12 = v98;
          goto LABEL_218;
        }

LABEL_265:
        v231 = result;
        swift_once();
        result = v231;
        goto LABEL_206;
      }

      __break(1u);
      goto LABEL_267;
    }

LABEL_226:
    v69 = a7;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v255 = *(&xmmword_1ED440468 + 1);
    v223 = xmmword_1ED440468;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v15 = v223;
    goto LABEL_163;
  }

  outlined init with copy of DateComponents.ISO8601FormatStyle(&v282, &v267);
  object = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v98, v244, 0, 0, &v259, &v282);
  result = outlined destroy of DateComponents.ISO8601FormatStyle(&v282);
LABEL_256:
  v228 = 3600 * v93;
  if ((v93 * 3600) >> 64 != (3600 * v93) >> 63)
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  v229 = 60 * v96;
  if ((v96 * 60) >> 64 != (60 * v96) >> 63)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  v74 = __OFADD__(v228, v229);
  v230 = v228 + v229;
  if (v74)
  {
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  result = object + v230;
  if (!__OFADD__(v230, object))
  {
    object = &v267;
    goto LABEL_243;
  }

LABEL_278:
  __break(1u);
  return result;
}

uint64_t specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char *object, __CFString *a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, __CFString *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = v35;
  v38 = a7;
  result = 0;
  v42 = 0;
  v218 = a19;
  v226 = *MEMORY[0x1E69E9840];
  if (a3 >= 10)
  {
    v44 = 10;
  }

  else
  {
    v44 = a3;
  }

  if (v44 <= 1)
  {
    v44 = 1;
  }

  if (a4)
  {
    v45 = 10;
  }

  else
  {
    v45 = v44;
  }

  v217 = a13;
  v47 = a11;
  v49 = *a10;
  v48 = *(a10 + 8);
  do
  {
    if (v49 >= v48 || (*v49 - 58) <= 0xF5u)
    {
      if (v42)
      {
        goto LABEL_17;
      }

      v217 = a28;
      v218 = a29;
      v56 = a11[1];
      v223 = *a11;
      v224 = v56;
      v225 = a11[2];
      *&__tp[1] = 0;
      *&__tp[9] = 0;
      outlined init with copy of DateComponents.ISO8601FormatStyle(a11, &v220);
      clock_gettime(_CLOCK_REALTIME, &__tp[1]);
      *&__tp[1] = *&__tp[1] + -978307200.0 + *&__tp[9] * 0.000000001;
      v57 = Date.ISO8601FormatStyle.format(_:)(*&__tp[1]);
      v220 = v223;
      v221 = v224;
      v222 = v225;
      outlined destroy of Date.ISO8601FormatStyle(&v220);
      *&v223 = 0;
      *(&v223 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(89);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      MEMORY[0x1865CB0E0](object, v38);
      if (a9)
      {
        *&__tp[1] = 8250;
        *&__tp[9] = 0xE200000000000000;
        MEMORY[0x1865CB0E0](a8, a9);
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        v58 = *&__tp[1];
        v59 = *&__tp[9];
      }

      else
      {
        v59 = 0xE100000000000000;
        v58 = 46;
      }

      MEMORY[0x1865CB0E0](v58, v59);

      MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
      MEMORY[0x1865CB0E0](v57._countAndFlagsBits, v57._object);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      a8 = *(&v223 + 1);
      a22 = v223;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      a12 = swift_allocObject();
      isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
      v70 = @"NSDebugDescription";
      v38 = v70;
      if (!isTaggedPointer)
      {
        goto LABEL_47;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v70);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v72 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v74 = v73;

            goto LABEL_171;
          }

LABEL_47:
          *__tp = 0;
          *&v223 = 0;
          if (__CFStringIsCF())
          {
            if (!v223)
            {
LABEL_76:

LABEL_77:
              v72 = 0;
              v74 = 0xE000000000000000;
              goto LABEL_171;
            }

            if (__tp[0] == 1)
            {
              if (__tp[1])
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v98 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_170;
            }

LABEL_169:
            v98 = String.init(_cocoaString:)();
LABEL_170:
            v72 = v98;
            v74 = v99;
LABEL_171:
            a12[1].isa = v72;
            a12[1].info = v74;
            a12[2].info = MEMORY[0x1E69E6158];
            a12[1].data = a22;
            a12[1].length = a8;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
            v154 = static _DictionaryStorage.allocate(capacity:)();
            outlined init with copy of (String, Any)(&a12[1], &v223);
            swift_setDeallocating();

            outlined destroy of (String, Any)(&a12[1]);
            swift_deallocClassInstance();
            v155 = v223;
            v156 = specialized __RawDictionaryStorage.find<A>(_:)(v223, *(&v223 + 1));
            v158 = v157;

            if (v158)
            {
LABEL_303:
              __break(1u);
              goto LABEL_304;
            }

            v154[(v156 >> 6) + 8] |= 1 << v156;
            *(v154[6] + 16 * v156) = v155;
            outlined init with take of Any(&v224, (v154[7] + 32 * v156));
            v159 = v154[2];
            v106 = __OFADD__(v159, 1);
            v160 = v159 + 1;
            if (v106)
            {
LABEL_304:
              __break(1u);
LABEL_305:
              __break(1u);
LABEL_306:
              __break(1u);
              goto LABEL_307;
            }

            v154[2] = v160;
            v36 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
            v161 = @"NSCocoaErrorDomain";
            a12 = v161;
            if (v36)
            {
              v162 = _objc_getTaggedPointerTag(v161);
              if (v162)
              {
                if (v162 != 22)
                {
                  if (v162 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v162);
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_198;
                  }

                  goto LABEL_178;
                }

                result = [(__CFString *)a12 UTF8String];
                if (!result)
                {
LABEL_314:
                  __break(1u);
                  goto LABEL_315;
                }

                String.init(utf8String:)(result);
                if (v165)
                {
                  goto LABEL_190;
                }

                __break(1u);
              }

              _CFIndirectTaggedPointerStringGetContents();
              _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v166)
              {
                [(__CFString *)a12 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                goto LABEL_198;
              }

              goto LABEL_190;
            }

LABEL_178:
            *__tp = 0;
            *&v223 = 0;
            if (!__CFStringIsCF())
            {
              v163 = a12;
              String.init(_nativeStorage:)();
              if (v164 || (*&v223 = [(__CFString *)v163 length], !v223))
              {

                goto LABEL_198;
              }

              goto LABEL_197;
            }

            if (v223)
            {
              if (__tp[0] == 1)
              {
                if (__tp[1])
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_198:
                v167 = objc_allocWithZone(NSError);
                v168 = String._bridgeToObjectiveCImpl()();

                v169 = [v167 initWithDomain:v168 code:2048 userInfo:_NativeDictionary.bridged()()];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v170 = [v169 domain];
                if (!v170)
                {
                  v175 = 0;
                  v177 = 0xE000000000000000;
                  goto LABEL_234;
                }

                v171 = v170;
                v172 = _objc_isTaggedPointer(v170);
                v173 = v171;
                v38 = v173;
                if (!v172)
                {
LABEL_204:
                  *__tp = 0;
                  *&v223 = 0;
                  if (__CFStringIsCF())
                  {
                    if (!v223)
                    {

                      v175 = 0;
                      v177 = 0xE000000000000000;
                      goto LABEL_234;
                    }

                    if (__tp[0] == 1)
                    {
                      if (__tp[1])
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v183 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_232;
                    }
                  }

                  else
                  {
                    v178 = v38;
                    v179 = String.init(_nativeStorage:)();
                    if (v180)
                    {
                      v175 = v179;
                      v177 = v180;

                      goto LABEL_234;
                    }

                    *&v223 = [(__CFString *)v178 length];
                    if (!v223)
                    {

                      v175 = 0;
                      v177 = 0xE000000000000000;
                      goto LABEL_234;
                    }
                  }

LABEL_231:
                  v183 = String.init(_cocoaString:)();
LABEL_232:
                  v175 = v183;
                  v177 = v184;
                  goto LABEL_233;
                }

                v174 = _objc_getTaggedPointerTag(v173);
                if (v174)
                {
                  if (v174 != 22)
                  {
                    if (v174 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v174);
                      v175 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v177 = v176;

                      goto LABEL_234;
                    }

                    goto LABEL_204;
                  }

                  result = [(__CFString *)v38 UTF8String];
                  if (!result)
                  {
LABEL_317:
                    __break(1u);
                    return result;
                  }

                  v181 = String.init(utf8String:)(result);
                  if (v182)
                  {
                    goto LABEL_217;
                  }

                  __break(1u);
                }

                _CFIndirectTaggedPointerStringGetContents();
                v181 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v182)
                {
                  [(__CFString *)v38 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v175 = *&__tp[1];
                  v177 = *&__tp[9];
                  goto LABEL_233;
                }

LABEL_217:
                v175 = v181;
                v177 = v182;

LABEL_233:
LABEL_234:
                v189 = a12;
                v190 = v189;
                if (!v36)
                {
                  goto LABEL_239;
                }

                v191 = _objc_getTaggedPointerTag(v189);
                if (v191)
                {
                  if (v191 != 22)
                  {
                    if (v191 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v191);
                      v192 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v194 = v193;

LABEL_261:
                      if (v175 == v192 && v177 == v194)
                      {
                        goto LABEL_297;
                      }

                      v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v202)
                      {
                        return swift_willThrow();
                      }

                      goto LABEL_306;
                    }

LABEL_239:
                    *__tp = 0;
                    *&v223 = 0;
                    if (__CFStringIsCF())
                    {
                      if (v223)
                      {
                        if (__tp[0] == 1)
                        {
                          if (__tp[1])
                          {
                            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                          }

                          else
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                          }

                          v200 = String.init<A>(_immortalCocoaString:count:encoding:)();
                          goto LABEL_260;
                        }

LABEL_259:
                        v200 = String.init(_cocoaString:)();
LABEL_260:
                        v192 = v200;
                        v194 = v201;
                        goto LABEL_261;
                      }
                    }

                    else
                    {
                      v195 = v190;
                      v196 = String.init(_nativeStorage:)();
                      if (v197)
                      {
                        v192 = v196;
                        v194 = v197;

                        goto LABEL_261;
                      }

                      *&v223 = [(__CFString *)v195 length];
                      if (v223)
                      {
                        goto LABEL_259;
                      }
                    }

                    v192 = 0;
                    v194 = 0xE000000000000000;
                    goto LABEL_261;
                  }

                  result = [(__CFString *)v190 UTF8String];
                  if (!result)
                  {
LABEL_315:
                    __break(1u);
                    goto LABEL_316;
                  }

                  v198 = String.init(utf8String:)(result);
                  if (v199)
                  {
LABEL_252:
                    v192 = v198;
                    v194 = v199;

                    goto LABEL_261;
                  }

                  __break(1u);
                }

                _CFIndirectTaggedPointerStringGetContents();
                v198 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v199)
                {
                  [(__CFString *)v190 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v192 = *&__tp[1];
                  v194 = *&__tp[9];
                  goto LABEL_261;
                }

                goto LABEL_252;
              }

LABEL_197:
              String.init(_cocoaString:)();
              goto LABEL_198;
            }

LABEL_190:

            goto LABEL_198;
          }

LABEL_59:
          v79 = v38;
          v80 = String.init(_nativeStorage:)();
          if (v81)
          {
            v72 = v80;
            v74 = v81;

            goto LABEL_171;
          }

          *&v223 = [(__CFString *)v79 length:a30];
          if (!v223)
          {

            goto LABEL_77;
          }

          goto LABEL_169;
        }

        result = [(__CFString *)v38 UTF8String:a30];
        if (!result)
        {
LABEL_313:
          __break(1u);
          goto LABEL_314;
        }

        v86 = String.init(utf8String:)(result);
        if (v87)
        {
LABEL_84:
          v72 = v86;
          v74 = v87;

          goto LABEL_171;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      v86 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v87)
      {
        [(__CFString *)v38 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v72 = *&__tp[1];
        v74 = *&__tp[9];
        goto LABEL_171;
      }

      goto LABEL_84;
    }

    v50 = 10 * result;
    if ((result * 10) >> 64 != (10 * result) >> 63)
    {
      __break(1u);
LABEL_226:
      __break(1u);
      v185 = [(__CFString *)a7 lengthOfBytesUsingEncoding:4, a15, a5, a29, a21, a28, a30, a31, a17, a18, a32];
      MEMORY[0x1EEE9AC00](v185);
      v186 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v177 = v187;
      v188 = HIBYTE(v187) & 0xF;
      if ((v187 & 0x2000000000000000) == 0)
      {
        v188 = v186 & 0xFFFFFFFFFFFFLL;
      }

      if (v188)
      {
        v175 = v186;

        goto LABEL_234;
      }

      goto LABEL_231;
    }

    v51 = *v49 - 48;
    result = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_226;
    }

    *a10 = ++v49;
    ++v42;
  }

  while (v45 != v42);
  v42 = v45;
LABEL_17:
  if ((a2 & 1) != 0 || v42 >= a1)
  {
    if ((a5 & 1) == 0)
    {
      return result;
    }

    if (v42 > 4)
    {
      if (v42 > 6)
      {
        if (v42 != 7)
        {
          if (v42 != 8)
          {
            if (v42 == 9)
            {
              return result;
            }

            goto LABEL_100;
          }

LABEL_98:
          v47 = (result * 10) >> 64;
          result *= 10;
          if (v47 == result >> 63)
          {
            return result;
          }

          __break(1u);
LABEL_100:
          v94 = *(v47 + 16);
          v223 = *v47;
          v224 = v94;
          v225 = *(v47 + 32);
          *&__tp[1] = 0;
          *&__tp[9] = 0;
          outlined init with copy of DateComponents.ISO8601FormatStyle(v47, &v220);
          clock_gettime(_CLOCK_REALTIME, &__tp[1]);
          *&__tp[1] = *&__tp[1] + -978307200.0 + *&__tp[9] * 0.000000001;
          v95 = Date.ISO8601FormatStyle.format(_:)(*&__tp[1]);
          v220 = v223;
          v221 = v224;
          v222 = v225;
          outlined destroy of Date.ISO8601FormatStyle(&v220);
          *&v223 = 0;
          *(&v223 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(89);
          MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
          MEMORY[0x1865CB0E0](object, v38);
          if (a9)
          {
            *&__tp[1] = 8250;
            *&__tp[9] = 0xE200000000000000;
            MEMORY[0x1865CB0E0](a8, a9);
            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            v96 = *&__tp[1];
            v97 = *&__tp[9];
          }

          else
          {
            v97 = 0xE100000000000000;
            v96 = 46;
          }

          MEMORY[0x1865CB0E0](v96, v97);

          MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
          MEMORY[0x1865CB0E0](v95._countAndFlagsBits, v95._object);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          v135 = v223;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
          v136 = swift_allocObject();
          *(v136 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
          *(v136 + 72) = MEMORY[0x1E69E6158];
          *(v136 + 40) = v137;
          *(v136 + 48) = v135;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
          v138 = static _DictionaryStorage.allocate(capacity:)();
          outlined init with copy of (String, Any)(v136 + 32, &v223);
          swift_setDeallocating();

          outlined destroy of (String, Any)(v136 + 32);
          swift_deallocClassInstance();
          v139 = v223;
          v140 = specialized __RawDictionaryStorage.find<A>(_:)(v223, *(&v223 + 1));
          v142 = v141;

          if ((v142 & 1) == 0)
          {
            v138[(v140 >> 6) + 8] |= 1 << v140;
            *(v138[6] + 16 * v140) = v139;
            outlined init with take of Any(&v224, (v138[7] + 32 * v140));
            v143 = v138[2];
            v106 = __OFADD__(v143, 1);
            v144 = v143 + 1;
            if (!v106)
            {
              v138[2] = v144;
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
              v145 = objc_allocWithZone(NSError);
              v146 = String._bridgeToObjectiveCImpl()();

              v147 = [v145 initWithDomain:v146 code:2048 userInfo:{_NativeDictionary.bridged()(), a30, a31, a17, a18, a32, a33, a35, a14, a23, a26, a25, a27, a13, a19}];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v148 = [v147 domain];
              v149 = static String._unconditionallyBridgeFromObjectiveC(_:)(v148);
              v151 = v150;

              if (v149 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v151 == v152)
              {
                goto LABEL_297;
              }

              v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v153)
              {
                return swift_willThrow();
              }

LABEL_309:
              __break(1u);
            }

LABEL_308:
            __break(1u);
            goto LABEL_309;
          }

LABEL_307:
          __break(1u);
          goto LABEL_308;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    if (v42 > 2)
    {
      if (v42 != 3)
      {
        v47 = 100000;
        v84 = (result * 100000) >> 64;
        result *= 100000;
        if (v84 == result >> 63)
        {
          return result;
        }

        __break(1u);
LABEL_72:
        if (v42 == 5)
        {
LABEL_96:
          v93 = (result * 10000) >> 64;
          result *= 10000;
          if (v93 == result >> 63)
          {
            return result;
          }

          __break(1u);
          goto LABEL_98;
        }

        if (v42 != 6)
        {
          goto LABEL_100;
        }

        v85 = (result * 1000) >> 64;
        result *= 1000;
        if (v85 == result >> 63)
        {
          return result;
        }

        __break(1u);
        goto LABEL_76;
      }
    }

    else
    {
      if (v42 != 1)
      {
        if (v42 != 2)
        {
          goto LABEL_100;
        }

        v78 = (result * 10000000) >> 64;
        result *= 10000000;
        if (v78 == result >> 63)
        {
          return result;
        }

        __break(1u);
        goto LABEL_59;
      }

      v90 = (result * 100000000) >> 64;
      result *= 100000000;
      if (v90 == result >> 63)
      {
        return result;
      }

      __break(1u);
    }

    v91 = (result * 1000000) >> 64;
    result *= 1000000;
    if (v91 == result >> 63)
    {
      return result;
    }

    __break(1u);
LABEL_94:
    v92 = (result * 100) >> 64;
    result *= 100;
    if (v92 == result >> 63)
    {
      return result;
    }

    __break(1u);
    goto LABEL_96;
  }

  v52 = a11[1];
  v223 = *a11;
  v224 = v52;
  v225 = a11[2];
  *&__tp[1] = 0;
  *&__tp[9] = 0;
  outlined init with copy of DateComponents.ISO8601FormatStyle(a11, &v220);
  clock_gettime(_CLOCK_REALTIME, &__tp[1]);
  *&__tp[1] = *&__tp[1] + -978307200.0 + *&__tp[9] * 0.000000001;
  v53 = Date.ISO8601FormatStyle.format(_:)(*&__tp[1]);
  v220 = v223;
  v221 = v224;
  v222 = v225;
  outlined destroy of Date.ISO8601FormatStyle(&v220);
  *&v223 = 0;
  *(&v223 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
  MEMORY[0x1865CB0E0](object, v38);
  if (a9)
  {
    *&__tp[1] = 8250;
    *&__tp[9] = 0xE200000000000000;
    MEMORY[0x1865CB0E0](a8, a9);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v54 = *&__tp[1];
    v55 = *&__tp[9];
  }

  else
  {
    v55 = 0xE100000000000000;
    v54 = 46;
  }

  MEMORY[0x1865CB0E0](v54, v55);

  MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
  MEMORY[0x1865CB0E0](v53._countAndFlagsBits, v53._object);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  v60 = v223;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v61 = swift_allocObject();
  v62 = _objc_isTaggedPointer(@"NSDebugDescription");
  v63 = @"NSDebugDescription";
  v64 = v63;
  if (!v62)
  {
    goto LABEL_36;
  }

  v65 = _objc_getTaggedPointerTag(v63);
  switch(v65)
  {
    case 0:
      goto LABEL_66;
    case 0x16:
      result = [(__CFString *)v64 UTF8String:a30];
      if (!result)
      {
        __break(1u);
        goto LABEL_311;
      }

      v82 = String.init(utf8String:)(result);
      if (v83)
      {
LABEL_67:
        v66 = v82;
        v68 = v83;

        goto LABEL_108;
      }

      __break(1u);
LABEL_66:
      _CFIndirectTaggedPointerStringGetContents();
      v82 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v83)
      {
        [(__CFString *)v64 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v66 = *&__tp[1];
        v68 = *&__tp[9];
        goto LABEL_108;
      }

      goto LABEL_67;
    case 2:
      MEMORY[0x1EEE9AC00](v65);
      v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v68 = v67;

      goto LABEL_108;
  }

LABEL_36:
  *__tp = 0;
  *&v223 = 0;
  if (!__CFStringIsCF())
  {
    v75 = v64;
    v76 = String.init(_nativeStorage:)();
    if (v77)
    {
      v66 = v76;
      v68 = v77;

      goto LABEL_108;
    }

    *&v223 = [(__CFString *)v75 length:a30];
    if (v223)
    {
LABEL_106:
      v88 = String.init(_cocoaString:)();
      goto LABEL_107;
    }

LABEL_62:
    v66 = 0;
    v68 = 0xE000000000000000;
    goto LABEL_108;
  }

  if (!v223)
  {

    goto LABEL_62;
  }

  if (__tp[0] != 1)
  {
    goto LABEL_106;
  }

  if (__tp[1])
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v88 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_107:
  v66 = v88;
  v68 = v89;
LABEL_108:
  *(v61 + 32) = v66;
  *(v61 + 40) = v68;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 48) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v100 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v61 + 32, &v223);
  swift_setDeallocating();

  outlined destroy of (String, Any)(v61 + 32);
  swift_deallocClassInstance();
  v101 = v223;
  v102 = specialized __RawDictionaryStorage.find<A>(_:)(v223, *(&v223 + 1));
  v104 = v103;

  if (v104)
  {
    __break(1u);
    goto LABEL_302;
  }

  v100[(v102 >> 6) + 8] |= 1 << v102;
  *(v100[6] + 16 * v102) = v101;
  outlined init with take of Any(&v224, (v100[7] + 32 * v102));
  v105 = v100[2];
  v106 = __OFADD__(v105, 1);
  v107 = v105 + 1;
  if (v106)
  {
LABEL_302:
    __break(1u);
    goto LABEL_303;
  }

  v100[2] = v107;
  v108 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v109 = @"NSCocoaErrorDomain";
  v110 = v109;
  if (!v108)
  {
    goto LABEL_115;
  }

  v111 = _objc_getTaggedPointerTag(v109);
  switch(v111)
  {
    case 0:
LABEL_126:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v115)
      {
        [(__CFString *)v110 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_135;
      }

      goto LABEL_127;
    case 0x16:
      result = [(__CFString *)v110 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v114)
        {
          goto LABEL_127;
        }

        __break(1u);
        goto LABEL_126;
      }

LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
      goto LABEL_313;
    case 2:
      MEMORY[0x1EEE9AC00](v111);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_135;
  }

LABEL_115:
  *__tp = 0;
  *&v223 = 0;
  if (!__CFStringIsCF())
  {
    v112 = v110;
    String.init(_nativeStorage:)();
    if (v113 || (*&v223 = [(__CFString *)v112 length], !v223))
    {

      goto LABEL_135;
    }

    goto LABEL_134;
  }

  if (!v223)
  {
LABEL_127:

    goto LABEL_135;
  }

  if (__tp[0] != 1)
  {
LABEL_134:
    String.init(_cocoaString:)();
    goto LABEL_135;
  }

  if (__tp[1])
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_135:
  v116 = objc_allocWithZone(NSError);
  v117 = String._bridgeToObjectiveCImpl()();

  v118 = [v116 initWithDomain:v117 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v119 = [v118 domain];
  if (!v119)
  {
    goto LABEL_149;
  }

  v120 = v119;
  v121 = _objc_isTaggedPointer(v119);
  v122 = v120;
  v123 = v122;
  if ((v121 & 1) == 0)
  {
    goto LABEL_141;
  }

  v124 = _objc_getTaggedPointerTag(v122);
  switch(v124)
  {
    case 0:
      goto LABEL_153;
    case 0x16:
      result = [v123 UTF8String];
      if (!result)
      {
LABEL_316:
        __break(1u);
        goto LABEL_317;
      }

      v131 = String.init(utf8String:)(result);
      if (v132)
      {
LABEL_154:
        v125 = v131;
        v127 = v132;

        goto LABEL_267;
      }

      __break(1u);
LABEL_153:
      _CFIndirectTaggedPointerStringGetContents();
      v131 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v132)
      {
        [v123 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v125 = *&__tp[1];
        v127 = *&__tp[9];
        goto LABEL_267;
      }

      goto LABEL_154;
    case 2:
      MEMORY[0x1EEE9AC00](v124);
      v125 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v127 = v126;

      goto LABEL_268;
  }

LABEL_141:
  *__tp = 0;
  *&v223 = 0;
  if (!__CFStringIsCF())
  {
    v128 = v123;
    v129 = String.init(_nativeStorage:)();
    if (v130)
    {
      v125 = v129;
      v127 = v130;

      goto LABEL_268;
    }

    *&v223 = [v128 length];
    if (v223)
    {
LABEL_265:
      v133 = String.init(_cocoaString:)();
      goto LABEL_266;
    }

LABEL_149:
    v125 = 0;
    v127 = 0xE000000000000000;
    goto LABEL_268;
  }

  if (!v223)
  {

    goto LABEL_149;
  }

  if (__tp[0] != 1)
  {
    goto LABEL_265;
  }

  if (__tp[1])
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v133 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_266:
  v125 = v133;
  v127 = v134;
LABEL_267:

LABEL_268:
  v203 = v110;
  v204 = v203;
  if (!v108)
  {
LABEL_273:
    *__tp = 0;
    *&v223 = 0;
    if (__CFStringIsCF())
    {
      if (v223)
      {
        if (__tp[0] == 1)
        {
          if (__tp[1])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v214 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_294;
        }

LABEL_293:
        v214 = String.init(_cocoaString:)();
LABEL_294:
        v206 = v214;
        v208 = v215;
        goto LABEL_295;
      }
    }

    else
    {
      v209 = v204;
      v210 = String.init(_nativeStorage:)();
      if (v211)
      {
        v206 = v210;
        v208 = v211;

        goto LABEL_295;
      }

      *&v223 = [(__CFString *)v209 length];
      if (v223)
      {
        goto LABEL_293;
      }
    }

    v206 = 0;
    v208 = 0xE000000000000000;
    goto LABEL_295;
  }

  v205 = _objc_getTaggedPointerTag(v203);
  if (!v205)
  {
    goto LABEL_285;
  }

  if (v205 == 22)
  {
    result = [(__CFString *)v204 UTF8String];
    if (result)
    {
      v212 = String.init(utf8String:)(result);
      if (v213)
      {
LABEL_286:
        v206 = v212;
        v208 = v213;

        goto LABEL_295;
      }

      __break(1u);
LABEL_285:
      _CFIndirectTaggedPointerStringGetContents();
      v212 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v213)
      {
        [(__CFString *)v204 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v206 = *&__tp[1];
        v208 = *&__tp[9];
        goto LABEL_295;
      }

      goto LABEL_286;
    }

    goto LABEL_312;
  }

  if (v205 != 2)
  {
    goto LABEL_273;
  }

  MEMORY[0x1EEE9AC00](v205);
  v206 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v208 = v207;

LABEL_295:
  if (v125 == v206 && v127 == v208)
  {
LABEL_297:

    return swift_willThrow();
  }

  v216 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v216 & 1) == 0)
  {
    goto LABEL_305;
  }

  return swift_willThrow();
}

id specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 **a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v97 = *MEMORY[0x1E69E9840];
  v23 = *a6;
  if (*a6 >= a6[1] || (v24 = *v23, *a6 = v23 + 1, v24 != result))
  {
    v25 = a7[1];
    v94 = *a7;
    v95 = v25;
    v96 = a7[2];
    __tp.tv_nsec = 0;
    __tp.tv_sec = 0;
    outlined init with copy of DateComponents.ISO8601FormatStyle(a7, v92);
    clock_gettime(_CLOCK_REALTIME, &__tp);
    *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
    v26 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
    v92[0] = v94;
    v92[1] = v95;
    v92[2] = v96;
    outlined destroy of Date.ISO8601FormatStyle(v92);
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](a2, a3);
    if (a5)
    {
      __tp.tv_sec = 8250;
      __tp.tv_nsec = 0xE200000000000000;
      MEMORY[0x1865CB0E0](a4, a5);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      tv_sec = __tp.tv_sec;
      tv_nsec = __tp.tv_nsec;
    }

    else
    {
      tv_nsec = 0xE100000000000000;
      tv_sec = 46;
    }

    MEMORY[0x1865CB0E0](tv_sec, tv_nsec);

    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v26._countAndFlagsBits, v26._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v30 = *(&v94 + 1);
    v29 = v94;
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v32 = @"NSDebugDescription";
    v33 = v32;
    if (!isTaggedPointer)
    {
      goto LABEL_11;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v32);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v35 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v37 = v36;

          goto LABEL_27;
        }

LABEL_11:
        LOBYTE(__tp.tv_sec) = 0;
        *&v94 = 0;
        if (__CFStringIsCF())
        {
          if (v94)
          {
LABEL_26:
            v35 = String.init(_cocoaString:)();
            v37 = v43;
LABEL_27:
            v93[0] = v35;
            v93[1] = v37;
            v93[5] = MEMORY[0x1E69E6158];
            v93[2] = v29;
            v93[3] = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
            v44 = static _DictionaryStorage.allocate(capacity:)();
            outlined init with copy of (String, Any)(v93, &v94);

            outlined destroy of (String, Any)(v93);
            v45 = v94;
            v46 = specialized __RawDictionaryStorage.find<A>(_:)(v94, *(&v94 + 1));
            v48 = v47;

            if (v48)
            {
              __break(1u);
            }

            else
            {
              v44[(v46 >> 6) + 8] |= 1 << v46;
              *(v44[6] + 16 * v46) = v45;
              outlined init with take of Any(&v95, (v44[7] + 32 * v46));
              v49 = v44[2];
              v50 = __OFADD__(v49, 1);
              v51 = v49 + 1;
              if (!v50)
              {
                v44[2] = v51;
                v52 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
                v53 = @"NSCocoaErrorDomain";
                v54 = v53;
                if (!v52)
                {
LABEL_34:
                  LOBYTE(__tp.tv_sec) = 0;
                  *&v94 = 0;
                  if (!__CFStringIsCF())
                  {
                    v56 = v54;
                    String.init(_nativeStorage:)();
                    if (v57 || (*&v94 = [(__CFString *)v56 length], !v94))
                    {

                      goto LABEL_49;
                    }

                    goto LABEL_48;
                  }

                  if (v94)
                  {
LABEL_48:
                    String.init(_cocoaString:)();
LABEL_49:
                    v60 = objc_allocWithZone(NSError);
                    v61 = String._bridgeToObjectiveCImpl()();

                    v62 = [v60 initWithDomain:v61 code:2048 userInfo:_NativeDictionary.bridged()()];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v63 = [v62 domain];
                    if (!v63)
                    {
                      goto LABEL_61;
                    }

                    v64 = v63;
                    v65 = _objc_isTaggedPointer(v63);
                    v66 = v64;
                    v67 = v66;
                    if (!v65)
                    {
LABEL_55:
                      LOBYTE(__tp.tv_sec) = 0;
                      *&v94 = 0;
                      if (!__CFStringIsCF())
                      {
                        v72 = v67;
                        v73 = String.init(_nativeStorage:)();
                        if (v74)
                        {
                          v69 = v73;
                          v71 = v74;

                          goto LABEL_73;
                        }

                        *&v94 = [v72 length];
                        if (!v94)
                        {

                          v69 = 0;
                          v71 = 0xE000000000000000;
                          goto LABEL_73;
                        }

                        goto LABEL_71;
                      }

                      if (v94)
                      {
LABEL_71:
                        v69 = String.init(_cocoaString:)();
                        v71 = v77;
                        goto LABEL_72;
                      }

LABEL_61:
                      v69 = 0;
                      v71 = 0xE000000000000000;
                      goto LABEL_73;
                    }

                    v68 = _objc_getTaggedPointerTag(v66);
                    if (v68)
                    {
                      if (v68 != 22)
                      {
                        if (v68 == 2)
                        {
                          MEMORY[0x1EEE9AC00](v68);
                          v69 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v71 = v70;

LABEL_73:
                          v78 = v54;
                          v79 = v78;
                          if (!v52)
                          {
                            goto LABEL_78;
                          }

                          v80 = _objc_getTaggedPointerTag(v78);
                          if (!v80)
                          {
                            goto LABEL_88;
                          }

                          if (v80 != 22)
                          {
                            if (v80 == 2)
                            {
                              MEMORY[0x1EEE9AC00](v80);
                              v81 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                              v83 = v82;

                              goto LABEL_94;
                            }

LABEL_78:
                            LOBYTE(__tp.tv_sec) = 0;
                            *&v94 = 0;
                            if (__CFStringIsCF())
                            {
                              if (v94)
                              {
LABEL_93:
                                v81 = String.init(_cocoaString:)();
                                v83 = v89;
LABEL_94:
                                if (v69 == v81 && v71 == v83)
                                {

                                  return swift_willThrow();
                                }

                                v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v90)
                                {
                                  return swift_willThrow();
                                }

LABEL_102:
                                __break(1u);
                              }
                            }

                            else
                            {
                              v84 = v79;
                              v85 = String.init(_nativeStorage:)();
                              if (v86)
                              {
                                v81 = v85;
                                v83 = v86;

                                goto LABEL_94;
                              }

                              *&v94 = [(__CFString *)v84 length];
                              if (v94)
                              {
                                goto LABEL_93;
                              }
                            }

                            v81 = 0;
                            v83 = 0xE000000000000000;
                            goto LABEL_94;
                          }

                          result = [(__CFString *)v79 UTF8String];
                          if (result)
                          {
                            v87 = String.init(utf8String:)(result);
                            if (v88)
                            {
                              goto LABEL_89;
                            }

                            __break(1u);
LABEL_88:
                            _CFIndirectTaggedPointerStringGetContents();
                            v87 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                            if (!v88)
                            {
                              [(__CFString *)v79 mutableCopy];
                              _bridgeAnyObjectToAny(_:)();

                              swift_unknownObjectRelease();
                              swift_dynamicCast();
                              v81 = __tp.tv_sec;
                              v83 = __tp.tv_nsec;
                              goto LABEL_94;
                            }

LABEL_89:
                            v81 = v87;
                            v83 = v88;

                            goto LABEL_94;
                          }

                          goto LABEL_105;
                        }

                        goto LABEL_55;
                      }

                      result = [v67 UTF8String];
                      if (!result)
                      {
LABEL_106:
                        __break(1u);
                        return result;
                      }

                      v75 = String.init(utf8String:)(result);
                      if (v76)
                      {
                        goto LABEL_66;
                      }

                      __break(1u);
                    }

                    _CFIndirectTaggedPointerStringGetContents();
                    v75 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v76)
                    {
                      [v67 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v69 = __tp.tv_sec;
                      v71 = __tp.tv_nsec;
                      goto LABEL_72;
                    }

LABEL_66:
                    v69 = v75;
                    v71 = v76;

LABEL_72:
                    goto LABEL_73;
                  }

LABEL_44:

                  goto LABEL_49;
                }

                v55 = _objc_getTaggedPointerTag(v53);
                if (!v55)
                {
LABEL_43:
                  _CFIndirectTaggedPointerStringGetContents();
                  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v59)
                  {
                    [(__CFString *)v54 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    goto LABEL_49;
                  }

                  goto LABEL_44;
                }

                if (v55 != 22)
                {
                  if (v55 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v55);
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_49;
                  }

                  goto LABEL_34;
                }

                result = [(__CFString *)v54 UTF8String];
                if (result)
                {
                  String.init(utf8String:)(result);
                  if (v58)
                  {
                    goto LABEL_44;
                  }

                  __break(1u);
                  goto LABEL_43;
                }

LABEL_104:
                __break(1u);
LABEL_105:
                __break(1u);
                goto LABEL_106;
              }
            }

            __break(1u);
            goto LABEL_102;
          }
        }

        else
        {
          v38 = v33;
          v39 = String.init(_nativeStorage:)();
          if (v40)
          {
            v35 = v39;
            v37 = v40;

            goto LABEL_27;
          }

          *&v94 = [(__CFString *)v38 length];
          if (v94)
          {
            goto LABEL_26;
          }
        }

        v35 = 0;
        v37 = 0xE000000000000000;
        goto LABEL_27;
      }

      result = [(__CFString *)v33 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_104;
      }

      v41 = String.init(utf8String:)(result);
      if (v42)
      {
LABEL_22:
        v35 = v41;
        v37 = v42;

        goto LABEL_27;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v41 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v42)
    {
      [(__CFString *)v33 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v35 = __tp.tv_sec;
      v37 = __tp.tv_nsec;
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  return result;
}

char *CalendarCache.fixed(_:)(unsigned __int8 *a1)
{
  v3 = *a1;
  v4 = *(v1 + 8);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v4 + 24));
    if (v8)
    {
      return v8;
    }
  }

  else
  {
    os_unfair_lock_unlock((v4 + 24));
  }

  if (v3 == 7 || v3 == 0)
  {
    v10 = type metadata accessor for _CalendarGregorian();
    v11 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
    v12 = type metadata accessor for _CalendarGregorian;
    v13 = &protocol conformance descriptor for _CalendarGregorian;
  }

  else
  {
    v10 = type metadata accessor for _CalendarICU();
    v11 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
    v12 = type metadata accessor for _CalendarICU;
    v13 = &protocol conformance descriptor for _CalendarICU;
  }

  v14 = lazy protocol witness table accessor for type _CalendarICU and conformance _CalendarICU(v11, v12, v13);
  v50 = v3;
  v49[0] = 0;
  v49[1] = 0;
  v48[0] = 0;
  v48[1] = 0;
  v46 = 0;
  v47 = 1;
  v15 = (*(v14 + 16))(&v50, v49, v48, 0, 1, 0, 1, &v46, v10, v14);
  os_unfair_lock_lock((v4 + 24));
  v16 = *(v4 + 16);
  if (*(v16 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v18)
    {
      v8 = *(*(v16 + 56) + 16 * v17);
LABEL_42:
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v4 + 24));
      swift_unknownObjectRelease();
      return v8;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = *(v4 + 16);
  v20 = v49[0];
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  v23 = *(v20 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v2 = v22;
    if (*(v20 + 24) < v26)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
      v27 = v49[0];
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
      if ((v2 & 1) == (v28 & 1))
      {
        goto LABEL_21;
      }

      v21 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v27 = v20;
LABEL_21:
      if (v2)
      {
LABEL_22:
        v29 = (*(v27 + 56) + 16 * v21);
        *v29 = v15;
        v29[1] = v14;
        swift_unknownObjectRelease();
LABEL_41:
        *(v4 + 16) = v27;
        v8 = v15;
        goto LABEL_42;
      }

LABEL_40:
      specialized _NativeDictionary._insert(at:key:value:)(v21, v3, v15, v27, v10, v14);
      goto LABEL_41;
    }
  }

  v44 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd, "nC)");
  v30 = static _DictionaryStorage.copy(original:)();
  v27 = v30;
  if (!*(v20 + 16))
  {
LABEL_39:

    v21 = v44;
    if (v2)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  result = (v30 + 64);
  v32 = (v20 + 64);
  v33 = ((1 << *(v27 + 32)) + 63) >> 6;
  if (v27 != v20 || result >= &v32[8 * v33])
  {
    result = memmove(result, v32, 8 * v33);
  }

  v34 = 0;
  *(v27 + 16) = *(v20 + 16);
  v35 = 1 << *(v20 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v20 + 64);
  v38 = (v35 + 63) >> 6;
  if (v37)
  {
    do
    {
      v39 = __clz(__rbit64(v37));
      v45 = (v37 - 1) & v37;
LABEL_37:
      v42 = v39 | (v34 << 6);
      v43 = *(*(v20 + 56) + 16 * v42);
      *(*(v27 + 48) + v42) = *(*(v20 + 48) + v42);
      *(*(v27 + 56) + 16 * v42) = v43;
      result = swift_unknownObjectRetain();
      v37 = v45;
    }

    while (v45);
  }

  v40 = v34;
  while (1)
  {
    v34 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v34 >= v38)
    {
      goto LABEL_39;
    }

    v41 = *(v20 + 64 + 8 * v34);
    ++v40;
    if (v41)
    {
      v39 = __clz(__rbit64(v41));
      v45 = (v41 - 1) & v41;
      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}