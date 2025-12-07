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

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, uint64_t a3)
{
  v3 = a3;
  v5 = 0;
  v6 = *(a1 + 16);
  v82 = a1 + 32;
  v98 = v6;
  while (1)
  {
    if (v5 == v6)
    {
      _s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtSgWOi0_(__dst);
      v121[8] = __dst[8];
      v121[9] = __dst[9];
      *&v121[10] = *&__dst[10];
      v121[4] = __dst[4];
      v121[5] = __dst[5];
      v121[6] = __dst[6];
      v121[7] = __dst[7];
      v121[0] = __dst[0];
      v121[1] = __dst[1];
      v16 = v6;
      v121[2] = __dst[2];
      v121[3] = __dst[3];
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      if (v5 >= *(a1 + 16))
      {
        goto LABEL_55;
      }

      v17 = (v82 + 168 * v5);
      v18 = v17[7];
      v19 = v17[9];
      __dst[8] = v17[8];
      __dst[9] = v19;
      v20 = v17[3];
      v21 = v17[5];
      __dst[4] = v17[4];
      __dst[5] = v21;
      v22 = v17[5];
      v23 = v17[7];
      __dst[6] = v17[6];
      __dst[7] = v23;
      v24 = v17[1];
      __dst[0] = *v17;
      __dst[1] = v24;
      v25 = v17[3];
      v27 = *v17;
      v26 = v17[1];
      __dst[2] = v17[2];
      __dst[3] = v25;
      v28 = v17[9];
      v121[8] = __dst[8];
      v121[9] = v28;
      v121[4] = __dst[4];
      v121[5] = v22;
      v121[6] = __dst[6];
      v121[7] = v18;
      v121[0] = v27;
      v121[1] = v26;
      *&__dst[10] = *(v17 + 20);
      *&v121[10] = *(v17 + 20);
      v16 = v5 + 1;
      v121[2] = __dst[2];
      v121[3] = v20;
      destructiveProjectEnumData for NodePersonality.ShaderType();
      outlined init with copy of (NodeDef.Availability.Platform, NodeDef.Availability)(__dst, __src);
    }

    v119[8] = v121[8];
    v119[9] = v121[9];
    v120 = *&v121[10];
    v119[4] = v121[4];
    v119[5] = v121[5];
    v119[6] = v121[6];
    v119[7] = v121[7];
    v119[0] = v121[0];
    v119[1] = v121[1];
    v119[2] = v121[2];
    v119[3] = v121[3];
    if (_s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtSgWOg(v119) == 1)
    {

      return;
    }

    v122 = v16;
    v29 = LOBYTE(v121[0]);
    v112 = v121[0];
    *&v116[16] = *(&v121[6] + 8);
    *&v116[32] = *(&v121[7] + 8);
    v117 = *(&v121[8] + 8);
    v118 = *(&v121[9] + 8);
    *&v113[32] = *(&v121[2] + 8);
    v114 = *(&v121[3] + 8);
    v115 = *(&v121[4] + 8);
    *v116 = *(&v121[5] + 8);
    *v113 = *(v121 + 8);
    *&v113[16] = *(&v121[1] + 8);
    v30 = *v3;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(LOBYTE(v121[0]));
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_58;
    }

    v36 = v31;
    if (v30[3] < v35)
    {
      break;
    }

    if (a2)
    {
      if (v31)
      {
        goto LABEL_17;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v36)
      {
        goto LABEL_17;
      }
    }

LABEL_48:
    v66 = *v3;
    *(*v3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
    *(v66[6] + v32) = v29;
    v67 = v66[7] + 160 * v32;
    v68 = *&v113[16];
    *v67 = *v113;
    *(v67 + 16) = v68;
    v69 = *&v113[32];
    v70 = v114;
    v71 = *v116;
    *(v67 + 64) = v115;
    *(v67 + 80) = v71;
    *(v67 + 32) = v69;
    *(v67 + 48) = v70;
    v72 = *&v116[16];
    v73 = *&v116[32];
    v74 = v118;
    *(v67 + 128) = v117;
    *(v67 + 144) = v74;
    *(v67 + 96) = v72;
    *(v67 + 112) = v73;
    v75 = v66[2];
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (v76)
    {
      goto LABEL_56;
    }

    v66[2] = v77;
LABEL_3:
    a2 = 1;
    v6 = v98;
    v5 = v122;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, a2 & 1);
  v37 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
  if ((v36 & 1) != (v38 & 1))
  {
    goto LABEL_57;
  }

  v32 = v37;
  if ((v36 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_17:
  v39 = *v3;
  v40 = *(*v3 + 56) + 160 * v32;
  v41 = *(v40 + 16);
  *v106 = *v40;
  *&v106[16] = v41;
  v42 = *(v40 + 80);
  v44 = *(v40 + 32);
  v43 = *(v40 + 48);
  v108 = *(v40 + 64);
  *v109 = v42;
  *&v106[32] = v44;
  v107 = v43;
  v45 = *(v40 + 144);
  v47 = *(v40 + 96);
  v46 = *(v40 + 112);
  v110 = *(v40 + 128);
  v111 = v45;
  *&v109[16] = v47;
  *&v109[32] = v46;
  if (BYTE10(v46))
  {
    v48 = v116[42];
    if ((v116[42] & 1) == 0)
    {
      goto LABEL_50;
    }

    v96 = *&v113[8];
    v97 = *&v113[24];
    v49 = v113[40];
    v50 = v113[41];
    v104 = *&v113[42];
    v105 = *&v113[46];
    v94 = v114;
    v95 = v115;
    v51 = v116[0];
    v52 = v116[1];
    v102 = *&v116[2];
    v103 = *&v116[6];
    v92 = *&v116[8];
    v93 = *&v116[24];
    v53 = v116[40];
    v54 = v116[41];
LABEL_39:
    v62 = *(&v111 + 1);
    v63 = *(&v118 + 1);
    if (*(&v111 + 1) && *(&v118 + 1))
    {
      goto LABEL_50;
    }

    v64 = *(&v117 + 1);
    v90 = v49;
    v91 = v48;
    v88 = v53;
    v89 = v51;
    v86 = v52;
    v87 = v50;
    v85 = v54;
    v99 = v111;
    if (*(&v110 + 1))
    {
      if (*(&v117 + 1))
      {
        goto LABEL_50;
      }

      v64 = *(&v110 + 1);
      v84 = v110;
      v65 = *(&v111 + 1);
      if (!*(&v111 + 1))
      {
LABEL_46:
        v99 = v118;

        v65 = v63;
      }
    }

    else
    {
      v84 = v117;

      v65 = v62;
      if (!v62)
      {
        goto LABEL_46;
      }
    }

    v7 = v106[0];

    outlined destroy of NodeDef.Availability(v113);
    v8 = v39[7] + 160 * v32;
    v10 = *(v8 + 128);
    v9 = *(v8 + 144);
    v11 = *(v8 + 112);
    __dst[6] = *(v8 + 96);
    __dst[7] = v11;
    __dst[8] = v10;
    __dst[9] = v9;
    v13 = *(v8 + 64);
    v12 = *(v8 + 80);
    v14 = *(v8 + 32);
    __dst[3] = *(v8 + 48);
    __dst[4] = v13;
    __dst[5] = v12;
    v15 = *(v8 + 16);
    __dst[0] = *v8;
    __dst[1] = v15;
    __dst[2] = v14;
    *v8 = v7;
    *(v8 + 8) = v96;
    *(v8 + 24) = v97;
    *(v8 + 40) = v90;
    *(v8 + 41) = v87;
    *(v8 + 46) = v105;
    *(v8 + 42) = v104;
    *(v8 + 48) = v94;
    *(v8 + 64) = v95;
    *(v8 + 80) = v89;
    *(v8 + 81) = v86;
    *(v8 + 86) = v103;
    *(v8 + 82) = v102;
    *(v8 + 88) = v92;
    *(v8 + 104) = v93;
    *(v8 + 120) = v88;
    *(v8 + 121) = v85;
    *(v8 + 122) = v91;
    *(v8 + 128) = v84;
    *(v8 + 136) = v64;
    *(v8 + 144) = v99;
    *(v8 + 152) = v65;
    outlined destroy of NodeDef.Availability(__dst);
    v3 = a3;
    goto LABEL_3;
  }

  if (v116[42] & 1) == 0 && ((v106[41] | v113[41]) & 1) != 0 && ((v109[1] | v116[1]) & 1) != 0 && ((v109[41] | v116[41]))
  {
    v48 = 0;
    v51 = v109[0];
    v49 = v113[40];
    if ((v106[41] & 1) == 0)
    {
      v49 = v106[40];
    }

    v55 = v106[41] & v113[41];
    if (v106[41])
    {
      v56 = -1;
    }

    else
    {
      v56 = 0;
    }

    v57 = vdupq_n_s64(v56);
    v97 = vbslq_s8(v57, *&v113[24], *&v106[24]);
    v96 = vbslq_s8(v57, *&v113[8], *&v106[8]);
    if (v109[1])
    {
      v51 = v116[0];
      v58 = -1;
    }

    else
    {
      v58 = 0;
    }

    v59 = vdupq_n_s64(v58);
    v94 = vbslq_s8(v59, v114, v107);
    v95 = vbslq_s8(v59, v115, v108);
    if (v109[41])
    {
      v53 = v116[40];
    }

    else
    {
      v53 = v109[40];
    }

    if (v109[41])
    {
      v60 = -1;
    }

    else
    {
      v60 = 0;
    }

    v61 = vdupq_n_s64(v60);
    v92 = vbslq_s8(v61, *&v116[8], *&v109[8]);
    v93 = vbslq_s8(v61, *&v116[24], *&v109[24]);
    v50 = v55 & 1;
    LOBYTE(__src[0]) = v55 & 1;
    v52 = v109[1] & v116[1] & 1;
    v54 = v109[41] & v116[41] & 1;
    LOBYTE(__dst[0]) = 0;
    goto LABEL_39;
  }

LABEL_50:
  __src[6] = *&v109[16];
  __src[7] = *&v109[32];
  __src[8] = v110;
  __src[9] = v111;
  __src[2] = *&v106[32];
  __src[3] = v107;
  __src[4] = v108;
  __src[5] = *v109;
  __src[0] = *v106;
  __src[1] = *&v106[16];
  __src[16] = *&v116[16];
  __src[17] = *&v116[32];
  __src[18] = v117;
  __src[19] = v118;
  __src[12] = *&v113[32];
  __src[13] = v114;
  __src[14] = v115;
  __src[15] = *v116;
  __src[10] = *v113;
  __src[11] = *&v113[16];
  memcpy(__dst, __src, sizeof(__dst));
  _s11ShaderGraph14MaterialXErrorOWOi2_(__dst);
  lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
  v78 = swift_allocError();
  memcpy(v79, __dst, 0x140uLL);
  swift_willThrow();
  outlined init with copy of NodeDef.Availability(v106, __dst);
  outlined init with copy of NodeDef.Availability(v113, __dst);

  *&__src[0] = v78;
  v80 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined destroy of NodeDef.Availability(v113);

    return;
  }

LABEL_58:
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x266771590](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t specialized static NodeDef.Availability.AvailabilityKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 114))
  {
    return *(a2 + 114) & 1;
  }

  if (*(a2 + 114))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v11 = *(a1 + 96);
  v10 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 113);
  v14 = *(a1 + 73);
  v15 = *(a2 + 56);
  v16 = *(a2 + 96);
  v17 = *(a2 + 33);
  if (*(a1 + 33))
  {
    goto LABEL_6;
  }

  if ((*(a2 + 33) & 1) != 0 || *a1 != *a2)
  {
    goto LABEL_45;
  }

  v20 = *(a1 + 24);
  v19 = *(a2 + 16);
  v17 = *(a2 + 32);
  if (*(a1 + 16))
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v19 & 1 | (*(a1 + 8) != *(a2 + 8)))
  {
    goto LABEL_45;
  }

  if (*(a1 + 32))
  {
LABEL_6:
    if ((v17 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v18 = 0;
    if ((*(a2 + 32) & 1) != 0 || v20 != *(a2 + 24))
    {
      return v18 & 1;
    }
  }

  if (v14)
  {
    if ((*(a2 + 73) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if ((*(a2 + 73) & 1) != 0 || v4 != *(a2 + 40))
    {
      goto LABEL_45;
    }

    if (v6)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v15 & 1 | (v3 != *(a2 + 48)))
    {
      goto LABEL_45;
    }

    if (v7)
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v18 = 0;
      if ((*(a2 + 72) & 1) != 0 || v5 != *(a2 + 64))
      {
        return v18 & 1;
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    if ((*(a2 + 113) & 1) != 0 || v9 != *(a2 + 80))
    {
      goto LABEL_45;
    }

    if (v11)
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v16 & 1 | (v8 != *(a2 + 88)))
    {
      goto LABEL_45;
    }

    if (v12)
    {
      if (*(a2 + 112))
      {
        goto LABEL_11;
      }
    }

    else if ((*(a2 + 112) & 1) == 0 && v10 == *(a2 + 104))
    {
      goto LABEL_11;
    }

LABEL_45:
    v18 = 0;
    return v18 & 1;
  }

  if ((*(a2 + 113) & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_11:
  v18 = 1;
  return v18 & 1;
}

BOOL specialized static NodeDef.Availability.PlatformVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 32) & 1) != 0;
}

uint64_t specialized static NodeDef.Availability.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = 5459817;
  v5 = *a1;
  if (v5 > 2)
  {
    v10 = 0xE800000000000000;
    v11 = 0x534F6E6F69736976;
    if (v5 != 4)
    {
      v11 = 0x4B7974696C616572;
      v10 = 0xEA00000000007469;
    }

    if (v5 == 3)
    {
      v8 = 1397716596;
    }

    else
    {
      v8 = v11;
    }

    if (v5 == 3)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v7 = 0x534F63616DLL;
    if (v5 != 1)
    {
      v7 = 0x534F6863746177;
      v6 = 0xE700000000000000;
    }

    if (*a1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 5459817;
    }

    if (v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE300000000000000;
    }
  }

  v12 = 0xE300000000000000;
  v13 = 0xE400000000000000;
  v14 = *a2;
  v15 = 1397716596;
  v16 = 0xE800000000000000;
  v17 = 0x534F6E6F69736976;
  if (v14 != 4)
  {
    v17 = 0x4B7974696C616572;
    v16 = 0xEA00000000007469;
  }

  if (v14 != 3)
  {
    v15 = v17;
    v13 = v16;
  }

  v18 = 0xE500000000000000;
  v19 = 0x534F63616DLL;
  if (v14 != 1)
  {
    v19 = 0x534F6863746177;
    v18 = 0xE700000000000000;
  }

  if (*a2)
  {
    v4 = v19;
    v12 = v18;
  }

  if (*a2 <= 2u)
  {
    v20 = v4;
  }

  else
  {
    v20 = v15;
  }

  if (*a2 <= 2u)
  {
    v21 = v12;
  }

  else
  {
    v21 = v13;
  }

  if (v8 == v20 && v9 == v21)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 88);
  v39[4] = *(a1 + 72);
  v39[5] = v23;
  v40[0] = *(a1 + 104);
  *(v40 + 15) = *(a1 + 119);
  v24 = *(a1 + 24);
  v39[0] = *(a1 + 8);
  v39[1] = v24;
  v25 = *(a1 + 56);
  v39[2] = *(a1 + 40);
  v39[3] = v25;
  v26 = *(a2 + 8);
  v27 = *(a2 + 24);
  v28 = *(a2 + 56);
  v37[2] = *(a2 + 40);
  v37[3] = v28;
  v37[0] = v26;
  v37[1] = v27;
  v29 = *(a2 + 72);
  v30 = *(a2 + 88);
  v31 = *(a2 + 104);
  *&v38[15] = *(a2 + 119);
  v37[5] = v30;
  *v38 = v31;
  v37[4] = v29;
  if (specialized static NodeDef.Availability.AvailabilityKind.== infix(_:_:)(v39, v37))
  {
    v32 = *(a1 + 17);
    v33 = *(a2 + 17);
    if (v32)
    {
      if (!v33 || (*(a1 + 16) != *(a2 + 16) || v32 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v33)
    {
      return 0;
    }

    v34 = *(a1 + 19);
    v35 = *(a2 + 19);
    if (v34)
    {
      if (v35 && (*(a1 + 18) == *(a2 + 18) && v34 == v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v35)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1 < *a2;
  if (*a1 != *a2)
  {
    goto LABEL_9;
  }

  v3 = *(a2 + 16);
  if (*(a1 + 16))
  {
    return (v3 ^ 1) & 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v2 = v5 < v6;
  if (v5 == v6)
  {
    v3 = *(a2 + 32);
    if (*(a1 + 32))
    {
      return (v3 ^ 1) & 1;
    }

    return (*(a1 + 24) < *(a2 + 24)) & ~v3;
  }

  else
  {
LABEL_9:
    v7 = v2;
    return v7 & 1;
  }
}

unint64_t specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v5 = a5;
  v6 = a2 >> 14;
  if (a1 >> 14 >= a2 >> 14)
  {
    v25 = 1;
    v12 = a1 >> 14;
LABEL_9:
    result = Substring.subscript.getter();
    if (v6 >= v12)
    {
      v16 = v13;
      v17 = v14;
      v18 = result;
      v19 = v15;
      result = Substring.subscript.getter();
      *v5 = v18;
      *(v5 + 8) = v16;
      *(v5 + 16) = v17;
      *(v5 + 24) = v19;
      *(v5 + 32) = result;
      *(v5 + 40) = v20;
      *(v5 + 48) = v21;
      *(v5 + 56) = v22;
      *(v5 + 64) = v25 & 1;
      return result;
    }

LABEL_12:
    __break(1u);
  }

  else
  {
    v24 = a1 >> 14;
    v7 = a1 >> 14;
    while (1)
    {
      v8 = Substring.subscript.getter();
      result = specialized Collection.first.getter(v8, v9);
      if ((result & 0x100000000) != 0)
      {
        break;
      }

      result = CharacterSet.contains(_:)();
      v11 = result;
      if ((result & 1) == 0)
      {
        result = Substring.index(after:)();
        v7 = result >> 14;
        if (result >> 14 < v6)
        {
          continue;
        }
      }

      if (v7 >= v24)
      {
        v25 = v11 ^ 1;
        v12 = v7;
        v5 = a5;
        goto LABEL_9;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized static NodeDef.Availability.MaterialXAttributeParser.nextToken(in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a5;
  v10 = type metadata accessor for CharacterSet();
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - v12;
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v66 - v19;
  v21 = a2 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    v75 = MEMORY[0x266771D20](0, 0xE000000000000000, v18);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v29 = a3;
    v30 = 1;
LABEL_3:
    v31 = v78;
LABEL_28:
    *v31 = v75;
    *(v31 + 8) = v23;
    *(v31 + 16) = v25;
    *(v31 + 24) = v27;
    *(v31 + 32) = a1;
    *(v31 + 40) = a2;
    *(v31 + 48) = v29;
    *(v31 + 56) = a4;
    *(v31 + 64) = v30;
    return result;
  }

  v69 = (a1 >> 14);
  v70 = v5;
  v71 = v17;
  v72 = v15;
  v74 = a1;
  v75 = v16;
  v76 = a3;
  v73 = a4;
  v33 = Substring.subscript.getter();
  v34 = v32;
  v35 = a2;
  if (v33 == 34 && v32 == 0xE100000000000000 || ((v45 = _stringCompareWithSmolCheck(_:_:expecting:)(), v33 == 39) ? (v46 = v34 == 0xE100000000000000) : (v46 = 0), (v35 = a2, !v46) ? (v47 = 0) : (v47 = 1), (v45 & 1) != 0 || (v47 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v36 = v73;
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v37)
    {
      result = v35;
    }

    if (v21 < result >> 14)
    {
      __break(1u);
    }

    else
    {
      v38 = Substring.subscript.getter();
      v40 = v39;
      v71 = v35;
      _ss10SetAlgebraPsEyxqd__ncSTRd__7ElementQyd__ACRtzlufC10Foundation09CharacterA0V_SS17UnicodeScalarViewVTt1g5(v33, v34);
      specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)(v38, v40, v77);
      v41 = v77[5];
      v68 = v77[6];
      v42 = v77[8];

      (*(v75 + 8))(v20, v72);

      if (v42)
      {

        v77[0] = MEMORY[0x2667714E0](v74, v71, v76, v36);
        v77[1] = v43;
        _s11ShaderGraph14MaterialXErrorOWOi0_(v77);
        lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
        swift_allocError();
        memcpy(v44, v77, 0x140uLL);
        return swift_willThrow();
      }

      result = Substring.index(after:)();
      if (v69 <= result >> 14)
      {
        v75 = Substring.subscript.getter();
        v76 = v48;
        v71 = v49;
        v74 = v50;
        result = Substring.index(_:offsetBy:limitedBy:)();
        if (v51)
        {
          result = v41;
        }

        if (v41 >> 14 >= result >> 14)
        {
          a1 = Substring.subscript.getter();
          a2 = v52;
          v29 = v53;
          a4 = v54;

          v30 = 0;
          v25 = v71;
          v31 = v78;
          v23 = v76;
          v27 = v74;
          goto LABEL_28;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v33 == 59 && v34 == 0xE100000000000000)
  {
  }

  else
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v55 & 1) == 0)
    {
      static CharacterSet.whitespacesAndNewlines.getter();
      v77[0] = &outlined read-only object #0 of static NodeDef.Availability.MaterialXAttributeParser.nextToken(in:);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays7UnicodeO6ScalarVGMd, &_sSays7UnicodeO6ScalarVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Unicode.Scalar] and conformance [A], &_sSays7UnicodeO6ScalarVGMd, &_sSays7UnicodeO6ScalarVGMR, MEMORY[0x277D83970]);
      v63 = v71;
      v64 = v72;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v67 = v20;
      CharacterSet.union(_:)();
      v65 = *(v75 + 8);
      v69 = v65;
      v65(v63, v64);
      v65(v13, v64);
      specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)(v74, a2, v77);
      v23 = v77[1];
      v75 = v77[0];
      v27 = v77[3];
      v71 = v77[2];
      a1 = v77[4];
      a2 = v77[5];
      v29 = v77[6];
      a4 = v77[7];
      v30 = v77[8];
      result = v69(v67, v72);
      v25 = v71;
      goto LABEL_3;
    }
  }

  v75 = MEMORY[0x266771D20](59, 0xE100000000000000);
  v23 = v56;
  v71 = v57;
  v27 = v58;
  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v59)
  {
    result = a2;
  }

  if (v21 >= result >> 14)
  {
    result = Substring.subscript.getter();
    a1 = result;
    a2 = v60;
    v29 = v61;
    a4 = v62;
    v30 = 0;
    v25 = v71;
    v31 = v78;
    goto LABEL_28;
  }

LABEL_38:
  __break(1u);
  return result;
}

char *specialized static NodeDef.Availability.MaterialXAttributeParser.tokenize(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = type metadata accessor for CharacterSet();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v36 - v9;

  v10 = MEMORY[0x266771D20](a1, a2);
  v12 = v11;
  v52 = v13;
  v37 = (v6 + 8);
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v43 = v14;
    v44 = v3;
    v15 = v38;
    static CharacterSet.whitespacesAndNewlines.getter();
    v16 = v39;
    CharacterSet.inverted.getter();
    v17 = *v37;
    v18 = v40;
    (*v37)(v15, v40);
    specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)(v10, v12, v45);
    v19 = v47;
    v42 = v46;
    v20 = v48;
    v21 = v49;
    v22 = v50;
    v41 = v51;

    v17(v16, v18);

    if (v41)
    {
      v52 = v22;
      v14 = v43;
LABEL_11:

      return v14;
    }

    v23 = v44;
    specialized static NodeDef.Availability.MaterialXAttributeParser.nextToken(in:)(v19, v20, v21, v22, v45);
    v3 = v23;
    v14 = v43;
    if (v23)
    {
      break;
    }

    v24 = v45[0];
    v25 = v45[1];
    v26 = v45[2];
    v27 = v46;
    v44 = v47;
    v42 = v48;
    v52 = v50;
    v28 = v51;

    v29 = MEMORY[0x2667714E0](v24, v25, v26, v27);
    v31 = v30;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v33 = *(v14 + 2);
    v32 = *(v14 + 3);
    if (v33 >= v32 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v14);
    }

    *(v14 + 2) = v33 + 1;
    v34 = &v14[16 * v33];
    *(v34 + 4) = v29;
    *(v34 + 5) = v31;
    v10 = v44;
    v12 = v42;
    if (v28)
    {
      goto LABEL_11;
    }
  }

  return v14;
}

unint64_t specialized NodeDef.Availability.Platform.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodeDef.Availability.Platform.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t specialized NodeDef.Availability.PlatformVersion.init(versionString:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v46 - v12;
  if (one-time initialization token for platformVersionRegex != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgA4DtGMd, &_s17_StringProcessing5RegexVySs_S2sSgA4DtGMR);
  __swift_project_value_buffer(v13, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
  Regex.firstMatch(in:)();
  if (v3)
  {
  }

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Regex<(Substring, Substring, Substring?, Substring?, Substring?, Substring?, Substring?)>.Match?(v9);
    v55[0] = a1;
    v55[1] = a2;
    _s11ShaderGraph14MaterialXErrorOWOi_(v55);
    lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
    swift_allocError();
    memcpy(v15, v55, 0x140uLL);
    return swift_willThrow();
  }

  v48 = a3;
  v50 = v11;
  (*(v11 + 32))(v56, v9, v10);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v17 = v51;
  v16 = v52;
  v18 = v54;
  if (!((v52 ^ v51) >> 14))
  {

    goto LABEL_12;
  }

  v49 = v10;
  v19 = v53;
  v20 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v51, v52, v53, v54, 10);
  if ((v21 & 0x100) == 0)
  {
    v22 = v21;
    v47 = v20;

    v10 = v49;
    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v55[0] = a1;
    v55[1] = a2;
    _s11ShaderGraph14MaterialXErrorOWOi_(v55);
    lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
    swift_allocError();
    memcpy(v25, v55, 0x140uLL);
    swift_willThrow();
    return (*(v50 + 8))(v56, v10);
  }

  v47 = specialized _parseInteger<A, B>(ascii:radix:)(v17, v16, v19, v18, 10);
  v24 = v23;

  v10 = v49;
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_13:
  v26 = v56;

  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v27 = v55[3];
  if (v55[3])
  {
    v28 = v55[0];
    v29 = v55[1];
    if ((v55[1] ^ v55[0]) >> 14)
    {
      v30 = v55[2];
      v31 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v55[0], v55[1], v55[2], v55[3], 10);
      LODWORD(v49) = v32;
      if ((v32 & 0x100) != 0)
      {

        v33 = specialized _parseInteger<A, B>(ascii:radix:)(v28, v29, v30, v27, 10);
        LODWORD(v28) = v35;
        swift_bridgeObjectRelease_n();
        v26 = v56;
      }

      else
      {
        v33 = v31;

        v26 = v56;
        LODWORD(v28) = v49;
      }

      if (v28)
      {
        v34 = 0;
      }

      else
      {
        v34 = v33;
      }
    }

    else
    {

      v34 = 0;
      LODWORD(v28) = 1;
      v26 = v56;
    }
  }

  else
  {
    v34 = 0;
    LODWORD(v28) = 1;
  }

  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v36 = v55[3];
  if (v55[3])
  {
    v46 = v34;
    LODWORD(v49) = v28;
    v37 = v55[0];
    v28 = v55[1];
    if ((v55[1] ^ v55[0]) >> 14)
    {
      v38 = v55[2];
      v39 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v55[0], v55[1], v55[2], v55[3], 10);
      if ((v40 & 0x100) != 0)
      {

        v43 = specialized _parseInteger<A, B>(ascii:radix:)(v37, v28, v38, v36, 10);
        v41 = v45;

        v42 = v48;
        LOBYTE(v28) = v49;
        v34 = v46;
      }

      else
      {
        v41 = v40;
        v42 = v48;
        LOBYTE(v28) = v49;
        v34 = v46;
        v43 = v39;
      }

      (*(v50 + 8))(v56, v10);

      if (v41)
      {
        v44 = 0;
      }

      else
      {
        v44 = v43;
      }
    }

    else
    {
      (*(v50 + 8))(v56, v10);

      v44 = 0;
      v41 = 1;
      v42 = v48;
      LOBYTE(v28) = v49;
      v34 = v46;
    }
  }

  else
  {
    result = (*(v50 + 8))(v26, v10);
    v44 = 0;
    v41 = 1;
    v42 = v48;
  }

  *v42 = v47;
  *(v42 + 8) = v34;
  *(v42 + 16) = v28 & 1;
  *(v42 + 24) = v44;
  *(v42 + 32) = v41 & 1;
  return result;
}

uint64_t specialized static NodeDef.Availability.MaterialXAttributeParser.createAvailabilities(platformAttributeTokens:)(uint64_t a1, uint64_t a2, int64_t a3, void *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v92 - v10;
  v141 = a1;
  v142 = a2;
  v143 = a3;
  v144 = a4;
  v12 = specialized Collection<>.popFirst()();
  if (!v13)
  {
    _s11ShaderGraph14MaterialXErrorOWOi3_(v140);
    lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
    v23 = swift_allocError();
    memcpy(v24, v140, 0x140uLL);
    swift_willThrow();
    swift_unknownObjectRetain();
    goto LABEL_99;
  }

  v14 = v12;
  v15 = v13;
  if (v12 == 42 && v13 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_unknownObjectRetain();
    v16 = &outlined read-only object #0 of one-time initialization function for all;
  }

  else
  {
    swift_unknownObjectRetain();

    v162._countAndFlagsBits = v14;
    v162._object = v15;
    v30 = specialized NodeDef.Availability.Platform.init(rawValue:)(v162);
    if (v30 == 6)
    {
      v140[0] = v14;
      v140[1] = v15;
      _s11ShaderGraph14MaterialXErrorOWOi1_(v140);
      lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
      v23 = swift_allocError();
      memcpy(v31, v140, 0x140uLL);
      swift_willThrow();
      goto LABEL_99;
    }

    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_265F1F670;
    *(v33 + 32) = v32;
    v16 = v33;
  }

  v17 = v143;
  v131 = v144;
  v18 = v144 >> 1;
  v114 = v16;
  if (v143 == v144 >> 1)
  {
    swift_beginAccess();
    v112 = 0;
    v113 = 0;
    v19 = 0;
    v20 = 0;
    v111 = 0;
    v100 = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
    v104 = 0;
    v105 = 0;
    v102 = 0;
    v103 = 0;
    v109 = 0;
    v110 = 0;
    v107 = 0;
    v108 = 0;
    v21 = 0;
    v22 = 1;
    v95 = 0;
    v96 = 1;
    v133 = 1;
LABEL_87:

LABEL_88:
    v72 = v16[2];
    if (v72)
    {
      v139 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
      v94 = v21;
      v161 = v72 - 1;
      v23 = v139;
      v73 = 32;
      v92 = v22 & 1;
      v93 = v133 & 1;
      v74 = v20;
      v115 = v19;
      v75 = v19;
      if (v111)
      {
        goto LABEL_91;
      }

LABEL_90:
      LODWORD(v133) = 0;
      LOBYTE(v134) = v93;
      v138 = v92;
      v118 = v93 << 8;
      v119 = v92 << 8;
      v131 = v109;
      v132 = v110;
      v130 = v108;
      v128 = v107;
      v126 = v104;
      *&v127 = v105;
      LODWORD(v129) = v96 & 1;
      v137 = v96 & 1;
      v124 = v102;
      v125 = v103;
      LOBYTE(v136[0]) = 0;
      v122 = v100;
      v123 = v101;
      v120 = v98;
      v121 = v99;
      v117 = v97;
      v76 = v94;
      v116 = v95;
      while (1)
      {
        v77 = v73;
        v78 = *(v16 + v73);
        v139 = v23;
        v80 = *(v23 + 16);
        v79 = *(v23 + 24);

        if (v80 >= v79 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1);
          v23 = v139;
        }

        *(v23 + 16) = v80 + 1;
        v81 = v23 + 160 * v80;
        *(v81 + 32) = v78;
        v82 = v118 | v76;
        v83 = v119 | v116;
        v84 = *(v136 + 3);
        v85 = v117 | (v129 << 8);
        *(v81 + 33) = v136[0];
        *(v81 + 36) = v84;
        v86 = v131;
        *(v81 + 40) = v132;
        *(v81 + 48) = v86;
        v87 = v128;
        *(v81 + 56) = v130;
        *(v81 + 64) = v87;
        *(v81 + 72) = v82;
        *(v81 + 80) = v127;
        *(v81 + 88) = v126;
        *(v81 + 96) = v125;
        *(v81 + 104) = v124;
        *(v81 + 112) = v83;
        v88 = v122;
        *(v81 + 120) = v123;
        *(v81 + 128) = v88;
        v89 = v120;
        *(v81 + 136) = v121;
        *(v81 + 144) = v89;
        *(v81 + 152) = v85;
        *(v81 + 154) = v133;
        LODWORD(v89) = v134;
        *(v81 + 159) = v135;
        *(v81 + 155) = v89;
        v90 = v112;
        *(v81 + 160) = v113;
        *(v81 + 168) = v74;
        *(v81 + 176) = v90;
        *(v81 + 184) = v75;
        if (!v161)
        {
          break;
        }

        --v161;
        v73 = v77 + 1;
        v16 = v114;
        if ((v111 & 1) == 0)
        {
          goto LABEL_90;
        }

LABEL_91:
        v131 = 0;
        v132 = 0;
        v130 = 0;
        v128 = 0;
        v126 = 0;
        *&v127 = 0;
        v124 = 0;
        v125 = 0;
        v122 = 0;
        v123 = 0;
        v120 = 0;
        v121 = 0;
        v117 = 0;
        LODWORD(v129) = 0;
        v116 = 0;
        v118 = 0;
        v119 = 0;
        v76 = 0;
        LODWORD(v133) = 1;
      }
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

LABEL_99:
    swift_unknownObjectRelease();
    return v23;
  }

  if (v143 >= (v144 >> 1))
  {
    goto LABEL_105;
  }

  if (__OFSUB__(v18, v143))
  {
    goto LABEL_106;
  }

  v132 = v142;
  v133 = v144 >> 1;
  v128 = v15;
  if (v18 - v143 != 1)
  {
    goto LABEL_21;
  }

  v15 = v16;
  v25 = (v142 + 16 * v143);
  v4 = *v25;
  v16 = v25[1];
  v26 = one-time initialization token for platformVersionRegex;

  if (v26 != -1)
  {
    goto LABEL_107;
  }

LABEL_13:
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgA4DtGMd, &_s17_StringProcessing5RegexVySs_S2sSgA4DtGMR);
  __swift_project_value_buffer(v27, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
  v28 = v106;
  Regex.wholeMatch(in:)();
  if (v28)
  {

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMR);
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    v106 = 0;
  }

  else
  {
    v106 = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMR);
    if ((*(*(v34 - 8) + 48))(v11, 1, v34) != 1)
    {

      outlined destroy of Regex<(Substring, Substring, Substring?, Substring?, Substring?, Substring?, Substring?)>.Match?(v11);
      v71 = v106;
      specialized NodeDef.Availability.PlatformVersion.init(versionString:)(v4, v16, v145);
      v106 = v71;
      if (v71)
      {
        goto LABEL_110;
      }

      v111 = 0;
      v112 = 0;
      v113 = 0;
      v19 = 0;
      v20 = 0;
      v100 = 0;
      v101 = 0;
      v98 = 0;
      v99 = 0;
      v97 = 0;
      v104 = 0;
      v105 = 0;
      v102 = 0;
      v103 = 0;
      v133 = 0;
      v109 = v145[1];
      v110 = v145[0];
      v107 = v147;
      v108 = v146;
      v21 = v148;
      v95 = 0;
      v96 = 1;
      v22 = 1;
      v16 = v15;
      goto LABEL_88;
    }
  }

  outlined destroy of Regex<(Substring, Substring, Substring?, Substring?, Substring?, Substring?, Substring?)>.Match?(v11);
LABEL_21:
  v16 = v131;
  v35 = 1;
  swift_beginAccess();
  v11 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v129 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v111 = 0;
  v4 = 0;
  v112 = 0;
  v113 = 0;
  v115 = 0;
  *&v36 = 136315138;
  v127 = v36;
  LODWORD(v130) = 1;
  v96 = 1;
  v38 = v132;
  v37 = v133;
  while (1)
  {
    if (v17 >= v37)
    {
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      swift_once();
      goto LABEL_13;
    }

    v161 = v4;
    v39 = (v38 + 16 * v17);
    v40 = *v39;
    v4 = v39[1];
    v23 = v141;
    v15 = v17 + 1;
    v142 = v38;
    v143 = v17 + 1;
    v144 = v16;
    if (v40 != 0x6375646F72746E69 || v4 != 0xEA00000000006465)
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v38 = v132;
      v37 = v133;
      if ((v42 & 1) == 0)
      {
        break;
      }
    }

    if (v15 == v37)
    {
      LOBYTE(v11) = 0;
      v107 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v35 = 1;
      goto LABEL_85;
    }

    if (v15 >= v37)
    {
      goto LABEL_103;
    }

    v43 = (v38 + 16 * v15);
    v45 = *v43;
    v44 = v43[1];
    v15 = v17 + 2;
    v141 = v23;
    v142 = v38;
    v143 = v17 + 2;
    v144 = v16;
    swift_bridgeObjectRetain_n();
    v46 = v106;
    specialized NodeDef.Availability.PlatformVersion.init(versionString:)(v45, v44, v149);
    if (v46)
    {
      goto LABEL_80;
    }

    v109 = v149[1];
    v110 = v149[0];
    v108 = v150;
    v106 = 0;
    v107 = v151;
    v11 = v152;

    v35 = 0;
LABEL_32:
    v4 = v161;
LABEL_33:
    v38 = v132;
    v37 = v133;
LABEL_34:
    v17 = v15;
    if (v15 == v37)
    {
      goto LABEL_86;
    }
  }

  v47 = v40 == 0x7461636572706564 && v4 == 0xEA00000000006465;
  if (v47 || (v48 = _stringCompareWithSmolCheck(_:_:expecting:)(), v38 = v132, v37 = v133, (v48 & 1) != 0))
  {
    if (v15 != v37)
    {
      if (v15 >= v37)
      {
        goto LABEL_104;
      }

      v49 = (v38 + 16 * v15);
      v51 = *v49;
      v50 = v49[1];
      v15 = v17 + 2;
      v141 = v23;
      v142 = v38;
      v143 = v17 + 2;
      v144 = v16;
      swift_bridgeObjectRetain_n();
      v52 = v106;
      specialized NodeDef.Availability.PlatformVersion.init(versionString:)(v51, v50, v153);
      if (v52)
      {
LABEL_80:
        swift_unknownObjectRelease();

        return v23;
      }

      v105 = v153[0];
      v106 = 0;
      v103 = v154;
      v104 = v153[1];
      v102 = v155;
      v129 = v156;

      LODWORD(v130) = 0;
      v4 = v161;
      v16 = v131;
      goto LABEL_33;
    }

    v129 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    LODWORD(v130) = 1;
LABEL_85:
    v4 = v161;
LABEL_86:
    v133 = v35;
    v21 = v11;
    v20 = v4;
    v95 = v129;
    v16 = v114;
    v19 = v115;
    v22 = v130;
    goto LABEL_87;
  }

  if (v40 != 0x6574656C6F73626FLL || v4 != 0xE900000000000064)
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v38 = v132;
    v37 = v133;
    if ((v53 & 1) == 0)
    {
      if (v40 == 0x64656D616E6572 && v4 == 0xE700000000000000 || (v58 = _stringCompareWithSmolCheck(_:_:expecting:)(), v38 = v132, v37 = v133, (v58 & 1) != 0))
      {
        if (v15 == v37)
        {
          v113 = 0;
          v4 = 0;
          v15 = v37;
        }

        else
        {
          if (v15 >= v37)
          {
            goto LABEL_108;
          }

          v59 = (v38 + 16 * v15);
          v4 = v59[1];
          v113 = *v59;
          v15 = v17 + 2;
          v141 = v23;
          v142 = v38;
          v143 = v17 + 2;
          v144 = v16;
        }

        goto LABEL_33;
      }

      if (v40 == 0x6567617373656DLL && v4 == 0xE700000000000000 || (v60 = _stringCompareWithSmolCheck(_:_:expecting:)(), v38 = v132, v37 = v133, (v60 & 1) != 0))
      {
        if (v15 == v37)
        {
          v112 = 0;
          v61 = 0;
          v15 = v37;
        }

        else
        {
          if (v15 >= v37)
          {
            goto LABEL_109;
          }

          v62 = (v38 + 16 * v15);
          v61 = v62[1];
          v112 = *v62;
          v15 = v17 + 2;
          v141 = v23;
          v142 = v38;
          v143 = v17 + 2;
          v144 = v16;
        }

        v115 = v61;
      }

      else
      {
        if (v40 == 0x616C696176616E75 && v4 == 0xEB00000000656C62)
        {
          v111 = 1;
          v4 = v161;
          goto LABEL_34;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v111 = 1;
        }

        else
        {
          v63 = one-time initialization token for logger;

          if (v63 != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          __swift_project_value_buffer(v64, logger);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            LODWORD(v125) = v66;
            v68 = v67;
            v126 = swift_slowAlloc();
            v139 = v126;
            *v68 = v127;
            v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v4, &v139);

            *(v68 + 4) = v69;
            _os_log_impl(&dword_265D7D000, v65, v125, "Could not parse platform availability attribute '%s'.", v68, 0xCu);
            v70 = v126;
            __swift_destroy_boxed_opaque_existential_1Tm(v126);
            MEMORY[0x266773120](v70, -1, -1);
            MEMORY[0x266773120](v68, -1, -1);
          }

          else
          {
          }
        }
      }

      goto LABEL_32;
    }
  }

  if (v15 == v37)
  {
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v96 = 1;
    goto LABEL_85;
  }

  v126 = v11;
  if (v15 < v37)
  {
    v54 = (v38 + 16 * v15);
    v56 = *v54;
    v55 = v54[1];
    v15 = v17 + 2;
    v141 = v23;
    v142 = v38;
    v143 = v17 + 2;
    v144 = v16;
    swift_bridgeObjectRetain_n();
    v57 = v106;
    specialized NodeDef.Availability.PlatformVersion.init(versionString:)(v56, v55, v157);
    if (v57)
    {
      goto LABEL_80;
    }

    v106 = 0;
    v100 = v157[1];
    v101 = v157[0];
    v99 = v158;
    v98 = v159;
    v97 = v160;

    v96 = 0;
    v4 = v161;
    v11 = v126;
    goto LABEL_33;
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized static NodeDef.Availability.MaterialXAttributeParser.tokenize(_:)(a1, a2);
  if (v2)
  {
    return v3;
  }

  v20[0] = 59;
  v20[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v4);
  v19[2] = v20;
  v6 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), v19, v5, v20);
  v7 = *(v6 + 16);
  if (!v7)
  {

    v10 = MEMORY[0x277D84F90];
LABEL_11:
    v3 = _s11ShaderGraph7NodeDefV12AvailabilityV24MaterialXAttributeParserV9reconcileySayAEGxKSTRzAE7ElementRtzlFZs15FlattenSequenceVySayAIGG_Tt0g5(v10);

    return v3;
  }

  v20[0] = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v9 = 0;
  v10 = v20[0];
  v11 = (v6 + 56);
  while (v9 < *(v6 + 16))
  {
    v12 = *(v11 - 2);
    v13 = *(v11 - 1);
    v14 = *v11;
    v15 = swift_unknownObjectRetain();
    v16 = specialized static NodeDef.Availability.MaterialXAttributeParser.createAvailabilities(platformAttributeTokens:)(v15, v12, v13, v14);
    result = swift_unknownObjectRelease();
    v20[0] = v10;
    v18 = *(v10 + 16);
    v17 = *(v10 + 24);
    if (v18 >= v17 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v10 = v20[0];
    }

    ++v9;
    *(v10 + 16) = v18 + 1;
    *(v10 + 8 * v18 + 32) = v16;
    v11 += 4;
    if (v7 == v9)
    {

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static NodeDef.available(for:in:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = (a3 + 32); ; i += 10)
  {
    v5 = i[7];
    *&v50[16] = i[6];
    v51 = v5;
    v6 = i[9];
    v52 = i[8];
    v53 = v6;
    v7 = i[3];
    v47 = i[2];
    v48 = v7;
    v8 = i[5];
    v49 = i[4];
    *v50 = v8;
    v9 = i[1];
    v45 = *i;
    v46 = v9;
    if (v45 > 2u)
    {
      if (v45 == 3)
      {
        v13 = 0xE400000000000000;
        v12 = 1397716596;
      }

      else
      {
        if (v45 == 4)
        {
          v12 = 0x534F6E6F69736976;
        }

        else
        {
          v12 = 0x4B7974696C616572;
        }

        if (v45 == 4)
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0xEA00000000007469;
        }
      }
    }

    else
    {
      if (v45 == 1)
      {
        v10 = 0x534F63616DLL;
      }

      else
      {
        v10 = 0x534F6863746177;
      }

      if (v45 == 1)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v45)
      {
        v12 = v10;
      }

      else
      {
        v12 = 5459817;
      }

      if (v45)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE300000000000000;
      }
    }

    v14 = 0x534F6E6F69736976;
    if (a1 != 4)
    {
      v14 = 0x4B7974696C616572;
    }

    v15 = 0xEA00000000007469;
    if (a1 == 4)
    {
      v15 = 0xE800000000000000;
    }

    if (a1 == 3)
    {
      v14 = 1397716596;
      v15 = 0xE400000000000000;
    }

    if (a1 == 1)
    {
      v16 = 0x534F63616DLL;
    }

    else
    {
      v16 = 0x534F6863746177;
    }

    if (a1 == 1)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    if (!a1)
    {
      v16 = 5459817;
      v17 = 0xE300000000000000;
    }

    v18 = a1 <= 2u ? v16 : v14;
    v19 = a1 <= 2u ? v17 : v15;
    v35 = v53;
    v36 = v52;
    v37 = *(&v53 + 1);
    v38 = *(&v52 + 1);
    if (v12 == v18 && v13 == v19)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined init with copy of NodeDef.Availability(&v45, &v41);

    if (v20)
    {
      goto LABEL_50;
    }

    outlined destroy of NodeDef.Availability(&v45);
    if (!--v3)
    {
      return 0;
    }
  }

  outlined init with copy of NodeDef.Availability(&v45, &v41);

LABEL_50:
  if (BYTE10(v51) & 1) != 0 || (v22 = *(&v45 + 1), v24 = v46, v23 = v47, v25 = BYTE8(v47), v26 = BYTE9(v47), v27 = v48, v28 = v49, v29 = v50[0], v30 = v50[1], (BYTE9(v51) & 1) == 0) && (v33 = v48, v41 = *&v50[8], v42 = v50[24] & 1, v43 = v51, v44 = BYTE8(v51) & 1, v31 = specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(&v41, a2), v27 = v33, (v31))
  {
    outlined destroy of NodeDef.Availability(&v45);
    return 0;
  }

  if ((v30 & 1) != 0 || (v54 = v27, v55 = v28 & 1, v56 = *(&v28 + 1), v57 = v29 & 1, (specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(&v54, a2) & 1) == 0))
  {
    outlined destroy of NodeDef.Availability(&v45);
    if ((v26 & 1) == 0)
    {
      v58 = v22;
      v59 = v24;
      v60 = BYTE8(v24) & 1;
      v61 = v23;
      v62 = v25 & 1;
      specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(a2, &v58);
      return 0;
    }

    return 0;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  MEMORY[0x266771550](0xD000000000000011, 0x8000000265F32810);
  LOBYTE(v40[0]) = a1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](32, 0xE100000000000000);
  v32 = NodeDef.Availability.PlatformVersion.description.getter();
  MEMORY[0x266771550](v32);

  if (v37)
  {

    MEMORY[0x266771550](v35, v37);

    MEMORY[0x266771550](8250, 0xE200000000000000);
  }

  if (v38)
  {
    strcpy(v40, ": Renamed to ");
    HIWORD(v40[1]) = -4864;

    MEMORY[0x266771550](v36, v38);

    MEMORY[0x266771550](v40[0], v40[1]);
    outlined destroy of NodeDef.Availability(&v45);
  }

  else
  {
    outlined destroy of NodeDef.Availability(&v45);
  }

  return v58;
}

unint64_t lazy protocol witness table accessor for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion()
{
  result = lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDef.Availability.Platform and conformance NodeDef.Availability.Platform()
{
  result = lazy protocol witness table cache variable for type NodeDef.Availability.Platform and conformance NodeDef.Availability.Platform;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability.Platform and conformance NodeDef.Availability.Platform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability.Platform and conformance NodeDef.Availability.Platform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDef.Availability.AvailabilityKind and conformance NodeDef.Availability.AvailabilityKind()
{
  result = lazy protocol witness table cache variable for type NodeDef.Availability.AvailabilityKind and conformance NodeDef.Availability.AvailabilityKind;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability.AvailabilityKind and conformance NodeDef.Availability.AvailabilityKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability.AvailabilityKind and conformance NodeDef.Availability.AvailabilityKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDef.Availability and conformance NodeDef.Availability()
{
  result = lazy protocol witness table cache variable for type NodeDef.Availability and conformance NodeDef.Availability;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability and conformance NodeDef.Availability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability and conformance NodeDef.Availability);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDef.Availability(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NodeDef.Availability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

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

uint64_t getEnumTagSinglePayload for NodeDef.Availability.PlatformVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NodeDef.Availability.PlatformVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NodeDef.Availability.AvailabilityKind(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDef.Availability.AvailabilityKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 115))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NodeDef.Availability.AvailabilityKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 111) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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

  *(result + 115) = v3;
  return result;
}

uint64_t getEnumTag for NodeDef.Availability.AvailabilityKind(uint64_t a1)
{
  if (*(a1 + 114))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for NodeDef.Availability.AvailabilityKind(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = (a2 - 1);
    *(result + 114) = 1;
  }

  else
  {
    *(result + 114) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet()
{
  result = lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet;
  if (!lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet)
  {
    type metadata accessor for CharacterSet();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  }

  return result;
}

void *_s11ShaderGraph14MaterialXErrorOWOi0_(void *result)
{
  v1 = result[20] & 7;
  v2 = result[35] & 0x1FFFFLL | 0x2000000000000000;
  result[15] &= 0x1FFFFuLL;
  result[20] = v1;
  result[35] = v2;
  return result;
}

uint64_t outlined init with copy of (NodeDef.Availability.Platform, NodeDef.Availability)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtMd, &_s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *_s11ShaderGraph14MaterialXErrorOWOi2_(void *result)
{
  v1 = result[20] & 7;
  v2 = result[35] & 0x1FFFFLL | 0x6000000000000000;
  result[15] &= 0x1FFFFuLL;
  result[20] = v1;
  result[35] = v2;
  return result;
}

double _s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 1;
  return result;
}

uint64_t outlined destroy of Regex<(Substring, Substring, Substring?, Substring?, Substring?, Substring?, Substring?)>.Match?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_s11ShaderGraph14MaterialXErrorOWOi_(void *result)
{
  v1 = result[20] & 7;
  v2 = result[35] & 0x1FFFFLL;
  result[15] &= 0x1FFFFuLL;
  result[20] = v1;
  result[35] = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

double _s11ShaderGraph14MaterialXErrorOWOi3_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x8000000000000000;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  return result;
}

void *_s11ShaderGraph14MaterialXErrorOWOi1_(void *result)
{
  v1 = result[20] & 7;
  v2 = result[35] & 0x1FFFFLL | 0x4000000000000000;
  result[15] &= 0x1FFFFuLL;
  result[20] = v1;
  result[35] = v2;
  return result;
}

uint64_t OrderedSet.UnorderedView._base.getter(uint64_t a1)
{

  return a1;
}

uint64_t OrderedSet.UnorderedView._base.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t key path setter for OrderedSet.unordered : <A>OrderedSet<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *a1;
  v7 = a1[1];

  v8 = OrderedSet.init()(v5);
  v10 = v9;

  *a2 = v8;
  a2[1] = v10;
  v12[0] = v6;
  v12[1] = v7;
  $defer #1 <A>() in OrderedSet.__unstable.modify(a2, v12);
}

void (*OrderedSet.unordered.modify(void *a1, uint64_t a2))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[2] = v2;
  v7 = v2[1];
  *v5 = *v2;
  v5[1] = v7;
  v8 = *(a2 + 16);
  v6[3] = v8;
  v6[4] = *(a2 + 24);
  *v2 = OrderedSet.init()(v8);
  v2[1] = v9;
  return OrderedSet.__unstable.modify;
}

uint64_t OrderedSet.unordered.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OrderedSet.init()(*(a3 + 16));
  v8 = v7;

  *v3 = v6;
  v3[1] = v8;
  v10[0] = a1;
  v10[1] = a2;
  $defer #1 <A>() in OrderedSet.__unstable.modify(v3, v10);
}

uint64_t OrderedSet.UnorderedView.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(16);
  v5 = specialized OrderedSet._debugTypeName()(a3);
  v7 = v6;

  MEMORY[0x266771550](0x726564726F6E552ELL, 0xEE00776569566465);
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  countAndFlagsBits = OrderedSet._debugDescription(typeName:)(v8)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t OrderedSet.UnorderedView.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Mirror.AncestorRepresentation();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v19 - v12;
  v19[2] = a1;
  v19[3] = a2;
  v19[1] = a2;
  v14 = *MEMORY[0x277D84BF0];
  v15 = type metadata accessor for Mirror.DisplayStyle();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  type metadata accessor for OrderedSet.UnorderedView(0, a3, a4, v17);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  default argument 3 of Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)(v10);

  swift_retain_n();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

BOOL static OrderedSet.UnorderedView.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 && a3 && v11 == a3)
  {
    return 1;
  }

  v15 = ContiguousArray.count.getter();
  if (v15 != ContiguousArray.count.getter())
  {
    return 0;
  }

  v16 = 0;
  v17 = *(a2 + 16);
  v18 = (v10 + 8);
  do
  {
    v14 = v17 == v16;
    if (v17 == v16)
    {
      break;
    }

    ContiguousArray.subscript.getter();
    ++v16;
    v19 = OrderedSet.contains(_:)(v13, a3, a4, a5, v22);
    (*v18)(v13, a5);
  }

  while (v19);
  return v14;
}

uint64_t OrderedSet.UnorderedView.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[3];
  v23 = v10[2];
  v24 = v11;
  v25 = *(v10 + 8);
  v13 = *v10;
  v12 = v10[1];
  v20[1] = v10;
  v21 = v13;
  v22 = v12;
  Hasher.finalize()();
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = (v7 + 8);
    do
    {
      ContiguousArray.subscript.getter();
      ++v16;
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v17)(v9, a4);
      v15 ^= v18;
    }

    while (v14 != v16);
  }

  else
  {
    v15 = 0;
  }

  return MEMORY[0x266772770](v15);
}

Swift::Int OrderedSet.UnorderedView.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  OrderedSet.UnorderedView.hash(into:)(v9, v7, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OrderedSet<A>.UnorderedView(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  OrderedSet.UnorderedView.hash(into:)(v6, v4, *(v2 + 8), *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t OrderedSet.UnorderedView.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return OrderedSet.init<A>(_:)(&v8, a2, v5, a3, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a1;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Array();
  v7 = *(a2 + 24);
  WitnessTable = swift_getWitnessTable();
  result = OrderedSet.init<A>(_:)(&v11, v5, v6, v7, WitnessTable);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedSet.init()(*(a1 + 16));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = specialized OrderedSet.UnorderedView.union(_:)(*a1, a1[1], *v3, v3[1], *(a2 + 16), *(a2 + 24));
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t OrderedSet.UnorderedView.union(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized OrderedSet.UnorderedView.union(_:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = specialized OrderedSet.UnorderedView.intersection(_:)(*a1, a1[1], *v3, v3[1], *(a2 + 16), *(a2 + 24));
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t OrderedSet.UnorderedView.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized OrderedSet.UnorderedView.intersection(_:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t OrderedSet.UnorderedView.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for OrderedSet(0, v5, *(a3 + 24), a4);
  v7 = OrderedSet._append(_:)(a2, v6);
  ContiguousArray.subscript.getter();
  (*(*(v5 - 8) + 8))(a2, v5);
  return v7 & 1;
}

uint64_t protocol witness for SetAlgebra.remove(_:) in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for OrderedSet(0, *(a2 + 16), *(a2 + 24), a3);

  return OrderedSet.remove(_:)(a1, v6, a4);
}

uint64_t OrderedSet.UnorderedView.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for OrderedSet(0, *(a2 + 16), *(a2 + 24), a3);

  return OrderedSet.remove(_:)(a1, v6, a4);
}

uint64_t OrderedSet.UnorderedView.update(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v7 = *(a2 + 16);
  v8 = type metadata accessor for OrderedSet(0, v7, *(a2 + 24), a4);
  if (OrderedSet._append(_:)(a1, v8))
  {
    v15 = *(v7 - 8);
    (*(v15 + 8))(a1, v7);
    v10 = 1;
  }

  else
  {
    v11 = v9;
    ContiguousArray.subscript.getter();
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v12 = *(v4 + 8);
    ContiguousArray._checkSubscript_mutating(_:)(v11);
    v15 = *(v7 - 8);
    (*(v15 + 40))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11, a1, v7);
    destructiveProjectEnumData for NodePersonality.ShaderType();
    v10 = 0;
  }

  v13 = *(v15 + 56);

  return v13(a3, v10, 1, v7);
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance OrderedSet<A>.UnorderedView(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for OrderedSet(0, *(a2 + 16), *(a2 + 24), a4);
  specialized OrderedSet.formUnion(_:)(v4, v5, v6);
}

uint64_t OrderedSet.UnorderedView.formUnion(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for OrderedSet(0, *(a3 + 16), *(a3 + 24), a4);
  specialized OrderedSet.formUnion(_:)(a1, a2, v6);
}

uint64_t OrderedSet.UnorderedView.formIntersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = type metadata accessor for OrderedSet(0, *(a3 + 16), *(a3 + 24), a4);

  return a4(a1, a2, v6);
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance OrderedSet<A>.UnorderedView@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, void, void, void, void)@<X3>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *v4, v4[1], *(a2 + 16), *(a2 + 24));
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t OrderedSet.UnorderedView.subtracting(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = type metadata accessor for OrderedSet(0, a5, a6, a4);
  swift_getWitnessTable();
  return OrderedSet._subtracting<A>(_:)(v12, a3, a4, a5, v10, a6);
}

uint64_t protocol witness for SetAlgebra.init<A>(_:) in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a2 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, a2, v11);
  v14 = OrderedSet.init<A>(_:)(v13, *(a4 + 16), a2, *(a4 + 24), a3);
  v16 = v15;
  result = (*(v10 + 8))(a1, a2);
  *a5 = v14;
  a5[1] = v16;
  return result;
}

uint64_t OrderedSet.UnorderedView.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v11);
  v14 = OrderedSet.init<A>(_:)(v13, a2, a3, a4, a5);
  (*(v10 + 8))(a1, a3);
  return v14;
}

uint64_t OrderedSet.UnorderedView.subtract(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[1];
  v12[0] = a1;
  v12[1] = a2;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for OrderedSet(0, v7, v8, a4);
  swift_getWitnessTable();
  result = OrderedSet._subtracting<A>(_:)(v12, v5, v6, v7, v9, v8);
  *v4 = result;
  v4[1] = v11;
  return result;
}

uint64_t OrderedSet.UnorderedView.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized OrderedSet.init<A>(_:)(a1, a2, a3, a4);

  return v4;
}

uint64_t OrderedSet.UnorderedView.formIntersection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OrderedSet(0, *(a2 + 16), *(a2 + 24), a4);

  return OrderedSet.formIntersection<A>(_:)(a1, v7, a3, a4);
}

uint64_t OrderedSet.UnorderedView.union<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a8(a1, a2, a3, a4, a5, a6, a7);
  (*(*(a5 - 8) + 8))(a1, a5);
  return v10;
}

uint64_t OrderedSet.UnorderedView.formUnion<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = type metadata accessor for OrderedSet(0, *(a2 + 16), *(a2 + 24), a4);
  a5(a1, v9, a3, a4);
  v10 = *(*(a3 - 8) + 8);

  return v10(a1, a3);
}

uint64_t OrderedSet.UnorderedView.subtract<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OrderedSet._subtracting<A>(_:)(a1, *v4, v4[1], *(a2 + 16), a3, *(a2 + 24));
  *v4 = result;
  v4[1] = v6;
  return result;
}

uint64_t specialized OrderedSet.UnorderedView.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return OrderedSet.intersection(_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_265E92A34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

__n128 sub_265E92A84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata instantiation function for OrderedSet.UnorderedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OrderedSet.init()(uint64_t a1)
{
  v2 = static Array._allocateUninitialized(_:)();
  MEMORY[0x266772110](v2, a1);
  return 0;
}

uint64_t OrderedSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = OrderedSet._find(_:)(a1, *v3, v3[1], *(a2 + 16), *(a2 + 24));
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    OrderedSet._removeExistingMember(at:in:)(v7, v8, a2);
    v10 = 0;
  }

  v11 = *(*(v6 - 8) + 56);

  return v11(a3, v10, 1, v6);
}

BOOL OrderedSet.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMd, &_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMR);
  _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in OrderedSet._find_inlined(_:), v10, a3, a4, v7, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v8);
  return (v11 & 1) == 0;
}

uint64_t ShaderGraphNode.materialXNodeDefName.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  return v1;
}

uint64_t ShaderGraphNode.constantStringValue.getter()
{
  v1 = *v0;
  if (*v0 >> 61 || *(v1 + 80) != 6)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  return v2;
}

uint64_t ShaderGraphNode.constant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*v1 >> 61)
  {
    v11 = 0uLL;
    v7 = -1;
    v12 = 0uLL;
    v10 = 0uLL;
    v9 = 0uLL;
  }

  else
  {
    v4 = *(v3 + 48);
    v19 = *(v3 + 32);
    v5 = *(v3 + 16);
    v6 = *(v3 + 64);
    v20 = v4;
    v21 = v6;
    v18 = v5;
    v7 = *(v3 + 80);
    v22 = v7;
    v15 = v5;
    v16 = v19;
    v13 = v4;
    v14 = v6;
    result = outlined init with copy of SGDataTypeStorage(&v18, v17);
    v10 = v13;
    v9 = v14;
    v11 = v15;
    v12 = v16;
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v10;
  *(a1 + 48) = v9;
  *(a1 + 64) = v7;
  return result;
}

uint64_t RESurfaceShaderFunctionNode.functionName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RESurfaceShaderFunctionNode.paramsInput.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RESurfaceShaderFunctionNode.uniformsInput.getter()
{
  v1 = *(v0 + 56);
  outlined copy of (name: String, type: MetalDataType)?(v1, *(v0 + 64));
  return v1;
}

void *RESurfaceShaderFunctionNode.__allocating_init(id:named:paramsInput:uniformsInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  if (one-time initialization token for void != -1)
  {
    v22 = v17;
    swift_once();
    v17 = v22;
  }

  v18 = static MetalDataType.void;
  v19 = MEMORY[0x277D84F90];
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a8;
  v17[9] = a9;
  v17[12] = v19;
  v17[13] = a2;
  v17[14] = a3;
  v17[10] = v18;
  v17[11] = a1;
  v20 = v17;

  return v20;
}

void *RESurfaceShaderFunctionNode.init(id:named:paramsInput:uniformsInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (one-time initialization token for void != -1)
  {
    v14 = a1;
    v15 = a2;
    v16 = a8;
    v17 = a7;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    swift_once();
    a4 = v20;
    a5 = v19;
    a6 = v18;
    a2 = v15;
    a7 = v17;
    a1 = v14;
    a8 = v16;
  }

  v11 = static MetalDataType.void;
  v12 = MEMORY[0x277D84F90];
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v9[6] = a6;
  v9[7] = a7;
  v9[8] = a8;
  v9[9] = a9;
  v9[12] = v12;
  v9[13] = a2;
  v9[14] = a3;
  v9[10] = v11;
  v9[11] = a1;

  return v9;
}

uint64_t RESurfaceShaderFunctionNode.inputs.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t RESurfaceShaderFunctionNode.debugLabel.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t RESurfaceShaderFunctionNode.generateMetalSource(in:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v52 = (*(*a1 + 112))(a1);
  v5 = (*(*v52 + 376))(v55);
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
      *v7 = v8;
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = 0xD000000000000016;
    *(v12 + 5) = 0x8000000265F32830;
    (v5)(v55, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_265F1F670;
    v14 = v4[6];
    v15 = *(v14 + 32);
    *&v55[0] = *(v14 + 24);
    *(&v55[0] + 1) = v15;

    MEMORY[0x266771550](32, 0xE100000000000000);
    MEMORY[0x266771550](v4[4], v4[5]);
    v16 = *(&v55[0] + 1);
    *(v13 + 32) = *&v55[0];
    *(v13 + 40) = v16;
    v17 = v4[8];
    if (v17)
    {
      v54 = v3;
      v18 = v4[9];
      v19 = v4[7];
      v20 = *(v18 + 32);
      *&v55[0] = *(v18 + 24);
      *(&v55[0] + 1) = v20;
      outlined copy of (name: String, type: MetalDataType)?(v19, v17);

      MEMORY[0x266771550](32, 0xE100000000000000);
      MEMORY[0x266771550](v19, v17);
      v21 = v55[0];
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v13);
      }

      *(v13 + 16) = v23 + 1;
      *(v13 + 16 * v23 + 32) = v21;
      v3 = v54;
    }

    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    MEMORY[0x266771550](0xD000000000000024, 0x8000000265F32850);
    MEMORY[0x266771550](v4[2], v4[3]);
    MEMORY[0x266771550](0x202020200A28, 0xE600000000000000);
    v56 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v24 = BidirectionalCollection<>.joined(separator:)();
    v26 = v25;

    MEMORY[0x266771550](v24, v26);

    MEMORY[0x266771550](0x200A29202020200ALL, 0xEC0000007B202020);
    v27 = v55[0];
    v50 = *(*v52 + 400);
    v28 = v50(v55);
    v30 = v29;
    v7 = *v29;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v7;
    if ((v31 & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      *v30 = v7;
    }

    v33 = *(v7 + 16);
    v32 = *(v7 + 24);
    if (v33 >= v32 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v7);
      *v30 = v7;
    }

    *(v7 + 16) = v33 + 1;
    *(v7 + 16 * v33 + 32) = v27;
    v28(v55, 0);
    v34 = swift_beginAccess();
    v8 = v4[12];
    v35 = *(v8 + 2);
    if (!v35)
    {
      break;
    }

    v57 = MEMORY[0x277D84F90];

    v5 = &v57;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v36 = 0;
    v4 = v57;
    v37 = a1[2];
    v53 = *(*v37 + 272);
    v38 = v3;
    while (v36 < *(v8 + 2))
    {
      v5 = v37;
      v53(v55, *&v8[8 * v36 + 32]);
      if (v38)
      {
      }

      v57 = v4;
      v7 = v4[2];
      v39 = v4[3];
      v3 = (v7 + 1);
      if (v7 >= v39 >> 1)
      {
        v5 = &v57;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v7 + 1, 1);
        v4 = v57;
      }

      ++v36;
      v4[2] = v3;
      outlined init with take of MetalFunctionNode(v55, &v4[5 * v7 + 4]);
      v38 = 0;
      if (v35 == v36)
      {
        v3 = 0;

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *v7 = v8;
  }

LABEL_21:
  v41 = MEMORY[0x28223BE20](v34);
  (*(*a1 + 152))(partial apply for closure #2 in RESurfaceShaderFunctionNode.generateMetalSource(in:), v41);
  if (v3)
  {
  }

  else
  {

    v42 = v50(v55);
    v44 = v43;
    v45 = *v43;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *v44 = v45;
    if ((v46 & 1) == 0)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
      *v44 = v45;
    }

    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    if (v48 >= v47 >> 1)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
      *v44 = v45;
    }

    *(v45 + 2) = v48 + 1;
    v49 = &v45[16 * v48];
    *(v49 + 4) = 125;
    *(v49 + 5) = 0xE100000000000000;
    v42(v55, 0);
  }
}

uint64_t closure #1 in closure #2 in RESurfaceShaderFunctionNode.generateMetalSource(in:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of MetalFunctionNode(a1, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph18HasMetalInvocation_pMd, &_s11ShaderGraph18HasMetalInvocation_pMR);
  swift_dynamicCast();
  v6 = v29;
  v7 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v8 = (*(v7 + 8))(a2, v6, v7);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v15 = (*a3 + 400);
  v16 = *v15;
  v17 = (*v15)(&v31);
  specialized Array.append<A>(contentsOf:)(v14);
  v17(&v31, 0);
  v31 = v12;
  v32 = v13;
  MEMORY[0x266771550](59, 0xE100000000000000);
  v18 = v31;
  v19 = v32;
  v20 = v16(&v31);
  v22 = v21;
  v23 = *v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    *v22 = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
    *v22 = v23;
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[16 * v26];
  *(v27 + 4) = v18;
  *(v27 + 5) = v19;
  return v20(&v31, 0);
}

uint64_t *RESurfaceShaderFunctionNode.deinit()
{

  outlined consume of (name: String, type: MetalDataType)?(v0[7], v0[8], v0[9]);

  return v0;
}

uint64_t RESurfaceShaderFunctionNode.__deallocating_deinit()
{

  outlined consume of (name: String, type: MetalDataType)?(v0[7], v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MetalFunctionNode.id.getter in conformance RESurfaceShaderFunctionNode()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 88);
}

void protocol witness for MetalFunctionNode.id.setter in conformance RESurfaceShaderFunctionNode(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 88) = a1;
}

uint64_t protocol witness for MetalFunctionNode.inputs.setter in conformance RESurfaceShaderFunctionNode(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 96) = a1;
}

uint64_t protocol witness for HasDebugLabel.debugLabel.getter in conformance RESurfaceShaderFunctionNode()
{
  v1 = *(*v0 + 104);

  return v1;
}

uint64_t partial apply for closure #2 in RESurfaceShaderFunctionNode.generateMetalSource(in:)(void *a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4 + 32;
  v7 = *(v4 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = result + 40;
    closure #1 in closure #2 in RESurfaceShaderFunctionNode.generateMetalSource(in:)(result, v5, a1);
    result = v8;
  }

  while (!v2);
  return result;
}

void outlined consume of (name: String, type: MetalDataType)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t OrderedSet.init(minimumCapacity:persistent:)(Swift::Int a1, Swift::Bool a2, uint64_t a3, uint64_t a4)
{
  v10 = OrderedSet.init()(a3);
  type metadata accessor for OrderedSet(0, a3, a4, v8);
  OrderedSet._reserveCapacity(_:persistent:)(a1, a2);
  return v10;
}

Swift::Void __swiftcall OrderedSet._reserveCapacity(_:persistent:)(Swift::Int _, Swift::Bool persistent)
{
  if (_ < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v2;
  type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(_);
  v6 = *v2;
  v7 = OrderedSet._scale.getter(*v2);
  v8 = specialized static _HashTable.scale(forCapacity:)(_);
  v9 = v8;
  if (!persistent)
  {
    v9 = OrderedSet._reservedScale.getter(v6);
  }

  if (v7 >= v8)
  {
    v11 = ContiguousArray.count.getter();
    v10 = specialized static _HashTable.scale(forCapacity:)(v11);
    if (v9 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v10 <= v12)
    {
      v10 = v12;
    }

    if (v10 < v7)
    {
      goto LABEL_12;
    }

    OrderedSet._ensureUnique()();
    v13 = *v3;
    if (OrderedSet._reservedScale.getter(*v3) == v9)
    {
      return;
    }

    if (v13)
    {
      swift_beginAccess();
      *(v13 + 24) = *(v13 + 24) & 0xFFFFFFFFFFFFFFC0 | v9 & 0x3F;
      return;
    }

LABEL_20:
    __break(1u);
    return;
  }

  v10 = v8;
LABEL_12:

  OrderedSet._regenerateHashTable(scale:reservedScale:)(v10, v9);
}

uint64_t *MetalDataType.re.surface_parameters_private.unsafeMutableAddressor()
{
  if (one-time initialization token for surface_parameters_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface_parameters_private;
}

uint64_t *MetalDataType.re.geometry_parameters_private.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry_parameters_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_parameters_private;
}

uint64_t *MetalDataType.re.HoverData.unsafeMutableAddressor()
{
  if (one-time initialization token for HoverData != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.HoverData;
}

uint64_t *MetalDataType.re.EnvironmentRadianceResult.unsafeMutableAddressor()
{
  if (one-time initialization token for EnvironmentRadianceResult != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.EnvironmentRadianceResult;
}

uint64_t one-time initialization function for surface_parameters()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F26B20;
  if (one-time initialization token for uniforms != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 0x736D726F66696E75;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  if (one-time initialization token for geometry != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v4, v2);

  *(v0 + 80) = 0x797274656D6F6567;
  *(v0 + 88) = 0xE800000000000000;
  *(v0 + 96) = v5;
  *(v0 + 104) = v2;
  *(v0 + 112) = 1;
  *(v0 + 120) = 1;
  if (one-time initialization token for surface_properties != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v2);

  *(v0 + 128) = 0x65636166727573;
  *(v0 + 136) = 0xE700000000000000;
  *(v0 + 144) = v7;
  *(v0 + 152) = v2;
  *(v0 + 160) = 1;
  *(v0 + 168) = 2;
  if (one-time initialization token for textures != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v2);

  *(v0 + 176) = 0x7365727574786574;
  *(v0 + 184) = 0xE800000000000000;
  *(v0 + 192) = v9;
  *(v0 + 200) = v2;
  *(v0 + 208) = 1;
  *(v0 + 216) = 3;
  if (one-time initialization token for material_parameters != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v2);

  *(v0 + 224) = 0xD000000000000012;
  *(v0 + 232) = 0x8000000265F32AD0;
  *(v0 + 240) = v11;
  *(v0 + 248) = v2;
  *(v0 + 256) = 1;
  *(v0 + 264) = 4;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0xD000000000000022, 0x8000000265F32C70, 0xD00000000000001ELL, 0x8000000265F32CA0, v0);
  static MetalDataType.re.surface_parameters = result;
  return result;
}

uint64_t *MetalDataType.re.surface.uniforms.unsafeMutableAddressor()
{
  if (one-time initialization token for uniforms != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface.uniforms;
}

uint64_t *MetalDataType.re.surface.geometry.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface.geometry;
}

uint64_t *MetalDataType.re.surface.surface_properties.unsafeMutableAddressor()
{
  if (one-time initialization token for surface_properties != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface.surface_properties;
}

uint64_t *MetalDataType.re.texture.textures.unsafeMutableAddressor()
{
  if (one-time initialization token for textures != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.texture.textures;
}

uint64_t *MetalDataType.re.material.material_parameters.unsafeMutableAddressor()
{
  if (one-time initialization token for material_parameters != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.material.material_parameters;
}

uint64_t *MetalDataType.re.surface_parameters.unsafeMutableAddressor()
{
  if (one-time initialization token for surface_parameters != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface_parameters;
}

uint64_t one-time initialization function for geometry_parameters()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F21D70;
  if (one-time initialization token for uniforms != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 0x736D726F66696E75;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  if (one-time initialization token for geometry != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v4, v2);

  *(v0 + 80) = 0x797274656D6F6567;
  *(v0 + 88) = 0xE800000000000000;
  *(v0 + 96) = v5;
  *(v0 + 104) = v2;
  *(v0 + 112) = 1;
  *(v0 + 120) = 1;
  if (one-time initialization token for textures != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v2);

  *(v0 + 128) = 0x7365727574786574;
  *(v0 + 136) = 0xE800000000000000;
  *(v0 + 144) = v7;
  *(v0 + 152) = v2;
  *(v0 + 160) = 1;
  *(v0 + 168) = 2;
  if (one-time initialization token for material_parameters != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v2);

  *(v0 + 176) = 0xD000000000000012;
  *(v0 + 184) = 0x8000000265F32AD0;
  *(v0 + 192) = v9;
  *(v0 + 200) = v2;
  *(v0 + 208) = 1;
  *(v0 + 216) = 3;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0xD000000000000023, 0x8000000265F32A80, 0xD00000000000001FLL, 0x8000000265F32AB0, v0);
  static MetalDataType.re.geometry_parameters = result;
  return result;
}

uint64_t *MetalDataType.re.geometry_modifier.uniforms.unsafeMutableAddressor()
{
  if (one-time initialization token for uniforms != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_modifier.uniforms;
}

uint64_t *MetalDataType.re.geometry_modifier.geometry.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_modifier.geometry;
}

uint64_t *MetalDataType.re.geometry_parameters.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry_parameters != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_parameters;
}

uint64_t one-time initialization function for uniforms()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F1F670;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 1701669236;
  *(v0 + 40) = 0xE400000000000000;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD00000000000001DLL, 0x8000000265F32E80, v0);
  static MetalDataType.re.surface.uniforms = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F26B50;
  *(inited + 32) = 1701669236;
  *(inited + 40) = 0xE400000000000000;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v2;
  strcpy((inited + 56), "model_to_world");
  *(inited + 71) = -18;
  if (one-time initialization token for float4x4 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v3, MEMORY[0x277D84F90]);

  *(inited + 72) = v5;
  strcpy((inited + 80), "world_to_model");
  *(inited + 95) = -18;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v4);

  *(inited + 96) = v7;
  *(inited + 104) = 0x745F6C616D726F6ELL;
  *(inited + 112) = 0xEF646C726F775F6FLL;
  if (one-time initialization token for float3x3 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v9 = MEMORY[0x277D84F90];
  v10 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, MEMORY[0x277D84F90]);

  *(inited + 120) = v10;
  strcpy((inited + 128), "model_to_view");
  *(inited + 142) = -4864;
  swift_allocObject();

  v12 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v11, v9);

  *(inited + 144) = v12;
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x8000000265F32C10;
  swift_allocObject();

  v14 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v13, v9);

  *(inited + 168) = v14;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x8000000265F32C30;
  swift_allocObject();

  v16 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v15, v9);

  *(inited + 192) = v16;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x8000000265F32C50;
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v18 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v17, MEMORY[0x277D84F90]);

  *(inited + 216) = v18;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD000000000000027, 0x8000000265F32BE0, inited);
  static MetalDataType.re.geometry_modifier.uniforms = result;
  return result;
}

uint64_t one-time initialization function for geometry()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F26B30;
  *(inited + 32) = 0x705F6E6565726373;
  *(inited + 40) = 0xEF6E6F697469736FLL;
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v2;
  strcpy((inited + 56), "world_position");
  *(inited + 71) = -18;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v3, MEMORY[0x277D84F90]);

  *(inited + 72) = v5;
  *(inited + 80) = 0x726F6C6F63;
  *(inited + 88) = 0xE500000000000000;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v4);

  *(inited + 96) = v7;
  *(inited + 104) = 0x6C616D726F6ELL;
  *(inited + 112) = 0xE600000000000000;
  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v4);

  *(inited + 120) = v9;
  *(inited + 128) = 0x746E65676E6174;
  *(inited + 136) = 0xE700000000000000;
  swift_allocObject();

  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v4);

  *(inited + 144) = v11;
  *(inited + 152) = 0x6E65676E61746962;
  *(inited + 160) = 0xE900000000000074;
  swift_allocObject();

  v13 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v12, v4);

  *(inited + 168) = v13;
  *(inited + 176) = 3176053;
  *(inited + 184) = 0xE300000000000000;
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v15 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v14, v4);

  *(inited + 192) = v15;
  *(inited + 200) = 3241589;
  *(inited + 208) = 0xE300000000000000;
  swift_allocObject();

  v17 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v16, v4);

  *(inited + 216) = v17;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x8000000265F32B60;
  swift_allocObject();

  v19 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v18, v4);

  *(inited + 240) = v19;
  strcpy((inited + 248), "view_direction");
  *(inited + 263) = -18;
  swift_allocObject();

  v21 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v20, v4);

  *(inited + 264) = v21;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD00000000000001DLL, 0x8000000265F32E60, inited);
  static MetalDataType.re.surface.geometry = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F26B60;
  *(inited + 32) = 0x695F786574726576;
  *(inited + 40) = 0xE900000000000064;
  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v2;
  strcpy((inited + 56), "model_position");
  *(inited + 71) = -18;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v3, MEMORY[0x277D84F90]);

  *(inited + 72) = v5;
  strcpy((inited + 80), "world_position");
  *(inited + 95) = -18;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v4);

  *(inited + 96) = v7;
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x8000000265F32B20;
  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v4);

  *(inited + 120) = v9;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000265F32B40;
  swift_allocObject();

  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v4);

  *(inited + 144) = v11;
  *(inited + 152) = 0x726F6C6F63;
  *(inited + 160) = 0xE500000000000000;
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v13 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v12, v4);

  *(inited + 168) = v13;
  *(inited + 176) = 0x6C616D726F6ELL;
  *(inited + 184) = 0xE600000000000000;
  swift_allocObject();

  v15 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v14, v4);

  *(inited + 192) = v15;
  *(inited + 200) = 0x6E65676E61746962;
  *(inited + 208) = 0xE900000000000074;
  swift_allocObject();

  v17 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v16, v4);

  *(inited + 216) = v17;
  *(inited + 224) = 3176053;
  *(inited + 232) = 0xE300000000000000;
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v19 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v18, v4);

  *(inited + 240) = v19;
  *(inited + 248) = 3241589;
  *(inited + 256) = 0xE300000000000000;
  swift_allocObject();

  v21 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v20, v4);

  *(inited + 264) = v21;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x8000000265F32B60;
  swift_allocObject();

  v23 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v22, v4);

  *(inited + 288) = v23;
  *(inited + 296) = 0xD000000000000019;
  *(inited + 304) = 0x8000000265F32B80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_265F20CD0;
  *(v24 + 32) = static MetalDataType.float3;
  v25 = one-time initialization token for void;

  if (v25 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v27 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v26, v24);

  *(inited + 312) = v27;
  *(inited + 320) = 0xD000000000000019;
  *(inited + 328) = 0x8000000265F32BA0;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_265F20CD0;
  *(v28 + 32) = static MetalDataType.float3;
  swift_allocObject();

  v30 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v29, v28);

  *(inited + 336) = v30;
  *(inited + 344) = 0x6F6C6F635F746573;
  *(inited + 352) = 0xE900000000000072;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_265F20CD0;
  *(v31 + 32) = static MetalDataType.float4;
  swift_allocObject();

  v33 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v32, v31);

  *(inited + 360) = v33;
  *(inited + 368) = 0x6D726F6E5F746573;
  *(inited + 376) = 0xEA00000000006C61;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_265F20CD0;
  *(v34 + 32) = static MetalDataType.float3;
  swift_allocObject();

  v36 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v35, v34);

  *(inited + 384) = v36;
  strcpy((inited + 392), "set_bitangent");
  *(inited + 406) = -4864;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_265F20CD0;
  *(v37 + 32) = static MetalDataType.float3;
  swift_allocObject();

  v39 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v38, v37);

  *(inited + 408) = v39;
  *(inited + 416) = 0x3076755F746573;
  *(inited + 424) = 0xE700000000000000;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_265F20CD0;
  *(v40 + 32) = static MetalDataType.float2;
  swift_allocObject();

  v42 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v41, v40);

  *(inited + 432) = v42;
  *(inited + 440) = 0x3176755F746573;
  *(inited + 448) = 0xE700000000000000;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_265F20CD0;
  *(v43 + 32) = static MetalDataType.float2;
  swift_allocObject();

  v45 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v44, v43);

  *(inited + 456) = v45;
  *(inited + 464) = 0xD000000000000014;
  *(inited + 472) = 0x8000000265F32BC0;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_265F20CD0;
  *(v46 + 32) = static MetalDataType.float4;
  swift_allocObject();

  v48 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v47, v46);

  *(inited + 480) = v48;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD000000000000027, 0x8000000265F32AF0, inited);
  static MetalDataType.re.geometry_modifier.geometry = result;
  return result;
}

uint64_t one-time initialization function for surface_properties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F26B40;
  *(inited + 32) = 0x6C6F635F65736162;
  *(inited + 40) = 0xEA0000000000726FLL;
  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v2;
  *(inited + 56) = 0x6C616D726F6ELL;
  *(inited + 64) = 0xE600000000000000;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v3, MEMORY[0x277D84F90]);

  *(inited + 72) = v5;
  strcpy((inited + 80), "emissive_color");
  *(inited + 95) = -18;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v4);

  *(inited + 96) = v7;
  *(inited + 104) = 0x73656E6867756F72;
  *(inited + 112) = 0xE900000000000073;
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v9 = MEMORY[0x277D84F90];
  v10 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, MEMORY[0x277D84F90]);

  *(inited + 120) = v10;
  *(inited + 128) = 0x63696C6C6174656DLL;
  *(inited + 136) = 0xE800000000000000;
  swift_allocObject();

  v12 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v11, v9);

  *(inited + 144) = v12;
  *(inited + 152) = 0xD000000000000011;
  *(inited + 160) = 0x8000000265F32D50;
  swift_allocObject();

  v14 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v13, v9);

  *(inited + 168) = v14;
  *(inited + 176) = 0x72616C7563657073;
  *(inited + 184) = 0xE800000000000000;
  swift_allocObject();

  v16 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v15, v9);

  *(inited + 192) = v16;
  *(inited + 200) = 0x7974696361706FLL;
  *(inited + 208) = 0xE700000000000000;
  swift_allocObject();

  v18 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v17, v9);

  *(inited + 216) = v18;
  *(inited + 224) = 0x616F637261656C63;
  *(inited + 232) = 0xE900000000000074;
  swift_allocObject();

  v20 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v19, v9);

  *(inited + 240) = v20;
  *(inited + 248) = 0xD000000000000013;
  *(inited + 256) = 0x8000000265F32D70;
  swift_allocObject();

  v22 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v21, v9);

  *(inited + 264) = v22;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x8000000265F32D90;
  swift_allocObject();

  v24 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v23, v9);

  *(inited + 288) = v24;
  strcpy((inited + 296), "set_base_color");
  *(inited + 311) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_265F20CD0;
  *(v25 + 32) = static MetalDataType.half3;
  v26 = one-time initialization token for void;

  if (v26 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v28 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v27, v25);

  *(inited + 312) = v28;
  *(inited + 320) = 0x6D726F6E5F746573;
  *(inited + 328) = 0xEA00000000006C61;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_265F20CD0;
  *(v29 + 32) = static MetalDataType.float3;
  swift_allocObject();

  v31 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v30, v29);

  *(inited + 336) = v31;
  *(inited + 344) = 0xD000000000000012;
  *(inited + 352) = 0x8000000265F32DE0;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_265F20CD0;
  *(v32 + 32) = static MetalDataType.half3;
  swift_allocObject();

  v34 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v33, v32);

  *(inited + 360) = v34;
  strcpy((inited + 368), "set_roughness");
  *(inited + 382) = -4864;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_265F20CD0;
  *(v35 + 32) = static MetalDataType.half;
  swift_allocObject();

  v37 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v36, v35);

  *(inited + 384) = v37;
  strcpy((inited + 392), "set_metallic");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_265F20CD0;
  *(v38 + 32) = static MetalDataType.half;
  swift_allocObject();

  v40 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v39, v38);

  *(inited + 408) = v40;
  *(inited + 416) = 0xD000000000000015;
  *(inited + 424) = 0x8000000265F32E00;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_265F20CD0;
  *(v41 + 32) = static MetalDataType.half;
  swift_allocObject();

  v43 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v42, v41);

  *(inited + 432) = v43;
  strcpy((inited + 440), "set_specular");
  *(inited + 453) = 0;
  *(inited + 454) = -5120;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_265F20CD0;
  *(v44 + 32) = static MetalDataType.half;
  swift_allocObject();

  v46 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v45, v44);

  *(inited + 456) = v46;
  *(inited + 464) = 0x6361706F5F746573;
  *(inited + 472) = 0xEB00000000797469;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_265F20CD0;
  *(v47 + 32) = static MetalDataType.half;
  swift_allocObject();

  v49 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v48, v47);

  *(inited + 480) = v49;
  strcpy((inited + 488), "set_clearcoat");
  *(inited + 502) = -4864;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_265F20CD0;
  *(v50 + 32) = static MetalDataType.half;
  swift_allocObject();

  v52 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v51, v50);

  *(inited + 504) = v52;
  *(inited + 512) = 0xD000000000000017;
  *(inited + 520) = 0x8000000265F32E20;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_265F20CD0;
  *(v53 + 32) = static MetalDataType.half;
  swift_allocObject();

  v55 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v54, v53);

  *(inited + 528) = v55;
  *(inited + 536) = 0xD000000000000014;
  *(inited + 544) = 0x8000000265F32E40;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_265F20CD0;
  *(v56 + 32) = static MetalDataType.half3;
  swift_allocObject();

  v58 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v57, v56);

  *(inited + 552) = v58;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD000000000000027, 0x8000000265F32DB0, inited);
  static MetalDataType.re.surface.surface_properties = result;
  return result;
}

uint64_t one-time initialization function for textures()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F26B70;
  *(inited + 32) = 0x6C6F635F65736162;
  *(inited + 40) = 0xEA0000000000726FLL;
  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v3;
  *(inited + 56) = 0x7974696361706FLL;
  *(inited + 64) = 0xE700000000000000;
  swift_allocObject();

  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v4, v2);

  *(inited + 72) = v5;
  *(inited + 80) = 0x6C616D726F6ELL;
  *(inited + 88) = 0xE600000000000000;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v2);

  *(inited + 96) = v7;
  strcpy((inited + 104), "emissive_color");
  *(inited + 119) = -18;
  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v2);

  *(inited + 120) = v9;
  *(inited + 128) = 0x73656E6867756F72;
  *(inited + 136) = 0xE900000000000073;
  swift_allocObject();

  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v2);

  *(inited + 144) = v11;
  *(inited + 152) = 0x63696C6C6174656DLL;
  *(inited + 160) = 0xE800000000000000;
  swift_allocObject();

  v13 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v12, v2);

  *(inited + 168) = v13;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x8000000265F32D50;
  swift_allocObject();

  v15 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v14, v2);

  *(inited + 192) = v15;
  *(inited + 200) = 0x72616C7563657073;
  *(inited + 208) = 0xE800000000000000;
  swift_allocObject();

  v17 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v16, v2);

  *(inited + 216) = v17;
  *(inited + 224) = 0x616F637261656C63;
  *(inited + 232) = 0xE900000000000074;
  swift_allocObject();

  v19 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v18, v2);

  *(inited + 240) = v19;
  *(inited + 248) = 0xD000000000000013;
  *(inited + 256) = 0x8000000265F32D70;
  swift_allocObject();

  v21 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v20, v2);

  *(inited + 264) = v21;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x8000000265F32D90;
  swift_allocObject();

  v23 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v22, v2);

  *(inited + 288) = v23;
  *(inited + 296) = 0x6D6F74737563;
  *(inited + 304) = 0xE600000000000000;
  swift_allocObject();

  v25 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v24, v2);

  *(inited + 312) = v25;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD00000000000001DLL, 0x8000000265F32D30, inited);
  static MetalDataType.re.texture.textures = result;
  return result;
}

uint64_t one-time initialization function for material_parameters()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F24120;
  *(inited + 32) = 0x6C6F635F65736162;
  *(inited + 40) = 0xEF746E69745F726FLL;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v2;
  strcpy((inited + 56), "opacity_scale");
  *(inited + 70) = -4864;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v3, MEMORY[0x277D84F90]);

  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000265F32CF0;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v4);

  *(inited + 96) = v7;
  *(inited + 104) = 0x73656E6867756F72;
  *(inited + 112) = 0xEF656C6163735F73;
  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v4);

  *(inited + 120) = v9;
  strcpy((inited + 128), "metallic_scale");
  *(inited + 143) = -18;
  swift_allocObject();

  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v4);

  *(inited + 144) = v11;
  strcpy((inited + 152), "specular_scale");
  *(inited + 167) = -18;
  swift_allocObject();

  v13 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v12, v4);

  *(inited + 168) = v13;
  strcpy((inited + 176), "emissive_color");
  *(inited + 191) = -18;
  swift_allocObject();

  v15 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v14, v4);

  *(inited + 192) = v15;
  *(inited + 200) = 0x616F637261656C63;
  *(inited + 208) = 0xEF656C6163735F74;
  swift_allocObject();

  v17 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v16, v4);

  *(inited + 216) = v17;
  *(inited + 224) = 0xD000000000000019;
  *(inited + 232) = 0x8000000265F32D10;
  swift_allocObject();

  v19 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v18, v4);

  *(inited + 240) = v19;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD000000000000029, 0x8000000265F32CC0, inited);
  static MetalDataType.re.material.material_parameters = result;
  return result;
}

uint64_t one-time initialization function for CameraView()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_11ShaderGraph13MetalDataTypeC_ypSgtSgtGMd, &_ss23_ContiguousArrayStorageCySS_11ShaderGraph13MetalDataTypeC_ypSgtSgtGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6F6E6F4D6BLL;
  *(inited + 16) = xmmword_265F21D80;
  *(inited + 40) = 0xE500000000000000;
  if (one-time initialization token for uint32 != -1)
  {
    v6 = inited;
    swift_once();
    inited = v6;
  }

  v1 = static MetalDataType.uint32;
  v2 = MEMORY[0x277D83B88];
  *(inited + 48) = static MetalDataType.uint32;
  *(inited + 56) = 0;
  *(inited + 80) = v2;
  *(inited + 88) = 0x7466654C6BLL;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = 1;
  *(inited + 136) = v2;
  *(inited + 144) = 0x74686769526BLL;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 160) = v1;
  *(inited + 192) = v2;
  *(inited + 168) = 2;
  v3 = inited;
  swift_retain_n();
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeC_ypSgtSgTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph13MetalDataTypeC_ypSgtSgtMd, &_sSS_11ShaderGraph13MetalDataTypeC_ypSgtSgtMR);
  swift_arrayDestroy();
  type metadata accessor for MetalDataType.Enum();
  swift_allocObject();
  result = MetalDataType.Enum.init(note:typeName:types:)(0, 0, 0xD000000000000016, 0x8000000265F32A60, v4);
  static MetalDataType.re.CameraView = result;
  return result;
}

uint64_t *MetalDataType.re.CameraView.unsafeMutableAddressor()
{
  if (one-time initialization token for CameraView != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.CameraView;
}

uint64_t one-time initialization function for EnvironmentRadianceResult()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F21D90;
  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  v1 = static MetalDataType.half3;
  *(v0 + 32) = 0x5265737566666964;
  *(v0 + 40) = 0xEF65636E61696461;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = xmmword_265F235D0;
  *(v0 + 88) = 0x8000000265F311E0;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 112) = 1;
  *(v0 + 120) = 1;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  swift_retain_n();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000019, 0x8000000265F32EA0, v0);
  static MetalDataType.re.EnvironmentRadianceResult = result;
  return result;
}

uint64_t one-time initialization function for HoverData()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F21D70;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v1 = static MetalDataType.float;
  *(v0 + 32) = 0x6E695F7265766F68;
  *(v0 + 40) = 0xEF797469736E6574;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  v3 = one-time initialization token for float3;

  if (v3 != -1)
  {
    swift_once();
    v1 = static MetalDataType.float;
  }

  v4 = static MetalDataType.float3;
  strcpy((v0 + 80), "hover_position");
  *(v0 + 95) = -18;
  *(v0 + 96) = v4;
  *(v0 + 104) = v2;
  *(v0 + 112) = 1;
  *(v0 + 120) = xmmword_265F26B80;
  *(v0 + 136) = 0x8000000265F32EF0;
  *(v0 + 144) = v1;
  *(v0 + 152) = v2;
  *(v0 + 160) = 1;
  *(v0 + 168) = 2;
  v5 = one-time initialization token for BOOL;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = static MetalDataType.BOOL;
  *(v0 + 176) = 0x76697463615F7369;
  *(v0 + 184) = 0xE900000000000065;
  *(v0 + 192) = v6;
  *(v0 + 200) = v2;
  *(v0 + 208) = 1;
  *(v0 + 216) = 4;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();

  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000020, 0x8000000265F32EC0, v0);
  static MetalDataType.re.HoverData = result;
  return result;
}

uint64_t one-time initialization function for surface_parameters_private()
{
  if (one-time initialization token for surface_parameters != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.re.surface_parameters;
  swift_beginAccess();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D80;
  v3 = one-time initialization token for uniforms_private;

  if (v3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v5 = MEMORY[0x277D84F90];
  v6 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v4, MEMORY[0x277D84F90]);

  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000265F32F40;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 64) = 1;
  *(inited + 72) = 0;
  if (one-time initialization token for uniforms_private != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v8 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v7, v5);

  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000265F32F60;
  *(inited + 96) = v8;
  *(inited + 104) = v5;
  *(inited + 112) = 1;
  *(inited + 120) = 0;
  if (one-time initialization token for void != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Pointer();
  swift_allocObject();

  v10 = specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(v9, 0, 0);

  swift_allocObject();
  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v5);

  strcpy((inited + 128), "user_constants");
  *(inited + 143) = -18;
  *(inited + 144) = v11;
  *(inited + 152) = v5;
  *(inited + 160) = 1;
  *(inited + 168) = 0;
  specialized Array.append<A>(contentsOf:)(inited);
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000026, 0x8000000265F32F10, v1);
  static MetalDataType.re.surface_parameters_private = result;
  return result;
}

uint64_t *MetalDataType.re.surface_private.uniforms_private.unsafeMutableAddressor()
{
  if (one-time initialization token for uniforms_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface_private.uniforms_private;
}

uint64_t *MetalDataType.re.geometry_modifier_private.uniforms_private.unsafeMutableAddressor()
{
  if (one-time initialization token for uniforms_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_modifier_private.uniforms_private;
}

uint64_t one-time initialization function for uniforms_private()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F1F670;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 0xD000000000000017;
  *(v0 + 40) = 0x8000000265F32A40;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD00000000000002DLL, 0x8000000265F32A10, v0);
  static MetalDataType.re.surface_private.uniforms_private = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F1F670;
  if (one-time initialization token for float4x4 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x8000000265F329F0;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000037, 0x8000000265F329B0, v0);
  static MetalDataType.re.geometry_modifier_private.uniforms_private = result;
  return result;
}

uint64_t one-time initialization function for geometry_private()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F1F670;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  strcpy((v0 + 32), "crws_position");
  *(v0 + 46) = -4864;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD00000000000002DLL, 0x8000000265F32980, v0);
  static MetalDataType.re.surface_private.geometry_private = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F1F670;
  if (one-time initialization token for CameraView != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x8000000265F32960;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000037, 0x8000000265F32920, v0);
  static MetalDataType.re.geometry_modifier_private.geometry_private = result;
  return result;
}

uint64_t *MetalDataType.re.surface_private.geometry_private.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface_private.geometry_private;
}

uint64_t one-time initialization function for geometry_parameters_private()
{
  if (one-time initialization token for geometry_parameters != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.re.geometry_parameters;
  swift_beginAccess();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D90;
  v3 = one-time initialization token for uniforms_private;

  if (v3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v5 = MEMORY[0x277D84F90];
  v6 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v4, MEMORY[0x277D84F90]);

  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000265F32F40;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 64) = 1;
  *(inited + 72) = 0;
  if (one-time initialization token for void != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Pointer();
  swift_allocObject();

  v8 = specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(v7, 0, 0);

  swift_allocObject();
  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v5);

  strcpy((inited + 80), "user_constants");
  *(inited + 95) = -18;
  *(inited + 96) = v9;
  *(inited + 104) = v5;
  *(inited + 112) = 1;
  *(inited + 120) = 0;
  specialized Array.append<A>(contentsOf:)(inited);
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000027, 0x8000000265F32F80, v1);
  static MetalDataType.re.geometry_parameters_private = result;
  return result;
}

uint64_t *MetalDataType.re.geometry_modifier_private.geometry_private.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_modifier_private.geometry_private;
}

void *one-time initialization function for BlendFactor()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x614620646E656C42, 0xEC000000726F7463, 0x636146646E656C42, 0xEB00000000726F74, &outlined read-only object #0 of one-time initialization function for BlendFactor);
  static MetalDataType.BlendFactor = result;
  return result;
}

uint64_t *MetalDataType.BlendFactor.unsafeMutableAddressor()
{
  if (one-time initialization token for BlendFactor != -1)
  {
    swift_once();
  }

  return &static MetalDataType.BlendFactor;
}

void *one-time initialization function for BlendOperation()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x704F20646E656C42, 0xEF6E6F6974617265, 0x65704F646E656C42, 0xEE006E6F69746172, &outlined read-only object #0 of one-time initialization function for BlendOperation);
  static MetalDataType.BlendOperation = result;
  return result;
}

uint64_t *MetalDataType.BlendOperation.unsafeMutableAddressor()
{
  if (one-time initialization token for BlendOperation != -1)
  {
    swift_once();
  }

  return &static MetalDataType.BlendOperation;
}

void *one-time initialization function for CompareFunction()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0xD000000000000010, 0x8000000265F32900, 0x46657261706D6F43, 0xEF6E6F6974636E75, &outlined read-only object #0 of one-time initialization function for CompareFunction);
  static MetalDataType.CompareFunction = result;
  return result;
}

uint64_t *MetalDataType.CompareFunction.unsafeMutableAddressor()
{
  if (one-time initialization token for CompareFunction != -1)
  {
    swift_once();
  }

  return &static MetalDataType.CompareFunction;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = result;
  if (a3 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = a3;
    if (a4 >= a3)
    {
      v5 = MEMORY[0x277D84F90];
      while (a4 != v7)
      {
        v20 = v7;
        result = v14(&v16, &v20);
        if (v4)
        {

          return v5;
        }

        v9 = v18;
        if (v18)
        {
          v15 = v16;
          v10 = v17;
          v11 = v19;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
            v5 = result;
          }

          v13 = v5[2];
          v12 = v5[3];
          if (v13 >= v12 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
            v5 = result;
          }

          v5[2] = v13 + 1;
          v8 = &v5[5 * v13];
          *(v8 + 2) = v15;
          v8[6] = v10;
          v8[7] = v9;
          v8[8] = v11;
        }

        if (a4 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

{
  v16 = result;
  if (a3 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v6 = a4;
    v7 = a3;
    if (a4 >= a3)
    {
      v5 = MEMORY[0x277D84F90];
      while (v6 != v7)
      {
        v23 = v7;
        result = v16(&v18, &v23);
        if (v4)
        {

          return v5;
        }

        v9 = v20;
        if (v20)
        {
          v17 = v18;
          v10 = v19;
          v11 = v21;
          v12 = v22;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
            v5 = result;
          }

          v14 = v5[2];
          v13 = v5[3];
          if (v14 >= v13 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
            v5 = result;
          }

          v5[2] = v14 + 1;
          v8 = &v5[6 * v14];
          *(v8 + 2) = v17;
          v8[6] = v10;
          v8[7] = v9;
          v8[8] = v11;
          *(v8 + 72) = v12 & 1;
          v6 = a4;
        }

        if (v6 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void specialized Graph.edge(to:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(a2 + 16);
  if (v3 >= v4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = a1[1];
  v8 = a2 + 32;
  v9 = (a2 + 32 + 88 * v3);
  v10 = v9[8];
  v11 = v9[9];
  v12 = v9[10];
  v13 = v11 + 32;
  v14 = *(v11 + 16);
  if (v10)
  {
    v15 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1[1], v13, v14, v10 + 16, v10 + 32);
    if (v16)
    {
      v17 = 0;
      v3 = 0;
      v7 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0uLL;
LABEL_16:
      v22 = 0uLL;
      v23 = 0uLL;
LABEL_17:
      *a3 = v20;
      *(a3 + 16) = v17;
      *(a3 + 24) = v22;
      *(a3 + 40) = v3;
      *(a3 + 48) = v7;
      *(a3 + 56) = v18;
      *(a3 + 64) = v23;
      *(a3 + 80) = v19;
      return;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = 0uLL;
  if (!v14)
  {
LABEL_14:
    v17 = 0;
    v3 = 0;
    v7 = 0;
    v18 = 0;
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v15 = 0;
  while (*(v13 + 8 * v15) != v7)
  {
    if (v14 == ++v15)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  if (v15 >= *(v12 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v12 + 24 * v15;
  v20 = 0uLL;
  if (*(v21 + 48))
  {
    goto LABEL_14;
  }

  v24 = *(v21 + 32);
  if (v24 < v4)
  {
    v25 = (v8 + 88 * v24);
    v18 = v25[4];
    if (v18)
    {
      v27 = v25[2];
      v26 = v25[3];
      v29 = *v25;
      v28 = v25[1];
      specialized Graph.Node.subscript.getter(*(v21 + 40), *v25, v27, &v33);
      v17 = v34;
      v31 = v33;
      v32 = v35;

      outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v29, v28, v27, v26, v18);
      if (v32)
      {
        v18 = a1[2];
        v30 = *(a1 + 3);
        v19 = *(a1 + 40);

        v23 = v30;
        v20 = v31;
        v22 = v32;
      }

      else
      {
        v17 = 0;
        v3 = 0;
        v7 = 0;
        v18 = 0;
        v19 = 0;
        v22 = 0uLL;
        v23 = 0uLL;
        v20 = 0uLL;
      }

      goto LABEL_17;
    }

    v17 = 0;
    v3 = 0;
    v7 = 0;
    goto LABEL_15;
  }

LABEL_28:
  __break(1u);
}

uint64_t specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, char **a5@<X8>)
{
  v212 = a4;
  v177 = a5;
  v6 = a3[1];
  v222 = *a3;
  v8 = a3[2];
  v7 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  v11 = a3[6];
  v12 = a3[7];
  v13 = a3[8];
  v14 = a3[9];
  v15 = a3[10];
  v219 = v12;
  v220 = v10;
  v195 = v6;
  v221 = v9;
  if (v9)
  {
    v16 = v14;
    v17 = v13;
    v18 = v11;
    specialized Graph.Node<>.input(named:)(a1, a2, v222, v8, v283);
    v199 = v283[1];
    v200 = v283[0];
    v19 = v283[3];
    v197 = v283[4];
    v198 = v283[2];
    v196 = v284;
    v20 = a3[8];
    v202 = a3[10];
    v203 = v20;
    v211 = *(a3 + 72);
    v21 = a3[6];
    v204 = a3[7];
    v205 = v21;
    v22 = *a3;
    v209 = a3[1];
    v210 = v22;
    v23 = a3[2];
    v207 = a3[3];
    v208 = v23;
    v10 = a3[5];
    v206 = a3[4];
  }

  else
  {
    v199 = 0;
    v200 = 0;
    v197 = 0;
    v198 = 0;
    v19 = 0;
    v196 = 0;
    v206 = 0;
    v207 = v7;
    v208 = v8;
    v209 = v6;
    v210 = v222;
    v204 = v12;
    v205 = v11;
    v18 = v11;
    v16 = v14;
    v211 = v14;
    v17 = v13;
    v202 = v15;
    v203 = v13;
  }

  outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(a3, v282);
  v176 = a3;
  outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(a3, v282);
  v174 = 0;
  v190 = MEMORY[0x277D84F90];
  v175 = v10;
  v201 = v10;
  v24 = v219;
  v25 = v220;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = v195;
  v30 = v19;
  v31 = v221;
  while (1)
  {
    *&v276 = v210;
    *(&v276 + 1) = v209;
    *&v277 = v208;
    *(&v277 + 1) = v207;
    *&v278 = v206;
    *(&v278 + 1) = v201;
    *&v279 = v205;
    *(&v279 + 1) = v204;
    *&v280 = v203;
    BYTE8(v280) = v211 & 1;
    v281 = v202;
    v282[0] = v222;
    v282[1] = v29;
    v282[2] = v8;
    v282[3] = v7;
    v282[4] = v31;
    v282[5] = v25;
    v32 = v26;
    v282[6] = v26;
    v218 = v27;
    v219 = v24;
    v282[7] = v24;
    v282[8] = v27;
    v217 = v28;
    v282[9] = v28;
    v33 = v15;
    v282[10] = v15;
    v220 = v25;
    v221 = v31;
    if (!v31)
    {

      goto LABEL_74;
    }

    if (!v30)
    {
      goto LABEL_74;
    }

    v34 = v8;
    v35 = v29;
    v294[0] = v200;
    v294[1] = v199;
    v294[2] = v198;
    v294[3] = v30;
    v294[4] = v197;
    v295 = v196 & 1;
    v36 = v212[1];
    if (!*(v36 + 16))
    {
      break;
    }

    v37 = v30;
    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
    if ((v39 & 1) == 0)
    {
      break;
    }

    v214 = v7;
    v215 = v34;
    v40 = v35;
    v216 = v33;
    v213 = v37;
    v41 = (*(v36 + 56) + 48 * v38);
    v42 = *v41;
    v43 = v41[2];
    v44 = v41[5];

    outlined init with copy of [Input](v282, &v265, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    specialized Graph.edge(to:)(v294, v44, &v259);
    v237 = v259;
    v238 = v260;
    v239 = v261;
    v240 = v262;
    v241 = v263;
    v242 = v264;
    v243 = v261;
    v244 = v262;
    v245 = v263;
    v246 = v264;
    if (!*(&v260 + 1))
    {
      goto LABEL_6;
    }

    if ((v259 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v259 >= *(v44 + 16))
    {
      goto LABEL_78;
    }

    v45 = (v44 + 88 * v259);
    v46 = v45[8];
    if (!v46)
    {
      outlined destroy of [Input](&v237, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
LABEL_6:

      outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v265 = v222;
      v266 = v35;
      v267 = v215;
      v268 = v214;
      v269 = v221;
      v270 = v220;
      v271 = v32;
      v272 = v219;
      v273 = v218;
      v274 = v217;
      v275 = v216;
      goto LABEL_7;
    }

    v189 = *(&v260 + 1);
    v47 = v212[2];
    if (*(v47 + 16) && (v49 = v45[4], v48 = v45[5], v51 = v45[6], v50 = v45[7], v193 = v51, v194 = v47, v184 = v50, *&v185 = v48, v195 = v46, v181 = v260, v178 = v259, v52 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v49), (v53 & 1) != 0))
    {
      v54 = *(*(v194 + 56) + 8 * v52);
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      v55 = *v212;
      if (v54 >= *(*v212 + 16))
      {
        goto LABEL_80;
      }

      v173 = *(*v212 + 16);
      v172 = v55 + 32;
      v56 = v55 + 32 + 88 * v54;
      v57 = *(v56 + 16);
      v253 = *v56;
      v254 = v57;
      v58 = *(v56 + 80);
      v60 = *(v56 + 48);
      v59 = *(v56 + 64);
      v255 = *(v56 + 32);
      v256 = v60;
      v257 = v59;
      v258 = v58;
      v179 = *(&v253 + 1);
      v180 = v253;
      v191 = v254;
      v192 = v58;
      *(&v185 + 1) = *(&v255 + 1);
      v61 = v255;
      v183 = *(&v60 + 1);
      v186 = v60;
      v187 = v59;
      v188 = *(&v254 + 1);
      v182 = *(&v59 + 1);
      *&v259 = v222;
      *(&v259 + 1) = v40;
      *&v260 = v215;
      *(&v260 + 1) = v214;
      *&v261 = v221;
      *(&v261 + 1) = v220;
      *&v262 = v32;
      *(&v262 + 1) = v219;
      *&v263 = v218;
      *(&v263 + 1) = v217;
      v264 = v216;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v49, v185, v193, v184, v195);
      outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v253, &v247);
      outlined destroy of [Input](&v259, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v265 = v180;
      v266 = v179;
      v267 = v191;
      v268 = v188;
      v269 = v61;
      v270 = *(&v185 + 1);
      v271 = v186;
      v272 = v183;
      v273 = v187;
      v274 = v182;
      v275 = v192;
      v236 = v182;
      *&v185 = v61;
      if (v61)
      {
        v222 = v43;
        outlined init with copy of [Input](&v265, &v247, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

        v234[2] = v239;
        v234[3] = v240;
        v234[4] = v241;
        v235 = v242;
        v234[0] = v237;
        v234[1] = v238;
        outlined init with copy of [Input](v234, &v247, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
        v62 = v190;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
        }

        v64 = *(v62 + 2);
        v63 = *(v62 + 3);
        if (v64 >= v63 >> 1)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v62);
        }

        outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v276);
        v233 = v246;
        v231 = v244;
        v232 = v245;
        v230 = v243;
        *(v62 + 2) = v64 + 1;
        v190 = v62;
        v65 = &v62[104 * v64];
        v66 = v181;
        *(v65 + 2) = v178;
        *(v65 + 3) = v66;
        v67 = v230;
        v68 = v231;
        v69 = v232;
        v65[112] = v233;
        *(v65 + 5) = v68;
        *(v65 + 6) = v69;
        *(v65 + 4) = v67;
        v70 = v191;
        v71 = v216;
        *(v65 + 15) = v192;
        *(v65 + 16) = v71;
        if (v70 >> 62 == 1)
        {

          v72 = *((v70 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v73 = *((v70 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);

          specialized SGDataTypeGraph.resultNode.getter(v285, v73);
          v74 = v286;
          if (v286)
          {
            v75 = v285[3];
            specialized Graph.Node<>.input(named:)(v181, v189, v285[0], v285[2], v288);
            v199 = v288[1];
            v200 = v288[0];
            v213 = v288[3];
            v197 = v288[4];
            v198 = v288[2];
            v196 = v289;
            outlined destroy of [Input](&v237, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

            v293[0] = v75;
            v293[1] = v74;
            outlined destroy of String(v293);
          }

          else
          {
            outlined destroy of [Input](&v237, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            v199 = 0;
            v200 = 0;
            v197 = 0;
            v198 = 0;
            v213 = 0;
            v196 = 0;
          }

          specialized SGDataTypeGraph.resultNode.getter(v290, v73);
          if (v290[4])
          {
            v91 = v290[0];

            v92 = v194;
            if (*(v194 + 16))
            {
              v93 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v91);
              v94 = v186;
              v95 = v187;
              v96 = v183;
              v97 = v180;
              v98 = v185;
              if (v99)
              {
                v100 = *(*(v92 + 56) + 8 * v93);
                v101 = v191;
                if (v100 >= v173)
                {
                  goto LABEL_81;
                }

                v102 = (v172 + 88 * v100);
                v103 = v102[1];
                v247 = *v102;
                v248 = v103;
                v104 = v102[2];
                v105 = v102[3];
                v106 = v102[4];
                v252 = *(v102 + 10);
                v250 = v105;
                v251 = v106;
                v249 = v104;
                outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v247, &v224);
                outlined destroy of [Input](v290, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

                outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                v214 = *(&v248 + 1);
                v215 = v248;
                v221 = v249;
                v222 = v247;
                v194 = v250;
                v195 = *(&v247 + 1);
                v219 = *(&v250 + 1);
                v220 = *(&v249 + 1);
                v217 = *(&v251 + 1);
                v218 = v251;
                v216 = v252;
                v107 = v192;
                v108 = v95;
                v109 = v94;
              }

              else
              {
                outlined destroy of [Input](v290, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

                outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                v109 = v94;
                v221 = 0;
                v222 = 0;
                v194 = 0;
                v195 = 0;
                v214 = 0;
                v215 = 0;
                v219 = 0;
                v220 = 0;
                v217 = 0;
                v218 = 0;
                v216 = 0;
                v101 = v191;
                v107 = v192;
                v108 = v95;
              }

              goto LABEL_60;
            }

            outlined destroy of [Input](v290, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
          }

          else
          {
          }

          outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v221 = 0;
          v222 = 0;
          v194 = 0;
          v195 = 0;
          v214 = 0;
          v215 = 0;
          v219 = 0;
          v220 = 0;
          v217 = 0;
          v218 = 0;
          v216 = 0;
          v101 = v191;
          v107 = v192;
          v109 = v186;
          v108 = v187;
          v96 = v183;
          v97 = v180;
          v98 = v185;
LABEL_60:
          *&v247 = v97;
          v119 = v97;
          v120 = v179;
          *(&v247 + 1) = v179;
          *&v248 = v101;
          v121 = v188;
          *(&v248 + 1) = v188;
          *&v249 = v98;
          v122 = v98;
          v123 = v101;
          v124 = *(&v185 + 1);
          *(&v249 + 1) = *(&v185 + 1);
          *&v250 = v109;
          *(&v250 + 1) = v96;
          *&v251 = v108;
          *(&v251 + 1) = v182;
          v252 = v107;
          v125 = v107;
          v126 = v109;
          outlined destroy of [Input](&v247, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v209 = v120;
          v210 = v119;
          v211 = v236;
          v207 = v121;
          v208 = v123;
          v205 = v126;
          v206 = v122;
          v201 = v124;
          v202 = v125;
          v203 = v187;
          v204 = v96;
          v30 = v213;
          v15 = v216;
          v29 = v195;
          goto LABEL_61;
        }

        v219 = v70 >> 62;
        outlined init with copy of [Input](&v265, &v247, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
        v221 = v70 & 0x3FFFFFFFFFFFFFFFLL;

        v77 = v185;

        specialized SGDataTypeGraph.argumentsNode.getter(v287, v44);
        v220 = v287[0];
        v78 = v287[1];
        v79 = v287[2];
        v80 = v287[3];
        v81 = v287[4];

        if (v81)
        {
          v82 = v78;
          v84 = v179;
          v83 = v180;
          v85 = v188;
          v86 = v77;
          if (v180 != v220 || v179 != v82 || (specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(v191, v79) & 1) == 0 || (v85 != v80 || v77 != v81) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

            v88 = outlined destroy of [Input](&v237, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            v87 = v174;
            goto LABEL_40;
          }

          v87 = v174;
          if (v236)
          {
            v88 = outlined destroy of [Input](&v237, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
LABEL_40:
            v89 = v191;
            v90 = v85;
            goto LABEL_48;
          }

          outlined destroy of [Input](&v265, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v133 = v187;
          v134 = v191;
          if (v187 >= v173)
          {
            goto LABEL_82;
          }

          v135 = (v172 + 88 * v187);
          v136 = v135[1];
          v224 = *v135;
          v225 = v136;
          v137 = *(v135 + 10);
          v139 = v135[3];
          v138 = v135[4];
          v226 = v135[2];
          v227 = v139;
          v228 = v138;
          v229 = v137;
          v140 = *(&v224 + 1);
          v222 = v224;
          v214 = *(&v225 + 1);
          v141 = v225;
          v142 = v226;
          v219 = *(&v139 + 1);
          v194 = v139;
          v220 = *(&v226 + 1);
          v218 = v138;
          v216 = v137;
          v217 = *(&v138 + 1);
          *&v247 = v83;
          *(&v247 + 1) = v84;
          *&v248 = v191;
          *(&v248 + 1) = v188;
          v249 = v185;
          *&v250 = v186;
          v143 = v183;
          *(&v250 + 1) = v183;
          *&v251 = v187;
          *(&v251 + 1) = v182;
          v144 = v192;
          v252 = v192;
          outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v224, &v223);
          outlined destroy of [Input](&v247, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v221 = v142;
          v215 = v141;
          if (v142)
          {
            specialized Graph.Node<>.input(named:)(v181, v189, v222, v141, v291);
            v199 = v291[1];
            v200 = v291[0];
            v145 = v291[3];
            v197 = v291[4];
            v198 = v291[2];
            v196 = v292;

            outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

            outlined destroy of [Input](&v237, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
          }

          else
          {

            outlined destroy of [Input](&v237, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v199 = 0;
            v200 = 0;
            v197 = 0;
            v198 = 0;
            v145 = 0;
            v196 = 0;
          }

          v211 = 0;
          v209 = v179;
          v210 = v180;
          v207 = v188;
          v208 = v134;
          v201 = *(&v185 + 1);
          v202 = v144;
          v205 = v186;
          v206 = v185;
          v203 = v133;
          v204 = v143;
          v30 = v145;
          v15 = v216;
          v29 = v140;
LABEL_61:
          v7 = v214;
          v8 = v215;
          v25 = v220;
          v31 = v221;
          v26 = v194;
          v27 = v218;
          v24 = v219;
          v28 = v217;
        }

        else
        {
          outlined destroy of [Input](&v237, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
          v84 = v179;
          v110 = v180;
          v90 = v188;
          outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v180, v179, v70, v188, v77);
          outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v220, v78, v79, v80, 0);
          v87 = v174;
          v89 = v70;
          v83 = v110;
          v86 = v77;
LABEL_48:
          *&v247 = v83;
          *(&v247 + 1) = v84;
          *&v248 = v89;
          *(&v248 + 1) = v90;
          *&v249 = v86;
          v111 = v219;
          MEMORY[0x28223BE20](v88);
          v170 = &v247;
          v113 = *(specialized Sequence.compactMap<A>(_:)(closure #1 in Graph.Node.inputs.getterspecialized partial apply, v169, 0, v112) + 16);

          if (v113 == 1)
          {
            *&v247 = v83;
            *(&v247 + 1) = v84;
            *&v248 = v89;
            *(&v248 + 1) = v90;
            *&v249 = v86;
            if (v111)
            {
              v116 = v182;
              v117 = v192;
              v118 = v187;
            }

            else
            {
              v117 = v192;
              v118 = v187;
              v116 = v182;
            }

            MEMORY[0x28223BE20](v114);
            v170 = &v247;
            v128 = specialized Sequence.compactMap<A>(_:)(closure #1 in Graph.Node.inputs.getterspecialized partial apply, v169, 0, v127);
            v129 = *(v128 + 16);
            v174 = v87;
            if (v129)
            {
              v130 = *(v128 + 32);
              v199 = *(v128 + 40);
              v200 = v130;
              v131 = *(v128 + 48);
              v132 = *(v128 + 56);
              v197 = *(v128 + 64);
              v198 = v131;
              v196 = *(v128 + 72);

              outlined destroy of [Input](&v265, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

              outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v30 = v132;
            }

            else
            {

              outlined destroy of [Input](&v265, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

              outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v199 = 0;
              v200 = 0;
              v197 = 0;
              v198 = 0;
              v30 = 0;
              v196 = 0;
            }

            v222 = v180;
            v29 = v179;
            v211 = v236;
            v8 = v89;
            v7 = v188;
            v26 = v186;
            v24 = v183;
            v27 = v118;
            v28 = v116;
            v209 = v179;
            v210 = v180;
            v207 = v188;
            v208 = v89;
            v15 = v117;
            v205 = v186;
            v201 = *(&v185 + 1);
            v206 = v185;
            v202 = v117;
            v203 = v118;
            v204 = v183;
            v25 = *(&v185 + 1);
            v31 = v185;
          }

          else
          {
            v8 = v89;
            v174 = v87;

            if (v113)
            {
              outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v115 = &v265;
            }

            else
            {
              outlined destroy of [Input](&v265, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v115 = v282;
            }

            outlined destroy of [Input](v115, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v199 = 0;
            v200 = 0;
            v197 = 0;
            v198 = 0;
            v30 = 0;
            v196 = 0;
            v211 = v236;
            v222 = v83;
            v29 = v84;
            v7 = v188;
            v26 = v186;
            v28 = v182;
            v24 = v183;
            v27 = v187;
            v209 = v84;
            v210 = v83;
            v31 = v86;
            v207 = v188;
            v208 = v89;
            v15 = v192;
            v205 = v186;
            v206 = v86;
            v25 = *(&v185 + 1);
            v201 = *(&v185 + 1);
            v202 = v192;
            v203 = v187;
            v204 = v183;
          }
        }
      }

      else
      {
        v76 = v180;
        v29 = v179;

        outlined destroy of [Input](&v237, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

        outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
        v31 = 0;
        v222 = v76;
        v8 = v191;
        v15 = v192;
        v27 = v187;
        v7 = v188;
        v25 = *(&v185 + 1);
        v26 = v186;
        v28 = v182;
        v24 = v183;
        v30 = v213;
      }
    }

    else
    {

      outlined destroy of [Input](v282, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      outlined destroy of [Input](&v237, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
      v265 = v222;
      v266 = v40;
      v267 = v215;
      v268 = v214;
      v269 = v221;
      v270 = v220;
      v271 = v32;
      v272 = v219;
      v273 = v218;
      v274 = v217;
      v275 = v216;
LABEL_7:
      outlined destroy of [Input](&v265, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v222 = 0;
      v29 = 0;
      v8 = 0;
      v7 = 0;
      v31 = 0;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v27 = 0;
      v28 = 0;
      v15 = 0;
      v30 = v213;
    }
  }

  v29 = v35;
  v8 = v34;
LABEL_74:
  v146 = v29;
  v147 = v212[1];
  if (*(v147 + 16))
  {
    v148 = specialized __RawDictionaryStorage.find<A>(_:)(v175);
    if (v149)
    {
      v150 = (*(v147 + 56) + 48 * v148);
      v151 = v150[1];
      v215 = *v150;
      v216 = v151;
      v153 = v150[2];
      v152 = v150[3];
      v154 = v150[4];
      v214 = v150[5];
      v155 = *(v176 + 3);
      v261 = *(v176 + 2);
      v262 = v155;
      v263 = *(v176 + 4);
      v264 = v176[10];
      v156 = *(v176 + 1);
      v259 = *v176;
      v260 = v156;
      v253 = v276;
      v254 = v277;
      v258 = v281;
      v256 = v279;
      v257 = v280;
      v255 = v278;
      v265 = v222;
      v266 = v146;
      v267 = v8;
      v268 = v7;
      v269 = v221;
      v270 = v220;
      v271 = v32;
      v272 = v219;
      v273 = v218;
      v274 = v217;
      v275 = v33;
      outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(v176, &v247);

      v157 = v154;

      v158 = v214;

      result = outlined destroy of [Input](&v265, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v160 = v177;
      *v177 = v190;
      v161 = v262;
      *(v160 + 5) = v261;
      *(v160 + 7) = v161;
      *(v160 + 9) = v263;
      v160[11] = v264;
      v162 = v260;
      *(v160 + 1) = v259;
      *(v160 + 3) = v162;
      v163 = v254;
      *(v160 + 6) = v253;
      *(v160 + 7) = v163;
      v164 = v255;
      v165 = v257;
      v166 = v258;
      *(v160 + 9) = v256;
      *(v160 + 10) = v165;
      *(v160 + 8) = v164;
      v168 = v215;
      v167 = v216;
      v160[22] = v166;
      v160[23] = v168;
      v160[24] = v167;
      v160[25] = v153;
      v160[26] = v152;
      v160[27] = v157;
      v160[28] = v158;
      return result;
    }
  }

LABEL_83:
  v171 = 0;
  v170 = 191;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void *__return_ptr, __int128 *)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v189 = a4;
  v190 = a5;
  v198 = a6;
  v7 = *a3;
  v9 = a3[1];
  v8 = a3[2];
  v11 = a3[3];
  v10 = a3[4];
  v12 = a3[5];
  v13 = a3[6];
  v14 = a3[7];
  v15 = a3[8];
  v16 = a3[9];
  v17 = a3[10];
  v214 = v12;
  v241 = v16;
  v242 = v14;
  v238 = v10;
  v239 = v11;
  if (v10)
  {
    v18 = v15;
    v19 = v7;
    v20 = v8;
    specialized Graph.Node<>.input(named:)(a1, a2, v7, v8, v302);
    v220 = v302[1];
    v221 = v302[0];
    v21 = v302[3];
    v218 = v302[4];
    v219 = v302[2];
    v217 = v303;
    v22 = a3[8];
    v223 = a3[10];
    v224 = v22;
    v232 = *(a3 + 72);
    v23 = a3[6];
    v225 = a3[7];
    v226 = v23;
    v24 = *a3;
    v230 = a3[1];
    v231 = v24;
    v25 = a3[2];
    v228 = a3[3];
    v229 = v25;
    v12 = a3[5];
    v227 = a3[4];
  }

  else
  {
    v220 = 0;
    v221 = 0;
    v218 = 0;
    v219 = 0;
    v21 = 0;
    v217 = 0;
    v227 = 0;
    v228 = v11;
    v20 = v8;
    v229 = v8;
    v230 = v9;
    v19 = v7;
    v231 = v7;
    v225 = v14;
    v226 = v13;
    v232 = v16;
    v18 = v15;
    v223 = v17;
    v224 = v15;
  }

  outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(a3, v301);
  v197 = a3;
  outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(a3, v301);
  v192 = 0;
  v212 = MEMORY[0x277D84F90];
  v196 = v12;
  v222 = v12;
  v26 = v214;
  v28 = v241;
  v27 = v242;
  v29 = v18;
  v30 = v20;
  v31 = v19;
  v32 = v21;
  v33 = v238;
  v34 = v239;
  while (1)
  {
    *&v295 = v231;
    *(&v295 + 1) = v230;
    *&v296 = v229;
    *(&v296 + 1) = v228;
    *&v297 = v227;
    *(&v297 + 1) = v222;
    *&v298 = v226;
    *(&v298 + 1) = v225;
    *&v299 = v224;
    BYTE8(v299) = v232 & 1;
    v300 = v223;
    v35 = v31;
    v301[0] = v31;
    v301[1] = v9;
    v301[2] = v30;
    v301[3] = v34;
    v301[4] = v33;
    v301[5] = v26;
    v301[6] = v13;
    v241 = v28;
    v242 = v27;
    v301[7] = v27;
    v236 = v29;
    v237 = v13;
    v301[8] = v29;
    v301[9] = v28;
    v301[10] = v17;
    v240 = v17;
    if (!v33)
    {
      v156 = v26;
      v157 = v30;

      v30 = v157;
      v26 = v156;
      goto LABEL_72;
    }

    if (!v32)
    {
      goto LABEL_72;
    }

    v36 = v30;
    v318[0] = v221;
    v318[1] = v220;
    v318[2] = v219;
    v318[3] = v32;
    v318[4] = v218;
    v319 = v217 & 1;
    v37 = v233[1];
    if (!*(v37 + 16))
    {
      v158 = v26;

      v26 = v158;
      goto LABEL_71;
    }

    v38 = v32;
    v39 = v26;
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
    if ((v41 & 1) == 0)
    {
      break;
    }

    v238 = v33;
    v239 = v34;
    *&v234 = v35;
    *(&v234 + 1) = v9;
    v235 = v38;
    v42 = (*(v37 + 56) + 48 * v40);
    v43 = *v42;
    v45 = v42[2];
    v44 = v42[3];
    v47 = v42[4];
    v46 = v42[5];

    outlined init with copy of [Input](v301, &v285, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    specialized Graph.edge(to:)(v318, v46, &v279);
    v257 = v279;
    v258 = v280;
    v259 = v281;
    v260 = v282;
    v261 = v283;
    v262 = v284;
    v263 = v281;
    v264 = v282;
    v265 = v283;
    v266 = v284;
    if (!*(&v280 + 1))
    {
      goto LABEL_6;
    }

    if ((v279 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v279 >= *(v46 + 16))
    {
      goto LABEL_76;
    }

    v48 = (v46 + 88 * v279);
    v49 = v48[8];
    if (!v49)
    {
      outlined destroy of [Input](&v257, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
LABEL_6:

      outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v285 = v234;
      v286 = v36;
      goto LABEL_7;
    }

    v215 = v44;
    v216 = v36;
    v207 = *(&v280 + 1);
    v50 = v233[2];
    if (*(v50 + 16) && (v52 = v48[4], v51 = v48[5], v54 = v48[6], v53 = v48[7], v208 = v54, v204 = v53, v213 = v49, v201 = v280, v199 = v279, v55 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v52), (v56 & 1) != 0))
    {
      v57 = *(*(v50 + 56) + 8 * v55);
      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_77;
      }

      v58 = *v233;
      v59 = *(*v233 + 16);
      if (v57 >= v59)
      {
        goto LABEL_78;
      }

      v193 = v47;
      v194 = v45;
      v188 = v59;
      v187 = v58 + 32;
      v60 = v58 + 32 + 88 * v57;
      v61 = *(v60 + 16);
      v273 = *v60;
      v274 = v61;
      v62 = *(v60 + 80);
      v64 = *(v60 + 48);
      v63 = *(v60 + 64);
      v275 = *(v60 + 32);
      v276 = v64;
      v277 = v63;
      v278 = v62;
      v210 = v273;
      v211 = *(&v274 + 1);
      v209 = v274;
      v65 = v275;
      v202 = *(&v64 + 1);
      v203 = v64;
      v205 = *(&v275 + 1);
      v206 = v63;
      v66 = v51;
      v67 = *(&v63 + 1);
      v279 = v234;
      *&v280 = v216;
      *(&v280 + 1) = v239;
      *&v281 = v238;
      *(&v281 + 1) = v39;
      *&v282 = v237;
      *(&v282 + 1) = v242;
      *&v283 = v236;
      *(&v283 + 1) = v241;
      v284 = v240;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v52, v66, v208, v204, v213);
      outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v273, &v267);
      outlined destroy of [Input](&v279, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v68 = v67;
      v69 = *(&v210 + 1);
      v285 = v210;
      v286 = v209;
      v287 = v211;
      v288 = v65;
      v289 = v205;
      v290 = v203;
      v291 = v202;
      v292 = v206;
      v293 = v68;
      v17 = v62;
      v294 = v62;
      v256 = v68;
      v200 = v65;
      v195 = v68;
      if (v65)
      {
        v242 = v50;
        outlined init with copy of [Input](&v285, &v267, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

        v254[2] = v259;
        v254[3] = v260;
        v254[4] = v261;
        v255 = v262;
        v254[0] = v257;
        v254[1] = v258;
        outlined init with copy of [Input](v254, &v267, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v191 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v212 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v212 + 2) + 1, 1, v212);
        }

        v71 = v211;
        v73 = *(v212 + 2);
        v72 = *(v212 + 3);
        if (v73 >= v72 >> 1)
        {
          v212 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v212);
        }

        outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v295);
        v253 = v266;
        v251 = v264;
        v252 = v265;
        v250 = v263;
        v74 = v212;
        *(v212 + 2) = v73 + 1;
        v75 = &v74[104 * v73];
        v76 = v201;
        *(v75 + 2) = v199;
        *(v75 + 3) = v76;
        v78 = v251;
        v77 = v252;
        v79 = v253;
        *(v75 + 4) = v250;
        *(v75 + 5) = v78;
        v75[112] = v79;
        *(v75 + 6) = v77;
        v80 = v240;
        *(v75 + 15) = v191;
        *(v75 + 16) = v80;
        v315 = v210;
        v81 = v209;
        *&v316 = v209;
        *(&v316 + 1) = v71;
        v317 = v200;
        if (v209 >> 62 == 1)
        {
          v82 = v209 & 0x3FFFFFFFFFFFFFFFLL;

          v241 = *((v81 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v83 = *(v82 + 56);

          specialized SGDataTypeGraph.resultNode.getter(v304, v83);
          v84 = v305;
          if (v305)
          {
            v85 = v304[3];
            specialized Graph.Node<>.input(named:)(v201, v207, v304[0], v304[2], v306);
            v220 = v306[1];
            v221 = v306[0];
            v235 = v306[3];
            v218 = v306[4];
            v219 = v306[2];
            v217 = v307;
            outlined destroy of [Input](&v257, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

            v314[0] = v85;
            v314[1] = v84;
            outlined destroy of String(v314);
          }

          else
          {
            outlined destroy of [Input](&v257, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            v220 = 0;
            v221 = 0;
            v218 = 0;
            v219 = 0;
            v235 = 0;
            v217 = 0;
          }

          v96 = v242;
          specialized SGDataTypeGraph.resultNode.getter(v308, v83);
          if (!v308[4])
          {

LABEL_55:

            outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v234 = 0uLL;
            v216 = 0;
            v238 = 0;
            v239 = 0;
            v214 = 0;
            v236 = 0;
            v237 = 0;
            v241 = 0;
            v242 = 0;
            v240 = 0;
            v109 = v191;
            v110 = v206;
            v111 = v202;
            v112 = v203;
            goto LABEL_57;
          }

          v97 = v308[0];

          if (!*(v96 + 16))
          {
            outlined destroy of [Input](v308, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            goto LABEL_55;
          }

          v98 = specialized __RawDictionaryStorage.find<A>(_:)(v241, v97);
          v99 = v191;
          v100 = v206;
          v101 = v203;
          if (v102)
          {
            v103 = *(*(v96 + 56) + 8 * v98);
            if (v103 >= v188)
            {
              goto LABEL_79;
            }

            v104 = (v187 + 88 * v103);
            v105 = v104[1];
            v267 = *v104;
            v268 = v105;
            v106 = v104[2];
            v107 = v104[3];
            v108 = v104[4];
            v272 = *(v104 + 10);
            v270 = v107;
            v271 = v108;
            v269 = v106;
            outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v267, &v244);
            outlined destroy of [Input](v308, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

            outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v234 = v267;
            v216 = v268;
            v238 = v269;
            v239 = *(&v268 + 1);
            v214 = *(&v269 + 1);
            v236 = v271;
            v237 = v270;
            v241 = *(&v271 + 1);
            v242 = *(&v270 + 1);
            v240 = v272;
            v109 = v99;
            v110 = v100;
            v111 = v202;
            v112 = v101;
          }

          else
          {
            v112 = v203;
            outlined destroy of [Input](v308, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

            outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v234 = 0uLL;
            v216 = 0;
            v238 = 0;
            v239 = 0;
            v214 = 0;
            v236 = 0;
            v237 = 0;
            v241 = 0;
            v242 = 0;
            v240 = 0;
            v109 = v99;
            v110 = v100;
            v111 = v202;
          }

LABEL_57:
          v129 = *(&v210 + 1);
          v130 = v210;
          v267 = v210;
          v131 = v209;
          *&v268 = v209;
          v132 = v211;
          *(&v268 + 1) = v211;
          v133 = v200;
          *&v269 = v200;
          v134 = v205;
          *(&v269 + 1) = v205;
          *&v270 = v112;
          *(&v270 + 1) = v111;
          *&v271 = v110;
          *(&v271 + 1) = v195;
          v272 = v109;
          v135 = v109;
          v136 = v111;
          outlined destroy of [Input](&v267, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v230 = v129;
          v231 = v130;
          v232 = v256;
          v228 = v132;
          v229 = v131;
          v226 = v112;
          v227 = v133;
          v222 = v134;
          v223 = v135;
          v224 = v206;
          v225 = v136;
          v32 = v235;
          v29 = v236;
          v34 = v239;
          v17 = v240;
          v9 = *(&v234 + 1);
          v31 = v234;
          v13 = v237;
          v33 = v238;
          v26 = v214;
          v28 = v241;
          v27 = v242;
          v30 = v216;
        }

        else
        {
          outlined init with copy of [Input](&v285, &v267, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

          specialized SGDataTypeGraph.argumentsNode.getter(v309, v46);
          v88 = v309[0];
          v89 = v309[1];
          v90 = v309[2];
          v91 = v309[3];
          v92 = v309[4];

          if (!v92)
          {
            outlined destroy of [Input](&v257, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v210, *(&v210 + 1), v81, v211, v200);
            outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v88, v89, v90, v91, 0);
            goto LABEL_46;
          }

          v93 = v90;
          v94 = v205;
          if (v210 != __PAIR128__(v89, v88) || (specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(v209, v93) & 1) == 0 || (v211 != v91 || v200 != v92) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

            v95 = outlined destroy of [Input](&v257, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            goto LABEL_46;
          }

          if (v256)
          {
            v95 = outlined destroy of [Input](&v257, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
LABEL_46:
            v267 = v315;
            v268 = v316;
            *&v269 = v317;
            v113 = v191;
            v114 = v206;
            v115 = v202;
            v28 = v195;
            MEMORY[0x28223BE20](v95);
            v185 = &v267;
            v116 = v192;
            v118 = specialized Sequence.compactMap<A>(_:)(_s11ShaderGraph0B0V4NodeV6inputsSayAC5InputVyx_GGvgAISgSiXEfU_AA010SGDataTypeB0V11PersonalityV_TG5TA_0, v184, 0, v117);
            v192 = v116;
            v119 = *(v118 + 16);

            if (v119 == 1)
            {
              v267 = v315;
              v268 = v316;
              *&v269 = v317;
              MEMORY[0x28223BE20](v120);
              v185 = &v267;
              v137 = v192;
              v139 = specialized Sequence.compactMap<A>(_:)(closure #1 in Graph.Node.inputs.getterspecialized partial apply, v184, 0, v138);
              v192 = v137;
              if (*(v139 + 16))
              {
                v140 = *(v139 + 32);
                v220 = *(v139 + 40);
                v221 = v140;
                v141 = *(v139 + 48);
                v142 = *(v139 + 56);
                v218 = *(v139 + 64);
                v219 = v141;
                v217 = *(v139 + 72);

                outlined destroy of [Input](&v285, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

                outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                v32 = v142;
              }

              else
              {

                outlined destroy of [Input](&v285, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

                outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                v220 = 0;
                v221 = 0;
                v218 = 0;
                v219 = 0;
                v32 = 0;
                v217 = 0;
              }

              v121 = *(&v210 + 1);
              v9 = *(&v210 + 1);
              v122 = v210;
              v31 = v210;
              v232 = v256;
              v124 = v209;
              v30 = v209;
              v125 = v211;
              v126 = v200;
              v33 = v200;
              v127 = v205;
              v26 = v205;
              v128 = v203;
              v27 = v115;
              v29 = v114;
              v28 = v195;
            }

            else
            {
              if (v119)
              {
                v189(v312, &v315);
                v220 = v312[1];
                v221 = v312[0];
                v123 = v312[3];
                v218 = v312[4];
                v219 = v312[2];
                v217 = v313;

                outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                outlined destroy of [Input](&v285, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                v32 = v123;
                v121 = *(&v210 + 1);
                v9 = *(&v210 + 1);
                v122 = v210;
                v31 = v210;
                v232 = v256;
              }

              else
              {

                outlined destroy of [Input](&v285, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                v220 = 0;
                v221 = 0;
                v218 = 0;
                v219 = 0;
                v32 = 0;
                v217 = 0;
                v232 = v256;
                v121 = *(&v210 + 1);
                v9 = *(&v210 + 1);
                v122 = v210;
                v31 = v210;
              }

              v124 = v209;
              v125 = v211;
              v126 = v200;
              v33 = v200;
              v127 = v205;
              v26 = v205;
              v128 = v203;
              v27 = v115;
              v29 = v114;
              v30 = v209;
            }

            v17 = v113;
            v230 = v121;
            v231 = v122;
            v228 = v125;
            v229 = v124;
            v226 = v128;
            v227 = v126;
            v222 = v127;
            v223 = v113;
            v224 = v114;
            v225 = v115;
            v13 = v128;
            v34 = v125;
          }

          else
          {
            v143 = v187;
            outlined destroy of [Input](&v285, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v144 = v206;
            v145 = v191;
            v146 = v202;
            v147 = v203;
            if (v206 >= v188)
            {
              goto LABEL_80;
            }

            v148 = (v143 + 88 * v206);
            v149 = v148[1];
            v244 = *v148;
            v245 = v149;
            v150 = *(v148 + 10);
            v152 = v148[3];
            v151 = v148[4];
            v246 = v148[2];
            v247 = v152;
            v248 = v151;
            v249 = v150;
            *(&v234 + 1) = *(&v244 + 1);
            v153 = v244;
            v239 = *(&v245 + 1);
            v154 = v245;
            v240 = v150;
            v214 = *(&v246 + 1);
            v155 = v246;
            v236 = v151;
            v237 = v152;
            v241 = *(&v151 + 1);
            v242 = *(&v152 + 1);
            v267 = v210;
            *&v268 = v209;
            *(&v268 + 1) = v211;
            *&v269 = v200;
            *(&v269 + 1) = v94;
            *&v270 = v203;
            *(&v270 + 1) = v202;
            *&v271 = v206;
            *(&v271 + 1) = v195;
            v272 = v191;
            outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v244, &v243);
            outlined destroy of [Input](&v267, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v238 = v155;
            *&v234 = v153;
            v216 = v154;
            if (v155)
            {
              specialized Graph.Node<>.input(named:)(v201, v207, v153, v154, v310);
              v220 = v310[1];
              v221 = v310[0];
              v235 = v310[3];
              v218 = v310[4];
              v219 = v310[2];
              v217 = v311;

              outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

              outlined destroy of [Input](&v257, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            }

            else
            {

              outlined destroy of [Input](&v257, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
              outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v220 = 0;
              v221 = 0;
              v218 = 0;
              v219 = 0;
              v235 = 0;
              v217 = 0;
            }

            v232 = 0;
            v230 = *(&v210 + 1);
            v231 = v210;
            v228 = v211;
            v229 = v209;
            v226 = v147;
            v227 = v200;
            v222 = v94;
            v223 = v145;
            v224 = v144;
            v225 = v146;
            v9 = *(&v234 + 1);
            v32 = v235;
            v34 = v239;
            v17 = v240;
            v31 = v234;
            v13 = v237;
            v33 = v238;
            v26 = v214;
            v28 = v241;
            v27 = v242;
            v29 = v236;
            v30 = v216;
          }
        }
      }

      else
      {
        v86 = v210;
        v87 = v209;

        outlined destroy of [Input](&v257, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

        outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
        v33 = 0;
        v31 = v86;
        v9 = v69;
        v30 = v87;
        v34 = v211;
        v26 = v205;
        v29 = v206;
        v27 = v202;
        v13 = v203;
        v28 = v195;
        v32 = v235;
      }
    }

    else
    {

      outlined destroy of [Input](v301, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      outlined destroy of [Input](&v257, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
      v285 = v234;
      v286 = v216;
LABEL_7:
      v287 = v239;
      v288 = v238;
      v289 = v39;
      v290 = v237;
      v291 = v242;
      v292 = v236;
      v293 = v241;
      v294 = v240;
      outlined destroy of [Input](&v285, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v31 = 0;
      v9 = 0;
      v30 = 0;
      v34 = 0;
      v33 = 0;
      v26 = 0;
      v13 = 0;
      v27 = 0;
      v29 = 0;
      v28 = 0;
      v17 = 0;
      v32 = v235;
    }
  }

  v26 = v39;
LABEL_71:
  v30 = v36;
LABEL_72:
  v214 = v26;
  v159 = v233[1];
  if (*(v159 + 16))
  {
    v160 = v33;
    v161 = v34;
    v162 = v30;
    v163 = specialized __RawDictionaryStorage.find<A>(_:)(v196);
    if (v164)
    {
      v165 = (*(v159 + 56) + 48 * v163);
      v166 = *v165;
      v238 = v165[1];
      v239 = v166;
      v167 = v165[2];
      v168 = v165[3];
      v169 = v165[4];
      v235 = v165[5];
      v170 = *(v197 + 3);
      v281 = *(v197 + 2);
      v282 = v170;
      v283 = *(v197 + 4);
      v284 = v197[10];
      v171 = *(v197 + 1);
      v279 = *v197;
      v280 = v171;
      v273 = v295;
      v274 = v296;
      v278 = v300;
      v276 = v298;
      v277 = v299;
      v275 = v297;
      *&v285 = v35;
      *(&v285 + 1) = v9;
      v286 = v162;
      v287 = v161;
      v288 = v160;
      v289 = v214;
      v290 = v237;
      v291 = v242;
      v292 = v236;
      v293 = v241;
      v294 = v240;
      outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(v197, &v267);

      v172 = v168;

      v173 = v235;

      result = outlined destroy of [Input](&v285, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v175 = v198;
      *v198 = v212;
      v176 = v282;
      *(v175 + 5) = v281;
      *(v175 + 7) = v176;
      *(v175 + 9) = v283;
      v175[11] = v284;
      v177 = v280;
      *(v175 + 1) = v279;
      *(v175 + 3) = v177;
      v178 = v274;
      *(v175 + 6) = v273;
      *(v175 + 7) = v178;
      v179 = v275;
      v180 = v277;
      v181 = v278;
      *(v175 + 9) = v276;
      *(v175 + 10) = v180;
      *(v175 + 8) = v179;
      v182 = v238;
      v183 = v239;
      v175[22] = v181;
      v175[23] = v183;
      v175[24] = v182;
      v175[25] = v167;
      v175[26] = v172;
      v175[27] = v169;
      v175[28] = v173;
      return result;
    }
  }

LABEL_81:
  v186 = 0;
  v185 = 191;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t SGDataTypeGraph.TopologicalSort.Path.hasValue.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v1 = v0[14];
    if (v1 >> 62)
    {
      LOBYTE(v1) = v1 >> 62 != 1;
    }

    else
    {
      v2 = v0[13];
      v3 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = *(v3 + 16);
      v5 = *(v3 + 24);
      v6 = v4 == 0x656D756772615F5FLL && v5 == 0xEB0000000073746ELL;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        LOBYTE(v1) = v2 == v0[23];
      }

      else if (v4 == 0x746C757365725F5FLL && v5 == 0xE900000000000073)
      {
        LOBYTE(v1) = 0;
      }

      else
      {
        LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
      }
    }
  }

  return v1 & 1;
}

uint64_t SGDataTypeGraph.TopologicalSort.Path.constantBoolValue.getter()
{
  v1 = *(v0 + 112);
  if (v1 >> 62 == 2 && ((v2 = v1 & 0x3FFFFFFFFFFFFFFFLL, *(v2 + 16) == 1) ? (v3 = *(v2 + 96) == 0) : (v3 = 0), v3))
  {
    return *(v2 + 32) & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t SGDataTypeGraph.TopologicalSort.Path.sourceNode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t Graph.Node<>.BOOLValue.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62 == 2 && ((v2 = v1 & 0x3FFFFFFFFFFFFFFFLL, *(v2 + 16) == 1) ? (v3 = *(v2 + 96) == 0) : (v3 = 0), v3))
  {
    return *(v2 + 32) & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t Graph.Node<>.constantStringValue.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62 != 2)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  if (*(v2 + 16) != 11 || *(v2 + 96) != 6)
  {
    return 0;
  }

  v5 = *(v2 + 32);

  return v5;
}

uint64_t Graph.Node<>.constantAssetValue.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62 != 2)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  if (*(v2 + 16) != 13 || *(v2 + 96) != 6)
  {
    return 0;
  }

  v5 = *(v2 + 32);

  return v5;
}

uint64_t SGDataTypeGraph.TopologicalSort.Path.PathEdge.debugDescription.getter()
{
  _StringGuts.grow(_:)(22);
  v1 = v0[2];
  v2 = v0[7];
  v3 = v0[8];

  MEMORY[0x266771550](58, 0xE100000000000000);
  v4 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v4);

  MEMORY[0x266771550](91, 0xE100000000000000);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v5);

  MEMORY[0x266771550](0x203E2D205DLL, 0xE500000000000000);
  MEMORY[0x266771550](v2, v3);
  MEMORY[0x266771550](58, 0xE100000000000000);
  v6 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](91, 0xE100000000000000);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v7);

  MEMORY[0x266771550](93, 0xE100000000000000);
  return v1;
}

__n128 SGDataTypeGraph.TopologicalSort.Path.PathEdge.init(edge:fromElement:toElement:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v8) = *(a1 + 80);
  result = a1[2];
  v5 = a1[4];
  v6 = *a1;
  v7 = a1[1];
  *(a4 + 48) = a1[3];
  *(a4 + 64) = v5;
  *(a4 + 16) = v7;
  *(a4 + 32) = result;
  *a4 = v6;
  *(a4 + 80) = v8;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  return result;
}

BOOL SGDataTypeGraph.TopologicalSort.Path.isMaterialUniform.getter()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[28];

  specialized SGDataTypeGraph.argumentsNode.getter(&v14, v6);
  v8 = v14;
  v7 = v15;
  v9 = v16;
  v10 = v17;
  v11 = v18;
  if (v18)
  {
    v12 = v2 == v14 && v1 == v15 && (specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(v3, v16) & 1) != 0 && (v4 == v10 && v11 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  else
  {
    outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v2, v1, v3, v4, v5);
    outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v8, v7, v9, v10, 0);
    return 0;
  }

  return v12;
}

uint64_t SGDataTypeGraph.TopologicalSort.Path.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return 0x706D652068746150;
  }

  *&v29[0] = 0;
  *(&v29[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[17];

  *&v29[0] = v4;
  *(&v29[0] + 1) = v3;
  MEMORY[0x266771550](91, 0xE100000000000000);
  *&v27 = v5;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](0x203E2D205DLL, 0xE500000000000000);
  v7 = v0[6];
  MEMORY[0x266771550](v0[4], v0[5]);
  MEMORY[0x266771550](91, 0xE100000000000000);
  *&v27 = v7;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v8);

  MEMORY[0x266771550](0x203A3A205DLL, 0xE500000000000000);
  v9 = v29[0];
  v28 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v10 = v28;
  v11 = (v1 + 32);
  do
  {
    v12 = *v11;
    v13 = v11[2];
    v29[1] = v11[1];
    v29[2] = v13;
    v29[0] = v12;
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    v30 = *(v11 + 12);
    v29[4] = v15;
    v29[5] = v16;
    v29[3] = v14;
    outlined init with copy of SGDataTypeGraph.TopologicalSort.Path.PathEdge(v29, &v27);
    v17 = SGDataTypeGraph.TopologicalSort.Path.PathEdge.debugDescription.getter();
    v19 = v18;
    outlined destroy of SGDataTypeGraph.TopologicalSort.Path.PathEdge(v29);
    v28 = v10;
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v10 = v28;
    }

    *(v10 + 16) = v21 + 1;
    v22 = v10 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v11 = (v11 + 104);
    --v2;
  }

  while (v2);
  *&v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  v27 = v9;

  MEMORY[0x266771550](v23, v25);

  return v27;
}

double closure #1 in default argument 2 of SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double specialized closure #1 in Graph.Node.inputs.getter@<D0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  specialized closure #1 in Graph.Node.inputs.getter(*a1, *a2, a2[2], &v7);
  if (!v3)
  {
    v6 = v8[0];
    *a3 = v7;
    a3[1] = v6;
    result = *(v8 + 9);
    *(a3 + 25) = *(v8 + 9);
  }

  return result;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Path(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Path(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Path.PathEdge(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Path.PathEdge(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t specialized closure #1 in Graph.Node.inputs.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v4 = a3 >> 62;
  if (a3 >> 62)
  {
    if (v4 != 1)
    {
LABEL_10:
      a2 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
LABEL_13:
      *a4 = a2;
      *(a4 + 8) = v9;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = v12;
      *(a4 + 40) = v13;
      return result;
    }

    v5 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    v6 = 40;
  }

  else
  {
    v6 = 32;
    v5 = a3;
  }

  if (*(*(v5 + v6) + 16) <= result)
  {
    goto LABEL_10;
  }

  v8 = a4;
  if (!v4)
  {
    a4 = *(a3 + 32);
    if (*(a4 + 16) <= result)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_12:
    v14 = a4 + 32 * result;
    v10 = *(v14 + 32);
    v11 = *(v14 + 40);
    v12 = *(v14 + 48);
    v13 = *(v14 + 56);
    v15 = result;

    v9 = v15;
    a4 = v8;
    goto LABEL_13;
  }

  a4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  if (*(a4 + 16) > result)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v49 = v3 & 0xFFFFFFFFFFFFFF8;
    v50 = v3 & 0xC000000000000001;
    v48 = v3 + 32;
    v44 = a2;
    v45 = i;
    v46 = v3;
    while (1)
    {
      if (v50)
      {
        v6 = MEMORY[0x266772030](v5, v3);
      }

      else
      {
        if (v5 >= *(v49 + 16))
        {
          goto LABEL_57;
        }

        v6 = *(v48 + 8 * v5);
      }

      v52 = v6;
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        break;
      }

      v9 = *a2;
      v8 = *(a2 + 8);
      v10 = (v8 + 32);
      if (*a2)
      {
        v12 = (v9 + 16);
        v11 = *(v9 + 16);

        v13 = NSObject._rawHashValue(seed:)(v11);
        v14 = 1 << *(v9 + 16);
        v7 = __OFSUB__(v14, 1);
        v15 = v14 - 1;
        if (v7)
        {
          goto LABEL_59;
        }

        v16 = v15 & v13;
        v17 = _HashTable.UnsafeHandle._startIterator(bucket:)(v15 & v13, (v9 + 16), v9 + 32);
        if (v17)
        {
          v3 = v18;
          v20 = v19;
          v47 = v5;
          v21 = -1 << *(v9 + 16);
          v22 = (v21 ^ ~v17) + (*(v9 + 24) >> 6);
          if (v22 >= ~v21)
          {
            v23 = ~v21;
          }

          else
          {
            v23 = 0;
          }

          v24 = v22 - v23;
          type metadata accessor for SGEdge();
          v25 = v10[v24];
          a2 = static NSObject.== infix(_:_:)();

          if ((a2 & 1) == 0)
          {
            v51 = 0;
            do
            {
              ++v16;
              v26 = *v12 & 0x3FLL;
              v27 = 1 << *v12;
              if (v16 == v27)
              {
                if (v51)
                {
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                  return;
                }

                v16 = 0;
                v51 = 1;
              }

              if (v20 >= v26)
              {
                v35 = (v27 - 1) & v3;
                v3 >>= v26;
                v20 -= v26;
                if (!v35)
                {
LABEL_50:
                  a2 = v44;
                  v5 = v47;
                  goto LABEL_51;
                }
              }

              else
              {
                v28 = (v16 * v26) >> 6;
                if (v20)
                {
                  if (__OFADD__(v26 << v26, 64))
                  {
                    goto LABEL_58;
                  }

                  v29 = (v26 << v26) + 126;
                  if ((v26 << v26) + 64 >= 1)
                  {
                    v29 = (v26 << v26) + 63;
                  }

                  if (v28 + 1 == v29 >> 6)
                  {
                    v28 = 0;
                  }

                  else
                  {
                    ++v28;
                  }
                }

                v30 = v26 - v20;
                if (__OFSUB__(v26, v20))
                {
                  __break(1u);
LABEL_55:
                  __break(1u);
                  goto LABEL_56;
                }

                v31 = v28 == 2 && v26 == 5;
                v32 = 64;
                if (v31)
                {
                  v32 = 32;
                }

                v7 = __OFSUB__(v32, v30);
                v33 = v32 - v30;
                if (v7)
                {
                  goto LABEL_55;
                }

                v34 = *(v9 + 32 + 8 * v28);
                v35 = ((v34 << v20) | v3) & (v27 - 1);
                v3 = v34 >> v30;
                v20 = v33;
                if (!v35)
                {
                  goto LABEL_50;
                }
              }

              v36 = -1 << v26;
              v37 = (v36 ^ ~v35) + (*(v9 + 24) >> 6);
              if (v37 >= ~v36)
              {
                v38 = ~v36;
              }

              else
              {
                v38 = 0;
              }

              v39 = v10[v37 - v38];
              a2 = static NSObject.== infix(_:_:)();
            }

            while ((a2 & 1) == 0);
          }

          a2 = v44;
          i = v45;
          v3 = v46;
          v5 = v47;
          goto LABEL_5;
        }

LABEL_51:

        i = v45;
        v3 = v46;
      }

      else
      {
        v40 = v5;
        v41 = *(v8 + 16);
        if (v41)
        {
          type metadata accessor for SGEdge();
          while (1)
          {
            v42 = *v10;
            v43 = static NSObject.== infix(_:_:)();

            if (v43)
            {
              break;
            }

            ++v10;
            if (!--v41)
            {
              goto LABEL_48;
            }
          }

          v5 = v40;
          goto LABEL_5;
        }

LABEL_48:
        v16 = 0;
        v5 = v40;
      }

      specialized OrderedSet._appendNew(_:in:)(v52, v16);

LABEL_5:
      if (v5 == i)
      {
        return;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }
}